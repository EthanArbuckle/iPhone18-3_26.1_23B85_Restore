void sub_10002B538(const __CFData *a1)
{
  if (a1)
  {
    if (CFDataGetLength(a1) >= 1)
    {
      v5[0] = CFDataGetBytePtr(a1);
      v5[1] = CFDataGetLength(a1);
      memset(v4, 170, sizeof(v4));
      if (!DERDecodeItem(v5, v4) && SecCertificateParseGeneralNameContentProperty() == -26275)
      {
        v2 = sub_1000027AC("policy");
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
        {
          *v3 = 0;
          _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "can't parse general name or not a type we support", v3, 2u);
        }
      }
    }
  }
}

uint64_t sub_10002B620(uint64_t a1, int a2, uint64_t a3)
{
  if (!a1)
  {
    return 4294941021;
  }

  if (*a1 != a2)
  {
    return 4294941021;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    return 4294941021;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    return 4294941021;
  }

  *v4 = 1;
  result = 4294941021;
  if (a2 <= 3)
  {
    if (a2 == 1)
    {
      v42 = *(v5 + 8);
      if (v42 > 0x7FFFFFFFFFFFFFFELL || *(a3 + 8) > 0x7FFFFFFFFFFFFFFEuLL)
      {
        goto LABEL_13;
      }

      v10 = CFStringCreateWithBytes(kCFAllocatorDefault, *v5, v42, 0x8000100u, 0);
      v43 = CFStringCreateWithBytes(kCFAllocatorDefault, *a3, *(a3 + 8), 0x8000100u, 0);
      v12 = v43;
      if (v10 && v43)
      {
        if (CFStringFind(v43, @"@", 0).location != -1)
        {
          v44 = CFStringCompare(v10, v12, 1uLL);
LABEL_78:
          v8 = v44 == kCFCompareEqualTo;
          goto LABEL_79;
        }

        location = CFStringFind(v10, @"@", 0).location;
        if (location != -1)
        {
          v50 = location;
          Length = CFStringGetLength(v10);
          if (CFStringGetCharacterAtIndex(v12, 0) != 46)
          {
            v48.location = v50 + 1;
            v48.length = Length + ~v50;
            v46 = v10;
            v47 = v12;
            goto LABEL_77;
          }

          if (CFStringGetCharacterAtIndex(v10, v50 + 1) != 46 && CFStringHasSuffix(v10, v12))
          {
            v8 = 1;
            goto LABEL_79;
          }
        }

        goto LABEL_24;
      }
    }

    else
    {
      if (a2 != 2)
      {
        return result;
      }

      v9 = *(v5 + 8);
      if (v9 > 0x7FFFFFFFFFFFFFFELL || *(a3 + 8) > 0x7FFFFFFFFFFFFFFEuLL)
      {
        goto LABEL_13;
      }

      v10 = CFStringCreateWithBytes(kCFAllocatorDefault, *v5, v9, 0x8000100u, 0);
      v11 = CFStringCreateWithBytes(kCFAllocatorDefault, *a3, *(a3 + 8), 0x8000100u, 0);
      v12 = v11;
      if (v10 && v11)
      {
        v13 = CFStringGetLength(v11);
        v14 = CFStringGetLength(v10);
        v15 = v14 - v13;
        if (v14 >= v13)
        {
          if (v14 == v13 || (v45 = v14, CFStringGetCharacterAtIndex(v12, 0) == 46) || CFStringGetCharacterAtIndex(v10, v45 + ~v13) == 46)
          {
            v46 = v10;
            v47 = v12;
            v48.location = v15;
            v48.length = v13;
LABEL_77:
            v44 = CFStringCompareWithOptions(v46, v47, v48, 1uLL);
            goto LABEL_78;
          }
        }

LABEL_24:
        v8 = 0;
        goto LABEL_79;
      }
    }

    v8 = 0;
    if (!v10)
    {
      goto LABEL_80;
    }

LABEL_79:
    CFRelease(v10);
    goto LABEL_80;
  }

  switch(a2)
  {
    case 7:
      v16 = *(a3 + 8);
      if ((v16 == 32 || v16 == 8) && ((v17 = *(v5 + 8), v17 != 16) ? (v18 = v17 == 4) : (v18 = 1), v18 ? (v19 = v16 == 2 * v17) : (v19 = 0), v19))
      {
        v20 = *a3;
        v21 = *v5;
        v22 = v17 - 1;
        do
        {
          v23 = *v21++;
          v24 = (v23 ^ *v20) & v20[v17];
          v8 = v24 == 0;
          v26 = v22-- != 0;
          if (v24)
          {
            break;
          }

          ++v20;
        }

        while (v26);
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_83;
    case 6:
      v27 = *(v5 + 8);
      if (v27 > 0x7FFFFFFFFFFFFFFELL || *(a3 + 8) > 0x7FFFFFFFFFFFFFFEuLL)
      {
        goto LABEL_13;
      }

      v28 = CFStringCreateWithBytes(kCFAllocatorDefault, *v5, v27, 0x8000100u, 0);
      v29 = CFStringCreateWithBytes(kCFAllocatorDefault, *a3, *(a3 + 8), 0x8000100u, 0);
      v12 = v29;
      if (v28 && v29)
      {
        v30 = CFStringFind(v28, @"://", 0);
        if (v30.location != -1)
        {
          v31 = CFStringGetLength(v28) - (v30.location + v30.length);
          v32 = CFCharacterSetCreateWithCharactersInString(kCFAllocatorDefault, @":/");
          __s1 = xmmword_100068A30;
          v54.location = v30.location + v30.length;
          v54.length = v31;
          if (CFStringFindCharacterFromSet(v28, v32, v54, 0, &__s1))
          {
            v33 = CFStringGetLength(v28);
            v31 = v31 - v33 + __s1.location;
          }

          v55.location = v30.location + v30.length;
          v55.length = v31;
          v34 = CFStringCreateWithSubstring(kCFAllocatorDefault, v28, v55);
          if (CFStringGetCharacterAtIndex(v34, 0) == 46 || (v35 = CFStringGetLength(v34), v36 = CFStringGetLength(v12), v37 = v35 < v36, v38 = v35 - v36, v37))
          {
            v41 = 0;
            if (v32)
            {
LABEL_55:
              CFRelease(v32);
            }
          }

          else
          {
            v39 = v36;
            if (CFStringGetCharacterAtIndex(v12, 0) == 46)
            {
              v40.location = v38;
            }

            else
            {
              v40.location = 0;
            }

            v40.length = v39;
            v41 = CFStringCompareWithOptions(v34, v12, v40, 1uLL) == kCFCompareEqualTo;
            if (v32)
            {
              goto LABEL_55;
            }
          }

          if (v34)
          {
            CFRelease(v34);
          }

          goto LABEL_58;
        }

        v41 = 0;
LABEL_58:
        CFRelease(v28);
        v8 = v41;
        goto LABEL_80;
      }

      v41 = 0;
      v8 = 0;
      if (v28)
      {
        goto LABEL_58;
      }

LABEL_80:
      if (v12)
      {
        CFRelease(v12);
      }

      goto LABEL_82;
    case 4:
      memset(&__s1, 170, 24);
      if (!DERDecodeItem(v5, &__s1))
      {
        memset(v52, 170, sizeof(v52));
        if (!DERDecodeItem(a3, v52) && *(v5 + 8) > *(a3 + 8) && !memcmp(__s1.length, v52[1], v52[2]))
        {
          v8 = 1;
          goto LABEL_82;
        }
      }

LABEL_13:
      v8 = 0;
LABEL_82:
      v4 = *(a1 + 16);
LABEL_83:
      result = 0;
      v4[1] |= v8;
      break;
  }

  return result;
}

void sub_10002BB84(const __CFData *a1, const __CFArray **a2)
{
  if (a1)
  {
    v3 = *a2;
    v4 = a2[1];
    if ((CFDataGetLength(a1) & 0x8000000000000000) == 0)
    {
      if (v3)
      {
        v19[0] = CFDataGetBytePtr(a1);
        v19[1] = CFDataGetLength(a1);
        memset(v18, 170, sizeof(v18));
        if (!DERDecodeItem(v19, v18))
        {
          v5 = sub_10002BDB4(v18[0]);
          v6 = v5;
          if (v5 != 2 && v5 != 4)
          {
            CFArrayAppendValue(v4, a1);
          }

          Count = CFArrayGetCount(v3);
          v17 = 0;
          v14 = -1431655766;
          v15 = &v18[1];
          v13 = v6;
          v16 = &v17;
          if (Count >= 1)
          {
            v8 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v3, v8);
              if ((CFDataGetLength(ValueAtIndex) & 0x8000000000000000) == 0)
              {
                BytePtr = 0xAAAAAAAAAAAAAAAALL;
                Length = 0xAAAAAAAAAAAAAAAALL;
                BytePtr = CFDataGetBytePtr(ValueAtIndex);
                Length = CFDataGetLength(ValueAtIndex);
                memset(v10, 170, sizeof(v10));
                if (!DERDecodeItem(&BytePtr, v10))
                {
                  if (!SecCertificateParseGeneralNameContentProperty() && v17 == 1 && HIBYTE(v17) == 1)
                  {
                    goto LABEL_19;
                  }

                  sub_10002BDB4(v10[0]);
                  SecCertificateParseGeneralNameContentProperty();
                }
              }

              if (Count == ++v8)
              {
                goto LABEL_20;
              }
            }
          }

          v8 = 0;
LABEL_19:
          if (v8 == Count)
          {
LABEL_20:
            CFArrayAppendValue(v4, a1);
          }

          else if (v17 == 1 && HIBYTE(v17) == 1)
          {
            CFArraySetValueAtIndex(v3, v8, a1);
          }
        }
      }
    }
  }
}

uint64_t sub_10002BDB4(int64_t a1)
{
  if (a1 <= 0x8000000000000007)
  {
    if (a1 > 0x8000000000000005)
    {
      if (a1 != 0x8000000000000006)
      {
        return 7;
      }

      return 6;
    }

    if (a1 == 0x8000000000000002)
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    if (a1 == 0x8000000000000001)
    {
      return 1;
    }

    else
    {
      return v2;
    }
  }

  else if (a1 <= 0xA000000000000003)
  {
    if (a1 == 0xA000000000000003)
    {
      v3 = 3;
    }

    else
    {
      v3 = 0;
    }

    if (a1 == 0x8000000000000008)
    {
      return 8;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    switch(a1)
    {
      case 0xA000000000000004:
        return 4;
      case 0xA000000000000005:
        return 5;
      case 0xA000000000000006:
        return 6;
      default:
        return 0;
    }
  }
}

uint64_t sub_10002BEA0(const __CFArray *a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 1;
  context[0] = _NSConcreteStackBlock;
  context[1] = 0x40000000;
  context[2] = sub_10002BF6C;
  context[3] = &unk_100082650;
  context[4] = &v5;
  v9.length = CFArrayGetCount(a1);
  v9.location = 0;
  CFArrayApplyFunction(a1, v9, sub_10002C010, context);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

CFIndex sub_10002BF6C(CFIndex result, CFDataRef theData)
{
  v2 = result;
  if (!theData || (result = CFDataGetLength(theData), result < 0) || (v5[0] = CFDataGetBytePtr(theData), v5[1] = CFDataGetLength(theData), memset(v4, 170, sizeof(v4)), result = DERDecodeItem(v5, v4), result) || (result = sub_10002BDB4(v4[0]), result > 7) || ((1 << result) & 0xD6) == 0)
  {
    *(*(*(v2 + 32) + 8) + 24) = 0;
  }

  return result;
}

void sub_10002C028(id a1)
{
  v1 = sub_1000027AC("trustd");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "variant does not allow file writes", v2, 2u);
  }
}

void sub_10002C098(id a1)
{
  v1 = sub_1000027AC("trustd");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "variant does not allow MobileAsset", v2, 2u);
  }
}

void sub_10002C108(id a1)
{
  if (!objc_opt_class() || !objc_opt_class() || !objc_opt_class() || !objc_opt_class())
  {
    v1 = sub_1000027AC("OTATrust");
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Weak-linked MobileAsset framework missing.", v2, 2u);
    }

    byte_100092BC0 = 1;
  }
}

void sub_10002C1C4(id a1)
{
  v1 = sub_1000027AC("trustd");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "trustd running in PrivateCloudCompute variant", v2, 2u);
  }
}

void sub_10002C234(id a1)
{
  v1 = MGCopyAnswer();
  if ([v1 containsString:@"Darwin Cloud"])
  {
    byte_100092BD0 = 1;
  }
}

void sub_10002C294(id a1)
{
  qword_100092BE8 = dispatch_workloop_create("com.apple.trustd.evaluation");

  _objc_release_x1();
}

uint64_t sub_10002C2D0()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C368;
  block[3] = &unk_100085428;
  block[4] = &qword_100092C00;
  if (qword_100092BF8 != -1)
  {
    dispatch_once(&qword_100092BF8, block);
  }

  return qword_100092C00;
}

void sub_10002C368(uint64_t a1)
{
  CFRetain(@"/System/Library/Security/Certificates.bundle");
  v2 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, @"/System/Library/Security/Certificates.bundle", kCFURLPOSIXPathStyle, 1u);
  if (v2)
  {
    v3 = v2;
    **(a1 + 32) = CFBundleCreate(kCFAllocatorDefault, v2);
    CFRelease(v3);
  }

  else
  {
    **(a1 + 32) = 0;
  }

  CFRelease(@"/System/Library/Security/Certificates.bundle");
}

id sub_10002C408(void *a1)
{
  v1 = a1;
  +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v1 count]);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002C4CC;
  v2 = v4[3] = &unk_1000827C0;
  v5 = v2;
  [v1 enumerateObjectsUsingBlock:v4];

  return v2;
}

void sub_10002C4CC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [v6 objectForKeyedSubscript:@"log_id"];
      v8 = v7;
      if (!v7 || (v9 = v7, objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v9, (isKindOfClass & 1) == 0))
      {
        v11 = sub_1000027AC("OTATrust");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v14 = 134217984;
          v15 = a3;
          _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "failed to read log_id from trusted CT log array entry at index %lu, computing log_id", &v14, 0xCu);
        }

        v12 = [v6 objectForKeyedSubscript:@"key"];
        if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v13 = sub_1000027AC("SecError");
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = 134217984;
            v15 = a3;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "failed to read key from trusted CT log array entry at index %lu", &v14, 0xCu);
          }

          goto LABEL_16;
        }

        v9 = SecSHA256DigestCreateFromData();
      }

      [*(a1 + 32) setObject:v6 forKey:v9];
      v8 = v9;
LABEL_16:

      goto LABEL_17;
    }
  }

  v6 = sub_1000027AC("SecError");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134217984;
    v15 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "OTATrust: failed to read entry from trusted CT logs array at index %lu", &v14, 0xCu);
  }

LABEL_17:
}

uint64_t sub_10002C734(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

CFStringRef sub_10002C768(uint64_t a1)
{
  sub_1000264DC();
  v2 = *(a1 + 128);
  return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"<SecOTAPKIRef: version %llu/%llu>", v2, *(a1 + 168));
}

void sub_10002C804(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    a1[2] = 0;
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[3] = 0;
    CFRelease(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    a1[4] = 0;
    CFRelease(v4);
  }

  v5 = a1[8];
  if (v5)
  {
    a1[8] = 0;
    CFRelease(v5);
  }

  v6 = a1[9];
  if (v6)
  {
    a1[9] = 0;
    CFRelease(v6);
  }

  v7 = a1[10];
  if (v7)
  {
    a1[10] = 0;
    CFRelease(v7);
  }

  v8 = a1[11];
  if (v8)
  {
    a1[11] = 0;
    CFRelease(v8);
  }

  v9 = a1[14];
  if (v9)
  {
    a1[14] = 0;
    CFRelease(v9);
  }

  v10 = a1[15];
  if (v10)
  {
    a1[15] = 0;
    CFRelease(v10);
  }

  v11 = a1[5];
  if (v11)
  {
    a1[5] = 0;
    CFRelease(v11);
  }

  v12 = a1[6];
  if (v12)
  {
    a1[6] = 0;
    CFRelease(v12);
  }

  v13 = a1[7];
  if (v13)
  {
    a1[7] = 0;
    CFRelease(v13);
  }

  v14 = a1[23];
  if (v14)
  {
    a1[23] = 0;
    CFRelease(v14);
  }

  v15 = a1[24];
  if (v15)
  {
    a1[24] = 0;
    CFRelease(v15);
  }

  v16 = a1[22];
  if (v16)
  {
    a1[22] = 0;
    CFRelease(v16);
  }

  v17 = a1[25];
  if (v17)
  {
    a1[25] = 0;
    CFRelease(v17);
  }

  v18 = a1[12];
  if (v18)
  {
    free(v18);
    a1[12] = 0;
  }

  v19 = a1[17];
  if (v19)
  {
    free(v19);
    a1[17] = 0;
  }

  v20 = a1[28];
  a1[28] = 0;

  v21 = a1[29];
  if (v21)
  {
    a1[29] = 0;

    CFRelease(v21);
  }
}

CFTypeRef sub_10002C978(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = qword_100092C30;
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void sub_10002C9A4(id a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = dispatch_queue_create("com.apple.security.OTAPKIQueue", 0);
  v3 = qword_100092C10;
  qword_100092C10 = v2;

  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(v4, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

  v6 = dispatch_queue_create("com.apple.security.OTAPKIBackgroundQueue", v5);
  v7 = qword_100092C08;
  qword_100092C08 = v6;

  v8 = dispatch_queue_create("com.apple.security.OTAPKIReloadAssetQueue", 0);
  v9 = qword_100092C18;
  qword_100092C18 = v8;

  v10 = qword_100092C10;
  if (!qword_100092C10 || !qword_100092C08 || !qword_100092C18)
  {
    v11 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Failed to create OTAPKI Queues. May crash later.", v12, 2u);
    }

    v10 = qword_100092C10;
  }

  dispatch_sync(v10, &stru_100082800);

  objc_autoreleasePoolPop(v1);
}

void sub_10002CAEC(id a1)
{
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_10002C734;
  *&buf[24] = &unk_100085428;
  *&buf[32] = &qword_100092C28;
  if (qword_100092C20 != -1)
  {
    dispatch_once(&qword_100092C20, buf);
  }

  Instance = _CFRuntimeCreateInstance();
  v2 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0u;
    v3 = (Instance + 16);
    *(Instance + 136) = 0;
    *(Instance + 32) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 80) = 0u;
    *(Instance + 96) = 0;
    *(Instance + 112) = 0;
    *(Instance + 120) = 0;
    *(Instance + 176) = 0u;
    *(Instance + 192) = 0u;
    v4 = *(Instance + 224);
    *(Instance + 224) = 0;

    *(v2 + 232) = 0;
    *(v2 + 240) = 0;
    if (sub_100005E88())
    {
      v148 = 0;
      v5 = [[OTAAutoAssetClient alloc] initWithError:&v148];
      v6 = v148;
      v7 = *(v2 + 224);
      *(v2 + 224) = v5;

      v8 = *(v2 + 224);
      if (v8)
      {
        [v8 registerForAssetChangedNotificationsWithBlock:&stru_100082820];
      }

      else
      {
        v9 = sub_1000027AC("SecError");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v6;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Error initializing OTAAutoAssetClient: %@", buf, 0xCu);
        }
      }
    }

    if (sub_100005E88())
    {
      v10 = sub_10002E29C(@"VersionNumber");
      v11 = sub_10002E2F4(v2, @"VersionNumber");
      v12 = sub_1000027AC("OTATrust");
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (v11 > v10)
      {
        if (v13)
        {
          *buf = 134218240;
          *&buf[4] = v11;
          *&buf[12] = 2048;
          *&buf[14] = v10;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Using asset trust store %llu instead of system trust store %llu", buf, 0x16u);
        }

        *(v2 + 240) = 1;
        v14 = sub_10002E2F4(v2, @"VersionNumber");
LABEL_20:
        *(v2 + 128) = v14;
        v15 = sub_10002E34C(@"Blocked");
        v16 = sub_10002E3B0(v15);
        if (v15)
        {
          CFRelease(v15);
        }

        *v3 = v16;
        v17 = sub_10002E34C(@"GrayListedKeys");
        v18 = sub_10002E3B0(v17);
        if (v17)
        {
          CFRelease(v17);
        }

        *(v2 + 24) = v18;
        *(v2 + 40) = sub_10002E45C(@"TrustedCTLogs.plist");
        *(v2 + 48) = 0;
        *(v2 + 56) = sub_10002E6B0(@"CertificatePinning", @"plist", 0);
        if (sub_10002E7A0())
        {
          v19 = sub_10002E8A0(@"AnalyticsSamplingRates.plist");
          *&valuePtr.st_dev = 0;
          v20 = [NSDictionary dictionaryWithContentsOfURL:v19 error:&valuePtr];
          v21 = *&valuePtr.st_dev;

          if (!v20 || (v22 = v20, objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v22, (isKindOfClass & 1) == 0))
          {
            v24 = sub_1000027AC("SecError");
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v21;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "OTATrust: failed to read sampling rates from asset data: %@", buf, 0xCu);
            }

            *buf = v21;
            sub_10002EB08(4, buf, 0);
            if ((sub_10002EB94() & 1) == 0)
            {
              byte_100092C40 = 1;
            }
          }

          v25 = [v20 objectForKeyedSubscript:@"Events"];
          if (v25)
          {
            v26 = v25;
            objc_opt_class();
            v27 = objc_opt_isKindOfClass();

            if (v27)
            {
              if (!v20)
              {
                goto LABEL_42;
              }

LABEL_38:
              v30 = v20;
              objc_opt_class();
              v31 = objc_opt_isKindOfClass();

              if (v31)
              {
                v32 = [v30 objectForKeyedSubscript:@"Events"];

                if (!v32)
                {
                  v26 = 0;
LABEL_43:

                  *(v2 + 184) = v32;
                  if (sub_10002E7A0())
                  {
                    v34 = sub_10002E8A0(@"AppleCertificateAuthorities.plist");
                    *&valuePtr.st_dev = 0;
                    v35 = [NSArray arrayWithContentsOfURL:v34 error:&valuePtr];
                    v36 = *&valuePtr.st_dev;

                    if (v35)
                    {
                      v37 = v35;
                      objc_opt_class();
                      v38 = objc_opt_isKindOfClass();

                      if (v38)
                      {
                        goto LABEL_231;
                      }
                    }

                    v39 = sub_1000027AC("SecError");
                    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      *&buf[4] = v36;
                      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "OTATrust: failed to read Apple CAs list from asset data: %@", buf, 0xCu);
                    }

                    *buf = v36;
                    sub_10002EB08(4, buf, 0);
                    if ((sub_10002EB94() & 1) == 0)
                    {
                      byte_100092C40 = 1;
                    }

                    if (v35)
                    {
LABEL_231:
                      v35 = v35;
                      objc_opt_class();
                      v40 = objc_opt_isKindOfClass();

                      v41 = v35;
                      if (v40)
                      {
                        goto LABEL_55;
                      }
                    }
                  }

                  else
                  {
                    v36 = 0;
                    v35 = 0;
                  }

                  v42 = sub_10002EBFC(@"AppleCertificateAuthorities.plist");
                  v41 = [NSArray arrayWithContentsOfURL:v42];

                  if (!v41)
                  {
                    v43 = 0;
                    goto LABEL_59;
                  }

LABEL_55:
                  v43 = v41;
                  objc_opt_class();
                  v44 = objc_opt_isKindOfClass();

                  if (v44)
                  {
                    v43 = v43;
                    v41 = v43;
                  }

                  else
                  {
                    v41 = 0;
                  }

LABEL_59:

                  *(v2 + 192) = v41;
                  if (byte_100092C40)
                  {
                    if (*(v2 + 240) == 1)
                    {
                      v45 = sub_10002E2F4(v2, @"MobileAssetContentVersion");
                    }

                    else
                    {
                      v45 = sub_10002E29C(@"MobileAssetContentVersion");
                    }

                    *(v2 + 168) = v45;
                  }

                  else
                  {
                    *buf = 0;
                    *(v2 + 168) = sub_10002ED10(buf);
                    *(v2 + 176) = sub_10002EFD8();
                    v46 = *buf;
                    if (*buf)
                    {
                      *buf = 0;
                      CFRelease(v46);
                    }
                  }

                  *(v2 + 208) = 0;
                  *buf = 0;
                  *&valuePtr.st_dev = 0;
                  *v153 = 0;
                  v47 = sub_10002F180(@"ValidUpdate", @"plist", 0);
                  if (v47)
                  {
                    v48 = v47;
                    format = 0xAAAAAAAAAAAAAAAALL;
                    v49 = CFPropertyListCreateWithData(kCFAllocatorDefault, v47, 0, &format, 0);
                    if (v49)
                    {
                      v50 = v49;
                      TypeID = CFDictionaryGetTypeID();
                      if (TypeID == CFGetTypeID(v50))
                      {
                        Value = CFDictionaryGetValue(v50, @"Version");
                        if (Value)
                        {
                          CFNumberGetValue(Value, kCFNumberCFIndexType, buf);
                        }

                        v53 = CFDictionaryGetValue(v50, @"Format");
                        if (v53)
                        {
                          CFNumberGetValue(v53, kCFNumberCFIndexType, &valuePtr);
                        }

                        v54 = CFDictionaryGetValue(v50, @"Generation");
                        if (v54)
                        {
                          CFNumberGetValue(v54, kCFNumberCFIndexType, v153);
                        }
                      }

                      CFRelease(v50);
                    }

                    CFRelease(v48);
                  }

                  v55 = *&valuePtr.st_dev;
                  v56 = *v153;
                  *(v2 + 144) = *buf;
                  *(v2 + 152) = v55;
                  *(v2 + 160) = v56;
                  *v153 = 0;
                  v57 = sub_10002E6B0(@"valid", @"sqlite3", 0);
                  if (v57)
                  {
                    v58 = v57;
                    v59 = CFURLCopyFileSystemPath(v57, kCFURLPOSIXPathStyle);
                    bzero(buf, 0x400uLL);
                    if (v59)
                    {
                      CStringPtr = CFStringGetCStringPtr(v59, 0x8000100u);
                      if (CStringPtr || (CStringPtr = buf, CFStringGetCString(v59, buf, 1024, 0x8000100u)))
                      {
                        asprintf(v153, "%s", CStringPtr);
                      }

                      else
                      {
                        v93 = sub_1000027AC("SecError");
                        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
                        {
                          valuePtr.st_dev = 136315138;
                          *&valuePtr.st_mode = "could not get valid snapshot";
                          _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "%s path as UTF8 string", &valuePtr, 0xCu);
                        }
                      }

                      CFRelease(v59);
                    }

                    else
                    {
                      v62 = sub_1000027AC("SecError");
                      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                      {
                        valuePtr.st_dev = 136315138;
                        *&valuePtr.st_mode = "could not get valid snapshot";
                        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "%s path", &valuePtr, 0xCu);
                      }
                    }

                    CFRelease(v58);
                    v63 = *v153;
                    if (!*v153)
                    {
                      goto LABEL_93;
                    }

                    *&v64 = 0xAAAAAAAAAAAAAAAALL;
                    *(&v64 + 1) = 0xAAAAAAAAAAAAAAAALL;
                    *&buf[112] = v64;
                    *&buf[128] = v64;
                    *&buf[80] = v64;
                    *&buf[96] = v64;
                    *&buf[48] = v64;
                    *&buf[64] = v64;
                    *&buf[16] = v64;
                    *&buf[32] = v64;
                    *buf = v64;
                    v65 = stat(*v153, buf);
                    v63 = *v153;
                    if (!v65)
                    {
LABEL_93:
                      *(v2 + 136) = v63;
                      if (*(v2 + 240) == 1)
                      {
                        v66 = sub_10002F2AC(v2, @"EVRoots", @"plist", 0);
                      }

                      else
                      {
                        v66 = sub_10002F180(@"EVRoots", @"plist", 0);
                      }

                      v67 = v66;
                      if (v66)
                      {
                        v68 = CFPropertyListCreateWithData(kCFAllocatorDefault, v66, 0, 0, 0);
                        CFRelease(v67);
                        if (v68)
                        {
                          v69 = CFGetTypeID(v68);
                          if (v69 == CFDictionaryGetTypeID())
                          {
                            *(v2 + 64) = v68;
                            v70 = *(v2 + 240);
                            memset(buf, 170, sizeof(buf));
                            LODWORD(format) = 0;
                            if (v70 == 1)
                            {
                              v71 = sub_10002F2AC(v2, @"certsIndex", @"data", 0);
                            }

                            else
                            {
                              v71 = sub_10002F180(@"certsIndex", @"data", 0);
                            }

                            v75 = v71;
                            if (v71)
                            {
                              if (v70)
                              {
LABEL_115:
                                v76 = sub_10002F3C4(v2, @"certsTable", @"data", 0);
                                goto LABEL_120;
                              }
                            }

                            else
                            {
                              v77 = sub_1000027AC("SecError");
                              if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
                              {
                                LOWORD(valuePtr.st_dev) = 0;
                                _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "could not find certsIndex", &valuePtr, 2u);
                              }

                              if (v70)
                              {
                                goto LABEL_115;
                              }
                            }

                            v76 = sub_10002E6B0(@"certsTable", @"data", 0);
LABEL_120:
                            v78 = v76;
                            if (!v76)
                            {
                              v92 = sub_1000027AC("SecError");
                              if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
                              {
                                LOWORD(valuePtr.st_dev) = 0;
                                _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "could not find certsTable", &valuePtr, 2u);
                              }

                              goto LABEL_174;
                            }

                            v79 = CFURLCopyFileSystemPath(v76, kCFURLPOSIXPathStyle);
                            if (!v79)
                            {
                              CFRelease(v78);
                              goto LABEL_174;
                            }

                            v80 = v79;
                            bzero(buf, 0x400uLL);
                            v81 = CFStringGetCStringPtr(v80, 0x8000100u);
                            if (!v81)
                            {
                              v81 = buf;
                              if (!CFStringGetCString(v80, buf, 1024, 0x8000100u))
                              {
                                v98 = sub_1000027AC("SecError");
                                if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
                                {
                                  *v153 = 0;
                                  _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "MapFile: path or out_file_size was NULL", v153, 2u);
                                }

                                goto LABEL_148;
                              }
                            }

                            v82.tv_sec = 0xAAAAAAAAAAAAAAAALL;
                            v82.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
                            *&valuePtr.st_blksize = v82;
                            *valuePtr.st_qspare = v82;
                            valuePtr.st_birthtimespec = v82;
                            *&valuePtr.st_size = v82;
                            valuePtr.st_mtimespec = v82;
                            valuePtr.st_ctimespec = v82;
                            *&valuePtr.st_uid = v82;
                            valuePtr.st_atimespec = v82;
                            *&valuePtr.st_dev = v82;
                            v83 = open(v81, 0);
                            if (v83 < 0)
                            {
                              v94 = sub_1000027AC("SecError");
                              if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
                              {
                                v95 = *__error();
                                *v153 = 136315394;
                                *&v153[4] = v81;
                                v154 = 1024;
                                *v155 = v95;
                                _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "MapFile: unable to open %s (errno %d)", v153, 0x12u);
                              }

                              goto LABEL_148;
                            }

                            v84 = v83;
                            v85 = fstat(v83, &valuePtr);
                            if (v85)
                            {
                              v86 = v85;
                              v87 = sub_1000027AC("SecError");
                              if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
                              {
                                v88 = *__error();
                                *v153 = 136315650;
                                *&v153[4] = v81;
                                v154 = 1024;
                                *v155 = v86;
                                *&v155[4] = 1024;
                                *&v155[6] = v88;
                                v89 = "MapFile: fstat of %s returned %d (errno %d)";
                                v90 = v87;
                                v91 = 24;
LABEL_128:
                                _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, v89, v153, v91);
                              }
                            }

                            else
                            {
                              st_size = valuePtr.st_size;
                              if (valuePtr.st_size >= 0x7FFFFFFF)
                              {
                                v97 = sub_1000027AC("SecError");
                                if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
                                {
                                  *v153 = 136315394;
                                  *&v153[4] = v81;
                                  v154 = 2048;
                                  *v155 = valuePtr.st_size;
                                  _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "MapFile: %s is too large (%lld)", v153, 0x16u);
                                }

                                goto LABEL_130;
                              }

                              v119 = mmap(0, valuePtr.st_size, 1, 2, v84, 0);
                              if (v119 + 1 > 1)
                              {
                                v100 = v119;
                                close(v84);
LABEL_151:
                                CFRelease(v80);
                                CFRelease(v78);
                                if (v75 && v100)
                                {
                                  v145 = v100;
                                  v146 = st_size;
                                  BytePtr = CFDataGetBytePtr(v75);
                                  cf = v75;
                                  Length = CFDataGetLength(v75);
                                  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                                  if (Length >= 1)
                                  {
                                    v104 = Length + 24;
                                    do
                                    {
                                      LODWORD(format) = *(BytePtr + 5);
                                      v105 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &format);
                                      v106 = CFDataCreate(kCFAllocatorDefault, BytePtr, 20);
                                      v107 = CFDictionaryGetValue(Mutable, v106);
                                      v108 = v107;
                                      if (!v107)
                                      {
                                        v108 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
                                      }

                                      CFArrayAppendValue(v108, v105);
                                      CFDictionarySetValue(Mutable, v106, v108);
                                      CFRelease(v105);
                                      CFRelease(v106);
                                      if (!v107)
                                      {
                                        CFRelease(v108);
                                      }

                                      BytePtr += 24;
                                      v104 -= 24;
                                    }

                                    while (v104 > 24);
                                  }

                                  CFRelease(cf);
                                  if (!Mutable)
                                  {
                                    sub_10002F534(v145, v146);
                                    goto LABEL_109;
                                  }

                                  *(v2 + 88) = Mutable;
                                  *(v2 + 96) = v145;
                                  *(v2 + 104) = v146;
                                  *&valuePtr.st_dev = 0;
                                  *v153 = 0;
                                  format = 0;
                                  if ((sub_10002F610(&format, v153) & 1) == 0)
                                  {
                                    v109 = sub_1000027AC("OTATrust");
                                    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
                                    {
                                      *buf = 0;
                                      _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "failed to load constrained test anchors", buf, 2u);
                                    }
                                  }

                                  *(v2 + 72) = *v153;
                                  if (sub_10002FEAC(v2, &valuePtr, format, *(v2 + 240)))
                                  {
                                    v110 = format;
                                    if (format)
                                    {
                                      format = 0;
                                      CFRelease(v110);
                                    }

                                    *(v2 + 80) = *&valuePtr.st_dev;
                                    v111 = sub_1000301A0(v2);
                                    if (!v111)
                                    {
                                      goto LABEL_198;
                                    }

                                    v112 = v111;
                                    v113 = [NSString stringWithFormat:@"%@/../%@", v111, @"Info"];
                                    CFRelease(v112);
                                    v114 = [NSString stringWithFormat:@"%@.%@", v113, @"plist"];

                                    v115 = [NSURL fileURLWithPath:v114 isDirectory:0];
                                    if (v115)
                                    {
                                      v116 = [NSData dataWithContentsOfURL:v115];
                                      if (v116)
                                      {
                                        v117 = v116;
                                        v118 = v117;
                                        goto LABEL_191;
                                      }

                                      v121 = [v115 fileSystemRepresentation];
                                      v122 = sub_1000027AC("SecWarning");
                                      if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
                                      {
                                        v123 = "";
                                        if (v121)
                                        {
                                          v123 = v121;
                                        }

                                        *buf = 136315138;
                                        *&buf[4] = v123;
                                        _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEFAULT, "Unable to get data from %s", buf, 0xCu);
                                      }

                                      v117 = 0;
                                    }

                                    else
                                    {
                                      v117 = sub_1000027AC("SecWarning");
                                      if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
                                      {
                                        *buf = 138412802;
                                        *&buf[4] = @"Info";
                                        *&buf[12] = 2112;
                                        *&buf[14] = @"plist";
                                        *&buf[22] = 2112;
                                        *&buf[24] = 0;
                                        _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_DEFAULT, "resource: %@.%@ in %@ not found", buf, 0x20u);
                                      }
                                    }

                                    v118 = 0;
LABEL_191:

                                    if (v118)
                                    {
                                      *buf = 0xAAAAAAAAAAAAAAAALL;
                                      v124 = CFPropertyListCreateWithData(kCFAllocatorDefault, v118, 0, buf, 0);
                                      if (!v124)
                                      {
                                        v128 = 0;
                                        goto LABEL_202;
                                      }

                                      v125 = v124;
                                      v126 = CFGetTypeID(v124);
                                      if (v126 == CFDictionaryGetTypeID())
                                      {
                                        v127 = CFDictionaryGetValue(v125, @"MobileAssetProperties");
                                        v128 = v127;
                                        if (!v127)
                                        {
LABEL_200:
                                          CFRelease(v125);
LABEL_202:
                                          CFRelease(v118);
                                          goto LABEL_203;
                                        }

                                        v129 = CFGetTypeID(v127);
                                        if (v129 == CFDictionaryGetTypeID())
                                        {
                                          v130 = CFDictionaryGetValue(v128, @"AssetVersion");
                                          v128 = v130;
                                          if (v130)
                                          {
                                            CFRetain(v130);
                                          }

                                          goto LABEL_200;
                                        }
                                      }

                                      v128 = 0;
                                      goto LABEL_200;
                                    }

LABEL_198:
                                    v128 = 0;
LABEL_203:
                                    *(v2 + 112) = v128;
                                    v131 = *(v2 + 96);
                                    v132 = *(v2 + 104);
                                    v133 = SecSHA256DigestCreate();
                                    if (v133)
                                    {
                                      v134 = v133;
                                      v135 = CFDataGetLength(v133);
                                      v136 = CFStringCreateMutable(kCFAllocatorDefault, 2 * v135);
                                      v137 = CFDataGetBytePtr(v134);
                                      v138 = CFDataGetLength(v134);
                                      if (v138 >= 1)
                                      {
                                        v139 = v138;
                                        do
                                        {
                                          v140 = *v137++;
                                          CFStringAppendFormat(v136, 0, @"%02X", v140);
                                          --v139;
                                        }

                                        while (v139);
                                      }

                                      CFRelease(v134);
                                    }

                                    else
                                    {
                                      v136 = 0;
                                    }

                                    *(v2 + 120) = v136;
                                    if (sub_100005E88())
                                    {
                                      v141 = qword_100092C08;
                                      if (sub_100005E88())
                                      {
                                        if (qword_100092C70 != -1)
                                        {
                                          dispatch_once(&qword_100092C70, &stru_100082A60);
                                        }

                                        if (byte_100092C68 == 1)
                                        {
                                          if (sub_100005E88())
                                          {
                                            *buf = 0;
                                            notify_register_dispatch("com.apple.MobileAsset.PKITrustSupplementals.ma.cached-metadata-updated", buf, v141, &stru_100082880);
                                          }

                                          dispatch_async(v141, &stru_1000828A0);
                                        }

                                        else
                                        {
                                          v142 = sub_1000027AC("OTATrust");
                                          if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
                                          {
                                            *buf = 0;
                                            _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_DEFAULT, "Initializing listener for PKI Asset changes from system trustd.", buf, 2u);
                                          }

                                          *buf = 0;
                                          notify_register_dispatch("com.apple.trustd.asset-updated", buf, v141, &stru_1000828C0);
                                          out_token = 0;
                                          notify_register_dispatch("com.apple.trustd.asset-check-in", &out_token, v141, &stru_1000828E0);
                                          v150 = 0;
                                          notify_register_dispatch("com.apple.trustd.kill-switch", &v150, v141, &stru_100082900);
                                        }
                                      }

                                      *(v2 + 216) = sub_1000302AC(@"CTKillSwitch");
                                      *(v2 + 217) = sub_1000302AC(@"CTKillSwitch_nonTLS");
                                      v143 = qword_100092C08;
                                      if (qword_100092C70 != -1)
                                      {
                                        dispatch_once(&qword_100092C70, &stru_100082A60);
                                      }

                                      if (byte_100092C68 == 1)
                                      {
                                        dispatch_async(v143, &stru_1000829D8);
                                      }

                                      else
                                      {
                                        v144 = sub_1000027AC("OTATrust");
                                        if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
                                        {
                                          *buf = 0;
                                          _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEFAULT, "Initializing listener for SecExperiment Asset changes from system trustd.", buf, 2u);
                                        }

                                        *buf = 0;
                                        notify_register_dispatch("com.apple.trustd.secexperiment.asset-updated", buf, v143, &stru_1000829F8);
                                      }
                                    }

                                    else
                                    {
                                      *(v2 + 216) = 257;
                                    }

                                    goto LABEL_110;
                                  }

                                  v74 = *&valuePtr.st_dev;
                                  if (!*&valuePtr.st_dev)
                                  {
LABEL_109:
                                    CFRelease(v2);
                                    v2 = 0;
                                    goto LABEL_110;
                                  }

LABEL_108:
                                  CFRelease(v74);
                                  goto LABEL_109;
                                }

                                if (v100)
                                {
                                  sub_10002F534(v100, st_size);
                                }

LABEL_174:
                                if (!v75)
                                {
                                  goto LABEL_109;
                                }

                                v74 = v75;
                                goto LABEL_108;
                              }

                              v87 = sub_1000027AC("SecError");
                              if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
                              {
                                v120 = *__error();
                                *v153 = 136315394;
                                *&v153[4] = v81;
                                v154 = 1024;
                                *v155 = v120;
                                v89 = "MapFile: unable to map %s (errno %d)";
                                v90 = v87;
                                v91 = 18;
                                goto LABEL_128;
                              }
                            }

LABEL_130:
                            close(v84);
LABEL_148:
                            v99 = sub_1000027AC("SecError");
                            if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
                            {
                              valuePtr.st_dev = 138412290;
                              *&valuePtr.st_mode = v80;
                              _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "InitializeAnchorTable: failed to map file at %@", &valuePtr, 0xCu);
                            }

                            v100 = 0;
                            st_size = 0;
                            goto LABEL_151;
                          }

                          v72 = 0;
LABEL_104:
                          v73 = sub_1000027AC("SecWarning");
                          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 0;
                            _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "EVRoot.plist is wrong type.", buf, 2u);
                          }

                          if (v72)
                          {
                            goto LABEL_109;
                          }

                          v74 = v68;
                          goto LABEL_108;
                        }
                      }

                      else
                      {
                        v68 = 0;
                      }

                      v72 = 1;
                      goto LABEL_104;
                    }

                    free(*v153);
                  }

                  else
                  {
                    v61 = sub_1000027AC("SecError");
                    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315138;
                      *&buf[4] = "could not get valid snapshot";
                      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
                    }
                  }

                  v63 = 0;
                  goto LABEL_93;
                }

                v26 = v32;
                objc_opt_class();
                v33 = objc_opt_isKindOfClass();

                if (v33)
                {
                  v26 = v26;
                  v32 = v26;
                  goto LABEL_43;
                }
              }

LABEL_42:
              v32 = 0;
              goto LABEL_43;
            }
          }

          else
          {
            v26 = 0;
          }
        }

        else
        {
          v26 = 0;
          v21 = 0;
          v20 = 0;
        }

        v28 = sub_10002EBFC(@"AnalyticsSamplingRates.plist");
        v29 = [NSDictionary dictionaryWithContentsOfURL:v28];

        v20 = v29;
        if (!v29)
        {
          goto LABEL_42;
        }

        goto LABEL_38;
      }

      if (v13)
      {
        *buf = 134218240;
        *&buf[4] = v10;
        *&buf[12] = 2048;
        *&buf[14] = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Using system trust store %llu instead of asset trust store %llu", buf, 0x16u);
      }
    }

    *(v2 + 240) = 0;
    v14 = sub_10002E29C(@"VersionNumber");
    goto LABEL_20;
  }

LABEL_110:
  qword_100092C30 = v2;
}

uint64_t sub_10002E29C(const void *a1)
{
  v2 = sub_10002F180(@"AssetVersion", @"plist", 0);
  v3 = sub_1000344C4(v2, a1);
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

uint64_t sub_10002E2F4(uint64_t a1, const void *a2)
{
  v3 = sub_10002F2AC(a1, @"AssetVersion", @"plist", 0);
  v4 = sub_1000344C4(v3, a2);
  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

const __CFData *sub_10002E34C(const __CFString *a1)
{
  result = sub_10002F180(a1, @"plist", 0);
  if (result)
  {
    v2 = result;
    v3 = CFPropertyListCreateWithData(kCFAllocatorDefault, result, 0, 0, 0);
    CFRelease(v2);
    return v3;
  }

  return result;
}

__CFSet *sub_10002E3B0(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 != CFArrayGetTypeID())
  {
    return 0;
  }

  Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  if (Mutable)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
        CFSetAddValue(Mutable, ValueAtIndex);
      }
    }
  }

  return Mutable;
}

id sub_10002E45C(void *a1)
{
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  if (sub_10002E7A0())
  {
    v3 = sub_10002E8A0(v1);
    v16 = 0;
    v4 = [NSArray arrayWithContentsOfURL:v3 error:&v16];
    v5 = v16;

    if (v4)
    {
      v6 = v4;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        goto LABEL_20;
      }
    }

    v8 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "OTATrust: failed to read CT list from asset data: %@", buf, 0xCu);
    }

    v15 = v5;
    sub_10002EB08(4, &v15, 0);
    if ((sub_10002EB94() & 1) == 0)
    {
      byte_100092C40 = 1;
    }

    if (v4)
    {
LABEL_20:
      v4 = v4;
      objc_opt_class();
      v9 = objc_opt_isKindOfClass();

      v10 = v4;
      if (v9)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v11 = sub_10002EBFC(v1);
  v10 = [NSArray arrayWithContentsOfURL:v11];

  if (!v10)
  {
    v12 = 0;
    goto LABEL_17;
  }

LABEL_13:
  v12 = v10;
  objc_opt_class();
  v13 = objc_opt_isKindOfClass();

  if (v13)
  {
    v10 = sub_10002C408(v12);
  }

  else
  {
    v10 = 0;
  }

LABEL_17:

  objc_autoreleasePoolPop(v2);
  return v10;
}

CFURLRef sub_10002E6B0(const __CFString *a1, const __CFString *a2, const __CFString *a3)
{
  v6 = sub_10002C2D0();
  if (!v6 || (result = CFBundleCopyResourceURL(v6, a1, a2, a3)) == 0)
  {
    v8 = sub_1000027AC("SecWarning");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412802;
      v10 = a1;
      v11 = 2112;
      v12 = a2;
      v13 = 2112;
      v14 = a3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "resource: %@.%@ in %@ not found", &v9, 0x20u);
    }

    return 0;
  }

  return result;
}

uint64_t sub_10002E7A0()
{
  if (sub_100005E88() && (v0 = sub_10002E29C(@"MobileAssetContentVersion"), v1 = sub_10002ED10(0), v1 > v0))
  {
    v2 = v1;
    v3 = sub_1000027AC("OTATrust");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134218240;
      v7 = v2;
      v8 = 2048;
      v9 = v0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Using supplementals asset v%llu instead of system v%llu", &v6, 0x16u);
    }

    v4 = byte_100092C40 ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

id sub_10002E8A0(void *a1)
{
  v1 = a1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100031ACC;
  v17 = sub_100031ADC;
  v18 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100034440;
  v12[3] = &unk_100082B58;
  v12[4] = &v13;
  sub_1000357EC(@"SupplementalsAssets", v12);
  v2 = v14[5];
  if (!v2)
  {
    goto LABEL_16;
  }

  v3 = [v2 fileSystemRepresentation];
  if (!sub_100003140())
  {
    goto LABEL_16;
  }

  if (qword_100092C70 != -1)
  {
    dispatch_once(&qword_100092C70, &stru_100082A60);
  }

  if (byte_100092C68 != 1)
  {
    goto LABEL_14;
  }

  v4 = mkpath_np(v3, 0x1EDu);
  v5 = v4;
  if (v4 && v4 != 17)
  {
    v6 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = strerror(v5);
      *buf = 136315394;
      v20 = v3;
      v21 = 2080;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "could not create path: %s (%s)", buf, 0x16u);
    }
  }

  else
  {
    chmod(v3, 0x1EDu);
  }

  if (!v5 || v5 == 17)
  {
LABEL_14:
    v8 = v14[5];
    if (v1)
    {
      v9 = [v8 URLByAppendingPathComponent:v1];
    }

    else
    {
      v9 = v8;
    }

    v10 = v9;
  }

  else
  {
LABEL_16:
    v10 = 0;
  }

  _Block_object_dispose(&v13, 8);

  return v10;
}

void sub_10002EB08(int a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v7 = v5;
    v6 = +[TrustAnalytics logger];
    [v6 logResultForEvent:@"OTAPKIEvent" hardFailure:a1 == 4 result:*a2 withAttributes:v7];

    v5 = v7;
  }
}

uint64_t sub_10002EB94()
{
  if (qword_100092C70 != -1)
  {
    dispatch_once(&qword_100092C70, &stru_100082A60);
  }

  v0 = byte_100092C68;
  if (byte_100092C68 == 1)
  {
    sub_100031CD4();
    sub_1000326B0(@"OTAPKIContext.plist");
  }

  return v0;
}

id sub_10002EBFC(void *a1)
{
  v1 = a1;
  v2 = sub_10002C2D0();
  if (v2)
  {
    v3 = CFBundleCopyResourcesDirectoryURL(v2);
    if (v3)
    {
      v4 = [NSURL URLWithString:v1 relativeToURL:v3];
      if (v4)
      {
LABEL_8:

        goto LABEL_10;
      }

      v5 = sub_1000027AC("SecWarning");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 138412290;
        v8 = v1;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "resource: %@ not found", &v7, 0xCu);
      }
    }

    v4 = 0;
    goto LABEL_8;
  }

  v4 = 0;
LABEL_10:

  return v4;
}

unint64_t sub_10002ED10(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_10002E29C(@"MobileAssetContentVersion");
  v6 = sub_10002E8A0(@"OTAPKIContext.plist");
  if (!v6)
  {
    v7 = 0;
    v8 = 0;
LABEL_9:
    if (!a1)
    {
LABEL_16:
      sub_100031CD4();
      sub_100031D64(@"CTKillSwitch", &off_10008C590, 0);
      sub_100031D64(@"CTKillSwitch_nonTLS", &off_10008C590, 0);
      goto LABEL_17;
    }

    v19 = v8;
    sub_10003168C(@"com.apple.MobileAsset.PKITrustSupplementals", &v19, 3, NSOSStatusErrorDomain, -67871, @"OTAContext.plist missing dictionary", v4, v5, v18);
    v14 = v19;

    v13 = 0;
    v8 = v14;
LABEL_11:
    v15 = sub_1000027AC("OTATrust");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v23 = v13;
      v24 = 2048;
      v25 = v3;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "asset (%llu) is not newer than the system version (%llu); deleting stale data", buf, 0x16u);
    }

    if (v8)
    {
      CFRetain(v8);
    }

    *a1 = v8;
    goto LABEL_16;
  }

  v21 = 0;
  v7 = [NSDictionary dictionaryWithContentsOfURL:v6 error:&v21];
  v8 = v21;
  if (!v7)
  {
    goto LABEL_9;
  }

  v7 = v7;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_9;
  }

  v12 = [v7 objectForKeyedSubscript:@"MobileAssetContentVersion"];
  if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (a1)
    {
      v20 = v8;
      sub_10003168C(@"com.apple.MobileAsset.PKITrustSupplementals", &v20, 3, NSOSStatusErrorDomain, -67694, @"OTAContext.plist missing version", v10, v11, v18);
      v17 = v20;

      v8 = v17;
    }

    v13 = 0;
LABEL_21:
    if (!a1)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v13 = [v12 unsignedLongLongValue];

  if (v13 <= v3)
  {
    goto LABEL_21;
  }

  v3 = v13;
LABEL_17:

  objc_autoreleasePoolPop(v2);
  return v3;
}

void *sub_10002EFD8()
{
  v2 = sub_10002E8A0(@"OTAPKIContext.plist");
  if (!v2)
  {
    v3 = 0;
    v4 = 0;
LABEL_8:
    v13 = v4;
    sub_10003168C(@"com.apple.MobileAsset.PKITrustSupplementals", &v13, 3, NSOSStatusErrorDomain, -67871, @"OTAContext.plist missing dictionary", v0, v1, v12);
    v9 = 0;
    v8 = v4;
    v4 = v13;
    goto LABEL_9;
  }

  v15 = 0;
  v3 = [NSDictionary dictionaryWithContentsOfURL:v2 error:&v15];
  v4 = v15;
  if (!v3)
  {
    goto LABEL_8;
  }

  v3 = v3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_8;
  }

  v8 = [v3 objectForKeyedSubscript:@"MobileAssetLastCheckIn"];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    CFRetain(v8);
    v9 = v8;
  }

  else
  {
    v14 = v4;
    sub_10003168C(@"com.apple.MobileAsset.PKITrustSupplementals", &v14, 3, NSOSStatusErrorDomain, -67694, @"OTAContext.plist missing check-in", v6, v7, v12);
    v11 = v14;

    v9 = 0;
    v4 = v11;
  }

LABEL_9:

  return v9;
}

const __CFURL *sub_10002F180(const __CFString *a1, const __CFString *a2, const __CFString *a3)
{
  result = sub_10002E6B0(a1, a2, a3);
  resourceData = 0;
  if (result)
  {
    v4 = result;
    errorCode = -1431655766;
    if (!CFURLCreateDataAndPropertiesFromResource(kCFAllocatorDefault, result, &resourceData, 0, 0, &errorCode))
    {
      v5 = [(__CFURL *)v4 fileSystemRepresentation];
      v6 = sub_1000027AC("SecWarning");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = "";
        if (v5)
        {
          v7 = v5;
        }

        *buf = 136315394;
        v11 = v7;
        v12 = 2048;
        v13 = errorCode;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unable to get data from %s: error %ld", buf, 0x16u);
      }
    }

    CFRelease(v4);
    return resourceData;
  }

  return result;
}

void *sub_10002F2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_10002F3C4(a1, a2, a3, a4);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [NSData dataWithContentsOfURL:v4];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [v5 fileSystemRepresentation];
    v10 = sub_1000027AC("SecWarning");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = "";
      if (v9)
      {
        v11 = v9;
      }

      v13 = 136315138;
      v14 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Unable to get data from %s", &v13, 0xCu);
    }
  }

  CFRelease(v5);

  return v7;
}

void *sub_10002F3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000301A0(a1);
  v8 = v7;
  if (v7)
  {
    if (a4)
    {
      v9 = [v7 stringByAppendingPathComponent:a4];

      v8 = v9;
    }

    v10 = [v8 stringByAppendingPathComponent:a2];

    if (a3)
    {
      v11 = [v10 stringByAppendingPathExtension:a3];

      v10 = v11;
    }

    v12 = [NSURL fileURLWithPath:v10 isDirectory:0];
    v8 = v12;
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v14 = sub_1000027AC("SecWarning");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412802;
        v17 = a2;
        v18 = 2112;
        v19 = a3;
        v20 = 2112;
        v21 = a4;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "resource: %@.%@ in %@ not found", &v16, 0x20u);
      }
    }
  }

  return v8;
}

void sub_10002F534(void *a1, size_t a2)
{
  v4 = munmap(a1, a2);
  if (v4)
  {
    v5 = v4;
    v6 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134218496;
      v8 = a2;
      v9 = 2048;
      v10 = a1;
      v11 = 1024;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "unable to unmap %ld bytes at %p (error %d)", &v7, 0x1Cu);
    }
  }
}

uint64_t sub_10002F610(void *a1, void *a2)
{
  if (!SecIsInternalRelease())
  {
    return 1;
  }

  v62 = a2;
  v63 = a1;
  context = objc_autoreleasePoolPush();
  v4 = sub_100008D3C(@"ConstrainedTestAnchors.plist");
  v5 = +[NSFileManager defaultManager];
  v6 = [(__CFURL *)v4 path];
  v7 = [v5 isReadableFileAtPath:v6];

  if (v7)
  {
    v8 = [NSDictionary dictionaryWithContentsOfURL:v4];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v61 = v4;
      v9 = +[NSMutableDictionary dictionary];
      v10 = +[NSMutableDictionary dictionary];
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v11 = v8;
      v12 = v8;
      v13 = [v12 countByEnumeratingWithState:&v85 objects:v92 count:16];
      if (v13)
      {
        v14 = v13;
        v68 = *v86;
        v65 = v12;
        v66 = v11;
        v72 = v10;
        v73 = v9;
        do
        {
          v15 = 0;
          v67 = v14;
          do
          {
            if (*v86 != v68)
            {
              v16 = v15;
              objc_enumerationMutation(v12);
              v15 = v16;
            }

            v69 = v15;
            v17 = *(*(&v85 + 1) + 8 * v15);
            if ([v17 hasPrefix:@"1.2.840.113635.100.1"])
            {
              v79 = v17;
              v18 = [v12 objectForKeyedSubscript:v17];
              if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v83 = 0u;
                v84 = 0u;
                v81 = 0u;
                v82 = 0u;
                v19 = v18;
                v20 = [v19 countByEnumeratingWithState:&v81 objects:v89 count:16];
                if (v20)
                {
                  v21 = v20;
                  v80 = *v82;
                  obj = v19;
                  do
                  {
                    for (i = 0; i != v21; i = i + 1)
                    {
                      if (*v82 != v80)
                      {
                        objc_enumerationMutation(obj);
                      }

                      v23 = *(*(&v81 + 1) + 8 * i);
                      if (v23 && (v24 = v23, objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v24, (isKindOfClass & 1) != 0))
                      {
                        v26 = [[NSData alloc] initWithBase64EncodedString:v24 options:0];
                        if (v26)
                        {
                          v27 = v26;
                          v28 = SecCertificateCreateWithData(0, v26);
                          if (v28)
                          {
                            v29 = v28;
                            v30 = v79;
                            v31 = v9;
                            v77 = v10;
                            v32 = SecCertificateCopySHA256Digest();
                            v33 = SecCertificateCopySubjectPublicKeyInfoSHA256Digest();
                            if (v32 && v33)
                            {
                              v75 = v31;
                              theData = v33;
                              Length = CFDataGetLength(v32);
                              Mutable = CFStringCreateMutable(kCFAllocatorDefault, 2 * Length);
                              BytePtr = CFDataGetBytePtr(v32);
                              v37 = CFDataGetLength(v32);
                              if (v37 >= 1)
                              {
                                v38 = v37;
                                do
                                {
                                  v39 = *BytePtr++;
                                  CFStringAppendFormat(Mutable, 0, @"%02X", v39);
                                  --v38;
                                }

                                while (v38);
                              }

                              v40 = CFDataGetLength(theData);
                              v41 = CFStringCreateMutable(kCFAllocatorDefault, 2 * v40);
                              v42 = CFDataGetBytePtr(theData);
                              v43 = CFDataGetLength(theData);
                              if (v43 >= 1)
                              {
                                v44 = v43;
                                do
                                {
                                  v45 = *v42++;
                                  CFStringAppendFormat(v41, 0, @"%02X", v45);
                                  --v44;
                                }

                                while (v44);
                              }

                              v46 = SecCertificateCopyAnchorLookupKey();
                              v47 = v46;
                              if (Mutable && v41 && v46)
                              {
                                v71 = v32;
                                v48 = +[NSMutableDictionary dictionary];
                                v70 = [NSArray arrayWithObject:v30];
                                [v48 setObject:? forKeyedSubscript:?];
                                [v48 setObject:Mutable forKeyedSubscript:@"sha2"];
                                [v48 setObject:v41 forKeyedSubscript:@"spki-sha2"];
                                v74 = v48;
                                [v48 setObject:@"test-custom" forKeyedSubscript:@"type"];
                                [v75 objectForKeyedSubscript:v47];
                                v50 = v49 = v47;

                                if (v50)
                                {
                                  v51 = v49;
                                  v52 = [v75 objectForKeyedSubscript:v49];
                                  v53 = v74;
                                  [v52 addObject:v74];
                                }

                                else
                                {
                                  v52 = [NSMutableArray arrayWithObject:v74];
                                  v51 = v49;
                                  v56 = v49;
                                  v53 = v74;
                                  [v75 setObject:v52 forKeyedSubscript:v56];
                                }

                                v57 = SecCertificateCopyData(v29);
                                [v77 setObject:v57 forKeyedSubscript:Mutable];

                                v47 = v51;
                                v32 = v71;
                              }

                              v10 = v72;
                              v9 = v73;
                              v31 = v75;
                              v33 = theData;
                            }

                            CFRelease(v29);
                          }

                          else
                          {
                            v55 = sub_1000027AC("SecWarning");
                            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 138412290;
                              v91 = v79;
                              _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Found ConstrainedTestAnchors.plist unparseable cert for %@. Skipping.", buf, 0xCu);
                            }
                          }
                        }

                        else
                        {
                          v54 = sub_1000027AC("SecWarning");
                          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138412290;
                            v91 = v79;
                            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Found ConstrainedTestAnchors.plist value in incorrect format for %@. Skipping.", buf, 0xCu);
                          }

                          v27 = 0;
                        }
                      }

                      else
                      {
                        v27 = sub_1000027AC("SecWarning");
                        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412290;
                          v91 = v79;
                          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Found ConstrainedTestAnchors.plist value in incorrect format for %@. Skipping.", buf, 0xCu);
                        }
                      }
                    }

                    v19 = obj;
                    v21 = [obj countByEnumeratingWithState:&v81 objects:v89 count:16];
                  }

                  while (v21);
                }

                v12 = v65;
                v11 = v66;
                v14 = v67;
              }

              else
              {
                v58 = sub_1000027AC("SecWarning");
                if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v91 = v79;
                  _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Found ConstrainedTestAnchors.plist value in incorrect format for %@. Skipping.", buf, 0xCu);
                }

                v19 = v18;
              }
            }

            else
            {
              v19 = sub_1000027AC("SecWarning");
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v91 = v17;
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Found ConstrainedTestAnchors.plist key in incorrect format (%@). Skipping.", buf, 0xCu);
              }
            }

            v15 = v69 + 1;
          }

          while ((v69 + 1) != v14);
          v14 = [v12 countByEnumeratingWithState:&v85 objects:v92 count:16];
        }

        while (v14);
      }

      if ([v10 count])
      {
        v4 = v61;
        v8 = v11;
        if ([v9 count])
        {
          if (v62)
          {
            *v62 = v10;
          }

          if (v63)
          {
            *v63 = v9;
          }

          v59 = 1;
        }

        else
        {
          v59 = 0;
        }
      }

      else
      {
        v59 = 0;
        v4 = v61;
        v8 = v11;
      }
    }

    else
    {
      v9 = sub_1000027AC("SecWarning");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Found ConstrainedTestAnchors.plist in incorrect format. Skipping.", buf, 2u);
      }

      v59 = 0;
    }
  }

  else
  {
    v59 = 1;
  }

  objc_autoreleasePoolPop(context);
  return v59;
}

uint64_t sub_10002FEAC(uint64_t a1, void *a2, void *a3, int a4)
{
  if (a4)
  {
    v6 = sub_10002F2AC(a1, @"Anchors", @"plist", 0);
  }

  else
  {
    v6 = sub_10002F180(@"Anchors", @"plist", 0);
  }

  v7 = v6;
  if (!v6)
  {
    v8 = 0;
    goto LABEL_24;
  }

  v8 = CFPropertyListCreateWithData(kCFAllocatorDefault, v6, 0, 0, 0);
  CFRelease(v7);
  if (!v8)
  {
LABEL_24:
    v20 = 1;
    goto LABEL_26;
  }

  v9 = CFGetTypeID(v8);
  if (v9 == CFDictionaryGetTypeID())
  {
    if (a2)
    {
      if (a3 && CFDictionaryGetCount(a3))
      {
        v10 = [v8 mutableCopy];
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v11 = a3;
        v12 = [v11 countByEnumeratingWithState:&v26 objects:v32 count:16];
        if (v12)
        {
          v13 = v12;
          v24 = a2;
          v25 = v8;
          v14 = *v27;
          do
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v27 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v26 + 1) + 8 * i);
              v17 = [v11 objectForKeyedSubscript:{v16, v24, v25}];
              v18 = [v10 objectForKeyedSubscript:v16];

              if (v18)
              {
                v19 = sub_1000027AC("SecWarning");
                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v31 = v16;
                  _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Found test anchor would replace a production anchor lookup key (%@). Skipping.", buf, 0xCu);
                }
              }

              else
              {
                [v10 setObject:v17 forKeyedSubscript:v16];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v26 objects:v32 count:16];
          }

          while (v13);

          a2 = v24;
          v8 = v25;
        }

        else
        {
        }
      }

      else
      {
        CFRetain(v8);
        v10 = v8;
      }

      *a2 = v10;
    }

    v22 = 1;
LABEL_33:
    CFRelease(v8);
    return v22;
  }

  v20 = 0;
LABEL_26:
  v21 = sub_1000027AC("SecWarning");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Anchors.plist is wrong type.", v32, 2u);
  }

  v22 = 0;
  result = 0;
  if ((v20 & 1) == 0)
  {
    goto LABEL_33;
  }

  return result;
}

const void *sub_1000301A0(uint64_t a1)
{
  if (!sub_100005E88())
  {
    return 0;
  }

  if (!*(a1 + 224))
  {
    v3 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SecAssetTrustStoreCopyPath: no autoAssetClient", buf, 2u);
    }

    return 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003436C;
  block[3] = &unk_100085428;
  block[4] = a1;
  if (qword_100092C48 != -1)
  {
    dispatch_once(&qword_100092C48, block);
  }

  v2 = *(a1 + 232);
  if (v2)
  {
    CFRetain(v2);
  }

  return v2;
}

id sub_1000302AC(void *a1)
{
  v1 = a1;
  v4 = sub_10002E8A0(@"OTAPKIContext.plist");
  if (!v4)
  {
    v5 = 0;
    v6 = 0;
LABEL_10:
    v17 = v6;
    sub_10003168C(@"com.apple.MobileAsset.PKITrustSupplementals", &v17, 3, NSOSStatusErrorDomain, -67871, @"OTAContext.plist missing dictionary", v2, v3, v16);
    v12 = 0;
    v10 = v6;
    v6 = v17;
    goto LABEL_11;
  }

  v19 = 0;
  v5 = [NSDictionary dictionaryWithContentsOfURL:v4 error:&v19];
  v6 = v19;
  if (!v5)
  {
    goto LABEL_10;
  }

  v5 = v5;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_10;
  }

  v10 = [v5 objectForKeyedSubscript:v1];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = sub_1000027AC("OTATrust");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v15 = [v10 BOOLValue];
      *buf = 138543618;
      v21 = v1;
      v22 = 1024;
      v23 = v15;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "found on-disk kill switch %{public}@ with value %d", buf, 0x12u);
    }

    v12 = [v10 BOOLValue];
  }

  else
  {
    v18 = v6;
    sub_10003168C(@"com.apple.MobileAsset.PKITrustSupplementals", &v18, 3, NSOSStatusErrorDomain, -67694, @"OTAContext.plist missing kill switch", v8, v9, v16);
    v14 = v18;

    v12 = 0;
    v6 = v14;
  }

LABEL_11:

  return v12;
}

void sub_100030500(id a1, int a2)
{
  v2 = sub_1000027AC("OTATrust");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Got notification about a new SecExperiment asset from system trustd.", buf, 2u);
  }

  v3 = [[MAAssetQuery alloc] initWithType:@"com.apple.MobileAsset.SecExperimentAssets"];
  [v3 returnTypes:1];
  v4 = [v3 queryMetaDataSync];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v24 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "OTATrust: failed to update SecExperiment Asset after notification: %ld", buf, 0xCu);
    }

LABEL_18:
    v10 = 0;
    goto LABEL_19;
  }

  v7 = sub_1000027AC("OTATrust");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updated SecExperiment asset successfully", buf, 2u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v3 results];
  v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v8)
  {
    goto LABEL_18;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v19;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v19 != v11)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v18 + 1) + 8 * i);
      v14 = [v13 assetProperty:@"_ContentVersion"];
      if (sub_1000307A0(@"com.apple.MobileAsset.SecExperimentAssets", v13))
      {
        v17 = v10;
        v15 = sub_100030B18(@"com.apple.MobileAsset.SecExperimentAssets", v13, v14, &v17);
        v16 = v17;

        v10 = v16;
      }
    }

    v9 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v9);
LABEL_19:
}

uint64_t sub_1000307A0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 isEqualToString:@"com.apple.MobileAsset.PKITrustSupplementals"])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v8 = [v4 assetProperty:@"_CompatibilityVersion"];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 unsignedIntegerValue] == v5)
    {
      v9 = [v4 assetProperty:@"_ContentVersion"];
      v10 = v3;
      v11 = v9;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        cf = 0;
        if ([v10 isEqualToString:@"com.apple.MobileAsset.PKITrustSupplementals"])
        {
          v12 = sub_1000327C0(&cf);
        }

        else
        {
          if (![v10 isEqualToString:@"com.apple.MobileAsset.SecExperimentAssets"])
          {
            goto LABEL_16;
          }

          v12 = sub_100032810(&cf);
        }

        v16 = v12;
        v17 = cf;
        if (!cf)
        {
          v28 = [NSNumber numberWithUnsignedLongLong:v16];
          v29 = [v11 compare:v28];

          if (v29 == 1)
          {
            v13 = 0;
            v14 = 1;
LABEL_23:

            goto LABEL_11;
          }

LABEL_17:
          if ([v10 isEqualToString:@"com.apple.MobileAsset.PKITrustSupplementals"])
          {
            v32 = 0;
            if (sub_100031D64(@"MobileAssetContentVersion", v11, &v32))
            {
              sub_100031F40();
            }

            v20 = v32;
            v36[0] = v11;
            v35[0] = @"assetVersion";
            v35[1] = @"systemVersion";
            v21 = [NSNumber numberWithUnsignedLongLong:sub_10002E29C(@"MobileAssetContentVersion")];
            v36[1] = v21;
            v35[2] = @"installedVersion";
            v22 = [NSNumber numberWithUnsignedLongLong:sub_1000327C0(0)];
            v36[2] = v22;
            v23 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:3];

            v31 = v20;
            sub_100032860(v10, &v31, v24, NSOSStatusErrorDomain, v25, v23, v26, v27, v10);
            v13 = v31;
          }

          else
          {
            v30 = 0;
            sub_10003168C(v10, &v30, 3, NSOSStatusErrorDomain, -25299, @"skipping asset %@ because we already have _ContentVersion %@ (or newer)", v18, v19, v10);
            v13 = v30;
          }

          v14 = 0;
          goto LABEL_23;
        }

        cf = 0;
        CFRelease(v17);
      }

LABEL_16:

      goto LABEL_17;
    }
  }

  v33 = 0;
  sub_10003168C(v3, &v33, 3, NSOSStatusErrorDomain, -67704, @"skipping asset %@ because Compatibility Version doesn't match %@", v6, v7, v3);
  v13 = v33;
  v14 = 0;
LABEL_11:

  return v14;
}

id sub_100030B18(void *a1, void *a2, void *a3, uint64_t *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (![v7 isEqualToString:@"com.apple.MobileAsset.PKITrustSupplementals"])
  {
    if (![v7 isEqualToString:@"com.apple.MobileAsset.SecExperimentAssets"])
    {
      v18 = 0;
      goto LABEL_22;
    }

    v10 = v9;
    v19 = [v8 getLocalFileUrl];
    v11 = v19;
    if (v10 && v19)
    {
      v22 = [v10 unsignedLongLongValue];
      v23 = [v11 URLByAppendingPathComponent:@"SecExperimentAssets.plist"];
      v24 = [NSDictionary dictionaryWithContentsOfURL:v23 error:a4];
      v25 = v24;
      if (v24)
      {
        v26 = qword_100092C10;
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v35 = sub_1000316C0;
        v36 = &unk_1000829B8;
        v38 = v22;
        v37 = v24;
        dispatch_sync(v26, &buf);
        notify_post("com.apple.trustd.secexperiment.asset-updated");
        v18 = v10;
        v27 = v37;
      }

      else
      {
        v27 = sub_1000027AC("SecError");
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          if (a4)
          {
            v31 = *a4;
          }

          else
          {
            v31 = 0;
          }

          LODWORD(buf) = 138412290;
          *(&buf + 4) = v31;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "OTATrust: unable to create SecExperiment from asset file: %@", &buf, 0xCu);
        }

        v18 = 0;
      }

      goto LABEL_21;
    }

    sub_10003168C(@"com.apple.MobileAsset.SecExperimentAssets", a4, 4, NSOSStatusErrorDomain, -26276, @"missing url and version for downloaded SecExperiment asset", v20, v21, v32);
    goto LABEL_20;
  }

  v10 = v8;
  v11 = v9;
  v12 = [v10 getLocalFileUrl];
  if (sub_100003140())
  {
    if (qword_100092E18 != -1)
    {
      dispatch_once(&qword_100092E18, &stru_100083F48);
    }

    v13 = [qword_100092E10 installDbFromURL:v12 error:a4];

    if (v13)
    {
      v14 = [v10 getLocalFileUrl];
      v15 = sub_100030F20(v14, v11, a4);

      if (v15)
      {
        v16 = sub_1000027AC("OTATrust");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v11;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "finished update to version %@ from installed asset. purging asset.", &buf, 0xCu);
        }

        v17 = +[TrustAnalytics logger];
        [v17 logSuccessForEventNamed:@"OTAPKIEvent"];

        [v10 purge:&stru_100082968];
        v18 = v11;
        goto LABEL_21;
      }

      goto LABEL_17;
    }
  }

  else
  {
  }

LABEL_17:
  v33 = [v10 getLocalFileUrl];
  sub_10003168C(@"com.apple.MobileAsset.PKITrustSupplementals", a4, 4, NSOSStatusErrorDomain, -67695, @"Failed to install new asset version %@ from %@", v28, v29, v11);

LABEL_20:
  v18 = 0;
LABEL_21:

LABEL_22:

  return v18;
}

uint64_t sub_100030F20(void *a1, void *a2, uint64_t *a3)
{
  v5 = a1;
  v6 = a2;
  v9 = v6;
  if (v5 && v6)
  {
    v54 = 0;
    v55 = &v54;
    v56 = 0x3032000000;
    v57 = sub_100031ACC;
    v58 = sub_100031ADC;
    v59 = 0;
    v48 = 0;
    v49 = &v48;
    v50 = 0x3032000000;
    v51 = sub_100031ACC;
    v52 = sub_100031ADC;
    v53 = 0;
    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x2020000000;
    v47[3] = [v6 unsignedLongLongValue];
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = sub_100031ACC;
    v45 = sub_100031ADC;
    v46 = 0;
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = sub_100031ACC;
    v39 = sub_100031ADC;
    v40 = 0;
    v10 = [v5 URLByAppendingPathComponent:@"TrustedCTLogs.plist"];
    v11 = [NSArray arrayWithContentsOfURL:v10 error:a3];
    v12 = v55[5];
    v55[5] = v11;

    if (!v55[5])
    {
      v24 = sub_1000027AC("SecError");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        if (a3)
        {
          v25 = *a3;
        }

        else
        {
          v25 = 0;
        }

        *buf = 138412290;
        v61 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "OTATrust: unable to create TrustedCTLogs from asset file: %@", buf, 0xCu);
      }

      sub_10002EB08(4, a3, 0);
      v23 = 0;
      goto LABEL_49;
    }

    v13 = [v5 URLByAppendingPathComponent:@"TrustedCTLogs_nonTLS.plist"];
    v14 = [NSArray arrayWithContentsOfURL:v13 error:a3];
    v15 = v49[5];
    v49[5] = v14;

    if (!v49[5])
    {
      v26 = sub_1000027AC("SecError");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        if (a3)
        {
          v27 = *a3;
        }

        else
        {
          v27 = 0;
        }

        *buf = 138412290;
        v61 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "OTATrust: unable to create TrustedCTLogs_nonTLS from asset file: %@", buf, 0xCu);
      }

      sub_10002EB08(4, a3, 0);
      v23 = 0;
      goto LABEL_48;
    }

    v16 = [v5 URLByAppendingPathComponent:@"AnalyticsSamplingRates.plist"];
    v17 = [NSDictionary dictionaryWithContentsOfURL:v16 error:a3];
    v18 = v42[5];
    v42[5] = v17;

    if (!v42[5])
    {
      v28 = sub_1000027AC("SecError");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        if (a3)
        {
          v29 = *a3;
        }

        else
        {
          v29 = 0;
        }

        *buf = 138412290;
        v61 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "OTATrust: unable to create AnalyticsSamplingRates from asset file: %@", buf, 0xCu);
      }

      sub_10002EB08(4, a3, 0);
      v23 = 0;
      goto LABEL_47;
    }

    v19 = [v5 URLByAppendingPathComponent:@"AppleCertificateAuthorities.plist"];
    v20 = [NSArray arrayWithContentsOfURL:v19 error:a3];
    v21 = v36[5];
    v36[5] = v20;

    if (v36[5])
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100031AE4;
      block[3] = &unk_100082990;
      block[4] = v47;
      block[5] = &v54;
      block[6] = &v48;
      block[7] = &v41;
      block[8] = &v35;
      dispatch_sync(qword_100092C10, block);
      if (qword_100092C70 != -1)
      {
        dispatch_once(&qword_100092C70, &stru_100082A60);
      }

      if (byte_100092C68 != 1)
      {
        goto LABEL_19;
      }

      sub_100031CD4();
      if (sub_100031D64(@"MobileAssetContentVersion", &off_10008C590, 0))
      {
        sub_100031F40();
      }

      v22 = [NSDate dateWithTimeIntervalSince1970:0.0];
      sub_100031D64(@"MobileAssetLastCheckIn", v22, 0);

      if (sub_1000321BC(@"TrustedCTLogs.plist", v10, a3) && sub_1000321BC(@"TrustedCTLogs_nonTLS.plist", v13, a3) && sub_1000321BC(@"AnalyticsSamplingRates.plist", v16, a3) && sub_1000321BC(@"AppleCertificateAuthorities.plist", v19, a3) && sub_100031D64(@"MobileAssetContentVersion", v9, a3) && sub_100031F40())
      {
        notify_post("com.apple.trustd.asset-updated");
LABEL_19:
        v23 = 1;
LABEL_46:

LABEL_47:
LABEL_48:

LABEL_49:
        _Block_object_dispose(&v35, 8);

        _Block_object_dispose(&v41, 8);
        _Block_object_dispose(v47, 8);
        _Block_object_dispose(&v48, 8);

        _Block_object_dispose(&v54, 8);
        goto LABEL_50;
      }
    }

    else
    {
      v30 = sub_1000027AC("SecError");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        if (a3)
        {
          v31 = *a3;
        }

        else
        {
          v31 = 0;
        }

        *buf = 138412290;
        v61 = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "OTATrust: unable to create AppleCAs from asset file: %@", buf, 0xCu);
      }

      sub_10002EB08(4, a3, 0);
    }

    v23 = 0;
    goto LABEL_46;
  }

  sub_10003168C(@"com.apple.MobileAsset.PKITrustSupplementals", a3, 4, NSOSStatusErrorDomain, -26276, @"missing url and version for downloaded asset", v7, v8, v33);
  v23 = 0;
LABEL_50:

  return v23;
}

void sub_100031628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1000316C0(uint64_t a1)
{
  v2 = sub_1000027AC("OTATrust");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(qword_100092C30 + 208);
    v4 = *(a1 + 40);
    v8 = 134218240;
    v9 = v3;
    v10 = 2048;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "updating SecExperiment asset version from %llu to %llu", &v8, 0x16u);
  }

  v5 = qword_100092C30;
  v6 = *(a1 + 32);
  v7 = *(qword_100092C30 + 200);
  if (v7 != v6)
  {
    if (!v6 || (CFRetain(*(a1 + 32)), (v7 = *(v5 + 200)) != 0))
    {
      CFRelease(v7);
    }

    *(v5 + 200) = v6;
    v5 = qword_100092C30;
  }

  *(v5 + 208) = *(a1 + 40);
}

void sub_1000317CC(void *a1, void *a2, int a3, void *a4, int a5, void *a6, void *a7, uint64_t a8)
{
  v15 = a1;
  v16 = a4;
  v17 = a6;
  v18 = a7;
  if (v18)
  {
    v19 = [[NSString alloc] initWithFormat:v18 arguments:a8];
    v20 = objc_alloc_init(NSMutableDictionary);
    [v20 setObject:v19 forKey:NSLocalizedDescriptionKey];
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v20 = objc_alloc_init(NSMutableDictionary);
    v19 = 0;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  if (*a2)
  {
    [v20 setObject:*a2 forKeyedSubscript:NSUnderlyingErrorKey];
  }

LABEL_7:
  v21 = [NSError errorWithDomain:v16 code:a5 userInfo:v20];
  v22 = v19;
  if (a3 == 4)
  {
    v23 = sub_1000027AC("SecError");
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 138412290;
    v28 = v22;
    v24 = "OTATrust: %@";
  }

  else
  {
    v23 = sub_1000027AC("OTATrust");
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 138412290;
    v28 = v22;
    v24 = "%@";
  }

  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v24, buf, 0xCu);
LABEL_13:

  if ([v15 isEqualToString:@"com.apple.MobileAsset.PKITrustSupplementals"])
  {
    v26 = v21;
    sub_10002EB08(a3, &v26, v17);
  }

  if (a2)
  {
    v25 = v21;
    *a2 = v21;
  }
}

void sub_100031A1C(id a1, int64_t a2)
{
  if (a2)
  {
    v3 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 134217984;
      v5 = a2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "OTATrust: purge failed: %ld", &v4, 0xCu);
    }
  }
}

uint64_t sub_100031ACC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100031AE4(void *a1)
{
  v2 = sub_1000027AC("OTATrust");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(qword_100092C30 + 168);
    v4 = *(*(a1[4] + 8) + 24);
    v19 = 134218240;
    v20 = v3;
    v21 = 2048;
    v22 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "updating asset version from %llu to %llu", &v19, 0x16u);
  }

  v5 = qword_100092C30;
  v6 = sub_10002C408(*(*(a1[5] + 8) + 40));
  v7 = *(v5 + 40);
  if (v7 != v6)
  {
    if (!v6 || (CFRetain(v6), (v7 = *(v5 + 40)) != 0))
    {
      CFRelease(v7);
    }

    *(v5 + 40) = v6;
  }

  v8 = qword_100092C30;
  if (*(qword_100092C30 + 48))
  {
    v9 = sub_10002C408(*(*(a1[6] + 8) + 40));
    v10 = *(v8 + 48);
    if (v10 != v9)
    {
      if (!v9 || (CFRetain(v9), (v10 = *(v8 + 48)) != 0))
      {
        CFRelease(v10);
      }

      *(v8 + 48) = v9;
    }
  }

  v11 = qword_100092C30;
  v12 = *(a1[7] + 8);
  v13 = *(v12 + 40);
  v14 = *(qword_100092C30 + 184);
  if (v14 != v13)
  {
    if (!v13 || (CFRetain(*(v12 + 40)), (v14 = v11[23]) != 0))
    {
      CFRelease(v14);
    }

    v11[23] = v13;
    v11 = qword_100092C30;
  }

  v15 = *(a1[8] + 8);
  v16 = *(v15 + 40);
  v17 = v11[24];
  if (v17 != v16)
  {
    if (!v16 || (CFRetain(*(v15 + 40)), (v17 = v11[24]) != 0))
    {
      CFRelease(v17);
    }

    v11[24] = v16;
    v11 = qword_100092C30;
  }

  v11[21] = *(*(a1[4] + 8) + 24);
  return sub_10003257C();
}

void sub_100031CD4()
{
  if (qword_100092C70 != -1)
  {
    dispatch_once(&qword_100092C70, &stru_100082A60);
  }

  if (byte_100092C68 == 1)
  {
    sub_1000326B0(@"TrustedCTLogs.plist");
    sub_1000326B0(@"TrustedCTLogs_nonTLS.plist");
    sub_1000326B0(@"AnalyticsSamplingRates.plist");

    sub_1000326B0(@"AppleCertificateAuthorities.plist");
  }
}

id sub_100031D64(void *a1, void *a2, uint64_t *a3)
{
  v5 = a1;
  v6 = a2;
  if (qword_100092C70 != -1)
  {
    dispatch_once(&qword_100092C70, &stru_100082A60);
  }

  if (byte_100092C68 == 1 && sub_100003140())
  {
    v7 = sub_10002E8A0(@"OTAPKIContext.plist");
    if (v7)
    {
      v8 = [NSDictionary dictionaryWithContentsOfURL:v7];
      v9 = v8;
      if (v8)
      {
        v10 = [v8 mutableCopy];
      }

      else
      {
        v10 = +[NSMutableDictionary dictionary];
      }

      v12 = v10;
      [v10 setObject:v6 forKeyedSubscript:v5];
      v11 = [v12 writeToClassDURL:v7 permissions:420 error:a3];
      if ((v11 & 1) == 0)
      {
        v13 = sub_1000027AC("SecError");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          if (a3)
          {
            v14 = *a3;
          }

          else
          {
            v14 = 0;
          }

          v16 = 138412290;
          v17 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "OTATrust: unable to write OTA Context to disk: %@", &v16, 0xCu);
        }

        sub_10002EB08(4, a3, 0);
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t sub_100031F40()
{
  if (qword_100092C70 != -1)
  {
    dispatch_once(&qword_100092C70, &stru_100082A60);
  }

  if (byte_100092C68 == 1)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = sub_100031ACC;
    v12 = sub_100031ADC;
    v13 = 0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000324F0;
    block[3] = &unk_100083638;
    block[4] = &v8;
    dispatch_sync(qword_100092C10, block);
    v0 = v9[5];
    v6 = 0;
    v1 = sub_100031D64(@"MobileAssetLastCheckIn", v0, &v6);
    v2 = v6;
    if ((v1 & 1) == 0)
    {
      v3 = sub_1000027AC("SecError");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = v2;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "OTATrust: failed to write last check-in time: %@", buf, 0xCu);
      }
    }

    notify_post("com.apple.trustd.asset-check-in");

    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    LOBYTE(v11) = 0;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100032538;
    v5[3] = &unk_100083638;
    v5[4] = &v8;
    dispatch_sync(qword_100092C10, v5);
    v1 = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
  }

  return v1 & 1;
}

void sub_10003219C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1000321BC(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if (qword_100092C70 != -1)
  {
    dispatch_once(&qword_100092C70, &stru_100082A60);
  }

  if (byte_100092C68 == 1 && sub_100003140())
  {
    v7 = sub_10002E8A0(v5);
    v8 = copyfile_state_alloc();
    v9 = copyfile([v6 fileSystemRepresentation], objc_msgSend(v7, "fileSystemRepresentation"), v8, 8u);
    copyfile_state_free(v8);
    if (v9 < 0)
    {
      v17 = *__error();
      v18 = *__error();
      v19 = __error();
      strerror(*v19);
      sub_10003168C(@"com.apple.MobileAsset.PKITrustSupplementals", a3, 4, NSPOSIXErrorDomain, v17, @"copyfile error for asset %d: %s", v20, v21, v18);
    }

    else
    {
      v10 = [v7 fileSystemRepresentation];
      if (chmod(v10, 0x1A4u))
      {
        v11 = *__error();
        v12 = sub_1000027AC("SecError");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v37 = v10;
          v38 = 2080;
          v39 = strerror(v11);
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "failed to change permissions of %s: %s", buf, 0x16u);
        }

        v13 = *__error();
        strerror(v11);
        sub_10003168C(@"com.apple.MobileAsset.PKITrustSupplementals", a3, 4, NSPOSIXErrorDomain, v13, @"failed to change permissions of %s: %s", v14, v15, v10);
      }

      else
      {
        v23 = open([v7 fileSystemRepresentation], 0);
        if (v23)
        {
          v24 = v23;
          v25 = fcntl(v23, 64, 4);
          v16 = v25 >= 0;
          if (v25 < 0)
          {
            v26 = *__error();
            v27 = *__error();
            v28 = __error();
            strerror(*v28);
            sub_10003168C(@"com.apple.MobileAsset.PKITrustSupplementals", a3, 4, NSPOSIXErrorDomain, v26, @"set proteciton class error for asset %d: %s", v29, v30, v27);
          }

          close(v24);
          goto LABEL_13;
        }

        v31 = *__error();
        v32 = *__error();
        v33 = __error();
        strerror(*v33);
        sub_10003168C(@"com.apple.MobileAsset.PKITrustSupplementals", a3, 4, NSPOSIXErrorDomain, v31, @"open error for asset %d: %s", v34, v35, v32);
      }
    }

    v16 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v16 = 0;
LABEL_14:

  return v16;
}

uint64_t sub_1000324F0(uint64_t a1)
{
  v2 = sub_10003257C();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100032538(uint64_t a1)
{
  v2 = sub_10003257C();

  if (v2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

id sub_10003257C()
{
  dispatch_assert_queue_V2(qword_100092C10);
  if (qword_100092C70 != -1)
  {
    dispatch_once(&qword_100092C70, &stru_100082A60);
  }

  if (byte_100092C68 != 1)
  {
    v0 = sub_10002EFD8();
    if (sub_10002ED10(0) == *(qword_100092C30 + 168))
    {
      v4 = (qword_100092C30 + 176);
      v3 = *(qword_100092C30 + 176);
      if (v3 == v0)
      {
        goto LABEL_18;
      }

      if (v0)
      {
        CFRetain(v0);
        if (*v4)
        {
          CFRelease(*v4);
        }

        goto LABEL_16;
      }
    }

    else
    {

      v4 = (qword_100092C30 + 176);
      v3 = *(qword_100092C30 + 176);
      if (!v3)
      {
        v0 = 0;
        goto LABEL_18;
      }
    }

    CFRelease(v3);
    v0 = 0;
LABEL_16:
    *v4 = v0;
    goto LABEL_18;
  }

  v0 = +[NSDate date];
  v1 = qword_100092C30;
  v2 = *(qword_100092C30 + 176);
  if (v2 != v0)
  {
    if (!v0 || (CFRetain(v0), (v2 = *(v1 + 176)) != 0))
    {
      CFRelease(v2);
    }

    *(v1 + 176) = v0;
  }

LABEL_18:

  return v0;
}

void sub_1000326B0(void *a1)
{
  v1 = a1;
  if (sub_100003140())
  {
    v2 = sub_10002E8A0(v1);
    v3 = [v2 fileSystemRepresentation];
    if (remove(v3, v4) == -1)
    {
      v5 = *__error();
      if (v5 != 2)
      {
        v6 = sub_1000027AC("OTATrust");
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = 138412546;
          v8 = v2;
          v9 = 2080;
          v10 = strerror(v5);
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "failed to remove %@: %s", &v7, 0x16u);
        }
      }
    }
  }
}

uint64_t sub_1000327C0(__CFString **a1)
{
  v2 = sub_100002A58();
  if (v2)
  {
    v3 = v2[21];
    CFRelease(v2);
  }

  else
  {
    sub_10001C2D4(-26276, a1, @"Unable to get the current OTAPKIRef");
    return 0;
  }

  return v3;
}

uint64_t sub_100032810(__CFString **a1)
{
  v2 = sub_100002A58();
  if (v2)
  {
    v3 = v2[26];
    CFRelease(v2);
  }

  else
  {
    sub_10001C2D4(-26276, a1, @"Unable to get the current OTAPKIRef");
    return 0;
  }

  return v3;
}

void sub_10003289C(id a1)
{
  v1 = sub_1000027AC("OTATrust");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Initial check with MobileAsset for newer SecExperiment asset", v2, 2u);
  }

  sub_100032920(0, @"com.apple.MobileAsset.SecExperimentAssets", 0);
}

BOOL sub_100032920(_BOOL8 a1, void *a2, void *a3)
{
  v5 = a2;
  if ((sub_100005E88() & 1) == 0)
  {
    sub_10003168C(v5, a3, 3, NSOSStatusErrorDomain, -67585, @"MobileAsset disabled, skipping check.", v6, v7, v35);
    goto LABEL_11;
  }

  if (a1)
  {
LABEL_15:
    v20 = 0;
    v54 = 0;
    v55 = &v54;
    v56 = 0x3032000000;
    v57 = sub_100031ACC;
    v58 = sub_100031ADC;
    v59 = 0;
    v48 = 0;
    v49 = &v48;
    v50 = 0x3032000000;
    v51 = sub_100031ACC;
    v52 = sub_100031ADC;
    if (a1)
    {
      v20 = dispatch_semaphore_create(0);
    }

    v53 = v20;
    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = sub_100031ACC;
    v46 = sub_100031ADC;
    v47 = 0;
    v21 = sub_1000027AC("OTATrust");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v61 = v5;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "begin MobileAsset query for catalog %@", buf, 0xCu);
    }

    v22 = +[NSDate date];
    sub_100032F14(v5, v22);

    v23 = sub_100033074();
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100033178;
    v36[3] = &unk_100082A40;
    v24 = v5;
    v37 = v24;
    v38 = &v42;
    v41 = a1;
    v39 = &v48;
    v40 = &v54;
    [MAAsset startCatalogDownload:v24 options:v23 then:v36];

    if (!a1)
    {
      goto LABEL_23;
    }

    v25 = v49[5];
    v26 = sub_100033388();
    v27 = dispatch_time(0, 1000000000 * v26);
    if (dispatch_semaphore_wait(v25, v27))
    {
      sub_100033388();
      sub_10003168C(v24, a3, 4, NSOSStatusErrorDomain, -67636, @"Failed to get asset %@ metadata within %d seconds.", v30, v31, v24);
    }

    else
    {
      v33 = v55[5];
      a1 = v33 != 0;
      if (a3)
      {
        v34 = v43[5];
        if (v34)
        {
          *a3 = v34;
          goto LABEL_23;
        }
      }

      if (v33)
      {
        a1 = 1;
        goto LABEL_23;
      }

      sub_10003168C(v24, a3, 4, NSOSStatusErrorDomain, -2070, @"Unknown error occurred.", v28, v29, v35);
    }

    a1 = 0;
LABEL_23:

    _Block_object_dispose(&v42, 8);
    _Block_object_dispose(&v48, 8);

    _Block_object_dispose(&v54, 8);
    goto LABEL_24;
  }

  v8 = v5;
  v9 = sub_10002E8A0(@"OTAPKIContext.plist");
  if (!v9)
  {
    v11 = 0;
    v10 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v54 = 0;
  v10 = [NSDictionary dictionaryWithContentsOfURL:v9 error:&v54];
  v11 = v54;
  if (!v10)
  {
    goto LABEL_14;
  }

  v10 = v10;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_14;
  }

  v35 = @"MobileAssetLastRequest";
  v13 = [NSString stringWithFormat:@"%@-%@"];
  v14 = [v10 objectForKeyedSubscript:v13];

  if (!v14 || (v15 = v14, objc_opt_class(), v16 = objc_opt_isKindOfClass(), v15, (v16 & 1) == 0) || ([v15 timeIntervalSinceNow], fabs(v17) >= sub_100032E78()))
  {

    goto LABEL_14;
  }

  sub_10003168C(v8, a3, 3, NSOSStatusErrorDomain, -25297, @"last MobileAsset request for %@ too recent, skipping check.", v18, v19, v8);
LABEL_11:
  a1 = 0;
LABEL_24:

  return a1;
}

void sub_100032E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100032E78()
{
  v0 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.security"];
  v1 = [v0 valueForKey:@"PKITrustSupplementalsUpdatePeriod"];
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 intValue];
    if (v2 <= 300)
    {
      v3 = 300;
    }

    else
    {
      v3 = v2;
    }
  }

  else
  {
    v3 = 43200;
  }

  return v3;
}

void sub_100032F14(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (qword_100092C70 != -1)
  {
    dispatch_once(&qword_100092C70, &stru_100082A60);
  }

  if (byte_100092C68 == 1)
  {
    v5 = [NSString stringWithFormat:@"%@-%@", @"MobileAssetLastRequest", v3];
    v9 = 0;
    v6 = sub_100031D64(v5, v4, &v9);
    v7 = v9;

    if ((v6 & 1) == 0)
    {
      v8 = sub_1000027AC("SecError");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v11 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "OTATrust: failed to write last request time: %@", buf, 0xCu);
      }
    }
  }
}

id sub_100033074()
{
  v0 = objc_alloc_init(MADownloadOptions);
  [v0 setDiscretionary:0];
  [v0 setAllowsCellularAccess:1];
  if (sub_10000FD40(3888000.0))
  {
    if (sub_10000FD40(2592000.0))
    {
      goto LABEL_9;
    }

    v1 = sub_1000027AC("OTATrust");
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 0;
      v2 = "Asset staleness state: at risk";
      v3 = &v5;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, v2, v3, 2u);
    }
  }

  else
  {
    v1 = sub_1000027AC("OTATrust");
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v2 = "Asset staleness state: warning";
      v3 = buf;
      goto LABEL_7;
    }
  }

LABEL_9:

  return v0;
}

void sub_100033178(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = [NSDate dateWithTimeIntervalSinceReferenceDate:0.0];
  sub_100032F14(v5, v6);

  v9 = os_transaction_create();
  v10 = *(a1 + 32);
  if (a2)
  {
    v11 = *(*(a1 + 40) + 8);
    obj = *(v11 + 40);
    sub_10003168C(v10, &obj, 4, @"MADownLoadResult", a2, @"failed to download catalog for asset %@: %ld", v7, v8, v10);
    objc_storeStrong((v11 + 40), obj);
    if (a2 == 13 && [*(a1 + 32) isEqualToString:@"com.apple.MobileAsset.PKITrustSupplementals"])
    {
      v12 = qword_100092C08;
      v13 = *(a1 + 32);
      v14 = v12;
      if (!sub_10000FD40(2592000.0))
      {
        out_token = 0;
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_10003341C;
        handler[3] = &unk_100085E70;
        v25 = v13;
        notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &out_token, v14, handler);
      }
    }
  }

  else
  {
    v15 = *(a1 + 64);
    v16 = *(*(a1 + 56) + 8);
    v17 = *(v16 + 40);
    v18 = *(*(*(a1 + 48) + 8) + 40);
    v19 = *(*(a1 + 40) + 8);
    v21 = *(v19 + 40);
    v22 = v17;
    v20 = sub_1000334B4(v10, v15, v18, &v22, &v21);
    objc_storeStrong((v16 + 40), v22);
    objc_storeStrong((v19 + 40), v21);
    if (*(a1 + 64) == 1 && (v20 & 1) == 0)
    {
      dispatch_semaphore_signal(*(*(*(a1 + 48) + 8) + 40));
    }

    v9 = 0;
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_100033388()
{
  v0 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.security"];
  v1 = [v0 valueForKey:@"TrustdAssetDownloadWaitTimeout"];
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 intValue];
  }

  else
  {
    v2 = 60;
  }

  return v2;
}

uint64_t sub_10003341C(uint64_t a1, int a2)
{
  v4 = sub_1000027AC("OTATrust");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Got lock status notification for at-risk last check-in after MA daemon error", v6, 2u);
  }

  sub_100032920(0, *(a1 + 32), 0);
  return notify_cancel(a2);
}

uint64_t sub_1000334B4(void *a1, char a2, void *a3, void *a4, void *a5)
{
  v6 = a1;
  v55 = a3;
  v52 = [[MAAssetQuery alloc] initWithType:v6];
  v7 = sub_1000027AC("OTATrust");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "begin MobileAsset metadata sync request %{public}@", &buf, 0xCu);
  }

  v8 = [v52 queryMetaDataSync];
  if (v8)
  {
    sub_10003168C(v6, a5, 4, @"MAQueryResult", v8, @"failed to query MobileAsset %@ metadata: %ld", v9, v10, v6);
LABEL_5:
    v54 = 0;
    goto LABEL_59;
  }

  v11 = [v52 results];
  v12 = v11 == 0;

  if (v12)
  {
    sub_10003168C(v6, a5, 4, NSOSStatusErrorDomain, -26276, @"no results in MobileAsset query for %@", v13, v14, v6);
    goto LABEL_5;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v82 = 0x3032000000;
  v83 = sub_100031ACC;
  v84 = sub_100031ADC;
  v85 = 0;
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = sub_100031ACC;
  v77 = sub_100031ADC;
  v78 = 0;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v15 = [v52 results];
  v16 = [v15 countByEnumeratingWithState:&v69 objects:v80 count:16];
  if (v16)
  {
    v54 = 0;
    v57 = *v70;
    obj = v15;
    while (1)
    {
      v17 = 0;
      do
      {
        if (*v70 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v69 + 1) + 8 * v17);
        v19 = [v18 assetProperty:@"_ContentVersion"];
        if (sub_1000307A0(v6, v18))
        {
          if ([v6 isEqualToString:@"com.apple.MobileAsset.PKITrustSupplementals"])
          {
            v20 = [v18 attributes];
            v21 = [v20 objectForKey:@"CTKillSwitch"];
            if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              *v79 = 0;
              sub_100031D64(@"CTKillSwitch", v21, v79);
              sub_100033D04(@"CTKillSwitch", [v21 BOOLValue]);
              v22 = sub_1000027AC("OTATrust");
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                v23 = [v21 BOOLValue];
                *v88 = 67109120;
                *&v88[4] = v23;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "got CT kill switch = %{BOOL}d", v88, 8u);
              }

              v24 = 1;
            }

            else
            {
              v24 = 0;
            }

            v25 = [v20 objectForKey:@"CTKillSwitch_nonTLS"];

            if (v25)
            {
              v26 = v25;
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if (isKindOfClass)
              {
                *v88 = 0;
                sub_100031D64(@"CTKillSwitch_nonTLS", v26, v88);
                sub_100033D04(@"CTKillSwitch_nonTLS", [v26 BOOLValue]);
                v28 = sub_1000027AC("OTATrust");
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  v29 = [v26 BOOLValue];
                  *v86 = 67109120;
                  v87 = v29;
                  _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "got non-TLS CT kill switch = %{BOOL}d", v86, 8u);
                }

                v24 = 1;
              }
            }

            if (qword_100092C70 != -1)
            {
              dispatch_once(&qword_100092C70, &stru_100082A60);
            }

            if ((v24 & byte_100092C68) == 1)
            {
              notify_post("com.apple.trustd.kill-switch");
            }
          }

          v30 = [v18 state];
          if (v30 > 1)
          {
            if (v30 != 2)
            {
              if (v30 != 4)
              {
                goto LABEL_42;
              }

              v31 = sub_1000027AC("OTATrust");
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *v79 = 138543362;
                *&v79[4] = v6;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "asset %{public}@ is downloading", v79, 0xCu);
              }

              goto LABEL_39;
            }

            v45 = *(&buf + 1);
            v67 = *(*(&buf + 1) + 40);
            v46 = sub_100030B18(v6, v18, v19, &v67);
            objc_storeStrong((v45 + 40), v67);
            v35 = v74[5];
            v74[5] = v46;
          }

          else if (v30)
          {
            if (v30 != 1)
            {
LABEL_42:
              v36 = *(&buf + 1);
              v68 = *(*(&buf + 1) + 40);
              v37 = [v18 state];
              sub_10003168C(v6, &v68, 4, NSOSStatusErrorDomain, -26276, @"unknown asset state %ld", v38, v39, v37);
              v40 = v68;
              goto LABEL_44;
            }

LABEL_39:
            v32 = sub_1000027AC("OTATrust");
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *v79 = 0;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "begin download of OTATrust asset", v79, 2u);
            }

            v33 = sub_100033074();
            v58[0] = _NSConcreteStackBlock;
            v58[1] = 3221225472;
            v58[2] = sub_100033DA4;
            v58[3] = &unk_100082928;
            v34 = v6;
            p_buf = &buf;
            v64 = &v73;
            v59 = v34;
            v60 = v18;
            v61 = v19;
            v65 = a2;
            v62 = v55;
            [v18 startDownload:v33 then:v58];

            v54 = 1;
            v35 = v59;
          }

          else
          {
            v36 = *(&buf + 1);
            v66 = *(*(&buf + 1) + 40);
            v41 = [v18 state];
            sub_10003168C(v6, &v66, 4, @"MAAssetState", v41, @"asset %@ is unknown", v42, v43, v6);
            v40 = v66;
LABEL_44:
            v44 = v40;
            v35 = *(v36 + 40);
            *(v36 + 40) = v44;
          }
        }

        v17 = v17 + 1;
      }

      while (v16 != v17);
      v15 = obj;
      v16 = [obj countByEnumeratingWithState:&v69 objects:v80 count:16];
      if (!v16)
      {
        goto LABEL_52;
      }
    }
  }

  v54 = 0;
LABEL_52:

  if (a5)
  {
    v47 = *(*(&buf + 1) + 40);
    if (v47)
    {
      *a5 = v47;
    }
  }

  if (a4)
  {
    v48 = v74[5];
    if (v48)
    {
      *a4 = v48;
    }
  }

  _Block_object_dispose(&v73, 8);

  _Block_object_dispose(&buf, 8);
LABEL_59:

  return v54 & 1;
}

void sub_100033CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose((v47 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_100033D04(void *a1, char a2)
{
  v3 = a1;
  v4 = qword_100092C10;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100033EAC;
  v6[3] = &unk_100085478;
  v7 = v3;
  v8 = a2;
  v5 = v3;
  dispatch_sync(v4, v6);
}

void sub_100033DA4(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v7 = os_transaction_create();
  v8 = *(a1 + 32);
  if (a2)
  {
    v9 = *(*(a1 + 64) + 8);
    obj = *(v9 + 40);
    sub_10003168C(v8, &obj, 4, @"MADownLoadResult", a2, @"failed to download asset %@: %ld", v5, v6, v8);
    objc_storeStrong((v9 + 40), obj);
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(*(a1 + 64) + 8);
    v17 = *(v12 + 40);
    v13 = sub_100030B18(v8, v10, v11, &v17);
    objc_storeStrong((v12 + 40), v17);
    v14 = *(*(a1 + 72) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    if (*(a1 + 80) == 1)
    {
      v16 = *(a1 + 56);
      if (v16)
      {
        dispatch_semaphore_signal(v16);
      }
    }
  }

  objc_autoreleasePoolPop(v4);
}

id sub_100033EAC(uint64_t a1)
{
  result = [*(a1 + 32) isEqualToString:@"CTKillSwitch"];
  if (result)
  {
    *(qword_100092C30 + 216) = *(a1 + 40);
  }

  else
  {
    result = [*(a1 + 32) isEqualToString:@"CTKillSwitch_nonTLS"];
    if (result)
    {
      *(qword_100092C30 + 217) = *(a1 + 40);
    }
  }

  return result;
}

void sub_100033F18(id a1, int a2)
{
  v2 = sub_1000302AC(@"CTKillSwitch");
  sub_100033D04(@"CTKillSwitch", v2);
  v3 = sub_1000302AC(@"CTKillSwitch_nonTLS");

  sub_100033D04(@"CTKillSwitch_nonTLS", v3);
}

void sub_100033F78(id a1, int a2)
{
  v2 = sub_1000027AC("OTATrust");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Got notification about successful PKITrustSupplementals asset check-in", v3, 2u);
  }

  sub_100031F40();
}

void sub_100033FF0(id a1, int a2)
{
  v2 = sub_1000027AC("OTATrust");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Got notification about a new PKITrustSupplementals asset from system trustd.", v3, 2u);
  }

  sub_100034064();
}

void sub_100034064()
{
  v7 = 0;
  v0 = [NSNumber numberWithUnsignedLongLong:sub_10002ED10(&v7)];
  v1 = v7;
  v2 = sub_10002E8A0(0);
  v6 = v1;
  v3 = sub_100030F20(v2, v0, &v6);
  v4 = v6;

  if ((v3 & 1) == 0)
  {
    v5 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "OTATrust: failed to update from asset: %@", buf, 0xCu);
    }

    sub_100034190();
  }
}

uint64_t sub_100034190()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100034218;
  block[3] = &unk_100085428;
  block[4] = sub_10002E29C(@"MobileAssetContentVersion");
  dispatch_sync(qword_100092C10, block);
  return sub_10002EB94();
}

void sub_100034218(uint64_t a1)
{
  v1 = qword_100092C30;
  *(qword_100092C30 + 168) = *(a1 + 32);
  v2 = *(v1 + 176);
  if (v2)
  {
    *(v1 + 176) = 0;
    CFRelease(v2);
    v1 = qword_100092C30;
  }

  *(v1 + 176) = 0;
}

void sub_10003425C(id a1)
{
  v1 = sub_1000027AC("OTATrust");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Initial check with MobileAsset for newer PKITrustSupplementals asset", v2, 2u);
  }

  sub_100032920(0, @"com.apple.MobileAsset.PKITrustSupplementals", 0);
}

void sub_1000342E0(id a1, int a2)
{
  v2 = sub_1000027AC("OTATrust");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Got notification about a new PKITrustSupplementals asset from mobileassetd.", v3, 2u);
  }

  sub_1000334B4(@"com.apple.MobileAsset.PKITrustSupplementals", 0, 0, 0, 0);
}

void sub_10003436C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 224) startUsingLocalAsset];
  v3 = v2;
  if (v2)
  {
    *(*(a1 + 32) + 232) = v2;
  }

  v4 = sub_1000027AC("OTATrust");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Using asset path: %@", &v5, 0xCu);
  }
}

void sub_100034440(uint64_t a1, uint64_t a2)
{
  v6 = [NSString stringWithUTF8String:a2];
  v3 = [NSURL fileURLWithPath:v6 isDirectory:1];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t sub_1000344C4(CFDataRef data, const void *a2)
{
  if (!data)
  {
    return 0;
  }

  format = 0xAAAAAAAAAAAAAAAALL;
  v3 = CFPropertyListCreateWithData(kCFAllocatorDefault, data, 0, &format, 0);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID == CFGetTypeID(v4) && (Value = CFDictionaryGetValue(v4, a2)) != 0)
  {
    v9 = 0;
    CFNumberGetValue(Value, kCFNumberSInt64Type, &v9);
    v7 = v9 & ~(v9 >> 63);
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v4);
  return v7;
}

void sub_100034598(id a1)
{
  v1 = sub_1000027AC("OTATrust");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "--- Received asset download notification ---", v3, 2u);
  }

  v2 = +[TrustAnalytics logger];
  [v2 logSuccessForEventNamed:@"AssetTriggerEvent"];

  sub_10003AB78("Will exit when clean to use downloaded asset.");
}

void sub_100034638(uint64_t a1)
{
  v2 = sub_100032E78();
  v3 = sub_1000027AC("OTATrust");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting periodic update delta to %llu seconds", &v8, 0xCu);
  }

  v4 = sub_10002A5CC(*(a1 + 32), "OTATrust", v2);
  v5 = qword_100092C50;
  qword_100092C50 = v4;

  v6 = qword_100092C50;
  context = dispatch_get_context(qword_100092C50);
  context[2] = _Block_copy(&stru_100082A18);
  dispatch_activate(v6);
}

void sub_100034740(id a1)
{
  if (byte_100092C58 == 1)
  {
    if (qword_100092C70 != -1)
    {
      dispatch_once(&qword_100092C70, &stru_100082A60);
    }

    if (byte_100092C68 == 1)
    {
      sub_100032920(0, @"com.apple.MobileAsset.SecExperimentAssets", 0);
      sub_100032920(0, @"com.apple.MobileAsset.PKITrustSupplementals", 0);
    }

    else
    {
      v1 = sub_1000027AC("OTATrust");
      if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
      {
        *v2 = 0;
        _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "periodic re-read asset from disk", v2, 2u);
      }

      sub_100034064();
    }
  }

  byte_100092C58 = 1;
}

uint64_t sub_100034830()
{
  if (!qword_100092C10 && qword_100092C38 != -1)
  {
    dispatch_once(&qword_100092C38, &stru_1000827E0);
  }

  sub_100005F7C(qword_100092C08);
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100034918;
  block[3] = &unk_100083638;
  block[4] = &v3;
  dispatch_sync(qword_100092C10, block);
  v0 = v4[3];
  _Block_object_dispose(&v3, 8);
  return v0;
}

void *sub_100034918(void *result)
{
  if (qword_100092C30)
  {
    v1 = result;
    v2 = *(qword_100092C30 + 48);
    if (v2 || (result = sub_10002E45C(@"TrustedCTLogs_nonTLS.plist"), v2 = result, (*(qword_100092C30 + 48) = result) != 0))
    {
      result = CFRetain(v2);
    }

    *(*(v1[4] + 8) + 24) = v2;
  }

  return result;
}

void *sub_100034984(__CFString **a1)
{
  v2 = sub_100016504();
  v3 = objc_autoreleasePoolPush();
  v4 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v2 count]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v5 objectForKey:{v10, v14}];
        v12 = [v10 base64EncodedStringWithOptions:0];
        [v4 setObject:v11 forKeyedSubscript:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  objc_autoreleasePoolPop(v3);
  if (!v4)
  {
    sub_10001C2D4(-26276, a1, @"Could not get CT logs from the current OTAPKIRef");
  }

  return v4;
}

const void *sub_100034B18(const void *a1)
{
  v2 = sub_100016504();
  v3 = sub_100034830();
  v4 = v3;
  if (v2 && v3)
  {
    Value = CFDictionaryGetValue(v2, a1);
    if (Value)
    {
      v6 = Value;
    }

    else
    {
      v6 = CFDictionaryGetValue(v4, a1);
      if (!v6)
      {
LABEL_11:
        CFRelease(v2);
LABEL_12:
        CFRelease(v4);
        return v6;
      }
    }

    CFRetain(v6);
    goto LABEL_11;
  }

  if (v2)
  {
    CFRelease(v2);
  }

  v6 = 0;
  result = 0;
  if (v4)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_100034BBC(__CFString **a1)
{
  v2 = sub_100002A58();
  if (v2)
  {
    v3 = v2;
    v4 = *(v2 + 112);
    if (v4)
    {
      CFRetain(*(v2 + 112));
    }

    CFRelease(v3);
  }

  else
  {
    sub_10001C2D4(-26276, a1, @"Unable to get the current OTAPKIRef");
    return 0;
  }

  return v4;
}

uint64_t sub_100034C20(__CFString **a1)
{
  v2 = sub_100002A58();
  if (v2)
  {
    v3 = v2;
    v4 = *(v2 + 120);
    if (v4)
    {
      CFRetain(*(v2 + 120));
    }

    CFRelease(v3);
  }

  else
  {
    sub_10001C2D4(-26276, a1, @"Unable to get the current OTAPKIRef");
    return 0;
  }

  return v4;
}

uint64_t sub_100034C84(uint64_t a1, __CFString **a2)
{
  if (a1)
  {
    v2 = [NSString stringWithFormat:@"%@/%@", a1, @"AssetVersion.plist"];
    v3 = [NSURL fileURLWithPath:v2 isDirectory:0];
    v4 = [NSDictionary dictionaryWithContentsOfURL:v3];
    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = [v4 objectForKeyedSubscript:@"VersionNumber"];
      if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v6 = [v5 longLongValue];
        v7 = v6 & ~(v6 >> 63);
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    sub_10001C2D4(-26276, a2, @"Unable to get trust store version (empty path)");
    return 0;
  }

  return v7;
}

uint64_t sub_100034DB8()
{
  v0 = sub_10002E29C(@"VersionNumber");
  if (!v0)
  {
    sub_10001C2D4(-26276, 0, @"Unable to get the system trust store version");
  }

  return v0;
}

uint64_t sub_100034E00(__CFString **a1)
{
  v2 = sub_100002A58();
  if (v2)
  {
    v3 = v2[16];
    CFRelease(v2);
  }

  else
  {
    sub_10001C2D4(-26276, a1, @"Unable to get the current OTAPKIRef");
    return 0;
  }

  return v3;
}

unint64_t sub_100034E50(__CFString **a1)
{
  if (qword_100092C70 != -1)
  {
    dispatch_once(&qword_100092C70, &stru_100082A60);
  }

  if (byte_100092C68 == 1)
  {
    v7 = 0;
    v2 = sub_100032920(1, @"com.apple.MobileAsset.PKITrustSupplementals", &v7);
    v3 = v7;
    v4 = v3;
    if (a1 && !v2)
    {
      if (v3)
      {
        CFRetain(v3);
      }

      *a1 = v4;
    }
  }

  else
  {
    sub_10001C2D4(-67585, a1, @"This function may only be performed by the system trustd.");
    v4 = 0;
  }

  v5 = sub_10002ED10(0);

  return v5;
}

uint64_t sub_100034F2C(__CFString **a1)
{
  if (qword_100092C70 != -1)
  {
    dispatch_once(&qword_100092C70, &stru_100082A60);
  }

  if (byte_100092C68 == 1)
  {
    v7 = 0;
    v2 = sub_100032920(1, @"com.apple.MobileAsset.SecExperimentAssets", &v7);
    v3 = v7;
    v4 = v3;
    if (a1 && !v2)
    {
      if (v3)
      {
        CFRetain(v3);
      }

      *a1 = v4;
    }
  }

  else
  {
    sub_10001C2D4(-67585, a1, @"This function may only be performed by the system trustd.");
    v4 = 0;
  }

  v5 = sub_100032810(a1);

  return v5;
}

uint64_t sub_100035008()
{
  v0 = qword_100092C10;
  if (!qword_100092C10)
  {
    if (qword_100092C38 != -1)
    {
      dispatch_once(&qword_100092C38, &stru_1000827E0);
    }

    v0 = qword_100092C10;
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000350E4;
  block[3] = &unk_100083638;
  block[4] = &v4;
  dispatch_sync(v0, block);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1000350E4(uint64_t a1)
{
  if (qword_100092C30)
  {
    v1 = *(qword_100092C30 + 200);
    if (v1)
    {
      CFRetain(*(qword_100092C30 + 200));
      *(*(*(a1 + 32) + 8) + 24) = v1;
      v3 = sub_1000027AC("OTATrust");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 0;
        v4 = "asset found";
        v5 = &v7;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
      }
    }

    else
    {
      v3 = sub_1000027AC("OTATrust");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 0;
        v4 = "asset NULL";
        v5 = &v6;
        goto LABEL_7;
      }
    }
  }
}

BOOL sub_1000353E8(const char *a1, void *a2)
{
  v4 = open(a1, 0);
  if (v4)
  {
    v5 = v4;
    v6 = fcntl(v4, 64, 4);
    v7 = v6 >= 0;
    if (v6 < 0)
    {
      v8 = *__error();
      v21 = NSLocalizedDescriptionKey;
      v9 = __error();
      v10 = [NSString localizedStringWithFormat:@"failed to change protection class of %s: %s", a1, strerror(*v9)];
      v22 = v10;
      v11 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v8 userInfo:v11];

      if (a2 && !*a2)
      {
        *a2 = v12;
      }
    }

    close(v5);
  }

  else
  {
    v13 = *__error();
    v19 = NSLocalizedDescriptionKey;
    v14 = __error();
    v15 = [NSString localizedStringWithFormat:@"failed to open file for protection class change %s: %s", a1, strerror(*v14)];
    v20 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v17 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v13 userInfo:v16];

    if (a2 && !*a2)
    {
      *a2 = v17;
    }

    return 0;
  }

  return v7;
}

void sub_100035618(id a1)
{
  if (getuid() == 282 || !getuid() && gTrustd)
  {
    byte_100092C68 = 1;
  }
}

void sub_10003565C(id a1)
{
  v1 = sub_100009020(@"private/var/protected/", @"trustd");

  sub_10002AB18(v1, &stru_100082AA0);
}

void sub_10003569C(id a1, const char *a2)
{
  v3 = mkpath_np(a2, 0x1FFu);
  if (v3)
  {
    v4 = v3;
    if (v3 != 17)
    {
      v5 = sub_1000027AC("SecError");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315394;
        v8 = a2;
        v9 = 2080;
        v10 = strerror(v4);
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "could not create path: %s (%s)", &v7, 0x16u);
      }
    }
  }

  if (qword_100092C70 != -1)
  {
    dispatch_once(&qword_100092C70, &stru_100082A60);
  }

  if (byte_100092C68 == 1)
  {
    v6 = getuid();
    chown(a2, v6, v6);
    chmod(a2, 0x1EDu);
  }
}

void sub_1000357EC(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = sub_100008BFC(a1);
  sub_10002AB18(v3, v4);
}

void sub_100035840(id a1, const char *a2)
{
  v3 = mkpath_np(a2, 0x1FFu);
  if (v3)
  {
    v4 = v3;
    if (v3 != 17)
    {
      v5 = sub_1000027AC("SecError");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315394;
        v7 = a2;
        v8 = 2080;
        v9 = strerror(v4);
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "could not create path: %s (%s)", &v6, 0x16u);
      }
    }
  }

  chmod(a2, 0x1FFu);
}

void sub_100035930()
{
  v0 = &stru_100082EC8;
  v1 = sub_100008D3C(@"caissuercache.sqlite3");
  sub_10002AB18(v1, &stru_100082EC8);
}

void sub_100035980(uint64_t a1, char *a2)
{
  v3.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v3.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v10.st_blksize = v3;
  *v10.st_qspare = v3;
  v10.st_birthtimespec = v3;
  *&v10.st_size = v3;
  v10.st_mtimespec = v3;
  v10.st_ctimespec = v3;
  *&v10.st_uid = v3;
  v10.st_atimespec = v3;
  *&v10.st_dev = v3;
  if (!stat(a2, &v10))
  {
    if ((~v10.st_mode & 0x1FF) == 0)
    {
      return;
    }

    v4 = sub_1000027AC("helper");
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_8;
    }

    *buf = 67109120;
    LODWORD(v12) = v10.st_mode;
    v7 = "wrong permissions on Analytics dir: %d";
    v8 = v4;
    v9 = 8;
    goto LABEL_11;
  }

  if (*__error() != 20 && *__error() != 2)
  {
    v4 = sub_1000027AC("helper");
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
LABEL_8:

      *(*(*(a1 + 32) + 8) + 24) = 1;
      return;
    }

    v5 = __error();
    v6 = strerror(*v5);
    *buf = 136315138;
    v12 = v6;
    v7 = "failed to stat Analytics dir: %s";
    v8 = v4;
    v9 = 12;
LABEL_11:
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, v7, buf, v9);
    goto LABEL_8;
  }
}

void sub_100035B00(uint64_t a1, char *a2)
{
  v3.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v3.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v7.st_blksize = v3;
  *v7.st_qspare = v3;
  v7.st_birthtimespec = v3;
  *&v7.st_size = v3;
  v7.st_mtimespec = v3;
  v7.st_ctimespec = v3;
  *&v7.st_uid = v3;
  v7.st_atimespec = v3;
  *&v7.st_dev = v3;
  if (stat(a2, &v7))
  {
    v4 = sub_1000027AC("helper");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = __error();
      v6 = strerror(*v5);
      *buf = 136315138;
      v9 = v6;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "failed to stat TrustStore: %s", buf, 0xCu);
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void sub_100035BF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000027AC("SecError");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "failed to talk to %{public}@: %@", &v6, 0x16u);
  }
}

void sub_100035CC8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = 138543618;
      v9 = v7;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to fix our files: %@", &v8, 0x16u);
    }
  }
}

CFIndex sub_100035DA0(CFIndex result)
{
  if (result)
  {
    v1 = result;
    result = CFArrayGetCount(result);
    if (result)
    {
      Count = CFArrayGetCount(v1);
      if (Count < 1)
      {
        return 0;
      }

      else
      {
        v3 = Count;
        v4 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v1, v4);
          if (CFStringHasPrefix(ValueAtIndex, @"ApplePinningAllowTestCerts") || CFStringHasPrefix(ValueAtIndex, @"AppleServerAuthenticationAllowUAT"))
          {
            if (CFPreferencesGetAppBooleanValue(ValueAtIndex, @"com.apple.security", 0))
            {
              break;
            }
          }

          if (v3 == ++v4)
          {
            return 0;
          }
        }

        return 1;
      }
    }
  }

  return result;
}

void sub_100035E70(id a1)
{
  v1 = sub_10002A5CC(0, "pinning logging UAT", 300);
  qword_100092D00 = v1;
  context = dispatch_get_context(v1);
  context[2] = _Block_copy(&stru_100082CC0);

  dispatch_activate(v1);
}

void sub_100035ED8(id a1)
{
  v1 = sub_1000027AC("pinningQA");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "could not enable test hierarchy: no UAT pinning preferences set", v2, 2u);
  }
}

void sub_100035F40(id a1)
{
  v4 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = -1;
  if (qword_100092C98 != -1)
  {
    dispatch_once(&qword_100092C98, &stru_100082BD8);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000360DC;
  block[3] = &unk_100082C00;
  block[6] = &v4;
  strcpy(v6, "ctaa");
  block[4] = &v7;
  block[5] = &v11;
  dispatch_sync(qword_100092CA0, block);
  if (*(v8 + 6))
  {
    _Block_object_dispose(&v7, 8);
    _Block_object_dispose(&v11, 8);
    v1 = sub_1000027AC("personalization");
    v2 = os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT);
    v3 = 0;
    if (v2)
    {
      LOWORD(block[0]) = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Failed to get entitlement BOOL", block, 2u);
      v3 = 0;
    }
  }

  else
  {
    v4 = *(v12 + 24);
    _Block_object_dispose(&v7, 8);
    _Block_object_dispose(&v11, 8);
    v3 = v4;
  }

  byte_100092C88 = v3 & 1;
}

void sub_1000360DC(uint64_t a1)
{
  if (qword_100092D08 != -1)
  {
    dispatch_once(&qword_100092D08, &stru_100082D00);
  }

  v2.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v2.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *__s2.st_qspare = v2;
  *&__s2.st_blksize = v2;
  *&__s2.st_size = v2;
  __s2.st_birthtimespec = v2;
  __s2.st_ctimespec = v2;
  __s2.st_mtimespec = v2;
  __s2.st_atimespec = v2;
  *&__s2.st_uid = v2;
  *&__s2.st_dev = v2;
  memset(__b, 170, 0x401uLL);
  v3 = lookupPathForPersonalizedData();
  if (!v3)
  {
    v10 = open(__b, 0, 0);
    if (v10 < 0)
    {
      v5 = sub_1000027AC("personalization");
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_7;
      }

      v16 = __error();
      v17 = strerror(*v16);
      *buf = 136315138;
      v62 = v17;
      v6 = "unable to open ticket file: %s";
      goto LABEL_6;
    }

    v11 = v10;
    if (fstat(v10, &__s2) < 0)
    {
      v18 = sub_1000027AC("personalization");
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      v19 = __error();
      v20 = strerror(*v19);
      *buf = 136315138;
      v62 = v20;
      v21 = "failed to stat ticket file: %s";
      v22 = v18;
      v23 = 12;
    }

    else
    {
      st_size = __s2.st_size;
      if (__s2.st_size < 0)
      {
        v24 = sub_1000027AC("personalization");
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_32;
        }

        *buf = 0;
        v21 = "file size is negative";
        v22 = v24;
        v23 = 2;
      }

      else
      {
        v13 = malloc_type_malloc(__s2.st_size, 0x100004077774924uLL);
        if (v13)
        {
          v14 = v13;
          if (read(v11, v13, st_size) == st_size)
          {
            v15 = CFDataCreateWithBytesNoCopy(0, v14, st_size, kCFAllocatorMalloc);
            if (!v15)
            {
              free(v14);
            }

LABEL_33:
            if (v11)
            {
              close(v11);
            }

            if (!v15)
            {
              goto LABEL_7;
            }

            if (byte_100092CA8 != 1)
            {
              v41 = sub_1000027AC("SecError");
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(__b[0]) = 0;
                _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Got a non-img4 ticket.", __b, 2u);
              }

              goto LABEL_69;
            }

            v31 = *(a1 + 56);
            v32 = *(a1 + 60);
            v33 = *(*(a1 + 40) + 8);
            v60 = 0;
            v59 = v32;
            BytePtr = CFDataGetBytePtr(v15);
            Length = CFDataGetLength(v15);
            v36 = Img4DecodeParseLengthFromBufferWithTag(BytePtr, Length, 0x494D344Du, &v60);
            if (v36)
            {
              v37 = v36;
              v38 = sub_1000027AC("personalization");
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(__b[0]) = 67109120;
                DWORD1(__b[0]) = v37;
                v39 = "Failed to get manifest length: %d";
                p_s2 = __b;
LABEL_66:
                v52 = v38;
                v53 = 8;
LABEL_67:
                _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, v39, p_s2, v53);
              }

LABEL_68:
              *(v33 + 24) = v32;
              *(*(*(a1 + 32) + 8) + 24) = v37;
LABEL_69:
              CFRelease(v15);
              return;
            }

            *&__b[28] = 0xAAAAAAAAAAAAAAAALL;
            *&v42 = 0xAAAAAAAAAAAAAAAALL;
            *(&v42 + 1) = 0xAAAAAAAAAAAAAAAALL;
            __b[26] = v42;
            __b[27] = v42;
            __b[24] = v42;
            __b[25] = v42;
            __b[22] = v42;
            __b[23] = v42;
            __b[20] = v42;
            __b[21] = v42;
            __b[18] = v42;
            __b[19] = v42;
            __b[16] = v42;
            __b[17] = v42;
            __b[14] = v42;
            __b[15] = v42;
            __b[12] = v42;
            __b[13] = v42;
            __b[10] = v42;
            __b[11] = v42;
            __b[8] = v42;
            __b[9] = v42;
            __b[6] = v42;
            __b[7] = v42;
            __b[4] = v42;
            __b[5] = v42;
            __b[2] = v42;
            __b[3] = v42;
            __b[0] = v42;
            __b[1] = v42;
            if (v60 != Length)
            {
              v45 = sub_1000027AC("personalization");
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
              {
                __s2.st_dev = 134218240;
                *&__s2.st_mode = v60;
                WORD2(__s2.st_ino) = 2048;
                *(&__s2.st_ino + 6) = Length;
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Incorrect amount of data in retrieved manifest. Parsed length: %zu; Have: %zu", &__s2, 0x16u);
              }

              v37 = 7;
              goto LABEL_68;
            }

            cc_clear();
            v43 = CFDataGetBytePtr(v15);
            inited = Img4DecodeInitManifest(v43, v60, __b);
            if (inited)
            {
              v37 = inited;
              v38 = sub_1000027AC("personalization");
              if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_68;
              }

              __s2.st_dev = 67109120;
              *&__s2.st_mode = v37;
              v39 = "Failed to initialize manifest: %d";
              goto LABEL_65;
            }

            if (qword_100092D20 != -1)
            {
              dispatch_once(&qword_100092D20, &stru_100082D40);
            }

            v46 = qword_100092D10;
            if (qword_100092D10)
            {
              CFRetain(qword_100092D10);
            }

            v47.tv_sec = 0xAAAAAAAAAAAAAAAALL;
            v47.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
            *&__s2.st_uid = v47;
            __s2.st_atimespec = v47;
            *&__s2.st_dev = v47;
            v37 = dword_1000927A0;
            if (dword_1000927A0)
            {
              v48 = sub_1000027AC("personalization");
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                LODWORD(v62) = v37;
                v49 = "failed to read boot-manifest-hash from device tree: %d";
LABEL_59:
                _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, v49, buf, 8u);
              }
            }

            else
            {
              v50 = qword_100092D18;
              v51 = Img4DecodeCopyManifestDigest(__b, &__s2, qword_100092D18, &xmmword_100092CC0);
              if (!v51)
              {
                v56 = CFDataGetBytePtr(v46);
                if (!memcmp(v56, &__s2, v50))
                {
                  v37 = 0;
                }

                else
                {
                  v57 = sub_1000027AC("personalization");
                  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "manifest read does not match boot-manifest-hash", buf, 2u);
                  }

                  v37 = 3;
                }

                goto LABEL_60;
              }

              v37 = v51;
              v48 = sub_1000027AC("personalization");
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                LODWORD(v62) = v37;
                v49 = "unable to copy digest of manifest: %d";
                goto LABEL_59;
              }
            }

LABEL_60:
            if (v46)
            {
              CFRelease(v46);
            }

            if (!v37)
            {
              v54 = Img4DecodePerformTrustEvaluation(0x6B726E6Cu, __b, sub_1000369BC, &xmmword_100092CC0, 0);
              if (!v54)
              {
                BooleanFromSection = Img4DecodeGetBooleanFromSection(__b, 0, v31, &v59);
                if (BooleanFromSection == 1)
                {
                  v37 = 0;
                }

                else
                {
                  v32 = v59;
                  v37 = BooleanFromSection;
                }

                goto LABEL_68;
              }

              v37 = v54;
              v55 = sub_1000027AC("personalization");
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(__s2.st_dev) = 0;
                v39 = "failed to verify ap ticket";
                p_s2 = &__s2;
                v52 = v55;
                v53 = 2;
                goto LABEL_67;
              }

              goto LABEL_68;
            }

            v38 = sub_1000027AC("personalization");
            if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_68;
            }

            __s2.st_dev = 67109120;
            *&__s2.st_mode = v37;
            v39 = "Manifest digests did not match: %d";
LABEL_65:
            p_s2 = &__s2;
            goto LABEL_66;
          }

          v28 = sub_1000027AC("personalization");
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = __error();
            v30 = strerror(*v29);
            *buf = 136315138;
            v62 = v30;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "failed to read ticket data: %s", buf, 0xCu);
          }

          free(v14);
LABEL_32:
          v15 = 0;
          goto LABEL_33;
        }

        v25 = sub_1000027AC("personalization");
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_32;
        }

        v26 = __error();
        v27 = strerror(*v26);
        *buf = 134218242;
        v62 = st_size;
        v63 = 2080;
        v64 = v27;
        v21 = "failed to allocate %zu bytes: %s";
        v22 = v25;
        v23 = 22;
      }
    }

    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
    goto LABEL_32;
  }

  v4 = v3;
  v5 = sub_1000027AC("personalization");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v62 = v4;
    v6 = "failed to get ticket file path: %ld";
LABEL_6:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
  }

LABEL_7:
  v7 = sub_1000027AC("personalization");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__b[0]) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unable to read personalization ticket from disk", __b, 2u);
  }

  v8 = sub_1000027AC("personalization");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__b[0]) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed to get ticket", __b, 2u);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    *v9 = *(a1 + 60);
  }
}

void sub_1000369C4(id a1)
{
  v1 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/chosen");
  if (v1)
  {
    v2 = v1;
    if (byte_100092CA8)
    {
      v3 = @"boot-manifest-hash";
    }

    else
    {
      v3 = @"root-ticket-hash";
    }

    qword_100092D10 = IORegistryEntryCreateCFProperty(v1, v3, kCFAllocatorDefault, 0);
    if (!qword_100092D10)
    {
      v19 = sub_1000027AC("personalization");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "unable to read manifest hash", &v20, 2u);
      }

      v8 = 0;
      v5 = 0;
      goto LABEL_30;
    }

    CFProperty = IORegistryEntryCreateCFProperty(v2, @"crypto-hash-method", kCFAllocatorDefault, 0);
    v5 = CFProperty;
    if (CFProperty)
    {
      BytePtr = CFDataGetBytePtr(CFProperty);
      Length = CFDataGetLength(v5);
      v8 = CFStringCreateWithBytes(0, BytePtr, Length - 1, 0x8000100u, 0);
      v9 = sub_1000027AC("personalization");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v20 = 138412290;
        v21 = v8;
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "using hash method %@", &v20, 0xCu);
      }
    }

    else
    {
      v8 = @"sha1";
    }

    if (CFStringCompare(@"sha1", v8, 0))
    {
      if (CFStringCompare(@"sha2-384", v8, 0))
      {
        v10 = sub_1000027AC("personalization");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 138412290;
          v21 = v8;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "unknown hash found in crypto-hash-method entry: %@", &v20, 0xCu);
        }

        v11 = 2;
        goto LABEL_29;
      }

      if (qword_100092CB0 != -1)
      {
        dispatch_once(&qword_100092CB0, &stru_100082C40);
      }

      if (byte_100092CB8 == 1)
      {
        v13 = sub_1000027AC("personalization");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v20) = 0;
          _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "using DDI root", &v20, 2u);
        }

        v14 = kImg4DecodeSecureBootRsa4kSha384DDI;
      }

      else
      {
        v14 = kImg4DecodeSecureBootRsa4kSha384;
      }

      v15 = *(v14 + 1);
      xmmword_100092CC0 = *v14;
      *algn_100092CD0 = v15;
      xmmword_100092CE0 = *(v14 + 2);
      qword_100092CF0 = v14[6];
      v12 = 48;
    }

    else
    {
      xmmword_100092CC0 = *kImg4DecodeSecureBootRsa1kSha1;
      *algn_100092CD0 = *off_1000819E8;
      xmmword_100092CE0 = *&off_1000819F8;
      qword_100092CF0 = &oidRsa;
      v12 = 20;
    }

    qword_100092D18 = v12;
    if (v12 == CFDataGetLength(qword_100092D10))
    {
      dword_1000927A0 = 0;
LABEL_30:
      IOObjectRelease(v2);
      goto LABEL_31;
    }

    v16 = sub_1000027AC("personalization");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "boot-manifest-hash length does not match crypto-hash-method", &v20, 2u);
    }

    v11 = 6;
LABEL_29:
    dword_1000927A0 = v11;
    goto LABEL_30;
  }

  v18 = sub_1000027AC("personalization");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Unable to read chosen node", &v20, 2u);
  }

  v5 = 0;
  v8 = 0;
LABEL_31:
  if (dword_1000927A0)
  {
    v17 = qword_100092D10;
    if (qword_100092D10)
    {
      qword_100092D10 = 0;
      CFRelease(v17);
    }

    qword_100092D18 = 0;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v8)
  {
    CFRelease(v8);
  }
}

void sub_100036DFC(id a1)
{
  v2 = 0;
  v1 = 4;
  if (!sysctlbyname("kern.hv_vmm_present", &v2, &v1, 0, 0))
  {
    byte_100092CB8 = v2 == 1;
  }
}

void sub_100036E58(id a1)
{
  v1 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/chosen");
  if (!v1)
  {
    v7 = sub_1000027AC("personalization");
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    v6 = 0;
    if (!v8)
    {
      goto LABEL_10;
    }

    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unable to read chosen node", v11, 2u);
    goto LABEL_9;
  }

  v2 = v1;
  CFProperty = IORegistryEntryCreateCFProperty(v1, @"image4-supported", kCFAllocatorDefault, 0);
  v4 = sub_1000027AC("personalization");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (!CFProperty)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "img3 device", buf, 2u);
    }

    IOObjectRelease(v2);
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  if (v5)
  {
    *v9 = 0;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "img4 device", v9, 2u);
  }

  IOObjectRelease(v2);
  CFRelease(CFProperty);
  v6 = 1;
LABEL_10:
  byte_100092CA8 = v6;
}

void sub_10003751C(double *a1)
{
  v1 = qword_100092D30;
  v2 = *(a1 + 4);
  v3 = *(a1 + 5);
  v4 = a1[6];
  v5 = sub_100037864(qword_100092D30);
  if (!v5)
  {
    v6 = CFURLCreateData(kCFAllocatorDefault, v3, 0x8000100u, 0);
    if (v6)
    {
      Mutable = v6;
      if (CFDataGetLength(v6) < 1)
      {
LABEL_30:
        CFRelease(Mutable);
        goto LABEL_19;
      }

      v8 = *(v1 + 40);
      BytePtr = CFDataGetBytePtr(Mutable);
      Length = CFDataGetLength(Mutable);
      if (Length >> 31)
      {
        CFRelease(Mutable);
        v11 = 18;
        if (!v2)
        {
          goto LABEL_19;
        }

LABEL_9:
        if (!CFArrayGetCount(v2))
        {
          goto LABEL_19;
        }

        Mutable = CFDataCreateMutable(0, 0);
        *&v23 = _NSConcreteStackBlock;
        *(&v23 + 1) = 0x40000000;
        v24 = sub_1000378CC;
        v25 = &unk_100082EE8;
        v26 = Mutable;
        v27.length = CFArrayGetCount(v2);
        v27.location = 0;
        CFArrayApplyFunction(v2, v27, sub_100037A04, &v23);
        if (!Mutable)
        {
          goto LABEL_19;
        }

        if (CFDataGetLength(Mutable) >= 1)
        {
          if (!v11)
          {
            v12 = *(v1 + 40);
            v13 = CFDataGetBytePtr(Mutable);
            v14 = CFDataGetLength(Mutable);
            if (!(v14 >> 31))
            {
              v11 = sqlite3_bind_blob(v12, 3, v13, v14, 0xFFFFFFFFFFFFFFFFLL);
              CFRelease(Mutable);
              if (!v11)
              {
                v11 = sqlite3_step(*(v1 + 40));
              }

LABEL_16:
              v5 = sub_10003794C(*(v1 + 40), v11);
              if (!v5)
              {
                goto LABEL_23;
              }

              goto LABEL_17;
            }

            v11 = 18;
          }

          CFRelease(Mutable);
          goto LABEL_16;
        }

        goto LABEL_30;
      }

      v11 = sqlite3_bind_blob(v8, 1, BytePtr, Length, 0xFFFFFFFFFFFFFFFFLL);
      CFRelease(Mutable);
      if (v11)
      {
        if (v2)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v11 = sqlite3_bind_double(*(v1 + 40), 2, v4);
        if (v2)
        {
          goto LABEL_9;
        }
      }
    }

LABEL_19:
    v15 = 7;
    goto LABEL_20;
  }

LABEL_17:
  v15 = v5;
LABEL_20:
  v16 = sub_1000027AC("SecError");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = sqlite3_errmsg(*(v1 + 8));
    LODWORD(v23) = 136315138;
    *(&v23 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "caissuer cache add failed: %s", &v23, 0xCu);
  }

  sub_100054DC0(3, 2, v15);
LABEL_23:
  v18 = qword_100092D30;
  v19 = sub_10003799C(qword_100092D30);
  if (v19)
  {
    v20 = v19;
    v21 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = sqlite3_errmsg(*(v18 + 8));
      LODWORD(v23) = 136315138;
      *(&v23 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "caissuer cache flush failed: %s", &v23, 0xCu);
    }

    sub_100054DC0(3, 2, v20);
  }
}

uint64_t sub_100037864(uint64_t a1)
{
  if (*(a1 + 64))
  {
    return 0;
  }

  v3 = sqlite3_step(*(a1 + 24));
  if (v3 == 101)
  {
    v3 = 0;
    *(a1 + 64) = 1;
  }

  LODWORD(result) = sqlite3_reset(*(a1 + 24));
  if (result)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    return result;
  }

  else
  {
    return v3;
  }
}

void sub_1000378CC(uint64_t a1, SecCertificateRef certificate)
{
  v3 = SecCertificateCopyData(certificate);
  if (v3)
  {
    v4 = v3;
    v5 = *(a1 + 32);
    BytePtr = CFDataGetBytePtr(v3);
    Length = CFDataGetLength(v4);
    CFDataAppendBytes(v5, BytePtr, Length);

    CFRelease(v4);
  }
}

uint64_t sub_10003794C(sqlite3_stmt *a1, unsigned int a2)
{
  if ((a2 & 0xFFFFFFFE) == 0x64)
  {
    v3 = 0;
  }

  else
  {
    v3 = a2;
  }

  v4 = sqlite3_reset(a1);
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v3 = v4;
  }

  LODWORD(result) = sqlite3_clear_bindings(a1);
  if (v3)
  {
    v7 = 1;
  }

  else
  {
    v7 = result == 0;
  }

  if (v7)
  {
    return v3;
  }

  else
  {
    return result;
  }
}

uint64_t sub_10003799C(uint64_t a1)
{
  if (*(a1 + 64) != 1)
  {
    return 0;
  }

  v2 = sqlite3_step(*(a1 + 32));
  if (v2 == 101)
  {
    v2 = 0;
    *(a1 + 64) = 0;
  }

  LODWORD(result) = sqlite3_reset(*(a1 + 32));
  if (result)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    return result;
  }

  else
  {
    return v2;
  }
}

void sub_100037A20(id a1, const char *a2)
{
  v3 = malloc_type_calloc(0x48uLL, 1uLL, 0x102004054A807FDuLL);
  if (!v3)
  {
    goto LABEL_39;
  }

  v4 = dispatch_queue_create("caissuercache", 0);
  *v3 = v4;
  if (!v4)
  {
    v5 = -108;
    goto LABEL_6;
  }

  v5 = sqlite3_open_v2(a2, v3 + 1, 4194310, 0);
  if (v5 != 14)
  {
LABEL_24:
    if (v5)
    {
      goto LABEL_6;
    }

    *(v3 + 64) = 0;
    v13 = sqlite3_prepare_v2(v3[1], "BEGIN EXCLUSIVE TRANSACTION", 28, v3 + 3, 0);
    if (!v13)
    {
      v13 = sqlite3_prepare_v2(v3[1], "COMMIT TRANSACTION", 19, v3 + 4, 0);
      if (!v13)
      {
        v5 = sqlite3_prepare_v2(v3[1], "DELETE FROM issuers", 20, v3 + 2, 0);
        if (v5 == 1)
        {
          v13 = sub_100037864(v3);
          if (v13)
          {
            goto LABEL_47;
          }

          errmsg = 0;
          v5 = sqlite3_exec(v3[1], "CREATE TABLE issuers(uri BLOB PRIMARY KEY,expires DOUBLE NOT NULL,certificate BLOB NOT NULL);CREATE INDEX iexpires ON issuers(expires);", 0, 0, &errmsg);
          if (errmsg)
          {
            v14 = sub_1000027AC("SecError");
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              __b[0] = 136315138;
              *&__b[1] = errmsg;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "caissuer db CREATE TABLES: %s", __b, 0xCu);
            }

            sqlite3_free(errmsg);
          }

          if (v5)
          {
            goto LABEL_6;
          }

          v5 = sqlite3_prepare_v2(v3[1], "DELETE FROM issuers", 20, v3 + 2, 0);
        }

        if (v5)
        {
          goto LABEL_6;
        }

        v13 = sqlite3_prepare_v2(v3[1], "INSERT OR REPLACE INTO issuers (uri,expires,certificate) VALUES (?,?,?)", 72, v3 + 5, 0);
        if (!v13)
        {
          v13 = sqlite3_prepare_v2(v3[1], "SELECT certificate FROM issuers WHERE uri=?", 44, v3 + 6, 0);
          if (!v13)
          {
            v13 = sqlite3_prepare_v2(v3[1], "SELECT certificate FROM issuers WHERE uri=? and expires>?", 58, v3 + 7, 0);
            if (!v13)
            {
              goto LABEL_39;
            }
          }
        }
      }
    }

LABEL_47:
    v5 = v13;
    goto LABEL_6;
  }

  v6 = strlen(a2);
  if (v6 - 1025 >= 0xFFFFFFFFFFFFFC00)
  {
    v8 = v6;
    memset(__b, 170, 0x400uLL);
    __memcpy_chk();
    v9 = v8 - 1;
    do
    {
      if (!v9)
      {
        goto LABEL_23;
      }

      v10 = v9;
      v11 = *(__b + v9--);
    }

    while (v11 != 47);
    *(__b + v10) = 0;
    if (mkdir(__b, 0x1FFu))
    {
      v12 = *__error();
      if (v12 > 19)
      {
        if (v12 <= 29)
        {
          if (v12 == 20)
          {
            goto LABEL_5;
          }

          if (v12 != 28)
          {
            goto LABEL_45;
          }

LABEL_43:
          v5 = 13;
          goto LABEL_6;
        }

        if (v12 == 69)
        {
          goto LABEL_43;
        }

        if (v12 == 30)
        {
          v5 = 8;
          goto LABEL_6;
        }

LABEL_45:
        v5 = 2;
        goto LABEL_6;
      }

      if (v12 == 5)
      {
        v5 = 10;
        goto LABEL_6;
      }

      if (v12 == 13)
      {
        v5 = 3;
        goto LABEL_6;
      }

      if (v12 != 17)
      {
        goto LABEL_45;
      }
    }

LABEL_23:
    v5 = sqlite3_open(a2, v3 + 1);
    goto LABEL_24;
  }

LABEL_5:
  v5 = 14;
LABEL_6:
  sub_100054DC0(3, 0, v5);
  if (*v3)
  {
    dispatch_release(*v3);
  }

  v7 = v3[1];
  if (v7)
  {
    sqlite3_close(v7);
  }

  free(v3);
  v3 = 0;
LABEL_39:
  qword_100092D30 = v3;
}

void sub_100037DC4(uint64_t a1)
{
  v2 = qword_100092D30;
  v3 = *(a1 + 48);
  v4 = CFURLCreateData(kCFAllocatorDefault, *(a1 + 40), 0x8000100u, 0);
  Mutable = v4;
  if (!v4)
  {
    goto LABEL_26;
  }

  if (CFDataGetLength(v4) >= 1)
  {
    v6 = 56;
    if (v3)
    {
      v6 = 48;
    }

    v7 = *(v2 + v6);
    BytePtr = CFDataGetBytePtr(Mutable);
    Length = CFDataGetLength(Mutable);
    if (Length >> 31)
    {
      v10 = 18;
    }

    else
    {
      v10 = sqlite3_bind_blob(v7, 1, BytePtr, Length, 0xFFFFFFFFFFFFFFFFLL);
    }

    CFRelease(Mutable);
    if ((v3 & 1) == 0)
    {
      Current = CFAbsoluteTimeGetCurrent();
      v10 = sqlite3_bind_double(v7, 2, Current);
    }

    if (!v10)
    {
      v10 = sqlite3_step(v7);
    }

    if (v10 == 100)
    {
      v12 = sqlite3_column_blob(v7, 0);
      v13 = sqlite3_column_bytes(v7, 0);
      if (v12 && v13 != 0)
      {
        v19 = v13;
        Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
        if (v19 >= 1)
        {
          v20 = &v12[v19];
          do
          {
            v21 = SecCertificateCreateWithBytes();
            if (!v21)
            {
              break;
            }

            v22 = v21;
            CFArrayAppendValue(Mutable, v21);
            v12 += SecCertificateGetLength();
            v19 -= SecCertificateGetLength();
            CFRelease(v22);
          }

          while (v12 < v20);
        }

        if (CFArrayGetCount(Mutable) > 0 || !Mutable)
        {
LABEL_19:
          v15 = sub_10003794C(v7, v10);
          if (!v15)
          {
            goto LABEL_26;
          }

          v16 = v15;
          if (v15 == 101)
          {
            goto LABEL_24;
          }

          goto LABEL_21;
        }

        CFRelease(Mutable);
      }
    }

    Mutable = 0;
    goto LABEL_19;
  }

  CFRelease(Mutable);
  Mutable = 0;
  v16 = 7;
LABEL_21:
  v17 = sub_1000027AC("SecError");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = sqlite3_errmsg(*(v2 + 8));
    v23 = 136315138;
    v24 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "caissuer cache lookup failed: %s", &v23, 0xCu);
  }

  sub_100054DC0(3, 3, v16);
LABEL_24:
  if (Mutable)
  {
    CFRelease(Mutable);
    Mutable = 0;
  }

LABEL_26:
  *(*(*(a1 + 32) + 8) + 24) = Mutable;
}

void sub_100038080(id a1)
{
  v1 = qword_100092D30;
  v2 = sub_100037864(qword_100092D30);
  if (v2)
  {
    goto LABEL_6;
  }

  v3 = sub_1000027AC("caissuercache");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "clearing CAIssuer cache", &v8, 2u);
  }

  v4 = sqlite3_step(*(v1 + 16));
  v2 = sub_10003794C(*(v1 + 16), v4);
  if (v2 || (v2 = sub_10003799C(v1)) != 0)
  {
LABEL_6:
    v5 = v2;
    v6 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = sqlite3_errmsg(*(v1 + 8));
      v8 = 136315138;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "caissuer cache delete failed: %s", &v8, 0xCu);
    }

    sub_100054DC0(3, 2, v5);
  }
}

uint64_t sub_100038934(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003894C(uint64_t a1)
{
  v2 = [*(a1 + 32) callback];
  v3 = *(*(*(a1 + 40) + 8) + 24);
  v4 = *(*(*(a1 + 48) + 8) + 40);

  return v2(v3, v4);
}

void sub_10003899C(uint64_t a1)
{
  v2 = [*(a1 + 32) URIs];
  v3 = sub_100038A34(0, v2, 1);

  ([*(a1 + 32) callback])(*(*(*(a1 + 40) + 8) + 24), v3);
  if (v3)
  {

    CFRelease(v3);
  }
}

id sub_100038A34(uint64_t a1, CFArrayRef theArray, char a3)
{
  v3 = theArray;
  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v6 = Count;
    v7 = 0;
    v23 = v32;
    v24 = a1;
    v25 = v3;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v7);
      v9 = CFURLCopyScheme(ValueAtIndex);
      if (v9)
      {
        v10 = v9;
        if (CFEqual(@"http", v9))
        {
          if (qword_100092D28 != -1)
          {
            dispatch_once(&qword_100092D28, &stru_100082DE0);
          }

          *&v27 = 0;
          *(&v27 + 1) = &v27;
          v28 = 0x2000000000uLL;
          if (qword_100092D30)
          {
            v11 = *qword_100092D30;
            block[0] = _NSConcreteStackBlock;
            block[1] = 0x40000000;
            v32[0] = sub_100037DC4;
            v32[1] = &unk_100082E08;
            v32[2] = &v27;
            v32[3] = ValueAtIndex;
            v33 = a3;
            dispatch_sync(v11, block);
            v12 = *(*(&v27 + 1) + 24);
          }

          else
          {
            v12 = 0;
          }

          _Block_object_dispose(&v27, 8);
          if (a1)
          {
            NormalizedIssuerContent = SecCertificateGetNormalizedIssuerContent();
            v14 = +[NSMutableArray array];
            v27 = 0u;
            v28 = 0u;
            v29 = 0u;
            v30 = 0u;
            v15 = v12;
            v16 = [v15 countByEnumeratingWithState:&v27 objects:block count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v28;
              do
              {
                for (i = 0; i != v17; i = i + 1)
                {
                  if (*v28 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v20 = *(*(&v27 + 1) + 8 * i);
                  NormalizedSubjectContent = SecCertificateGetNormalizedSubjectContent();
                  if (NormalizedIssuerContent && NormalizedSubjectContent && CFEqual(NormalizedIssuerContent, NormalizedSubjectContent))
                  {
                    [v14 addObject:v20];
                  }
                }

                v17 = [v15 countByEnumeratingWithState:&v27 objects:block count:16];
              }

              while (v17);
            }

            if ([v14 count])
            {
              v12 = v14;
            }

            else
            {
              v12 = 0;
            }

            v3 = v25;

            a1 = v24;
          }

          if (v12)
          {
            CFRelease(v10);
            return v12;
          }
        }

        CFRelease(v10);
      }

      ++v7;
    }

    while (v7 != v6);
  }

  return 0;
}

void sub_100038DB8(id a1)
{
  v1 = objc_alloc_init(CAIssuerDelegate);
  v2 = qword_100092D40;
  qword_100092D40 = v1;

  v3 = [TrustURLSessionCache alloc];
  qword_100092D38 = [(TrustURLSessionCache *)v3 initWithDelegate:qword_100092D40];

  _objc_release_x1();
}

uint64_t sub_100038E20(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

CFStringRef sub_100038E54(uint64_t a1)
{
  sub_1000264DC();
  v2 = *(a1 + 16);

  return CFCopyDescription(v2);
}

uint64_t sub_100038E94(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

__CFString *sub_100038EC8(void *a1)
{
  sub_1000264DC();

  return sub_100038F00(a1);
}

__CFString *sub_100038F00(void *a1)
{
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  v3 = CFGetTypeID(a1);
  v4 = CFCopyTypeIDDescription(v3);
  CFStringAppendFormat(Mutable, 0, @"<%@ certs: ", v4);
  CFRelease(v4);
  if (a1[2] >= 1)
  {
    v5 = 0;
    do
    {
      if (v5)
      {
        CFStringAppend(Mutable, @", ");
      }

      v6 = CFCopyDescription(a1[v5 + 17]);
      CFStringAppend(Mutable, v6);
      CFRelease(v6);
      ++v5;
    }

    while (v5 < a1[2]);
  }

  CFStringAppend(Mutable, @" >");
  return Mutable;
}

void sub_100038FF0(uint64_t a1, CFDictionaryRef theDict)
{
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = 1;
  }

  else
  {
    v4 = *(a1 + 40);
    Value = CFDictionaryGetValue(theDict, kSecCARevocationSPKIHashKey);
    if (Value && v4 && *(v4 + 16) >= 2)
    {
      v6 = Value;
      v3 = 0;
      v7 = v4 + 144;
      v8 = 1;
      do
      {
        if (*v7)
        {
          v9 = *(*v7 + 16);
        }

        v10 = SecCertificateCopySubjectPublicKeyInfoSHA256Digest();
        if (v10)
        {
          v11 = v10;
          v12 = CFEqual(v6, v10);
          CFRelease(v11);
          if (v12)
          {
            if (v8 > *(v4 + 72))
            {
              *(v4 + 72) = v8;
            }

            v3 = 1;
          }
        }

        ++v8;
        v7 += 8;
      }

      while (v8 < *(v4 + 16));
    }

    else
    {
      v3 = 0;
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = v3 & 1;
}

uint64_t sub_100039114(uint64_t a1, uint64_t a2)
{
  if (DEROidCompare(a1, &oidAnyPolicy))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  if (v4 > 9)
  {
    return 0;
  }

  if (v4)
  {
    for (i = 0; !DEROidCompare(a1, *(a2 + 16) + i); i += 32)
    {
      if (!--v4)
      {
        return 1;
      }
    }

    if (*(a1 + 32))
    {
      sub_100018B84((a1 + 32));
    }

    *(*(a1 + 48) + 32) = *(a1 + 40);
    sub_100009D40(a1);
  }

  return 1;
}

CFMutableDictionaryRef sub_1000391B4(uint64_t a1, uint64_t a2)
{
  result = DEROidCompare(a1, &oidAnyPolicy);
  if (result)
  {
    v5 = *(a2 + 8);
    if (v5 > 9)
    {
      return 0;
    }

    result = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (result)
    {
      v6 = result;
      if (!v5)
      {
LABEL_19:
        context[0] = _NSConcreteStackBlock;
        context[1] = 0x40000000;
        context[2] = sub_1000393CC;
        context[3] = &unk_100083178;
        context[4] = a1;
        CFDictionaryApplyFunction(v6, sub_100039510, context);
        CFRelease(v6);
        return 1;
      }

      v7 = 0;
      while (1)
      {
        v8 = *(a2 + 16);
        v9 = *(v8 + v7 + 8);
        if (v9 < 0)
        {
          goto LABEL_14;
        }

        v10 = *(v8 + v7 + 24);
        if (v10 < 0)
        {
          goto LABEL_14;
        }

        v11 = (v8 + v7);
        v12 = v11[2];
        v13 = CFDataCreateWithBytesNoCopy(0, *v11, v9, kCFAllocatorNull);
        v14 = CFDataCreateWithBytesNoCopy(0, v12, v10, kCFAllocatorNull);
        Value = CFDictionaryGetValue(v6, v13);
        if (Value)
        {
          CFArrayAppendValue(Value, v14);
          if (!v13)
          {
            goto LABEL_12;
          }
        }

        else
        {
          Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
          if (!Mutable)
          {
            CFRelease(v6);
            if (v13)
            {
              CFRelease(v13);
            }

            if (v14)
            {
              CFRelease(v14);
            }

            return 0;
          }

          v17 = Mutable;
          CFArrayAppendValue(Mutable, v14);
          CFDictionarySetValue(v6, v13, v17);
          CFRelease(v17);
          if (!v13)
          {
            goto LABEL_12;
          }
        }

        CFRelease(v13);
LABEL_12:
        if (v14)
        {
          CFRelease(v14);
        }

LABEL_14:
        v7 += 32;
        if (!--v5)
        {
          goto LABEL_19;
        }
      }
    }
  }

  return result;
}

void sub_1000393CC(uint64_t a1, CFDataRef theData, const __CFArray *a3)
{
  if ((CFDataGetLength(theData) & 0x8000000000000000) == 0)
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    v8 = *(*(a1 + 32) + 16);
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = 0;
    context[0] = _NSConcreteStackBlock;
    context[1] = 0x40000000;
    context[2] = sub_10003952C;
    context[3] = &unk_100083158;
    context[4] = &v14;
    v18.length = CFArrayGetCount(a3);
    v18.location = 0;
    CFArrayApplyFunction(a3, v18, sub_1000390FC, context);
    v9 = *(a1 + 32);
    v10 = v15[3];
    v11 = *(v9 + 48);
    v12 = malloc_type_malloc(0x38uLL, 0x107004060FBFCD3uLL);
    v12[4] = 0;
    v12[5] = 0;
    *v12 = BytePtr;
    v12[1] = Length;
    v12[2] = v8;
    v12[3] = v10;
    v12[5] = *(v11 + 32);
    v12[6] = v11;
    *(v11 + 32) = v12;
    _Block_object_dispose(&v14, 8);
  }
}

CFIndex sub_10003952C(uint64_t a1, CFDataRef theData)
{
  result = CFDataGetLength(theData);
  if ((result & 0x8000000000000000) == 0)
  {
    v5 = malloc_type_malloc(0x18uLL, 0x1030040D5FA72FAuLL);
    *v5 = CFDataGetBytePtr(theData);
    result = CFDataGetLength(theData);
    v5[1] = result;
    v5[2] = *(*(*(a1 + 32) + 8) + 24);
    *(*(*(a1 + 32) + 8) + 24) = v5;
  }

  return result;
}

uint64_t sub_1000395B4(uint64_t a1, uint64_t a2)
{
  if (DEROidCompare(a1, &oidAnyPolicy))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  if ((v4 - 10) < 0xFFFFFFFFFFFFFFF7)
  {
    return 0;
  }

  v5 = 0;
  v6 = 16;
  do
  {
    v7 = *(a2 + 16);
    if (DEROidCompare(a1, v7 + v6 - 16))
    {
      v8 = malloc_type_malloc(0x18uLL, 0x1030040D5FA72FAuLL);
      *v8 = *(v7 + v6);
      v8[2] = v5;
      v5 = v8;
    }

    v6 += 32;
    --v4;
  }

  while (v4);
  if (!v5)
  {
    return 0;
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    do
    {
      v10 = v9[2];
      free(v9);
      v9 = v10;
    }

    while (v10);
  }

  *(a1 + 24) = v5;
  return 1;
}

__CFArray *sub_100039694(__CFArray *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = SecCertificateCopySHA256Digest();
    if (v2)
    {
      v3 = v2;
      v4 = CFGetTypeID(v2);
      if (v4 == CFDataGetTypeID() && (v5 = SecCertificateCopyAnchorLookupKey()) != 0)
      {
        v6 = v5;
        v1 = sub_1000077E0(v5, v3, @"sha2");
        CFRelease(v6);
      }

      else
      {
        v1 = 0;
      }

      CFRelease(v3);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

CFMutableArrayRef sub_10003972C(uint64_t a1, __CFArray *a2)
{
  if (sub_100008B24(a2, 1))
  {

    return CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  }

  else
  {
    valuePtr = 1;
    if ((SecCertificateIsSelfSignedCA() & 1) == 0)
    {
      valuePtr = 2;
    }

    v4 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (!v4)
    {
      return 0;
    }

    v5 = v4;
    v6 = sub_100039948(a2);
    if (v6)
    {
      v7 = v6;
      Count = CFArrayGetCount(v6);
      if (Count < 1)
      {
        Mutable = 0;
      }

      else
      {
        v9 = Count;
        Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
        if (Mutable)
        {
          for (i = 0; i != v9; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v7, i);
            if (ValueAtIndex)
            {
              v13 = ValueAtIndex;
              v14 = CFGetTypeID(ValueAtIndex);
              if (v14 == CFDictionaryGetTypeID())
              {
                Value = CFDictionaryGetValue(v13, @"type");
                if (Value)
                {
                  v16 = Value;
                  v17 = CFGetTypeID(Value);
                  if (v17 == CFStringGetTypeID() && CFStringCompare(v16, @"system", 0) == kCFCompareEqualTo)
                  {
                    v18 = sub_10000E97C();
                    if (v18)
                    {
                      v19 = v18;
                      v24.length = CFArrayGetCount(v18);
                      v24.location = 0;
                      CFArrayAppendArray(Mutable, v19, v24);
                      CFRelease(v19);
                    }
                  }
                }

                v20 = sub_1000399E0(v13, v5);
                if (v20)
                {
                  v21 = v20;
                  v25.length = CFArrayGetCount(v20);
                  v25.location = 0;
                  CFArrayAppendArray(Mutable, v21, v25);
                  CFRelease(v21);
                }
              }
            }
          }
        }
      }

      CFRelease(v5);
    }

    else
    {
      Mutable = 0;
      v7 = v5;
    }

    CFRelease(v7);
    return Mutable;
  }
}

__CFArray *sub_100039948(__CFArray *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = SecCertificateCopySubjectPublicKeyInfoSHA256Digest();
    if (v2)
    {
      v3 = v2;
      v4 = CFGetTypeID(v2);
      if (v4 == CFDataGetTypeID() && (v5 = SecCertificateCopyAnchorLookupKey()) != 0)
      {
        v6 = v5;
        v1 = sub_1000077E0(v5, v3, @"spki-sha2");
        CFRelease(v6);
      }

      else
      {
        v1 = 0;
      }

      CFRelease(v3);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

__CFArray *sub_1000399E0(const __CFDictionary *a1, const void *a2)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    Value = CFDictionaryGetValue(a1, @"oids");
    if (Value)
    {
      v6 = Value;
      v7 = CFGetTypeID(Value);
      if (v7 == CFArrayGetTypeID())
      {
        Count = CFArrayGetCount(v6);
        if (Count >= 1)
        {
          v9 = Count;
          for (i = 0; i != v9; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
            if (ValueAtIndex)
            {
              v12 = ValueAtIndex;
              v13 = CFGetTypeID(ValueAtIndex);
              if (v13 == CFStringGetTypeID())
              {
                v14 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                if (!v14)
                {
                  return Mutable;
                }

                v15 = v14;
                CFDictionaryAddValue(v14, @"kSecTrustSettingsPolicy", v12);
                CFDictionaryAddValue(v15, @"kSecTrustSettingsResult", a2);
                CFArrayAppendValue(Mutable, v15);
                CFRelease(v15);
              }
            }
          }
        }
      }
    }
  }

  return Mutable;
}

uint64_t sub_100039B24(uint64_t a1, __CFArray *a2, uint64_t a3)
{
  v5 = 1;
  if ((sub_100008B24(a2, 1) & 1) == 0)
  {
    if (sub_10005BB8C(a2) && (v6 = sub_100039694(a2)) != 0)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFArrayGetTypeID() && (!a3 || !CFArrayGetValueAtIndex(*(a3 + 8), 0) ? (OidString = kSecPolicyAppleX509Basic) : (OidString = SecPolicyGetOidString()), (v10 = sub_10005BB30(v7, OidString)) != 0))
      {
        CFRelease(v10);
        v5 = 1;
      }

      else
      {
        v5 = 0;
      }

      CFRelease(v7);
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

CFMutableArrayRef sub_100039BF0(uint64_t a1, __CFArray *a2)
{
  if (sub_100008B24(a2, 1))
  {

    return CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  }

  else
  {
    if (!sub_10005BB8C(a2))
    {
      return 0;
    }

    valuePtr = 1;
    v4 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (!v4)
    {
      return 0;
    }

    v5 = v4;
    v6 = sub_100039948(a2);
    if (v6)
    {
      v7 = v6;
      Count = CFArrayGetCount(v6);
      if (Count < 1)
      {
        Mutable = 0;
      }

      else
      {
        v9 = Count;
        Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
        if (Mutable)
        {
          for (i = 0; i != v9; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v7, i);
            if (ValueAtIndex)
            {
              v13 = ValueAtIndex;
              v14 = CFGetTypeID(ValueAtIndex);
              if (v14 == CFDictionaryGetTypeID())
              {
                v15 = sub_1000399E0(v13, v5);
                if (v15)
                {
                  v16 = v15;
                  v19.length = CFArrayGetCount(v15);
                  v19.location = 0;
                  CFArrayAppendArray(Mutable, v16, v19);
                  CFRelease(v16);
                }
              }
            }
          }
        }
      }

      CFRelease(v5);
    }

    else
    {
      Mutable = 0;
      v7 = v5;
    }

    CFRelease(v7);
    return Mutable;
  }
}

uint64_t sub_100039D88(uint64_t a1, __SecCertificate *a2)
{
  NormalizedIssuerContent = SecCertificateGetNormalizedIssuerContent();
  v5 = NormalizedIssuerContent;
  if (NormalizedIssuerContent)
  {
    CFRetain(NormalizedIssuerContent);
  }

  error = 0;
  v6 = SecCertificateCopySerialNumberData(a2, &error);
  v7 = *(a1 + 24);
  v8 = SecItemCertificateExists();
  if (error)
  {
    CFErrorGetCode(error);
    if (error)
    {
      CFRelease(error);
    }
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v8;
}

void sub_100039E34(uint64_t a1, const __CFData *a2)
{
  v3 = SecCertificateCreateWithData(kCFAllocatorDefault, a2);
  if (v3)
  {
    v4 = v3;
    CFArrayAppendValue(*(a1 + 32), v3);

    CFRelease(v4);
  }
}

id sub_100039EB0(CFTypeRef *a1)
{
  if (sub_100003140())
  {
    v2 = sub_10001BE4C(a1);
    if (a1)
    {
      if (*a1)
      {
        v3 = sub_1000027AC("SecError");
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          *v10 = 0;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Failed to increment the extensions epoch.", v10, 2u);
        }

        return 0;
      }

      v5 = sub_10001BF8C();
      v6 = v2 + 1;
      v7 = v5;
      v8 = a1;
    }

    else
    {
      v5 = sub_10001BF8C();
      v6 = v2 + 1;
      v7 = v5;
      v8 = 0;
    }

    v4 = sub_100039FB0(v6, v7, v8);

    return v4;
  }

  sub_10001C2D4(-4, a1, @"exception counter not implemented in this environment");
  return 0;
}

id sub_100039FB0(uint64_t a1, void *a2, CFErrorRef *a3)
{
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = objc_opt_new();
  if (v7)
  {
    v8 = [NSNumber numberWithUnsignedInteger:1];
    [v7 setObject:v8 forKeyedSubscript:@"Version"];

    v9 = [NSNumber numberWithUnsignedLongLong:a1];
    [v7 setObject:v9 forKeyedSubscript:@"ExceptionResetCount"];

    v16 = 0;
    v10 = [v7 writeToClassDURL:v5 permissions:384 error:&v16];
    v11 = v16;
    if (v10)
    {
      v12 = sub_1000027AC("trust");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543618;
        v18 = @"ExceptionResetCount";
        v19 = 2114;
        v20 = v5;
        _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "'%{public}@' has been committed to permanent storage at '%{public}@'.", buf, 0x16u);
      }
    }

    else
    {
      v14 = sub_1000027AC("SecError");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = v5;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Failed to write to permanent storage at '%{public}@'.", buf, 0xCu);
      }

      if (a3)
      {
        *a3 = v11;
      }
    }
  }

  else
  {
    v13 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Failed to allocate memory for the exceptions epoch structure.", buf, 2u);
    }

    v10 = 0;
    if (a3)
    {
      *a3 = CFErrorCreate(0, kCFErrorDomainPOSIX, 12, 0);
    }
  }

  objc_autoreleasePoolPop(v6);
  return v10;
}

uint64_t sub_10003A240(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_10003A2E8;
  v6[3] = &unk_100083308;
  v6[5] = v3;
  v6[6] = a2;
  v6[4] = *(a1 + 32);
  result = sub_1000180E4(a2, 2, (v4 + 24), v6);
  *(*(*(a1 + 32) + 8) + 24) &= result;
  return result;
}

void sub_10003A2E8(void *a1, _BYTE *a2)
{
  v9 = 0;
  if ((sub_100004A60(a1[6], @"SELECT issuerNameHash FROM ocsp WHERE certStatus=0 LIMIT 1", &v9, 0) & 1) == 0 && CFErrorGetCode(v9) == 1)
  {
    v5 = a1[5];
    v4 = a1[6];
    v6 = *(v5 + 8);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 0x40000000;
    v8[2] = sub_10003A3E0;
    v8[3] = &unk_1000832E0;
    v7 = a1[4];
    v8[5] = v5;
    v8[6] = v4;
    v8[4] = v7;
    *(*(a1[4] + 8) + 24) &= sub_100004A60(v4, @"ALTER TABLE ocsp ADD COLUMN certStatus INTEGER NOT NULL DEFAULT 255", (v6 + 24), v8);
    *a2 = *(*(a1[4] + 8) + 24);
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

BOOL sub_10003A430(id a1, __OpaqueSecDb *a2, __OpaqueSecDbConnection *a3, BOOL a4, BOOL *a5, __CFError **a6)
{
  v7 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 1;
  err = 0;
  if ((sub_100004A60(a3, @"SELECT DISTINCT hashAlgorithm FROM ocsp WHERE serialNum=?", &err, 0) & 1) == 0 && CFErrorGetCode(err) == 1)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 0x40000000;
    v16[2] = sub_10003A638;
    v16[3] = &unk_1000832B8;
    v16[4] = &v18;
    v16[5] = a3;
    v16[6] = a6;
    v9 = sub_1000180E4(a3, 2, a6, v16);
    *(v19 + 24) &= v9;
  }

  if (err)
  {
    CFRelease(err);
  }

  if (v19[3])
  {
    v10 = 1;
  }

  else
  {
    v11 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = "Open";
      if (v7)
      {
        v12 = "Create";
      }

      if (a6)
      {
        v13 = *a6;
      }

      else
      {
        v13 = 0;
      }

      *buf = 136315394;
      v23 = v12;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s failed: %@", buf, 0x16u);
    }

    if (a6 && *a6)
    {
      Code = CFErrorGetCode(*a6);
    }

    else
    {
      Code = -2070;
    }

    sub_100054DC0(2, !v7, Code);
    v10 = *(v19 + 24);
  }

  _Block_object_dispose(&v18, 8);
  return v10 & 1;
}

uint64_t sub_10003A638(uint64_t a1, _BYTE *a2)
{
  result = sub_1000183E0(*(a1 + 40), @"CREATE TABLE ocsp(issuerNameHash BLOB NOT NULL,issuerPubKeyHash BLOB NOT NULL,serialNum BLOB NOT NULL,hashAlgorithm BLOB NOT NULL,responseId INTEGER NOT NULL,certStatus INTEGER NOT NULL DEFAULT 255);CREATE INDEX iResponseId ON ocsp(responseId);CREATE INDEX iserialNum ON ocsp(serialNum);CREATE INDEX iSNumDAlg ON ocsp(serialNum,hashAlgorithm);CREATE TABLE responses(responseId INTEGER PRIMARY KEY,ocspResponse BLOB NOT NULL,responderURI BLOB,expires DOUBLE NOT NULL,lastUsed DOUBLE NOT NULL);CREATE INDEX iexpires ON responses(expires);CREATE TRIGGER tocspdel BEFORE DELETE ON responses FOR EACH ROW BEGIN DELETE FROM ocsp WHERE responseId=OLD.responseId; END;", *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) &= result;
  *a2 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10003A694(void *a1, sqlite3_stmt *a2)
{
  v4 = *(a1[6] + 8);
  v5 = sqlite3_bind_int64(a2, 1, *(*(a1[5] + 8) + 24));
  *(*(a1[4] + 8) + 24) &= sub_100005AD8(v5, a2, (v4 + 24), @"bind_int64[%d]", 1);
  *(*(a1[4] + 8) + 24) &= sub_100005D40(a1[7], a2, (*(a1[6] + 8) + 24), 0);
  return *(*(a1[4] + 8) + 24);
}

uint64_t sub_10003A74C(uint64_t a1, uint64_t *a2)
{
  result = sub_1000110F0(a2, *(a1 + 40), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_10003A78C(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_10003A830;
  v3[3] = &unk_100083250;
  v3[4] = &v4;
  v3[5] = a1;
  sub_100010E60(v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_10003A830(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 40);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 1;
  v4 = *a2;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = sub_10003A978;
  v11[3] = &unk_100083530;
  v11[4] = &v12;
  v11[5] = &v16;
  v5 = sub_10001AF60(v4, &v19, v11);
  v6 = (v5 & v13[3]);
  *(v13 + 24) &= v5;
  v7 = v17[3];
  if (v6 == 1)
  {
    if (!v7)
    {
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  if (v7)
  {
LABEL_5:
    Code = CFErrorGetCode(v7);
    goto LABEL_7;
  }

  Code = -2070;
LABEL_7:
  sub_100054DC0(2, 2, Code);
  v9 = v17[3];
  if (v9)
  {
    if (v3 && !*v3)
    {
      *v3 = v9;
    }

    else
    {
      CFRelease(v9);
    }
  }

LABEL_12:
  v10 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  *(*(*(a1 + 32) + 8) + 24) = v10;
}

uint64_t sub_10003A978(uint64_t a1, uint64_t a2)
{
  result = sub_1000183E0(a2, @"DELETE FROM ocsp WHERE certStatus!=1; DELETE FROM responses WHERE responseId NOT IN (SELECT responseId FROM ocsp WHERE certStatus=1)", (*(*(a1 + 40) + 8) + 24));
  *(*(*(a1 + 32) + 8) + 24) &= result;
  return result;
}

uint64_t sub_10003A9E4(uint64_t a1, __CFCalendar *a2)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v11 = *(*(v5 + 8) + 24);
  SecCertificateNotValidBefore();
  v7 = v6;
  v8 = *(a1 + 40);
  SecCertificateNotValidAfter();
  result = CFCalendarGetComponentDifference(a2, v7, v9, 0, "M", &v11);
  *(*(*(a1 + 32) + 8) + 24) = v11;
  return result;
}

void sub_10003AA88(uint64_t a1, const __CFData *a2)
{
  v4 = NAN;
  v3 = sub_10001078C(a2, 0, *(a1 + 48), *(a1 + 56), *(a1 + 64), &v4, *(*(*(a1 + 32) + 8) + 24));
  if (v3)
  {
    sub_100010D44(*(a1 + 72), v3, v4);
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_10003AB00(uint64_t a1, const __CFData *a2)
{
  v4 = NAN;
  v3 = sub_10001078C(a2, 0, *(a1 + 48), *(a1 + 56), *(a1 + 64), &v4, *(*(*(a1 + 32) + 8) + 24));
  if (v3)
  {
    sub_100010D44(*(a1 + 72), v3, v4);
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_10003AB78(uint64_t a1)
{
  v2 = dispatch_time(0, 11000000000);
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10003AC1C;
  block[3] = &unk_100083610;
  block[4] = a1;
  dispatch_after(v2, global_queue, block);
}

uint64_t sub_10003AC1C(uint64_t a1)
{
  v2 = sub_1000027AC("OTATrust");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 32))
    {
      v3 = *(a1 + 32);
    }

    else
    {
      v3 = "Will exit trustd when all transactions are complete.";
    }

    v4 = mach_absolute_time() - qword_100092ED8;
    memset(v7, 170, 16);
    clock_gettime(_CLOCK_UPTIME_RAW, v7);
    v5 = *v7;
    *v7 = 136315650;
    *&v7[4] = v3;
    *&v7[12] = 2048;
    *&v7[14] = v4;
    v8 = 2048;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s uptime: %llu, system: %llus", v7, 0x20u);
  }

  return xpc_transaction_exit_clean();
}

void sub_10003B0F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(exception_object);
    v12 = sub_1000027AC("validupdate");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v11 description];
      v14 = [v13 UTF8String];
      LODWORD(a9) = 136315138;
      *(&a9 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s", &a9, 0xCu);
    }

    sub_100054C20(0, 4294967262);
    [v9 cancel];
    [v10 reschedule];

    objc_end_catch();
    JUMPOUT(0x10003B0B4);
  }

  _Unwind_Resume(exception_object);
}

void sub_10003B9D0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10003BA04(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10003BA1C(uint64_t a1)
{
  v2 = sub_1000027AC("validupdate");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Got SIGTERM, abandon all hope and clear transaction", v5, 2u);
  }

  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_10003BAA4(uint64_t a1)
{
  v2 = sub_1000027AC("validupdate");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    buf.st_dev = 134217984;
    *&buf.st_mode = CFAbsoluteTimeGetCurrent();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "update started at %f", &buf, 0xCu);
  }

  v3 = [*(*(*(a1 + 40) + 8) + 40) fileSystemRepresentation];
  v4.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v4.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&buf.st_blksize = v4;
  *buf.st_qspare = v4;
  buf.st_birthtimespec = v4;
  *&buf.st_size = v4;
  buf.st_mtimespec = v4;
  buf.st_ctimespec = v4;
  *&buf.st_uid = v4;
  buf.st_atimespec = v4;
  *&buf.st_dev = v4;
  v5 = open(v3, 0);
  if (v5 < 0)
  {
    v7 = *__error();
    if (v7)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

  v6 = v5;
  v7 = fstat(v5, &buf);
  if (v7)
  {
LABEL_7:
    close(v6);
LABEL_9:
    v9 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(*(a1 + 40) + 8) + 40);
      buf.st_dev = 138412546;
      *&buf.st_mode = v10;
      WORD2(buf.st_ino) = 1024;
      *(&buf.st_ino + 6) = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "failed to read %@ with error %d", &buf, 0x12u);
    }

    sub_100054C20(1, v7);
    [*(a1 + 32) reschedule];
    goto LABEL_12;
  }

  st_size = buf.st_size;
  if (buf.st_size > 2147483646)
  {
    v7 = 27;
    goto LABEL_7;
  }

  v13 = mmap(0, buf.st_size, 1, 2, v6, 0);
  v14 = v13;
  if (st_size < 0 || (v13 + 1) <= 1)
  {
    v7 = *__error();
    v15 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v62 = 136315394;
      *&v62[4] = v3;
      *&v62[12] = 1024;
      *&v62[14] = v7;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "unable to map %s (errno %d)", v62, 0x12u);
    }

    close(v6);
    if (v7)
    {
      if (v14)
      {
        if (munmap(v14, st_size))
        {
          v16 = sub_1000027AC("SecError");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *v62 = 134218496;
            *&v62[4] = st_size;
            *&v62[12] = 2048;
            *&v62[14] = v14;
            *&v62[22] = 1024;
            v63 = v7;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "unable to unmap %ld bytes at %p (error %d)", v62, 0x1Cu);
          }
        }
      }

      goto LABEL_9;
    }

LABEL_22:
    v17 = 0;
    goto LABEL_23;
  }

  v17 = CFDataCreateWithBytesNoCopy(0, v13, st_size, kCFAllocatorNull);
  close(v6);
LABEL_23:
  v18 = *(a1 + 80) == 0;
  if (v17)
  {
    v19 = *(*(*(a1 + 64) + 8) + 40);
    BytePtr = CFDataGetBytePtr(v17);
    Length = CFDataGetLength(v17);
    if (!BytePtr || Length < 5 || (v22 = bswap32(*BytePtr), v22 + 8 > Length) || (v23 = (BytePtr + 1), v24 = BytePtr + v22 + 4, v25 = bswap32(*v24), (v25 + v22) + 8 != Length) || (*&buf.st_dev = 0, (v26 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v24 + 4, v25, kCFAllocatorNull)) == 0))
    {
LABEL_51:
      v40 = sub_1000027AC("SecError");
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.st_dev) = 0;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "failed to verify valid update", &buf, 2u);
      }

      sub_100054C20(1, 4294899488);
      goto LABEL_54;
    }

    v27 = v26;
    v28 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v23, v22, kCFAllocatorNull);
    if (!v28)
    {
      v36 = 0;
      ApplePinned = 0;
      goto LABEL_41;
    }

    v29 = v28;
    ApplePinned = SecPolicyCreateApplePinned();
    v31 = SecCMSVerify();
    if (v31)
    {
      v32 = v31;
      v33 = sub_1000027AC("SecError");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *v62 = 67109120;
        *&v62[4] = v32;
        v34 = "failed to verify Valid Update: %d";
LABEL_33:
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, v34, v62, 8u);
      }
    }

    else
    {
      LODWORD(v57) = 0;
      if (!SecTrustGetTrustResult(*&buf.st_dev, &v57))
      {
        v36 = 1;
        if (v57 == 1 || v57 == 4)
        {
          goto LABEL_40;
        }

        v33 = sub_1000027AC("SecError");
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *v62 = 67109120;
          *&v62[4] = v57;
          v34 = "Valid Update SecTrustEvaluate failed with trust result %d\n";
          goto LABEL_33;
        }
      }
    }

    v36 = 0;
LABEL_40:
    CFRelease(v29);
LABEL_41:
    CFRelease(v27);
    if (*&buf.st_dev)
    {
      CFRelease(*&buf.st_dev);
    }

    if (ApplePinned)
    {
      CFRelease(ApplePinned);
    }

    if (v36)
    {
      v37 = sub_100047D28();
      v38 = v37;
      if (v19 && v37)
      {
        if (CFStringCompare(v37, v19, 1uLL))
        {
          v39 = sub_1000027AC("validupdate");
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            buf.st_dev = 138412546;
            *&buf.st_mode = v38;
            WORD2(buf.st_ino) = 2112;
            *(&buf.st_ino + 6) = v19;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "switching db source from %@ to %@", &buf, 0x16u);
          }
        }
      }

      else if (!v37)
      {
LABEL_70:
        *v62 = 0;
        *&v62[8] = v62;
        *&v62[16] = 0x2000000000;
        LOBYTE(v63) = 1;
        v57 = 0;
        v58 = &v57;
        v59 = 0x2000000000;
        v60 = 0;
        *&buf.st_dev = _NSConcreteStackBlock;
        buf.st_ino = 0x40000000;
        *&buf.st_uid = sub_100047DCC;
        *&buf.st_rdev = &unk_100084128;
        buf.st_atimespec.tv_sec = v62;
        buf.st_atimespec.tv_nsec = &v57;
        LOBYTE(buf.st_ctimespec.tv_sec) = v18;
        buf.st_mtimespec.tv_sec = v19;
        buf.st_mtimespec.tv_nsec = v17;
        sub_100011BD4(&buf);
        sub_100047F9C(*&qword_100092E60);
        v56 = v58[3];
        if (v56)
        {
          CFRelease(v56);
        }

        _Block_object_dispose(&v57, 8);
        _Block_object_dispose(v62, 8);
        goto LABEL_54;
      }

      CFRelease(v38);
      goto LABEL_70;
    }

    goto LABEL_51;
  }

  v35 = sub_1000027AC("validupdate");
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.st_dev) = 0;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "invalid update data", &buf, 2u);
  }

LABEL_54:
  if (CFDataGetLength(v17) < 0)
  {
    v43 = 0;
    goto LABEL_58;
  }

  v41 = CFDataGetBytePtr(v17);
  v42 = CFDataGetLength(v17);
  v43 = munmap(v41, v42);
  if (v43)
  {
LABEL_58:
    v44 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = CFDataGetLength(v17);
      v46 = CFDataGetBytePtr(v17);
      buf.st_dev = 134218496;
      *&buf.st_mode = v45;
      WORD2(buf.st_ino) = 2048;
      *(&buf.st_ino + 6) = v46;
      HIWORD(buf.st_gid) = 1024;
      buf.st_rdev = v43;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "unable to unmap current update %ld bytes at %p (error %d)", &buf, 0x1Cu);
    }
  }

  if (v17)
  {
    CFRelease(v17);
  }

  [*(*(*(a1 + 72) + 8) + 40) closeFile];
  if (v3)
  {
    remove(v3, v47);
  }

  v48 = *(a1 + 32);
  v49 = *(v48 + 48);
  *(v48 + 48) = 0;

  v50 = *(a1 + 32);
  v51 = *(v50 + 56);
  *(v50 + 56) = 0;

  v52 = *(a1 + 32);
  v53 = *(v52 + 40);
  *(v52 + 40) = 0;

  v54 = sub_1000027AC("validupdate");
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    Current = CFAbsoluteTimeGetCurrent();
    buf.st_dev = 134217984;
    *&buf.st_mode = Current;
    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "update finished at %f", &buf, 0xCu);
  }

  qword_100092E58 = 0;
  (*(*(*(a1 + 32) + 16) + 16))();
LABEL_12:
  dispatch_source_cancel(*(*(*(a1 + 48) + 8) + 40));
  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = 0;
}

void sub_10003C90C(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  [*(a1 + 32) updateScheduled];
  if (v3 == 0.0)
  {
    memset(buf, 170, 16);
    v22 = 0xAAAAAAAAAAAAAAAALL;
    v23 = 16;
    *v27 = 0x1500000001;
    time(&v22);
    v4 = sysctl(v27, 2u, buf, &v23, 0, 0);
    if (*buf)
    {
      v5 = v4 == -1;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = v22 - *buf;
    }

    if (v6 <= 0xB3)
    {
      *&qword_100092E60 = Current + (180 - v6);
      qword_100092E58 = 0;
      v15 = sub_1000027AC("validupdate");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = qword_100092E60;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "postponing update until %f", buf, 0xCu);
      }
    }

    else
    {
      [*(a1 + 32) setUpdateScheduled:Current];
      v7 = sub_1000027AC("validupdate");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        [*(a1 + 32) updateScheduled];
        *buf = 134217984;
        *&buf[4] = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "scheduling update at %f", buf, 0xCu);
      }

      v9 = os_transaction_create();
      if (qword_100092D88 != -1)
      {
        dispatch_once(&qword_100092D88, &stru_1000836A0);
      }

      v10 = [*(a1 + 32) backgroundSession];

      v11 = *(a1 + 32);
      if (v10)
      {
        v12 = [v11 backgroundSession];
        v13 = [v12 delegate];

        v14 = [*(a1 + 48) copy];
        [v13 setCurrentUpdateServer:v14];
      }

      else
      {
        [v11 createSessions:*(a1 + 40) forServer:*(a1 + 48)];
      }

      v16 = [NSString stringWithFormat:@"https://%@/g%ld/v%ld", *(a1 + 48), sub_1000511C0(), *(a1 + 56)];
      v15 = [NSURL URLWithString:v16];

      v17 = [*(a1 + 32) backgroundSession];
      v18 = [v17 dataTaskWithURL:v15];

      v19 = [NSString stringWithFormat:@"%ld", *(a1 + 56)];
      [v18 setTaskDescription:v19];

      [v18 resume];
      v20 = sub_1000027AC("validupdate");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = CFAbsoluteTimeGetCurrent();
        *buf = 138412802;
        *&buf[4] = v18;
        *&buf[12] = 2048;
        *&buf[14] = v21;
        v25 = 2112;
        v26 = v15;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "scheduled background data task %@ at %f URL:%@", buf, 0x20u);
      }
    }
  }
}

void sub_10003CCA0(id a1)
{
  v1 = objc_autoreleasePoolPush();
  [NSURLSession _obliterateAllBackgroundSessionsWithCompletionHandler:&stru_1000836C0];

  objc_autoreleasePoolPop(v1);
}

void sub_10003CCEC(id a1)
{
  v1 = sub_1000027AC("validupdate");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "removing all old sessions for trustd", v2, 2u);
  }
}