void *sub_1000011F8(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    result = [NSError errorDomainMSDWithCode:a2 message:a3];
    *v3 = result;
  }

  return result;
}

void *sub_100001240(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = result;
    result = [NSError errorDomainMSDWithCode:a2 message:a3 reason:a4];
    *v4 = result;
  }

  return result;
}

uint64_t sub_10000128C(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1 && !*a1)
  {
    v8 = v5;
    v5 = [NSError errorDomainMSDWithCode:a2 message:v5];
    v6 = v8;
    *a1 = v5;
  }

  return _objc_release_x1(v5, v6);
}

void sub_10000180C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001828(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001840(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  type = xpc_get_type(v5);
  if (type == &_xpc_type_BOOL)
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = [NSNumber numberWithBool:xpc_BOOL_get_value(v5)];
LABEL_22:
    v14 = v10;
    [v9 addObject:v10];

    v8 = 1;
    goto LABEL_23;
  }

  if (type == &_xpc_type_string)
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = [NSString stringWithCString:xpc_string_get_string_ptr(v5) encoding:4];
    goto LABEL_22;
  }

  if (type == &_xpc_type_int64)
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = [NSNumber numberWithLongLong:xpc_int64_get_value(v5)];
    goto LABEL_22;
  }

  if (type == &_xpc_type_uint64)
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = [NSNumber numberWithUnsignedLongLong:xpc_uint64_get_value(v5)];
    goto LABEL_22;
  }

  if (type == &_xpc_type_data)
  {
    bytes_ptr = xpc_data_get_bytes_ptr(v5);
    length = xpc_data_get_length(v5);
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = [NSData dataWithBytes:bytes_ptr length:length];
    goto LABEL_22;
  }

  if (type == &_xpc_type_double)
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = [NSNumber numberWithDouble:xpc_double_get_value(v5)];
    goto LABEL_22;
  }

  if (type == &_xpc_type_dictionary)
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = [NSDictionary dictionaryWithXPCDictionary:v5];
    goto LABEL_22;
  }

  if (type == &_xpc_type_array)
  {
    v13 = *(a1 + 32);
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = [v13 initWithXPCArray:v5];
    goto LABEL_22;
  }

  if (type == &_xpc_type_date)
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = [NSDate dateWithTimeIntervalSince1970:xpc_date_get_value(v5)];
    goto LABEL_22;
  }

  v7 = sub_100021268();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100024A08(a2, v7);
  }

  v8 = 0;
LABEL_23:

  return v8;
}

void sub_100001BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100001C08(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *(a1 + 32);
    v8 = xpc_string_create([v6 UTF8String]);
LABEL_5:
    v9 = v8;
    xpc_array_append_value(v7, v8);

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *(a1 + 32);
    v8 = xpc_data_create([v6 bytes], objc_msgSend(v6, "length"));
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v6;
    v11 = [v10 objCType];
    if (*v11 == 105 && !v11[1] || (v12 = [v10 objCType], *v12 == 115) && !v12[1] || (v13 = objc_msgSend(v10, "objCType"), *v13 == 113) && !v13[1] || (v14 = objc_msgSend(v10, "objCType"), *v14 == 113) && !v14[1])
    {
      v20 = *(a1 + 32);
      v21 = xpc_int64_create([v10 longLongValue]);
    }

    else
    {
      v15 = [v10 objCType];
      if (*v15 == 102 && !v15[1] || (v16 = [v10 objCType], *v16 == 100) && !v16[1])
      {
        v20 = *(a1 + 32);
        [v10 doubleValue];
        v21 = xpc_double_create(v23);
      }

      else
      {
        v17 = [v10 objCType];
        if (*v17 != 66 || v17[1])
        {
          v18 = [v10 objCType];
          if (*v18 != 99 || v18[1])
          {
            v19 = sub_100021268();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              sub_100024AC4(v10, v19);
            }

            *a4 = 1;
            *(*(*(a1 + 40) + 8) + 24) = 0;
            goto LABEL_40;
          }
        }

        v20 = *(a1 + 32);
        v21 = xpc_BOOL_create([v10 BOOLValue]);
      }
    }

    v25 = v21;
    xpc_array_append_value(v20, v21);

LABEL_40:
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *(a1 + 32);
    v8 = [v6 xpcArrayFromArray];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *(a1 + 32);
    v8 = [v6 createXPCDictionary];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *(a1 + 32);
    [v6 timeIntervalSince1970];
    v8 = xpc_date_create(v22);
    goto LABEL_5;
  }

  v24 = sub_100021268();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    sub_100024A80(v24);
  }

  *a4 = 1;
  *(*(*(a1 + 40) + 8) + 24) = 0;
LABEL_6:
}

void sub_100004EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100004ECC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100004EE4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(*(*(a1 + 40) + 8) + 40) stringByAppendingPathComponent:a2];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (([*(*(*(a1 + 40) + 8) + 40) isEqualToString:@"/"] & 1) == 0)
  {
    v9 = [*(a1 + 32) nonContainerizedContentRoots];
    v10 = [v9 containsObject:*(*(*(a1 + 40) + 8) + 40)];

    if (v10)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

void sub_100005E44(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint8_t buf)
{

  _os_log_error_impl(a1, v19, OS_LOG_TYPE_ERROR, a4, &buf, 0xCu);
}

void sub_100005E70(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

BOOL sub_100005E88(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

unsigned __int8 *sub_1000061E4(uint64_t a1, const __CFString *a2, const __CFString *a3)
{
  v4 = sub_100006248(a2);
  v5 = v4;
  if (v4)
  {
    v4 = sub_100006248(a3);
    if (v4)
    {
      for (i = 0; i != 20; ++i)
      {
        v5[i] ^= v4[i];
      }
    }
  }

  free(v4);
  return v5;
}

unsigned __int8 *sub_100006248(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 == CFBooleanGetTypeID())
  {
    v3 = malloc_type_calloc(1uLL, 0x14uLL, 0x100004077774924uLL);
    data = CFBooleanGetValue(a1);
    p_data = &data;
    Length = 1;
LABEL_4:
    CC_SHA1(p_data, Length, v3);
    return v3;
  }

  if (v2 == CFStringGetTypeID())
  {
    v3 = malloc_type_calloc(1uLL, 0x14uLL, 0x100004077774924uLL);
    v6 = CFStringGetLength(a1) + 1;
    v7 = malloc_type_calloc(1uLL, v6, 0x100004077774924uLL);
    CFStringGetCString(a1, v7, v6, 0x8000100u);
    CC_SHA1(v7, v6, v3);
    free(v7);
    return v3;
  }

  if (v2 == CFDateGetTypeID())
  {
    v3 = malloc_type_calloc(1uLL, 0x14uLL, 0x100004077774924uLL);
    AbsoluteTime = CFDateGetAbsoluteTime(a1);
    p_data = &AbsoluteTime;
    Length = 8;
    goto LABEL_4;
  }

  if (v2 == CFDataGetTypeID())
  {
    v3 = malloc_type_calloc(1uLL, 0x14uLL, 0x100004077774924uLL);
    BytePtr = CFDataGetBytePtr(a1);
    Length = CFDataGetLength(a1);
    p_data = BytePtr;
    goto LABEL_4;
  }

  if (v2 == CFArrayGetTypeID())
  {

    return sub_1000067F0(a1);
  }

  if (v2 == CFDictionaryGetTypeID())
  {

    return sub_100006974(a1);
  }

  if (v2 != CFNumberGetTypeID())
  {
    return 0;
  }

  return sub_100006B08(a1);
}

CFDataRef sub_100006488(const __CFAllocator *a1, const __CFString *a2, CFStringRef theString1, uint64_t a4, void (*a5)(uint64_t, double, float), uint64_t a6)
{
  memset(&c, 0, sizeof(c));
  if (CFStringCompare(theString1, @"SHA-1", 0) == kCFCompareEqualTo)
  {
    v13 = CFURLCreateWithFileSystemPath(a1, a2, kCFURLPOSIXPathStyle, 0);
    if (!v13)
    {
      v11 = sub_100021268();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000269F8();
      }

      goto LABEL_4;
    }

    v14 = v13;
    v15 = CFReadStreamCreateWithFile(a1, v13);
    if (!v15)
    {
      v25 = sub_100021268();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_100026990();
      }

      v12 = 0;
      goto LABEL_40;
    }

    v16 = v15;
    if (CFReadStreamOpen(v15))
    {
      if (a5)
      {
        a5(a6, 0.0, -1.0);
      }

      CC_SHA1_Init(&c);
      v17 = malloc_type_calloc(1uLL, 0x10000uLL, 0x100004077774924uLL);
      if (v17)
      {
        v18 = v17;
        v29.tv_sec = 0;
        *&v29.tv_usec = 0;
        gettimeofday(&v29, 0);
        v19 = CFReadStreamRead(v16, v18, 0x10000);
        if (v19 < 1)
        {
LABEL_18:
          CC_SHA1_Final(md, &c);
          v23 = CFDataCreate(a1, md, 20);
          if (v23)
          {
            v12 = v23;
            v24 = sub_1000060E4(md);
            if (v24)
            {
              CFRelease(v24);
            }

            if (a5)
            {
              a5(a6, 1.0, -1.0);
            }

            goto LABEL_38;
          }

          v27 = sub_100021268();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            sub_1000268A8();
          }
        }

        else
        {
          v20 = v19;
          v21 = 0;
          while (1)
          {
            CC_SHA1_Update(&c, v18, v20);
            v21 += v20;
            v22.n128_u32[0] = -1.0;
            if (a4)
            {
              v22.n128_f32[0] = v21 / a4;
            }

            if (a5 && (a5)(a6, v22, -1.0))
            {
              break;
            }

            v20 = CFReadStreamRead(v16, v18, 0x10000);
            if (v20 <= 0)
            {
              goto LABEL_18;
            }
          }

          v27 = sub_100021268();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            sub_100026834();
          }
        }

        v12 = 0;
LABEL_38:
        free(v18);
        goto LABEL_39;
      }

      v26 = sub_100021268();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1000268E8();
      }
    }

    else
    {
      v26 = sub_100021268();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_100026928();
      }
    }

    v12 = 0;
LABEL_39:
    CFReadStreamClose(v16);
    CFRelease(v16);
LABEL_40:
    CFRelease(v14);
    return v12;
  }

  v11 = sub_100021268();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_1000267F4();
  }

LABEL_4:

  return 0;
}

uint64_t sub_1000067F0(const __CFArray *a1)
{
  if (!CFArrayGetCount(a1))
  {
    return 0;
  }

  memset(&c, 0, sizeof(c));
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v3 = Count;
    v4 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
      v16.location = 0;
      v16.length = v3;
      if (CFArrayGetCountOfValue(a1, v16, ValueAtIndex) >= 2)
      {
        break;
      }

      if (v3 == ++v4)
      {
        goto LABEL_6;
      }
    }

    v12 = sub_100021268();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Failing to hash due to duplicate array entries", v14, 2u);
    }

    return 0;
  }

LABEL_6:
  v6 = sub_100006248(@"array");
  CC_SHA1_Init(&c);
  if (CFArrayGetCount(a1) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = CFArrayGetValueAtIndex(a1, v7);
      v9 = sub_100006248(v8);
      if (!v9)
      {
        break;
      }

      v10 = v9;
      CC_SHA1_Update(&c, v9, 0x14u);
      CC_SHA1_Final(v10, &c);
      if (v6)
      {
        for (i = 0; i != 20; ++i)
        {
          *(v6 + i) ^= v10[i];
        }
      }

      free(v10);
      ++v7;
    }

    while (CFArrayGetCount(a1) > v7);
  }

  return v6;
}

uint64_t sub_100006974(const __CFDictionary *a1)
{
  if (!CFDictionaryGetCount(a1))
  {
    return 0;
  }

  memset(&v12, 0, sizeof(v12));
  v2 = sub_100006248(@"dictionary");
  Count = CFDictionaryGetCount(a1);
  v4 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
  CFDictionaryGetKeysAndValues(a1, v4, 0);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      v6 = sub_100006248(v4[i]);
      Value = CFDictionaryGetValue(a1, v4[i]);
      v8 = sub_100006248(Value);
      CC_SHA1_Init(&v12);
      v9 = malloc_type_calloc(1uLL, 0x14uLL, 0x100004077774924uLL);
      if (v6)
      {
        CC_SHA1_Update(&v12, v6, 0x14u);
        free(v6);
      }

      if (v8)
      {
        CC_SHA1_Update(&v12, v8, 0x14u);
        free(v8);
      }

      CC_SHA1_Final(v9, &v12);
      if (v2 && v9)
      {
        for (j = 0; j != 20; ++j)
        {
          *(v2 + j) ^= v9[j];
        }
      }

      free(v9);
    }
  }

  free(v4);
  return v2;
}

unsigned __int8 *sub_100006B08(const __CFNumber *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x14uLL, 0x100004077774924uLL);
  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
  if ((valuePtr + 1) >= 0xE)
  {
    v3 = 8;
  }

  else
  {
    v3 = 4;
  }

  if ((valuePtr + 1) < 0xE)
  {
    v4 = kCFNumberSInt32Type;
  }

  else
  {
    v4 = kCFNumberSInt64Type;
  }

  v5 = malloc_type_calloc(1uLL, v3, 0x100004077774924uLL);
  CFNumberGetValue(a1, v4, v5);
  CC_SHA1(v5, v3, v2);
  free(v5);
  return v2;
}

void sub_100006BFC(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

BOOL sub_100008370(id a1, NSURL *a2, NSError *a3)
{
  v3 = a3;
  v4 = sub_100021268();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10002780C(v3);
  }

  return 1;
}

void sub_1000085C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000085FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100008614(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1 + 40;
  v7 = [*(*(*(a1 + 40) + 8) + 40) stringByAppendingPathComponent:a2];
  v8 = *(*v6 + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = sub_100021268();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(*(*v6 + 8) + 40);
    *buf = 136315394;
    v28 = "[MSDHSnapshottedDataSaver createIntermdediateDirectoriesInPathAndRestoreAttributes:]_block_invoke";
    v29 = 2112;
    v30 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s - intermediatePath:  %@", buf, 0x16u);
  }

  if (([*(a1 + 32) fileExistsAtPath:*(*(*(a1 + 40) + 8) + 40)] & 1) == 0)
  {
    v12 = [@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/DataShelter" stringByAppendingPathComponent:*(*(*(a1 + 40) + 8) + 40)];
    v13 = *(a1 + 32);
    v26 = 0;
    v14 = [v13 attributesOfItemAtPath:v12 error:&v26];
    v15 = v26;
    if (v14)
    {
      v16 = [v14 fileType];
      v17 = [v16 isEqualToString:NSFileTypeDirectory];

      if (v17)
      {
        v18 = sub_100021268();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(*(*v6 + 8) + 40);
          *buf = 136315394;
          v28 = "[MSDHSnapshottedDataSaver createIntermdediateDirectoriesInPathAndRestoreAttributes:]_block_invoke";
          v29 = 2112;
          v30 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s - Creating directory:  %@", buf, 0x16u);
        }

        v20 = *(a1 + 32);
        v21 = *(*(*(a1 + 40) + 8) + 40);
        v25 = v15;
        v22 = [v20 createDirectoryAtPath:v21 withIntermediateDirectories:0 attributes:v14 error:&v25];
        v23 = v25;

        *(*(*(a1 + 48) + 8) + 24) = v22;
        if (*(*(*(a1 + 48) + 8) + 24))
        {
          goto LABEL_17;
        }

        v24 = sub_100021268();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_100027930(v6, v23);
        }

        v15 = v23;
      }

      else
      {
        *(*(*(a1 + 48) + 8) + 24) = 0;
        v24 = sub_100021268();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_10002789C(v6);
        }
      }
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
      v24 = sub_100021268();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_1000279F4(v12, v15);
      }
    }

    v23 = v15;
LABEL_17:
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      *a4 = 1;
    }
  }
}

void sub_100008A64(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint8_t buf)
{

  _os_log_error_impl(a1, v37, OS_LOG_TYPE_ERROR, a4, &buf, 0x20u);
}

void sub_100008AC8(id a1)
{
  v1 = objc_alloc_init(MSDPlatform);
  v2 = qword_10005BE88;
  qword_10005BE88 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_10000ACBC(uint64_t result, float a2)
{
  *(v3 - 144) = a2;
  v4 = v3 - 144;
  *(v4 + 4) = v2;
  *(v3 - 132) = 2082;
  *(v4 + 14) = result;
  return result;
}

void sub_10000ACF4(int a1@<W8>, float a2@<S0>)
{
  *(v3 - 144) = a2;
  v4 = v3 - 144;
  *(v4 + 4) = v2;
  *(v3 - 132) = 1026;
  *(v4 + 14) = a1;
}

BOOL sub_10000AD20(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

uint64_t sub_10000C340()
{

  return objc_opt_isKindOfClass();
}

void sub_10000C3A8(id a1)
{
  v1 = objc_alloc_init(MSDDemoManifestCheck);
  v2 = qword_10005BEB0;
  qword_10005BEB0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10000DB88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000DBB4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000DBCC(uint64_t a1, const __CFData *a2)
{
  v3 = SecCertificateCreateWithData(kCFAllocatorDefault, a2);
  if (v3)
  {
    v4 = v3;
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }

  else
  {
    sub_10002A910();
  }
}

void sub_10000E368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000E39C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if ([*(a1 + 32) containsObject:v7])
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000E4CC;
    v14[3] = &unk_100050DF0;
    v14[4] = *(a1 + 40);
    v15 = v7;
    v9 = *(a1 + 72);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    *&v12 = *(a1 + 64);
    *(&v12 + 1) = v9;
    *&v13 = v10;
    *(&v13 + 1) = v11;
    v16 = v13;
    v17 = v12;
    v18 = a4;
    [v8 enumerateKeysAndObjectsUsingBlock:v14];
  }
}

void sub_10000E4CC(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) checkType];
  if (v9)
  {
    [*(a1 + 32) checkType];
  }

  else
  {
    [v8 objectForKey:@"RigorousCheckType"];
  }
  v10 = ;

  v11 = sub_100021268();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 40);
    *buf = 138543874;
    v23 = v7;
    v24 = 2114;
    v25 = v12;
    v26 = 2114;
    v27 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Name: %{public}@, Section Name: %{public}@, Check Type: %{public}@", buf, 0x20u);
  }

  v13 = [*(a1 + 32) getComponentData:v8];
  if ([v10 isEqualToString:@"Skip"])
  {
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  else if ([v10 isEqualToString:@"Default"])
  {
    *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 32) runSecurityChecksForSection:v13 dataType:*(a1 + 40) componentName:v7 options:*(a1 + 48)];
  }

  else
  {
    if ([v10 isEqualToString:@"AppleISTCertCheck"])
    {
      v14 = [NSString stringWithFormat:@"%@.%@", *(a1 + 40), v7];
      v15 = [*(a1 + 32) allowedISTSignedComponents];
      v16 = [v15 containsObject:v14];

      if (v16)
      {
        if ([v7 isEqualToString:*(a1 + 56)] && objc_msgSend(*(a1 + 40), "isEqualToString:", *(a1 + 64)))
        {
          v17 = sub_100021268();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v23 = v14;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "About to run app layout checks for %{public}@", buf, 0xCu);
          }

          v18 = [*(a1 + 32) runAppLayoutSecurityCheck:v13];
        }

        else
        {
          v18 = [*(a1 + 32) runSecurityChecksForSection:v13 dataType:*(a1 + 40) componentName:v7 options:*(a1 + 48)];
        }

        *(*(*(a1 + 72) + 8) + 24) = v18;
      }

      else
      {
        *(*(*(a1 + 72) + 8) + 24) = 0;
        v20 = sub_100021268();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_10002ADFC();
        }
      }
    }

    else
    {
      *(*(*(a1 + 72) + 8) + 24) = 0;
      v14 = sub_100021268();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 40);
        *buf = 136315906;
        v23 = "[MSDDemoManifestCheck runSecurityCheck:]_block_invoke";
        v24 = 2114;
        v25 = v10;
        v26 = 2114;
        v27 = v7;
        v28 = 2114;
        v29 = v19;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s: Unknown rigorous check type (%{public}@) for %{public}@ (from %{public}@).", buf, 0x2Au);
      }
    }
  }

  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    v21 = sub_100021268();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10002AE6C(v7, a1, v21);
    }

    *a4 = 1;
    **(a1 + 80) = 1;
  }
}

void sub_10000FEA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100021268();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 name];
    v6 = [v3 userInfo];
    v8 = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Notification received for entitlement check for: %{public}@ %{public}@", &v8, 0x16u);
  }

  v7 = [v3 userInfo];
  [*(a1 + 32) setItemBeingInstalled:v7];
}

BOOL sub_100011234(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL sub_10001124C(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL sub_100011264(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void sub_100011BE8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

_BYTE *sub_100011C08(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void sub_100011C18(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

void sub_1000131AC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_1000131CC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

BOOL sub_1000131EC(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void sub_100013248(id a1)
{
  v1 = objc_alloc_init(MSDHVolumeManager);
  v2 = qword_10005BEC0;
  qword_10005BEC0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100013798(id a1)
{
  iterator = 0;
  bzero(&v18, 0x878uLL);
  if (statfs("/", &v18))
  {
    sub_10002D954();
    v4 = 0;
    v1 = 0;
LABEL_24:
    v10 = 0;
    goto LABEL_13;
  }

  v1 = [NSString stringWithUTF8String:v18.f_mntfromname];
  v2 = [v1 rangeOfString:@"/dev/"];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_10002DB88();
    v4 = 0;
    goto LABEL_24;
  }

  v4 = [v1 substringFromIndex:&v2[v3]];
  v5 = IOBSDNameMatching(kIOMasterPortDefault, 0, [v4 UTF8String]);
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v5);
  if (!MatchingService)
  {
    sub_10002DB2C();
    goto LABEL_24;
  }

  v7 = MatchingService;
  v8 = IORegistryEntryCreateIterator(MatchingService, "IOService", 3u, &iterator);
  if (v8)
  {
    sub_10002D9F0(v8, v7);
    goto LABEL_24;
  }

  v9 = IOIteratorNext(iterator);
  if (v9)
  {
    while (!IOObjectConformsTo(v9, "AppleAPFSContainer"))
    {
      IOObjectRelease(v9);
      v9 = IOIteratorNext(iterator);
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    v11 = IORegistryEntrySearchCFProperty(v9, "IOService", @"BSD Name", 0, 3u);
    if (v11)
    {
      v10 = v11;
      v12 = [@"/dev/" stringByAppendingString:v11];
      v13 = qword_10005BED0;
      qword_10005BED0 = v12;

      IOObjectRelease(v7);
      goto LABEL_12;
    }
  }

LABEL_8:
  v10 = 0;
  if (!sub_10002DAA4(v7, v9))
  {
LABEL_12:
    IOObjectRelease(v9);
  }

LABEL_13:
  if (iterator)
  {
    IOObjectRelease(iterator);
  }

  if (!qword_10005BED0)
  {
    qword_10005BED0 = @"/dev/disk0s1";
  }

  v14 = sub_100021268();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = qword_10005BED0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Current APFS boot container: %{public}@", buf, 0xCu);
  }
}

void sub_100013F18(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 8u);
}

BOOL sub_100013F30(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void sub_100013F98(id a1)
{
  v1 = objc_alloc_init(MSDTestPreferences);
  v2 = qword_10005BEE0;
  qword_10005BEE0 = v1;

  _objc_release_x1(v1, v2);
}

BOOL sub_10001602C(id a1, NSURL *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = sub_100021268();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(NSURL *)v4 path];
    v9 = 136315906;
    v10 = "[MSDManifest enumerateAndCollectMetaData:relativeTo:skip:superSet:handler:]_block_invoke";
    v11 = 2114;
    v12 = v7;
    v13 = 2114;
    v14 = v4;
    v15 = 2114;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Could not enumerate %{public}@, url=%{public}@, error=%{public}@", &v9, 0x2Au);
  }

  return 1;
}

void sub_1000165F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001660C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100016624(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [NSString stringWithCString:a2 encoding:4];
  type = xpc_get_type(v5);
  if (type == &_xpc_type_BOOL)
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [NSNumber numberWithBool:xpc_BOOL_get_value(v5)];
LABEL_22:
    v15 = v11;
    [v10 setObject:v11 forKey:v6];

    v9 = 1;
    goto LABEL_23;
  }

  if (type == &_xpc_type_string)
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [NSString stringWithCString:xpc_string_get_string_ptr(v5) encoding:4];
    goto LABEL_22;
  }

  if (type == &_xpc_type_int64)
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [NSNumber numberWithLongLong:xpc_int64_get_value(v5)];
    goto LABEL_22;
  }

  if (type == &_xpc_type_uint64)
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [NSNumber numberWithUnsignedLongLong:xpc_uint64_get_value(v5)];
    goto LABEL_22;
  }

  if (type == &_xpc_type_dictionary)
  {
    v12 = *(a1 + 32);
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [v12 initWithXPCDictionary:v5];
    goto LABEL_22;
  }

  if (type == &_xpc_type_data)
  {
    bytes_ptr = xpc_data_get_bytes_ptr(v5);
    length = xpc_data_get_length(v5);
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [NSData dataWithBytes:bytes_ptr length:length];
    goto LABEL_22;
  }

  if (type == &_xpc_type_array)
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [NSArray arrayWithXPCArray:v5];
    goto LABEL_22;
  }

  if (type == &_xpc_type_double)
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [NSNumber numberWithDouble:xpc_double_get_value(v5)];
    goto LABEL_22;
  }

  if (type == &_xpc_type_date)
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [NSDate dateWithTimeIntervalSince1970:xpc_date_get_value(v5)];
    goto LABEL_22;
  }

  v8 = sub_100021268();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10002E418(v6, v8);
  }

  v9 = 0;
LABEL_23:

  return v9;
}

id sub_100016F40()
{
  if (qword_10005BEF8 != -1)
  {
    sub_10002E914();
  }

  v1 = qword_10005BEF0;

  return v1;
}

void sub_100016F84(id a1)
{
  v1 = +[MSDPlatform sharedInstance];
  v2 = [v1 watchOS];

  if (v2)
  {
    [NSArray arrayWithObjects:@"/var/mobile/Demo.mov", @"/var/mobile/Demo.plist", @"/var/mobile/Media", @"/var/mobile/Library/AddressBook", @"/var/mobile/Library/Alarms", @"/var/mobile/Library/Calendar", @"/var/mobile/Library/CallHistoryDB", @"/var/mobile/Library/Carousel", @"/var/mobile/Library/Health", @"/var/mobile/Library/Maps", @"/var/mobile/Library/MapsHistory.plist", @"/var/mobile/Library/NanoMailKit", @"/var/mobile/Library/NanoMusicSync", @"/var/mobile/Library/NanoNotes/DemoBackup/NotesLocalDemoData", @"/var/mobile/Library/NanoPasses", @"/var/mobile/Library/NanoPodcasts", @"/var/mobile/Library/NanoPhotos", @"/var/mobile/Library/NanoWeatherDemo", @"/var/mobile/Library/News", @"/var/mobile/Library/RetailDemo", @"/var/mobile/Library/Reminders", @"/var/mobile/Library/SMS", @"/var/mobile/Library/UserConfigurationProfiles", @"/var/mobile/Library/Preferences/.GlobalPreferences.plist", @"/var/mobile/Library/Preferences/.GlobalPreferences_m.plist", @"/var/mobile/Library/Preferences/com.apple.Accessibility.plist", @"/var/mobile/Library/Preferences/com.apple.ActivitySharing.plist", @"/var/mobile/Library/Preferences/com.apple.AppleMediaServices.plist", @"/var/mobile/Library/Preferences/com.apple.assistant.backedup.plist", @"/var/mobile/Library/Preferences/com.apple.assistant.nano.plist", @"/var/mobile/Library/Preferences/com.apple.assistant.support.plist", @"/var/mobile/Library/Preferences/com.apple.backboardd.plist", @"/var/mobile/Library/Preferences/com.apple.Carousel.plist", @"/var/mobile/Library/Preferences/com.apple.coremedia.plist", @"/var/mobile/Library/Preferences/com.apple.ControlCenter.plist", @"/var/mobile/Library/Preferences/com.apple.DeepBreathing.plist", @"/var/mobile/Library/Preferences/com.apple.demo-settings.plist", @"/var/mobile/Library/Preferences/com.apple.findmy.plist", @"/var/mobile/Library/Preferences/com.apple.healthd.plist", @"/var/mobile/Library/Preferences/com.apple.ids.plist", @"/var/mobile/Library/Preferences/com.apple.locationd.plist", @"/var/mobile/Library/Preferences/com.apple.mobileme.fmf1.plist", @"/var/mobile/Library/Preferences/com.apple.mobilephone.plist", @"/var/mobile/Library/Preferences/com.apple.mobilephone.speeddial.plist", @"/var/mobile/Library/Preferences/com.apple.mobiletimer.plist", @"/var/mobile/Library/Preferences/com.apple.nanobuddy.plist", @"/var/mobile/Library/Preferences/com.apple.nanolifestyle.plist", @"/var/mobile/Library/Preferences/com.apple.nanolifestyle.privacy.plist", @"/var/mobile/Library/Preferences/com.apple.NanoMediaUI.plist", @"/var/mobile/Library/Preferences/com.apple.NanoMusicSync.plist", @"/var/mobile/Library/Preferences/com.apple.NanoNotes.plist", @"/var/mobile/Library/Preferences/com.apple.nanopassbook.plist", @"/var/mobile/Library/Preferences/com.apple.nanophotos.plist", @"/var/mobile/Library/Preferences/com.apple.nanonews.sync.plist", @"/var/mobile/Library/Preferences/com.apple.Noise.plist", @"/var/mobile/Library/Preferences/com.apple.podcasts.plist", @"/var/mobile/Library/Preferences/com.apple.SessionTrackerApp.plist", @"/var/mobile/Library/Preferences/com.apple.stockholm.plist", @"/var/mobile/Library/Preferences/com.apple.system.prefs.plist", @"/var/mobile/Library/Preferences/com.apple.timed.plist", @"/var/mobile/Library/Preferences/com.apple.voicememod.plist"];
  }

  else
  {
    v3 = +[MSDPlatform sharedInstance];
    v4 = [v3 tvOS];

    if (!v4)
    {
      return;
    }

    [NSArray arrayWithObjects:@"/var/mobile/Media/DCIM", @"/var/mobile/Media/PhotoData", @"/var/mobile/Library/Preferences/com.apple.demo-settings.plist", @"/var/MobileDevice/ProvisioningProfiles", @"/var/mobile/Library/com.apple.HeadBoard/HBDemoModeAppOrder", @"/var/mobile/Library/com.apple.HeadBoard/AppOrder.plist", @"/var/mobile/Library/Preferences/.GlobalPreferences.plist", @"/var/mobile/Library/Preferences/.GlobalPreferences_m.plist", @"/var/mobile/Library/DemoLoop", 0, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57];
  }
  v5 = ;
  v6 = qword_10005BEF0;
  qword_10005BEF0 = v5;

  _objc_release_x1(v5, v6);
}

id sub_1000173DC()
{
  if (qword_10005BF08 != -1)
  {
    sub_10002E928();
  }

  v1 = qword_10005BF00;

  return v1;
}

void sub_100017420(id a1)
{
  v1 = +[MSDPlatform sharedInstance];
  v2 = [v1 watchOS];

  if (v2)
  {
    v3 = [NSArray arrayWithObjects:@"/var/mobile/Library/Caches/sharedCaches/com.apple.WatchListKit.NSURLCache", @"/var/mobile/Library/Caches/sharedCaches/com.apple.iTunesStore.NSURLCache/VaryState.db-shm", @"/var/mobile/Library/Caches/sharedCaches/com.apple.iTunesStore.NSURLCache/VaryState.db-wal", @"/var/mobile/Library/Caches/sharedCaches/com.apple.iTunesStore.NSURLCache/VaryState.db", @"/var/mobile/Library/Caches/sharedCaches/com.apple.iTunesStore.NSURLCache/Cache.db", @"/var/mobile/Library/Caches/sharedCaches/com.apple.iTunesStore.NSURLCache/Cache.db-wal", @"/var/mobile/Library/Caches/sharedCaches/com.apple.iTunesStore.NSURLCache/Cache.db-shm", @"/var/mobile/Library/Caches/sharedCaches/com.apple.iTunesStore.NSURLCache/fsCachedData", 0];
  }

  else
  {
    v4 = +[MSDPlatform sharedInstance];
    v5 = [v4 tvOS];

    if (!v5)
    {
      return;
    }

    v3 = +[NSArray array];
  }

  v6 = qword_10005BF00;
  qword_10005BF00 = v3;

  _objc_release_x1(v3, v6);
}

id sub_100017534()
{
  if (qword_10005BF18 != -1)
  {
    sub_10002E93C();
  }

  v1 = qword_10005BF10;

  return v1;
}

void sub_100017578(id a1)
{
  v1 = +[MSDPlatform sharedInstance];
  v2 = [v1 watchOS];

  if (v2)
  {
    v3 = [NSArray arrayWithObjects:@"systemgroup.com.apple.configurationprofiles", 0];
  }

  else
  {
    v4 = +[MSDPlatform sharedInstance];
    v5 = [v4 tvOS];

    if (!v5)
    {
      return;
    }

    v3 = +[NSArray array];
  }

  v6 = qword_10005BF10;
  qword_10005BF10 = v3;

  _objc_release_x1(v3, v6);
}

id sub_100017648()
{
  if (qword_10005BF28 != -1)
  {
    sub_10002E950();
  }

  v1 = qword_10005BF20;

  return v1;
}

void sub_10001768C(id a1)
{
  v1 = [NSArray arrayWithObjects:@"/.com.apple.mobile_container_manager.metadata.plist", @"/Library/Caches", @"/Library/SyncedPreferences", @"/Library/Saved Application State", @"/SystemData/com.apple.AuthenticationServices", 0];
  v2 = qword_10005BF20;
  qword_10005BF20 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100017708()
{
  if (qword_10005BF38 != -1)
  {
    sub_10002E964();
  }

  v1 = qword_10005BF30;

  return v1;
}

void sub_10001774C(id a1)
{
  v1 = [NSArray arrayWithObjects:@"/.com.apple.mobile_container_manager.metadata.plist", @"/Library/Caches", @"/Library/SyncedPreferences", @"/Library/Saved Application State", @"/SystemData/com.apple.AuthenticationServices", 0];
  v2 = qword_10005BF30;
  qword_10005BF30 = v1;

  _objc_release_x1(v1, v2);
}

id sub_1000177C8()
{
  v4[0] = @"ContentRootDomain";
  v0 = sub_100016F40();
  v4[1] = @"SystemContainerDomain";
  v5[0] = v0;
  v1 = sub_100017534();
  v5[1] = v1;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

void sub_100017B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100017B60(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) objectAtIndex:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [*(a1 + 40) metadataForFile:v5];
    v7 = [*(a1 + 48) stringByAppendingPathComponent:v5];
    v8 = [*(a1 + 56) pathsToSkip];
    v9 = [v7 lowercaseString];
    v10 = [v8 containsObject:v9];

    if (v10)
    {
      v11 = sub_100021268();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315394;
        v13 = "[MSDHFileMetadataRestore restoreAttributesUnder:fromManifestData:]_block_invoke";
        v14 = 2114;
        v15 = v7;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: Skip file attributes restore for %{public}@", &v12, 0x16u);
      }
    }

    else
    {
      if ([v6 restoreAttribuesToPath:v7])
      {
        goto LABEL_9;
      }

      *(*(*(a1 + 64) + 8) + 24) = 0;
      v11 = sub_100021268();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10002EA88();
      }
    }
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v11 = sub_100021268();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Got non-string value from array.", &v12, 2u);
    }

    v6 = 0;
    v7 = 0;
  }

LABEL_9:
  objc_autoreleasePoolPop(v4);
}

void sub_100018474(id a1)
{
  v1 = objc_alloc_init(MSDHOperations);
  v2 = qword_10005BF40;
  qword_10005BF40 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10001B83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001B870(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001B888(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[OSLogEventStream alloc] initWithSource:v3];

  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [NSPredicate predicateWithFormat:*(a1 + 32)];
  [*(*(*(a1 + 48) + 8) + 40) setFilterPredicate:v7];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001BA2C;
  v10[3] = &unk_100051048;
  v12 = *(a1 + 56);
  v11 = *(a1 + 40);
  [*(*(*(a1 + 48) + 8) + 40) setInvalidationHandler:v10];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001BB2C;
  v9[3] = &unk_100051070;
  v9[4] = *(a1 + 64);
  [*(*(*(a1 + 48) + 8) + 40) setEventHandler:v9];
  v8 = [NSDate dateWithTimeIntervalSinceNow:-172800.0];
  [*(*(*(a1 + 48) + 8) + 40) activateStreamFromDate:v8];
}

intptr_t sub_10001BA2C(uint64_t a1, uint64_t a2)
{
  if (a2 == 5)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v4 = sub_100021268();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v5 = @"successful";
    }

    else
    {
      v5 = @"failed";
    }

    v7 = 138543618;
    v8 = v5;
    v9 = 2048;
    v10 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Log file creation %{public}@, OSLogEventStreamInvalidation: %lu", &v7, 0x16u);
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10001BB2C(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = objc_alloc_init(NSISO8601DateFormatter);
  v4 = +[NSTimeZone systemTimeZone];
  [v12 setTimeZone:v4];

  v5 = [v3 date];
  v6 = [v12 stringFromDate:v5];

  [*(*(*(a1 + 32) + 8) + 40) seekToEndOfFile];
  v7 = *(*(*(a1 + 32) + 8) + 40);
  v8 = [v3 process];
  v9 = [v3 composedMessage];

  v10 = [NSString stringWithFormat:@"%@: %@: %@\n", v6, v8, v9];
  v11 = [v10 dataUsingEncoding:4];
  [v7 writeData:v11];
}

void sub_10001C618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_10001CBB0(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_10005BF58)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_10001CCF0;
    v5[4] = &unk_1000510F8;
    v5[5] = v5;
    v6 = off_1000510E0;
    v7 = 0;
    qword_10005BF58 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_10005BF58;
    if (qword_10005BF58)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_10005BF58;
LABEL_5:
  result = dlsym(v2, "SFTerminateProcessNamed");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10005BF50 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10001CCF0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10005BF58 = result;
  return result;
}

void sub_10001CDB0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t sub_10001CDDC()
{
  if (!qword_10005BF60)
  {
    mach_service = xpc_connection_create_mach_service("com.apple.mobilestoredemodhelper", 0, 1uLL);
    v1 = qword_10005BF60;
    qword_10005BF60 = mach_service;

    if (!qword_10005BF60)
    {
      v3 = sub_100021268();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Could not create XPC listener.", v4, 2u);
      }

      exit(1);
    }

    xpc_connection_set_event_handler(qword_10005BF60, &stru_100051138);
    xpc_connection_resume(qword_10005BF60);
  }

  return 0;
}

void sub_10001CE98(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = qword_10005BF60;
  v4 = v2;
  if (xpc_get_type(v4) != &_xpc_type_connection)
  {
    if (v4 == &_xpc_error_termination_imminent)
    {
      v9 = sub_100021268();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      LOWORD(v12) = 0;
      v10 = "XPC connection will be closed";
    }

    else
    {
      v9 = sub_100021268();
      v11 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (v4 != &_xpc_error_connection_invalid)
      {
        if (v11)
        {
          LODWORD(v12) = 136446210;
          *(&v12 + 4) = xpc_dictionary_get_string(v4, _xpc_error_key_description);
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Got XPC error on listener connection: %{public}s", &v12, 0xCu);
        }

        xpc_connection_cancel(qword_10005BF60);
        exit(1);
      }

      if (!v11)
      {
LABEL_14:

        exit(0);
      }

      LOWORD(v12) = 0;
      v10 = "No XPC connection, exiting";
    }

    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, &v12, 2u);
    goto LABEL_14;
  }

  v5 = sub_100021268();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000311D4();
  }

  v6 = v4;
  v7 = sub_100021268();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Start to deal with new connection", &v12, 2u);
  }

  *&v12 = _NSConcreteStackBlock;
  *(&v12 + 1) = 3221225472;
  v13 = sub_10001D1D8;
  v14 = &unk_100051160;
  v15 = v6;
  v8 = v6;
  xpc_connection_set_event_handler(v8, &v12);
  xpc_connection_resume(v8);
}

uint64_t start(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100021268();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *a2;
    v7 = 136446210;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s started", &v7, 0xCu);
  }

  sub_10001CDDC();
  v5 = +[NSRunLoop currentRunLoop];
  [v5 run];

  return 0;
}

void sub_10001D1D8(uint64_t a1, void *a2)
{
  v3 = a2;
  type = xpc_get_type(v3);
  v5 = sub_100021268();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100031208();
  }

  v6 = sub_100021268();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (type != &_xpc_type_error)
  {
    if (v7)
    {
      sub_10003123C();
    }

    if (type != &_xpc_type_dictionary)
    {
      sub_100031270();
    }

    v8 = *(a1 + 32);
    v9 = v3;
    v10 = sub_100021268();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_10003129C();
    }

    v11 = +[MSDHMessageResponder sharedInstance];
    [v11 handleXPCMessage:v9 fromConnection:v8];

    v12 = sub_100021268();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1000312D0();
    }

    goto LABEL_11;
  }

  if (v7)
  {
    sub_100031304();
  }

  if (v3 == &_xpc_error_connection_invalid)
  {
    v12 = sub_100021268();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v13 = "XPC disconnected by client";
      v14 = buf;
      goto LABEL_21;
    }
  }

  else
  {
    if (v3 != &_xpc_error_termination_imminent)
    {
      goto LABEL_12;
    }

    v12 = sub_100021268();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 0;
      v13 = "XPC connection will be closed";
      v14 = &v15;
LABEL_21:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, v14, 2u);
    }
  }

LABEL_11:

LABEL_12:
}

void sub_10001D3D4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_10001D434(id a1)
{
  v1 = objc_alloc_init(MSDXCTestSpawnWrapper);
  v2 = qword_10005BF68;
  qword_10005BF68 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10001E348(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_10001EA90(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = a6;
  v11 = 0;
  if (a1 == 1 && a2 == 1)
  {
    v12 = [NSString stringWithUTF8String:a4];
    v27 = 0;
    v13 = [NSFileManager isSQLiteFile:v12 error:&v27];
    v14 = v27;

    if (v13)
    {
      v15 = sub_100021268();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_100031E04();
      }

      v16 = [NSString stringWithUTF8String:a4];
      v17 = [NSString stringWithUTF8String:a5];
      v26 = v14;
      v18 = [NSFileManager copySQLiteFile:v16 toPath:v17 timeout:&v26 error:0.1];
      v19 = v26;

      v20 = sub_100021268();
      v21 = v20;
      if (v18)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          sub_100031F00();
        }

        v22 = [NSString stringWithUTF8String:a5];
        [v10 addObject:v22];
        v11 = 1;
      }

      else
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_100031E84();
        }

        v22 = sub_100021268();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *v25 = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "falling back to default copyfile() behavior", v25, 2u);
        }

        v11 = 0;
      }
    }

    else
    {
      if (!v14)
      {
        v11 = 0;
        goto LABEL_22;
      }

      v23 = sub_100021268();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_100031D68(a4, v14);
      }

      v22 = sub_100021268();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "falling back to default copyfile() behavior", v25, 2u);
      }

      v11 = 0;
      v19 = v14;
    }
  }

LABEL_22:

  return v11;
}

void *sub_10001F870(uint64_t a1)
{

  return sub_1000011F8(v1, 0, a1);
}

id sub_100021268()
{
  if (qword_10005BF80 != -1)
  {
    sub_100032660();
  }

  v1 = qword_10005BF78;

  return v1;
}

void sub_1000212AC(id a1)
{
  v1 = os_log_create("com.apple.MobileStoreDemo", "Default");
  v2 = qword_10005BF78;
  qword_10005BF78 = v1;

  _objc_release_x1(v1, v2);
}

id sub_1000212F0()
{
  if (qword_10005BF90 != -1)
  {
    sub_100032674();
  }

  v1 = qword_10005BF88;

  return v1;
}

void sub_100021334(id a1)
{
  v1 = os_log_create("com.apple.MobileStoreDemo", "ScreenSaver");
  v2 = qword_10005BF88;
  qword_10005BF88 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100021378()
{
  if (qword_10005BFA0 != -1)
  {
    sub_100032688();
  }

  v1 = qword_10005BF98;

  return v1;
}

void sub_1000213BC(id a1)
{
  v1 = os_log_create("com.apple.MobileStoreDemo", "Message");
  v2 = qword_10005BF98;
  qword_10005BF98 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100021400()
{
  if (qword_10005BFB0 != -1)
  {
    sub_10003269C();
  }

  v1 = qword_10005BFA8;

  return v1;
}

void sub_100021444(id a1)
{
  if (os_variant_has_internal_content())
  {
    v1 = os_log_create("com.apple.MobileStoreDemo", "Signpost");
  }

  else
  {
    v1 = &_os_log_disabled;
    v2 = &_os_log_disabled;
  }

  v3 = qword_10005BFA8;
  qword_10005BFA8 = v1;
}

void sub_1000214B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  v10 = +[MSDLogModel sharedInstance];
  [v10 logWithFormat:v9 andArgs:&a9];
}

void sub_100021558(id a1)
{
  v1 = objc_alloc_init(MSDLogModel);
  v2 = qword_10005BFB8;
  qword_10005BFB8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100021AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100021B08(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100021B20(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v14 = [*(a1 + 32) stringByAppendingFormat:@"/%@", a2];
  v6 = [*(a1 + 40) description];
  NSLog(@"Checking existing log file (full path) %@ against %@", v14, v6);

  v7 = [*(a1 + 48) attributesOfItemAtPath:v14 error:0];
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [*(*(*(a1 + 56) + 8) + 40) fileCreationDate];
  v11 = [v10 compare:*(a1 + 40)];

  if (v11 == -1)
  {
    v12 = [*(*(*(a1 + 56) + 8) + 40) fileCreationDate];
    v13 = [v12 description];
    NSLog(@"Removing %@ whose creation date is %@.", v14, v13);

    [*(a1 + 48) removeItemAtPath:v14 error:0];
  }

  *a4 = 0;
}

void sub_100021DE8(id a1)
{
  v1 = objc_alloc_init(MSDHMessageResponder);
  v2 = qword_10005BFC8;
  qword_10005BFC8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100021FCC(id a1)
{
  v1 = [NSSet setWithObjects:@"updateSignedManifest", @"migratePreferencesFile:", @"stageDeviceForUpdateProcess:", @"clearStagedDeviceAfterUpdateProcess", @"prepareWorkDirectory:", @"removeWorkDirectory:", @"createDeviceManifest:", @"fileExistsAtPath:", @"readPlistFile:outContent:", @"touchFile:", @"cloneFile:", @"restoreBackupAttributes:", @"restoreAppDataAttributes:", @"deleteNvram:", @"writeNvram:", @"manageVolume:", @"disableLaunchdServicesForWatch:", @"moveStagingToFinal:", @"switchToBackupFolder:", @"reboot:", @"quitHelper:", @"collectDemoLogsToFolder:", @"preserveBluetoothFileToShelter:", @"restartBluetooth:", @"setComputerNameAndHostname:", @"executeTestScriptOfIdentifier:", @"preserveSecondPartyAppDataToShelter:outErrorDict:", @"setPreferences:", 0];
  v2 = qword_10005BFD8;
  qword_10005BFD8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100024988(uint64_t a1, NSObject *a2)
{
  v2 = *(*a1 + 40);
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Converted from xpc to NSArray: %{public}@", &v3, 0xCu);
}

void sub_100024A08(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "The value at index %lu in this xpcArray are of an unsupported type", &v2, 0xCu);
}

void sub_100024AC4(void *a1, NSObject *a2)
{
  v3 = 136315138;
  v4 = [a1 objCType];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unsupported NSNumber type: %s for xpc dictionary encoding", &v3, 0xCu);
}

void sub_100024B54()
{
  v0 = sub_100021268();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v1 = __error();
    strerror(*v1);
    sub_100002BA4();
    sub_100002B94();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

void sub_100024BFC()
{
  v0 = __error();
  strerror(*v0);
  sub_100002BA4();
  sub_100002B94();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100024C88(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Could not extract extended file attributes from %{public}@, returned %ld", &v3, 0x16u);
}

void sub_100024D10()
{
  v0 = sub_100021268();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v1 = __error();
    strerror(*v1);
    sub_100002B94();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
  }
}

void sub_100024DE0()
{
  v0 = sub_100021268();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_100002B94();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void sub_100024E80()
{
  v0 = sub_100021268();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_100002B94();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  }
}

void sub_100024F38(void *a1)
{
  v2 = sub_100021268();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [a1 length];
    sub_100002B94();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void sub_100025A08()
{
  v1 = sub_100021268();
  if (sub_100005E88(v1))
  {
    sub_100005E34();
    sub_100002B94();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

void sub_100025AAC()
{
  v3[0] = 136315394;
  sub_100005E34();
  v4 = v0;
  sub_100005E70(&_mh_execute_header, v1, v2, "%s - ERROR - Missing Info section for app:  %{public}@", v3);
}

void sub_100025B28()
{
  v1 = sub_100021268();
  if (sub_100005E88(v1))
  {
    sub_100005E34();
    sub_100002B94();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

void sub_100025BCC()
{
  v3[0] = 136315394;
  sub_100005E34();
  v4 = v0;
  sub_100005E70(&_mh_execute_header, v1, v2, "%s - Missing Info section for stand-alone package:  %{public}@", v3);
}

void sub_100025C48()
{
  v1 = sub_100021268();
  if (sub_100005E88(v1))
  {
    sub_100005E34();
    sub_100002B94();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
  }
}

void sub_100025D00(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_100005E34();
    sub_100002B94();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

void sub_100025DA4()
{
  v3[0] = 136315394;
  sub_100005E34();
  v4 = v0;
  sub_100005E70(&_mh_execute_header, v1, v2, "%s - Missing app object for app:  %{public}@", v3);
}

void sub_100025E20(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_100005E34();
    sub_100002B94();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

void sub_100025EC4()
{
  v3[0] = 136315394;
  sub_100005E34();
  v4 = v0;
  sub_100005E70(&_mh_execute_header, v1, v2, "%s - Missing package object for stand-alone package:  %{public}@", v3);
}

void sub_100025F40(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  sub_100005E70(&_mh_execute_header, a3, a3, "Info section is missing for item %{public}@ under component %{public}@.", &v3);
}

void sub_100025FC0()
{
  v1 = sub_100021268();
  if (sub_100005E88(v1))
  {
    sub_100002B94();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_10002605C()
{
  v1 = sub_100021268();
  if (sub_100005E88(v1))
  {
    sub_100002B94();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

void sub_10002610C()
{
  v1 = sub_100021268();
  if (sub_100005E88(v1))
  {
    sub_100005E34();
    sub_100002B94();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

void sub_1000261B4(NSObject **a1)
{
  v2 = sub_100021268();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 138543618;
    sub_100005E34();
    v5 = @"locale";
    sub_100005E70(&_mh_execute_header, v2, v3, "No %{public}@ key in component %{public}@", v4);
  }

  *a1 = v2;
}

void sub_100026268(NSObject **a1)
{
  v2 = sub_100021268();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 138543618;
    sub_100005E34();
    v5 = @"BackupData";
    sub_100005E70(&_mh_execute_header, v2, v3, "No component %{public}@ under section %{public}@", v4);
  }

  *a1 = v2;
}

void sub_1000263EC()
{
  v3[0] = 136315394;
  sub_100005E34();
  v4 = v0;
  sub_100005E70(&_mh_execute_header, v1, v2, "%s - Manifest file does not exist:  %{public}@", v3);
}

void sub_100026468(uint64_t a1, void *a2)
{
  v4 = sub_100021268();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6[0] = 136315394;
    sub_100005E34();
    v7 = a1;
    sub_100005E70(&_mh_execute_header, v4, v5, "%s:  Manifest file is in wrong format:  %{public}@ - Must be NSDictionary.", v6);
  }
}

void sub_100026524(void *a1, void *a2)
{
  v4 = sub_100021268();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "+[MSDSignedManifestFactory readManifestFromFile:]";
    v7 = 1024;
    v8 = [a1 intValue];
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s:  Manifest version %d is not supported yet.", &v5, 0x12u);
  }
}

void sub_1000265FC(uint64_t a1, void *a2)
{
  v4 = sub_100021268();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6[0] = 136315394;
    sub_100005E34();
    v7 = a1;
    sub_100005E70(&_mh_execute_header, v4, v5, "%s:  Missing Version number in manifest file:  %{public}@", v6);
  }
}

void sub_1000266B8(void *a1)
{
  v2 = sub_100021268();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [a1 localizedDescription];
    v6[0] = 136315394;
    sub_100005E34();
    v7 = v4;
    sub_100005E70(&_mh_execute_header, v2, v5, "%s:  Failed to convert manifest file to property list.  Error:  %{public}@", v6);
  }
}

void sub_100026778()
{
  v3[0] = 136315394;
  sub_100005E34();
  v4 = v0;
  sub_100005E70(&_mh_execute_header, v1, v2, "%s - Failed to read manifest file:  %{public}@", v3);
}

void sub_1000273F0(void *a1)
{
  v6 = [a1 localizedDescription];
  sub_100002B94();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100027480(uint8_t *a1, uint64_t a2, void *a3)
{
  v7 = sub_100021268();
  if (sub_100005E88(v7))
  {
    *a1 = 138543362;
    *a3 = a2;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to get file size for item: %{public}@", a1, 0xCu);
  }
}

void sub_1000274FC(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Skipping all items in current item domain due to insufficient free disk space.", buf, 2u);
}

void sub_10002753C(uint64_t *a1)
{
  v6 = *a1;
  sub_100006BF0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000275B4()
{
  v1 = sub_100021268();
  if (sub_100005E88(v1))
  {
    v2 = *__error();
    sub_100008A34();
    sub_100002B94();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
  }
}

void sub_100027650()
{
  v1 = sub_100021268();
  if (sub_100005E88(v1))
  {
    v2 = *__error();
    sub_100008A34();
    sub_100002B94();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
  }
}

void sub_100027760(NSObject *a1, void *a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "Failed to extract disk space information.", v4, 2u);
  }
}

void sub_10002780C(void *a1)
{
  v6 = [a1 localizedDescription];
  sub_100002B94();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10002789C(uint64_t a1)
{
  v6 = *(*(*a1 + 8) + 40);
  sub_100006BF0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100027930(uint64_t a1, void *a2)
{
  v2 = *(*(*a1 + 8) + 40);
  v8 = [a2 localizedDescription];
  sub_100002B94();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_1000279F4(uint64_t a1, void *a2)
{
  v7 = [a2 localizedDescription];
  sub_100002B94();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_100027AB0()
{
  v1 = sub_100021268();
  if (sub_100005E88(v1))
  {
    sub_100002B94();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_100028490()
{
  v1 = sub_100021268();
  if (sub_100005E88(v1))
  {
    sub_10000ACD8();
    sub_100002B94();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_100028524(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  sub_10000ACD8();
  sub_100002B94();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000285CC()
{
  v1 = sub_100021268();
  if (sub_100005E88(v1))
  {
    v2 = *__error();
    sub_10000ACD8();
    sub_100002B94();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
  }
}

void sub_100028674()
{
  v1 = sub_100021268();
  if (sub_100005E88(v1))
  {
    v2 = *__error();
    sub_10000ACD8();
    sub_100002B94();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
  }
}

void sub_10002871C(uint64_t a1, NSObject **a2)
{
  v4 = sub_100021268();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = __error();
    strerror(*v5);
    v6 = 138543618;
    v7 = a1;
    sub_10000AD10();
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Could not validate ACL for %{public}@ with error - %{public}s", &v6, 0x16u);
  }

  *a2 = v4;
}

void sub_1000287E0()
{
  v1 = sub_100021268();
  if (sub_100005E88(v1))
  {
    v2 = __error();
    strerror(*v2);
    sub_10000ACD8();
    sub_10000AD10();
    sub_100002B94();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

void sub_1000288C8()
{
  v1 = sub_100021268();
  if (sub_100005E88(v1))
  {
    v2 = __error();
    strerror(*v2);
    sub_10000ACD8();
    sub_10000AD10();
    sub_100002B94();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

void sub_10002896C()
{
  v1 = sub_100021268();
  if (sub_100005E88(v1))
  {
    sub_10000ACD8();
    sub_100002B94();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_100028A00()
{
  v1 = sub_100021268();
  if (sub_100005E88(v1))
  {
    sub_100002B94();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

void sub_100028AB0()
{
  v1 = sub_100021268();
  if (sub_100005E88(v1))
  {
    sub_10000ACD8();
    sub_100002B94();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_100028B44(uint64_t a1, void *a2)
{
  v4 = sub_100021268();
  if (sub_100005E88(v4))
  {
    v5 = [a2 localizedDescription];
    sub_10000ACD8();
    sub_100002B94();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
  }
}

void sub_100028C04()
{
  v1 = sub_100021268();
  if (sub_100005E88(v1))
  {
    sub_10000ACD8();
    sub_100002B94();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_100028C98()
{
  v1 = sub_100021268();
  if (sub_100005E88(v1))
  {
    sub_10000ACD8();
    sub_100002B94();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_100028D2C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 136446466;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Cannot remove extended attribte %{public}s from %{public}@.", &v3, 0x16u);
}

void sub_100028DF8()
{
  v1 = sub_100021268();
  if (sub_100005E88(v1))
  {
    sub_100002B94();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_100029758()
{
  v0 = sub_100021268();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_10000C358();
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
  }
}

void sub_1000297C0()
{
  v0 = sub_100021268();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_10000C334();
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
  }
}

void sub_100029868()
{
  v0 = sub_100021268();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_10000C334();
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
  }
}

void sub_100029E24()
{
  v1 = sub_100021268();
  if (sub_100005E88(v1))
  {
    sub_100002B94();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_10002A000()
{
  v2[0] = 136315394;
  sub_10001127C();
  sub_100005E70(&_mh_execute_header, v0, v1, "%s: signature type for certificate %{public}@ does not exist", v2);
}

void sub_10002A0F8()
{
  sub_1000111F0();
  sub_10000C334();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void sub_10002A168()
{
  v2[0] = 136315394;
  sub_10001127C();
  sub_100005E70(&_mh_execute_header, v0, v1, "%s: No matching certificate for %{public}@.", v2);
}

void sub_10002A1E0()
{
  v1 = sub_100021268();
  if (sub_100005E88(v1))
  {
    sub_100002B94();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_10002A23C()
{
  v1 = sub_100021268();
  if (sub_100005E88(v1))
  {
    sub_100002B94();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_10002A298()
{
  sub_100011208();
  v0 = sub_100021268();
  if (sub_100011234(v0))
  {
    sub_1000111C8();
    sub_1000111B8();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  }

  sub_1000111FC();
}

void sub_10002A33C()
{
  sub_100011208();
  v2 = sub_100021268();
  if (sub_100011234(v2))
  {
    sub_1000111C8();
    sub_1000111B8();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

void sub_10002A3E8()
{
  v0 = sub_100021268();
  if (sub_100011234(v0))
  {
    sub_1000111B8();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  }

  sub_1000111FC();
}

void sub_10002A490()
{
  sub_1000111F0();
  sub_10000C334();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void sub_10002A500(NSObject *a1)
{
  if (sub_100011264(a1))
  {
    sub_100002B94();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_10002A594()
{
  v1 = sub_100021268();
  if (sub_100005E88(v1))
  {
    sub_100002B94();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_10002A630()
{
  sub_100011214();
  if (sub_100011264(v0))
  {
    sub_1000111DC();
    sub_1000111B8();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  }

  sub_1000111FC();
}

void sub_10002A6CC()
{
  sub_100011214();
  if (sub_100011264(v0))
  {
    sub_1000111DC();
    sub_1000111B8();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  }

  sub_1000111FC();
}

void sub_10002A768()
{
  sub_100011214();
  if (sub_100011264(v0))
  {
    sub_1000111DC();
    sub_1000111B8();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  }

  sub_1000111FC();
}

void sub_10002A804()
{
  sub_100011290();
  if (sub_100011264(v0))
  {
    sub_1000111B8();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  sub_1000111FC();
}

void sub_10002A894(unsigned int *a1)
{
  v1 = *a1;
  v4[0] = 136315394;
  sub_1000111DC();
  sub_100005E70(&_mh_execute_header, v2, v3, "%s: certificate trust evaluation failed: %ld", v4);
}

void sub_10002A910()
{
  sub_100011290();
  v3 = sub_100021268();
  if (sub_10001124C(v3))
  {
    sub_10000C334();
    _os_log_error_impl(v6, v7, v8, v9, v10, v11);
  }

  v4 = *(*(v1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  *v0 = 1;
}

void sub_10002AA1C(int a1)
{
  v2 = sub_100021268();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315394;
    v4 = "[MSDDemoManifestCheck verifySignature:forData:withKey:]";
    v5 = 1024;
    v6 = a1;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s: Failed in verifying signature(%d)", &v3, 0x12u);
  }
}

void sub_10002ABD8()
{
  v1 = sub_100021268();
  if (sub_100005E88(v1))
  {
    sub_100002B94();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_10002AC34()
{
  v1 = sub_100021268();
  if (sub_100005E88(v1))
  {
    sub_100002B94();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_10002ACD0()
{
  v1 = sub_100021268();
  if (sub_100005E88(v1))
  {
    sub_100002B94();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_10002AD6C()
{
  sub_100011290();
  if (sub_100011264(v0))
  {
    sub_1000111B8();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  sub_1000111FC();
}

void sub_10002ADFC()
{
  sub_1000111F0();
  sub_10000C334();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void sub_10002AE6C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a2 + 40);
  v4 = 136315650;
  v5 = "[MSDDemoManifestCheck runSecurityCheck:]_block_invoke";
  v6 = 2114;
  v7 = a1;
  v8 = 2114;
  v9 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Failed rigorous check for:%{public}@ (from %{public}@)", &v4, 0x20u);
}

void sub_10002AF08()
{
  sub_1000111F0();
  sub_10000C334();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void sub_10002AF78()
{
  sub_100011208();
  v2 = sub_100021268();
  if (sub_100011234(v2))
  {
    sub_1000111C8();
    sub_1000111B8();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

void sub_10002B024()
{
  sub_100011208();
  v0 = sub_100021268();
  if (sub_100011234(v0))
  {
    sub_1000111C8();
    sub_1000111B8();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  }

  sub_1000111FC();
}

void sub_10002B0C8()
{
  sub_100011208();
  v0 = sub_100021268();
  if (sub_100011234(v0))
  {
    sub_1000111C8();
    sub_1000111B8();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  }

  sub_1000111FC();
}

void sub_10002B16C()
{
  sub_100011290();
  v3 = sub_100021268();
  if (sub_10001124C(v3))
  {
    sub_100011224();
    _os_log_error_impl(v4, v5, v6, v7, v8, v9);
  }
}

void sub_10002B1DC()
{
  sub_1000111F0();
  v3 = 2114;
  v4 = v0;
  sub_100005E70(&_mh_execute_header, v1, v1, "Not a valid fileType (%{public}@) for file: %{public}@", v2);
}

void sub_10002B258()
{
  sub_1000111F0();
  v3 = 2048;
  v4 = v0;
  sub_100005E70(&_mh_execute_header, v1, v1, "File permissions failed for file:%{public}@(%ld)", v2);
}

void sub_10002B2D4()
{
  sub_1000111F0();
  sub_10000C334();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void sub_10002B344()
{
  sub_1000111F0();
  sub_10000C334();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void sub_10002B3B4(void *a1)
{
  v3 = sub_100021268();
  if (sub_100011234(v3))
  {
    sub_1000111B8();
    _os_log_error_impl(v4, v5, v6, v7, v8, 2u);
  }
}

void sub_10002B418(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_100021268();
  if (sub_10001124C(v6))
  {
    sub_10000C334();
    _os_log_error_impl(v7, v8, v9, v10, v11, v12);
  }
}

void sub_10002B4CC()
{
  sub_100011208();
  v2 = sub_100021268();
  if (sub_100011234(v2))
  {
    sub_1000111B8();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void sub_10002B570()
{
  sub_1000111F0();
  sub_10000C334();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void sub_10002B5E0()
{
  sub_1000111F0();
  sub_10000C334();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void sub_10002B72C(void *a1)
{
  free(a1);
  v1 = sub_100021268();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_100011BE8(&_mh_execute_header, v2, v3, "Failed to open dst file name.", v4, v5, v6, v7, 0);
  }
}

void sub_10002B828(uint8_t *a1, _BYTE *a2, void *a3)
{
  v6 = sub_100021268();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *a1 = 0;
    *a2 = 0;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to write data to disk", a1, 2u);
  }
}

void sub_10002B8D8()
{
  v0 = sub_100021268();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_100011BE8(&_mh_execute_header, v1, v2, "Failed to set up directory traversal tree.", v3, v4, v5, v6, 0);
  }
}

void sub_10002B934()
{
  v0 = sub_100021268();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_100011BE8(&_mh_execute_header, v1, v2, "Invalid src or dest path.", v3, v4, v5, v6, 0);
  }

  __break(1u);
}

void sub_10002B980()
{
  sub_100011290();
  v3 = sub_100021268();
  if (sub_10001124C(v3))
  {
    sub_1000131CC(&_mh_execute_header, v4, v5, "Cannot find RelativePathsToRemoveOnRestore under CameraRollDomain.", v6, v7, v8, v9, 0);
  }
}

void sub_10002B9E8()
{
  sub_100011290();
  v3 = sub_100021268();
  if (sub_10001124C(v3))
  {
    sub_1000131CC(&_mh_execute_header, v4, v5, "Cannot find RelativePathsNotToBackup under CameraRollDomain.", v6, v7, v8, v9, 0);
  }
}

void sub_10002BA50()
{
  sub_100011290();
  v3 = sub_100021268();
  if (sub_10001124C(v3))
  {
    sub_1000131CC(&_mh_execute_header, v4, v5, "Cannot find RelativePathsToOnlyBackupEncrypted under HomeKitDomain.", v6, v7, v8, v9, 0);
  }
}

void sub_10002BAB8()
{
  sub_100011290();
  v3 = sub_100021268();
  if (sub_10001124C(v3))
  {
    sub_1000131CC(&_mh_execute_header, v4, v5, "Cannot find RelativePathsToRestoreOnly under HomeKitDomain.", v6, v7, v8, v9, 0);
  }
}

void sub_10002BB20()
{
  sub_100011290();
  v3 = sub_100021268();
  if (sub_10001124C(v3))
  {
    sub_1000131CC(&_mh_execute_header, v4, v5, "Cannot find RelativePathsNotToBackupInMegaBackup under HomeKitDomain.", v6, v7, v8, v9, 0);
  }
}

void sub_10002BB88()
{
  sub_100011290();
  v3 = sub_100021268();
  if (sub_10001124C(v3))
  {
    sub_1000131CC(&_mh_execute_header, v4, v5, "Cannot find RelativePathsNotToBackupToService under HomeKitDomain.", v6, v7, v8, v9, 0);
  }
}

void sub_10002BBF0()
{
  sub_100011290();
  v3 = sub_100021268();
  if (sub_10001124C(v3))
  {
    sub_1000131CC(&_mh_execute_header, v4, v5, "Cannot find RelativePathsToRemoveOnRestore under HomeKitDomain.", v6, v7, v8, v9, 0);
  }
}

void sub_10002BC58()
{
  sub_10001319C();
  v4 = sub_100021268();
  if (sub_1000131EC(v4))
  {
    sub_1000131AC(&_mh_execute_header, v5, v6, "Backup SafariTabs.db - Cannot find RelativePathsNotToBackupToService under HomeDomain.", v7, v8, v9, v10, 0);
  }
}

void sub_10002BCC4()
{
  sub_10001319C();
  v4 = sub_100021268();
  if (sub_1000131EC(v4))
  {
    sub_1000131AC(&_mh_execute_header, v5, v6, "Backup SafariTabs.db - Cannot find RelativePathsToOnlyBackupEncrypted under HomeDomain.", v7, v8, v9, v10, 0);
  }
}

void sub_10002BD30()
{
  sub_10001319C();
  v4 = sub_100021268();
  if (sub_1000131EC(v4))
  {
    sub_1000131AC(&_mh_execute_header, v5, v6, "Backup SafariTabs.db - Cannot find RelativePathsToRestoreOnly under HomeDomain.", v7, v8, v9, v10, 0);
  }
}

void sub_10002BD9C()
{
  sub_10001319C();
  v4 = sub_100021268();
  if (sub_1000131EC(v4))
  {
    sub_1000131AC(&_mh_execute_header, v5, v6, "Backup SafariTabs.db - Cannot find RelativePathsToBackupAndRestore under HomeDomain.", v7, v8, v9, v10, 0);
  }
}

void sub_10002BE08()
{
  sub_10001319C();
  v4 = sub_100021268();
  if (sub_1000131EC(v4))
  {
    sub_1000131AC(&_mh_execute_header, v5, v6, "Backup DoNotDisturb DB - Cannot find RelativePathsToOnlyBackupEncrypted under HomeDomain.", v7, v8, v9, v10, 0);
  }
}

void sub_10002BE74()
{
  sub_10001319C();
  v4 = sub_100021268();
  if (sub_1000131EC(v4))
  {
    sub_1000131AC(&_mh_execute_header, v5, v6, "Backup DoNotDisturb DB - Cannot find RelativePathsToRestoreOnly under HomeDomain.", v7, v8, v9, v10, 0);
  }
}

void sub_10002BEE0()
{
  sub_10001319C();
  v4 = sub_100021268();
  if (sub_1000131EC(v4))
  {
    sub_1000131AC(&_mh_execute_header, v5, v6, "Backup DoNotDisturb DB - Cannot find RelativePathsToBackupAndRestore under HomeDomain.", v7, v8, v9, v10, 0);
  }
}

void sub_10002BF4C()
{
  sub_100011290();
  v3 = sub_100021268();
  if (sub_10001124C(v3))
  {
    sub_1000131CC(&_mh_execute_header, v4, v5, "Cannot find RelativePathsToBackupAndRestore under HomeDomain.", v6, v7, v8, v9, 0);
  }
}

void sub_10002BFB4()
{
  sub_100011290();
  v3 = sub_100021268();
  if (sub_10001124C(v3))
  {
    sub_1000131CC(&_mh_execute_header, v4, v5, "Cannot find RelativePathsNotToBackup under HomeDomain.", v6, v7, v8, v9, 0);
  }
}

void sub_10002C01C()
{
  sub_10001319C();
  v4 = sub_100021268();
  if (sub_1000131EC(v4))
  {
    sub_1000131AC(&_mh_execute_header, v5, v6, "Cannot find RelativePathsToBackupAndRestore under MediaDomain.", v7, v8, v9, v10, 0);
  }
}

void sub_10002C088()
{
  sub_10001319C();
  v4 = sub_100021268();
  if (sub_1000131EC(v4))
  {
    sub_1000131AC(&_mh_execute_header, v5, v6, "Cannot find RelativePathsNotToBackup under RootDomain.", v7, v8, v9, v10, 0);
  }
}

void sub_10002C0F4()
{
  sub_10001319C();
  v4 = sub_100021268();
  if (sub_1000131EC(v4))
  {
    sub_1000131AC(&_mh_execute_header, v5, v6, "Cannot find RelativePathsNotToRestore under RootDomain.", v7, v8, v9, v10, 0);
  }
}

void sub_10002C160()
{
  sub_10001319C();
  v4 = sub_100021268();
  if (sub_1000131EC(v4))
  {
    sub_1000131AC(&_mh_execute_header, v5, v6, "Cannot find RelativePathsNotToRemoveIfNotRestored under RootDomain.", v7, v8, v9, v10, 0);
  }
}

void sub_10002C1CC()
{
  sub_10001319C();
  v4 = sub_100021268();
  if (sub_1000131EC(v4))
  {
    sub_1000131AC(&_mh_execute_header, v5, v6, "Cannot find RelativePathsToRemoveOnRestore under RootDomain.", v7, v8, v9, v10, 0);
  }
}

void sub_10002C238()
{
  sub_10001319C();
  v4 = sub_100021268();
  if (sub_1000131EC(v4))
  {
    sub_1000131AC(&_mh_execute_header, v5, v6, "Cannot find RelativePathsNotToBackup under SystemPreferencesDomain.", v7, v8, v9, v10, 0);
  }
}

void sub_10002C2A4()
{
  sub_10001319C();
  v4 = sub_100021268();
  if (sub_1000131EC(v4))
  {
    sub_1000131AC(&_mh_execute_header, v5, v6, "Cannot find KeyboardDomain, or in wrong format.", v7, v8, v9, v10, 0);
  }
}

void sub_10002C310()
{
  sub_10001319C();
  v4 = sub_100021268();
  if (sub_1000131EC(v4))
  {
    sub_1000131AC(&_mh_execute_header, v5, v6, "Cannot find SystemPreferencesDomain, or in wrong format.", v7, v8, v9, v10, 0);
  }
}

void sub_10002C37C()
{
  sub_10001319C();
  v4 = sub_100021268();
  if (sub_1000131EC(v4))
  {
    sub_1000131AC(&_mh_execute_header, v5, v6, "Cannot find RootDomain, or in wrong format.", v7, v8, v9, v10, 0);
  }
}

void sub_10002C3E8()
{
  sub_10001319C();
  v4 = sub_100021268();
  if (sub_1000131EC(v4))
  {
    sub_1000131AC(&_mh_execute_header, v5, v6, "Cannot find MediaDomain, or in wrong format.", v7, v8, v9, v10, 0);
  }
}

void sub_10002C454()
{
  sub_10001319C();
  v4 = sub_100021268();
  if (sub_1000131EC(v4))
  {
    sub_1000131AC(&_mh_execute_header, v5, v6, "Cannot find KeychainDomain, or in wrong format.", v7, v8, v9, v10, 0);
  }
}

void sub_10002C4C0()
{
  sub_100011290();
  v3 = sub_100021268();
  if (sub_10001124C(v3))
  {
    sub_1000131CC(&_mh_execute_header, v4, v5, "Cannot find HomeDomain, or in wrong format.", v6, v7, v8, v9, 0);
  }
}

void sub_10002C528(void *a1)
{
  v2 = sub_100021268();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Cannot find CameraRollDomain, or in wrong format.", v3, 2u);
  }
}

void sub_10002C59C()
{
  v0 = sub_100021268();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Cannot find system domains.", v1, 2u);
  }
}

void sub_10002C604(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Cannot load Domains.plist: %{public}@.", &v2, 0xCu);
}

void sub_10002D5DC()
{
  v0 = *__error();
  sub_100013EF0();
  sub_100002B94();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
}

void sub_10002D664()
{
  v0 = *__error();
  sub_100013EF0();
  sub_100002B94();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
}

void sub_10002D6EC()
{
  v0 = *__error();
  sub_100013EF0();
  sub_100002B94();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
}

void sub_10002D774()
{
  v1 = sub_100021268();
  if (sub_100005E88(v1))
  {
    v2 = *__error();
    sub_100013EF0();
    sub_100002B94();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
  }
}

void sub_10002D810(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v1 = *__error();
    sub_100013EF0();
    sub_100002B94();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
  }
}

void sub_10002D8A8(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v1 = *__error();
    sub_100013EF0();
    sub_100002B94();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
  }
}

void sub_10002D954()
{
  v1 = sub_100021268();
  if (sub_100005E88(v1))
  {
    v7 = *__error();
    sub_100002B94();
    _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  }
}

uint64_t sub_10002D9F0(int a1, io_object_t a2)
{
  v4 = sub_100021268();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 67109120;
    v7[1] = a1;
    sub_100013F18(&_mh_execute_header, v4, v5, "Failed to create IO iterator with error - %d", v7);
  }

  return IOObjectRelease(a2);
}

BOOL sub_10002DAA4(io_object_t a1, int a2)
{
  v4 = sub_100021268();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100013F48();
    _os_log_error_impl(v6, v7, OS_LOG_TYPE_ERROR, v8, v9, 2u);
  }

  IOObjectRelease(a1);
  return a2 == 0;
}

void sub_10002DB2C()
{
  v1 = sub_100021268();
  if (sub_100005E88(v1))
  {
    sub_100002B94();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_10002DB88()
{
  v1 = sub_100021268();
  if (sub_100005E88(v1))
  {
    sub_100002B94();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_10002DBE4(int a1, NSObject *a2, uint64_t a3)
{
  v3[0] = 67109120;
  v3[1] = a1;
  sub_100013F18(&_mh_execute_header, a2, a3, "Failed to get space info. error - %d", v3);
}

void sub_10002DC54(void *a1, unint64_t a2, os_log_t log)
{
  v3 = *a1 >> 20;
  v4 = 134218240;
  v5 = v3;
  v6 = 2048;
  v7 = a2 >> 20;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Free space left: %llu MB but needed: %lld MB", &v4, 0x16u);
}

void sub_10002DCE8()
{
  v1 = sub_100021268();
  if (sub_100005E88(v1))
  {
    sub_100002B94();
    _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  }
}

void sub_10002DDD8(os_log_t log)
{
  v1 = 136315138;
  v2 = "[MSDManifest addFilesUsingSourceManifest:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Root path must be the same between source and device manifest.", &v1, 0xCu);
}

void sub_10002DEA0(void *a1, NSObject *a2)
{
  v3 = [a1 path];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Couldn't run handler against %{public}@", &v4, 0xCu);
}

void sub_10002DF38(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 path];
  *a1 = 138543362;
  *a3 = v7;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "Couldn't get meta data for %{public}@", a1, 0xCu);
}

void sub_10002DFB0(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 absoluteString];
  v6 = [v5 stringByRemovingPercentEncoding];
  v7 = 138543618;
  v8 = v6;
  v9 = 2114;
  v10 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Cannot read data from %{public}@ - %{public}@.", &v7, 0x16u);
}

void sub_10002E070(void *a1)
{
  v2 = sub_100021268();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [a1 absoluteString];
    v4 = [v3 stringByRemovingPercentEncoding];
    v5 = 138543362;
    v6 = v4;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Cannot read file %{public}@", &v5, 0xCu);
  }
}

void sub_10002E398(uint64_t a1, NSObject *a2)
{
  v2 = *(*a1 + 40);
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Converted from xpc to NSDictionary: %{public}@", &v3, 0xCu);
}

void sub_10002E418(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "The value for key %{public}@ has a type that is not supported yet", &v2, 0xCu);
}

void sub_10002E490()
{
  v0 = objc_opt_class();
  sub_100002B94();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10002E534(void *a1)
{
  [a1 objCType];
  sub_100002B94();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10002E5BC(uint64_t a1, void *a2)
{
  v4 = sub_100021268();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5[0] = 136315394;
    sub_100005E34();
    v6 = a1;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s: format not correct: %{public}@", v5, 0x16u);
  }
}

void sub_10002E680(void *a1)
{
  v2 = sub_100021268();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [a1 localizedDescription];
    [a1 code];
    sub_100016F1C();
    sub_100002B94();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
  }
}

void sub_10002E744()
{
  v1[0] = 136315394;
  sub_100005E34();
  v2 = 0;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s: Cannot convert %{public}@ to dictionary", v1, 0x16u);
}

void sub_10002E7CC()
{
  v2[0] = 136315394;
  sub_100005E34();
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "%s: Not a valid JSON object: %{public}@", v2, 0x16u);
}

void sub_10002E850(void *a1)
{
  v2 = sub_100021268();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [a1 localizedDescription];
    [a1 code];
    sub_100016F1C();
    sub_100002B94();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
  }
}

void sub_10002EA88()
{
  v2[0] = 136315394;
  sub_100005E34();
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "%s: Failed metadata attribute restore for %{public}@!", v2, 0x16u);
}

void sub_10002EB0C(void *a1, unsigned int *a2)
{
  v4 = sub_100021268();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [a1 deviceUID];
    v6 = *a2;
    v7 = *__error();
    v8 = __error();
    strerror(*v8);
    v11[0] = 136316162;
    sub_100005E34();
    sub_10001841C();
    v12 = v9;
    v13 = v7;
    v14 = 2082;
    v15 = v10;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s - Failed to get group entry for UID:  %{public}@ with group ID:  %d - errno:  %d - %{public}s", v11, 0x2Cu);
  }
}

void sub_10002EC0C(void *a1)
{
  v2 = sub_100021268();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [a1 deviceUID];
    v4 = *__error();
    v5 = __error();
    strerror(*v5);
    v7[0] = 136315906;
    sub_100005E34();
    sub_10001841C();
    v8 = 2082;
    v9 = v6;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s - Failed to get password entry for UID:  %{public}@ - errno:  %d - %{public}s", v7, 0x26u);
  }
}

void sub_10002ECFC(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_100021268();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 136315394;
    sub_100005E34();
    v8 = a1;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s - Failed to update file attributes for file:  %{public}@", v7, 0x16u);
  }

  objc_autoreleasePoolPop(a2);
}

void sub_10002EDCC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "File %{public}@ belong to UID: %{public}@; file metadata does not need to be updated", &v3, 0x16u);
}

void sub_10002F0CC()
{
  v0 = sub_100021268();
  if (sub_100011234(v0))
  {
    sub_100005E34();
    sub_1000111B8();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  }

  sub_1000111FC();
}

void sub_10002F174()
{
  v0 = sub_100021268();
  if (sub_100011234(v0))
  {
    sub_100005E34();
    sub_1000111B8();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  }

  sub_1000111FC();
}

void sub_10002F21C()
{
  sub_10001CD8C();
  v1 = [v0 localizedDescription];
  sub_100005E34();
  sub_10001CDCC();
  sub_100002B94();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10002F2C4()
{
  sub_10001CD8C();
  v1 = [v0 localizedDescription];
  sub_100005E34();
  sub_10001CDCC();
  sub_100002B94();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10002F36C()
{
  sub_10001CD8C();
  v1 = [v0 localizedDescription];
  sub_100005E34();
  sub_10001CDCC();
  sub_100002B94();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10002F494()
{
  v3 = 136315650;
  v4 = "[MSDHOperations createDeviceManifestForComponent:ofType:withRootPath:userHomePath:andSavePath:]";
  sub_10001CD7C();
  v5 = v0;
  v6 = v1;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s: No manifest data found for component: %{public}@ of type: %{public}@", &v3, 0x20u);
}

void sub_10002F5A4(void *a1)
{
  v3 = sub_100021268();
  if (sub_100005E88(v3))
  {
    v4 = [a1 localizedDescription];
    sub_1000111F0();
    sub_100002B94();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
  }
}

void sub_10002F64C(uint64_t a1, void *a2)
{
  v4 = sub_100021268();
  if (sub_100005E88(v4))
  {
    v5 = [a2 localizedDescription];
    sub_10001CD64();
    sub_100002B94();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
  }
}

void sub_10002F700()
{
  sub_1000111F0();
  sub_100006BF0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002F770()
{
  sub_10001CD98();
  sub_100006BF0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002F7AC()
{
  v1 = sub_100021268();
  if (sub_100005E88(v1))
  {
    sub_100002B94();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_10002F808()
{
  v1 = sub_100021268();
  if (sub_100005E88(v1))
  {
    sub_100002B94();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_10002F864()
{
  v1 = sub_100021268();
  if (sub_100005E88(v1))
  {
    sub_100002B94();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void sub_10002F8C0()
{
  sub_10001CD98();
  sub_100006BF0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002F8FC()
{
  sub_10001CD98();
  sub_100006BF0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002F938(void *a1)
{
  v3 = sub_100021268();
  if (sub_100005E88(v3))
  {
    v4 = [a1 localizedDescription];
    sub_10001CD7C();
    sub_100002B94();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
  }
}

void sub_10002F9F0(void *a1)
{
  v3 = sub_100021268();
  if (sub_100005E88(v3))
  {
    v4 = [a1 localizedDescription];
    sub_10001CD7C();
    sub_100002B94();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
  }
}

void sub_10002FAA8()
{
  sub_1000111F0();
  sub_100006BF0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002FB18()
{
  v1 = sub_100021268();
  if (sub_100005E88(v1))
  {
    sub_100002B94();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_10002FBB0()
{
  sub_10001CD98();
  sub_100006BF0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002FBEC(uint64_t a1, void *a2)
{
  v4 = sub_100021268();
  if (sub_100005E88(v4))
  {
    v5 = [a2 localizedDescription];
    sub_10001CD64();
    sub_100002B94();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
  }
}

void sub_10002FCA0()
{
  sub_1000111F0();
  sub_100006BF0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002FD10()
{
  sub_10001CD8C();
  v2 = [sub_10001CDA4(v0 v1)];
  sub_10001CD64();
  sub_100002B94();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10002FDA4()
{
  sub_10001CD8C();
  v2 = [sub_10001CDA4(v0 v1)];
  sub_10001CD64();
  sub_100002B94();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10002FE38()
{
  sub_10001CD8C();
  v2 = [sub_10001CDA4(v0 v1)];
  sub_10001CD64();
  sub_100002B94();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10002FECC()
{
  sub_1000111F0();
  sub_100006BF0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002FF3C()
{
  sub_10001CD8C();
  v2 = [sub_10001CDA4(v0 v1)];
  sub_10001CD64();
  sub_100002B94();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10002FFD0()
{
  v5 = *__error();
  sub_100002B94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100030058()
{
  sub_10001CD8C();
  v2 = [sub_10001CDA4(v0 v1)];
  sub_10001CD64();
  sub_100002B94();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000300EC()
{
  v5 = *__error();
  sub_100002B94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100030174()
{
  sub_10001CD8C();
  v2 = [sub_10001CDA4(v0 v1)];
  sub_10001CD64();
  sub_100002B94();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100030208()
{
  sub_10001CD8C();
  v2 = [sub_10001CDA4(v0 v1)];
  sub_10001CD64();
  sub_100002B94();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100030310()
{
  sub_1000111F0();
  v3 = 2048;
  v4 = v0;
  sub_100005E70(&_mh_execute_header, v1, v1, "Couldn't load manifest dict for backup range location = %lu; length = %lu", v2);
}

void sub_10003040C()
{
  sub_10001CD98();
  sub_100006BF0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100030448()
{
  sub_1000111F0();
  v3 = 2114;
  v4 = v0;
  sub_100005E70(&_mh_execute_header, v1, v1, "Couldn't load manifest dict for %{public}@/%{public}@", v2);
}

void sub_100030544()
{
  sub_10001CD98();
  sub_100006BF0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100030580()
{
  sub_10001CD98();
  sub_100006BF0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000305BC()
{
  sub_10001CD98();
  sub_100006BF0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000305F8()
{
  sub_10001CD98();
  sub_100006BF0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100030634(void *a1)
{
  v3 = sub_100021268();
  if (sub_100011234(v3))
  {
    sub_1000111B8();
    _os_log_error_impl(v4, v5, v6, v7, v8, 2u);
  }
}

void sub_100030698(void *a1)
{
  v3 = sub_100021268();
  if (sub_100011234(v3))
  {
    sub_1000111B8();
    _os_log_error_impl(v4, v5, v6, v7, v8, 2u);
  }
}

void sub_1000306FC(void *a1)
{
  v3 = sub_100021268();
  if (sub_100011234(v3))
  {
    sub_1000111B8();
    _os_log_error_impl(v4, v5, v6, v7, v8, 2u);
  }
}

void sub_100030760(void *a1, void *a2)
{
  v4 = sub_100021268();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to create zip file.", v5, 2u);
  }
}

void sub_1000307E4(void *a1)
{
  v3 = sub_100021268();
  if (sub_100011234(v3))
  {
    [a1 longLongValue];
    sub_1000111F0();
    sub_1000111B8();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
  }
}

void sub_100030884(void *a1)
{
  v3 = sub_100021268();
  if (sub_100011234(v3))
  {
    sub_1000111B8();
    _os_log_error_impl(v4, v5, v6, v7, v8, 2u);
  }
}

void sub_1000308E8()
{
  sub_10001CD98();
  sub_100006BF0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100030924()
{
  sub_1000111F0();
  sub_100006BF0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100030994(void *a1, void *a2, void *a3)
{
  v6 = sub_100021268();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [a2 localizedDescription];
    sub_10001CD64();
    sub_100005E70(&_mh_execute_header, v6, v8, "Failed to create parent folder %{public}@ with error - %{public}@", v9);
  }
}

void sub_100030B94()
{
  sub_1000111F0();
  sub_100006BF0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

uint64_t sub_100030C04(uint64_t a1, uint64_t *a2)
{
  v4 = __error();
  result = [NSString stringWithFormat:@"Failed to copy source data  %@ to persistent storage - Error:  %s", a1, strerror(*v4)];
  *a2 = result;
  return result;
}

uint64_t sub_100030C68(uint64_t *a1)
{
  v2 = __error();
  result = [NSString stringWithFormat:@"Failed to set xattr for destination folder in persistent storage - Error:  %s", strerror(*v2)];
  *a1 = result;
  return result;
}

void sub_100030CC0()
{
  v1 = sub_100021268();
  if (sub_100005E88(v1))
  {
    sub_100002B94();
    _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  }
}

uint64_t sub_100030D5C()
{
  dlerror();
  v0 = abort_report_np();
  return sub_100030D80(v0);
}

void sub_100030DE8()
{
  v0 = sub_100021268();
  if (sub_100011234(v0))
  {
    v1 = SCError();
    SCErrorString(v1);
    sub_1000111F0();
    sub_1000111B8();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  sub_1000111FC();
}

void sub_100030E80()
{
  v0 = sub_100021268();
  if (sub_100011234(v0))
  {
    v1 = SCError();
    SCErrorString(v1);
    sub_1000111F0();
    sub_1000111B8();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  sub_1000111FC();
}

void sub_100030F18()
{
  v0 = sub_100021268();
  if (sub_100011234(v0))
  {
    v1 = SCError();
    SCErrorString(v1);
    sub_1000111F0();
    sub_1000111B8();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  sub_1000111FC();
}

void sub_100030FB0(NSObject *a1, void *a2)
{
  if (sub_100011234(a1))
  {
    sub_1000111B8();
    _os_log_error_impl(v4, v5, v6, v7, v8, 2u);
  }

  *a2 = v2;
}

void sub_100031008()
{
  v0 = sub_100021268();
  if (sub_100011234(v0))
  {
    v1 = SCError();
    SCErrorString(v1);
    sub_1000111F0();
    sub_1000111B8();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  sub_1000111FC();
}

void sub_1000310A0()
{
  v1 = sub_100021268();
  if (sub_100005E88(v1))
  {
    v2 = SCError();
    SCErrorString(v2);
    sub_1000111F0();
    sub_100002B94();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void sub_100031138()
{
  v1 = sub_100021268();
  if (sub_100005E88(v1))
  {
    sub_100002B94();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_10003134C(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_1000111F0();
  sub_10001E348(&_mh_execute_header, v2, v3, "Failed to get file last modified date: %{public}@", v4, v5, v6, v7, v8);
}

void sub_1000313D0(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_1000111F0();
  sub_10001E348(&_mh_execute_header, v2, v3, "Failed to locate xctspawn tool: %{public}@", v4, v5, v6, v7, v8);
}

void sub_100031454(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 67240450;
  v3[1] = a2;
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to run xctspawn: %{public, errno}d stdout: %{public}@", v3, 0x12u);
}

void sub_1000314DC(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_1000111F0();
  sub_10001E348(&_mh_execute_header, v2, v3, "Failed to deserialize JSON data: %{public}@", v4, v5, v6, v7, v8);
}

void sub_100031560(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_1000111F0();
  sub_10001E348(&_mh_execute_header, v2, v3, "Failed to load JSON data: %{public}@", v4, v5, v6, v7, v8);
}

void sub_1000315E4(int a1, NSObject *a2)
{
  v2[0] = 67240192;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to run xctspawn: %{public, errno}d", v2, 8u);
}

void sub_1000316E4()
{
  v0 = sub_100021268();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v1 = __error();
    strerror(*v1);
    sub_1000111F0();
    sub_10001E348(&_mh_execute_header, v2, v3, "getifaddrs failed - %s", v4, v5, v6, v7, v8);
  }
}

void sub_100031780(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Missing interface name", buf, 2u);
}

void sub_1000317C0()
{
  v0 = sub_100021268();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v1 = __error();
    strerror(*v1);
    sub_1000111F0();
    sub_10001E348(&_mh_execute_header, v2, v3, "broadcast addr - inet_ntop failed - %s", v4, v5, v6, v7, v8);
  }
}

void sub_10003185C(NSObject **a1)
{
  v2 = sub_100021268();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = __error();
    strerror(*v3);
    sub_1000111F0();
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "net mask - inet_ntop failed - %s", v4, 0xCu);
  }

  *a1 = v2;
}

void sub_10003190C()
{
  v0 = sub_100021268();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v1 = __error();
    strerror(*v1);
    sub_1000111F0();
    sub_10001E348(&_mh_execute_header, v2, v3, "ip address - inet_ntop failed - %s", v4, v5, v6, v7, v8);
  }
}

void sub_100031B7C()
{
  v5 = *__error();
  sub_100002B94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100031C2C()
{
  v0 = sub_100021268();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_100002B94();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void sub_100031CCC(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  sub_10001CD64();
  sub_100002B94();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100031D68(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  sub_10001CD64();
  sub_100002B94();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100031E04()
{
  v1[0] = 136315394;
  sub_10001F85C();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "%s - file %s is sqlite3", v1, 0x16u);
}

void sub_100031E84()
{
  sub_1000111F0();
  sub_10001F838();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100031F00()
{
  v3[0] = 136315650;
  sub_10001F85C();
  v4 = v0;
  v5 = v1;
  _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s - SQLite3 file %s was copied to %s using SQLite3 libraries", v3, 0x20u);
}

void sub_100031F8C()
{
  v5 = *__error();
  sub_100002B94();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100032024(uint64_t a1, void *a2)
{
  sub_10001F848(a1, a2);
  v7 = [NSString stringWithFormat:@"Could not retrieve file handle for file %@", v6];
  sub_10001F870(v7);
  v8 = *v3;
  *v2 = *v3;
  v9 = v8;
}

void sub_100032174(uint64_t a1, void *a2)
{
  sub_10001F848(a1, a2);
  v7 = [NSString stringWithFormat:@"Failed to copy db with status %d", v6];
  sub_10001F870(v7);
  v8 = *v3;
  *v2 = *v3;
  v9 = v8;
}

void sub_10003224C(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to close the SQLite backup connection: %d", v2, 8u);
}

void sub_1000322C4()
{
  sub_10001F820();
  sub_10001F838();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100032334()
{
  sub_1000111F0();
  sub_10001F838();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100032424()
{
  v0 = sub_100021268();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Cannot generate custom domains.", v1, 2u);
  }
}

void sub_1000324D4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Cannot load domains.plist from %{public}@.", &v2, 0xCu);
}

void sub_10003254C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Manifest file path %{public}@ is not same as real path: %{public}@", &v3, 0x16u);
}

void sub_1000325D4(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[WhitelistChecker handleSystemContainerFiles:withMetadata:]";
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s:Container check failed for %{public}@", &v2, 0x16u);
}

void sub_100032A14()
{
  v0 = sub_100021268();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_100002B94();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  }
}

void sub_100032AC8(const void *a1)
{
  v2 = sub_100021268();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = "[MSDHMessageResponder hasEntitlementMobileStoreDemod:]";
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s: No data received.", &v3, 0xCu);
  }

  CFRelease(a1);
}

void sub_100032B80()
{
  v0 = sub_100021268();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_100002B94();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void sub_100032C38()
{
  v0 = sub_100021268();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_100002B94();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void sub_100032ED8(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[MSDHMessageResponder cloneFile:]";
  v4 = 2114;
  v5 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Entering %s with parameter: %{public}@", &v2, 0x16u);
}

void sub_100032F64(uint64_t a1, int a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 1026;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "INFO - computerName:  %{public}@ - encoding:  0x%{public}x", &v3, 0x12u);
}