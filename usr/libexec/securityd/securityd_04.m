void sub_100084C7C(id a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = objc_alloc_init(SecuritydXPCServerListener);
  v3 = qword_10039DC40;
  qword_10039DC40 = v2;

  objc_autoreleasePoolPop(v1);
}

void sub_100084F20(uint64_t a1)
{
  v1 = qword_10039DC50;
  context[0] = _NSConcreteStackBlock;
  context[1] = 0x40000000;
  context[2] = sub_100084FC4;
  context[3] = &unk_1003354E0;
  context[4] = *(a1 + 32);
  v3.length = CFArrayGetCount(qword_10039DC50);
  v3.location = 0;
  CFArrayApplyFunction(v1, v3, sub_100084F08, context);
}

void sub_100084FC4(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFSetGetTypeID())
    {
      v5 = sub_10008513C(cf);
      CFArrayAppendValue(*(a1 + 32), v5);
      if (v5)
      {

        CFRelease(v5);
      }

      return;
    }

    v6 = CFGetTypeID(cf);
    if (v6 == CFDictionaryGetTypeID())
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      context[0] = _NSConcreteStackBlock;
      context[1] = 0x40000000;
      context[2] = sub_1000851EC;
      context[3] = &unk_1003354C0;
      context[4] = Mutable;
      CFDictionaryApplyFunction(cf, sub_10008527C, context);
      CFArrayAppendValue(*(a1 + 32), Mutable);
      return;
    }
  }

  v8 = *(a1 + 32);

  CFArrayAppendValue(v8, kCFNull);
}

CFMutableArrayRef sub_10008513C(const __CFSet *a1)
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  context[0] = _NSConcreteStackBlock;
  context[1] = 0x40000000;
  context[2] = sub_100085298;
  context[3] = &unk_1003355A0;
  context[4] = Mutable;
  CFSetApplyFunction(a1, sub_100084F08, context);
  return Mutable;
}

void sub_1000851EC(uint64_t a1, const void *a2, CFTypeRef cf)
{
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFSetGetTypeID())
    {
      v7 = sub_10008513C(cf);
      CFDictionaryAddValue(*(a1 + 32), a2, v7);
      if (v7)
      {

        CFRelease(v7);
      }
    }
  }
}

void sub_1000852A0(const __CFDictionary *a1, int a2)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  context[0] = _NSConcreteStackBlock;
  context[1] = 0x40000000;
  context[2] = sub_100085388;
  context[3] = &unk_100335520;
  context[4] = Mutable;
  CFDictionaryApplyFunction(a1, sub_10008527C, context);
  if (CFDictionaryGetCount(Mutable) >= 1)
  {
    sub_10008557C(a2, Mutable);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_100085388(uint64_t a1, const __CFNumber *cf, const __CFString *a3)
{
  v4 = cf;
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFStringGetTypeID())
    {
      if (CFEqual(v4, @"Emergency"))
      {
        v7 = 0;
LABEL_22:
        valuePtr = v7;
        v4 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
        goto LABEL_23;
      }

      if (CFEqual(v4, @"Alert"))
      {
        v7 = 1;
        goto LABEL_22;
      }

      if (CFEqual(v4, @"Critical"))
      {
        v7 = 2;
        goto LABEL_22;
      }

      if (CFEqual(v4, @"Error"))
      {
        v7 = 3;
        goto LABEL_22;
      }

      if (CFEqual(v4, @"Warning"))
      {
        v7 = 4;
        goto LABEL_22;
      }

      if (CFEqual(v4, @"Notice"))
      {
        v7 = 5;
        goto LABEL_22;
      }

      if (CFEqual(v4, @"Info"))
      {
        v7 = 6;
        goto LABEL_22;
      }

      if (CFEqual(v4, @"Debug"))
      {
        v7 = 7;
        goto LABEL_22;
      }
    }

    else
    {
      v8 = CFGetTypeID(v4);
      if (v8 == CFNumberGetTypeID())
      {
        CFRetain(v4);
        if (a3)
        {
          goto LABEL_24;
        }

        goto LABEL_29;
      }
    }

    v4 = 0;
    if (a3)
    {
      goto LABEL_24;
    }

LABEL_29:
    if (!v4)
    {
      return;
    }

    goto LABEL_30;
  }

LABEL_23:
  if (!a3)
  {
    goto LABEL_29;
  }

LABEL_24:
  v9 = CFGetTypeID(a3);
  if (v9 != CFStringGetTypeID())
  {
    goto LABEL_29;
  }

  v10 = sub_100085724(a3);
  v11 = v10;
  if (v4 && v10)
  {
    CFDictionaryAddValue(*(a1 + 32), v4, v10);
    CFRelease(v4);
    v4 = v11;
LABEL_30:
    CFRelease(v4);
    return;
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v4 = v11;
  if (v11)
  {
    goto LABEL_30;
  }
}

void sub_10008557C(int a1, uint64_t a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = sub_10008561C;
  v2[3] = &unk_1003355E0;
  v3 = a1;
  v2[4] = a2;
  if (qword_10039DC70 != -1)
  {
    dispatch_once(&qword_10039DC70, &stru_100335580);
  }

  dispatch_barrier_sync(qword_10039DC68, v2);
}

void sub_10008561C(uint64_t a1)
{
  Mutable = qword_10039DC50;
  if (qword_10039DC50)
  {
    v3 = kCFNull;
  }

  else
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 4, &kCFTypeArrayCallBacks);
    v3 = kCFNull;
    v4 = 5;
    do
    {
      CFArrayAppendValue(Mutable, kCFNull);
      --v4;
    }

    while (v4);
    qword_10039DC50 = Mutable;
  }

  CFArraySetValueAtIndex(Mutable, *(a1 + 40), *(a1 + 32));
  v5 = qword_10039DC50;
  v9.length = CFArrayGetCount(qword_10039DC50);
  v9.location = 0;
  CountOfValue = CFArrayGetCountOfValue(v5, v9, v3);
  if (CountOfValue == CFArrayGetCount(v5))
  {
    v7 = qword_10039DC50;
    if (qword_10039DC50)
    {
      qword_10039DC50 = 0;

      CFRelease(v7);
    }
  }
}

__CFSet *sub_100085724(const __CFString *a1)
{
  Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  HasPrefix = CFStringHasPrefix(a1, @"-");
  if (HasPrefix)
  {
    Length = CFStringGetLength(@"-");
    v11.length = CFStringGetLength(a1) - 1;
    v11.location = Length;
    v5 = CFStringCreateWithSubstring(kCFAllocatorDefault, a1, v11);
    a1 = v5;
  }

  else
  {
    v5 = 0;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(kCFAllocatorDefault, a1, @",");
  v7 = ArrayBySeparatingStrings;
  if (ArrayBySeparatingStrings)
  {
    context[0] = _NSConcreteStackBlock;
    context[1] = 0x40000000;
    context[2] = sub_1000858D8;
    context[3] = &unk_1003355C0;
    context[4] = Mutable;
    v10.length = CFArrayGetCount(ArrayBySeparatingStrings);
    v10.location = 0;
    CFArrayApplyFunction(v7, v10, sub_100084F08, context);
  }

  CFSetRemoveValue(Mutable, @"none");
  CFSetRemoveValue(Mutable, &stru_100348050);
  if (CFSetContainsValue(Mutable, @"all"))
  {
    CFSetRemoveAllValues(Mutable);
    if (HasPrefix)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (HasPrefix)
  {
LABEL_8:
    CFSetSetValue(Mutable, @"-");
  }

LABEL_9:
  if (v7)
  {
    CFRelease(v7);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return Mutable;
}

void sub_1000858D8(uint64_t a1, const __CFString *cf)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFStringGetTypeID())
    {
      MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, cf);
      CFStringTrimWhitespace(MutableCopy);
      CFSetSetValue(*(a1 + 32), MutableCopy);
      if (MutableCopy)
      {

        CFRelease(MutableCopy);
      }
    }
  }
}

void sub_100085974(const __CFString *a1, int a2)
{
  v3 = sub_100085724(a1);
  sub_10008557C(a2, v3);
  if (v3)
  {

    CFRelease(v3);
  }
}

void sub_1000859CC(uint64_t a1, const char *a2)
{
  v2 = qword_10039DC60;
  v3 = *(a1 + 32);
  v4 = os_log_create("com.apple.securityd", a2);

  CFDictionaryAddValue(v2, v3, v4);
}

CFDictionaryRef sub_100085A1C(uint64_t a1)
{
  values = kCFBooleanTrue;
  keys = @"debug";
  result = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  **(a1 + 32) = result;
  return result;
}

void sub_100085ABC(const __CFArray *a1, CFStringRef theString, const __CFString *a3, uint64_t a4)
{
  if (a1)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2000000000;
    MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, theString);
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2000000000;
    v10[3] = &stru_100348050;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = sub_100085C4C;
    v9[3] = &unk_100335708;
    v9[4] = &v11;
    v9[5] = v10;
    v16.length = CFArrayGetCount(a1);
    v16.location = 0;
    CFArrayApplyFunction(a1, v16, sub_100085CB0, v9);
    CFStringAppend(v12[3], a3);
    (*(a4 + 16))(a4, v12[3]);
    v7 = v12[3];
    if (v7)
    {
      v12[3] = 0;
      CFRelease(v7);
    }

    _Block_object_dispose(v10, 8);
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v8 = *(a4 + 16);

    v8(a4, @"null");
  }
}

void sub_100085CC8(const __CFSet *a1, uint64_t a2)
{
  if (a1)
  {
    Count = CFSetGetCount(a1);
    Mutable = CFArrayCreateMutable(0, Count, &kCFTypeArrayCallBacks);
    CFSetApplyFunction(a1, sub_100085DDC, Mutable);
    v8.length = CFArrayGetCount(Mutable);
    v8.location = 0;
    CFArraySortValues(Mutable, v8, sub_100085DD4, 0);
    sub_100085ABC(Mutable, @"{("), CFSTR(")}", a2);
    if (Mutable)
    {

      CFRelease(Mutable);
    }
  }

  else
  {
    v6 = *(a2 + 16);

    v6(a2, @"null");
  }
}

void sub_100085DDC(const __CFString *a1, __CFArray *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 == CFStringGetTypeID())
  {
    v5 = a2;
    v6 = a1;
LABEL_8:

    CFArrayAppendValue(v5, v6);
    return;
  }

  v7 = CFCopyDescription(a1);
  if (!v7)
  {
    v6 = @"null";
    v5 = a2;
    goto LABEL_8;
  }

  v8 = v7;
  CFArrayAppendValue(a2, v7);

  CFRelease(v8);
}

void sub_100085E84(id a1)
{
  qword_10039DCC0 = CFCalendarCreateWithIdentifier(kCFAllocatorDefault, kCFGregorianCalendar);
  v1 = CFTimeZoneCreateWithTimeIntervalFromGMT(kCFAllocatorDefault, 0.0);
  CFCalendarSetTimeZone(qword_10039DCC0, v1);
  if (v1)
  {

    CFRelease(v1);
  }
}

CFStringRef sub_100085F34(const __CFString *a1, const __CFCharacterSet *a2)
{
  Length = CFStringGetLength(a1);
  theString = a1;
  v38 = 0;
  v39 = Length;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v36 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v40 = 0;
  v41 = 0;
  v37 = CStringPtr;
  if (Length < 1)
  {
    return &stru_100348050;
  }

  v7 = 0;
  v8 = 0;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v34[6] = v9;
  v34[7] = v9;
  v34[4] = v9;
  v34[5] = v9;
  v34[2] = v9;
  v34[3] = v9;
  v10 = 64;
  v11 = &stru_100348050;
  v34[0] = v9;
  v34[1] = v9;
  while (1)
  {
    v12 = v8 >= 4 ? 4 : v8;
    v13 = v39;
    if (v39 <= v8)
    {
      v15 = 0;
    }

    else
    {
      if (v36)
      {
        v14 = &v36[v38];
LABEL_11:
        v15 = v14[v8];
        goto LABEL_13;
      }

      if (!v37)
      {
        v16 = v40;
        if (v41 <= v8 || v40 > v8)
        {
          v18 = v12 + v7;
          v19 = v10 - v12;
          v20 = v8 - v12;
          v21 = v20 + 64;
          if (v20 + 64 >= v39)
          {
            v21 = v39;
          }

          v40 = v20;
          v41 = v21;
          if (v39 >= v19)
          {
            v13 = v19;
          }

          v42.location = v20 + v38;
          v42.length = v13 + v18;
          CFStringGetCharacters(theString, v42, v34);
          v16 = v40;
        }

        v14 = v34 - v16;
        goto LABEL_11;
      }

      v15 = v37[v38 + v8];
    }

LABEL_13:
    if (!CFCharacterSetIsCharacterMember(a2, v15))
    {
      break;
    }

    ++v8;
    --v7;
    ++v10;
    if (Length == v8)
    {
      return v11;
    }
  }

  v22 = -Length;
  v23 = Length + 64;
  v24 = 1;
  while (1)
  {
    v25 = Length >= 5 ? 5 : Length;
    if (Length < 2)
    {
      break;
    }

    v26 = v39;
    if (v39 >= Length)
    {
      if (v36)
      {
        v27 = v36[v38 - 1 + Length];
      }

      else if (v37)
      {
        v27 = v37[v38 - 1 + Length];
      }

      else
      {
        if (v41 < Length || (v28 = v40, v40 >= Length))
        {
          v29 = v25 + v22;
          v30 = v23 - v25;
          v31 = Length - v25;
          v32 = v31 + 64;
          if (v31 + 64 >= v39)
          {
            v32 = v39;
          }

          v40 = v31;
          v41 = v32;
          if (v39 >= v30)
          {
            v26 = v30;
          }

          v43.location = v31 + v38;
          v43.length = v26 + v29;
          CFStringGetCharacters(theString, v43, v34);
          v28 = v40;
        }

        v27 = *(&v34[-1] + Length - v28 + 7);
      }
    }

    else
    {
      v27 = 0;
    }

    ++v22;
    --v23;
    --Length;
    if (!CFCharacterSetIsCharacterMember(a2, v27))
    {
      v24 = Length + 1;
      break;
    }
  }

  v44.length = v24 - v8;
  v44.location = v8;
  return CFStringCreateWithSubstring(0, a1, v44);
}

void sub_1000861E0(uint64_t a1)
{
  v2 = CFLocaleCopyCurrent();
  **(a1 + 32) = CFDateFormatterCreate(kCFAllocatorDefault, v2, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  CFDateFormatterSetFormat(**(a1 + 32), @"yyyy-MM-dd HH:mm");
  if (v2)
  {

    CFRelease(v2);
  }
}

dispatch_queue_t sub_100086264(uint64_t a1)
{
  result = dispatch_queue_create("Date Formatting", 0);
  **(a1 + 32) = result;
  return result;
}

void sub_10008629C(uint64_t a1, double a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_100086428;
  v4[3] = &unk_1003356E0;
  v4[4] = &v5;
  *&v4[5] = a2;
  block = _NSConcreteStackBlock;
  v10 = 0x40000000;
  v11 = sub_100086264;
  v12 = &unk_1003356B8;
  v13 = &qword_10039DCA0;
  if (qword_10039DC98 != -1)
  {
    dispatch_once(&qword_10039DC98, &block);
  }

  block = _NSConcreteStackBlock;
  v10 = 0x40000000;
  v11 = sub_100086468;
  v12 = &unk_1003357B0;
  v13 = v4;
  dispatch_sync(qword_10039DCA0, &block);
  (*(a1 + 16))(a1, v6[3]);
  v3 = v6[3];
  if (v3)
  {
    v6[3] = 0;
    CFRelease(v3);
  }

  _Block_object_dispose(&v5, 8);
}

CFStringRef sub_100086428(uint64_t a1, __CFDateFormatter *a2)
{
  result = CFDateFormatterCreateStringWithAbsoluteTime(kCFAllocatorDefault, a2, *(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_100086468(uint64_t a1)
{
  v1 = *(a1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000861E0;
  block[3] = &unk_100335698;
  block[4] = &qword_10039DC90;
  if (qword_10039DC88 != -1)
  {
    dispatch_once(&qword_10039DC88, block);
  }

  v2 = qword_10039DC90;
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

void sub_100086528(id a1)
{
  v1 = sqlite3_config(16, nullsub_27, 0);
  if (v1)
  {
    v2 = v1;
    v3 = sub_100006274("SecWarning");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Could not set up sqlite global error logging to syslog: %d", buf, 8u);
    }
  }
}

uint64_t sub_1000865E8(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

CFStringRef sub_10008661C(uint64_t a1)
{
  sub_100017B30();
  v2 = *(a1 + 16);
  return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"<SecDb path:%@ connections: %@>", v2, *(a1 + 48));
}

void sub_1000866B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 16) = 0;
    CFRelease(v2);
  }

  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10008679C;
  block[3] = &unk_100335B00;
  block[4] = a1;
  dispatch_sync(v3, block);
  v4 = *(a1 + 24);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 24) = 0;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    dispatch_release(v5);
    *(a1 + 32) = 0;
  }

  pthread_mutex_destroy((a1 + 56));
  v6 = *(a1 + 120);
  if (v6)
  {
    dispatch_release(v6);
    *(a1 + 120) = 0;
  }

  v7 = *(a1 + 136);
  if (v7)
  {
    _Block_release(v7);
    *(a1 + 136) = 0;
  }

  v8 = *(a1 + 152);
  if (v8)
  {
    *(a1 + 152) = 0;
    CFRelease(v8);
  }
}

void sub_10008679C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (v3)
  {
    *(v2 + 40) = 0;
    CFRelease(v3);
    v2 = *(a1 + 32);
  }

  v4 = *(v2 + 48);
  if (v4)
  {
    *(v2 + 48) = 0;

    CFRelease(v4);
  }
}

dispatch_queue_t sub_1000867FC(uint64_t a1, char *label)
{
  result = dispatch_queue_create(label, 0);
  *(*(a1 + 32) + 24) = result;
  return result;
}

dispatch_queue_t sub_100086830(uint64_t a1, char *label)
{
  result = dispatch_queue_create(label, &_dispatch_queue_attr_concurrent);
  *(*(a1 + 32) + 32) = result;
  return result;
}

void sub_10008686C(uint64_t a1, const void *a2)
{
  os_unfair_lock_lock((a1 + 148));
  v4 = _Block_copy(a2);
  Mutable = *(a1 + 152);
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    *(a1 + 152) = Mutable;
  }

  CFArrayAppendValue(Mutable, v4);
  _Block_release(v4);

  os_unfair_lock_unlock((a1 + 148));
}

uint64_t sub_1000868E8(uint64_t a1, uint64_t __errnum, CFTypeRef *a3)
{
  v3 = *(a1 + 16);
  if (*(v3 + 163) == 1)
  {
    v11 = *(v3 + 16);
    *buf = _NSConcreteStackBlock;
    v14 = 0x40000000;
    v15 = sub_1000105E8;
    v16 = &unk_100335678;
    v17 = &stru_100335C50;
    sub_100008380(v11, buf);
    v12 = sub_100006274("SecWarning");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SecDbHandleCorrupt: killing self so that successor might cleanly delete corrupt db", buf, 2u);
    }

    exit(1);
  }

  v7 = __errnum;
  v8 = strerror(__errnum);
  sub_1000111B4(v7, kCFErrorDomainPOSIX, 0, a3, v9, @"SecDbHandleCorrupt not allowed to repair, handled error: [%d] %s", __errnum, v8);
  *(a1 + 40) = 0;
  return 0;
}

uint64_t sub_100086A20(uint64_t a1, sqlite3_stmt *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v4 = *(a1 + 40);
  return sub_100015DAC(*(a1 + 56), a2);
}

void sub_100086AA8(uint64_t a1)
{
  v2 = sqlite3_column_text(*(a1 + 48), 0);
  v3 = v2;
  if (!v2 || strncasecmp(v2, "ok", 3uLL))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    v4 = sub_100006274("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "NULL";
      if (v3)
      {
        v5 = v3;
      }

      v6 = 136315138;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SecDBCheckCorrupted integrity_check returned %s", &v6, 0xCu);
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void sub_100086BB0(id a1, const char *a2)
{
  memset(__b, 170, sizeof(__b));
  snprintf(__b, 0x401uLL, "%s-iscorrupt", a2);
  memset(&v7, 0, sizeof(v7));
  if (!stat(__b, &v7))
  {
    v3 = sub_100006274("SecError");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v9 = __b;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SecDbHandleCorrupt: Tried to write corruption marker %s but one already exists", buf, 0xCu);
    }
  }

  v4 = fopen(__b, "w");
  if (v4)
  {
    fclose(v4);
  }

  else
  {
    v5 = sub_100006274("SecError");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *__error();
      *buf = 67109378;
      *v9 = v6;
      *&v9[4] = 2082;
      *&v9[6] = __b;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SecDbHandleCorrupt: Unable (%{darwin.errno}d) to create corruption marker %{public}s", buf, 0x12u);
    }
  }
}

void sub_100086D38(uint64_t a1)
{
  v2 = sqlite3_column_text(*(a1 + 32), 3);
  v3 = CFStringCreateWithCString(kCFAllocatorDefault, v2, 0x8000100u);
  if (v3)
  {
    v4 = v3;
    CFStringAppend(*(a1 + 40), v3);
    CFStringAppend(*(a1 + 40), @";");

    CFRelease(v4);
  }
}

uint64_t sub_100086DDC(uint64_t a1, char a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100087580;
  block[3] = &unk_100335AE0;
  block[4] = &qword_10039DCE8;
  if (qword_10039DCE0 != -1)
  {
    dispatch_once(&qword_10039DCE0, block);
  }

  Instance = _CFRuntimeCreateInstance();
  v5 = Instance;
  if (Instance)
  {
    *(Instance + 16) = a1;
    *(Instance + 24) = a2;
    *(Instance + 25) = 0;
    *(Instance + 32) = 2;
    *(Instance + 40) = 0;
    *(Instance + 44) = 0;
    *(Instance + 48) = 0;
    *(Instance + 56) = 0;
    *(Instance + 64) = 0;
    *(Instance + 72) = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  }

  return v5;
}

uint64_t sub_100086EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 1;
  v3 = *(*(a1 + 16) + 16);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_100086FE8;
  v6[3] = &unk_100335BF0;
  v6[4] = &v7;
  v6[5] = a1;
  v6[6] = a2;
  v6[7] = a3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = sub_1000105E8;
  v11[3] = &unk_100335678;
  v11[4] = v6;
  sub_100008380(v3, v11);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_100086FE8(uint64_t a1, char *filename)
{
  v4 = *(a1 + 40);
  v5 = 4194305;
  if (*(*(v4 + 16) + 162) == 1)
  {
    if (*(v4 + 24))
    {
      v5 = 4194305;
    }

    else
    {
      v5 = 4194306;
    }
  }

  if (*(a1 + 48))
  {
    v6 = sub_10008722C(v4, filename, v5, 0);
  }

  else
  {
    v6 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v6;
  v7 = *(*(a1 + 32) + 8);
  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = 1;
    if (*(a1 + 48))
    {
      v8 = dirname(filename);
      if (v8)
      {
        v9 = v8;
        v10 = *(*(*(a1 + 40) + 16) + 160);
        v11 = mkpath_np(v8, (v10 >> 2) & 0x49 | v10);
        if (v11 && v11 != 17)
        {
          v13 = v11;
          v14 = v11;
          v15 = *(a1 + 56);
          v16 = strerror(v11);
          sub_1000111B4(v14, kCFErrorDomainPOSIX, 0, v15, v17, @"mkpath_np %s: [%d] %s", v9, v13, v16);
          *(*(*(a1 + 32) + 8) + 24) = 0;
        }
      }
    }

    v18 = *(*(a1 + 32) + 8);
    if (*(v18 + 24) == 1)
    {
      v19 = sub_10008722C(*(a1 + 40), filename, 4194310, *(a1 + 56));
      v18 = *(*(a1 + 32) + 8);
    }

    else
    {
      v19 = 0;
    }

    *(v18 + 24) = v19;
    if (*(*(*(a1 + 32) + 8) + 24) == 1)
    {
      chmod(filename, *(*(*(a1 + 40) + 16) + 160));
      v20 = *(a1 + 48);
      if (v20)
      {
        *v20 = 1;
      }
    }
  }

  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    if (qword_10039DCF0 != -1)
    {
      dispatch_once(&qword_10039DCF0, &stru_100335C30);
    }

    v21 = dword_10039DCF8;
    if (dword_10039DCF8)
    {
      v22 = *(a1 + 40);
      v23 = v22[8];

      sqlite3_trace_v2(v23, v21, sub_1000873B4, v22);
    }
  }
}

BOOL sub_10008722C(uint64_t a1, char *filename, uint64_t a3, CFTypeRef *a4)
{
  v8 = *(a1 + 16);
  v9 = *(v8 + 164);
  v10 = *(v8 + 165);
  ppDb = 0;
  v11 = sqlite3_open_v2(filename, &ppDb, a3, 0);
  if (v11)
  {
    if (ppDb)
    {
      sub_10001D8CC(v11, ppDb, a4, @"open_v2 %s 0x%X", filename, a3);
      sqlite3_close(ppDb);
      ppDb = 0;
    }

    else
    {
      sub_10001D9F0(v11, a4, @"open_v2 %s 0x%X", filename, a3);
    }

    goto LABEL_16;
  }

  if ((a3 & 2) == 0)
  {
    goto LABEL_16;
  }

  if (v10)
  {
    ppStmt = 0;
    if (!sqlite3_prepare_v2(ppDb, "PRAGMA auto_vacuum", -1, &ppStmt, 0))
    {
      if (sqlite3_step(ppStmt) == 100)
      {
        v12 = sqlite3_column_int(ppStmt, 0);
        sqlite3_finalize(ppStmt);
        if (v12 == 2)
        {
          goto LABEL_13;
        }
      }

      else
      {
        sqlite3_finalize(ppStmt);
      }
    }

    sqlite3_exec(ppDb, "PRAGMA auto_vacuum = incremental", 0, 0, 0);
    sqlite3_exec(ppDb, "VACUUM", 0, 0, 0);
  }

LABEL_13:
  if (v9)
  {
    sqlite3_exec(ppDb, "PRAGMA journal_mode = WAL", 0, 0, 0);
  }

  sqlite3_busy_timeout(ppDb, 5000);
LABEL_16:
  v13 = ppDb;
  *(a1 + 64) = ppDb;
  return v13 != 0;
}

void sub_1000873BC(id a1)
{
  if (sub_1000874A4())
  {
    dword_10039DCF8 = 2;
  }

  if (sub_1000874A4())
  {
    dword_10039DCF8 = 1;
  }

  if (sub_1000874A4())
  {
    dword_10039DCF8 = 4;
  }

  v1 = sub_100006274("#SecDB");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    v2[0] = 67109120;
    v2[1] = dword_10039DCF8;
    _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "sqlDb: sql trace mask: 0x%08x", v2, 8u);
  }
}

uint64_t sub_1000874A4()
{
  if (!csr_check())
  {
    v1 = CFPreferencesCopyValue(@"SQLProfile", @"com.apple.security", kCFPreferencesAnyUser, kCFPreferencesAnyHost);
    if (v1)
    {
      v2 = v1;
      v3 = CFGetTypeID(v1);
      if (v3 == CFBooleanGetTypeID())
      {
        v4 = CFBooleanGetValue(v2) == 0;
      }

      else
      {
        v5 = CFGetTypeID(v2);
        if (v5 != CFNumberGetTypeID())
        {
          v0 = 0;
LABEL_12:
          CFRelease(v2);
          return v0;
        }

        valuePtr = 0;
        CFNumberGetValue(v2, kCFNumberSInt32Type, &valuePtr);
        v4 = valuePtr == 0;
      }

      v0 = !v4;
      goto LABEL_12;
    }
  }

  return 0;
}

uint64_t sub_100087580(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

CFStringRef sub_1000875B4(uint64_t a1)
{
  v1 = "rw";
  if (*(a1 + 24))
  {
    v1 = "ro";
  }

  if (*(a1 + 64))
  {
    v2 = "open";
  }

  else
  {
    v2 = "closed";
  }

  return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"<SecDbConnection %s %s>", v1, v2);
}

void sub_10008762C(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 && (v3 = sqlite3_close(v2)) != 0)
  {
    v9 = v3;
    v6 = sub_100006274("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(a1 + 16) + 16);
      v8 = sqlite3_errmsg(*(a1 + 64));
      *buf = 67109634;
      v11 = v9;
      v12 = 2112;
      v13 = v7;
      v14 = 2080;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "failed to close database connection (%d) for %@: %s", buf, 0x1Cu);
    }

    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  else
  {
    *(a1 + 16) = 0;
    v4 = *(a1 + 72);
    if (v4)
    {
      *(a1 + 72) = 0;
      CFRelease(v4);
    }

    v5 = *(a1 + 56);
    if (v5)
    {
      *(a1 + 56) = 0;

      CFRelease(v5);
    }
  }
}

void sub_100087784(uint64_t a1, const std::__fs::filesystem::path *a2)
{
  memset(__b, 170, sizeof(__b));
  snprintf(__b, 0x401uLL, "%s-iscorrupt", a2);
  memset(&v20, 0, sizeof(v20));
  if (!stat(__b, &v20))
  {
    v9 = sub_100006274("SecWarning");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v22 = __b;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SecDbSecDbProcessCorruptionMarker: found corruption marker %s", buf, 0xCu);
    }

    if (remove(__b, v10))
    {
      v12 = sub_100006274("SecError");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *__error();
        *buf = 67109120;
        *v22 = v13;
        v14 = "SecDbSecDbProcessCorruptionMarker: Unable (%{darwin.errno}d) to delete corruption marker";
        v15 = v12;
        v16 = 8;
LABEL_10:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
      }
    }

    else
    {
      if (!remove(a2, v11) || *__error() == 2)
      {
        v17 = sub_100006274("SecWarning");
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 136446210;
        *v22 = a2;
        v6 = "SecDbSecDbProcessCorruptionMarker: deleted corrupt db %{public}s";
        v7 = v17;
        v8 = 12;
        goto LABEL_16;
      }

      v18 = sub_100006274("SecError");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *__error();
        *buf = 67109378;
        *v22 = v19;
        *&v22[4] = 2082;
        *&v22[6] = a2;
        v14 = "SecDbSecDbProcessCorruptionMarker: Unable (%{darwin.errno}d) to delete db %{public}s";
        v15 = v18;
        v16 = 18;
        goto LABEL_10;
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
    return;
  }

  if (*__error() != 2)
  {
    v4 = sub_100006274("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *__error();
      *buf = 67109120;
      *v22 = v5;
      v6 = "SecDbSecDbProcessCorruptionMarker: Unable to check for corruption marker: %{darwin.errno}d";
      v7 = v4;
      v8 = 8;
LABEL_16:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
    }
  }
}

void sub_100087AF8(id a1)
{
  v1 = sub_100088500("PowerLog enabled", 86400);
  v2 = qword_10039DD20;
  qword_10039DD20 = v1;

  v3 = qword_10039DD20;
  context = dispatch_get_context(qword_10039DD20);
  context[2] = _Block_copy(&stru_100335CF8);
  dispatch_activate(v3);
  v5 = sub_100006274("PLsetup");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting up PowerLog", v9, 2u);
  }

  v6 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, @"/System/Library/PrivateFrameworks/PowerLog.framework", kCFURLPOSIXPathStyle, 1u);
  if (v6)
  {
    v7 = v6;
    qword_10039DD28 = CFBundleCreate(kCFAllocatorDefault, v6);
    CFRelease(v7);
    if (qword_10039DD28)
    {
      off_10039DD00 = CFBundleGetFunctionPointerForName(qword_10039DD28, @"PLShouldLogRegisteredEvent");
      off_10039DD08 = CFBundleGetFunctionPointerForName(qword_10039DD28, @"PLLogRegisteredEvent");
      FunctionPointerForName = CFBundleGetFunctionPointerForName(qword_10039DD28, @"PLLogTimeSensitiveRegisteredEvent");
      qword_10039DD10 = FunctionPointerForName;
      if (!off_10039DD00 || !off_10039DD08 || !FunctionPointerForName)
      {
        CFRelease(qword_10039DD28);
        qword_10039DD28 = 0;
      }
    }
  }
}

void sub_100087C70(id a1)
{
  v1 = sub_100006274("PLsetup");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    if (qword_10039DD28)
    {
      v2 = "enabled";
    }

    else
    {
      v2 = "fault";
    }

    v3 = 136315138;
    v4 = v2;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "PowerLog %s", &v3, 0xCu);
  }
}

uint64_t sub_100087D38(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  result = ccder_decode_tl();
  if (result)
  {
    return 0;
  }

  return result;
}

BOOL sub_100087DC8(int a1, CFTypeRef *a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a1)
  {
    if (a2)
    {
      v12 = *__error();
      v13 = *a2;
      *a2 = 0;
      v14 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, a3, &a9);
      v15 = strerror(v12);
      sub_1000111B4(v12, kCFErrorDomainPOSIX, v13, a2, v16, @"%@: [%d] %s", v14, v12, v15, &a9);
      if (v14)
      {
        CFRelease(v14);
      }
    }
  }

  return a1 == 0;
}

uint64_t sub_100087E9C(uint64_t a1, CFTypeRef *a2, CFStringRef format, ...)
{
  va_start(va, format);
  if (a2 && (a1 & 1) == 0)
  {
    v5 = *a2;
    *a2 = 0;
    sub_100010118(-50, kCFErrorDomainOSStatus, v5, a2, format, va);
  }

  return a1;
}

BOOL sub_100087F00(uint64_t a1, CFTypeRef *a2, CFStringRef format, ...)
{
  va_start(va, format);
  if (!a1 && a2)
  {
    v5 = *a2;
    *a2 = 0;
    sub_100010118(-108, kCFErrorDomainOSStatus, v5, a2, format, va);
  }

  return a1 != 0;
}

_DWORD *sub_100087F68(int a1)
{
  if (byte_10039DD30 != 1)
  {
    return 0;
  }

  v2 = malloc_type_malloc(0x18uLL, 0x100004067B37528uLL);
  if (!v2)
  {
    v8 = sub_100006274("SecError");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *__error();
      v11[0] = 67109120;
      v11[1] = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unable to allocate StatCtx: %{darwin.errno}d", v11, 8u);
    }

    return 0;
  }

  v3 = v2;
  *v2 = qos_class_self();
  if (qword_10039DD40 != -1)
  {
    dispatch_once(&qword_10039DD40, &stru_100335D38);
  }

  v4 = qword_10039DD38;
  v5 = os_signpost_id_generate(qword_10039DD38);
  v6 = v5;
  *(v3 + 1) = v5;
  *(v3 + 16) = a1;
  if (a1)
  {
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      LOWORD(v11[0]) = 0;
      v7 = "read_connection_wait";
LABEL_16:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, v6, v7, " enableTelemetry=YES ", v11, 2u);
    }
  }

  else if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(v11[0]) = 0;
    v7 = "write_connection_wait";
    goto LABEL_16;
  }

  return v3;
}

void sub_100088154(void *a1)
{
  if (byte_10039DD30 == 1)
  {
    if (a1)
    {
      if (qword_10039DD40 != -1)
      {
        dispatch_once(&qword_10039DD40, &stru_100335D38);
      }

      v2 = qword_10039DD38;
      v3 = a1[1];
      v4 = v3 - 1;
      if (*(a1 + 16) == 1)
      {
        if (v4 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(qword_10039DD38))
        {
          goto LABEL_15;
        }

        v5 = *a1;
        v9 = 67240192;
        v10 = v5;
        v6 = "read_connection_wait";
      }

      else
      {
        if (v4 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(qword_10039DD38))
        {
          goto LABEL_15;
        }

        v8 = *a1;
        v9 = 67240192;
        v10 = v8;
        v6 = "write_connection_wait";
      }

      _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_END, v3, v6, "priority=%{public,signpost.telemetry:number1,name=priority}d  enableTelemetry=YES ", &v9, 8u);
LABEL_15:
      free(a1);
      return;
    }

    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Passed NULL StatCtx", &v9, 2u);
    }
  }
}

void sub_1000882F4(int a1)
{
  if (byte_10039DD30 == 1)
  {
    if (qword_10039DD40 != -1)
    {
      dispatch_once(&qword_10039DD40, &stru_100335D38);
    }

    v2 = qword_10039DD38;
    v3 = os_signpost_id_generate(qword_10039DD38);
    v4 = qos_class_self();
    if (a1)
    {
      if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
      {
        v6 = 67240192;
        v7 = v4;
        v5 = "read_connection_nowait";
LABEL_11:
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_EVENT, v3, v5, "priority=%{public,signpost.telemetry:number1,name=priority}d  enableTelemetry=YES ", &v6, 8u);
      }
    }

    else if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
    {
      v6 = 67240192;
      v7 = v4;
      v5 = "write_connection_nowait";
      goto LABEL_11;
    }
  }
}

void sub_10008843C(uint64_t a1)
{
  dispatch_release(*a1);
  v2 = *(a1 + 16);
  if (v2)
  {
    _Block_release(v2);
  }

  free(a1);
}

void sub_100088484(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    (*(v2 + 16))();
  }

  dispatch_suspend(*(a1 + 8));
  v3 = dispatch_time(0, 1000000000 * *(a1 + 24));
  v4 = *a1;
  v5 = *(a1 + 8);

  dispatch_after_f(v3, v4, v5, j__dispatch_resume);
}

NSObject *sub_100088500(const char *a1, uint64_t a2)
{
  v3 = dispatch_queue_create(a1, 0);
  v4 = dispatch_source_create(&_dispatch_source_type_data_add, 0, 0, v3);
  v5 = malloc_type_malloc(0x20uLL, 0x10A0040A7A12BA5uLL);
  *v5 = v3;
  v5[1] = v4;
  v5[2] = 0;
  v5[3] = a2;
  dispatch_set_context(v4, v5);
  dispatch_source_set_event_handler_f(v4, sub_100088484);
  dispatch_set_finalizer_f(v4, sub_10008843C);
  return v4;
}

__CFData *sub_1000885B0(const __CFData *a1)
{
  CFDataGetLength(a1);
  v2 = CFGetAllocator(a1);
  CFDataGetBytePtr(a1);
  v3 = ccsha256_di();

  return sub_10001B2EC(v2, v3);
}

void sub_1000887B4(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v7;
  }

  else
  {
    v3 = [v7 description];
  }

  v4 = v3;
  v5 = *(a1 + 40);
  if (v5 && v5 < [v3 length])
  {
    v6 = [v4 substringToIndex:*(a1 + 40)];

    v4 = v6;
  }

  [*(a1 + 32) insertObject:v4 atIndex:0];
}

void sub_100088958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100088970(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) containsObject:a2];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void sub_100088B0C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 stringByAppendingString:@":"];
  [v5 addObject:v7];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = *(a1 + 32);
  if (isKindOfClass)
  {
    [v6 componentsJoinedByString:@" "];
  }

  else
  {
    [NSString stringWithFormat:@"%@", v6];
  }
  v10 = ;

  [v9 addObject:v10];
}

uint64_t sub_100088E38(CFNullRef *a1, CFTypeRef *a2)
{
  result = ccder_decode_tl();
  if (result)
  {
    *a1 = kCFNull;
  }

  else
  {
    sub_1000111B4(-1, @"com.apple.security.cfder.error", 0, a2, v5, @"Unknown null encoding");
    return 0;
  }

  return result;
}

uint64_t sub_100088EB8(CFTypeRef *a1)
{
  v3 = ccder_encode_tl();
  if (!v3)
  {
    sub_1000111B4(-7, @"com.apple.security.cfder.error", 0, a1, v2, @"ccder failed to encode");
  }

  return v3;
}

uint64_t sub_100088F18(const __CFAllocator *a1, CFTypeRef *a2, CFTypeRef *a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v13 = 0;
    v9 = ccder_decode_constructed_tl();
    if (v9)
    {
      Mutable = CFSetCreateMutable(a1, 0, &kCFTypeSetCallBacks);
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      else
      {
        sub_1000111B4(-3, @"com.apple.security.cfder.error", 0, a3, v10, @"Failed to create set");
        v9 = 0;
        if (*a2)
        {
          CFRelease(*a2);
        }

        *a2 = Mutable;
      }
    }

    else
    {
      sub_1000111B4(-1, @"com.apple.security.cfder.error", 0, a3, v8, @"Unknown data encoding, expected CCDER_CONSTRUCTED_CFSET");
    }
  }

  else
  {
    sub_1000111B4(-6, @"com.apple.security.cfder.error", 0, a3, a5, @"null input");
    return 0;
  }

  return v9;
}

uint64_t sub_100089094(const __CFSet *a1, uint64_t a2)
{
  v3 = xmmword_100294920;
  v4 = a2;
  CFSetApplyFunction(a1, sub_1000890FC, &v3);
  if (v3 == 1)
  {
    return ccder_sizeof();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000890FC(uint64_t result, uint64_t a2)
{
  if (*a2 == 1)
  {
    result = sub_10000E384(result, *(a2 + 16));
    if (result)
    {
      *(a2 + 8) += result;
    }

    else
    {
      *a2 = 0;
    }
  }

  return result;
}

uint64_t sub_10008914C(const __CFSet *a1, CFTypeRef *a2, char a3)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v12[0] = 0xAAAAAAAAAAAAAA01;
  v12[1] = a2;
  BYTE1(v12[0]) = a3;
  v12[2] = Mutable;
  v12[3] = 0;
  CFSetApplyFunction(a1, sub_100089390, v12);
  if ((v12[0] & 1) == 0)
  {
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return 0;
  }

  v13.length = CFArrayGetCount(Mutable);
  v13.location = 0;
  CFArraySortValues(Mutable, v13, sub_1000892D4, 0);
  Count = CFArrayGetCount(Mutable);
  if (Count >= 1)
  {
    v8 = Count + 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v8 - 2);
      CFDataGetLength(ValueAtIndex);
      CFDataGetBytePtr(ValueAtIndex);
      ccder_encode_body();
      --v8;
    }

    while (v8 > 1);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  result = ccder_encode_constructed_tl();
  if (!result)
  {
    sub_1000111B4(-7, @"com.apple.security.cfder.error", 0, a2, v11, @"ccder failed to encode");
    return 0;
  }

  return result;
}

uint64_t sub_1000892D4(const __CFData *a1, const __CFData *a2)
{
  Length = CFDataGetLength(a1);
  v5 = CFDataGetLength(a2);
  v6 = v5;
  if ((Length & 0x8000000000000000) != 0 || v5 < 0)
  {
    if (Length >= v5)
    {
      v12 = 0;
    }

    else
    {
      v12 = -1;
    }

    if (Length <= v5)
    {
      return v12;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (Length >= v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = Length;
    }

    BytePtr = CFDataGetBytePtr(a1);
    v9 = CFDataGetBytePtr(a2);
    v10 = memcmp(BytePtr, v9, v7);
    if (v10 <= 0 && (v10 || Length <= v6))
    {
      if (v10)
      {
        v13 = 0;
      }

      else
      {
        v13 = Length >= v6;
      }

      v14 = !v13;
      return v14 << 63 >> 63;
    }

    else
    {
      return 1;
    }
  }
}

void sub_100089390(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a2 == 1)
  {
    v7 = sub_10000E384(a1, *(a2 + 8), a3, a4, a5);
    if (!v7)
    {
      *a2 = 0;
      return;
    }

    v8 = v7;
    Mutable = CFDataCreateMutable(*(a2 + 24), v7);
    CFDataSetLength(Mutable, v8);
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    v11 = sub_10000E614(a1, *(a2 + 8), *(a2 + 1), MutableBytePtr, &MutableBytePtr[v8]);
    if (v11)
    {
      v13.length = v11 - MutableBytePtr;
      v13.location = 0;
      CFDataDeleteBytes(Mutable, v13);
      CFArrayAppendValue(*(a2 + 16), Mutable);
      if (!Mutable)
      {
        return;
      }
    }

    else
    {
      *a2 = 0;
      if (!Mutable)
      {
        return;
      }
    }

    CFRelease(Mutable);
  }
}

uint64_t sub_100089478()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100089510;
  block[3] = &unk_100335DD0;
  block[4] = &qword_10039DD50;
  if (qword_10039DD48 != -1)
  {
    dispatch_once(&qword_10039DD48, block);
  }

  return qword_10039DD50;
}

dispatch_queue_t sub_100089510(uint64_t a1)
{
  result = dispatch_queue_create("AKS Lock Assertion Queue", 0);
  **(a1 + 32) = result;
  return result;
}

BOOL sub_100089548(int a1, CFTypeRef *a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v4 = sub_100089478();
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10008961C;
  block[3] = &unk_100335DF8;
  block[4] = &v9;
  block[5] = 60;
  v8 = a1;
  dispatch_sync(v4, block);
  v5 = sub_10001C4BC(*(v10 + 6), a2, @"Kern return error");
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t sub_10008961C(uint64_t result)
{
  v1 = result;
  if (!dword_10039DD58)
  {
    v2 = sub_100006274("lockassertions");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(v1 + 40);
      v6 = 134217984;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Requesting lock assertion for %lld seconds", &v6, 0xCu);
    }

    v4 = *(v1 + 48);
    v5 = *(v1 + 40);
    result = aks_assert_hold();
    *(*(*(v1 + 32) + 8) + 24) = result;
  }

  if (!*(*(*(v1 + 32) + 8) + 24))
  {
    ++dword_10039DD58;
  }

  return result;
}

BOOL sub_100089710(int a1, CFTypeRef *a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v4 = sub_100089478();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_1000897E0;
  v7[3] = &unk_100335E20;
  v7[4] = &v9;
  v8 = a1;
  dispatch_sync(v4, v7);
  v5 = sub_10001C4BC(*(v10 + 6), a2, @"Kern return error");
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t sub_1000897E0(uint64_t result)
{
  v3 = dword_10039DD58;
  if (dword_10039DD58)
  {
    --dword_10039DD58;
    if (v3 == 1)
    {
      v8 = v1;
      v9 = v2;
      v4 = result;
      v5 = sub_100006274("lockassertions");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Dropping lock assertion", v7, 2u);
      }

      v6 = *(v4 + 40);
      result = aks_assert_drop();
      *(*(*(v4 + 32) + 8) + 24) = result;
    }
  }

  return result;
}

BOOL sub_100089884(int a1, CFTypeRef *a2, uint64_t a3)
{
  result = sub_100089548(a1, a2);
  if (result)
  {
    (*(a3 + 16))(a3);

    return sub_100089710(a1, a2);
  }

  return result;
}

void sub_1000898F4(int a1, uint64_t a2)
{
  cf = 0;
  if (sub_100089548(a1, &cf))
  {
    (*(a2 + 16))(a2);
    sub_100089710(a1, &cf);
    v4 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v4);
    }
  }

  else
  {
    v5 = sub_100006274("secaks");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      v9 = a1;
      v10 = 2112;
      v11 = cf;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SecAKSDoWithKeybagLockAssertionSoftly: failed to get assertion for %d proceeding bravely: %@", buf, 0x12u);
    }

    v6 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v6);
    }

    (*(a2 + 16))(a2);
  }
}

uint64_t sub_100089A14()
{
  if (qword_10039DD80 != -1)
  {
    dispatch_once(&qword_10039DD80, &stru_100335EE0);
  }

  if (byte_10039DD78)
  {
    return 1;
  }

  if (qword_10039DD90 != -1)
  {
    dispatch_once(&qword_10039DD90, &stru_100335F20);
  }

  return byte_10039DD88;
}

void sub_100089A94(id a1)
{
  __len = 1023;
  bzero(__big, 0x400uLL);
  if (!sysctlbyname("kern.bootargs", __big, &__len, 0, 0) && strnstr(__big, "-apfs_shared_datavolume", __len))
  {
    byte_10039DD88 = 1;
  }

  v1 = sub_100006274("eapfs");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v4 = byte_10039DD88;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "eapfs boot-arg set to %{BOOL}d", buf, 8u);
  }
}

void sub_100089B94(id a1)
{
  v1 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/filesystems");
  if (v1)
  {
    v2 = v1;
    CFProperty = IORegistryEntryCreateCFProperty(v1, @"e-apfs", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      CFRelease(CFProperty);
      byte_10039DD78 = 1;
    }

    IOObjectRelease(v2);
  }

  v4 = sub_100006274("eapfs");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = byte_10039DD78;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "eapfs IODT set to %{BOOL}d", v5, 8u);
  }
}

void sub_100089C94(id a1)
{
  v1 = MKBUserTypeDeviceMode();
  if (v1)
  {
    v2 = v1;
    value = 0;
    if (CFDictionaryGetValueIfPresent(v1, kMKBDeviceModeKey, &value))
    {
      if (CFEqual(value, kMKBDeviceModeSharedIPad))
      {
        byte_10039DD5C = 1;
      }
    }

    CFRelease(v2);
  }

  else
  {
    v3 = sub_100006274("edumode");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Cannot determine because deviceMode is NULL", v4, 2u);
    }
  }
}

void sub_100089D5C(id a1)
{
  byte_10039DD68 = _os_feature_enabled_impl();
  v1 = sub_100006274("keychain");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_10039DD68)
    {
      v2 = "enabled";
    }

    else
    {
      v2 = "disabled";
    }

    v3 = 136315138;
    v4 = v2;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "SeparateUserKeychain set via feature flag to %s", &v3, 0xCu);
  }
}

CFURLRef sub_100089E34(int a1, uint64_t a2)
{
  if (a1)
  {
    v3 = CFURLCreateWithFileSystemPath(0, @"/", kCFURLPOSIXPathStyle, 1u);
  }

  else
  {
    v3 = CFCopyHomeDirectoryURL();
  }

  v4 = v3;
  if (a2)
  {
    Copy = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/%@", @"Library/Keychains", a2);
  }

  else
  {
    Copy = CFStringCreateCopy(kCFAllocatorDefault, @"Library/Keychains");
  }

  v6 = Copy;
  if (v4 && Copy)
  {
    v7 = CFURLCreateCopyAppendingPathComponent(kCFAllocatorDefault, v4, Copy, a2 == 0);
    CFRelease(v6);
LABEL_13:
    CFRelease(v4);
    return v7;
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  v7 = 0;
  if (v4)
  {
    goto LABEL_13;
  }

  return v7;
}

void sub_100089F24(uint64_t a1, uint64_t a2)
{
  syslog(5, "SecCopyURLForFileInParameterizedKeychainDirectory: forceUserScope:%d", 0);
  v4 = sub_100089E34(1, a1);
  if (v4)
  {
    v5 = v4;
    memset(__b, 170, sizeof(__b));
    CFURLGetFileSystemRepresentation(v5, 0, __b, 1024);
    (*(a2 + 16))(a2, __b);
    CFRelease(v5);
  }
}

uint64_t sub_100089FEC(uint64_t a1, int a2)
{
  v4 = sub_100006274("SecError");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = a1;
    v8 = 1024;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Simulating crash, reason: %@, code=%08x", &v6, 0x12u);
  }

  getpid();
  return SimulateCrash();
}

uint64_t sub_10008A0C0(uint64_t a1, int a2)
{
  v4 = sub_100006274("SecError");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = a1;
    v8 = 1024;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "stackshot report, reason: %@, code=%08x", &v6, 0x12u);
  }

  return WriteStackshotReport();
}

void sub_10008A280(id a1)
{
  v1 = [KeychainItemUpgradeRequestServer alloc];
  v4 = +[CKKSLockStateTracker globalTracker];
  v2 = [(KeychainItemUpgradeRequestServer *)v1 initWithLockStateTracker:v4];
  v3 = qword_10039DD98;
  qword_10039DD98 = v2;
}

void sub_10008A4C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_10008A4E4(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper performCKServerUnreadableDataRemovalWithSpecificUser:isGuitarfish:accountIsW:internalAccount:demoAccount:altDSID:flowID:deviceSessionID:canSendMetrics:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper performCKServerUnreadableDataRemovalWithSpecificUser:isGuitarfish:accountIsW:internalAccount:demoAccount:altDSID:flowID:deviceSessionID:canSendMetrics:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_10008A81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_10008A840(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper fetchPCSIdentityByPublicKeyWithSpecificUser:pcsservices:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper fetchPCSIdentityByPublicKeyWithSpecificUser:pcsservices:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_10008AB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_10008ABA4(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper fetchCurrentItemWithSpecificUser:items:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper fetchCurrentItemWithSpecificUser:items:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_10008AEC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_10008AEEC(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper octagonContainsDistrustedRecoveryKeysWithSpecificUser:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper octagonContainsDistrustedRecoveryKeysWithSpecificUser:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_10008B20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_10008B230(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper fetchTrustedFullPeerCountWithSpecificUser:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper fetchTrustedFullPeerCountWithSpecificUser:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_10008B550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_10008B574(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper fetchTrustedPeerCountWithSpecificUser:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper fetchTrustedPeerCountWithSpecificUser:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_10008B8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_10008B8EC(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper preflightRecoverOctagonUsingRecoveryKey:recoveryKey:salt:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper preflightRecoverOctagonUsingRecoveryKey:recoveryKey:salt:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_10008BCC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_10008BCEC(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper performATOPRVActionsWithSpecificUser:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper performATOPRVActionsWithSpecificUser:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_10008C008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_10008C02C(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper removeRecoveryKey:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper removeRecoveryKey:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_10008C34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_10008C370(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper isRecoveryKeySet:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper isRecoveryKeySet:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_10008C6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_10008C6E8(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper recoverTLKSharesForInheritorWithSpecificUser:crk:tlkShares:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper recoverTLKSharesForInheritorWithSpecificUser:crk:tlkShares:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_10008CB6C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_10008CB90(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      *buf = 136315650;
      v9 = "[CuttlefishXPCWrapper prepareInheritancePeerWithSpecificUser:epoch:machineID:bottleSalt:bottleID:modelID:deviceName:serialNumber:osVersion:policyVersion:policySecrets:syncUserControllableViews:secureElementIdentity:signingPrivKeyPersistentRef:encPrivKeyPersistentRef:crk:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", buf, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v9 = "[CuttlefishXPCWrapper prepareInheritancePeerWithSpecificUser:epoch:machineID:bottleSalt:bottleID:modelID:deviceName:serialNumber:osVersion:policyVersion:policySecrets:syncUserControllableViews:secureElementIdentity:signingPrivKeyPersistentRef:encPrivKeyPersistentRef:crk:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", buf, 0x16u);
    }

    (*(a1[5] + 16))(a1[5], 0);
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_10008CF24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10008CF48(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper fetchAccountSettingsWithSpecificUser:forceFetch:altDSID:flowID:deviceSessionID:canSendMetrics:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper fetchAccountSettingsWithSpecificUser:forceFetch:altDSID:flowID:deviceSessionID:canSendMetrics:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_10008D2D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10008D2F4(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper fetchRecoverableTLKSharesWithSpecificUser:peerID:altDSID:flowID:deviceSessionID:canSendMetrics:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper fetchRecoverableTLKSharesWithSpecificUser:peerID:altDSID:flowID:deviceSessionID:canSendMetrics:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_10008D664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10008D688(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper resetAccountCDPContentsWithSpecificUser:idmsTargetContext:idmsCuttlefishPassword:notifyIdMS:internalAccount:demoAccount:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper resetAccountCDPContentsWithSpecificUser:idmsTargetContext:idmsCuttlefishPassword:notifyIdMS:internalAccount:demoAccount:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_10008D9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_10008D9C8(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper removeEscrowCacheWithSpecificUser:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper removeEscrowCacheWithSpecificUser:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_10008DCF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_10008DD18(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper fetchViableEscrowRecordsWithSpecificUser:source:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper fetchViableEscrowRecordsWithSpecificUser:source:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_10008E038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_10008E05C(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper getSupportAppInfoWithSpecificUser:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper getSupportAppInfoWithSpecificUser:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_10008E388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10008E3A0(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper requestEscrowCheckWithSpecificUser:requiresEscrowCheck:passcodeGeneration:knownFederations:isBackgroundCheck:flowID:deviceSessionID:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper requestEscrowCheckWithSpecificUser:requiresEscrowCheck:passcodeGeneration:knownFederations:isBackgroundCheck:flowID:deviceSessionID:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_10008E704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_10008E728(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper requestHealthCheckWithSpecificUser:requiresEscrowCheck:repair:danglingPeerCleanup:caesarPeerCleanup:updateIdMS:knownFederations:flowID:deviceSessionID:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper requestHealthCheckWithSpecificUser:requiresEscrowCheck:repair:danglingPeerCleanup:caesarPeerCleanup:updateIdMS:knownFederations:flowID:deviceSessionID:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_10008EA64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_10008EA88(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper findCustodianRecoveryKeyWithSpecificUser:uuid:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper findCustodianRecoveryKeyWithSpecificUser:uuid:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_10008EDC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_10008EDE8(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper removeCustodianRecoveryKeyWithSpecificUser:uuid:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper removeCustodianRecoveryKeyWithSpecificUser:uuid:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_10008F16C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10008F190(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper createCustodianRecoveryKeyWithSpecificUser:recoveryKey:salt:ckksKeys:uuid:kind:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper createCustodianRecoveryKeyWithSpecificUser:recoveryKey:salt:ckksKeys:uuid:kind:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_10008F4FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_10008F520(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper setRecoveryKeyWithSpecificUser:recoveryKey:salt:ckksKeys:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper setRecoveryKeyWithSpecificUser:recoveryKey:salt:ckksKeys:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_10008F840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_10008F864(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper fetchTrustStateWithSpecificUser:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper fetchTrustStateWithSpecificUser:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_10008FBB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_10008FBD4(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper fetchCurrentPolicyWithSpecificUser:modelIDOverride:isInheritedAccount:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper fetchCurrentPolicyWithSpecificUser:modelIDOverride:isInheritedAccount:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_10008FF14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_10008FF38(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper fetchPolicyDocumentsWithSpecificUser:versions:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper fetchPolicyDocumentsWithSpecificUser:versions:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_100090258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_10009027C(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper fetchEscrowContentsWithSpecificUser:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper fetchEscrowContentsWithSpecificUser:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_1000905E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_100090604(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper fetchViableBottlesWithSpecificUser:source:flowID:deviceSessionID:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper fetchViableBottlesWithSpecificUser:source:flowID:deviceSessionID:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_10009095C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_100090980(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper updateTLKsWithSpecificUser:ckksKeys:tlkShares:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper updateTLKsWithSpecificUser:ckksKeys:tlkShares:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_100090CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_100090CE0(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper setPreapprovedKeysWithSpecificUser:preapprovedKeys:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper setPreapprovedKeysWithSpecificUser:preapprovedKeys:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_1000910CC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1000910F0(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper updateWithSpecificUser:forceRefetch:deviceName:serialNumber:osVersion:policyVersion:policySecrets:syncUserControllableViews:secureElementIdentity:walrusSetting:webAccess:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper updateWithSpecificUser:forceRefetch:deviceName:serialNumber:osVersion:policyVersion:policySecrets:syncUserControllableViews:secureElementIdentity:walrusSetting:webAccess:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_1000914B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1000914D4(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper attemptPreapprovedJoinWithSpecificUser:ckksKeys:tlkShares:preapprovedKeys:altDSID:flowID:deviceSessionID:canSendMetrics:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper attemptPreapprovedJoinWithSpecificUser:ckksKeys:tlkShares:preapprovedKeys:altDSID:flowID:deviceSessionID:canSendMetrics:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_100091818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_10009183C(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper preflightPreapprovedJoinWithSpecificUser:preapprovedKeys:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper preflightPreapprovedJoinWithSpecificUser:preapprovedKeys:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_100091C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_100091C28(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper joinWithSpecificUser:voucherData:voucherSig:ckksKeys:tlkShares:preapprovedKeys:flowID:deviceSessionID:canSendMetrics:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper joinWithSpecificUser:voucherData:voucherSig:ckksKeys:tlkShares:preapprovedKeys:flowID:deviceSessionID:canSendMetrics:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_100091F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_100091FA8(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper vouchWithRerollWithSpecificUser:oldPeerID:tlkShares:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper vouchWithRerollWithSpecificUser:oldPeerID:tlkShares:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_100092308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_10009232C(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper vouchWithCustodianRecoveryKeyWithSpecificUser:crk:tlkShares:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper vouchWithCustodianRecoveryKeyWithSpecificUser:crk:tlkShares:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_1000926A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_1000926C4(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper vouchWithRecoveryKeyWithSpecificUser:recoveryKey:salt:tlkShares:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper vouchWithRecoveryKeyWithSpecificUser:recoveryKey:salt:tlkShares:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_100092A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_100092A30(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper preflightVouchWithCustodianRecoveryKeyWithSpecificUser:crk:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper preflightVouchWithCustodianRecoveryKeyWithSpecificUser:crk:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_100092D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_100092DAC(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper preflightVouchWithRecoveryKeyWithSpecificUser:recoveryKey:salt:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper preflightVouchWithRecoveryKeyWithSpecificUser:recoveryKey:salt:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_100093178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_10009319C(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper vouchWithBottleWithSpecificUser:bottleID:entropy:bottleSalt:tlkShares:altDSID:flowID:deviceSessionID:canSendMetrics:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper vouchWithBottleWithSpecificUser:bottleID:entropy:bottleSalt:tlkShares:altDSID:flowID:deviceSessionID:canSendMetrics:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_100093530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100093554(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper preflightVouchWithBottleWithSpecificUser:bottleID:altDSID:flowID:deviceSessionID:canSendMetrics:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper preflightVouchWithBottleWithSpecificUser:bottleID:altDSID:flowID:deviceSessionID:canSendMetrics:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_100093944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_100093968(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper vouchWithSpecificUser:peerID:permanentInfo:permanentInfoSig:stableInfo:stableInfoSig:ckksKeys:flowID:deviceSessionID:canSendMetrics:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper vouchWithSpecificUser:peerID:permanentInfo:permanentInfoSig:stableInfo:stableInfoSig:ckksKeys:flowID:deviceSessionID:canSendMetrics:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_100093D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_100093D4C(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper establishWithSpecificUser:ckksKeys:tlkShares:preapprovedKeys:altDSID:flowID:deviceSessionID:canSendMetrics:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper establishWithSpecificUser:ckksKeys:tlkShares:preapprovedKeys:altDSID:flowID:deviceSessionID:canSendMetrics:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_1000941D4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1000941F8(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper prepareWithSpecificUser:epoch:machineID:bottleSalt:bottleID:modelID:deviceName:serialNumber:osVersion:policyVersion:policySecrets:syncUserControllableViews:secureElementIdentity:setting:signingPrivKeyPersistentRef:encPrivKeyPersistentRef:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper prepareWithSpecificUser:epoch:machineID:bottleSalt:bottleID:modelID:deviceName:serialNumber:osVersion:policyVersion:policySecrets:syncUserControllableViews:secureElementIdentity:setting:signingPrivKeyPersistentRef:encPrivKeyPersistentRef:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_10009452C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_100094550(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper fetchEgoEpochWithSpecificUser:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper fetchEgoEpochWithSpecificUser:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_100094870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_100094894(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper fetchAllowedMachineIDsWithSpecificUser:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper fetchAllowedMachineIDsWithSpecificUser:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_100094BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_100094BF4(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper handleRemovedMachineIDsDueToUnknownReasonsWithSpecificUser:machineIDs:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper handleRemovedMachineIDsDueToUnknownReasonsWithSpecificUser:machineIDs:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_100094F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_100094F50(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper handleEvictedMachineIDsWithSpecificUser:machineIDs:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper handleEvictedMachineIDsWithSpecificUser:machineIDs:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_10009526C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_100095290(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper markTrustedDeviceListFetchFailed:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper markTrustedDeviceListFetchFailed:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_1000956C8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1000956EC(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper setAllowedMachineIDsWithSpecificUser:allowedMachineIDs:userInitiatedRemovals:evictedRemovals:unknownReasonRemovals:honorIDMSListChanges:version:flowID:deviceSessionID:canSendMetrics:altDSID:trustedDeviceHash:deletedDeviceHash:trustedDevicesUpdateTimestamp:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper setAllowedMachineIDsWithSpecificUser:allowedMachineIDs:userInitiatedRemovals:evictedRemovals:unknownReasonRemovals:honorIDMSListChanges:version:flowID:deviceSessionID:canSendMetrics:altDSID:trustedDeviceHash:deletedDeviceHash:trustedDevicesUpdateTimestamp:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_100095A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_100095A30(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper localResetWithSpecificUser:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper localResetWithSpecificUser:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_100095E04(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_100095E28(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper resetWithSpecificUser:resetReason:idmsTargetContext:idmsCuttlefishPassword:notifyIdMS:internalAccount:demoAccount:isGuitarfish:accountIsW:accountType:altDSID:flowID:deviceSessionID:canSendMetrics:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper resetWithSpecificUser:resetReason:idmsTargetContext:idmsCuttlefishPassword:notifyIdMS:internalAccount:demoAccount:isGuitarfish:accountIsW:accountType:altDSID:flowID:deviceSessionID:canSendMetrics:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_100096144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_100096168(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper trustStatusWithSpecificUser:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper trustStatusWithSpecificUser:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_100096560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_100096584(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper distrustPeerIDsWithSpecificUser:peerIDs:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper distrustPeerIDsWithSpecificUser:peerIDs:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_1000968A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_1000968C4(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper departByDistrustingSelfWithSpecificUser:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper departByDistrustingSelfWithSpecificUser:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_100096BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_100096C04(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper trustedDeviceNamesByPeerIDWithSpecificUser:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper trustedDeviceNamesByPeerIDWithSpecificUser:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_100096F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_100096F64(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper octagonPeerIDGivenBottleIDWithSpecificUser:bottleID:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper octagonPeerIDGivenBottleIDWithSpecificUser:bottleID:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_100097284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_1000972A8(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper honorIDMSListChangesForSpecificUser:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper honorIDMSListChangesForSpecificUser:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_1000975E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_100097608(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[6] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper dumpWithSpecificUser:fileDescriptor:reply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper dumpWithSpecificUser:fileDescriptor:reply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_1000978F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_100097918(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[5] + 8) + 24) <= 4 && (v4 = a1[4], [objc_opt_class() retryable:v3]))
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[5] + 8) + 24);
      v8 = 136315650;
      v9 = "[CuttlefishXPCWrapper pingWithReply:]_block_invoke";
      v10 = 1024;
      LODWORD(v11[0]) = v6;
      WORD2(v11[0]) = 2112;
      *(v11 + 6) = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "retrying cuttlefish XPC %s, (%d, %@)", &v8, 0x1Cu);
    }

    *(*(a1[6] + 8) + 24) = 1;
  }

  else
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[CuttlefishXPCWrapper pingWithReply:]_block_invoke";
      v10 = 2112;
      v11[0] = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon: Can't talk with TrustedPeersHelper %s: %@", &v8, 0x16u);
    }
  }

  ++*(*(a1[5] + 8) + 24);
}

void sub_100097EDC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v8 && !v9)
  {
    v11 = sub_100006274("octagon-ckks");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v8 viewList];
      *buf = 138412546;
      v38 = v8;
      v39 = 2112;
      v40 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received syncing policy %@ with view list: %@", buf, 0x16u);
    }

    v13 = [WeakRetained deps];
    v14 = [v13 stateHolder];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100098370;
    v35[3] = &unk_100344BD8;
    v15 = v8;
    v36 = v15;
    v34 = 0;
    [v14 persistAccountChanges:v35 error:&v34];
    v16 = v34;

    if (v16)
    {
      v17 = sub_100006274("SecError");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v38 = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "octagon: failed to save policy+views: %@", buf, 0xCu);
      }

      [WeakRetained setError:v16];
    }

    else
    {
      v29 = [WeakRetained deps];
      v30 = [v29 ckks];
      [v30 setCurrentSyncingPolicy:v15];

      v31 = [WeakRetained deps];
      v32 = [v31 notifierClass];
      [v32 post:OTUserControllableViewStatusChanged];

      v33 = [WeakRetained intendedState];
      [WeakRetained setNextState:v33];
    }

LABEL_21:
    goto LABEL_22;
  }

  v18 = sub_100006274("SecError");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v9;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "octagon-ckks: setting user-controllable views status errored: %@", buf, 0xCu);
  }

  [WeakRetained setError:v9];
  v19 = [WeakRetained deps];
  v20 = [v19 lockStateTracker];
  v21 = [WeakRetained error];
  v22 = [v20 isLockedError:v21];

  if (v22)
  {
    v23 = sub_100006274("octagon-ckks");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [WeakRetained error];
      *buf = 138412290;
      v38 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Updating user-controllable view status failed because of lock state, will retry once unlocked: %@", buf, 0xCu);
    }

    v25 = [[OctagonPendingFlag alloc] initWithFlag:@"attempt_ucv_upgrade" conditions:1];
    v26 = [WeakRetained deps];
    v27 = [v26 flagHandler];
    [v27 handlePendingFlag:v25];
  }

  if (([v7 peerStatus] & 0x24) != 0)
  {
    v28 = sub_100006274("octagon-ckks");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Updating user-controllable view status failed because our self peer is excluded or missing", buf, 2u);
    }

    v16 = [WeakRetained peerMissingState];
    [WeakRetained setNextState:v16];
    goto LABEL_21;
  }

LABEL_22:
}

id sub_100098370(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTPSyncingPolicy:*(a1 + 32)];

  return v3;
}

void sub_1000987F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = sub_100006274("octagon-ckks");
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v9)
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Determining peers' user-controllable views policy failed: %@", buf, 0xCu);
    }

    [WeakRetained setError:v6];
  }

  else
  {
    if (v9)
    {
      if (a3 >= 4)
      {
        v10 = [NSString stringWithFormat:@"(unknown: %i)", a3];
      }

      else
      {
        v10 = *(&off_100335FF8 + a3);
      }

      *buf = 138412290;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Retrieved peers' user-controllable views policy as: %@", buf, 0xCu);
    }

    [WeakRetained performWithStatus:a3];
  }
}

void sub_10009DB20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_10009DB54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v62 = +[NSMutableArray array];
  v61 = +[NSMutableArray array];
  v3 = +[NSMutableArray array];
  v56 = +[NSMutableSet set];
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = *(a1 + 32);
  v64 = WeakRetained;
  v60 = [obj countByEnumeratingWithState:&v83 objects:v94 count:16];
  if (v60)
  {
    v59 = *v84;
    do
    {
      for (i = 0; i != v60; i = i + 1)
      {
        if (*v84 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v83 + 1) + 8 * i);
        v6 = [v5 error];

        v66 = v5;
        if (!v6)
        {
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          v14 = [v5 keysets];
          v15 = [v14 allKeys];

          v63 = v15;
          v67 = [v15 countByEnumeratingWithState:&v79 objects:v93 count:16];
          if (!v67)
          {
            goto LABEL_51;
          }

          v57 = i;
          v65 = *v80;
          while (1)
          {
            v16 = 0;
            do
            {
              if (*v80 != v65)
              {
                objc_enumerationMutation(v63);
              }

              v68 = v16;
              v17 = *(*(&v79 + 1) + 8 * v16);
              v18 = [v5 keysets];
              v19 = [v18 objectForKeyedSubscript:v17];

              v20 = [WeakRetained viewFilter];

              if (!v20)
              {
LABEL_29:
                v74 = 0;
                v33 = [v19 asKeychainBackedSet:&v74];
                v32 = v74;
                if (v33)
                {
                  v34 = sub_100006274("octagon-ckks");
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    *v88 = v19;
                    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Have proposed keys: %@", buf, 0xCu);
                  }

                  v35 = v62;
                  v36 = v33;
                  goto LABEL_37;
                }

                if (v19)
                {
                  v37 = sub_100006274("octagon-ckks");
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    *v88 = v19;
                    *&v88[8] = 2112;
                    v89 = v32;
                    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Unable to convert proposed keys: %@ %@", buf, 0x16u);
                  }

                  v35 = v61;
                  v36 = v19;
LABEL_37:
                  [v35 addObject:v36];
                }

                v72 = 0u;
                v73 = 0u;
                v70 = 0u;
                v71 = 0u;
                v38 = [v19 pendingTLKShares];
                v39 = [v38 countByEnumeratingWithState:&v70 objects:v91 count:16];
                if (v39)
                {
                  v40 = v39;
                  v41 = *v71;
                  do
                  {
                    for (j = 0; j != v40; j = j + 1)
                    {
                      if (*v71 != v41)
                      {
                        objc_enumerationMutation(v38);
                      }

                      v43 = [*(*(&v70 + 1) + 8 * j) share];
                      [v3 addObject:v43];
                    }

                    v40 = [v38 countByEnumeratingWithState:&v70 objects:v91 count:16];
                  }

                  while (v40);
                }

                v44 = sub_100006274("octagon-ckks");
                if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                {
                  v45 = [v19 pendingTLKShares];
                  v46 = [v45 count];
                  *buf = 67109120;
                  *v88 = v46;
                  _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Have %u pending tlk shares", buf, 8u);
                }

                goto LABEL_48;
              }

              v77 = 0u;
              v78 = 0u;
              v75 = 0u;
              v76 = 0u;
              v69 = [WeakRetained viewFilter];
              v21 = [v69 countByEnumeratingWithState:&v75 objects:v92 count:16];
              if (v21)
              {
                v22 = v21;
                v23 = *v76;
                while (2)
                {
                  for (k = 0; k != v22; k = k + 1)
                  {
                    if (*v76 != v23)
                    {
                      objc_enumerationMutation(v69);
                    }

                    v25 = *(*(&v75 + 1) + 8 * k);
                    v26 = v19;
                    v27 = [v19 zoneID];
                    v28 = [v27 zoneName];
                    v29 = [v25 zoneID];
                    v30 = [v29 zoneName];
                    v31 = [v28 isEqualToString:v30];

                    if (v31)
                    {

                      v19 = v26;
                      goto LABEL_29;
                    }

                    v19 = v26;
                  }

                  v22 = [v69 countByEnumeratingWithState:&v75 objects:v92 count:16];
                  if (v22)
                  {
                    continue;
                  }

                  break;
                }
              }

              v32 = sub_100006274("octagon-ckks");
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *v88 = v19;
                _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Skipping keys: %@", buf, 0xCu);
              }

LABEL_48:
              WeakRetained = v64;

              v16 = v68 + 1;
              v5 = v66;
            }

            while ((v68 + 1) != v67);
            v67 = [v63 countByEnumeratingWithState:&v79 objects:v93 count:16];
            if (!v67)
            {
              i = v57;
LABEL_51:
              v10 = v63;
LABEL_53:

              goto LABEL_54;
            }
          }
        }

        v7 = sub_100006274("octagon-ckks");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [v5 intendedZoneIDs];
          v9 = [v5 error];
          *buf = 138412546;
          *v88 = v8;
          *&v88[8] = 2112;
          v89 = v9;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "No keys for %@: %@", buf, 0x16u);
        }

        v10 = [v5 error];
        v11 = [v10 domain];
        if (([v11 isEqualToString:@"CKKSResultOperationError"] & 1) == 0)
        {

          goto LABEL_53;
        }

        v12 = [v5 error];
        v13 = [v12 code];

        if (v13 == 3)
        {
          v10 = [v5 intendedZoneIDs];
          [v56 unionSet:v10];
          goto LABEL_53;
        }

LABEL_54:
        ;
      }

      v60 = [obj countByEnumeratingWithState:&v83 objects:v94 count:16];
    }

    while (v60);
  }

  [WeakRetained setViewKeySets:v62];
  [WeakRetained setIncompleteKeySets:v61];
  [WeakRetained setPendingTLKShares:v3];
  [WeakRetained setZonesTimedOutWithoutKeysets:v56];
  v47 = sub_100006274("octagon-ckks");
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v48 = [WeakRetained viewKeySets];
    v49 = [v48 count];
    v50 = [WeakRetained incompleteKeySets];
    v51 = [v50 count];
    v52 = [WeakRetained pendingTLKShares];
    v53 = [v52 count];
    v54 = [v64 zonesTimedOutWithoutKeysets];
    v55 = [v54 count];
    *buf = 67109888;
    *v88 = v49;
    *&v88[4] = 1024;
    *&v88[6] = v51;
    LOWORD(v89) = 1024;
    *(&v89 + 2) = v53;
    HIWORD(v89) = 1024;
    v90 = v55;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Fetched %d key sets, %d broken key sets, %d pendingTLKShares, and %d views timing out", buf, 0x1Au);

    WeakRetained = v64;
  }
}

void sub_10009E7B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10009E7D8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = sub_100006274("octagon");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      v7 = [WeakRetained deps];
      v8 = [v7 containerName];
      v9 = [WeakRetained deps];
      v10 = [v9 contextID];
      *buf = 138412802;
      v19 = v8;
      v20 = 2112;
      v21 = v10;
      v22 = 2112;
      v23 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Unable to reset local cuttlefish for (%@,%@): %@", buf, 0x20u);
    }

    [WeakRetained setError:v3];
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Successfully reset local cuttlefish", buf, 2u);
    }

    v11 = [WeakRetained deps];
    v12 = [v11 stateHolder];
    v17 = 0;
    [v12 persistAccountChanges:&stru_100336098 error:&v17];
    v13 = v17;

    v14 = sub_100006274("octagon");
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v15)
      {
        *buf = 138412290;
        v19 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Error resetting local account state: %@", buf, 0xCu);
      }
    }

    else
    {
      if (v15)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Successfully reset local account state", buf, 2u);
      }

      v14 = [WeakRetained intendedState];
      [WeakRetained setNextState:v14];
    }
  }

  v16 = [WeakRetained finishedOp];
  [WeakRetained runBeforeGroupFinished:v16];
}

OTAccountMetadataClassC *__cdecl sub_10009EA6C(id a1, OTAccountMetadataClassC *a2)
{
  v2 = a2;
  [(OTAccountMetadataClassC *)v2 setTrustState:0];
  [(OTAccountMetadataClassC *)v2 setPeerID:0];
  [(OTAccountMetadataClassC *)v2 setSyncingPolicy:0];
  [(OTAccountMetadataClassC *)v2 setVoucher:0];
  [(OTAccountMetadataClassC *)v2 setVoucherSignature:0];
  [(OTAccountMetadataClassC *)v2 setTlkSharesForVouchedIdentitys:0];
  [(OTAccountMetadataClassC *)v2 setIsInheritedAccount:0];
  [(OTAccountMetadataClassC *)v2 setWarmedEscrowCache:0];
  [(OTAccountMetadataClassC *)v2 setWarnedTooManyPeers:0];

  return v2;
}

void sub_10009ECC4(id a1)
{
  v3[0] = @"ready";
  v3[1] = @"error";
  v4[0] = &off_100364048;
  v4[1] = &off_100364060;
  v3[2] = @"initializing";
  v3[3] = @"initialized";
  v4[2] = &off_100364078;
  v4[3] = &off_100364090;
  v3[4] = @"fetchcomplete";
  v3[5] = @"unhealthy";
  v4[4] = &off_1003640A8;
  v4[5] = &off_1003640C0;
  v3[6] = @"needrefetch";
  v3[7] = @"fetching";
  v4[6] = &off_1003640D8;
  v4[7] = &off_1003640F0;
  v3[8] = @"resetzone";
  v3[9] = @"resetlocal";
  v4[8] = &off_100364108;
  v4[9] = &off_100364120;
  v3[10] = @"loggedout";
  v3[11] = @"zonecreationfailed";
  v4[10] = &off_100364138;
  v4[11] = &off_100364150;
  v3[12] = @"waitfortrust";
  v3[13] = @"process_key_hierarchy";
  v4[12] = &off_100364168;
  v4[13] = &off_100364180;
  v3[14] = @"check_zone_hierarchies";
  v3[15] = @"become_ready";
  v4[14] = &off_100364198;
  v4[15] = &off_1003641B0;
  v3[16] = @"lose_trust";
  v3[17] = @"tlkmissing";
  v4[16] = &off_1003641C8;
  v4[17] = &off_1003641E0;
  v3[18] = @"wait_for_ck_account_status";
  v3[19] = @"begin_fetch";
  v4[18] = &off_1003641F8;
  v4[19] = &off_100364210;
  v3[20] = @"fixup_fetch_cip";
  v3[21] = @"fixup_fetch_tlkshares";
  v4[20] = &off_100364228;
  v4[21] = &off_100364240;
  v3[22] = @"fixup_local_reload";
  v3[23] = @"fixup_resave_cdse";
  v4[22] = &off_100364258;
  v4[23] = &off_100364270;
  v3[24] = @"fixup_delete_tombstones";
  v3[25] = @"heal_tlk_shares";
  v4[24] = &off_100364288;
  v4[25] = &off_1003642A0;
  v3[26] = @"healtlksharesfailed";
  v3[27] = @"provide_key_hieararchy";
  v4[26] = &off_1003642B8;
  v4[27] = &off_1003642D0;
  v3[28] = @"provide_key_hieararchy_untrusted";
  v3[29] = @"process_incoming_queue";
  v4[28] = &off_1003642E8;
  v4[29] = &off_100364300;
  v3[30] = @"class_a_incoming_items_remaining";
  v3[31] = @"scan_local_items";
  v4[30] = &off_100364318;
  v4[31] = &off_100364330;
  v3[32] = @"reencrypt_outgoing_items";
  v3[33] = @"process_outgoing_queue";
  v4[32] = &off_100364348;
  v4[33] = &off_100364360;
  v3[34] = @"process_outgoing_queue_failed";
  v3[35] = @"handle_all_views";
  v4[34] = &off_100364378;
  v4[35] = &off_100364390;
  v3[36] = @"zone_creation_failed_due_to_network_error";
  v3[37] = @"zone_deletion_failed_due_to_network_error";
  v4[36] = &off_1003643A8;
  v4[37] = &off_1003643C0;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:38];
  v2 = qword_10039DDA8;
  qword_10039DDA8 = v1;
}

void sub_10009F050(id a1)
{
  v4[0] = @"fetch_requested";
  v4[1] = @"key_process_requested";
  v4[2] = @"trusted_peers_changed";
  v4[3] = @"dropped_items";
  v4[4] = @"ck_account_logged_in";
  v4[5] = @"ck_account_logged_out";
  v4[6] = @"ck_zone_missing";
  v4[7] = @"ck_change_token_expired";
  v4[8] = @"process_incoming_queue";
  v4[9] = @"process_outgoing_queue";
  v4[10] = @"item_reencryption_needed";
  v4[11] = @"trusted_operation_begin";
  v4[12] = @"trusted_operation_end";
  v4[13] = @"device_unlocked";
  v4[14] = @"fetch_complete";
  v4[15] = @"24_hr_notification";
  v4[16] = @"key_set";
  v4[17] = @"check_queues";
  v4[18] = @"policy_fresh";
  v4[19] = @"oqo_token";
  v4[20] = @"new_priority_views";
  v4[21] = @"zone_creation";
  v4[22] = @"zone_deletion";
  v1 = [NSArray arrayWithObjects:v4 count:23];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_10039DDB8;
  qword_10039DDB8 = v2;
}

void sub_10009FDBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10009FDD4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10009FDEC(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [*(a1 + 40) fromDatabaseRow:a2];
  v3 = [v4 memoizeOriginalSelfWhereClause];
  [v2 addObject:v3];
}

void sub_10009FFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10009FFFC(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [*(a1 + 40) fromDatabaseRow:a2];
  v3 = [v4 memoizeOriginalSelfWhereClause];
  [v2 addObject:v3];
}

void sub_1000A01D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000A01EC(uint64_t a1, uint64_t a2)
{
  v6 = [*(a1 + 40) fromDatabaseRow:a2];
  v3 = [v6 memoizeOriginalSelfWhereClause];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t sub_1000A05C4(uint64_t a1, uint64_t a2)
{
  cf = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A0708;
  v7[3] = &unk_100336368;
  v8 = *(a1 + 32);
  v3 = sub_1000141DC(a2, 5, &cf, v7);
  if (cf)
  {
    v4 = sub_100019104(@"ckkssql", 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = cf;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "error performing database transaction, major problems ahead: %@", buf, 0xCu);
    }

    v5 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v5);
    }
  }

  return v3;
}

BOOL sub_1000A0708()
{
  off_10039D598();
  v1 = v0;
  *v0 = 1;
  v3 = (*(*(v2 + 32) + 16))();
  *v1 = 0;
  return v3 == 1;
}

void sub_1000A0904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A091C(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 80) quotedString:*(a1 + 32)];
  v4 = [*(a1 + 80) quotedString:*(a1 + 40)];
  v5 = +[NSMutableArray array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = *(a1 + 48);
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    do
    {
      v10 = 0;
      do
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(a1 + 80) quotedString:*(*(&v31 + 1) + 8 * v10)];
        [v5 addObject:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v8);
  }

  v12 = [v5 componentsJoinedByString:{@", "}];
  v23 = [v12 stringByAppendingFormat:@", %@", v3];

  v13 = [CKKSSQLDatabaseObject makeWhereClause:*(a1 + 56)];
  v14 = [[NSString alloc] initWithFormat:@"SELECT %@ FROM %@%@", v23, v4, v13];
  v24 = v3;
  v15 = *(*(a1 + 72) + 8);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000A0BD8;
  v26[3] = &unk_1003362F0;
  v29 = *(a1 + 80);
  v16 = *(a1 + 56);
  v17 = v4;
  v18 = *(a1 + 72);
  v30 = a2;
  v19 = *(a1 + 48);
  *&v20 = *(a1 + 64);
  *(&v20 + 1) = v18;
  *&v21 = v16;
  *(&v21 + 1) = v19;
  v27 = v21;
  v28 = v20;
  sub_10001489C(a2, v14, (v15 + 24), v26);

  return 1;
}

void sub_1000A0BD8(uint64_t a1, sqlite3_stmt *a2)
{
  [*(a1 + 64) bindWhereClause:a2 whereDict:*(a1 + 32) cferror:*(*(a1 + 56) + 8) + 24];
  v4 = *(a1 + 72);
  v5 = *(*(a1 + 56) + 8);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000A0CB8;
  v6[3] = &unk_1003362C8;
  v7 = *(a1 + 40);
  v9 = a2;
  v8 = *(a1 + 48);
  sub_100015DAC(v4, a2, (v5 + 24), v6);
}

void sub_1000A0CB8(void *a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10009FDD4;
  v10 = sub_10009FDE4;
  v11 = objc_alloc_init(NSMutableDictionary);
  v2 = a1[4];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A0DC8;
  v5[3] = &unk_1003362A0;
  v3 = a1[6];
  v5[4] = &v6;
  v5[5] = v3;
  [v2 enumerateObjectsUsingBlock:v5];
  v4 = v7[5];
  (*(a1[5] + 16))();
  _Block_object_dispose(&v6, 8);
}

void sub_1000A0DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000A0DC8(uint64_t a1, void *a2, int a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = sqlite3_column_text(v5, a3);
  v8 = [CKKSSQLResult alloc];
  if (v7)
  {
    v9 = [NSString stringWithUTF8String:v7];
  }

  else
  {
    v9 = 0;
  }

  v11 = v9;
  v10 = [(CKKSSQLResult *)v8 init:v9];
  [*(*(*(a1 + 32) + 8) + 40) setObject:v10 forKeyedSubscript:v6];

  if (v7)
  {
  }
}

uint64_t sub_1000A112C(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) componentsJoinedByString:{@", "}];
  v5 = [CKKSSQLDatabaseObject makeWhereClause:*(a1 + 40)];
  v6 = [CKKSSQLDatabaseObject groupByClause:*(a1 + 48)];
  v7 = [CKKSSQLDatabaseObject orderByClause:*(a1 + 56)];
  if (*(a1 + 88) < 1)
  {
    v8 = &stru_100348050;
  }

  else
  {
    v8 = [NSString stringWithFormat:@" LIMIT %lu", *(a1 + 88)];
  }

  v9 = [[NSString alloc] initWithFormat:@"SELECT %@ FROM %@%@%@%@%@;", v4, *(a1 + 64), v5, v6, v7, v8];
  v10 = *(*(a1 + 80) + 8);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000A12FC;
  v14[3] = &unk_1003362F0;
  v19 = *(a1 + 96);
  v11 = *(a1 + 40);
  v12 = *(a1 + 80);
  v15 = v11;
  v18 = v12;
  v20 = a2;
  v16 = *(a1 + 32);
  v17 = *(a1 + 72);
  sub_10001489C(a2, v9, (v10 + 24), v14);

  return 1;
}

void sub_1000A12FC(uint64_t a1, sqlite3_stmt *a2)
{
  [*(a1 + 64) bindWhereClause:a2 whereDict:*(a1 + 32) cferror:*(*(a1 + 56) + 8) + 24];
  v4 = *(a1 + 72);
  v5 = *(*(a1 + 56) + 8);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000A13DC;
  v6[3] = &unk_1003362C8;
  v7 = *(a1 + 40);
  v9 = a2;
  v8 = *(a1 + 48);
  sub_100015DAC(v4, a2, (v5 + 24), v6);
}

void sub_1000A13DC(void *a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10009FDD4;
  v10 = sub_10009FDE4;
  v11 = objc_alloc_init(NSMutableDictionary);
  v2 = a1[4];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A14EC;
  v5[3] = &unk_1003362A0;
  v3 = a1[6];
  v5[4] = &v6;
  v5[5] = v3;
  [v2 enumerateObjectsUsingBlock:v5];
  v4 = v7[5];
  (*(a1[5] + 16))();
  _Block_object_dispose(&v6, 8);
}

void sub_1000A14D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000A14EC(uint64_t a1, void *a2, int a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = sqlite3_column_text(v5, a3);
  v8 = [CKKSSQLResult alloc];
  if (v7)
  {
    v9 = [NSString stringWithUTF8String:v7];
  }

  else
  {
    v9 = 0;
  }

  v11 = v9;
  v10 = [(CKKSSQLResult *)v8 init:v9];
  [*(*(*(a1 + 32) + 8) + 40) setObject:v10 forKeyedSubscript:v6];

  if (v7)
  {
  }
}

void sub_1000A173C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A1758(uint64_t a1, uint64_t a2)
{
  v4 = [CKKSSQLDatabaseObject makeWhereClause:*(a1 + 32)];
  v5 = [[NSString alloc] initWithFormat:@"DELETE FROM %@%@;", *(a1 + 40), v4];
  v6 = *(*(a1 + 48) + 8);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000A1860;
  v10[3] = &unk_100336250;
  v13 = *(a1 + 56);
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v11 = v7;
  v12 = v8;
  v14 = a2;
  sub_10001489C(a2, v5, (v6 + 24), v10);

  return 1;
}

BOOL sub_1000A1860(uint64_t a1, sqlite3_stmt *a2)
{
  [*(a1 + 48) bindWhereClause:a2 whereDict:*(a1 + 32) cferror:*(*(a1 + 40) + 8) + 24];
  v4 = *(a1 + 56);
  v5 = (*(*(a1 + 40) + 8) + 24);

  return sub_100015DAC(v4, a2, v5, &stru_100336228);
}

void sub_1000A19B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000A19CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {

    goto LABEL_15;
  }

  v6 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v7 = objc_opt_class();
  v8 = objc_opt_class();

  if (v7 == v8)
  {
LABEL_15:
    v17 = [*(a1 + 32) objectForKeyedSubscript:v3];
    v23 = *(a1 + 48);
    v24 = *(*(*(a1 + 40) + 8) + 24);
    v25 = [v17 value];
    sub_10000CBCC(v23, v24, v25, *(a1 + 56));

    ++*(*(*(a1 + 40) + 8) + 24);
LABEL_16:

    goto LABEL_17;
  }

  v9 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v10 = objc_opt_class();
  v11 = objc_opt_class();

  if (v10 != v11)
  {
    v12 = [*(a1 + 32) objectForKeyedSubscript:v3];
    v13 = objc_opt_class();
    v14 = objc_opt_class();

    if (v13 != v14)
    {
      v15 = [*(a1 + 32) objectForKeyedSubscript:v3];
      v16 = [v15 isMemberOfClass:objc_opt_class()];

      if (!v16)
      {
        v26 = *(a1 + 48);
        v27 = *(*(*(a1 + 40) + 8) + 24);
        v28 = [*(a1 + 32) objectForKeyedSubscript:v3];
        sub_10000CBCC(v26, v27, v28, *(a1 + 56));

        ++*(*(*(a1 + 40) + 8) + 24);
        goto LABEL_17;
      }

      v17 = [*(a1 + 32) objectForKeyedSubscript:v3];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v18 = [v17 values];
      v19 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v30;
        do
        {
          v22 = 0;
          do
          {
            if (*v30 != v21)
            {
              objc_enumerationMutation(v18);
            }

            sub_10000CBCC(*(a1 + 48), *(*(*(a1 + 40) + 8) + 24), *(*(&v29 + 1) + 8 * v22), *(a1 + 56));
            ++*(*(*(a1 + 40) + 8) + 24);
            v22 = v22 + 1;
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v20);
      }

      goto LABEL_16;
    }
  }

LABEL_17:
}

void sub_1000A1DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000A1DE0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(*(a1 + 40) + 8) + 24);
  v5 = a2;
  if (v4)
  {
    v6 = @", ";
  }

  else
  {
    v6 = @" ORDER BY ";
  }

  [v3 appendFormat:v6];
  [*(a1 + 32) appendFormat:@"%@", v5];

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void sub_1000A1F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000A1F70(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(*(a1 + 40) + 8) + 24);
  v5 = a2;
  if (v4)
  {
    v6 = @", ";
  }

  else
  {
    v6 = @" GROUP BY ";
  }

  [v3 appendFormat:v6];
  [*(a1 + 32) appendFormat:@"%@", v5];

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void sub_1000A20E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000A2100(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v7 = @" AND ";
  }

  else
  {
    v7 = @" WHERE ";
  }

  [*(a1 + 32) appendFormat:v7];
  v8 = objc_opt_class();
  if (v8 == objc_opt_class())
  {
    v11 = *(a1 + 32);
    v12 = [v6 sqlOp];
    if ((v12 - 2) > 2)
    {
      v13 = @"=";
    }

    else
    {
      v13 = off_1003363D8[(v12 - 2)];
    }

    v30 = v5;
    v32 = v13;
    v18 = @"%@%@(?)";
    goto LABEL_32;
  }

  v9 = objc_opt_class();
  if (v9 == objc_opt_class())
  {
    v14 = v6;
    v15 = *(a1 + 32);
    v16 = [v14 sqlOp] - 2;
    if (v16 > 2)
    {
      v17 = @"=";
    }

    else
    {
      v17 = off_1003363D8[v16];
    }

    v28 = [v14 columnName];
    v29 = @"parentKeyUUID";
    if (v28 == 1)
    {
      v29 = @"uuid";
    }

    [v15 appendFormat:@"%@%@%@", v5, v17, v29];
LABEL_29:

    goto LABEL_33;
  }

  v10 = objc_opt_class();
  if (v10 == objc_opt_class())
  {
    v11 = *(a1 + 32);
    v19 = [v6 sqlOp];
    if ((v19 - 2) > 2)
    {
      v20 = @"=";
    }

    else
    {
      v20 = off_1003363D8[(v19 - 2)];
    }

    v33 = v5;
    v34 = v20;
    v30 = v5;
    v32 = v5;
    v18 = @"(%@ is NULL OR (%@ IS NOT NULL AND %@%@(?)))";
LABEL_32:
    [v11 appendFormat:v18, v30, v32, v33, v34];
    goto LABEL_33;
  }

  if (![v6 isMemberOfClass:objc_opt_class()])
  {
    if (![v6 isMemberOfClass:objc_opt_class()])
    {
      [*(a1 + 32) appendFormat:@"%@=(?)", v5, v31, v33, v34];
      goto LABEL_33;
    }

    v14 = v6;
    v21 = [v14 values];
    v22 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v21 count]);

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v23 = [v14 values];
    v24 = [v23 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v36;
      while (1)
      {
        if (*v36 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [v22 addObject:@"?"];
        if (!--v25)
        {
          v25 = [v23 countByEnumeratingWithState:&v35 objects:v39 count:16];
          if (!v25)
          {
            break;
          }
        }
      }
    }

    v27 = [v22 componentsJoinedByString:{@", "}];
    [*(a1 + 32) appendFormat:@"%@ IN (%@)", v5, v27];

    goto LABEL_29;
  }

  [*(a1 + 32) appendFormat:@"%@ is NULL", v5, v31, v33, v34];
LABEL_33:
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void sub_1000A25E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A2604(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) allKeys];
  v5 = [v4 componentsJoinedByString:{@", "}];

  v6 = objc_alloc_init(NSMutableString);
  v7 = [*(a1 + 32) allKeys];
  v8 = [v7 count];

  if (v8)
  {
    v9 = 0;
    do
    {
      if (v9)
      {
        v10 = @",?";
      }

      else
      {
        v10 = @"?";
      }

      [v6 appendString:v10];
      ++v9;
      v11 = [*(a1 + 32) allKeys];
      v12 = [v11 count];
    }

    while (v9 < v12);
  }

  v13 = [[NSString alloc] initWithFormat:@"INSERT OR REPLACE into %@ (%@) VALUES (%@);", *(a1 + 40), v5, v6];
  v14 = *(*(a1 + 48) + 8);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000A27A8;
  v18[3] = &unk_100336168;
  v15 = *(a1 + 32);
  v16 = *(a1 + 48);
  v19 = v15;
  v20 = v16;
  v21 = a2;
  sub_10001489C(a2, v13, (v14 + 24), v18);

  return 1;
}

void sub_1000A27A8(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) allKeys];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A2878;
  v7[3] = &unk_100336100;
  v10 = a2;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  [v4 enumerateObjectsUsingBlock:v7];

  sub_100015DAC(*(a1 + 48), a2, (*(*(a1 + 40) + 8) + 24), &stru_100336140);
}

void sub_1000A2878(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 48);
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];
  sub_10000CBCC(v5, (a3 + 1), v6, (*(*(a1 + 40) + 8) + 24));
}

BOOL sub_1000A2B90(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if ([a2 hasPrefix:@"G:"])
  {
    [*(a1 + 32) timeIntervalSinceDate:v5];
    v7 = v6 > 0.0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1000A3E7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100006274("escrowrequest");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) numberOfRecordsUploaded];
    v6[0] = 67109378;
    v6[1] = v5;
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Uploaded %d records with error %@", v6, 0x12u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), [*(a1 + 32) numberOfRecordsUploaded], v3);
}

void sub_1000A51AC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_100006274("octagon");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Notified that the device name has changed", v6, 2u);
  }

  v5 = [a3 deviceNameUpdateListeners];
  [v5 iterateListeners:&stru_100336488];
}

void sub_1000A547C(id a1)
{
  memset(&__b, 170, sizeof(__b));
  uname(&__b);
  v1 = [NSString stringWithCString:__b.machine encoding:4];
  v2 = qword_10039DDC8;
  qword_10039DDC8 = v1;
}

void sub_1000A5D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  objc_destroyWeak((v14 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v15 - 56));
  _Unwind_Resume(a1);
}

uint64_t sub_1000A5D3C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000A5D54(uint64_t a1)
{
  v2 = [CKKSCondition alloc];
  v3 = [*(a1 + 32) octagonInformationInitialized];
  v4 = [(CKKSCondition *)v2 initToChain:v3];
  [*(a1 + 32) setOctagonInformationInitialized:v4];

  v5 = [*(a1 + 32) octagonInformationInitialized];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return _objc_release_x1();
}

void sub_1000A5DEC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a3;
  v10 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12 = [WeakRetained queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A5EE4;
  block[3] = &unk_100336500;
  v17 = v10;
  v18 = WeakRetained;
  v13 = *(a1 + 32);
  v19 = v9;
  v20 = v13;
  v21 = a2;
  v14 = v9;
  v15 = v10;
  dispatch_sync(v12, block);
}

id sub_1000A5EE4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_100019104(@"ckksaccount", 0);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v13 = 138412290;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "error getting octagon status: %@", &v13, 0xCu);
    }

    v6 = [OTCliqueStatusWrapper alloc];
    v7 = -1;
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 64);
      v9 = OTCliqueStatusToString();
      v10 = *(a1 + 48);
      v13 = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Caching octagon status as (%@, %@)", &v13, 0x16u);
    }

    v6 = [OTCliqueStatusWrapper alloc];
    v7 = *(a1 + 64);
  }

  v11 = [(OTCliqueStatusWrapper *)v6 initWithStatus:v7];
  [*(a1 + 40) setOctagonStatus:v11];

  [*(a1 + 40) setOctagonPeerID:*(a1 + 48)];
  return [*(*(*(a1 + 56) + 8) + 40) fulfill];
}

void sub_1000A62C8(uint64_t a1)
{
  v2 = [*(a1 + 32) ckChangeListeners];
  v3 = [v2 keyEnumerator];

  v4 = [v3 nextObject];
  if (v4)
  {
    v6 = v4;
    *&v5 = 138412290;
    v12 = v5;
    do
    {
      v7 = [*(a1 + 32) ckChangeListeners];
      v8 = [v7 objectForKey:v6];

      v9 = sub_100019104(@"ckksaccountblock", 0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(location[0]) = v12;
        *(location + 4) = v8;
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Starting blocking for listener %@", location, 0xCu);
      }

      objc_initWeak(location, v8);
      v10 = *(a1 + 40);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000A64B4;
      block[3] = &unk_1003452E8;
      objc_copyWeak(&v14, location);
      dispatch_group_async(v10, v6, block);
      objc_destroyWeak(&v14);
      objc_destroyWeak(location);

      v11 = [v3 nextObject];

      v6 = v11;
    }

    while (v11);
  }
}

void sub_1000A64B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_100019104(@"ckksaccountblock", 0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = 138412290;
    v4 = WeakRetained;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Done blocking for listener %@", &v3, 0xCu);
  }
}

void sub_1000A6778(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) currentCKAccountInfo];
  [WeakRetained cloudkitAccountStateChange:v2 to:v3];
}

void sub_1000A6ECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000A6EF8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A704C;
    block[3] = &unk_100345310;
    objc_copyWeak(&v14, (a1 + 32));
    v12 = v5;
    v13 = v6;
    dispatch_async(v9, block);

    objc_destroyWeak(&v14);
  }

  else
  {
    v10 = sub_100019104(@"ckks-sos", 0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Received fetchCirclePeerID callback with null AccountStateTracker", buf, 2u);
    }
  }
}

void sub_1000A704C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained currentCircleStatus];
  if (v3 && (v4 = v3, [WeakRetained currentCircleStatus], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "status"), v5, v4, !v6))
  {
    v8 = sub_100019104(@"ckks-sos", 0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v12 = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Circle peerID is: %@ %@", &v12, 0x16u);
    }

    [WeakRetained setAccountCirclePeerID:*(a1 + 32)];
    [WeakRetained setAccountCirclePeerIDError:*(a1 + 40)];
    v11 = [WeakRetained accountCirclePeerIDInitialized];
    [v11 fulfill];
  }

  else
  {
    v7 = sub_100019104(@"ckks-sos", 0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Out of circle but still received a fetchCirclePeerID callback", &v12, 2u);
    }

    [WeakRetained setAccountCirclePeerID:0];
    [WeakRetained setAccountCirclePeerIDError:0];
  }
}

intptr_t sub_1000A72EC(uint64_t a1)
{
  v2 = [*(a1 + 32) currentCircleStatus];
  if (!v2 || (v3 = v2, [*(a1 + 32) currentCircleStatus], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqual:", *(a1 + 40)), v4, v3, (v5 & 1) == 0))
  {
    v6 = sub_100019104(@"ckks-sos", 0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "moving to circle status: %@", &v11, 0xCu);
    }

    [*(a1 + 32) setCurrentCircleStatus:*(a1 + 40)];
    if (![*(a1 + 40) status])
    {
      v8 = +[CKKSAnalytics logger];
      v9 = +[NSDate date];
      [v8 setDateProperty:v9 forKey:@"lastInCircle"];
    }

    [*(a1 + 32) _onqueueUpdateCirclePeerID:*(a1 + 40)];
  }

  return dispatch_semaphore_signal(*(a1 + 48));
}

void sub_1000A7578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000A759C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A76F0;
    block[3] = &unk_100345310;
    objc_copyWeak(&v14, (a1 + 32));
    v12 = v5;
    v13 = v6;
    dispatch_async(v9, block);

    objc_destroyWeak(&v14);
  }

  else
  {
    v10 = sub_100019104(@"ckksaccount", 0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Received fetchCurrentDeviceIDWithCompletionHandler callback with null AccountStateTracker", buf, 2u);
    }
  }
}

void sub_1000A76F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained currentCKAccountInfo];
  v4 = [v3 accountStatus];

  v5 = sub_100019104(@"ckksaccount", 0);
  v6 = v5;
  if (v4 == 1)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [WeakRetained container];
      v8 = [v7 options];
      v9 = [v8 accountOverrideInfo];
      v10 = [v9 altDSID];
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v14 = 138412802;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CloudKit deviceID is(altDSID: %@): %@ %@", &v14, 0x20u);
    }

    [WeakRetained setCkdeviceID:*(a1 + 32)];
    [WeakRetained setCkdeviceIDError:*(a1 + 40)];
    v13 = [WeakRetained ckdeviceIDInitialized];
    [v13 fulfill];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Logged back out but still received a fetchCurrentDeviceIDWithCompletionHandler callback", &v14, 2u);
    }

    [WeakRetained setCkdeviceID:0];
    [WeakRetained setCkdeviceIDError:0];
  }
}

void sub_1000A79E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000A7A00(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (v6)
  {
    v9 = sub_100019104(@"ckksaccount", 0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v8 container];
      v11 = [v10 options];
      v12 = [v11 accountOverrideInfo];
      v13 = [v12 altDSID];
      *buf = 138412546;
      v20 = v13;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "error getting account info(altDSID: %@): %@", buf, 0x16u);
    }

    v14 = [v8 fetchCKAccountStatusScheduler];
    [v14 trigger];

    dispatch_semaphore_signal(*(a1 + 32));
  }

  else
  {
    v15 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A7C00;
    block[3] = &unk_100343C28;
    block[4] = v8;
    v17 = v5;
    v18 = *(a1 + 32);
    dispatch_sync(v15, block);
  }
}

id sub_1000A7C00(uint64_t a1)
{
  [*(a1 + 32) setFirstCKAccountFetch:1];
  v2 = sub_100019104(@"ckksaccount", 0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) container];
    v4 = [v3 options];
    v5 = [v4 accountOverrideInfo];
    v6 = [v5 altDSID];
    v7 = *(a1 + 40);
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "received CK Account info(altDSID: %@): %@", &v9, 0x16u);
  }

  return [*(a1 + 32) _onqueueUpdateAccountState:*(a1 + 40) deliveredSemaphore:*(a1 + 48)];
}

void sub_1000A7E10(id *a1)
{
  v2 = [a1[4] ckChangeListeners];
  v3 = [v2 objectEnumerator];

  v4 = [v3 nextObject];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    do
    {
      v6 |= v5 == a1[5];
      v7 = [v3 nextObject];

      v5 = v7;
    }

    while (v7);
  }

  else
  {
    v6 = 0;
  }

  if (a1[5] && (v6 & 1) == 0)
  {
    v8 = [NSString stringWithFormat:@"ck-account-state-%@", a1[5]];
    v9 = [v8 UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(v9, v10);

    v12 = [a1[4] ckChangeListeners];
    [v12 setObject:a1[5] forKey:v11];

    v13 = sub_100019104(@"ckksaccount-ck", 0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v19 = a1[5];
      *buf = 138412290;
      v25 = v19;
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "adding a new listener: %@", buf, 0xCu);
    }

    if ([a1[4] firstCKAccountFetch])
    {
      v14 = sub_100019104(@"ckksaccount-ck", 0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v20 = a1[5];
        v21 = [a1[4] currentCKAccountInfo];
        *buf = 138412546;
        v25 = v20;
        v26 = 2112;
        v27 = v21;
        _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "notifying new listener %@ of current state %@", buf, 0x16u);
      }

      v15 = dispatch_group_create();
      if (v15)
      {
        v16 = v15;
        [a1[4] _onqueueDeliverCurrentCloudKitState:a1[5] listenerQueue:v11 oldStatus:0 group:v15];
        v17 = [a1[4] queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000A816C;
        block[3] = &unk_100346018;
        v23 = a1[6];
        dispatch_group_notify(v16, v17, block);

LABEL_20:
        goto LABEL_21;
      }

      v18 = sub_100019104(@"ckksaccount-ck", 0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Unable to get dispatch group.", buf, 2u);
      }
    }

    dispatch_semaphore_signal(a1[6]);
    goto LABEL_20;
  }

  dispatch_semaphore_signal(a1[6]);
LABEL_21:
}

void sub_1000A87F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_1000A882C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained notifyCircleChange:0];
}

void sub_1000A8878(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_autoreleasePoolPush();
    [v3 performInitialDispatches];
    objc_autoreleasePoolPop(v2);
    WeakRetained = v3;
  }
}

void sub_1000A88D8(uint64_t a1)
{
  v2 = sub_100019104(@"ckksaccount", 0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Retrying CK account state fetch", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained notifyCKAccountStatusChange:0];
}

void sub_1000A8D84(uint64_t a1)
{
  v5 = 0;
  v2 = sub_10024F05C(&v5);
  v3 = *(a1 + 32);
  v4 = v5;
  (*(v3 + 16))();
}

NSDictionary *__cdecl sub_1000A8E6C(id a1)
{
  v1 = +[NSMutableDictionary dictionary];
  v2 = +[CKKSAnalytics logger];
  v3 = [v2 datePropertyForKey:@"ERSPending"];

  if (v3)
  {
    v4 = [NSNumber numberWithInteger:[CKKSAnalytics fuzzyDaysSinceDate:v3]];
    [v1 setObject:v4 forKeyedSubscript:@"ERSPending"];
  }

  return v1;
}

void sub_1000AA530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000AA84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AA884(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000AA89C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1000AAA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1000AAA94(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1000AAC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000AAC90(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000AADD8(id a1)
{
  v1 = [EscrowRequestServer alloc];
  v2 = +[CKKSLockStateTracker globalTracker];
  v3 = [(EscrowRequestServer *)v1 initWithLockStateTracker:v2];
  v4 = qword_10039DDD8;
  qword_10039DDD8 = v3;

  v5 = qword_10039DDD8;

  [v5 setupAnalytics];
}

void sub_1000AB068(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100006274("octagon");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v8 = 138412290;
      v9 = v2;
      v5 = "Created TTR with error: %@";
      v6 = v3;
      v7 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, &v8, v7);
    }
  }

  else if (v4)
  {
    LOWORD(v8) = 0;
    v5 = "Created TTR successfully";
    v6 = v3;
    v7 = 2;
    goto LABEL_6;
  }
}

void sub_1000AB2FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_100019104(@"ckks-cuttlefish", 0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "error fetching tlk shares: %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = +[NSMutableArray array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = v5;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          v15 = [v14 recordType];
          v16 = [v15 isEqual:@"tlkshare"];

          if (v16)
          {
            v17 = [(CKKSCKRecordHolder *)[CKKSTLKShareRecord alloc] initWithCKRecord:v14 contextID:*(a1 + 32)];
            [v8 addObject:v17];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    (*(*(a1 + 40) + 16))();
    v6 = 0;
    v5 = v18;
  }
}

void sub_1000AB60C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = sub_100019104(@"ckks-cuttlefish", 0);
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "error fetching pcs identity: %@", &v13, 0xCu);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v13 = 138412290;
    v14 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "fetched pcs identities for the following services: %@", &v13, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000AB868(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = sub_100019104(@"ckks-cuttlefish", 0);
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "error fetching current item: %@", &v13, 0xCu);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v13 = 138412290;
    v14 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "fetched current items for CIPs: %@", &v13, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000ABFCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000ABFE4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000ABFFC(uint64_t a1)
{
  v2 = [CKKSPeerProviderState createFromProvider:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_1000AC10C(uint64_t a1)
{
  v2 = [*(a1 + 32) peerChangeListeners];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000AC19C;
  v3[3] = &unk_100336E38;
  v3[4] = *(a1 + 32);
  [v2 iterateListeners:v3];
}

void sub_1000AC264(uint64_t a1)
{
  v2 = [*(a1 + 32) peerChangeListeners];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000AC2F4;
  v3[3] = &unk_100336E38;
  v3[4] = *(a1 + 32);
  [v2 iterateListeners:v3];
}

void sub_1000AC3E4(uint64_t a1)
{
  v2 = [*(a1 + 32) peerChangeListeners];
  [v2 registerListener:*(a1 + 40)];
}

void sub_1000AC57C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000AC594(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1000ABFE4;
  v13 = sub_1000ABFF4;
  v14 = 0;
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) cuttlefishXPCWrapper];
  v3 = [*(a1 + 32) specificUser];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AC714;
  v6[3] = &unk_100336620;
  objc_copyWeak(&v7, &location);
  v4 = *(a1 + 40);
  v6[4] = &v9;
  v6[5] = v4;
  [v2 fetchTrustStateWithSpecificUser:v3 reply:v6];

  if (*(a1 + 48))
  {
    v5 = v10[5];
    if (v5)
    {
      **(a1 + 48) = v5;
    }
  }

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v9, 8);
}

void sub_1000AC6E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_1000AC714(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v7)
  {
    v9 = sub_100006274("octagon");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [WeakRetained specificUser];
      *buf = 138412546;
      v41 = v10;
      v42 = 2112;
      v43 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Unable to fetch trusted peers for (%@): %@", buf, 0x16u);
    }

    v11 = *(*(a1 + 32) + 8);
    v12 = v7;
    v13 = *(v11 + 40);
    *(v11 + 40) = v12;
  }

  else
  {
    v14 = +[NSMutableSet set];
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v13 = v6;
    v17 = [v13 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v17)
    {
      v18 = v17;
      v31 = WeakRetained;
      v32 = 0;
      v33 = v6;
      obj = v13;
      v19 = *v36;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          v21 = a1;
          if (*v36 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v35 + 1) + 8 * i);
          v23 = [v22 signingSPKI];
          v24 = [_SFECPublicKey keyWithSubjectPublicKeyInfo:v23];

          v25 = [v22 encryptionSPKI];
          v26 = [_SFECPublicKey keyWithSubjectPublicKeyInfo:v25];

          v27 = [CKKSActualPeer alloc];
          v28 = [v22 peerID];
          v29 = [v22 viewList];
          v30 = [(CKKSActualPeer *)v27 initWithPeerID:v28 encryptionPublicKey:v26 signingPublicKey:v24 viewList:v29];

          a1 = v21;
          [*(*(*(v21 + 40) + 8) + 40) addObject:v30];
        }

        v13 = obj;
        v18 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v18);
      v7 = v32;
      v6 = v33;
      WeakRetained = v31;
    }
  }
}

void sub_1000ACB24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000ACB3C(uint64_t a1)
{
  v2 = [*(a1 + 32) peerID];

  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = [v3 peerID];
    v5 = [NSString stringWithFormat:@"signing-key %@", v4];
    v26 = 0;
    v6 = [v3 fetchIdentity:v5 error:&v26];
    v7 = v26;

    if (v6)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v11 = *(a1 + 32);
      v12 = [v11 peerID];
      v13 = [NSString stringWithFormat:@"encryption-key %@", v12];
      v25 = 0;
      v14 = [v11 fetchIdentity:v13 error:&v25];
      v7 = v25;

      if (!v14 || v7)
      {
        if (*(a1 + 48))
        {
          v23 = v7;
          **(a1 + 48) = v7;
        }
      }

      else
      {
        v15 = [OctagonSelfPeer alloc];
        v16 = [*(a1 + 32) peerID];
        v17 = [(OctagonSelfPeer *)v15 initWithPeerID:v16 signingIdentity:v6 encryptionIdentity:v14];

        v18 = [CKKSSelves alloc];
        v19 = +[NSSet set];
        v20 = [(CKKSSelves *)v18 initWithCurrent:v17 allSelves:v19];
        v21 = *(*(a1 + 40) + 8);
        v22 = *(v21 + 40);
        *(v21 + 40) = v20;
      }
    }

    else if (*(a1 + 48))
    {
      v9 = v7;
      **(a1 + 48) = v7;
    }
  }

  else
  {
    v10 = sub_100006274("octagon-ckks");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "No peer ID; therefore no identity", buf, 2u);
    }

    if (*(a1 + 48))
    {
      **(a1 + 48) = [NSError errorWithDomain:@"com.apple.security.octagon" code:5 description:@"no peer ID present"];
    }
  }
}

void sub_1000ACF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000ACF48(uint64_t a1)
{
  v2 = +[_SFKeychainManager defaultOverCommitManager];
  v3 = [v2 identityForIdentifier:*(a1 + 32)];
  v4 = [v3 resultType];
  if ((v4 - 1) >= 2)
  {
    if (!v4)
    {
      v11 = [v3 value];
      v12 = *(*(a1 + 40) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }

    v9 = 0;
  }

  else
  {
    v5 = sub_100006274("octagon-ckks");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = [v3 error];
      v14 = 138412546;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Unable to fetch identity '%@' from keychain: %@", &v14, 0x16u);
    }

    v8 = [v3 error];
    v9 = v8;
    if (*(a1 + 48) && v8)
    {
      v10 = v8;
      **(a1 + 48) = v9;
    }
  }
}

void sub_1000ADE08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_1000ADE34(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v6)
  {
    v8 = sub_100006274("SecError");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "octagon-health: error: %@", &v11, 0xCu);
    }

    [WeakRetained setError:v6];
    v9 = [WeakRetained finishOp];
    [WeakRetained runBeforeGroupFinished:v9];
  }

  else
  {
    v10 = sub_100006274("octagon-health");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "cuttlefish came back with these suggestions: %@", &v11, 0xCu);
    }

    [WeakRetained handleRepairSuggestions:v5];
  }
}

void sub_1000AF5DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000AF608(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v6)
  {
    v8 = sub_100006274("SecError");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "octagon-escrowcheck: error: %@", &v10, 0xCu);
    }
  }

  else
  {
    v9 = sub_100006274("octagon-escrowcheck");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "cuttlefish came back with these suggestions: %@", &v10, 0xCu);
    }

    [WeakRetained handleRepairSuggestions:v5];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000B06D4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 stopWithEvent:@"OctagonEventReroll" result:v4];
  (*(*(a1 + 40) + 16))();
}

void sub_1000B0E0C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v6 = sub_100006274("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v5;
      v7 = "octagon-remove-recovery-key: failed to remove recovery key: %@";
      v8 = v6;
      v9 = 12;
      goto LABEL_7;
    }
  }

  else
  {
    v6 = sub_100006274("octagon-remove-recovery-key");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      v7 = "removed recovery key";
      v8 = v6;
      v9 = 2;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v10, v9);
    }
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v5);
}

void sub_1000B10DC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100006274("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "octagon-recover-with-recovery-key: failed to join with recovery key: %@", &v5, 0xCu);
    }
  }

  else
  {
    v4 = sub_100006274("octagon-recover-with-recovery-key");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v5) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "successfully joined with recovery key", &v5, 2u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000B1ED4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100006274("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "octagon-reset-account-cdp-contents: error resetting account cdp contents: %@", &v5, 0xCu);
    }
  }

  else
  {
    v4 = sub_100006274("octagon-reset-account-cdp-contents");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v5) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "successfully reset account cdp contents", &v5, 2u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000B21A4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = sub_100006274("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "octagon-user-controllable-views: error fetching status: %@", &v10, 0xCu);
    }

    v7 = *(*(a1 + 32) + 16);
  }

  else
  {
    v8 = sub_100006274("octagon-user-controllable-views");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"paused";
      if (a2)
      {
        v9 = @"enabled";
      }

      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "successfully fetched status as: %@", &v10, 0xCu);
    }

    v7 = *(*(a1 + 32) + 16);
  }

  v7();
}

void sub_1000B24AC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = sub_100006274("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "octagon-user-controllable-views: error setting status: %@", &v10, 0xCu);
    }

    v7 = *(*(a1 + 32) + 16);
  }

  else
  {
    v8 = sub_100006274("octagon-user-controllable-views");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"paused";
      if (a2)
      {
        v9 = @"enabled";
      }

      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "successfully set status to: %@", &v10, 0xCu);
    }

    v7 = *(*(a1 + 32) + 16);
  }

  v7();
}

void sub_1000B27F4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100006274("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "octagon-remove-escrow-cache: error invalidating escrow cache: %@", &v5, 0xCu);
    }
  }

  else
  {
    v4 = sub_100006274("octagon-remove-escrow-caches");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v5) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "successfully invalidated escrow cache", &v5, 2u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000B2B18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "octagon-fetch-escrow-records: error fetching records: %@", &v8, 0xCu);
    }
  }

  else
  {
    v7 = sub_100006274("octagon-fetch-escrow-records");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "successfully fetched records", &v8, 2u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000B31CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100006274("octagon-ckks");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"no error";
    if (v3)
    {
      v5 = v3;
    }

    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "refetch-ckks-policy result: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000B4570(id a1, TrustedPeersHelperHealthCheckResult *a2, NSError *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = sub_100006274("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      v5 = "octagon: error attempting to check octagon health: %@";
      v6 = v4;
      v7 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, &v8, v7);
    }
  }

  else
  {
    v4 = sub_100006274("octagon");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      v5 = "health check success";
      v6 = v4;
      v7 = 2;
      goto LABEL_6;
    }
  }
}

void sub_1000B49E0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 stopWithEvent:@"OctagonActivityRecreateInheritanceKey" result:v6];
  (*(*(a1 + 40) + 16))();
}

void sub_1000B4DC8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 stopWithEvent:@"OctagonEventRecreateInheritanceKey" result:v6];
  (*(*(a1 + 40) + 16))();
}

void sub_1000B50F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 stopWithEvent:@"OctagonEventCheckInheritanceKey" result:v5];
  (*(*(a1 + 40) + 16))();
}

void sub_1000B5538(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 stopWithEvent:@"OctagonEventRemoveInheritanceKey" result:v4];
  (*(*(a1 + 40) + 16))();
}

void sub_1000B5854(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100006274("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      v5 = "octagon, preflight join with inheritance key failed: %@";
      v6 = v4;
      v7 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, &v8, v7);
    }
  }

  else
  {
    v4 = sub_100006274("octagon-inheritance");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      v5 = "preflight join with inheritance key succeeded";
      v6 = v4;
      v7 = 2;
      goto LABEL_6;
    }
  }

  [*(a1 + 32) stopWithEvent:@"OctagonEventPreflightInheritanceKey" result:v3];
  (*(*(a1 + 40) + 16))(*(a1 + 40), v3);
}

void sub_1000B5C34(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100006274("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      v5 = "octagon, join with inheritance key failed: %@";
      v6 = v4;
      v7 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, &v8, v7);
    }
  }

  else
  {
    v4 = sub_100006274("octagon-inheritance");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      v5 = "join with inheritance key succeeded";
      v6 = v4;
      v7 = 2;
      goto LABEL_6;
    }
  }

  [*(a1 + 32) stopWithEvent:@"OctagonEventJoinInheritanceKey" result:v3];
  (*(*(a1 + 40) + 16))(*(a1 + 40), v3);
}

void sub_1000B60A0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 stopWithEvent:@"OctagonEventStoreInheritanceKey" result:v4];
  (*(*(a1 + 40) + 16))();
}

void sub_1000B6450(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 stopWithEvent:@"OctagonEventGenerateInheritanceKey" result:v6];
  (*(*(a1 + 40) + 16))();
}

void sub_1000B681C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 stopWithEvent:@"OctagonEventCreateInheritanceKey" result:v6];
  (*(*(a1 + 40) + 16))();
}

void sub_1000B6B44(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 stopWithEvent:@"OctagonEventCheckCustodianRecoveryKey" result:v5];
  (*(*(a1 + 40) + 16))();
}

void sub_1000B6F8C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 stopWithEvent:@"OctagonEventRemoveCustodianRecoveryKey" result:v4];
  (*(*(a1 + 40) + 16))();
}

void sub_1000B728C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100006274("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      v5 = "octagon, preflight join with custodian recovery key failed: %@";
      v6 = v4;
      v7 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, &v8, v7);
    }
  }

  else
  {
    v4 = sub_100006274("octagon");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      v5 = "preflight join with custodian recovery key succeeded";
      v6 = v4;
      v7 = 2;
      goto LABEL_6;
    }
  }

  [*(a1 + 32) stopWithEvent:@"OctagonEventPreflightCustodianRecoveryKey" result:v3];
  (*(*(a1 + 40) + 16))(*(a1 + 40), v3);
}

void sub_1000B7650(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100006274("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      v5 = "octagon, join with custodian recovery key failed: %@";
      v6 = v4;
      v7 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, &v8, v7);
    }
  }

  else
  {
    v4 = sub_100006274("octagon");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      v5 = "join with custodian recovery key succeeded";
      v6 = v4;
      v7 = 2;
      goto LABEL_6;
    }
  }

  [*(a1 + 32) stopWithEvent:@"OctagonEventJoinCustodianRecoveryKey" result:v3];
  (*(*(a1 + 40) + 16))(*(a1 + 40), v3);
}

void sub_1000B7AC4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 stopWithEvent:@"OctagonEventCreateCustodianRecoveryKey2" result:v6];
  (*(*(a1 + 40) + 16))();
}

void sub_1000B7EE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (([v3 code] == 34 || objc_msgSend(v4, "code") == 32) && (objc_msgSend(v4, "domain"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", @"com.apple.security.trustedpeers.container"), v5, v6))
    {
      v7 = [*(a1 + 32) isFullPeer];
      v8 = sub_100006274("SecError");
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (v7)
      {
        if (v9)
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "octagon, recovery key is not enrolled in octagon, resetting octagon circle", &buf, 2u);
        }

        v10 = [objc_msgSend(*(a1 + 32) "loggerClass")];
        [v10 logResultForEvent:@"OctagonEventJoinRecoveryKeyCircleReset" hardFailure:0 result:v4];

        *&buf = 0;
        *(&buf + 1) = &buf;
        v30 = 0x3032000000;
        v31 = sub_1000B8394;
        v32 = sub_1000B83A4;
        v33 = 0;
        v27[0] = 0;
        v27[1] = v27;
        v27[2] = 0x3032000000;
        v27[3] = sub_1000B8394;
        v27[4] = sub_1000B83A4;
        v28 = 0;
        v11 = *(a1 + 48);
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_1000B83AC;
        v26[3] = &unk_100336848;
        v26[4] = &buf;
        v26[5] = v27;
        [v11 rpcFetchAccountSettings:v26];
        if ([*(*(&buf + 1) + 40) hasWalrus])
        {
          v12 = [*(*(&buf + 1) + 40) walrus];
          v13 = [v12 enabled];
        }

        else
        {
          v13 = 0;
        }

        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_1000B8434;
        v20[3] = &unk_100336870;
        v16 = *(a1 + 48);
        v21 = *(a1 + 40);
        v17 = *(a1 + 72);
        v18 = *(a1 + 32);
        v25 = v17;
        v22 = v18;
        v23 = *(a1 + 56);
        v24 = *(a1 + 64);
        LOBYTE(v19) = v13;
        [v16 rpcResetAndEstablish:5 idmsTargetContext:0 idmsCuttlefishPassword:0 notifyIdMS:0 accountSettings:0 isGuitarfish:0 accountIsW:v19 reply:v20];

        _Block_object_dispose(v27, 8);
        _Block_object_dispose(&buf, 8);
      }

      else
      {
        if (v9)
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "octagon: recovery key is not enrolled in octagon, and current device can't set recovery keys", &buf, 2u);
        }

        [*(a1 + 40) stopWithEvent:@"OctagonEventJoinRecoveryKeyCircleResetFailed" result:v4];
        (*(*(a1 + 72) + 16))();
      }
    }

    else
    {
      v14 = sub_100006274("SecError");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v4;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "octagon, join with recovery key failed: %@", &buf, 0xCu);
      }

      [*(a1 + 40) stopWithEvent:@"OctagonEventJoinRecoveryKeyFailed" result:v4];
      (*(*(a1 + 72) + 16))();
    }
  }

  else
  {
    v15 = sub_100006274("octagon");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "join with recovery key succeeded", &buf, 2u);
    }

    [*(a1 + 40) stopWithEvent:@"OctagonEventJoinRecoveryKey" result:0];
    (*(*(a1 + 72) + 16))();
  }
}

void sub_1000B8364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B8394(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000B83AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1000B8434(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100006274("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "octagon, failed to reset octagon", buf, 2u);
    }

    [*(a1 + 32) stopWithEvent:@"OctagonEventJoinRecoveryKeyCircleResetFailed" result:v3];
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v5 = sub_100006274("octagon");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "attempting enrolling recovery key", buf, 2u);
    }

    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000B85C8;
    v9[3] = &unk_1003386E8;
    v10 = *(a1 + 32);
    v11 = *(a1 + 64);
    [v6 createRecoveryKey:v7 recoveryKey:v8 reply:v9];
  }
}

void sub_1000B85C8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100006274("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "octagon, failed to enroll new recovery key: %@", &v7, 0xCu);
    }

    [*(a1 + 32) stopWithEvent:@"OctagonEventJoinRecoveryKeyEnrollFailed" result:v3];
    v5 = *(*(a1 + 40) + 16);
  }

  else
  {
    v6 = sub_100006274("octagon");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "successfully enrolled recovery key", &v7, 2u);
    }

    [*(a1 + 32) stopWithEvent:@"OctagonEventRecoveryKey" result:0];
    v5 = *(*(a1 + 40) + 16);
  }

  v5();
}

void sub_1000B8B64(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 stopWithEvent:@"OctagonEventRecoveryKey" result:v4];
  (*(*(a1 + 40) + 16))();
}

void sub_1000B8C88(id a1)
{
  v3[0] = OTCliqueCDPContextTypeNone;
  v3[1] = OTCliqueCDPContextTypeSignIn;
  v3[2] = OTCliqueCDPContextTypeRepair;
  v3[3] = OTCliqueCDPContextTypeFinishPasscodeChange;
  v3[4] = OTCliqueCDPContextTypeRecoveryKeyGenerate;
  v3[5] = OTCliqueCDPContextTypeRecoveryKeyNew;
  v3[6] = OTCliqueCDPContextTypeUpdatePasscode;
  v3[7] = OTCliqueCDPContextTypeConfirmPasscodeCyrus;
  v1 = [NSArray arrayWithObjects:v3 count:8];
  v2 = qword_10039DDF8;
  qword_10039DDF8 = v1;
}

void sub_1000B8EC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

id sub_1000B8EEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained contextForContainerName:@"com.apple.security.keychain" contextID:@"defaultContext"];
  v3 = sub_100006274("octagon-analytics");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v154 = @"com.apple.security.keychain";
    v155 = 2112;
    v156 = @"defaultContext";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Reporting analytics for container: %@, context: %@", buf, 0x16u);
  }

  v4 = +[NSMutableDictionary dictionary];
  v5 = [WeakRetained sosAdapter];
  v149 = 0;
  v6 = [v5 circleStatus:&v149];
  v7 = v149;

  if (v7)
  {
    v8 = sub_100006274("octagon-analytics");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v154 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Error fetching SOS status: %@", buf, 0xCu);
    }
  }

  v116 = v7;
  v9 = [NSNumber numberWithInt:v6];
  [v4 setObject:v9 forKeyedSubscript:@"OASOSStatus"];

  v10 = +[CKKSAnalytics logger];
  v11 = [v10 datePropertyForKey:@"OctagonEventUpgradePreflightPreapprovedJoin"];

  v121 = v11;
  v12 = [NSNumber numberWithInteger:[CKKSAnalytics fuzzyDaysSinceDate:v11]];
  [v4 setObject:v12 forKeyedSubscript:@"OALastPPJ"];

  v13 = +[OTStates OctagonStateMap];
  v14 = [v2 stateMachine];
  v15 = [v14 currentState];
  v16 = [v13 objectForKeyedSubscript:v15];
  [v4 setObject:v16 forKeyedSubscript:@"OASMState"];

  v17 = [v2 accountMetadataStore];
  v148 = 0;
  v18 = [v17 loadOrCreateAccountMetadata:&v148];
  v19 = v148;

  if (v18 && !v19)
  {
    goto LABEL_12;
  }

  v20 = sub_100006274("octagon-analytics");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v154 = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Error fetching Octagon metadata: %@", buf, 0xCu);
  }

  if (v18)
  {
LABEL_12:
    v21 = &swift_errorRelease_ptr;
    v22 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v18 icloudAccountState]);
    [v4 setObject:v22 forKeyedSubscript:@"OAiC"];

    v23 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v18 cdpState]);
    [v4 setObject:v23 forKeyedSubscript:@"OACDPStatus"];

    v24 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v18 trustState]);
    [v4 setObject:v24 forKeyedSubscript:@"OATrust"];
  }

  else
  {
    [v4 setObject:0 forKeyedSubscript:@"OAiC"];
    [v4 setObject:0 forKeyedSubscript:@"OACDPStatus"];
    [v4 setObject:0 forKeyedSubscript:@"OATrust"];
    v21 = &swift_errorRelease_ptr;
  }

  v25 = [v18 getTPSyncingPolicy];
  v118 = v25;
  if (v25)
  {
    v26 = [v21[323] numberWithBool:{objc_msgSend(v25, "syncUserControllableViewsAsBoolean")}];
    [v4 setObject:v26 forKeyedSubscript:@"OAUserViewsSyncing"];
  }

  else
  {
    [v4 setObject:0 forKeyedSubscript:@"OAUserViewsSyncing"];
  }

  v117 = [v18 memoizedLastHealthCheck];
  v27 = [v21[323] numberWithInteger:{+[CKKSAnalytics fuzzyDaysSinceDate:](CKKSAnalytics, "fuzzyDaysSinceDate:")}];
  [v4 setObject:v27 forKeyedSubscript:@"OAHealthCheck"];

  v28 = +[CKKSAnalytics logger];
  v29 = [v28 datePropertyForKey:@"OALastKSR"];

  v115 = v29;
  v30 = [v21[323] numberWithInteger:{+[CKKSAnalytics fuzzyDaysSinceDate:](CKKSAnalytics, "fuzzyDaysSinceDate:", v29)}];
  [v4 setObject:v30 forKeyedSubscript:@"OALastKSR"];

  v128 = v4;
  v119 = v19;
  v120 = v18;
  if (v18 && [v18 icloudAccountState] == 2)
  {
    v31 = [v21[323] numberWithInt:{objc_msgSend(v18, "attemptedJoin")}];
    [v4 setObject:v31 forKeyedSubscript:@"OAAttemptedJoin"];

    v32 = [v2 authKitAdapter];
    v147 = 0;
    v33 = [v32 machineID:0 flowID:0 deviceSessionID:0 canSendMetrics:0 error:&v147];
    v34 = v147;

    if (v34)
    {
      v35 = sub_100006274("octagon-analytics");
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v154 = v19;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Error fetching machine ID: %@", buf, 0xCu);
      }
    }

    v36 = [v21[323] numberWithInt:v33 != 0];
    [v4 setObject:v36 forKeyedSubscript:@"OAMIDPresent"];

    if (v33)
    {
      v146 = 0;
      v37 = [v2 machineIDOnMemoizedList:v33 error:&v146];
      v129 = v146;
      if (v129)
      {
        v38 = sub_100006274("octagon-analytics");
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v154 = v129;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Error fetching 'mid on list': %@", buf, 0xCu);
        }
      }

      else
      {
        v38 = [v21[323] numberWithBool:v37];
        [v4 setObject:v38 forKeyedSubscript:@"OAMIDOnList"];
      }

      v145 = 0;
      v39 = [v2 egoPeerStatus:&v145];
      v40 = v145;
      obj = v40;
      if (!v39 || v40)
      {
        v60 = sub_100006274("octagon-analytics");
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v154 = obj;
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Error fetching how many peers have our MID: %@", buf, 0xCu);
        }
      }

      else
      {
        v122 = v34;
        v124 = v39;
        v41 = [v39 peerCountsByMachineID];
        v42 = [v41 objectForKeyedSubscript:v33];
        v43 = v42;
        v44 = &off_100364510;
        if (v42)
        {
          v44 = v42;
        }

        v45 = v44;

        v46 = sub_100006274("octagon-metrics");
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v154 = v33;
          v155 = 2112;
          v156 = v45;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Number of peers with machineID (%@): %@", buf, 0x16u);
        }

        v113 = v45;
        [v4 setObject:v45 forKeyedSubscript:@"OAPeersWithMID"];
        v47 = v21[323];
        v48 = [v124 egoPeerMachineID];
        v49 = [v47 numberWithBool:{-[__CFString isEqualToString:](v33, "isEqualToString:", v48)}];
        [v4 setObject:v49 forKeyedSubscript:@"OAMIDMatchesCurrentMID"];

        v50 = sub_100006274("octagon-metrics");
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v51 = [v4 objectForKeyedSubscript:@"OAMIDMatchesCurrentMID"];
          v52 = [v124 egoPeerMachineID];
          *buf = 138412802;
          v154 = v51;
          v155 = 2112;
          v156 = v33;
          v157 = 2112;
          v158 = v52;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "MID match (current vs Octagon peer): %@, %@, %@", buf, 0x20u);
        }

        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        v53 = [v124 peerCountsByMachineID];
        v54 = [v53 allValues];

        v55 = [v54 countByEnumeratingWithState:&v141 objects:v152 count:16];
        if (v55)
        {
          v56 = v55;
          v57 = 0;
          v58 = *v142;
          do
          {
            for (i = 0; i != v56; i = i + 1)
            {
              if (*v142 != v58)
              {
                objc_enumerationMutation(v54);
              }

              v57 = (v57 + [*(*(&v141 + 1) + 8 * i) longValue]);
            }

            v56 = [v54 countByEnumeratingWithState:&v141 objects:v152 count:16];
          }

          while (v56);
        }

        else
        {
          v57 = 0;
        }

        v139 = 0u;
        v140 = 0u;
        v137 = 0u;
        v138 = 0u;
        v61 = [v124 viablePeerCountsByModelID];
        v62 = [v61 allValues];

        v63 = [v62 countByEnumeratingWithState:&v137 objects:v151 count:16];
        if (v63)
        {
          v64 = v63;
          v65 = 0;
          v66 = *v138;
          do
          {
            for (j = 0; j != v64; j = j + 1)
            {
              if (*v138 != v66)
              {
                objc_enumerationMutation(v62);
              }

              v65 = (v65 + [*(*(&v137 + 1) + 8 * j) longValue]);
            }

            v64 = [v62 countByEnumeratingWithState:&v137 objects:v151 count:16];
          }

          while (v64);
        }

        else
        {
          v65 = 0;
        }

        v68 = sub_100006274("octagon-metrics");
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v154 = v57;
          v155 = 2048;
          v156 = v65;
          _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Peers: %zu, viable peers %zu", buf, 0x16u);
        }

        v69 = [v21[323] numberWithUnsignedLong:v57];
        v4 = v128;
        [v128 setObject:v69 forKeyedSubscript:@"OAnPeers"];

        v70 = [v21[323] numberWithUnsignedLong:v65];
        [v128 setObject:v70 forKeyedSubscript:@"OAnViablePeers"];

        v34 = v122;
        v39 = v124;
        v60 = v113;
      }
    }
  }

  v123 = v2;
  v71 = +[CKKSAnalytics logger];
  v72 = [v71 datePropertyForKey:@"OALastCFU"];

  v114 = v72;
  v73 = [v21[323] numberWithInteger:{+[CKKSAnalytics fuzzyDaysSinceDate:](CKKSAnalytics, "fuzzyDaysSinceDate:", v72)}];
  v74 = v4;
  p_superclass = &OBJC_METACLASS___TrustedPeersHelperHealthCheckResult.superclass;
  [v74 setObject:v73 forKeyedSubscript:@"OALastCFU"];

  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v125 = WeakRetained;
  obja = [WeakRetained cdpContextTypes];
  v76 = [obja countByEnumeratingWithState:&v133 objects:v150 count:16];
  if (v76)
  {
    v77 = v76;
    v130 = *v134;
    do
    {
      for (k = 0; k != v77; k = k + 1)
      {
        if (*v134 != v130)
        {
          objc_enumerationMutation(obja);
        }

        v79 = *(*(&v133 + 1) + 8 * k);
        v80 = [NSString stringWithFormat:@"%@%@", @"OACDPStateRun", v79];
        v81 = [NSString stringWithFormat:@"%@%@Tries", @"OACDPStateRun", v79];
        v82 = [p_superclass + 474 logger];
        v83 = [v82 datePropertyForKey:v80];

        if (v83)
        {
          v84 = [v21[323] numberWithInteger:{objc_msgSend(p_superclass + 474, "fuzzyDaysSinceDate:", v83)}];
          [v128 setObject:v84 forKeyedSubscript:v80];

          v85 = +[CKKSAnalytics logger];
          v86 = [v85 numberPropertyForKey:v81];
          p_superclass = (&OBJC_METACLASS___TrustedPeersHelperHealthCheckResult + 8);
          [v128 setObject:v86 forKeyedSubscript:v81];

          v21 = &swift_errorRelease_ptr;
        }
      }

      v77 = [obja countByEnumeratingWithState:&v133 objects:v150 count:16];
    }

    while (v77);
  }

  v132 = v116;
  v87 = [objc_msgSend(v125 "escrowRequestClass")];
  v88 = v132;

  if (!v87)
  {
    v94 = sub_100006274("octagon-analytics");
    v93 = v128;
    if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v154 = v88;
      _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "Error fetching escrowRequestClass: %@", buf, 0xCu);
    }

    v91 = v88;
    v95 = v120;
    goto LABEL_77;
  }

  v89 = v21[323];
  v131 = v88;
  v90 = [v87 pendingEscrowUpload:&v131];
  v91 = v131;

  v92 = [v89 numberWithBool:v90];
  v93 = v128;
  [v128 setObject:v92 forKeyedSubscript:@"OAPrerecordPending"];

  if (v91)
  {
    v94 = sub_100006274("octagon-analytics");
    v95 = v120;
    if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v154 = v91;
      _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "Error fetching pendingEscrowUpload status: %@", buf, 0xCu);
    }

LABEL_77:

    goto LABEL_79;
  }

  v95 = v120;
LABEL_79:
  v96 = +[ACAccountStore defaultStore];
  v97 = [v96 aa_primaryAppleAccount];
  v98 = v97;
  if (v97)
  {
    v99 = ACAccountDataclassKeyValue;
    v100 = [v21[323] numberWithBool:{objc_msgSend(v97, "isProvisionedForDataclass:", ACAccountDataclassKeyValue)}];
    [v93 setObject:v100 forKeyedSubscript:@"OADCKVSProvisioned"];

    v101 = [v21[323] numberWithBool:{objc_msgSend(v98, "isEnabledForDataclass:", v99)}];
    [v93 setObject:v101 forKeyedSubscript:@"OADCKVSEnabled"];

    v102 = ACAccountDataclassKeychainSync;
    v103 = [v21[323] numberWithBool:{objc_msgSend(v98, "isProvisionedForDataclass:", ACAccountDataclassKeychainSync)}];
    [v93 setObject:v103 forKeyedSubscript:@"OADCKCSProvisioned"];

    v104 = [v21[323] numberWithBool:{objc_msgSend(v98, "isEnabledForDataclass:", v102)}];
    [v93 setObject:v104 forKeyedSubscript:@"OADCKCSEnabled"];

    v105 = ACAccountDataclassCKDatabaseService;
    v106 = [v21[323] numberWithBool:{objc_msgSend(v98, "isProvisionedForDataclass:", ACAccountDataclassCKDatabaseService)}];
    [v93 setObject:v106 forKeyedSubscript:@"OADCCKProvisioned"];

    v107 = [v21[323] numberWithBool:{objc_msgSend(v98, "isEnabledForDataclass:", v105)}];
    [v93 setObject:v107 forKeyedSubscript:@"OADCCKEnabled"];

    v108 = [v98 aa_altDSID];
    if (v108)
    {
      v109 = v21[323];
      v110 = [SecureBackup getAcceptedTermsForAltDSID:v108 withError:0];
      v111 = [v109 numberWithInt:v110 != 0];
      [v93 setObject:v111 forKeyedSubscript:@"OASecureBackupTermsAccepted"];
    }
  }

  return v93;
}