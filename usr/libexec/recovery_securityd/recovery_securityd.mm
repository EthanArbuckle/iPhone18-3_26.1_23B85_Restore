CFStringRef sub_100001350(const __CFString *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == CFStringGetTypeID())
  {

    return CFStringCreateCopy(0, a1);
  }

  else if (v2 == CFDataGetTypeID())
  {

    return CFStringCreateFromExternalRepresentation(0, a1, 0x8000100u);
  }

  else if (v2 == CFUUIDGetTypeID())
  {

    return CFUUIDCreateString(0, a1);
  }

  else
  {
    return 0;
  }
}

CFDataRef sub_100001414(const __CFString *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == CFDataGetTypeID())
  {

    return CFDataCreateCopy(0, a1);
  }

  else if (v2 == CFStringGetTypeID())
  {

    return CFStringCreateExternalRepresentation(0, a1, 0x8000100u, 0);
  }

  else if (v2 == CFNumberGetTypeID())
  {
    valuePtr = -1431655766;
    CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
    return CFDataCreate(0, &valuePtr, 4);
  }

  else
  {
    return 0;
  }
}

CFDataRef sub_1000014F4(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == CFDataGetTypeID())
  {
    if ((CFDataGetLength(a1) & 0xFFFFFFFFFFFFFFEFLL) == 0)
    {

      return CFDataCreateCopy(0, a1);
    }

    return 0;
  }

  if (v2 != CFNullGetTypeID())
  {
    if (v2 == CFUUIDGetTypeID())
    {
      v4 = CFUUIDGetUUIDBytes(a1);
      return CFDataCreate(0, &v4.byte0, 16);
    }

    return 0;
  }

  return CFDataCreate(0, 0, 0);
}

CFStringRef sub_1000015D0(const __CFData *a1)
{
  v1 = a1;
  v2 = CFGetTypeID(a1);
  if (v2 == CFDataGetTypeID())
  {

    return CFDataCreateCopy(0, v1);
  }

  else if (v2 == CFStringGetTypeID())
  {

    return CFStringCreateCopy(0, v1);
  }

  else
  {
    if (v2 != CFNumberGetTypeID())
    {
      return 0;
    }

    CFRetain(v1);
    return v1;
  }
}

CFDataRef sub_100001678(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 != CFDataGetTypeID() || CFDataGetLength(a1) != 20)
  {
    return 0;
  }

  v3 = CFGetAllocator(a1);

  return CFDataCreateCopy(v3, a1);
}

CFNumberRef sub_1000016E8(const __CFBoolean *a1)
{
  v1 = a1;
  v2 = CFGetTypeID(a1);
  if (v2 != CFNumberGetTypeID())
  {
    if (v2 == CFBooleanGetTypeID())
    {
      HIDWORD(valuePtr) = CFBooleanGetValue(v1);
      p_valuePtr = &valuePtr + 4;
    }

    else
    {
      if (v2 != CFStringGetTypeID())
      {
        return 0;
      }

      LODWORD(valuePtr) = CFStringGetIntValue(v1);
      v4 = CFStringCreateWithFormat(0, 0, @"%ld", valuePtr, valuePtr);
      v5 = CFEqual(v4, v1);
      CFRelease(v4);
      if (!v5)
      {
        return CFStringCreateCopy(0, v1);
      }

      p_valuePtr = &valuePtr;
    }

    return CFNumberCreate(0, kCFNumberSInt32Type, p_valuePtr);
  }

  CFRetain(v1);
  return v1;
}

const void *sub_1000017D8(const void *a1)
{
  v1 = a1;
  v2 = CFGetTypeID(a1);
  if (v2 != CFDateGetTypeID())
  {
    return 0;
  }

  CFRetain(v1);
  return v1;
}

uint64_t sub_100001820(void *a1, uint64_t a2, __CFString **a3)
{
  v3 = a1[2];
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = 0;
  v5 = a1 + 3;
  do
  {
    if (*(v3 + 8) == a2)
    {
      v4 = v3;
    }

    v6 = *v5++;
    v3 = v6;
  }

  while (v6);
  if (!v4)
  {
LABEL_7:
    SecError(-26276, a3, @"Can't find attribute of kind %d in class %@", a2, *a1);
    return 0;
  }

  return v4;
}

CFDataRef sub_10000188C(uint64_t a1, __CFString **a2)
{
  v2 = *(a1 + 8);
  v3 = &stru_1000643F8;
  if (v2 <= 10)
  {
    if (v2 > 2)
    {
      if ((v2 - 5) < 2)
      {
        Current = CFAbsoluteTimeGetCurrent();
        v4 = kCFAllocatorDefault;
        goto LABEL_17;
      }

      if (v2 != 3)
      {
        if (v2 == 4)
        {
          v4 = kCFAllocatorDefault;
          Current = 0.0;
LABEL_17:

          return CFDateCreate(v4, Current);
        }

        goto LABEL_21;
      }

      goto LABEL_15;
    }

    if (v2 < 2)
    {
      goto LABEL_12;
    }

    if (v2 == 2)
    {
      return v3;
    }

LABEL_21:
    SecError(-26276, a2, @"attr %@ has no default value", *a1);
    return 0;
  }

  if ((v2 - 11) < 2)
  {
LABEL_15:
    valuePtr = 0;
    return CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  }

  if ((v2 - 14) < 2)
  {
    return v3;
  }

  if (v2 != 16)
  {
    goto LABEL_21;
  }

LABEL_12:

  return CFDataCreate(kCFAllocatorDefault, 0, 0);
}

__CFDictionary *sub_1000019E4(void *a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v9 = a1[2];
  v10 = *(v9 + 16);
  if (!v10)
  {
    return Mutable;
  }

  for (i = (v9 + 24); ; ++i)
  {
    v12 = v10[2];
    if ((a2 & ~v12) == 0)
    {
      if ((v12 & a3) != 0)
      {
        return Mutable;
      }

      v13 = sub_100001BA0(a1, v10, a4);
      if (!v13)
      {
        goto LABEL_17;
      }

      v14 = v13;
      if (!CFEqual(kCFNull, v13))
      {
        CFDictionarySetValue(Mutable, *v10, v14);
        goto LABEL_10;
      }

      if ((*(v10 + 17) & 0x10) != 0)
      {
        break;
      }
    }

LABEL_10:
    v15 = *i;
    v10 = v15;
    if (!v15)
    {
      return Mutable;
    }
  }

  SecError(-26275, a4, @"attribute %@ has NULL value", *v10);
  v16 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if (a4)
    {
      v18 = *a4;
    }

    else
    {
      v18 = @"error == NULL";
    }

    *buf = 138412290;
    v21 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

LABEL_17:
  if (Mutable)
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

const void *sub_100001BA0(const void *a1, uint64_t a2, __CFString **a3)
{
  if (!a2)
  {
    return 0;
  }

  v6 = *(a2 + 16);
  if ((v6 & 0x20A0) != 0 && !sub_100001CF0(a1, (v6 >> 5) & 1, a3))
  {
    return 0;
  }

  v7 = sub_100001DC8(a1, a2);
  if (v7)
  {
    return v7;
  }

  v8 = sub_100001EC8(a1, a2);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v7 = kCFNull;
  if (CFEqual(kCFNull, v8))
  {
    CFRelease(v9);
    return v7;
  }

  sub_100002090(a1, a2, v9, a3);
  CFRelease(v9);

  return sub_100001DC8(a1, a2);
}

void sub_100001CA4(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 56);
  if (v3 != cf)
  {
    if (!cf || (CFRetain(cf), (v3 = *(a1 + 56)) != 0))
    {
      CFRelease(v3);
    }

    *(a1 + 56) = cf;
  }
}

uint64_t sub_100001CF0(uint64_t a1, int a2, __CFString **a3)
{
  v3 = *(a1 + 40);
  if (v3 == 6)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if (v3 != 1 && v4 == 0)
  {
    return 1;
  }

  v9 = sub_100001820(*(a1 + 16), 9, a3);
  if (!v9)
  {
    return 1;
  }

  v10 = sub_100001DC8(a1, v9);
  if (v10)
  {
    *(a1 + 40) = 3;
    result = sub_1000400E8(a1, a2, v10, a3);
    if (a2)
    {
      v12 = 2;
    }

    else
    {
      v12 = 6;
    }

    if (!result)
    {
      v12 = 1;
    }

    *(a1 + 40) = v12;
  }

  else
  {

    return SecError(-26276, a3, @"state= encrypted but edata is NULL");
  }

  return result;
}

const void *sub_100001DC8(uint64_t a1, const void **a2)
{
  if (!a1)
  {
    v6 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 0;
      v7 = "secitem: item is nil!";
      v8 = &v12;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    }

    return 0;
  }

  v2 = *(a1 + 48);
  if (!a2 || !v2)
  {
    v6 = secLogObjForScope("SecError");
    v9 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v2)
    {
      if (v9)
      {
        v10 = 0;
        v7 = "secitem: desc is nil!";
        v8 = &v10;
        goto LABEL_14;
      }
    }

    else if (v9)
    {
      *buf = 0;
      v7 = "secitem: item->attributes is nil!";
      v8 = buf;
      goto LABEL_14;
    }

    return 0;
  }

  v3 = *a2;
  v4 = *(a1 + 48);

  return CFDictionaryGetValue(v4, v3);
}

CFDataRef sub_100001EC8(const void *a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {

    return v2();
  }

  v4 = 0;
  v5 = *(a2 + 8);
  if (v5 > 7)
  {
    if (v5 > 12)
    {
      if ((v5 - 14) >= 2)
      {
        if (v5 != 13)
        {
          if (v5 != 16)
          {
            return v4;
          }

          goto LABEL_35;
        }

        return kCFNull;
      }

      goto LABEL_16;
    }

    if ((v5 - 11) >= 2)
    {
      if (v5 != 8)
      {
        return v4;
      }

      return kCFNull;
    }

    goto LABEL_27;
  }

  if (v5 <= 2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        v6 = *(a2 + 16);
        goto LABEL_34;
      }

      if (v5 != 2)
      {
        return v4;
      }
    }

LABEL_16:
    v6 = *(a2 + 16);
    if ((v6 & 0x1000) != 0)
    {
      if ((v6 & 0x400) != 0)
      {
        return @"0";
      }

      if (v5 && (v6 & 0x800) != 0)
      {
        return &stru_1000643F8;
      }
    }

LABEL_34:
    if ((~v6 & 0x1800) == 0)
    {
LABEL_35:
      v11 = CFGetAllocator(a1);

      return CFDataCreate(v11, 0, 0);
    }

    return kCFNull;
  }

  if ((v5 - 5) < 2)
  {
    v10 = CFGetAllocator(a1);
    Current = CFAbsoluteTimeGetCurrent();
    v7 = v10;
    goto LABEL_30;
  }

  if (v5 == 3)
  {
LABEL_27:
    if ((*(a2 + 17) & 0x10) != 0)
    {
      valuePtr = 0;
      v9 = CFGetAllocator(a1);
      return CFNumberCreate(v9, kCFNumberSInt32Type, &valuePtr);
    }

    return kCFNull;
  }

  if (v5 != 4)
  {
    return v4;
  }

  if ((~*(a2 + 16) & 0x1400) != 0)
  {
    return kCFNull;
  }

  v7 = kCFAllocatorDefault;
  Current = 0.0;
LABEL_30:

  return CFDateCreate(v7, Current);
}

uint64_t sub_100002090(uint64_t a1, void *a2, const __CFData *a3, __CFString **a4)
{
  if (!a2)
  {
    return 0;
  }

  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = kCFNull;
  }

  v8 = a2[4];
  if (!v8)
  {
    if ((a2[2] & 0x2080) != 0)
    {
      result = sub_100001CF0(a1, 1, a4);
      if (!result)
      {
        return result;
      }
    }

    switch(*(a2 + 2))
    {
      case 0:
      case 0xF:
        v10 = sub_1000015D0(v7);
        goto LABEL_19;
      case 1:
      case 0xA:
        v10 = sub_100001414(v7);
        goto LABEL_19;
      case 2:
      case 0xE:
        v10 = sub_100001350(v7);
        goto LABEL_19;
      case 3:
      case 8:
      case 0xB:
      case 0xC:
        v10 = sub_1000016E8(v7);
        goto LABEL_19;
      case 4:
      case 5:
      case 6:
        v10 = sub_1000017D8(v7);
        goto LABEL_19;
      case 7:
        v10 = sub_100001678(v7);
        goto LABEL_19;
      case 9:
        v14 = sub_100001414(v7);
        if (v14)
        {
          v11 = v14;
          if (*(a1 + 40) == 4)
          {
            v15 = 2;
          }

          else
          {
            v15 = 1;
          }

          *(a1 + 40) = v15;
LABEL_20:
          Value = CFDictionaryGetValue(*(a1 + 48), *a2);
          if (Value)
          {
            v13 = CFEqual(Value, v11);
            CFDictionarySetValue(*(a1 + 48), *a2, v11);
            CFRelease(v11);
            if (!v13)
            {
              goto LABEL_36;
            }

            return 1;
          }

          CFDictionarySetValue(*(a1 + 48), *a2, v11);
          CFRelease(v11);
LABEL_36:
          v19 = a2[2];
          if ((v19 & 0x100) != 0)
          {
            v20 = sub_100001820(*(a1 + 16), 7, 0);
            sub_100002090(a1, v20, kCFNull, 0);
            v19 = a2[2];
          }

          if (v19)
          {
            v21 = sub_100001820(*(a1 + 16), 10, 0);
            sub_100002090(a1, v21, kCFNull, 0);
            v19 = a2[2];
          }

          if ((v19 & 0x2080) != 0)
          {
            v22 = *(a1 + 40);
            if (v22 == 2 || v22 == 6 && (v19 & 0x20) == 0)
            {
              v23 = sub_100001820(*(a1 + 16), 9, 0);
              sub_100002090(a1, v23, kCFNull, 0);
              v19 = a2[2];
            }
          }

          if ((v19 & 8) == 0)
          {
            return 1;
          }

          v24 = *(a1 + 48);
          v25 = sub_100002EFC(a2);
          v26 = v24;
          goto LABEL_48;
        }

        if (!v7 || CFEqual(kCFNull, v7))
        {
          *(a1 + 40) = 0;
LABEL_32:
          if (!v7)
          {
            goto LABEL_34;
          }
        }

        if (CFEqual(kCFNull, v7))
        {
LABEL_34:
          v17 = CFDictionaryGetValue(*(a1 + 48), *a2);
          if (!v17)
          {
            v26 = *(a1 + 48);
            v25 = *a2;
LABEL_48:
            CFDictionaryRemoveValue(v26, v25);
            return 1;
          }

          v18 = CFEqual(v17, kCFNull);
          CFDictionaryRemoveValue(*(a1 + 48), *a2);
          if (v18)
          {
            return 1;
          }

          goto LABEL_36;
        }

        SecError(-50, a4, @"attribute %@: value: %@ failed to convert", *a2, v7);
        break;
      case 0xD:
        v16 = sub_100002EBC(v7);
        if (!v16)
        {
          goto LABEL_32;
        }

        v11 = v16;
        CFRetain(v16);
        goto LABEL_20;
      case 0x10:
        v10 = sub_1000014F4(v7);
LABEL_19:
        v11 = v10;
        if (v10)
        {
          goto LABEL_20;
        }

        goto LABEL_32;
      default:
        goto LABEL_32;
    }

    return 0;
  }

  return v8(a1);
}

const void *sub_100002408(void *a1, CFTypeRef cf2)
{
  if (!a1 || !cf2 || (v4 = a1[6]) == 0 || (result = CFDictionaryGetValue(v4, cf2)) == 0)
  {
    v6 = a1[2];
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = (v6 + 24);
      while (!CFEqual(*v7, cf2))
      {
        v9 = *v8++;
        v7 = v9;
        if (!v9)
        {
          return 0;
        }
      }

      return sub_100001BA0(a1, v7, 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000024B0()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100002548;
  block[3] = &unk_1000592E8;
  block[4] = &qword_1000736B0;
  if (qword_1000736A8 != -1)
  {
    dispatch_once(&qword_1000736A8, block);
  }

  return qword_1000736B0;
}

uint64_t sub_100002548(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

void sub_10000257C(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[9];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[8];
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t sub_1000025E4(void **a1, void **a2)
{
  v3 = a1;
  if (a1)
  {
    v4 = sub_100001820(a1[2], 7, 0);
    v3 = sub_100001BA0(v3, v4, 0);
  }

  if (a2)
  {
    v5 = sub_100001820(a2[2], 7, 0);
    v6 = sub_100001BA0(a2, v5, 0);
  }

  else
  {
    v6 = 0;
  }

  return CFEqual(v3, v6);
}

unint64_t sub_100002674(void **a1)
{
  v2 = sub_100001820(a1[2], 7, 0);
  v3 = sub_100001BA0(a1, v2, 0);
  BytePtr = CFDataGetBytePtr(v3);
  return (BytePtr[1] << 8) | (BytePtr[2] << 16) | (BytePtr[3] << 24) | *BytePtr;
}

__CFString *sub_1000026DC(void **a1, CFTypeRef cf)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFDictionaryGetTypeID())
    {
      if (CFDictionaryContainsKey(cf, kSecDebugFormatOption))
      {
        v5 = CFGetAllocator(a1);
        Mutable = CFStringCreateMutable(v5, 0);
        CFStringAppendFormat(Mutable, 0, @"<%@", *a1[2]);
        v7 = a1[2];
        v8 = v7[2];
        if (v8)
        {
          v9 = v7 + 3;
          do
          {
            if (*(v8 + 16))
            {
              sub_1000070A8(a1, v8, Mutable);
            }

            v10 = *v9++;
            v8 = v10;
          }

          while (v10);
        }

        CFStringAppend(Mutable, @", |otherAttr");
        v11 = a1[2];
        v12 = v11[2];
        if (v12)
        {
          v13 = (v11 + 3);
          do
          {
            if (*v12 && CFEqual(@"tomb", *v12))
            {
              sub_1000070A8(a1, v12, Mutable);
            }

            v14 = *v13++;
            v12 = v14;
          }

          while (v14);
          v15 = a1[2];
          v16 = v15[2];
          if (v16)
          {
            v17 = v15 + 3;
            do
            {
              if ((*(v16 + 16) & 1) == 0 && (!*v16 || !CFEqual(@"tomb", *v16)))
              {
                sub_1000070A8(a1, v16, Mutable);
              }

              v18 = *v17++;
              v16 = v18;
            }

            while (v18);
          }
        }

        CFStringAppend(Mutable, @">");
        return Mutable;
      }
    }
  }

  v87 = 0;
  valuePtr = 0;
  v85 = 0;
  v88 = 0u;
  v89 = 0u;
  v19 = CFStringCreateMutable(kCFAllocatorDefault, 0);
  v20 = a1[2];
  v23 = v20[2];
  v21 = v20 + 2;
  v22 = v23;
  if (v23)
  {
    v84 = 0;
    v82 = 0;
    v24 = 0;
    v79 = kSecAttrMultiUser;
    v81 = &v87;
    v83 = &v88;
    v25 = &v87;
    while (1)
    {
      v26 = *(v22 + 8);
      if (v26 <= 7)
      {
        break;
      }

      if (v26 > 11)
      {
        if (v26 > 13)
        {
          if (v26 == 14)
          {
            v63 = sub_100001BA0(a1, v22, 0);
            if (v63)
            {
              v64 = v63;
              v65 = CFGetTypeID(v63);
              if (v65 == CFStringGetTypeID())
              {
                v24 = v64;
              }
            }

            goto LABEL_83;
          }

          if (v26 == 16)
          {
            v42 = sub_100001BA0(a1, v22, 0);
            if (v42)
            {
              v43 = v42;
              if (CFEqual(*v22, v79))
              {
                v44 = CFGetTypeID(v43);
                if (v44 == CFDataGetTypeID())
                {
                  CFStringAppend(v19, @",");
                  if (CFDataGetLength(v43))
                  {
                    BytePtr = CFDataGetBytePtr(v43);
                    Length = CFDataGetLength(v43);
                    if (Length >= 1)
                    {
                      v47 = Length;
                      do
                      {
                        v48 = *BytePtr++;
                        CFStringAppendFormat(v19, 0, @"%02X", v48);
                        --v47;
                      }

                      while (v47);
                    }

                    goto LABEL_83;
                  }

                  goto LABEL_82;
                }
              }
            }
          }
        }

        else
        {
          if (v26 != 12)
          {
            v30 = sub_100001BA0(a1, v22, 0);
            if (v30)
            {
              v31 = v30;
              v32 = CFGetTypeID(v30);
              TypeID = CFBooleanGetTypeID();
              v34 = v84;
              if (v32 == TypeID)
              {
                v34 = v31;
              }

              v84 = v34;
            }

            goto LABEL_83;
          }

          v58 = sub_100001BA0(a1, v22, 0);
          if (v58)
          {
            v39 = v58;
            v59 = CFGetTypeID(v58);
            if (v59 == CFNumberGetTypeID())
            {
              p_valuePtr = &valuePtr;
LABEL_72:
              v56 = v39;
              v57 = kCFNumberCharType;
LABEL_73:
              CFNumberGetValue(v56, v57, p_valuePtr);
            }
          }
        }
      }

      else
      {
        if (v26 <= 9)
        {
          if (v26 == 8)
          {
            v53 = sub_100001BA0(a1, v22, 0);
            if (!v53)
            {
              goto LABEL_83;
            }

            v54 = v53;
            v55 = CFGetTypeID(v53);
            if (v55 != CFNumberGetTypeID())
            {
              goto LABEL_83;
            }

            p_valuePtr = &v85;
            v56 = v54;
            v57 = kCFNumberSInt64Type;
            goto LABEL_73;
          }

          goto LABEL_31;
        }

        if (v26 == 10)
        {
          v60 = sub_100001BA0(a1, v22, 0);
          if (v60)
          {
            v61 = v60;
            v62 = CFGetTypeID(v60);
            if (v62 == CFDataGetTypeID())
            {
              v25 = CFDataGetBytePtr(v61);
            }
          }

          goto LABEL_83;
        }

        v38 = sub_100001BA0(a1, v22, 0);
        if (v38)
        {
          v39 = v38;
          v40 = CFGetTypeID(v38);
          if (v40 == CFNumberGetTypeID())
          {
            p_valuePtr = &valuePtr + 1;
            goto LABEL_72;
          }
        }
      }

LABEL_83:
      v66 = v21[1];
      ++v21;
      v22 = v66;
      if (!v66)
      {
        goto LABEL_86;
      }
    }

    if (v26 >= 5)
    {
      if (v26 == 6)
      {
        v49 = sub_100001BA0(a1, v22, 0);
        if (v49)
        {
          v50 = v49;
          v51 = CFGetTypeID(v49);
          if (v51 == CFDateGetTypeID())
          {
            AbsoluteTime = CFDateGetAbsoluteTime(v50);
            v83 = der_encode_generalizedtime_body(0, v83, &v89 + 15, AbsoluteTime);
          }
        }
      }

      else if (v26 == 7)
      {
        v35 = sub_100001BA0(a1, v22, 0);
        if (v35)
        {
          v36 = v35;
          v37 = CFGetTypeID(v35);
          if (v37 == CFDataGetTypeID() && CFDataGetLength(v36) >= 4)
          {
            v81 = CFDataGetBytePtr(v36);
          }
        }
      }

      goto LABEL_83;
    }

LABEL_31:
    if ((*(v22 + 16) & 0x30) == 0)
    {
      goto LABEL_83;
    }

    v27 = sub_100001BA0(a1, v22, 0);
    if (!v27)
    {
      goto LABEL_83;
    }

    v28 = v27;
    if (CFEqual(v27, kCFNull))
    {
      goto LABEL_83;
    }

    v29 = CFGetTypeID(v28);
    if (v29 != CFStringGetTypeID() || !CFEqual(*v22, kSecAttrAccessGroup))
    {
      CFStringAppend(v19, @",");
LABEL_82:
      CFStringAppend(v19, *v22);
      goto LABEL_83;
    }

    v82 = v28;
    goto LABEL_83;
  }

  v24 = 0;
  v82 = 0;
  v84 = 0;
  v25 = &v87;
  v81 = &v87;
  v83 = &v88;
LABEL_86:
  v80 = v24;
  v67 = CFGetAllocator(a1);
  if (valuePtr)
  {
    v68 = "T";
  }

  else
  {
    v68 = "O";
  }

  v69 = *a1[2];
  v70 = *v25;
  v71 = v25[1];
  v72 = v25[2];
  v73 = v25[3];
  if (HIBYTE(valuePtr))
  {
    v74 = "S";
  }

  else
  {
    v74 = "L";
  }

  v75 = v85;
  if (v84)
  {
    v76 = CFEqual(v84, kCFBooleanFalse);
    v77 = "F,";
    if (!v76)
    {
      v77 = "T,";
    }
  }

  else
  {
    v77 = "";
  }

  Mutable = CFStringCreateWithFormat(v67, 0, @"%s,%@,%02X%02X%02X%02X,%s,%@,%@,%lld%@,%s,%s%02X%02X%02X%02X", v68, v69, v70, v71, v72, v73, v74, v80, v82, v75, v19, v83, v77, *v81, v81[1], v81[2], v81[3]);
  if (v19)
  {
    CFRelease(v19);
  }

  return Mutable;
}

__CFString *sub_100002DE4(void **a1)
{
  DebugDescriptionFormatOptions = SecGetDebugDescriptionFormatOptions();

  return sub_1000026DC(a1, DebugDescriptionFormatOptions);
}

uint64_t sub_100002E30(uint64_t a1, int a2, __CFString **a3)
{
  v5 = sub_100001CF0(a1, 1, a3);
  if (v5)
  {
    if (*(a1 + 28) != a2)
    {
      *(a1 + 28) = a2;
      *(a1 + 32) = 0;
      if (*(a1 + 40) == 2)
      {
        v6 = sub_100001820(*(a1 + 16), 9, 0);
        sub_100002090(a1, v6, kCFNull, 0);
      }
    }
  }

  return v5;
}

const void *sub_100002EBC(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = CFGetTypeID(a1);
  if (v2 != CFBooleanGetTypeID())
  {
    return 0;
  }

  return v1;
}

uint64_t sub_100002EFC(_BYTE *a1)
{
  if ((a1[16] & 8) == 0)
  {
    return *a1;
  }

  if (qword_1000736B8 != -1)
  {
    sub_10003E0EC();
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_1000073A8;
  v4[3] = &unk_100059748;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(qword_1000736C8, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t sub_100002FD8(uint64_t a1, CFDictionaryRef theDict, __CFString **a3)
{
  v3 = *(a1 + 16);
  v4 = *(v3 + 16);
  if (!v4)
  {
    return 1;
  }

  for (i = (v3 + 24); ; ++i)
  {
    Value = CFDictionaryGetValue(theDict, *v4);
    if (Value)
    {
      result = sub_100002090(a1, v4, Value, a3);
      if (!result)
      {
        break;
      }
    }

    v11 = *i;
    v4 = v11;
    if (!v11)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_100003054(uint64_t a1, CFTypeRef cf2, const __CFData *a3, __CFString **a4)
{
  v4 = *(a1 + 16);
  v5 = *(v4 + 16);
  if (!v5)
  {
    return 0;
  }

  v10 = (v4 + 24);
  while (!CFEqual(*v5, cf2))
  {
    v11 = *v10++;
    v5 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return sub_100002090(a1, v5, a3, a4);
}

uint64_t sub_1000030F0(uint64_t a1, const void *a2, uint64_t *a3)
{
  cf = 0;
  v5 = sub_100001BA0(a2, a3, &cf);
  if (cf)
  {
    v6 = secLogObjForScope("secitem");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    v7 = *a3;
    *buf = 138412546;
    v15 = v7;
    v16 = 2112;
    v17 = cf;
    v8 = "Merging: unable to get attribute (%@) : %@";
    goto LABEL_4;
  }

  v10 = v5;
  if (!v5 || kCFNull && CFEqual(v5, kCFNull))
  {
    return 1;
  }

  v11 = secLogObjForScope("secitem");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_10003E100(a3, v11);
  }

  sub_100002090(a1, a3, v10, &cf);
  if (!cf)
  {
    return 1;
  }

  v6 = secLogObjForScope("secitem");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a3;
    *buf = 138412546;
    v15 = v12;
    v16 = 2112;
    v17 = cf;
    v8 = "Unable to set attribute (%@) : %@";
LABEL_4:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 0x16u);
  }

LABEL_5:
  result = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(result);
    return 0;
  }

  return result;
}

uint64_t sub_1000032AC(uint64_t a1, uint64_t a2, __CFString **a3)
{
  if (*(a1 + 40) == 2)
  {
    v6 = sub_100001820(*(a1 + 16), 9, a3);
    result = sub_100002090(a1, v6, kCFNull, a3);
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    result = 1;
    if (!a2)
    {
      return result;
    }
  }

  if (result)
  {
    *(a1 + 40) = 0;
    v8 = SecAccessControlCopyData();
    v9 = sub_100001820(*(a1 + 16), 15, a3);
    v10 = sub_100002090(a1, v9, v8, a3);
    CFRelease(v8);
    return v10;
  }

  return result;
}

const void *sub_10000336C(uint64_t a1, uint64_t a2, const __CFDictionary *a3, int a4, __CFString **a5)
{
  v7 = sub_1000033DC(kCFAllocatorDefault, a2, a4, 0);
  v8 = v7;
  if (v7 && (sub_100002FD8(v7, a3, a5) & 1) == 0)
  {
    CFRelease(v8);
    return 0;
  }

  return v8;
}

uint64_t sub_1000033DC(const __CFAllocator *a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1000024B0();
  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = a2;
  *(Instance + 48) = CFDictionaryCreateMutable(a1, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *(Instance + 28) = a3;
  *(Instance + 32) = a4;
  *(Instance + 40) = 0;
  *(Instance + 64) = @"od";
  return Instance;
}

CFDataRef sub_100003478(const __CFAllocator *a1, sqlite3_stmt *a2, uint64_t a3, int iCol)
{
  result = 0;
  v9 = *(a3 + 8);
  if (v9 > 6)
  {
    if (v9 <= 0x10)
    {
      if (((1 << v9) & 0x10600) != 0)
      {
        goto LABEL_30;
      }

      if (((1 << v9) & 0x1800) != 0)
      {
        goto LABEL_10;
      }

      if (v9 == 14)
      {
LABEL_24:
        v12 = *(a3 + 16);

        return sub_1000074D4(a1, a2, iCol, v12);
      }
    }

    if (v9 != 7)
    {
      if (v9 != 8)
      {
        return result;
      }

      valuePtr = COERCE_DOUBLE(sqlite3_column_int64(a2, iCol));
      v13 = a1;
      v14 = kCFNumberSInt64Type;
      return CFNumberCreate(v13, v14, &valuePtr);
    }

LABEL_30:

    return sub_100007580(a1, a2, iCol);
  }

  if (v9 <= 2)
  {
    if (!v9)
    {
      goto LABEL_18;
    }

    if (v9 != 1)
    {
      if (v9 != 2)
      {
        return result;
      }

      goto LABEL_24;
    }

    goto LABEL_30;
  }

  if ((v9 - 4) < 3)
  {
    v10 = sqlite3_column_double(a2, iCol);

    return CFDateCreate(a1, v10);
  }

  if (v9 != 3)
  {
    return result;
  }

LABEL_18:
  v11 = sqlite3_column_type(a2, iCol);
  result = 0;
  if (v11 > 2)
  {
    if (v11 != 3)
    {
      if (v11 != 4)
      {
        if (v11 == 5)
        {
          return kCFNull;
        }

        return result;
      }

      goto LABEL_30;
    }

    goto LABEL_24;
  }

  if (v11 != 1)
  {
    if (v11 != 2)
    {
      return result;
    }

    valuePtr = sqlite3_column_double(a2, iCol);
    v13 = a1;
    v14 = kCFNumberDoubleType;
    return CFNumberCreate(v13, v14, &valuePtr);
  }

LABEL_10:

  return sub_100007470(a1, a2, iCol);
}

uint64_t sub_100003694(const __CFAllocator *a1, void *a2, sqlite3_stmt *a3, int a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1000033DC(a1, a2, a4, 0);
  v10 = a2[2];
  if (!v10)
  {
    return v9;
  }

  v11 = 0;
  for (i = 3; ; ++i)
  {
    if (!(*(a6 + 16))(a6, v10))
    {
      goto LABEL_6;
    }

    v13 = sub_100003478(a1, a3, v10, v11);
    if (!v13)
    {
      break;
    }

    v14 = v13;
    ++v11;
    v15 = *(v9 + 48);
    v16 = sub_100002EFC(v10);
    CFDictionarySetValue(v15, v16, v14);
    CFRelease(v14);
LABEL_6:
    v17 = sub_100001820(a2, 9, 0);
    if (v17 && CFDictionaryGetValue(*(v9 + 48), *v17))
    {
      *(v9 + 40) = 1;
    }

    v10 = a2[i];
    if (!v10)
    {
      return v9;
    }
  }

  if (v9)
  {
    CFRelease(v9);
    return 0;
  }

  return v9;
}

const void *sub_1000037B8(const __CFAllocator *a1, void *a2, const __CFData *a3, int a4, uint64_t a5, __CFString **a6)
{
  v9 = sub_1000033DC(a1, a2, a4, a5);
  v10 = sub_100001820(a2, 9, a6);
  if (v10 && (sub_100002090(v9, v10, a3, a6) & 1) == 0 && v9)
  {
    CFRelease(v9);
    return 0;
  }

  return v9;
}

const void *sub_100003838(uint64_t a1, const __CFDictionary *a2, __CFString **a3)
{
  v6 = CFGetAllocator(a1);
  v7 = sub_1000033DC(v6, *(a1 + 16), *(a1 + 28), *(a1 + 32));
  sub_100001CA4(v7, *(a1 + 56));
  v8 = *(a1 + 16);
  v9 = *(v8 + 16);
  if (!v9)
  {
    return v7;
  }

  for (i = (v8 + 24); ; ++i)
  {
    v11 = *(v9 + 8);
    v12 = v11 > 0xA;
    v13 = (1 << v11) & 0x6C0;
    if (!v12 && v13 != 0)
    {
      goto LABEL_7;
    }

    value = 0;
    if (CFDictionaryGetValueIfPresent(a2, *v9, &value))
    {
      break;
    }

    v16 = sub_100001BA0(a1, v9, a3);
    value = v16;
    if (!v16)
    {
      goto LABEL_15;
    }

LABEL_14:
    if ((sub_100002090(v7, v9, v16, a3) & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_7:
    v15 = *i;
    v9 = v15;
    if (!v15)
    {
      return v7;
    }
  }

  v16 = value;
  if (value)
  {
    goto LABEL_14;
  }

  SecError(-50, a3, @"NULL value in dictionary");
  v16 = value;
  if (value)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (v7)
  {
    CFRelease(v7);
  }

  return 0;
}

__CFString ***sub_10000396C(__CFString ***result)
{
  if (result)
  {
    v1 = result;
    v2 = sub_100009044(result[2], kSecAttrAccessGroup, 0);
    result = sub_100001BA0(v1, v2, 0);
    if (result)
    {
      v3 = result;
      v4 = CFGetTypeID(result);
      if (v4 == CFStringGetTypeID())
      {
        return (CFStringCompare(v3, kSOSInternalAccessGroup, 0) == kCFCompareEqualTo);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_100003A00(CFMutableStringRef theString, const __CFString *a2, _BYTE *a3)
{
  if (*a3 == 1)
  {
    CFStringAppend(theString, @",");
  }

  else
  {
    *a3 = 1;
  }

  CFStringAppend(theString, a2);
}

void sub_100003A64(__CFString *a1, _BYTE *a2)
{
  if (a2 && (*a2 & 1) != 0)
  {
    CFStringAppend(a1, @" WHERE ");
    *a2 = 0;
  }

  else
  {

    CFStringAppend(a1, @" AND ");
  }
}

void sub_100003AC4(__CFString *a1, const __CFString *a2, _BYTE *a3)
{
  sub_100003A64(a1, a3);
  CFStringAppend(a1, a2);

  CFStringAppend(a1, @"=?");
}

void sub_100003B18(__CFString *a1, const __CFString *a2, _BYTE *a3)
{
  sub_100003A64(a1, a3);
  CFStringAppend(a1, a2);

  CFStringAppend(a1, @"!=?");
}

void sub_100003B6C(__CFString *a1, const __CFString *a2, _BYTE *a3, uint64_t a4)
{
  if (a4 == 1)
  {

    sub_100003AC4(a1, a2, a3);
  }

  else
  {
    sub_100003A64(a1, a3);
    CFStringAppend(a1, a2);
    CFStringAppend(a1, @" IN (");

    sub_100003C0C(a1, a4);
  }
}

void sub_100003C0C(CFMutableStringRef theString, uint64_t a2)
{
  if (a2 >= 1)
  {
    v3 = 0;
    v4 = a2 + 1;
    do
    {
      if (v3)
      {
        CFStringAppend(theString, @",");
      }

      CFStringAppend(theString, @"?");
      --v4;
      v3 = 1;
    }

    while (v4 > 1);
  }

  CFStringAppend(theString, @""));
}

void sub_100003C9C(__CFString *a1, const __CFString *a2, _BYTE *a3, uint64_t a4)
{
  if (a4 == 1)
  {

    sub_100003B18(a1, a2, a3);
  }

  else
  {
    sub_100003A64(a1, a3);
    CFStringAppend(a1, a2);
    CFStringAppend(a1, @" NOT IN (");

    sub_100003C0C(a1, a4);
  }
}

const void *sub_100003D3C(void **a1, __CFString **a2)
{
  v4 = sub_100001820(a1[2], 16, a2);
  if (!v4)
  {
    return 0;
  }

  v5 = sub_100001BA0(a1, v4, a2);
  v6 = v5;
  if (!v5 || (v7 = CFGetTypeID(v5), v7 != CFDataGetTypeID()))
  {
    SecDbError(1, a2, @"persistent ref %@ is not a data", v6);
  }

  return v6;
}

uint64_t sub_100003DD8(uint64_t a1, const __CFData *a2, __CFString **a3)
{
  v6 = sub_100001820(*(a1 + 16), 16, a3);
  if (!a2 || !v6)
  {
    return 1;
  }

  return sub_100002090(a1, v6, a2, a3);
}

uint64_t sub_100003E50(void **a1, __CFString **a2)
{
  valuePtr = 0;
  v4 = sub_100001820(a1[2], 8, a2);
  if (v4)
  {
    v5 = sub_100001BA0(a1, v4, a2);
    v6 = v5;
    if (!v5 || (v7 = CFGetTypeID(v5), v7 != CFNumberGetTypeID()) || !CFNumberGetValue(v6, kCFNumberSInt64Type, &valuePtr))
    {
      SecDbError(1, a2, @"rowid %@ is not a 64 bit number", v6);
    }
  }

  return valuePtr;
}

uint64_t sub_100003EFC(void **a1, uint64_t a2, __CFString **a3)
{
  v6 = sub_100001820(a1[2], 8, a3);
  if (!v6)
  {
    return 1;
  }

  v7 = v6;
  valuePtr = a2;
  v8 = CFGetAllocator(a1);
  v9 = CFNumberCreate(v8, kCFNumberSInt64Type, &valuePtr);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = sub_100002090(a1, v7, v9, a3);
  CFRelease(v10);
  return v11;
}

uint64_t sub_100003F9C(uint64_t a1, __CFString **a2)
{
  v3 = sub_100001820(*(a1 + 16), 8, a2);
  if (v3)
  {
    CFDictionaryRemoveValue(*(a1 + 48), *v3);
  }

  return 1;
}

BOOL sub_100003FE4(const void *a1, uint64_t a2, BOOL *a3, __CFString **a4)
{
  v5 = sub_100001BA0(a1, a2, a4);
  v6 = v5;
  if (v5)
  {
    valuePtr = -86;
    v7 = CFGetTypeID(v5);
    v8 = v7 == CFNumberGetTypeID() && CFNumberGetValue(v6, kCFNumberCharType, &valuePtr) && valuePtr == 1;
    *a3 = v8;
  }

  return v6 != 0;
}

uint64_t sub_100004078(void **a1)
{
  v5 = -86;
  v2 = sub_100001820(a1[2], 11, 0);
  v3 = sub_100003FE4(a1, v2, &v5, 0);
  return v3 & v5;
}

const void *sub_1000040D4(void *a1)
{
  result = sub_100002408(a1, kSecAttrSharingGroup);
  if (result)
  {
    v2 = CFGetTypeID(result);
    return (v2 == CFStringGetTypeID());
  }

  return result;
}

uint64_t sub_100004118(uint64_t a1, int a2, __CFString **a3)
{
  v6 = sub_100001820(*(a1 + 16), 11, a3);
  v7 = &kCFBooleanTrue;
  if (!a2)
  {
    v7 = &kCFBooleanFalse;
  }

  v8 = *v7;

  return sub_100002090(a1, v6, v8, a3);
}

uint64_t sub_10000418C(void **a1)
{
  v5 = -86;
  v2 = sub_100001820(a1[2], 12, 0);
  v3 = sub_100003FE4(a1, v2, &v5, 0);
  return v3 & v5;
}

uint64_t sub_1000041E8(CFStringRef **a1, uint64_t a2, CFTypeRef *a3)
{
  if (sub_100001CF0(a1, 1, a3))
  {
    v6 = CFGetAllocator(a1);
    Mutable = CFStringCreateMutable(v6, 0);
    CFStringAppend(Mutable, @"INSERT INTO ");
    CFStringAppend(Mutable, *a1[2]);
    CFStringAppend(Mutable, @"(");
    v8 = a1[2];
    v9 = v8[2];
    if (v9)
    {
      v10 = 0;
      v11 = 0;
      v12 = v8 + 3;
      do
      {
        if ((v9->data & 2) != 0)
        {
          isa = v9->isa;
          if (v11)
          {
            CFStringAppend(Mutable, @",");
          }

          ++v10;
          CFStringAppend(Mutable, isa);
          v11 = 1;
        }

        v14 = *v12++;
        v9 = v14;
      }

      while (v14);
      CFStringAppend(Mutable, @"VALUES(?"));
      if (v10 >= 2)
      {
        v15 = v10 + 1;
        do
        {
          CFStringAppend(Mutable, @",?");
          --v15;
        }

        while (v15 > 2);
      }
    }

    else
    {
      CFStringAppend(Mutable, @"VALUES(?"));
    }

    CFStringAppend(Mutable, @""));
    v23 = 0;
    v24 = &v23;
    v25 = 0x2000000000;
    v26 = Mutable != 0;
    if (!Mutable)
    {
      goto LABEL_30;
    }

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 0x40000000;
    v22[2] = sub_10000451C;
    v22[3] = &unk_100059350;
    v22[6] = a1;
    v22[7] = a3;
    v22[4] = &stru_100059328;
    v22[5] = &v23;
    v22[8] = a2;
    v17 = SecDbPrepare(a2, Mutable, a3, v22);
    *(v24 + 24) &= v17;
    CFRelease(Mutable);
    if (v24[3])
    {
      v18 = secLogObjForScope("item");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v28 = a1;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "inserted %{private}@", buf, 0xCu);
      }

      SecDbRecordChange(a2, 0, a1);
    }

    else
    {
LABEL_30:
      if ((sub_10000396C(a1) & 1) == 0)
      {
        v19 = secLogObjForScope("item");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          if (a3)
          {
            v20 = *a3;
          }

          else
          {
            v20 = 0;
          }

          *buf = 138478083;
          v28 = a1;
          v29 = 2112;
          v30 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "insert failed for item %{private}@ with %@", buf, 0x16u);
        }
      }
    }

    v16 = *(v24 + 24);
    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_10000451C(void *a1, sqlite3_stmt *pStmt)
{
  v5 = a1[6];
  v4 = a1[7];
  v6 = *(v5 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    LODWORD(v8) = 0;
    v9 = a1[4];
    v10 = (v6 + 24);
    while (1)
    {
      if ((*(v9 + 16))(v9, v7))
      {
        result = sub_10003DF1C(v5, v7, v4);
        if (!result)
        {
          goto LABEL_11;
        }

        v13 = result;
        v8 = (v8 + 1);
        v14 = SecDbBindObject(pStmt, v8, result, v4);
        CFRelease(v13);
        if (!v14)
        {
          break;
        }
      }

      v11 = *v10++;
      v7 = v11;
      if (!v11)
      {
        v4 = a1[7];
        goto LABEL_9;
      }
    }

    result = 0;
  }

  else
  {
LABEL_9:
    result = SecDbStep(a1[8], pStmt, v4, 0);
    if (result)
    {
      v15 = a1[7];
      v16 = a1[6];
      v17 = SecDbHandle(a1[8]);
      insert_rowid = sqlite3_last_insert_rowid(v17);
      result = sub_100003EFC(v16, insert_rowid, v15);
    }
  }

LABEL_11:
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

__CFError *sub_100004630(__CFError *result)
{
  if (result)
  {
    v1 = result;
    if (CFErrorGetCode(result) == 19)
    {
      v2 = kSecDbErrorDomain;
      Domain = CFErrorGetDomain(v1);
      return (CFEqual(v2, Domain) != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100004694(uint64_t a1, uint64_t a2, __CFString **a3, uint64_t a4)
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x2000000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = sub_1000041E8(a1, a2, &v29);
  if ((v23[3] & 1) == 0)
  {
    v8 = v27[3];
    if (v8)
    {
      if (CFErrorGetCode(v8) == 19)
      {
        v9 = kSecDbErrorDomain;
        Domain = CFErrorGetDomain(v27[3]);
        if (CFEqual(v9, Domain))
        {
          v11 = sub_1000048CC(a1, a3);
          if (v11)
          {
            v12 = v11;
            v13 = *(a1 + 56);
            v14 = v11[18];
            if (v14 != v13)
            {
              if (!v13 || (CFRetain(*(a1 + 56)), (v14 = v12[18]) != 0))
              {
                CFRelease(v14);
              }

              v12[18] = v13;
            }

            v21[0] = _NSConcreteStackBlock;
            v21[1] = 0x40000000;
            v21[2] = sub_100004AB8;
            v21[3] = &unk_1000593F8;
            v21[4] = a4;
            v21[5] = &v22;
            v21[6] = &v26;
            v21[7] = a3;
            v21[8] = a1;
            v21[9] = a2;
            sub_100004958(v12, a2, a3, 0, &stru_100059390, 0, 0, v21);
            sub_100001CA4(a1, v12[18]);
            v15 = sub_100029F58(v12, a3);
            *(v23 + 24) &= v15;
          }
        }
      }
    }
  }

  v16 = *(v23 + 24);
  v17 = v27[3];
  if (a3 && v17)
  {
    if (!*a3)
    {
      goto LABEL_22;
    }

    if (CFErrorGetCode(*a3) != -25330)
    {
      goto LABEL_20;
    }

    v18 = *a3;
    if (!*a3)
    {
LABEL_22:
      v19 = 0;
      *a3 = v17;
      goto LABEL_24;
    }

    *a3 = 0;
    CFRelease(v18);
  }

  else
  {
    if (!v17)
    {
      v19 = 1;
      goto LABEL_24;
    }

    if (!a3)
    {
      goto LABEL_21;
    }
  }

LABEL_20:
  if (!*a3)
  {
    goto LABEL_22;
  }

LABEL_21:
  CFRelease(v17);
  v19 = 0;
LABEL_24:
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
  return v16 & v19;
}

void *sub_1000048CC(void *a1, __CFString **a2)
{
  v4 = sub_1000019E4(a1, 1, 0, a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_10002A0E4(a1[2], 0, 0, 0, a2);
  v7 = v6;
  if (v6)
  {
    v8 = v6[1];
    if (v8)
    {
      CFRelease(v8);
    }

    v7[1] = v5;
  }

  else
  {
    CFRelease(v5);
  }

  return v7;
}

uint64_t sub_100004958(CFDictionaryRef *a1, uint64_t a2, CFTypeRef *a3, Block_layout *a4, Block_layout *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 1;
  if (a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = &stru_100059650;
  }

  if (a5)
  {
    v14 = a5;
  }

  else
  {
    v14 = &stru_100059690;
  }

  v15 = sub_100006934(a1, v13, v14, a6);
  if (v15)
  {
    v16 = v15;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 0x40000000;
    v20[2] = sub_100006F34;
    v20[3] = &unk_1000596E0;
    v20[8] = &v21;
    v20[9] = a1;
    v20[4] = v14;
    v20[5] = a7;
    v20[10] = a3;
    v20[11] = a2;
    v20[6] = v13;
    v20[7] = a8;
    v17 = SecDbPrepare(a2, v15, a3, v20);
    *(v22 + 24) &= v17;
    CFRelease(v16);
    v18 = *(v22 + 24);
  }

  else
  {
    v18 = 0;
    *(v22 + 24) = 0;
  }

  _Block_object_dispose(&v21, 8);
  return v18 & 1;
}

void sub_100004AB8(uint64_t a1, uint64_t a2)
{
  v19 = 0;
  *(*(*(a1 + 40) + 8) + 24) = sub_100004D30(a2, &v19, *(a1 + 56));
  cf = 0;
  v4 = v19;
  if (v19 != 1)
  {
    if (*(*(*(a1 + 40) + 8) + 24) != 1)
    {
      return;
    }

    v15 = *(a1 + 32);
    if (!v15)
    {
      return;
    }

    (*(v15 + 16))(v15, a2, &cf);
    if (!cf)
    {
      return;
    }

LABEL_8:
    v10 = sub_100001820(*(a2 + 16), 8, *(a1 + 56));
    v11 = sub_100001DC8(a2, v10);
    if (v11)
    {
      *(*(*(a1 + 40) + 8) + 24) = sub_100002090(cf, v10, v11, (*(*(a1 + 48) + 8) + 24));
      v12 = *(*(a1 + 40) + 8);
      v13 = *(v12 + 24);
      if ((v4 & 1) != 0 || !*(v12 + 24))
      {
        if (!*(v12 + 24))
        {
          goto LABEL_12;
        }
      }

      else
      {
        *(*(*(a1 + 40) + 8) + 24) = sub_1000053C4(cf, a2, *(a1 + 56));
        v12 = *(*(a1 + 40) + 8);
        if ((*(v12 + 24) & 1) == 0)
        {
LABEL_12:
          v14 = 0;
          goto LABEL_21;
        }
      }

      v14 = sub_100005434(a2, cf, *(a1 + 72), (*(*(a1 + 48) + 8) + 24), &stru_1000593D0);
    }

    else
    {
      v14 = SecError(-26276, (*(*(a1 + 48) + 8) + 24), @"no rowid for %@", a2);
    }

    v12 = *(*(a1 + 40) + 8);
LABEL_21:
    *(v12 + 24) = v14;
    CFRelease(cf);
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      v16 = *(*(a1 + 48) + 8);
      v17 = *(v16 + 24);
      if (v17)
      {
        *(v16 + 24) = 0;
        CFRelease(v17);
      }
    }

    return;
  }

  v5 = secLogObjForScope("item");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 64);
    *buf = 138478083;
    v21 = a2;
    v22 = 2113;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "replacing corrupted item %{private}@ with %{private}@", buf, 0x16u);
  }

  v7 = *(a1 + 64);
  cf = v7;
  CFRetain(v7);
  v8 = *(a1 + 56);
  if (v8)
  {
    v9 = *v8;
    if (*v8)
    {
      *v8 = 0;
      CFRelease(v9);
    }
  }

  if (v7)
  {
    goto LABEL_8;
  }
}

uint64_t sub_100004D30(__CFString *a1, _BYTE *a2, CFErrorRef *a3)
{
  cf = 0;
  v6 = sub_100001820(a1->data, 7, &cf);
  v7 = sub_100001BA0(a1, v6, &cf);
  v8 = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  if (!cf && (sub_100001CF0(a1, 1, &cf) & 1) != 0 || SecErrorGetOSStatus() != -26275)
  {
    v14 = 0;
    goto LABEL_23;
  }

  v9 = sub_100001820(a1->data, 15, &cf);
  v10 = sub_100001BA0(a1, v9, &cf);
  if (!v10)
  {
    goto LABEL_17;
  }

  v11 = CFGetTypeID(v10);
  if (v11 != CFDataGetTypeID())
  {
    goto LABEL_17;
  }

  CFGetAllocator(a1);
  if (!SecAccessControlCreateFromData())
  {
    goto LABEL_17;
  }

  Protection = SecAccessControlGetProtection();
  if (!Protection || !kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly)
  {
    if (Protection == kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly)
    {
      goto LABEL_12;
    }

LABEL_17:
    v15 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412547;
      v52 = cf;
      v53 = 2113;
      v54 = a1;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "error %@ reading item %{private}@ (corrupted)", buf, 0x16u);
    }

    __security_simulatecrash(@"Corrupted item found in keychain", 1405091842);
    v14 = 0;
    goto LABEL_20;
  }

  if (!CFEqual(Protection, kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly))
  {
    goto LABEL_17;
  }

LABEL_12:
  v13 = secLogObjForScope("SecWarning");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478083;
    v52 = a1;
    v53 = 2112;
    v54 = cf;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "cannot decrypt item %{private}@, item is irrecoverably lost with older passcode (error %@)", buf, 0x16u);
  }

  v14 = 1;
LABEL_20:
  v16 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v16);
  }

  *a2 = 1;
LABEL_23:
  v17 = sub_100001EC8(a1, v6);
  v18 = v17;
  if (v8 && v17 && !CFEqual(v8, v17))
  {
    v48 = v14;
    v49 = a2;
    Length = CFDataGetLength(v8);
    Mutable = CFStringCreateMutable(kCFAllocatorDefault, 2 * Length);
    BytePtr = CFDataGetBytePtr(v8);
    v22 = CFDataGetLength(v8);
    if (v22 >= 1)
    {
      v23 = v22;
      do
      {
        v24 = *BytePtr++;
        CFStringAppendFormat(Mutable, 0, @"%02X", v24);
        --v23;
      }

      while (v23);
    }

    v25 = CFDataGetLength(v18);
    v26 = CFStringCreateMutable(kCFAllocatorDefault, 2 * v25);
    v27 = CFDataGetBytePtr(v18);
    v28 = CFDataGetLength(v18);
    if (v28 >= 1)
    {
      v29 = v28;
      do
      {
        v30 = *v27++;
        CFStringAppendFormat(v26, 0, @"%02X", v30);
        --v29;
      }

      while (v29);
    }

    v31 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *v6;
      *buf = 138413059;
      v52 = v32;
      v53 = 2112;
      v54 = Mutable;
      v55 = 2112;
      v56 = v26;
      v57 = 2113;
      v58 = a1;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "error %@ %@ != %@ item %{private}@ (corrupted)", buf, 0x2Au);
    }

    v14 = v48;
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    a2 = v49;
    if (v26)
    {
      CFRelease(v26);
    }

    *v49 = 1;
  }

  if (!cf)
  {
    data = a1->data;
    v37 = *(data + 2);
    if (v37)
    {
      v38 = (data + 24);
      do
      {
        if ((*(v37 + 16) & 0x2080) != 0)
        {
          v39 = sub_100001BA0(a1, v37, &cf);
          if (!v39)
          {
            if (SecErrorGetOSStatus() == -26275)
            {
              if (v14)
              {
                v41 = secLogObjForScope("SecWarning");
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
                  v42 = *v37;
                  *buf = 138412803;
                  v52 = v42;
                  v53 = 2112;
                  v54 = cf;
                  v55 = 2113;
                  v56 = a1;
                  _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "attribute %@: %@ item %{private}@ (item lost with older passcode)", buf, 0x20u);
                }
              }

              else
              {
                v45 = secLogObjForScope("SecError");
                if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                {
                  v46 = *v37;
                  *buf = 138412803;
                  v52 = v46;
                  v53 = 2112;
                  v54 = cf;
                  v55 = 2113;
                  v56 = a1;
                  _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "error attribute %@: %@ item %{private}@ (corrupted)", buf, 0x20u);
                }

                __security_simulatecrash(@"Corrupted item found in keychain", 1405091842);
              }

              *a2 = 1;
              v47 = cf;
              if (cf)
              {
                cf = 0;
                CFRelease(v47);
              }
            }

            break;
          }

          if (CFEqual(kCFNull, v39) && (*(v37 + 17) & 0x10) != 0)
          {
            v43 = secLogObjForScope("SecError");
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              v44 = *v37;
              *buf = 138412547;
              v52 = v44;
              v53 = 2113;
              v54 = a1;
              _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "error attribute %@ has NULL value in item %{private}@ (corrupted)", buf, 0x16u);
            }

            __security_simulatecrash(@"Corrupted item (attr NULL) found in keychain", 1405091842);
            *a2 = 1;
            break;
          }
        }

        v40 = *v38++;
        v37 = v40;
      }

      while (v40);
    }
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  v33 = cf;
  if (a3 && cf)
  {
    if (*a3)
    {
      if (CFErrorGetCode(*a3) != -25330)
      {
        goto LABEL_52;
      }

      v34 = *a3;
      if (*a3)
      {
        *a3 = 0;
        CFRelease(v34);
LABEL_52:
        if (*a3)
        {
          goto LABEL_53;
        }
      }
    }

    result = 0;
    *a3 = v33;
    return result;
  }

  if (cf)
  {
    if (!a3)
    {
LABEL_53:
      CFRelease(v33);
      return 0;
    }

    goto LABEL_52;
  }

  return 1;
}

void *sub_1000053C4(void **a1, const void *a2, __CFString **a3)
{
  result = sub_100001820(a1[2], 6, a3);
  if (result)
  {

    return sub_1000075E8(a1, a2, result, a3);
  }

  return result;
}

uint64_t sub_100005434(__CFString ***a1, CFStringRef **a2, uint64_t a3, CFTypeRef *a4, uint64_t a5)
{
  v10 = sub_100002408(a1, kSecAttrPersistentReference);
  if (!v10 || CFDataGetLength(v10) != 16)
  {
    v11 = CFUUIDCreate(kCFAllocatorDefault);
    bytes = CFUUIDGetUUIDBytes(v11);
    v12 = CFDataCreate(kCFAllocatorDefault, &bytes.byte0, 16);
    *cf = 0;
    sub_100003DD8(a2, v12, cf);
    if (v11)
    {
      CFRelease(v11);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    v13 = *cf;
    if (*cf)
    {
      *cf = 0;
      CFRelease(v13);
    }
  }

  v14 = CFGetAllocator(a2);
  Mutable = CFStringCreateMutable(v14, 0);
  CFStringAppend(Mutable, @"UPDATE ");
  CFStringAppend(Mutable, *a2[2]);
  CFStringAppend(Mutable, @" SET ");
  v16 = a2[2];
  v17 = v16[2];
  if (v17)
  {
    v18 = 0;
    v19 = v16 + 3;
    do
    {
      if ((v17->data & 2) != 0)
      {
        isa = v17->isa;
        if (v18)
        {
          CFStringAppend(Mutable, @",");
        }

        CFStringAppend(Mutable, isa);
        CFStringAppend(Mutable, @"=?");
        v18 = 1;
      }

      v21 = *v19++;
      v17 = v21;
    }

    while (v21);
  }

  bytes.byte0 = 1;
  v22 = a1[2];
  v23 = v22[2];
  if (v23)
  {
    v24 = (v22 + 3);
    do
    {
      if ((*(a5 + 16))(a5, v23))
      {
        sub_100003AC4(Mutable, *v23, &bytes);
      }

      v25 = *v24++;
      v23 = v25;
    }

    while (v25);
  }

  *&bytes.byte0 = 0;
  *&bytes.byte8 = &bytes;
  v33 = 0x2000000000;
  v34 = Mutable != 0;
  if (!Mutable)
  {
    goto LABEL_29;
  }

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 0x40000000;
  v31[2] = sub_100005DB0;
  v31[3] = &unk_100059440;
  v31[6] = a1;
  v31[7] = a2;
  v31[4] = a5;
  v31[5] = &bytes;
  v31[8] = a4;
  v31[9] = a3;
  v26 = SecDbPrepare(a3, Mutable, a4, v31);
  *(*&bytes.byte8 + 24) &= v26;
  CFRelease(Mutable);
  if (*(*&bytes.byte8 + 24))
  {
    if ((sub_10000396C(a1) & 1) == 0)
    {
      v27 = secLogObjForScope("item");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *cf = 138478083;
        *&cf[4] = a1;
        v36 = 2112;
        v37 = a3;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "replaced %{private}@ in %@", cf, 0x16u);
      }

      v28 = secLogObjForScope("item");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *cf = 138478083;
        *&cf[4] = a2;
        v36 = 2112;
        v37 = a3;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "    with %{private}@ in %@", cf, 0x16u);
      }
    }

    SecDbRecordChange(a3, a1, a2);
    v29 = *(*&bytes.byte8 + 24);
  }

  else
  {
LABEL_29:
    v29 = 0;
  }

  _Block_object_dispose(&bytes, 8);
  return v29 & 1;
}

uint64_t sub_1000057E0(uint64_t a1, uint64_t a2, char a3, char a4, __CFString **a5)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_100005858;
  v6[3] = &unk_100059418;
  v6[4] = a1;
  v7 = a3;
  v8 = a4;
  return sub_100004694(a1, a2, a5, v6);
}

void sub_100005858(uint64_t a1, void **a2, uint64_t *a3)
{
  if (sub_10000418C(a2))
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      CFRetain(v6);
      v7 = *(a1 + 32);
    }

    else
    {
      v7 = 0;
    }

    *a3 = v7;
    if ((*(a1 + 40) & 1) == 0)
    {
      v17 = *(*(a1 + 32) + 16);
      v18 = *(v17 + 16);
      if (v18)
      {
        v19 = (v17 + 24);
        do
        {
          if (CFEqual(*v18, @"UUID") || SecKeychainIsStaticPersistentRefsEnabled() && CFEqual(*v18, @"persistref"))
          {
            sub_1000030F0(*(a1 + 32), a2, v18);
          }

          v20 = *v19++;
          v18 = v20;
        }

        while (v20);
      }
    }

    return;
  }

  if (!SecKeychainIsStaticPersistentRefsEnabled() || !a3 || (*(a1 + 41) & 1) == 0 || *a3)
  {
    return;
  }

  v50 = 0;
  *cf = 0;
  v8 = *(a1 + 32);
  v9 = sub_100009044(v8[2], kSecAttrModificationDate, &v50);
  v10 = sub_100001BA0(v8, v9, cf);
  v11 = sub_100001BA0(a2, v9, cf);
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    if (SecErrorGetOSStatus() == -26275)
    {
      if (v10)
      {
        v14 = v8;
      }

      else
      {
        v14 = 0;
      }

      v15 = v12 == 0;
      goto LABEL_18;
    }

LABEL_56:
    v16 = 0;
    goto LABEL_57;
  }

  v21 = CFDateCompare(v10, v11, 0);
  v16 = a2;
  if (v21 == kCFCompareLessThan)
  {
    goto LABEL_57;
  }

  if (v21)
  {
    if (v21 == kCFCompareGreaterThan)
    {
      v16 = v8;
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  v22 = sub_100001820(v8[2], 7, cf);
  v23 = sub_100001BA0(v8, v22, cf);
  v24 = sub_100001820(a2[2], 7, cf);
  v25 = sub_100001BA0(a2, v24, cf);
  v26 = v25;
  if (!v23 || !v25)
  {
    if (SecErrorGetOSStatus() == -26275)
    {
      if (v23)
      {
        v14 = v8;
      }

      else
      {
        v14 = 0;
      }

      v15 = v26 == 0;
LABEL_18:
      if (v15)
      {
        v16 = v14;
      }

      else
      {
        v16 = a2;
      }

      goto LABEL_57;
    }

    goto LABEL_56;
  }

  Length = CFDataGetLength(v23);
  v28 = CFDataGetLength(v26);
  v29 = v28;
  if ((Length & 0x8000000000000000) != 0 || v28 < 0)
  {
    v16 = a2;
    if (Length > v28)
    {
      goto LABEL_57;
    }

    v16 = v8;
    if (Length < v28)
    {
      goto LABEL_57;
    }

LABEL_95:
    v16 = a2;
    goto LABEL_57;
  }

  if (Length >= v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = Length;
  }

  BytePtr = CFDataGetBytePtr(v23);
  v32 = CFDataGetBytePtr(v26);
  v33 = memcmp(BytePtr, v32, v30);
  v16 = a2;
  if (v33 <= 0)
  {
    if (v33 || (v16 = a2, Length <= v29))
    {
      v34 = Length >= v29 && v33 == 0;
      v16 = v8;
      if (v34)
      {
        goto LABEL_95;
      }
    }
  }

LABEL_57:
  v35 = *cf;
  if (!*cf)
  {
    goto LABEL_61;
  }

  if (v16 | v50)
  {
    *cf = 0;
    CFRelease(v35);
LABEL_61:
    if (!v16)
    {
      goto LABEL_73;
    }

    v36 = *(v16 + 16);
    v37 = *(v36 + 16);
    if (v37)
    {
      v38 = (v36 + 24);
      do
      {
        if (SecKeychainIsStaticPersistentRefsEnabled())
        {
          v39 = *v37;
          if (!@"persistref" || !v39)
          {
            if (v39 != @"persistref")
            {
              goto LABEL_69;
            }

LABEL_68:
            sub_1000030F0(v16, v8, v37);
            goto LABEL_69;
          }

          if (CFEqual(v39, @"persistref"))
          {
            goto LABEL_68;
          }
        }

LABEL_69:
        v40 = *v38++;
        v37 = v40;
      }

      while (v40);
    }

    CFRetain(v16);
    CFRetain(v16);
    *a3 = v16;
    if (a2 && CFEqual(v16, a2))
    {
      v44 = secLogObjForScope("insert");
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *cf = 138477827;
        *&cf[4] = a2;
        v45 = "Conflict resolver chose my (local) item: %{private}@";
LABEL_90:
        v49 = v44;
        goto LABEL_91;
      }
    }

    else
    {
      v46 = *(a1 + 32);
      if (v46 && CFEqual(v16, v46))
      {
        v47 = secLogObjForScope("insert");
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = *(a1 + 32);
          *cf = 138477827;
          *&cf[4] = v48;
          v45 = "Conflict resolver chose item from the backup: %{private}@";
          v49 = v47;
LABEL_91:
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, v45, cf, 0xCu);
        }
      }

      else
      {
        v44 = secLogObjForScope("insert");
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *cf = 138477827;
          *&cf[4] = v16;
          v45 = "Conflict resolver created a new item; return it to our caller: %{private}@";
          goto LABEL_90;
        }
      }
    }

    CFRelease(v16);
    return;
  }

  v50 = *cf;
LABEL_73:
  v41 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *cf = 138412290;
    *&cf[4] = v50;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "insert: failed to created a merged item: %@", cf, 0xCu);
  }

  v42 = secLogObjForScope("insert");
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *cf = 0;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "failed to create a merged item so we will choose the item from the backup", cf, 2u);
  }

  v43 = *(a1 + 32);
  if (v43)
  {
    CFRetain(v43);
  }

  *a3 = v43;
}

__CFData *sub_100005DB0(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 32);
  v8 = *(v5 + 16);
  v9 = *(v8 + 16);
  if (v9)
  {
    LODWORD(v10) = 0;
    v11 = (v8 + 24);
    while (1)
    {
      if ((v9[16] & 2) != 0)
      {
        v13 = sub_10003DF1C(v5, v9, v6);
        if (!v13)
        {
          goto LABEL_11;
        }

        v10 = (v10 + 1);
        v14 = SecDbBindObject(a2, v10, v13, v6);
        CFRelease(v13);
        if (!v14)
        {
          break;
        }
      }

      v12 = *v11++;
      v9 = v12;
      if (!v12)
      {
        goto LABEL_10;
      }
    }

    LOBYTE(v13) = 0;
  }

  else
  {
    LODWORD(v10) = 0;
LABEL_10:
    LOBYTE(v13) = 1;
  }

LABEL_11:
  v15 = *(v4 + 16);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = (v15 + 24);
    do
    {
      if ((*(v7 + 16))(v7, v16))
      {
        result = sub_10003DF1C(v4, v16, v6);
        if (!result)
        {
          goto LABEL_22;
        }

        v20 = result;
        v10 = (v10 + 1);
        v21 = v13 & SecDbBindObject(a2, v10, result, v6);
        CFRelease(v20);
        if ((v21 & 1) == 0)
        {
          goto LABEL_21;
        }

        LOBYTE(v13) = 1;
      }

      v18 = *v17++;
      v16 = v18;
    }

    while (v18);
  }

  if (v13)
  {
    result = SecDbStep(*(a1 + 72), a2, *(a1 + 64), 0);
  }

  else
  {
LABEL_21:
    result = 0;
  }

LABEL_22:
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100005F18(CFStringRef **a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  v8 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v8, 0);
  CFStringAppend(Mutable, @"DELETE FROM ");
  CFStringAppend(Mutable, *a1[2]);
  LOBYTE(v18) = 1;
  v10 = a1[2];
  v11 = v10[2];
  if (v11)
  {
    v12 = (v10 + 3);
    do
    {
      if ((*(a4 + 16))(a4, v11))
      {
        sub_100003AC4(Mutable, *v11, &v18);
      }

      v13 = *v12++;
      v11 = v13;
    }

    while (v13);
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = Mutable != 0;
  if (Mutable)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 0x40000000;
    v17[2] = sub_1000076BC;
    v17[3] = &unk_100059770;
    v17[6] = a1;
    v17[7] = a3;
    v17[4] = a4;
    v17[5] = &v18;
    v17[8] = a2;
    v14 = SecDbPrepare(a2, Mutable, a3, v17);
    *(v19 + 24) &= v14;
    CFRelease(Mutable);
    v15 = *(v19 + 24);
  }

  else
  {
    v15 = 0;
  }

  _Block_object_dispose(&v18, 8);
  return v15 & 1;
}

uint64_t sub_100006098(CFStringRef **a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  v6 = sub_100005F18(a1, a2, a3, a4);
  if (v6)
  {
    v7 = secLogObjForScope("item");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138478083;
      v10 = a1;
      v11 = 2112;
      v12 = a2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "deleted %{private}@ from %@", &v9, 0x16u);
    }

    SecDbRecordChange(a2, a1, 0);
  }

  return v6;
}

uint64_t sub_100006174(void **a1, void **a2, uint64_t a3, CFBooleanRef a4, int a5, __CFString **a6)
{
  v41 = 0;
  v42 = &v41;
  v43 = 0x2000000000;
  v44 = 1;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2000000000;
  v40 = 0;
  v11 = sub_100001820(a1[2], 10, a6);
  v12 = sub_100001BA0(a1, v11, a6);
  v13 = sub_100001820(a2[2], 10, a6);
  v14 = sub_100001BA0(a2, v13, a6);
  if (v12)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = !v15;
  *(v42 + 24) = v16;
  if (v15 || !CFEqual(v12, v14))
  {
    v18 = 1;
    if (a4 && kCFBooleanFalse)
    {
      CFEqual(a4, kCFBooleanFalse);
    }
  }

  else
  {
    v17 = sub_1000053C4(a2, a1, a6);
    v18 = 0;
    *(v42 + 24) = v17;
  }

  v19 = v42;
  if (*(v42 + 24) == 1)
  {
    v20 = sub_100005434(a1, a2, a3, v38 + 3, &stru_100059480);
    v19 = v42;
  }

  else
  {
    v20 = 0;
  }

  *(v19 + 24) = v20;
  v21 = v38[3];
  if (v21)
  {
    if (CFErrorGetCode(v21) == 19)
    {
      v22 = kSecDbErrorDomain;
      Domain = CFErrorGetDomain(v38[3]);
      if (CFEqual(v22, Domain))
      {
        v24 = sub_1000048CC(a2, a6);
        *(v42 + 24) = v24 != 0;
        if (v24)
        {
          v25 = v24;
          v36[0] = _NSConcreteStackBlock;
          v36[1] = 0x40000000;
          v36[2] = sub_100006528;
          v36[3] = &unk_100059568;
          v36[6] = a6;
          v36[7] = a2;
          v36[8] = a1;
          v36[9] = a3;
          v36[4] = &v41;
          v36[5] = &v37;
          v26 = sub_100004958(v24, a3, a6, 0, &stru_1000594C0, 0, 0, v36);
          *(v42 + 24) &= v26;
          v27 = sub_100029F58(v25, a6);
          *(v42 + 24) &= v27;
        }
      }
    }

    v28 = v38;
    v29 = v38[3];
    v19 = v42;
    if (v29)
    {
      *(v42 + 24) = 0;
      if (a6 && !*a6)
      {
        *a6 = v29;
        v28[3] = 0;
      }

      else
      {
        CFRelease(v29);
        v19 = v42;
      }
    }
  }

  if ((v18 & v19[3]) == 1)
  {
    if (a4 && kCFBooleanFalse)
    {
      if (CFEqual(a4, kCFBooleanFalse))
      {
        goto LABEL_38;
      }
    }

    else if (kCFBooleanFalse == a4)
    {
      goto LABEL_38;
    }

    v30 = sub_100006688(a1, a4, 0, a6);
    *(v42 + 24) = v30 != 0;
    if (v30)
    {
      v31 = v30;
      v32 = CFUUIDCreate(kCFAllocatorDefault);
      v33 = sub_100003054(v31, kSecAttrPersistentReference, v32, a6);
      if (v33)
      {
        sub_100003F9C(v31, a6);
        LOBYTE(v33) = sub_1000041E8(v31, a3, a6);
      }

      *(v42 + 24) = v33;
      if (v32)
      {
        CFRelease(v32);
      }

      CFRelease(v31);
    }
  }

LABEL_38:
  v34 = *(v42 + 24);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
  return v34;
}

void sub_100006528(uint64_t a1, __CFString *a2)
{
  v10 = 0;
  *(*(*(a1 + 32) + 8) + 24) = sub_100004D30(a2, &v10, *(a1 + 48));
  v4 = *(*(*(a1 + 32) + 8) + 24);
  v5 = v4 | v10;
  if (v4 == 1 && (v10 & 1) == 0)
  {
    if (!sub_10000418C(a2))
    {
      return;
    }

    *(*(*(a1 + 32) + 8) + 24) = sub_1000053C4(*(a1 + 56), a2, *(a1 + 48));
    v5 = 1;
  }

  if (*(*(*(a1 + 32) + 8) + 24) == 1 && (v5 & 1) != 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = sub_100006098(*(a1 + 64), *(a1 + 72), *(a1 + 48), &stru_100059500);
    v6 = *(*(a1 + 32) + 8);
    if (*(v6 + 24) == 1)
    {
      v7 = sub_100005434(a2, *(a1 + 56), *(a1 + 72), *(a1 + 48), &stru_100059540);
      v6 = *(*(a1 + 32) + 8);
    }

    else
    {
      v7 = 0;
    }

    *(v6 + 24) = v7;
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 24);
    if (v9)
    {
      *(v8 + 24) = 0;

      CFRelease(v9);
    }
  }
}

const void *sub_100006688(uint64_t a1, const __CFData *a2, int a3, __CFString **a4)
{
  v8 = CFGetAllocator(a1);
  v9 = sub_1000033DC(v8, *(a1 + 16), *(a1 + 28), *(a1 + 32));
  v10 = *(a1 + 16);
  v11 = *(v10 + 16);
  if (!v11)
  {
    return v9;
  }

  for (i = (v10 + 24); ; ++i)
  {
    v13 = *(v11 + 8);
    if (v13 == 12)
    {
      v14 = v9;
      v15 = v11;
      v16 = kCFBooleanTrue;
LABEL_13:
      if ((sub_100002090(v14, v15, v16, a4) & 1) == 0)
      {
        break;
      }

      goto LABEL_14;
    }

    v17 = *(v11 + 16);
    if ((v17 & 1) != 0 || (v13 <= 0xE ? (v18 = ((1 << v13) & 0x4120) == 0) : (v18 = 1), !v18 || (v17 & 0x2000) != 0))
    {
      v19 = sub_100001BA0(a1, v11, a4);
      if (!v19)
      {
        break;
      }

      v20 = v19;
      if (CFEqual(kCFNull, v19))
      {
        goto LABEL_14;
      }

      v14 = v9;
      v15 = v11;
      v16 = v20;
      goto LABEL_13;
    }

    if (v13 != 6)
    {
      if (a2 && v13 == 13)
      {
        sub_100002090(v9, v11, a2, a4);
      }

      goto LABEL_14;
    }

    if (a3)
    {
      sub_1000030F0(v9, a1, v11);
    }

    if ((sub_1000075E8(v9, a1, v11, a4) & 1) == 0)
    {
      break;
    }

LABEL_14:
    v21 = *i;
    v11 = v21;
    if (!v21)
    {
      return v9;
    }
  }

  if (v9)
  {
    CFRelease(v9);
    return 0;
  }

  return v9;
}

CFStringRef **sub_10000682C(CFStringRef **a1, uint64_t a2, CFBooleanRef cf1, int a4, CFTypeRef *a5)
{
  if (cf1 && kCFBooleanFalse)
  {
    if (CFEqual(cf1, kCFBooleanFalse))
    {
LABEL_4:

      return sub_100006098(a1, a2, a5, &stru_1000595E8);
    }
  }

  else if (kCFBooleanFalse == cf1)
  {
    goto LABEL_4;
  }

  result = sub_100006688(a1, cf1, a4, a5);
  if (result)
  {
    v11 = result;
    v12 = sub_100005434(a1, result, a2, a5, &stru_1000595A8);
    CFRelease(v11);
    return v12;
  }

  return result;
}

__CFString *sub_100006934(CFDictionaryRef *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  CFStringAppend(Mutable, @"SELECT ");
  v8 = *(*a1 + 2);
  if (v8)
  {
    v9 = 0;
    v10 = (*a1 + 24);
    do
    {
      if ((*(a2 + 16))(a2, v8))
      {
        v11 = *v8;
        if (v9)
        {
          CFStringAppend(Mutable, @",");
        }

        CFStringAppend(Mutable, v11);
        v9 = 1;
      }

      v12 = *v10++;
      v8 = v12;
    }

    while (v12);
  }

  else
  {
    v9 = 0;
  }

  if ((SecKeychainIsStaticPersistentRefsEnabled() & 1) != 0 && (a1[6] & 8) != 0)
  {
    if (v9)
    {
      CFStringAppend(Mutable, @",");
    }

    CFStringAppend(Mutable, @"persistref");
  }

  CFStringAppend(Mutable, @" FROM ");
  CFStringAppend(Mutable, **a1);
  v25 = 1;
  v13 = *(*a1 + 2);
  if (v13)
  {
    v14 = (*a1 + 24);
    do
    {
      if ((*(a3 + 16))(a3, v13))
      {
        Value = CFDictionaryGetValue(a1[1], *v13);
        if (Value && (v16 = Value, v17 = CFGetTypeID(Value), v17 == CFArrayGetTypeID()))
        {
          Count = CFArrayGetCount(v16);
          v19 = Count - 1;
          if (Count >= 1)
          {
            v20 = Count;
            ValueAtIndex = CFArrayGetValueAtIndex(v16, 0);
            if (ValueAtIndex && kCFNull)
            {
              if (!CFEqual(ValueAtIndex, kCFNull))
              {
                goto LABEL_29;
              }
            }

            else if (ValueAtIndex != kCFNull)
            {
LABEL_29:
              sub_100003B6C(Mutable, *v13, &v25, v20);
              goto LABEL_26;
            }

            sub_100003C9C(Mutable, *v13, &v25, v19);
          }
        }

        else
        {
          sub_100003AC4(Mutable, *v13, &v25);
        }
      }

LABEL_26:
      v22 = *v14++;
      v13 = v22;
    }

    while (v22);
  }

  if (a4)
  {
    (*(a4 + 16))();
  }

  return Mutable;
}

uint64_t sub_100006B7C(CFDictionaryRef *a1, sqlite3_stmt *a2, __CFString **a3, uint64_t a4, uint64_t a5)
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 1;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = 0;
  v6 = *(*a1 + 2);
  if (v6)
  {
    v10 = (*a1 + 24);
    do
    {
      if ((*(a4 + 16))(a4, v6))
      {
        Value = CFDictionaryGetValue(a1[1], *v6);
        v12 = Value;
        if (Value && (v13 = CFGetTypeID(Value), v13 == CFArrayGetTypeID()))
        {
          Count = CFArrayGetCount(v12);
          if (Count < 1)
          {
            v19.location = 0;
          }

          else
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v12, 0);
            if (ValueAtIndex && kCFNull)
            {
              v16 = CFEqual(ValueAtIndex, kCFNull) != 0;
            }

            else
            {
              v16 = ValueAtIndex == kCFNull;
            }

            Count -= v16;
            v19.location = v16;
          }

          context[0] = _NSConcreteStackBlock;
          context[1] = 0x40000000;
          context[2] = sub_100006DF4;
          context[3] = &unk_100059610;
          context[6] = a1;
          context[7] = a2;
          context[4] = &v29;
          context[5] = &v25;
          context[8] = v6;
          context[9] = a3;
          v19.length = Count;
          CFArrayApplyFunction(v12, v19, sub_100006DDC, context);
          if ((v30[3] & 1) == 0)
          {
            break;
          }
        }

        else
        {
          v17 = *(v26 + 6);
          *(v26 + 6) = v17 + 1;
          v18 = sub_100006E48(a1, a2, v17, v6, v12, a3);
          *(v30 + 24) = v18;
          if ((v18 & 1) == 0)
          {
            break;
          }
        }
      }

      v20 = *v10++;
      v6 = v20;
    }

    while (v20);
  }

  if (a5)
  {
    ++*(v26 + 6);
    (*(a5 + 16))(a5, a2);
  }

  v21 = *(v30 + 24);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  return v21;
}

uint64_t sub_100006DF4(uint64_t a1, const __CFNull *a2)
{
  v3 = *(a1 + 48);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 24);
  *(v4 + 24) = v5 + 1;
  result = sub_100006E48(v3, *(a1 + 56), v5, *(a1 + 64), a2, *(a1 + 72));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_100006E48(uint64_t a1, sqlite3_stmt *a2, int a3, uint64_t a4, const __CFNull *a5, __CFString **a6)
{
  if (*(a4 + 8) == 8)
  {
    v9 = CFNumberCreate(0, kCFNumberSInt64Type, (a1 + 72));
  }

  else
  {
    v9 = sub_10003DFE0(a4, a5, a6);
  }

  v10 = v9;
  if (!v9)
  {
    return 0;
  }

  v11 = SecDbBindObject(a2, (a3 + 1), v9, a6);
  CFRelease(v10);
  return v11;
}

BOOL sub_100006EDC(id a1, const SecDbAttr *a2)
{
  if ((a2->var1 - 7) >= 3)
  {
    IsStaticPersistentRefsEnabled = SecKeychainIsStaticPersistentRefsEnabled();
    if (IsStaticPersistentRefsEnabled)
    {
      LOBYTE(IsStaticPersistentRefsEnabled) = a2->var1 == 16;
    }
  }

  else
  {
    LOBYTE(IsStaticPersistentRefsEnabled) = 1;
  }

  return IsStaticPersistentRefsEnabled;
}

uint64_t sub_100006F34(uint64_t a1, sqlite3_stmt *a2)
{
  result = sub_100006B7C(*(a1 + 72), a2, *(a1 + 80), *(a1 + 32), *(a1 + 40));
  if (result)
  {
    v6 = *(a1 + 80);
    v5 = *(a1 + 88);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 0x40000000;
    v7[2] = sub_100006FE8;
    v7[3] = &unk_1000596B8;
    v9 = *(a1 + 72);
    v10 = a2;
    v11 = v6;
    v8 = *(a1 + 48);
    result = SecDbStep(v5, a2, v6, v7);
  }

  *(*(*(a1 + 64) + 8) + 24) = result;
  return result;
}

void sub_100006FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_100003694(kCFAllocatorDefault, **(a1 + 48), *(a1 + 56), *(*(a1 + 48) + 120), a5, *(a1 + 32));
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 48);
    v9 = *(v8 + 144);
    v10 = *(v6 + 56);
    if (v10 != v9)
    {
      if (!v9 || (CFRetain(*(v8 + 144)), (v10 = v7[7]) != 0))
      {
        CFRelease(v10);
      }

      v7[7] = v9;
    }

    (*(*(a1 + 40) + 16))();

    CFRelease(v7);
  }
}

void sub_1000070A8(const void *a1, CFStringRef *a2, __CFString *a3)
{
  if (!CFEqual(@"data", *a2) && !CFEqual(@"v_pk", *a2))
  {
    v6 = sub_100001BA0(a1, a2, 0);
    if (v6)
    {
      v7 = v6;
      if (v6 != kCFNull)
      {
        CFStringAppend(a3, @",");
        CFStringAppend(a3, *a2);
        CFStringAppend(a3, @"=");
        if (CFEqual(@"data", *a2))
        {
          BytePtr = CFDataGetBytePtr(v7);
          Length = CFDataGetLength(v7);
          if ((Length & 0x8000000000000000) == 0)
          {
            v10 = Length;
            CFStringAppendFormat(a3, 0, @"%04lx:", Length);
            if (v10 > 8)
            {
              CNCRC();
              for (i = 0; i != 8; ++i)
              {
                CFStringAppendFormat(a3, 0, @"%02X", BytePtr[i]);
              }

              CFStringAppendFormat(a3, 0, @"...|%08llx", 0);
            }

            else
            {
              for (; v10; --v10)
              {
                v11 = *BytePtr++;
                CFStringAppendFormat(a3, 0, @"%02X", v11);
              }
            }
          }
        }

        else if (CFEqual(@"v_Data", *a2))
        {

          CFStringAppend(a3, @"<?>");
        }

        else
        {
          v13 = CFGetTypeID(v7);
          if (v13 == CFDataGetTypeID())
          {

            sub_1000072DC(a3, v7);
          }

          else
          {
            CFStringAppendFormat(a3, 0, @"%@", v7);
          }
        }
      }
    }
  }
}

void sub_1000072DC(__CFString *a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  if (Length >= 1)
  {
    v6 = Length;
    do
    {
      v7 = *BytePtr++;
      CFStringAppendFormat(a1, 0, @"%02X", v7);
      --v6;
    }

    while (v6);
  }
}

void sub_1000073A8(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = CFDictionaryGetValue(qword_1000736C0, **(a1 + 40));
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = CFStringCreateWithFormat(0, 0, @"#%@", **(a1 + 40));
    CFDictionarySetValue(qword_1000736C0, **(a1 + 40), *(*(*(a1 + 32) + 8) + 24));
    v2 = *(*(*(a1 + 32) + 8) + 24);

    CFRelease(v2);
  }
}

CFNumberRef sub_100007470(const __CFAllocator *a1, sqlite3_stmt *a2, int iCol)
{
  v4 = sqlite3_column_int64(a2, iCol);
  valuePtr = v4;
  if (v4 == v4)
  {
    v9 = v4;
    p_valuePtr = &v9;
    v6 = a1;
    v7 = kCFNumberSInt32Type;
  }

  else
  {
    p_valuePtr = &valuePtr;
    v6 = a1;
    v7 = kCFNumberSInt64Type;
  }

  return CFNumberCreate(v6, v7, p_valuePtr);
}

CFStringRef sub_1000074D4(const __CFAllocator *a1, sqlite3_stmt *a2, int iCol, __int16 a4)
{
  v6 = sqlite3_column_text(a2, iCol);
  if (v6 && (v7 = v6, (v8 = strlen(v6)) != 0))
  {

    return CFStringCreateWithBytes(a1, v7, v8, 0x8000100u, 0);
  }

  else if ((a4 & 0x800) != 0)
  {
    return &stru_1000643F8;
  }

  else if ((a4 & 0x400) != 0)
  {
    return @"0";
  }

  else
  {
    return kCFNull;
  }
}

CFDataRef sub_100007580(const __CFAllocator *a1, sqlite3_stmt *a2, int iCol)
{
  v6 = sqlite3_column_blob(a2, iCol);
  v7 = sqlite3_column_bytes(a2, iCol);

  return CFDataCreate(a1, v6, v7);
}

uint64_t sub_1000075E8(const void *a1, const void *a2, void *a3, __CFString **a4)
{
  result = sub_100001BA0(a2, a3, a4);
  if (result)
  {
    v8 = result;
    result = sub_100001BA0(a1, a3, a4);
    if (result)
    {
      result = CFDateCompare(result, v8, 0);
      if (result != 1)
      {
        AbsoluteTime = CFDateGetAbsoluteTime(v8);
        v10 = CFDateCreate(kCFAllocatorDefault, AbsoluteTime + 0.001);
        if (v10)
        {
          v11 = v10;
          v12 = sub_100002090(a1, a3, v10, a4);
          CFRelease(v11);
          return v12;
        }

        else
        {
          return 1;
        }
      }
    }
  }

  return result;
}

__CFData *sub_1000076BC(void *a1, sqlite3_stmt *pStmt)
{
  v5 = a1[6];
  v4 = a1[7];
  v6 = *(v5 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    LODWORD(v8) = 0;
    v9 = a1[4];
    v10 = (v6 + 24);
    while (1)
    {
      if ((*(v9 + 16))(v9, v7))
      {
        result = sub_10003DF1C(v5, v7, v4);
        if (!result)
        {
          goto LABEL_10;
        }

        v13 = result;
        v8 = (v8 + 1);
        v14 = SecDbBindObject(pStmt, v8, result, v4);
        CFRelease(v13);
        if (!v14)
        {
          break;
        }
      }

      v11 = *v10++;
      v7 = v11;
      if (!v11)
      {
        v4 = a1[7];
        goto LABEL_9;
      }
    }

    result = 0;
  }

  else
  {
LABEL_9:
    result = SecDbStep(a1[8], pStmt, v4, 0);
  }

LABEL_10:
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

uint64_t sub_100007A04()
{
  v0 = +[SFKeychainControlManager sharedManager];
  v1 = [v0 xpcControlEndpoint];

  return v1;
}

void sub_100007A8C(id a1)
{
  qword_1000736D0 = [[SFKeychainControlManager alloc] _init];

  _objc_release_x1();
}

void sub_100008200(uint64_t a1, const __CFArray *a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    Count = CFArrayGetCount(a2);
    NSLog(@"scanning %d %@", Count, v4);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    obj = a2;
    v6 = [(__CFArray *)obj countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v15 + 1) + 8 * v9);
          v19[0] = kSecClass;
          v19[1] = kSecValuePersistentRef;
          v20[0] = v4;
          v20[1] = v10;
          v19[2] = kSecReturnAttributes;
          v19[3] = kSecUseDataProtectionKeychain;
          v20[2] = &__kCFBooleanTrue;
          v20[3] = &__kCFBooleanTrue;
          v11 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];
          result = 0;
          if (SecItemCopyMatching(v11, &result) && *(a1 + 40) != -25308)
          {
            [*(a1 + 32) addObject:v11];
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [(__CFArray *)obj countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v7);
    }
  }
}

uint64_t sub_10000887C(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v14 = PBReaderReadString();
        v15 = &OBJC_IVAR___SecDbKeychainSerializedSecretData__tamperCheck;
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadData();
        v15 = &OBJC_IVAR___SecDbKeychainSerializedSecretData__ciphertext;
LABEL_23:
        v16 = *v15;
        v17 = *(a1 + v16);
        *(a1 + v16) = v14;

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v18 = [a2 position];
      if (v18 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadData();
    v15 = &OBJC_IVAR___SecDbKeychainSerializedSecretData__wrappedKey;
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

id sub_100008ECC()
{
  gSecurityd = off_1000730C0;
  qword_100073380 = sub_10002C73C();
  qword_100073378 = sub_100024C48;
  cf = 0;
  if (!sub_10001992C(0, 0, &cf, &stru_100059818) || cf)
  {
    v0 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v5 = cf;
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Couldn't bring up keychain: %@", buf, 0xCu);
    }

    v1 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v1);
    }
  }

  return sub_1000147BC();
}

BOOL sub_100008FD8(id a1, __OpaqueSecDbConnection *a2)
{
  v2 = secLogObjForScope("keychain");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Keychain initialized!", v4, 2u);
  }

  return 1;
}

CFTypeRef *sub_100009044(__CFString **a1, const void *a2, __CFString **a3)
{
  while (1)
  {
    v5 = a1;
    if (sub_10001725C() != a1)
    {
      break;
    }

    v6 = sub_100017224();
    v7 = sub_100009044(v6, a2, 0);
    if (v7)
    {
      return v7;
    }

    a1 = sub_100017240();
  }

  if (!a2)
  {
    goto LABEL_11;
  }

  v8 = CFGetTypeID(a2);
  if (v8 != CFStringGetTypeID())
  {
    goto LABEL_11;
  }

  v9 = v5[2];
  if (!v9)
  {
LABEL_10:
    if (CFEqual(kSecUseDataProtectionKeychain, a2))
    {
      return 0;
    }

LABEL_11:
    SecError(-25303, a3, @"attribute %@ not found in class %@", a2, *v5);
    return 0;
  }

  v10 = (v5 + 3);
  while (!CFEqual(*v9, a2))
  {
    v11 = *v10++;
    v9 = v11;
    if (!v11)
    {
      goto LABEL_10;
    }
  }

  return v9;
}

const void *sub_100009130(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    return (v1 == CFStringGetTypeID());
  }

  return result;
}

uint64_t sub_100009178(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2000000000;
  v8 = 1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_10000921C;
  v6[3] = &unk_100059840;
  v6[4] = a4;
  v6[5] = v7;
  v4 = SecDbTransaction(a1, a2, a3, v6);
  _Block_object_dispose(v7, 8);
  return v4;
}

uint64_t sub_10000921C(uint64_t a1, _BYTE *a2)
{
  result = (*(*(a1 + 32) + 16))();
  *a2 = result;
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100009260(uint64_t a1, unsigned int *a2, const __CFArray *a3, int a4, uint64_t a5)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 1;
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  v11 = Mutable;
  if (a3)
  {
    context[0] = _NSConcreteStackBlock;
    context[1] = 0x40000000;
    context[2] = sub_100009418;
    context[3] = &unk_100059860;
    context[4] = a2;
    context[5] = Mutable;
    v23.length = CFArrayGetCount(a3);
    v23.location = 0;
    CFArrayApplyFunction(a3, v23, sub_10000FFF8, context);
  }

  else
  {
    v12 = *(a2 + 1);
    if (v12)
    {
      v13 = (a2 + 4);
      do
      {
        sub_100009428(v11, v12);
        v14 = *v13++;
        v12 = v14;
      }

      while (v14);
    }
  }

  if (a4)
  {
    CFStringAppendFormat(v11, 0, @"INSERT INTO tversion(version,minor) VALUES(%d, %d);", *a2, a2[1]);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 0x40000000;
  v17[2] = sub_100009670;
  v17[3] = &unk_100059888;
  v17[4] = &v19;
  v17[5] = a1;
  v17[6] = a5;
  CFStringPerformWithCString(v11, v17);
  if (v11)
  {
    CFRelease(v11);
  }

  v15 = *(v20 + 24);
  _Block_object_dispose(&v19, 8);
  return v15;
}

void sub_100009428(__CFString *a1, uint64_t *a2)
{
  CFStringAppendFormat(a1, 0, @"CREATE TABLE %@("), *a2;
  v4 = a2[2];
  if (!v4)
  {
    v20 = 0;
    goto LABEL_26;
  }

  v5 = a2 + 3;
  do
  {
    if ((*(v4 + 16) & 2) == 0)
    {
      goto LABEL_11;
    }

    v6 = *(v4 + 8) - 2;
    v7 = @"BLOB";
    if (v6 <= 0xD)
    {
      v7 = off_100059DF0[v6];
    }

    CFStringAppendFormat(a1, 0, @"%@ %@", *v4, v7);
    v8 = *(v4 + 16);
    if ((v8 & 0x1000) != 0)
    {
      CFStringAppend(a1, @" NOT NULL");
      v8 = *(v4 + 16);
      if ((v8 & 0x400) != 0)
      {
LABEL_14:
        CFStringAppend(a1, @" DEFAULT 0");
        if ((*(v4 + 16) & 0x800) == 0)
        {
          goto LABEL_10;
        }

LABEL_9:
        CFStringAppend(a1, @" DEFAULT ''");
        goto LABEL_10;
      }
    }

    else if ((v8 & 0x400) != 0)
    {
      goto LABEL_14;
    }

    if ((v8 & 0x800) != 0)
    {
      goto LABEL_9;
    }

LABEL_10:
    CFStringAppend(a1, @",");
LABEL_11:
    v9 = *v5++;
    v4 = v9;
  }

  while (v9);
  v10 = a2[2];
  v20 = 0;
  if (v10)
  {
    v11 = a2 + 3;
    do
    {
      if ((~*(v10 + 16) & 3) == 0)
      {
        v12 = *v10;
        if ((v20 & 1) == 0)
        {
          CFStringAppend(a1, @"UNIQUE(");
        }

        sub_100003A00(a1, v12, &v20);
      }

      v13 = *v11++;
      v10 = v13;
    }

    while (v13);
    if (v20)
    {
      CFStringAppend(a1, @""));
    }
  }

LABEL_26:
  CFStringAppend(a1, @";"));
  v14 = a2[2];
  if (v14)
  {
    v15 = 3;
    do
    {
      if ((~*(v14 + 4) & 6) == 0)
      {
        v16 = *(v14 + 2);
        v17 = *a2;
        v18 = *v14;
        if (v16 == 11)
        {
          CFStringAppendFormat(a1, 0, @"CREATE INDEX %@%@0 ON %@(%@) WHERE %@=0;", v17, v18, v17, v18, v18);
        }

        else
        {
          CFStringAppendFormat(a1, 0, @"CREATE INDEX %@%@ ON %@(%@);", v17, v18, *a2, v18, v19);
        }
      }

      v14 = a2[v15++];
    }

    while (v14);
  }
}

BOOL sub_100009670(uint64_t a1, const char *a2)
{
  v4 = SecDbHandle(*(a1 + 40));
  v5 = sqlite3_exec(v4, a2, 0, 0, 0);
  v6 = SecDbHandle(*(a1 + 40));
  result = SecDbErrorWithDb(v5, v6, *(a1 + 48), @"sqlite3_exec: %s", a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

CFDataRef sub_1000096F4(CFTypeRef cf, int a2, __CFString **a3)
{
  if (a2 == 8)
  {

    return sub_100009930(cf, a3);
  }

  else
  {
    v5 = a2;
    if (a2 != 1)
    {
      if (!a2)
      {
        return kCFNull;
      }

      v9 = CFGetAllocator(cf);
      Mutable = CFDictionaryCreateMutable(v9, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if ((v5 & 4) != 0)
      {
        v10 = sub_1000024A8(cf);
        CFDictionarySetValue(Mutable, kSecClass, *v10);
      }

      v11 = sub_1000024A8(cf);
      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = (v11 + 24);
        do
        {
          if ((*(v12 + 16) & ((16 * ((v5 & 6) != 0)) | (32 * ((v5 & 5) != 0)))) != 0)
          {
            v14 = sub_100001BA0(cf, v12, a3);
            if (!v14)
            {
              if (Mutable)
              {
                CFRelease(Mutable);
                Mutable = 0;
              }

              break;
            }

            v15 = v14;
            if (!CFEqual(kCFNull, v14))
            {
              CFDictionarySetValue(Mutable, *v12, v15);
            }
          }

          v16 = *v13++;
          v12 = v16;
        }

        while (v16);
      }

      CFDictionaryRemoveValue(Mutable, kSecAttrUUID);
      if ((v5 & 8) != 0)
      {
        v17 = sub_100009930(cf, a3);
        CFDictionarySetValue(Mutable, kSecValuePersistentRef, v17);
        if (v17)
        {
          CFRelease(v17);
        }
      }

      return Mutable;
    }

    v7 = sub_100002404(cf, kSecValueData);
    if (v7)
    {
      Mutable = v7;
      CFRetain(v7);
      return Mutable;
    }

    return CFDataCreate(kCFAllocatorDefault, 0, 0);
  }
}

uint64_t sub_100009930(uint64_t a1, __CFString **a2)
{
  if (SecKeychainIsStaticPersistentRefsEnabled())
  {
    sub_100003D3C(a1, a2);
    v4 = *sub_1000024A8(a1);
    v5 = *(a1 + 48);

    return _SecItemCreateUUIDBasedPersistentRef();
  }

  else
  {
    result = sub_100003E50(a1, a2);
    if (result)
    {
      v7 = result;
      if (SecKeychainIsStaticPersistentRefsEnabled())
      {
        v8 = secLogObjForScope("pref");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 134217984;
          v12 = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SecPersistentRefCreateWithItem: Creating old persistent ref for %llu", &v11, 0xCu);
        }
      }

      v9 = *sub_1000024A8(a1);
      v10 = *(a1 + 48);
      return _SecItemCreatePersistentRef();
    }
  }

  return result;
}

uint64_t sub_100009A7C(uint64_t a1, uint64_t a2, CFDataRef *a3, __CFString **a4)
{
  if (!sub_1000296F4(a2) && !*(a2 + 88))
  {
    v10 = sub_10000336C(kCFAllocatorDefault, *a2, *(a2 + 8), dword_1000739E8, a4);
    if (!v10)
    {
      return 0;
    }

    v11 = v10;
    if (sub_10000418C(v10))
    {
      if (*(a2 + 96))
      {
        v12 = *(a2 + 96);
      }

      else
      {
        v12 = kCFBooleanTrue;
      }

      sub_100002090(v11, &off_10005A550, v12, 0);
    }

    v13 = *(a2 + 56);
    if (v13)
    {
      v14 = sub_100003054(v11, @"v_Data", v13, a4);
    }

    else
    {
      v14 = 1;
    }

    v15 = *(a2 + 72);
    if (v15)
    {
      v14 = sub_100003EFC(v11, v15, a4);
    }

    if (SecKeychainIsStaticPersistentRefsEnabled())
    {
      v16 = *(a2 + 80);
      if (v16)
      {
        v14 = sub_100003DD8(v11, v16, a4);
      }
    }

    v17 = *(a2 + 128);
    if (v17)
    {
      v18 = sub_100003054(v11, @"musr", v17, a4);
      sub_100001CA4(v11, *(a2 + 144));
      if (v18)
      {
LABEL_22:
        v19 = sub_1000057E0(v11, a1, *(a2 + 155), 0, a4);
        v20 = v19;
        if (a3 && v19)
        {
          v21 = *(a2 + 48);
          if (v21)
          {
            *a3 = sub_1000096F4(v11, v21, a4);
          }

          goto LABEL_46;
        }

LABEL_28:
        if (a4 && (v20 & 1) == 0 && *a4)
        {
          Domain = CFErrorGetDomain(*a4);
          if (CFEqual(Domain, kSecDbErrorDomain) && CFErrorGetCode(*a4) == 19)
          {
            v23 = *a4;
            if (*a4)
            {
              *a4 = 0;
              CFRelease(v23);
            }

            SecError(-25299, a4, @"duplicate item %@", v11);
            goto LABEL_43;
          }

          v24 = CFErrorGetDomain(*a4);
          if (CFEqual(v24, kCFErrorDomainOSStatus))
          {
            if (CFErrorGetCode(*a4) == -26275)
            {
              v25 = sub_100001820(v11[2], 14, a4);
              v26 = sub_100001BA0(v11, v25, a4);
              if (v26)
              {
                if (CFEqual(v26, kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly))
                {
                  v27 = *a4;
                  if (*a4)
                  {
                    *a4 = 0;
                    CFRelease(v27);
                  }

                  SecError(-25293, a4, @"authentication failed");
LABEL_43:
                  if ((v20 & 1) == 0)
                  {
LABEL_44:
                    v8 = 0;
LABEL_50:
                    CFRelease(v11);
                    return v8;
                  }

LABEL_46:
                  v8 = 1;
                  *(a2 + 113) = 1;
                  if (sub_100004078(v11))
                  {
                    *(a2 + 114) = 1;
                  }

                  if (sub_1000040D4(v11))
                  {
                    *(a2 + 115) = 1;
                  }

                  goto LABEL_50;
                }
              }
            }
          }
        }

        if (!v20)
        {
          goto LABEL_44;
        }

        goto LABEL_46;
      }
    }

    else
    {
      sub_100001CA4(v11, *(a2 + 144));
      if (v14)
      {
        goto LABEL_22;
      }
    }

    v20 = 0;
    goto LABEL_28;
  }

  return 1;
}

uint64_t sub_100009D54(uint64_t a1, const __CFArray *a2, uint64_t a3, __CFString **a4, uint64_t a5)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 1;
  if (*(a1 + 64))
  {
    v6 = SecError(-50, a4, @"value ref not supported by queries");
  }

  else
  {
    v11 = sub_100009EF4(a1, a2);
    *(v17 + 24) = v11 != 0;
    if (v11)
    {
      v12 = v11;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 0x40000000;
      v15[2] = sub_10000A144;
      v15[3] = &unk_100059918;
      v15[6] = &v16;
      v15[7] = a1;
      v15[8] = a2;
      v15[9] = a4;
      v15[10] = a3;
      v15[4] = &stru_1000598C8;
      v15[5] = a5;
      v13 = SecDbPrepare(a3, v11, a4, v15);
      *(v17 + 24) &= v13;
      CFRelease(v12);
      v6 = *(v17 + 24);
    }

    else
    {
      v6 = 0;
    }
  }

  _Block_object_dispose(&v16, 8);
  return v6 & 1;
}

BOOL sub_100009EA4(id a1, const SecDbAttr *a2)
{
  if ((a2->var1 & 0xFFFFFFFE) == 8)
  {
    LOBYTE(IsStaticPersistentRefsEnabled) = 1;
  }

  else
  {
    IsStaticPersistentRefsEnabled = SecKeychainIsStaticPersistentRefsEnabled();
    if (IsStaticPersistentRefsEnabled)
    {
      LOBYTE(IsStaticPersistentRefsEnabled) = a2->var1 == 16;
    }
  }

  return IsStaticPersistentRefsEnabled;
}

__CFString *sub_100009EF4(uint64_t a1, const __CFArray *a2)
{
  Mutable = CFStringCreateMutable(0, 0);
  v5 = *a1;
  v6 = sub_10001725C();
  IsStaticPersistentRefsEnabled = SecKeychainIsStaticPersistentRefsEnabled();
  if (v5 == v6)
  {
    if (IsStaticPersistentRefsEnabled && (v10 = *(a1 + 80)) != 0 && CFDataGetLength(v10) == 16)
    {
      v11 = CFSTR("SELECT crowid, certdata, certpersistref, rowid, data, persistref FROM (SELECT cert.rowid AS crowid, cert.labl AS labl, cert.issr AS issr, cert.slnr AS slnr, cert.skid AS skid, cert.tkid AS tkid, keys.*,cert.data AS certdata, cert.persistref AS certpersistref FROM keys, cert WHERE keys.priv == 1 AND cert.pkhh == keys.klbl");
    }

    else
    {
      v11 = CFSTR("SELECT crowid, certdata, rowid, data FROM (SELECT cert.rowid AS crowid, cert.labl AS labl, cert.issr AS issr, cert.slnr AS slnr, cert.skid AS skid, cert.tkid AS tkid, keys.*,cert.data AS certdata FROM keys, cert WHERE keys.priv == 1 AND cert.pkhh == keys.klbl");
    }

    CFStringAppend(Mutable, v11);
    sub_100010010(Mutable, @"cert.agrp", a2, 0);
    sub_1000100D0(Mutable, @"crowid", *(a1 + 72), 0);
    CFStringAppend(Mutable, @""));
    v14 = 1;
    sub_100010134(Mutable, a1, &v14);
    sub_1000101AC(Mutable, a1, &v14);
    if (SecKeychainIsStaticPersistentRefsEnabled())
    {
      v12 = *(a1 + 80);
      if (v12)
      {
        if (CFDataGetLength(v12) == 16)
        {
          sub_100003A64(Mutable, &v14);
          CFStringAppend(Mutable, @"certpersistref = ?");
        }
      }
    }

    sub_100010010(Mutable, @"agrp", a2, &v14);
    if (*(a1 + 153) == 1)
    {
      sub_100003A64(Mutable, &v14);
      CFStringAppend(Mutable, @"clip = 0");
    }

    if (*(a1 + 154) == 1)
    {
      sub_100003A64(Mutable, &v14);
      CFStringAppend(Mutable, @"tomb = 0");
    }
  }

  else
  {
    if (IsStaticPersistentRefsEnabled && ((v8 = *(a1 + 80)) != 0 && CFDataGetLength(v8) == 16 || (*(a1 + 48) & 8) != 0))
    {
      v9 = @"SELECT rowid, data, agrp, persistref FROM ";
    }

    else
    {
      v9 = @"SELECT rowid, data, agrp FROM ";
    }

    CFStringAppend(Mutable, v9);
    CFStringAppend(Mutable, **a1);
    sub_10000C5F4(Mutable, a1, a2);
  }

  if (!*(a1 + 176) && !*(a1 + 208) && !*(a1 + 216) && !*(a1 + 232) && !*(a1 + 240) && *(a1 + 104) != -1)
  {
    CFStringAppendFormat(Mutable, 0, @" LIMIT %ld", *(a1 + 104));
  }

  return Mutable;
}

uint64_t sub_10000A144(uint64_t a1, sqlite3_stmt *a2)
{
  v16 = 1;
  v4 = **(a1 + 56);
  result = sub_10001725C();
  if (v4 == result)
  {
    result = sub_10000A270(a2, *(a1 + 64), &v16, *(a1 + 72));
    *(*(*(a1 + 48) + 8) + 24) &= result;
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    result = sub_10000A35C(a2, *(a1 + 56), *(a1 + 64), &v16, *(a1 + 72));
    *(*(*(a1 + 48) + 8) + 24) &= result;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v7 = *(a1 + 72);
      v6 = *(a1 + 80);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 0x40000000;
      v9[2] = sub_10000A568;
      v9[3] = &unk_1000598F0;
      v8 = *(a1 + 64);
      v11 = *(a1 + 56);
      v12 = a2;
      v13 = v7;
      v14 = v6;
      v15 = v8;
      v10 = *(a1 + 32);
      return SecDbStep(v6, a2, v7, v9);
    }
  }

  return result;
}

uint64_t sub_10000A270(sqlite3_stmt *a1, CFArrayRef theArray, _DWORD *a3, CFTypeRef *a4)
{
  v5 = *a3;
  if (theArray && (Count = CFArrayGetCount(theArray), Count >= 1))
  {
    v10 = Count;
    v11 = (v5 + 1);
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    result = SecDbBindObject(a1, v5, ValueAtIndex, a4);
    if (result)
    {
      v14 = 1;
      while (1)
      {
        v15 = v14;
        if (v10 == v14)
        {
          break;
        }

        LODWORD(v5) = v11 + 1;
        v16 = CFArrayGetValueAtIndex(theArray, v14);
        v17 = SecDbBindObject(a1, v11, v16, a4);
        v14 = v15 + 1;
        v11 = (v11 + 1);
        if ((v17 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      LODWORD(v5) = v11;
LABEL_11:
      result = v15 >= v10;
    }

    else
    {
      LODWORD(v5) = v5 + 1;
    }
  }

  else
  {
    result = 1;
  }

  *a3 = v5;
  return result;
}

uint64_t sub_10000A35C(sqlite3_stmt *a1, uint64_t a2, const __CFArray *a3, unsigned int *a4, CFTypeRef *a5)
{
  v10 = *a4;
  v24 = *a4;
  v11 = sub_100002E28(a2);
  if (v11 < 1)
  {
LABEL_6:
    v25 = -1431655766;
    if (sub_10002955C(*(a2 + 128), &v25))
    {
      v15 = sub_1000291FC();
      v13 = (v10 + 1);
      if ((SecDbBindObject(a1, v10, v15, a5) & 1) == 0)
      {
        SecKeychainIsStaticPersistentRefsEnabled();
        goto LABEL_14;
      }

      v16 = sub_1000293F4(v25);
      v10 = (v10 + 2);
      v17 = SecDbBindObject(a1, v13, v16, a5);
      if (v16)
      {
        CFRelease(v16);
      }
    }

    else if (sub_1000293A4(*(a2 + 128)))
    {
      v17 = 1;
    }

    else
    {
      v19 = *(a2 + 128);
      if (v19)
      {
        v20 = CFGetTypeID(v19);
        if (v20 == CFNullGetTypeID())
        {
          v21 = sub_100029270();
        }

        else
        {
          v21 = *(a2 + 128);
        }
      }

      else
      {
        v21 = 0;
      }

      v17 = SecDbBindObject(a1, v10, v21, a5);
      v10 = (v10 + 1);
    }

    v24 = v10;
    if (!SecKeychainIsStaticPersistentRefsEnabled() || !v17 || (v22 = *(a2 + 80)) == 0 || CFDataGetLength(v22) != 16)
    {
      if (!v17)
      {
        result = 0;
        LODWORD(v13) = v10;
        goto LABEL_30;
      }

      goto LABEL_28;
    }

    LODWORD(v13) = v10 + 1;
    v23 = SecDbBindObject(a1, v10, *(a2 + 80), a5);
    v24 = v10 + 1;
    if (v23)
    {
LABEL_28:
      result = sub_10000A270(a1, a3, &v24, a5);
      LODWORD(v13) = v24;
      goto LABEL_30;
    }

LABEL_14:
    result = 0;
    goto LABEL_30;
  }

  v12 = v11;
  v13 = 0;
  while (1)
  {
    sub_1000296E8(a2, v13);
    if ((SecDbBindObject(a1, (v10 + v13), v14, a5) & 1) == 0)
    {
      break;
    }

    if (v12 == ++v13)
    {
      v10 = (v10 + v13);
      goto LABEL_6;
    }
  }

  SecKeychainIsStaticPersistentRefsEnabled();
  result = 0;
  LODWORD(v13) = v10 + v13 + 1;
LABEL_30:
  *a4 = v13;
  return result;
}

void sub_10000A568(uint64_t a1)
{
  v2 = sub_100003694(kCFAllocatorDefault, **(a1 + 48), *(a1 + 56), *(*(a1 + 48) + 120), *(a1 + 64), *(a1 + 32));
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 48);
    v5 = *(v4 + 144);
    *(v4 + 144) = 0;
    v6 = *(v2 + 56);
    if (v6)
    {
      CFRelease(v6);
    }

    *(v3 + 56) = v5;
    if (sub_10003E928(*(a1 + 72), *(a1 + 48), *(a1 + 80), *(v3 + 48)))
    {
      (*(*(a1 + 40) + 16))();
    }

    CFRelease(v3);
  }

  else
  {
    v7 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 64);
      if (v8)
      {
        v9 = *v8;
      }

      else
      {
        v9 = "no error";
      }

      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "failed to create item from stmt: %@", &v12, 0xCu);
    }

    v10 = *(a1 + 64);
    if (v10)
    {
      v11 = *v10;
      if (*v10)
      {
        *v10 = 0;
        CFRelease(v11);
      }
    }
  }
}

BOOL sub_10000A6FC(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4, __CFString **a5)
{
  cf = 0;
  v13[0] = a2;
  v13[1] = a4;
  v13[2] = a1;
  v15 = 0xAAAAAAAA00000000;
  if (SecKeychainIsStaticPersistentRefsEnabled())
  {
    v8 = *(a2 + 80);
    if (v8)
    {
      if (CFDataGetLength(v8) == 16 && sub_100002E28(a2))
      {
        v9 = @"attributes to query illegal; both persistent ref and other attributes can't be searched at the same time";
LABEL_21:

        return SecError(-50, a5, v9);
      }
    }
  }

  if ((SecKeychainIsStaticPersistentRefsEnabled() & 1) == 0 && *(a2 + 72) && sub_100002E28(a2))
  {
    v9 = @"attributes to query illegal; both row_id and other attributes can't be searched at the same time";
    goto LABEL_21;
  }

  if (*(a2 + 240) && sub_100002E28(a2) != 1)
  {
    v9 = @"attributes to query illegal; both token persistent ref and other attributes can't be searched at the same time";
    goto LABEL_21;
  }

  v10 = kSecAttrTombstone;
  if (!CFDictionaryContainsKey(*(a2 + 8), kSecAttrTombstone))
  {
    sub_100029AD0(v10, kCFBooleanFalse, a2);
  }

  v11 = sub_10000A868(sub_10000AAE8, v13, a5);
  if (a3 && v11)
  {
    *a3 = cf;
    return 1;
  }

  else if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

BOOL sub_10000A868(uint64_t a1, uint64_t a2, __CFString **a3)
{
  v4 = *a2;
  if (*(*a2 + 64))
  {

    return SecError(-50, a3, @"value ref not supported by queries");
  }

  else
  {
    v9 = *(a2 + 8);
    v8 = *(a2 + 16);
    if (*(v4 + 104) == 1)
    {
      Mutable = 0;
    }

    else
    {
      Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    }

    *(a2 + 24) = Mutable;
    v11 = sub_100009EF4(v4, v9);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 0x40000000;
    v18[2] = sub_100010238;
    v18[3] = &unk_100059CF0;
    v18[4] = v4;
    v18[5] = v9;
    v18[6] = a3;
    v18[7] = v8;
    v18[8] = a1;
    v18[9] = a2;
    v18[10] = a2;
    v12 = SecDbWithSQL(v8, v11, a3, v18);
    v13 = *(v4 + 8);
    if (v13)
    {
      v14 = *(a2 + 32);
      if (v14 >= 20)
      {
        Value = CFDictionaryGetValue(v13, kSecAttrAccessGroup);
        v16 = secLogObjForScope("SecItemDb");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109634;
          v20 = v14;
          v21 = 2112;
          v22 = v11;
          v23 = 2112;
          v24 = Value;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "🚨 Returning %d items for query: %@ for access group: %@", buf, 0x1Cu);
        }
      }
    }

    CFRelease(v11);
    if ((sub_100029ECC(v4, a3) & v12) != 1)
    {
      return 0;
    }

    if (*(a2 + 32))
    {
      return 1;
    }

    v17 = SecError(-25300, a3, @"no matching items found");
    if (*(v4 + 200) == 1)
    {
      __security_stackshotreport(@"ItemNotFound", 1405091848);
    }

    return v17;
  }
}

void sub_10000AAE8(sqlite3_stmt *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(*a2 + 48);
  v6 = sqlite3_column_int64(a1, 0);
  theDict = 0;
  if (sub_10003E210(a1, v4, 1, *(a2 + 8), &theDict, 0, 0, v4 + 5))
  {
    while (1)
    {
      if (!theDict)
      {
        *(v4 + 12) = v5;
        return;
      }

      if (!CFDictionaryContainsKey(theDict, kSecAttrTokenID))
      {
        break;
      }

      v7 = *(v4 + 12);
      if (v7)
      {
        break;
      }

      *(v4 + 12) = v7 | 1;
      v8 = theDict;
      if (theDict)
      {
        theDict = 0;
        CFRelease(v8);
      }

      if ((sub_10003E210(a1, v4, 1, *(a2 + 8), &theDict, 0, 0, v4 + 5) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v22 = v4[30];
    if (v22)
    {
      Value = CFDictionaryGetValue(theDict, kSecValueData);
      if (!sub_10003E190(v22, Value))
      {
        goto LABEL_111;
      }
    }

    v23 = *v4;
    if (v23 == sub_10001725C())
    {
      *buf = 0;
      if (SecKeychainIsStaticPersistentRefsEnabled() && (v49 = v4[10]) != 0 && CFDataGetLength(v49) == 16)
      {
        v50 = *(a2 + 8);
        v51 = (v4 + 5);
        v52 = a1;
        v53 = v4;
        v54 = 4;
      }

      else
      {
        v50 = *(a2 + 8);
        v51 = (v4 + 5);
        v52 = a1;
        v53 = v4;
        v54 = 3;
      }

      if (sub_10003E210(v52, v53, v54, v50, buf, 0, 0, v51) && *buf)
      {
        v55 = CFDictionaryGetValue(theDict, kSecValueData);
        if (v55)
        {
          CFDictionarySetValue(*buf, @"certdata", v55);
          CFDictionaryRemoveValue(theDict, kSecValueData);
        }

        v56 = CFDictionaryGetValue(theDict, kSecAttrTokenID);
        if (v56)
        {
          CFDictionarySetValue(*buf, @"certtkid", v56);
          CFDictionaryRemoveValue(theDict, kSecAttrTokenID);
        }

        CFDictionaryApplyFunction(theDict, sub_100010528, *buf);
        CFRelease(theDict);
        theDict = *buf;
        goto LABEL_23;
      }

      goto LABEL_111;
    }

LABEL_23:
    if (*(v4 + 116) == 1)
    {
      v24 = CFDictionaryGetValue(theDict, kSecAttrSharingGroup);
      if (v24)
      {
        v25 = v24;
        v26 = CFGetTypeID(v24);
        if (v26 == CFStringGetTypeID())
        {
          if (CFStringCompare(v25, kSecAttrSharingGroupNone, 0))
          {
            goto LABEL_111;
          }
        }
      }
    }

    if (!sub_10003E928(*(a2 + 16), v4, *(a2 + 8), theDict))
    {
      goto LABEL_111;
    }

    v27 = CFDictionaryGetValue(theDict, kSecAttrPersistentReference);
    v28 = theDict;
    v29 = CFDictionaryGetValue(theDict, kSecValueData);
    v30 = *(v4 + 12);
    if ((v30 & 8) != 0)
    {
      IsStaticPersistentRefsEnabled = SecKeychainIsStaticPersistentRefsEnabled();
      if (v27 && IsStaticPersistentRefsEnabled && CFDataGetLength(v27) == 16)
      {
        v39 = **v4;
        UUIDBasedPersistentRef = _SecItemCreateUUIDBasedPersistentRef();
      }

      else
      {
        if (SecKeychainIsStaticPersistentRefsEnabled())
        {
          v41 = secLogObjForScope("pref");
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *&buf[4] = v6;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "handle_result: Creating old persistent ref for %llu", buf, 0xCu);
          }
        }

        v42 = **v4;
        UUIDBasedPersistentRef = _SecItemCreatePersistentRef();
      }

      v31 = UUIDBasedPersistentRef;
      v30 = *(v4 + 12);
    }

    else
    {
      v31 = 0;
    }

    switch(v30)
    {
      case 8:
        v43 = SecKeychainIsStaticPersistentRefsEnabled();
        if (v27 && v43 && CFDataGetLength(v27) == 16)
        {
          v44 = **v4;
          PersistentRef = _SecItemCreateUUIDBasedPersistentRef();
        }

        else
        {
          v46 = secLogObjForScope("pref");
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *&buf[4] = v6;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "handle_result: Creating old persistent ref for %llu", buf, 0xCu);
          }

          v47 = **v4;
          PersistentRef = _SecItemCreatePersistentRef();
        }

        break;
      case 1:
        if (v29)
        {
          CFRetain(v29);
          v28 = v29;
          if (v31)
          {
            goto LABEL_100;
          }

          goto LABEL_101;
        }

        PersistentRef = CFDataCreate(kCFAllocatorDefault, 0, 0);
        break;
      case 0:
        v28 = kCFNull;
        if (!v31)
        {
          goto LABEL_101;
        }

LABEL_100:
        CFRelease(v31);
        goto LABEL_101;
      default:
        if ((v30 & 4) != 0)
        {
          CFDictionarySetValue(v28, kSecClass, **v4);
          goto LABEL_141;
        }

        if ((v30 & 2) == 0)
        {
          if (v29)
          {
            CFRetain(v29);
          }

          CFDictionaryRemoveAllValues(v28);
          if (v29 && (v4[6] & 1) != 0)
          {
            CFDictionarySetValue(v28, kSecValueData, v29);
            goto LABEL_140;
          }

          if (v29)
          {
LABEL_140:
            CFRelease(v29);
          }

LABEL_141:
          if ((v4[6] & 8) != 0 && v31)
          {
            CFDictionarySetValue(v28, kSecValuePersistentRef, v31);
          }

          CFRetain(v28);
          if (v31)
          {
            goto LABEL_100;
          }

LABEL_101:
          if (v28)
          {
            if (v28 != kCFNull)
            {
              if (v4[13] == 1)
              {
                *(a2 + 24) = v28;
                goto LABEL_107;
              }

              CFArrayAppendValue(*(a2 + 24), v28);
            }

            CFRelease(v28);
LABEL_107:
            ++*(a2 + 32);
          }

          if (CFDictionaryContainsKey(theDict, kSecAttrPersistentReference) && (v4[6] & 2) != 0)
          {
            CFDictionaryRemoveValue(theDict, kSecAttrPersistentReference);
          }

LABEL_111:
          v59 = theDict;
          *(v4 + 12) = v5;
          if (v59)
          {
LABEL_112:
            CFRelease(v59);
          }

          return;
        }

        if ((v30 & 1) == 0)
        {
          CFDictionaryRemoveValue(v28, kSecValueData);
        }

        v60 = (*v4)[2];
        if (!v60)
        {
LABEL_138:
          CFDictionaryRemoveValue(v28, kSecAttrUUID);
          goto LABEL_141;
        }

        v61 = 0;
        v62 = *v4 + 3;
        while (1)
        {
          if ((v60[4] & 0x10) != 0 && !CFDictionaryGetValue(v28, *v60) && *(v60 + 3))
          {
            v64 = 0;
            *buf = 0;
            if (!v61)
            {
              v61 = sub_10000336C(0, *v4, v28, dword_1000739E8, buf);
              v64 = *buf;
            }

            if (v64 || !v61)
            {
              goto LABEL_134;
            }

            if (v60[2] != 7 || (v4[6] & 1) != 0)
            {
              break;
            }
          }

LABEL_120:
          v63 = *v62++;
          v60 = v63;
          if (!v63)
          {
            if (v61)
            {
              CFRelease(v61);
            }

            goto LABEL_138;
          }
        }

        v65 = (*(v60 + 3))(v61, v60, buf);
        v64 = *buf;
        if (*buf || !v65)
        {
          if (!v65)
          {
            goto LABEL_134;
          }
        }

        else
        {
          CFDictionarySetValue(v28, *v60, v65);
        }

        CFRelease(v65);
        v64 = *buf;
LABEL_134:
        if (v64)
        {
          *buf = 0;
          CFRelease(v64);
        }

        goto LABEL_120;
    }

    v28 = PersistentRef;
    if (!v31)
    {
      goto LABEL_101;
    }

    goto LABEL_100;
  }

LABEL_8:
  v9 = v4[5];
  OSStatus = SecErrorGetOSStatus();
  v11 = OSStatus;
  if (OSStatus > -25331)
  {
    if (OSStatus == -25330)
    {
      v32 = secLogObjForScope("SecWarning");
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v36 = **v4;
      v37 = v4[5];
      *buf = 138413058;
      *&buf[4] = v36;
      v68 = 2048;
      v69 = v6;
      v70 = 1024;
      LODWORD(v71[0]) = -25330;
      WORD2(v71[0]) = 2112;
      *(v71 + 6) = v37;
      v35 = "Authentication is needed for %@,rowid=%lld (%d): %@";
LABEL_39:
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v35, buf, 0x26u);
      return;
    }

    if (OSStatus == -25308)
    {
      if (qword_1000736E0 != -1)
      {
        sub_10003E298();
      }

      sec_action_perform(qword_1000736E8);
      return;
    }

LABEL_35:
    v32 = secLogObjForScope("SecError");
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v33 = **v4;
    v34 = v4[5];
    *buf = 138413058;
    *&buf[4] = v33;
    v68 = 2048;
    v69 = v6;
    v70 = 1024;
    LODWORD(v71[0]) = v11;
    WORD2(v71[0]) = 2112;
    *(v71 + 6) = v34;
    v35 = "decode %@,rowid=%lld failed (%d): %@";
    goto LABEL_39;
  }

  if (OSStatus == -34018)
  {
    goto LABEL_96;
  }

  if (OSStatus != -26275)
  {
    goto LABEL_35;
  }

  v12 = secLogObjForScope("SecWarning");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = **v4;
    v14 = v4[5];
    *buf = 138412802;
    *&buf[4] = v13;
    v68 = 2048;
    v69 = v6;
    v70 = 2112;
    v71[0] = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ignoring corrupt %@,rowid=%lld %@", buf, 0x20u);
  }

  Copy = CFStringCreateCopy(kCFAllocatorDefault, **v4);
  sub_100019EE4(*(a2 + 16), Copy, v6);
  if (Copy)
  {
    CFRelease(Copy);
  }

  v16 = sub_1000103D8(a1, 1);
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  if (Mutable)
  {
    BytePtr = CFDataGetBytePtr(v16);
    Length = CFDataGetLength(v16);
    if ((Length & 0x8000000000000000) == 0)
    {
      v20 = Length;
      CFStringAppendFormat(Mutable, 0, @"%04lx:", Length);
      if (v20 > 8)
      {
        *buf = 0;
        CNCRC();
        for (i = 0; i != 8; ++i)
        {
          CFStringAppendFormat(Mutable, 0, @"%02X", BytePtr[i]);
        }

        CFStringAppendFormat(Mutable, 0, @"...|%08llx", *buf);
      }

      else
      {
        for (; v20; --v20)
        {
          v21 = *BytePtr++;
          CFStringAppendFormat(Mutable, 0, @"%02X", v21);
        }
      }
    }

    v58 = secLogObjForScope("item");
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = Mutable;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "corrupted edata=%@", buf, 0xCu);
    }
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_96:
  v59 = v4[5];
  if (v59)
  {
    v4[5] = 0;
    goto LABEL_112;
  }
}

BOOL sub_10000B570(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4, __CFString **a5)
{
  cf = 0;
  v9[0] = a2;
  v9[1] = a4;
  v9[2] = a1;
  v11 = 0xAAAAAAAA00000000;
  *(a2 + 104) = -1;
  sub_100029AD0(kSecAttrTombstone, kCFBooleanFalse, a2);
  v7 = sub_10000A868(sub_10000B618, v9, a5);
  if (a3 && v7)
  {
    *a3 = cf;
  }

  else if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

void sub_10000B618(sqlite3_stmt *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = sqlite3_column_int64(a1, 0);
  v6 = sub_1000103D8(a1, 1);
  if (SecKeychainIsStaticPersistentRefsEnabled())
  {
    v7 = sqlite3_column_blob(a1, 3);
    v8 = sqlite3_column_bytes(a1, 3);
    v9 = CFDataCreate(kCFAllocatorDefault, v7, v8);
    if (v9)
    {
      v10 = v9;
      if (CFDataGetLength(v9) == 16)
      {
        v11 = **v4;
        UUIDBasedPersistentRef = _SecItemCreateUUIDBasedPersistentRef();
      }

      else
      {
        UUIDBasedPersistentRef = 0;
      }

      CFRelease(v10);
      if (v6)
      {
        goto LABEL_14;
      }
    }

    else
    {
      UUIDBasedPersistentRef = 0;
      if (v6)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v15 = 0;
    v16 = 0;
    v17 = UUIDBasedPersistentRef != 0;
    goto LABEL_19;
  }

  if (SecKeychainIsStaticPersistentRefsEnabled())
  {
    v13 = secLogObjForScope("pref");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v30 = v5;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "s3dl_query_row_digest: Creating old persistent ref for %llu", buf, 0xCu);
    }
  }

  v14 = **v4;
  UUIDBasedPersistentRef = _SecItemCreatePersistentRef();
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_14:
  v16 = CFDataCopySHA256Digest(v6);
  v15 = v16 != 0;
  v17 = UUIDBasedPersistentRef != 0;
  if (v16 && UUIDBasedPersistentRef)
  {
    v25 = sub_10000DA5C(0, v18, v19, v20, v21, v22, v23, v24, kSecValuePersistentRef, UUIDBasedPersistentRef);
    if (v25)
    {
      v26 = v25;
      CFArrayAppendValue(*(a2 + 24), v25);
      CFRelease(v26);
    }

    ++*(a2 + 32);
    v17 = 1;
    goto LABEL_21;
  }

LABEL_19:
  v27 = secLogObjForScope("item");
  if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    if (!v15)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v28 = **v4;
  *buf = 134218242;
  v30 = v5;
  v31 = 2112;
  v32 = v28;
  _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "rowid %lu in %@ failed to create pref/digest", buf, 0x16u);
  if (v15)
  {
LABEL_21:
    CFRelease(v16);
  }

LABEL_22:
  if (v6)
  {
    CFRelease(v6);
    if (!v17)
    {
      return;
    }

    goto LABEL_24;
  }

  if (v17)
  {
LABEL_24:
    CFRelease(UUIDBasedPersistentRef);
  }
}

void sub_10000B8D8(CFDictionaryRef *a1, int a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  v5 = CFDateCreate(0, Current);
  v6 = *(*a1 + 2);
  if (v6)
  {
    v7 = (*a1 + 24);
    do
    {
      v8 = *(v6 + 16);
      if ((v8 & 2) != 0)
      {
        if ((*(v6 + 8) - 5) <= 1)
        {
          if (a2)
          {
            sub_10000BA68(v6, v5, a1);
          }

          else if (!CFDictionaryContainsKey(a1[1], *v6))
          {
            sub_100029840(v6, v5, a1);
          }

          goto LABEL_4;
        }

        if ((v8 & 0x1000) != 0 && !CFDictionaryContainsKey(a1[1], *v6))
        {
          v10 = *(v6 + 16);
          if ((v10 & 0x400) != 0)
          {
            if (*(v6 + 8) == 4)
            {
              v12 = CFDateCreate(kCFAllocatorDefault, 0.0);
            }

            else
            {
              valuePtr = 0;
              v12 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            }
          }

          else
          {
            if ((v10 & 0x800) == 0)
            {
              goto LABEL_4;
            }

            v11 = *(v6 + 8);
            if (v11 != 16 && v11 != 1)
            {
              CFRetain(&stru_1000643F8);
              v13 = &stru_1000643F8;
LABEL_22:
              sub_100029840(v6, v13, a1);
              CFRelease(v13);
              goto LABEL_4;
            }

            v12 = CFDataCreate(kCFAllocatorDefault, 0, 0);
          }

          v13 = v12;
          if (v12)
          {
            goto LABEL_22;
          }
        }
      }

LABEL_4:
      v9 = *v7++;
      v6 = v9;
    }

    while (v9);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

void sub_10000BA68(CFTypeRef *a1, const __CFString *a2, uint64_t a3)
{
  if (CFDictionaryContainsKey(*(a3 + 8), *a1) && *(a3 + 32) >= 1)
  {
    v6 = 0;
    v7 = (a3 + 280);
    while (!CFEqual(*a1, *(v7 - 2)))
    {
      ++v6;
      v7 += 2;
      if (v6 >= *(a3 + 32))
      {
        goto LABEL_13;
      }
    }

    v8 = *(v7 - 1);
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = *(a3 + 32);
    *(a3 + 32) = v9 - 1;
    if (v6 < v9 - 1)
    {
      v10 = ~v6 + v9;
      do
      {
        *(v7 - 1) = *v7;
        v7 += 2;
        --v10;
      }

      while (v10);
    }

    CFDictionaryRemoveValue(*(a3 + 8), *a1);
  }

LABEL_13:

  sub_100029840(a1, a2, a3);
}

BOOL sub_10000BB50(uint64_t a1, uint64_t a2, const __CFDictionary *a3, uint64_t a4, __CFString **a5)
{
  if (sub_1000296F4(a2))
  {
    v10 = @"match not supported in attributes to update";
LABEL_5:

    return SecError(-50, a5, v10);
  }

  if (*(a2 + 64))
  {
    v10 = @"value ref not supported in attributes to update";
    goto LABEL_5;
  }

  if (*(a2 + 72) && sub_100002E28(a2))
  {
    v10 = @"attributes to update illegal; both row_id and other attributes can't be updated at the same time";
    goto LABEL_5;
  }

  if (*(a2 + 240) && sub_100002E28(a2) != 1)
  {
    v10 = @"attributes to update illegal; both token persistent ref and other attributes can't be updated at the same time";
    goto LABEL_5;
  }

  if (CFDictionaryContainsKey(a3, kSecAttrSharingGroup))
  {
    v10 = @"Cannot change SharingGroup using this API";
    goto LABEL_5;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 1;
  v12 = sub_10002A0E4(*a2, 0, a3, 0, a5);
  if (v12)
  {
    v13 = v12;
    if (sub_10002A3B0(v12, a3, a5))
    {
      sub_10000BD98(v13);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 0x40000000;
      v18[2] = sub_10000BE10;
      v18[3] = &unk_100059968;
      v18[4] = &v19;
      v18[5] = a2;
      v18[6] = a4;
      v18[7] = a1;
      v18[8] = a5;
      v18[9] = v13;
      v14 = SecDbTransaction(a1, 2, a5, v18);
      v15 = (v14 & v20[3]);
      *(v20 + 24) &= v14;
      if (v15 == 1 && (*(a2 + 113) & 1) == 0)
      {
        v16 = SecError(-25300, a5, @"No items updated");
        *(v20 + 24) = v16;
      }
    }

    else
    {
      *(v20 + 24) = 0;
    }

    if (sub_100029F58(v13, a5))
    {
      v17 = *(v20 + 24);
    }

    else
    {
      v17 = 0;
      *(v20 + 24) = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  _Block_object_dispose(&v19, 8);
  return v17 & 1;
}

void sub_10000BD98(uint64_t a1)
{
  v1 = *(*a1 + 16);
  if (v1)
  {
    v3 = (*a1 + 24);
    do
    {
      if (*(v1 + 8) == 6)
      {
        Current = CFAbsoluteTimeGetCurrent();
        v5 = CFDateCreate(0, Current);
        sub_10000BA68(v1, v5, a1);
        if (v5)
        {
          CFRelease(v5);
        }
      }

      v6 = *v3++;
      v1 = v6;
    }

    while (v6);
  }
}

uint64_t sub_10000BE10(void *a1, _BYTE *a2)
{
  v4 = kSecAttrTombstone;
  if (!CFDictionaryContainsKey(*(a1[5] + 8), kSecAttrTombstone))
  {
    sub_100029AD0(v4, kCFBooleanFalse, a1[5]);
  }

  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = sub_10000BF0C;
  v10[3] = &unk_100059940;
  v10[6] = a1[9];
  v10[7] = v7;
  v10[4] = a1[4];
  v10[5] = v5;
  v10[8] = v8;
  result = sub_100009D54(v5, v6, v7, v8, v10);
  *(*(a1[4] + 8) + 24) &= result;
  if ((*(*(a1[4] + 8) + 24) & 1) == 0)
  {
    *a2 = 0;
  }

  return result;
}

void sub_10000BF0C(uint64_t a1, void **a2)
{
  cf = 0;
  v4 = *(a1 + 40);
  if (*(v4 + 240))
  {
    v5 = sub_100001820(a2[2], 1, 0);
    v6 = sub_100001BA0(a2, v5, 0);
    v4 = *(a1 + 40);
    v7 = *(v4 + 240);
    if (v7)
    {
      if (!sub_10003E190(v7, v6))
      {
        return;
      }

      v4 = *(a1 + 40);
    }
  }

  if (*(v4 + 116) == 1)
  {
    v8 = sub_100002404(a2, kSecAttrSharingGroup);
    if (v8)
    {
      v9 = v8;
      v10 = CFGetTypeID(v8);
      if (v10 == CFStringGetTypeID())
      {
        if (CFStringCompare(v9, kSecAttrSharingGroupNone, 0))
        {
          v11 = secLogObjForScope("SecError");
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Cannot update shared item for unentitled client", buf, 2u);
          }

          return;
        }
      }
    }
  }

  v12 = sub_100001820(a2[2], 7, 0);
  v13 = sub_100001BA0(a2, v12, 0);
  v14 = v13;
  if (v13)
  {
    CFRetain(v13);
  }

  v15 = sub_100003838(a2, *(*(a1 + 48) + 8), &cf);
  sub_100002090(a2, v12, v14, 0);
  if (v14)
  {
    CFRelease(v14);
  }

  if (SecErrorGetOSStatus() == -26275)
  {
    v16 = secLogObjForScope("SecWarning");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = ***(a1 + 40);
      v18 = sub_100003E50(a2, 0);
      *buf = 138412802;
      v36 = v17;
      v37 = 2048;
      v38 = v18;
      v39 = 2112;
      v40 = cf;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "deleting corrupt %@,rowid=%lld %@", buf, 0x20u);
    }

    v19 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v19);
    }

    if ((sub_10000682C(a2, *(a1 + 56), 0, 0, &cf) & 1) == 0)
    {
      v20 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = ***(a1 + 40);
        v22 = sub_100003E50(a2, 0);
        *buf = 138412802;
        v36 = v21;
        v37 = 2048;
        v38 = v22;
        v39 = 2112;
        v40 = cf;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "failed to delete corrupt %@,rowid=%lld %@", buf, 0x20u);
      }

      v23 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v23);
      }
    }

    if (!v15)
    {
      return;
    }

LABEL_58:
    CFRelease(v15);
    return;
  }

  if (v15)
  {
    v24 = *(*(a1 + 48) + 136);
    if (v24)
    {
      sub_1000032AC(v15, v24, &cf);
    }
  }

  v25 = cf;
  v26 = *(a1 + 64);
  if (cf && v26)
  {
    if (*v26)
    {
      if (CFErrorGetCode(*v26) != -25330)
      {
        goto LABEL_36;
      }

      v27 = *v26;
      if (*v26)
      {
        *v26 = 0;
        CFRelease(v27);
LABEL_36:
        if (*v26)
        {
          goto LABEL_37;
        }
      }
    }

    v28 = 0;
    *v26 = v25;
    goto LABEL_40;
  }

  if (cf)
  {
    if (!v26)
    {
LABEL_37:
      CFRelease(v25);
      v28 = 0;
      goto LABEL_40;
    }

    goto LABEL_36;
  }

  v28 = 1;
LABEL_40:
  if (!v15)
  {
    v28 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v28;
  if (v15)
  {
    v29 = sub_100004078(a2);
    v30 = sub_1000040D4(a2);
    v31 = *(a1 + 56);
    v32 = *(*(a1 + 40) + 96);
    if (!v32)
    {
      if (v29 && !sub_10000418C(a2))
      {
        v32 = 0;
      }

      else
      {
        v32 = kCFBooleanFalse;
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = sub_100006174(a2, v15, v31, v32, *(*(a1 + 40) + 155), *(a1 + 64));
    if (*(*(*(a1 + 32) + 8) + 24) != 1)
    {
      goto LABEL_58;
    }

    v33 = *(a1 + 40);
    *(v33 + 113) = 1;
    if ((v29 & 1) == 0)
    {
      if (!sub_100004078(v15))
      {
LABEL_55:
        if ((v30 & 1) != 0 || sub_1000040D4(v15))
        {
          *(*(a1 + 40) + 115) = 1;
        }

        goto LABEL_58;
      }

      v33 = *(a1 + 40);
    }

    *(v33 + 114) = 1;
    goto LABEL_55;
  }
}

uint64_t sub_10000C3A0(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 1;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v8 = kSecAttrTombstone;
  if (!CFDictionaryContainsKey(*(a2 + 8), kSecAttrTombstone))
  {
    sub_100029AD0(v8, kCFBooleanFalse, a2);
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 0x40000000;
  v16[2] = sub_10000C5CC;
  v16[3] = &unk_1000599C8;
  v16[4] = a2;
  v16[5] = a3;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 0x40000000;
  v15[2] = sub_10000C708;
  v15[3] = &unk_1000599E8;
  v15[4] = a2;
  v15[5] = a3;
  v15[6] = a4;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 0x40000000;
  v14[2] = sub_10000C740;
  v14[3] = &unk_100059A10;
  v14[6] = a2;
  v14[7] = a4;
  v14[4] = &v17;
  v14[5] = &v21;
  v14[8] = a1;
  v9 = sub_100004958(a2, a1, a4, 0, &stru_1000599A8, v16, v15, v14);
  v10 = (v9 & v22[3]);
  *(v22 + 24) &= v9;
  if (v10 == 1 && ((*(a2 + 113) & 1) != 0 || (v18[3] & 1) != 0 || (v11 = SecError(-25300, a4, @"Delete failed to delete anything"), *(v22 + 24) = v11, v11)))
  {
    v12 = *(v18 + 24) ^ 1;
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v12 & 1;
}

void sub_10000C5F4(__CFString *a1, uint64_t a2, const __CFArray *a3)
{
  v7 = 1;
  sub_1000100D0(a1, @"ROWID", *(a2 + 72), &v7);
  sub_100010134(a1, a2, &v7);
  sub_1000101AC(a1, a2, &v7);
  if (SecKeychainIsStaticPersistentRefsEnabled())
  {
    v6 = *(a2 + 80);
    if (v6)
    {
      if (CFDataGetLength(v6) == 16)
      {
        sub_100003A64(a1, &v7);
        CFStringAppend(a1, @"persistref = ?");
      }
    }
  }

  sub_100010010(a1, @"agrp", a3, &v7);
  if (*(a2 + 153) == 1)
  {
    sub_100003A64(a1, &v7);
    CFStringAppend(a1, @"clip = 0");
  }

  if (*(a2 + 154) == 1)
  {
    sub_100003A64(a1, &v7);
    CFStringAppend(a1, @"tomb = 0");
  }
}

void sub_10000C740(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 48) + 240))
  {
    v4 = sub_100001820(*(a2 + 16), 1, 0);
    v5 = sub_100001BA0(a2, v4, 0);
    v6 = *(*(a1 + 48) + 240);
    if (v6)
    {
      if (!sub_10003E190(v6, v5))
      {
        return;
      }
    }
  }

  *(a2 + 64) = @"odel";
  v7 = *(a1 + 56);
  err = 0;
  v8 = sub_100001CF0(a2, 1, &err);
  v9 = err;
  if ((v8 & 1) == 0 && err)
  {
    if (CFErrorGetCode(err) == -25330)
    {
      if (v7)
      {
        *v7 = err;
      }

      *(*(*(a1 + 32) + 8) + 24) = 1;
      return;
    }

    v9 = err;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (*(*(a1 + 48) + 116) == 1 && (v10 = sub_100002404(a2, kSecAttrSharingGroup)) != 0 && (v11 = v10, v12 = CFGetTypeID(v10), v12 == CFStringGetTypeID()) && CFStringCompare(v11, kSecAttrSharingGroupNone, 0))
  {
    v13 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Cannot delete shared item for unentitled client", v22, 2u);
    }
  }

  else
  {
    v14 = sub_100001820(*(a2 + 16), 7, 0);
    v15 = sub_100001BA0(a2, v14, 0);
    v16 = v15;
    if (v15)
    {
      CFRetain(v15);
    }

    v17 = sub_100004078(a2);
    v18 = sub_1000040D4(a2);
    sub_100002090(a2, v14, v16, 0);
    if (v16)
    {
      CFRelease(v16);
    }

    v19 = *(a1 + 64);
    v20 = *(*(a1 + 48) + 96);
    if (!v20)
    {
      if (v17 && !sub_10000418C(a2))
      {
        v20 = 0;
      }

      else
      {
        v20 = kCFBooleanFalse;
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = sub_10000682C(a2, v19, v20, *(*(a1 + 48) + 156), *(a1 + 56));
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      v21 = *(a1 + 48);
      v21[113] = 1;
      if (v17)
      {
        v21[114] = 1;
      }

      if (v18)
      {
        v21[115] = 1;
      }
    }
  }
}

uint64_t sub_10000C9CC(const __CFDictionary *a1, CFTypeRef *a2, int a3)
{
  Value = CFDictionaryGetValue(a1, kSecAttrSysBound);
  if (!Value || (v7 = Value, v8 = CFGetTypeID(Value), v8 != CFNumberGetTypeID()))
  {
    result = CFDictionaryGetValue(a1, kSecAttrAccessGroup);
    if (!result)
    {
      return result;
    }

    v11 = result;
    v12 = CFGetTypeID(result);
    if (v12 != CFStringGetTypeID())
    {
      return 0;
    }

    if (kSOSInternalAccessGroup && CFEqual(v11, kSOSInternalAccessGroup) || CFEqual(v11, @"lockdown-identities"))
    {
      return 1;
    }

    if (CFEqual(v11, @"apple") && sub_10001712C() == a2)
    {
      v26 = CFDictionaryGetValue(a1, kSecAttrService);
      v27 = CFDictionaryGetValue(a1, kSecAttrAccount);
      if (sub_100009130(v26) && sub_100009130(v27) && CFEqual(v26, @"com.apple.managedconfiguration"))
      {
        if (CFEqual(v27, @"Public"))
        {
          return 1;
        }

        v28 = 0;
        while (v28 != 1)
        {
          if (CFEqual(v27, off_100059A30[++v28]))
          {
            if (v28 == 1)
            {
              return 1;
            }

            break;
          }
        }
      }

      if (sub_100009130(v26) && CFEqual(v26, @"com.apple.account.CloudKit.token") || sub_100009130(v26) && CFEqual(v26, @"com.apple.account.idms.continuation-key"))
      {
        return 1;
      }
    }

    if (a3)
    {
      if (CFEqual(v11, @"com.apple.apsd"))
      {
        if (sub_10001712C() == a2)
        {
          v13 = CFDictionaryGetValue(a1, kSecAttrService);
          if (sub_100009130(v13))
          {
            if (CFEqual(v13, @"push.apple.com"))
            {
              return 1;
            }

            v14 = 0;
            while (v14 != 1)
            {
              if (CFEqual(v13, off_100059A40[++v14]))
              {
                if (v14 == 1)
                {
                  return 1;
                }

                break;
              }
            }
          }
        }
      }

      if (CFEqual(v11, @"appleaccount"))
      {
        if (sub_10001712C() == a2)
        {
          v16 = CFDictionaryGetValue(a1, kSecAttrService);
          if (sub_100009130(v16))
          {
            if (CFEqual(v16, @"com.apple.appleaccount.fmf.token"))
            {
              return 1;
            }

            v17 = -1;
            v18 = off_100059A58;
            while (v17 != 2)
            {
              v19 = *v18++;
              ++v17;
              if (CFEqual(v16, v19))
              {
                if (v17 < 3)
                {
                  return 1;
                }

                break;
              }
            }
          }
        }
      }

      if (CFEqual(v11, @"apple") && sub_10001712C() == a2)
      {
        v30 = CFDictionaryGetValue(a1, kSecAttrService);
        if (sub_100009130(v30))
        {
          if (CFEqual(v30, @"com.apple.account.AppleAccount.token"))
          {
            return 1;
          }

          v31 = -1;
          v32 = off_100059A78;
          while (v31 != 12)
          {
            v33 = *v32++;
            ++v31;
            if (CFEqual(v30, v33))
            {
              if (v31 < 0xD)
              {
                return 1;
              }

              break;
            }
          }
        }

        if (sub_100009130(v30) && CFStringHasPrefix(v30, @"com.apple.gs."))
        {
          return 1;
        }

        if (sub_100009130(v30))
        {
          if (CFEqual(v30, @"com.apple.facetime"))
          {
            v34 = CFDictionaryGetValue(a1, kSecAttrAccount);
            if (sub_100009130(v34))
            {
              if (CFEqual(v34, @"registrationV1"))
              {
                return 1;
              }
            }
          }
        }
      }

      if (CFEqual(v11, @"com.apple.ind"))
      {
        if (sub_10001712C() == a2)
        {
          v20 = CFDictionaryGetValue(a1, kSecAttrService);
          if (sub_100009130(v20))
          {
            if (CFEqual(v20, @"com.apple.ind.registration"))
            {
              return 1;
            }
          }
        }
      }

      if (CFEqual(v11, @"ichat"))
      {
        if (sub_10001712C() == a2)
        {
          v21 = CFDictionaryGetValue(a1, kSecAttrService);
          if (sub_100009130(v21))
          {
            if (CFEqual(v21, @"ids"))
            {
              return 1;
            }
          }
        }
      }

      if (CFEqual(v11, @"ichat"))
      {
        if (sub_100017240() == a2)
        {
          v22 = CFDictionaryGetValue(a1, kSecAttrLabel);
          if (sub_100009130(v22))
          {
            if (CFEqual(v22, @"iMessage Encryption Key"))
            {
              return 1;
            }

            v23 = 0;
            while (v23 != 1)
            {
              if (CFEqual(v22, off_100059AE0[++v23]))
              {
                if (v23 == 1)
                {
                  return 1;
                }

                break;
              }
            }
          }
        }
      }

      if (CFEqual(v11, @"com.apple.rapport") && sub_10001712C() == a2)
      {
        return 1;
      }
    }

    cf = 0;
    if (!CFDictionaryGetValueIfPresent(a1, kSecAttrSharingGroup, &cf))
    {
      return 0;
    }

    if (!cf)
    {
      return 0;
    }

    v25 = CFGetTypeID(cf);
    return v25 == CFStringGetTypeID();
  }

  valuePtr = 0;
  if (CFNumberGetValue(v7, kCFNumberSInt32Type, &valuePtr))
  {
    v9 = valuePtr == 0;
  }

  else
  {
    v9 = 1;
  }

  return !v9;
}

uint64_t sub_10000CF74(uint64_t a1, uint64_t a2, int a3, CFTypeRef *a4)
{
  v8 = secLogObjForScope("SecWarning");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = a2;
    v14 = 1024;
    v15 = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SecServerDeleteAllForUser for user: %@ keepU %{BOOL}d", buf, 0x12u);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = sub_10000D0A4;
  v10[3] = &unk_100059AF0;
  v10[4] = a1;
  v10[5] = a2;
  v11 = a3;
  v10[6] = a4;
  return sub_100009178(a1, 2, a4, v10);
}

uint64_t sub_10000D0A4(uint64_t a1)
{
  if (!sub_10000D14C(*(a1 + 32), @"DELETE FROM genp WHERE musr = ?", *(a1 + 40), *(a1 + 56), *(a1 + 48)) || !sub_10000D14C(*(a1 + 32), @"DELETE FROM inet WHERE musr = ?", *(a1 + 40), *(a1 + 56), *(a1 + 48)) || !sub_10000D14C(*(a1 + 32), @"DELETE FROM cert WHERE musr = ?", *(a1 + 40), *(a1 + 56), *(a1 + 48)))
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 48);

  return sub_10000D14C(v2, @"DELETE FROM keys WHERE musr = ?", v3, v4, v5);
}

uint64_t sub_10000D14C(uint64_t a1, CFTypeRef cf, const __CFString *a3, int a4, CFTypeRef *a5)
{
  if (a4)
  {
    v8 = CFStringCreateWithFormat(0, 0, @"%@ AND pdmn NOT IN ('aku','akpu','cku','dku')", cf);
  }

  else
  {
    v8 = CFRetain(cf);
  }

  v9 = v8;
  if (v8)
  {
    v10 = SecDbCopyStmt(a1, v8, 0, a5);
    if (v10)
    {
      if (sub_10003E2C0(v10, a3, a5, a1))
      {
        v11 = 1;
LABEL_14:
        CFRelease(v9);
        return v11;
      }
    }
  }

  v12 = secLogObjForScope("SecWarning");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if (a5)
    {
      v13 = *a5;
    }

    else
    {
      v13 = 0;
    }

    *buf = 138412802;
    v16 = v9;
    v17 = 2112;
    v18 = a3;
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "DeleteAllFromTableForMUSRView failed for %@ for musr: %@: %@", buf, 0x20u);
  }

  v11 = 0;
  result = 0;
  if (v9)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_10000D2A0(uint64_t a1)
{
  v2 = secLogObjForScope("item");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Request to delete app clip keychain items for identifier '%@'", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x2000000000;
  v23 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 1;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = sub_10000D490;
  v10[3] = &unk_100059B68;
  v10[4] = &buf;
  v10[5] = &v11;
  v10[6] = a1;
  v3 = sub_10001992C(1, 0, &v23, v10);
  v4 = (v3 & v12[3]) == 0;
  *(v12 + 24) &= v3;
  if (v4)
  {
    v5 = 4294941020;
  }

  else
  {
    v5 = 0;
  }

  v6 = secLogObjForScope("item");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(*(&buf + 1) + 24);
    *v15 = 138412802;
    v16 = a1;
    v17 = 1024;
    v18 = v5;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished request to delete app clip keychain items for identifier '%@' with status %i: %@", v15, 0x1Cu);
  }

  v8 = *(*(&buf + 1) + 24);
  if (v8)
  {
    *(*(&buf + 1) + 24) = 0;
    CFRelease(v8);
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&buf, 8);
  return v5;
}

uint64_t sub_10000D490(int8x16_t *a1, uint64_t a2)
{
  v6[0] = _NSConcreteStackBlock;
  v2 = vextq_s8(a1[2], a1[2], 8uLL);
  v3 = *(a1[2].i64[0] + 8);
  v6[1] = 0x40000000;
  v6[2] = sub_10000D520;
  v6[3] = &unk_100059B40;
  v7 = v2;
  v4 = a1[3].i64[0];
  v8 = a2;
  v9 = v4;
  return sub_100009178(a2, 2, (v3 + 24), v6);
}

uint64_t sub_10000D520(int8x16_t *a1)
{
  v2 = sub_100017114();
  v3 = *(v2 + 8);
  if (v3)
  {
    v4 = (v2 + 16);
    do
    {
      if (*(v3 + 8) == 1)
      {
        v5 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"DELETE FROM %@ WHERE agrp = ? AND clip = 1", *v3);
        v7 = a1[2].i64[0];
        v6 = a1[2].i64[1];
        v8 = *(v6 + 8);
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 0x40000000;
        v12[2] = sub_10000D658;
        v12[3] = &unk_100059B18;
        v12[4] = v7;
        v12[5] = v6;
        v9 = a1[3];
        v13 = vextq_s8(v9, v9, 8uLL);
        *(*(a1[2].i64[0] + 8) + 24) &= SecDbPrepare(v9.i64[0], v5, (v8 + 24), v12);
        if (v5)
        {
          CFRelease(v5);
        }
      }

      v10 = *v4++;
      v3 = v10;
    }

    while (v10);
  }

  return *(*(a1[2].i64[0] + 8) + 24);
}

BOOL sub_10000D658(uint64_t a1, sqlite3_stmt *a2)
{
  *(*(*(a1 + 32) + 8) + 24) &= SecDbBindObject(a2, 1, *(a1 + 48), (*(*(a1 + 40) + 8) + 24));
  result = SecDbStep(*(a1 + 56), a2, (*(*(a1 + 40) + 8) + 24), 0);
  *(*(*(a1 + 32) + 8) + 24) &= result;
  return result;
}

uint64_t sub_10000D6D8(uint64_t a1, uint64_t a2)
{
  v4 = secLogObjForScope("item");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = a1;
    *&buf[12] = 2112;
    *&buf[14] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Request to promote keychain items for app clip '%@' to parent app '%@'", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2000000000;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2000000000;
  v37 = 1;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2000000000;
  v33 = sub_10000D9D4(kCFAllocatorDefault, v5, v6, v7, v8, v9, v10, v11, kSecAttrAccessGroup, a1);
  v19 = sub_10000DA5C(kCFAllocatorDefault, v12, v13, v14, v15, v16, v17, v18, @"clip", kCFBooleanFalse);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 0x40000000;
  v29[2] = sub_10000DB50;
  v29[3] = &unk_100059C40;
  v29[4] = buf;
  v29[5] = &v30;
  v29[6] = &v34;
  v29[7] = v19;
  v20 = sub_10001992C(1, 0, *&buf[8] + 24, v29);
  *(v35 + 24) &= v20;
  v21 = v31[3];
  if (v21)
  {
    v31[3] = 0;
    CFRelease(v21);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  v22 = *(v35 + 24);
  v23 = secLogObjForScope("item");
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  if (v22 == 1)
  {
    if (v24)
    {
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Promotion reports success, now deleting leftover app clip items", v38, 2u);
    }

    Code = sub_10000D2A0(a1);
  }

  else
  {
    if (v24)
    {
      v26 = *(*&buf[8] + 24);
      *v38 = 138412290;
      v39 = v26;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "App clip item promotion failed: %@", v38, 0xCu);
    }

    Code = CFErrorGetCode(*(*&buf[8] + 24));
    v27 = *(*&buf[8] + 24);
    if (v27)
    {
      *(*&buf[8] + 24) = 0;
      CFRelease(v27);
    }
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(buf, 8);
  return Code;
}

__CFDictionary *sub_10000D9D4(const __CFAllocator *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *key, uint64_t a10)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v15 = &a10;
  v11 = key;
  if (key)
  {
    do
    {
      v12 = v15;
      v16 = v15 + 1;
      if (*v12)
      {
        CFDictionarySetValue(Mutable, v11, *v12);
      }

      v13 = v16;
      v15 = v16 + 1;
      v11 = *v13;
    }

    while (*v13);
  }

  return Mutable;
}

CFDictionaryRef sub_10000DA5C(CFAllocatorRef allocator, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v22 = &a10;
  v11 = 0;
  if (a9)
  {
    do
    {
      v11 += 2;
      v12 = v22;
      v22 += 2;
    }

    while (v12[1]);
  }

  v13 = v11 >> 1;
  v23 = &a9;
  Mutable = CFDictionaryCreateMutable(allocator, v11 >> 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    return 0;
  }

  v15 = Mutable;
  if (v11)
  {
    do
    {
      v16 = v23;
      v17 = *v23;
      v23 += 2;
      v18 = v16[1];
      if (v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = kCFNull;
      }

      CFDictionarySetValue(v15, v17, v19);
      --v13;
    }

    while (v13);
  }

  Copy = CFDictionaryCreateCopy(allocator, v15);
  CFRelease(v15);
  return Copy;
}

uint64_t sub_10000DB50(int8x16_t *a1, uint64_t a2)
{
  v6[0] = _NSConcreteStackBlock;
  v2 = vextq_s8(a1[2], a1[2], 8uLL);
  v3 = *(a1[2].i64[0] + 8);
  v6[1] = 0x40000000;
  v6[2] = sub_10000DBE4;
  v6[3] = &unk_100059C18;
  v7 = v2;
  v4 = a1[3].i64[1];
  v8 = a1[3].i64[0];
  v9 = a2;
  v10 = v4;
  return sub_100009178(a2, 2, (v3 + 24), v6);
}

uint64_t sub_10000DBE4(uint64_t a1)
{
  v2 = sub_100017114();
  v3 = *(v2 + 8);
  if (v3)
  {
    v4 = (v2 + 16);
    do
    {
      if (*(v3 + 8) == 1)
      {
        CFDictionarySetValue(*(*(*(a1 + 32) + 8) + 24), kSecClass, *v3);
        v5 = *(*(*(a1 + 32) + 8) + 24);
        v6 = sub_100029330();
        v7 = sub_10002A574(v5, v6, -1, 0, (*(*(a1 + 40) + 8) + 24));
        if (v7)
        {
          v8 = v7;
          v19[0] = _NSConcreteStackBlock;
          v9 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
          v10 = *(*(a1 + 40) + 8);
          v19[1] = 0x40000000;
          v19[2] = sub_10000DEAC;
          v19[3] = &unk_100059BF0;
          v11 = *(a1 + 56);
          v20 = v9;
          v21 = vextq_s8(v11, v11, 8uLL);
          *(*(*(a1 + 48) + 8) + 24) &= sub_100004958(v7, v11.i64[0], (v10 + 24), 0, &stru_100059BA8, 0, 0, v19);
          sub_100029F58(v8, 0);
        }

        else
        {
          v12 = secLogObjForScope("SecError");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = **(v4 - 1);
            v14 = *(*(*(a1 + 40) + 8) + 24);
            *buf = 138412546;
            v23 = v13;
            v24 = 2112;
            v25 = v14;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "AppcClipPromotion: unable to create query for class %@: %@", buf, 0x16u);
          }

          v15 = *(*(a1 + 40) + 8);
          v16 = *(v15 + 24);
          if (v16)
          {
            *(v15 + 24) = 0;
            CFRelease(v16);
          }
        }
      }

      v17 = *v4++;
      v3 = v17;
    }

    while (v17);
  }

  return *(*(*(a1 + 48) + 8) + 24);
}

BOOL sub_10000DE30(id a1, const SecDbAttr *a2)
{
  var0 = a2->var0;
  if (!a2->var0)
  {
    v5 = kSecAttrAccessGroup;
    return var0 == v5;
  }

  if (CFEqual(var0, @"clip"))
  {
    return 1;
  }

  var0 = a2->var0;
  v5 = kSecAttrAccessGroup;
  if (!a2->var0 || !kSecAttrAccessGroup)
  {
    return var0 == v5;
  }

  return CFEqual(var0, kSecAttrAccessGroup) != 0;
}

void sub_10000DEAC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  cf = 0;
  if (!sub_100001CF0(a2, 1, &cf))
  {
    goto LABEL_13;
  }

  v6 = sub_100003838(a2, *(a1 + 48), &cf);
  v7 = v6;
  if (cf || (sub_100003F9C(v6, &cf), cf))
  {
LABEL_11:
    if (!v7)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v8 = *(a1 + 56);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 0x40000000;
  v19[2] = sub_10000E150;
  v19[3] = &unk_100059BC8;
  v19[4] = v7;
  if ((sub_100004694(v7, v8, &cf, v19) & 1) == 0)
  {
    if (!sub_100004630(cf))
    {
      v10 = 0;
      goto LABEL_10;
    }

    v9 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v9);
    }
  }

  v10 = 1;
LABEL_10:
  v11 = secLogObjForScope("item");
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_11;
  }

  sub_10003E328(v10, v11);
  if (v7)
  {
LABEL_12:
    CFRelease(v7);
  }

LABEL_13:
  if (cf)
  {
    Code = CFErrorGetCode(cf);
    if (Code == -25330 || Code == -26275)
    {
      v14 = secLogObjForScope("item");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109379;
        v22 = Code;
        v23 = 2113;
        v24 = a2;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Unable (%i) to promote item: %{private}@", buf, 0x12u);
      }
    }

    else
    {
      v15 = secLogObjForScope("item");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109379;
        v22 = Code;
        v23 = 2113;
        v24 = a2;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Encountered error %i during promotion: %{private}@", buf, 0x12u);
      }

      *(*(*(a1 + 32) + 8) + 24) = 0;
    }
  }

  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v17 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v17);
    }
  }

  else
  {
    *a3 = 1;
    if (cf)
    {
      v18 = *(*(a1 + 40) + 8);
      if (!*(v18 + 24))
      {
        *(v18 + 24) = cf;
      }
    }
  }
}

CFTypeRef sub_10000E150(CFTypeRef result, uint64_t a2, void *a3)
{
  v4 = *(result + 4);
  if (v4)
  {
    result = CFRetain(*(result + 4));
  }

  *a3 = v4;
  return result;
}

__CFDictionary *sub_10000E184(uint64_t a1, uint64_t a2, int *a3, int a4, __CFString **a5)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  cf = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v45 = 0u;
  memset(v44, 0, sizeof(v44));
  v10 = &dword_1000739E8;
  DWORD2(v49) = dword_1000739E8;
  theDict = Mutable;
  if (!Mutable)
  {
    if (a5 && !*a5)
    {
      SecError(-108, a5, @"Can't create keychain dictionary");
    }

    v14 = 0;
    goto LABEL_56;
  }

  LODWORD(v45) = 11;
  *(&v48 + 1) = -1;
  WORD4(v51) = 257;
  v41 = a4;
  if (a4 == 2 && (SOSCCIsSOSTrustAndSyncingEnabled() & 1) == 0)
  {
    v11 = secLogObjForScope("item");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "SOS is disabled, Skipping backing up tombstones", buf, 2u);
    }

    BYTE10(v51) = 1;
    a4 = 2;
  }

  v37 = a5;
  if (!a2 || *(a2 + 36) != 1)
  {
    *&cf = sub_100029270();
    CFRetain(cf);
    if (a3)
    {
      v13 = sub_10000E80C(*a3, 0);
    }

    else
    {
      v15 = dword_1000739E8;
      memset(uu, 170, 16);
      uuid = aks_kc_backup_get_uuid(dword_1000739E8, uu);
      if (uuid)
      {
        v17 = uuid;
        v18 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *&buf[4] = v15;
          *&buf[8] = 1024;
          *&buf[10] = v17;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "keybag-uuid: could not determine backup keybag UUID for %d: %d", buf, 0xEu);
        }

        a4 = v41;
        goto LABEL_22;
      }

      memset(buf, 0, 37);
      uuid_unparse_lower(uu, buf);
      v13 = CFStringCreateWithCString(0, buf, 0x8000100u);
    }

    if (v13)
    {
      v38 = v13;
      CFDictionarySetValue(theDict, @"keybag-uuid", v13);
LABEL_23:
      v12 = 0;
      goto LABEL_24;
    }

LABEL_22:
    v38 = 0;
    goto LABEL_23;
  }

  v38 = 0;
  *&cf = sub_1000293F4(*(a2 + 20));
  v12 = 1;
LABEL_24:
  v69[0] = sub_10001712C();
  v69[1] = sub_100017208();
  v69[2] = sub_100017224();
  v19 = 0;
  v69[3] = sub_100017240();
  v20 = a3 == 0;
  if (a3)
  {
    v10 = a3;
  }

  v21 = "non-";
  if (a4 == 1)
  {
    v21 = "";
  }

  v40 = v21;
  while (1)
  {
    *&v44[0] = v69[v19];
    v65 = 0xAAAAAAAAAAAAAAAALL;
    v66 = 0xAAAAAAAAAAAAAAAALL;
    *&buf[32] = 0xAAAAAAAAAAAAAAAALL;
    *buf = v44;
    *&buf[8] = 0;
    *&buf[16] = a1;
    *&buf[24] = 0;
    v22 = *v10;
    *&buf[32] = 0;
    LODWORD(v65) = v22;
    BYTE4(v65) = v20;
    LODWORD(v66) = a4;
    BYTE4(v66) = v12;
    v67 = 0;
    v68 = 0;
    v23 = secLogObjForScope("item");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = **&v44[0];
      *uu = 136315394;
      *&uu[4] = v40;
      *&uu[12] = 2112;
      *&uu[14] = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "exporting %ssysbound class '%@'", uu, 0x16u);
    }

    err = 0;
    if (!sub_10000A868(sub_10000E920, buf, &err))
    {
      break;
    }

    v25 = secLogObjForScope("item");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = **&v44[0];
      Count = CFArrayGetCount(*&buf[24]);
      *uu = 138413058;
      *&uu[4] = v26;
      a4 = v41;
      *&uu[12] = 2048;
      *&uu[14] = Count;
      v60 = 2048;
      v61 = v67;
      v62 = 2048;
      v63 = v68;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "exporting class '%@' complete: %ld items exported (%zu skips, %zu failures)", uu, 0x2Au);
    }

    if (CFArrayGetCount(*&buf[24]))
    {
      v28 = **&v44[0];
      CFArrayGetCount(*&buf[24]);
      if (CFStringGetLength(v28) == 4)
      {
        memset(uu, 170, 5);
        if (CFStringGetCString(v28, uu, 5, 0x8000100u))
        {
          kdebug_trace();
        }
      }

      CFDictionaryAddValue(theDict, **&v44[0], *&buf[24]);
      a4 = v41;
    }

LABEL_43:
    v31 = *&buf[24];
    if (*&buf[24])
    {
      *&buf[24] = 0;
      CFRelease(v31);
    }

    if (++v19 == 4)
    {
      v14 = v38;
      goto LABEL_57;
    }
  }

  if (CFErrorGetCode(err) == -25300)
  {
    v29 = secLogObjForScope("item");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = **&v44[0];
      *uu = 138412290;
      *&uu[4] = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "exporting class '%@' complete (no items)", uu, 0xCu);
    }

    CFRelease(err);
    goto LABEL_43;
  }

  v32 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = **&v44[0];
    *uu = 138412546;
    *&uu[4] = v33;
    *&uu[12] = 2112;
    *&uu[14] = err;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "exporting class '%@' failed: %@", uu, 0x16u);
  }

  if (v37)
  {
    if (*v37)
    {
      CFRelease(*v37);
    }

    *v37 = err;
  }

  else
  {
    CFRelease(err);
  }

  CFRelease(theDict);
  v34 = *&buf[24];
  v14 = v38;
  if (*&buf[24])
  {
    *&buf[24] = 0;
    CFRelease(v34);
  }

LABEL_56:
  theDict = 0;
LABEL_57:
  v35 = cf;
  if (cf)
  {
    *&cf = 0;
    CFRelease(v35);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return theDict;
}

CFStringRef sub_10000E80C(uint64_t a1, uint64_t a2)
{
  v7[0] = 0xAAAAAAAAAAAAAAAALL;
  v7[1] = 0xAAAAAAAAAAAAAAAALL;
  if (a2)
  {
    uuid_copy(v7, (a2 + 32));
LABEL_3:
    memset(out, 0, sizeof(out));
    uuid_unparse_lower(v7, out);
    return CFStringCreateWithCString(0, out, 0x8000100u);
  }

  v3 = a1;
  bag_uuid = aks_get_bag_uuid(a1, v7);
  if (!bag_uuid)
  {
    goto LABEL_3;
  }

  v5 = bag_uuid;
  v6 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *out = 67109376;
    *&out[4] = v3;
    *&out[8] = 1024;
    *&out[10] = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "keybag-uuid: could not determine keybag UUID for %d: %d", out, 0xEu);
  }

  return 0;
}

void sub_10000E920(sqlite3_stmt *a1, uint64_t a2)
{
  v4 = *a2;
  cf = 0;
  v64 = 0;
  v5 = sqlite3_column_int64(a1, 0);
  theDict = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v61 = 0;
  v7 = sub_10003E210(a1, v4, 1, *(a2 + 8), &theDict, &v64, &v61, &cf);
  MutableCopy = 0;
  if (v7)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
    data = (*v4)->data;
    if (data)
    {
      p_length = &(*v4)->length;
      do
      {
        if ((data[16] & 0x20) != 0)
        {
          v11 = CFDictionaryGetValue(MutableCopy, *data);
          if (v11)
          {
            CFDictionarySetValue(Mutable, *data, v11);
            CFDictionaryRemoveValue(MutableCopy, *data);
          }
        }

        v12 = *p_length++;
        data = v12;
      }

      while (v12);
    }
  }

  if (!v64)
  {
    v15 = (v61 & 0x1F) == 12;
    goto LABEL_14;
  }

  Protection = SecAccessControlGetProtection();
  if (!Protection || !kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly)
  {
    v15 = Protection == kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly;
LABEL_14:
    v14 = v15;
    goto LABEL_17;
  }

  v14 = CFEqual(Protection, kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly) != 0;
LABEL_17:
  if (theDict)
  {
    v16 = v7;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16 == 1 && CFDictionaryContainsKey(theDict, kSecAttrTokenID) != 0;
  v18 = (v14 || v17) && *(a2 + 48) == 2;
  v19 = theDict;
  if (theDict)
  {
    v20 = v7;
  }

  else
  {
    v20 = 0;
  }

  if (v20 != 1 || v18)
  {
    if ((v20 & 1) == 0)
    {
      OSStatus = SecErrorGetOSStatus();
      if (OSStatus == -25308 && v14)
      {
        if (v18)
        {
          ++*(a2 + 56);
        }

        else
        {
          ++*(a2 + 64);
          v45 = secLogObjForScope("SecError");
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            v46 = *(a2 + 48);
            *buf = 67109378;
            *v66 = v46;
            *&v66[4] = 2112;
            *&v66[6] = cf;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Encountered akpu item we cannot export (filter %d), skipping. %@", buf, 0x12u);
          }

          if (sqlite3_column_count(a1) >= 3)
          {
            v47 = sqlite3_column_text(a1, 2);
            v48 = CFStringCreateWithCString(kCFAllocatorDefault, v47, 0x8000100u);
            if (v48)
            {
              v56 = v48;
              v57 = sub_10000DA5C(0, v49, v50, v51, v52, v53, v54, v55, @"agrp", v48);
              SecABCTrigger();
              if (v57)
              {
                CFRelease(v57);
              }

              CFRelease(v56);
            }
          }
        }
      }

      else
      {
        v38 = OSStatus;
        ++*(a2 + 64);
        v39 = secLogObjForScope("item");
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          sub_10003E3A0(&cf, v5, v39);
        }

        if (v38 != -26275)
        {
          v40 = v4[5];
          if (v40)
          {
            CFRelease(v40);
          }

          v4[5] = cf;
          goto LABEL_84;
        }
      }

      v44 = cf;
      if (!cf)
      {
        goto LABEL_84;
      }

      cf = 0;
      goto LABEL_83;
    }

    v25 = secLogObjForScope("item");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *v66 = v5;
      *&v66[8] = 1024;
      *&v66[10] = v18;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "export rowid %llu skipped. akpu/token: %i", buf, 0x12u);
    }

    goto LABEL_41;
  }

  v21 = *(a2 + 48);
  if (v21)
  {
    if ((v21 != 1) != sub_10000C9CC(theDict, &(*v4)->isa, *(a2 + 52)))
    {
      v19 = theDict;
      goto LABEL_34;
    }

LABEL_41:
    ++*(a2 + 56);
    goto LABEL_84;
  }

LABEL_34:
  v22 = CFDictionaryGetValue(v19, kSecAttrPersistentReference);
  if (SecKeychainIsStaticPersistentRefsEnabled() && v22 && CFDataGetLength(v22) == 16)
  {
    isa = (*v4)->isa;
    UUIDBasedPersistentRef = _SecItemCreateUUIDBasedPersistentRef();
  }

  else
  {
    if (SecKeychainIsStaticPersistentRefsEnabled())
    {
      v26 = secLogObjForScope("pref");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v66 = v5;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "s3dl_export_row: Creating old persistent ref for %llu", buf, 0xCu);
      }
    }

    v27 = (*v4)->isa;
    UUIDBasedPersistentRef = _SecItemCreatePersistentRef();
  }

  v28 = UUIDBasedPersistentRef;
  if (UUIDBasedPersistentRef)
  {
    if (*(a2 + 40) != -1)
    {
      v29 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v30 = (*v4)->data;
      if (v30)
      {
        v31 = &(*v4)->length;
        do
        {
          if ((v30[17] & 0x20) != 0)
          {
            v32 = CFDictionaryGetValue(MutableCopy, *v30);
            if (v32)
            {
              CFDictionaryAddValue(v29, *v30, v32);
              CFDictionaryRemoveValue(MutableCopy, *v30);
            }
          }

          v33 = *v31++;
          v30 = v33;
        }

        while (v33);
      }

      value = 0;
      v34 = (v4 + 5);
      v35 = sub_100021F54(*(a2 + 40), v64, v4[18], Mutable, MutableCopy, v29, &value, 0, *(a2 + 44), v4 + 5);
      CFDictionaryRemoveAllValues(theDict);
      CFRelease(v29);
      if (v35)
      {
        CFDictionarySetValue(theDict, kSecValueData, value);
        v36 = value;
        if (!value)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v41 = secLogObjForScope("SecCritical");
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = (*v4)->isa;
          v43 = v4[5];
          *buf = 138412802;
          *v66 = v42;
          *&v66[8] = 2048;
          *&v66[10] = v5;
          v67 = 2112;
          v68 = v43;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "ks_encrypt_data %@,rowid=%lld: failed: %@", buf, 0x20u);
        }

        v36 = *v34;
        if (!*v34)
        {
          goto LABEL_71;
        }

        *v34 = 0;
      }

      CFRelease(v36);
    }

LABEL_71:
    if (CFDictionaryGetCount(theDict))
    {
      CFDictionarySetValue(theDict, kSecValuePersistentRef, v28);
      CFArrayAppendValue(*(a2 + 24), theDict);
      ++*(a2 + 32);
    }

    v44 = v28;
LABEL_83:
    CFRelease(v44);
  }

LABEL_84:
  v58 = v64;
  if (v64)
  {
    v64 = 0;
    CFRelease(v58);
  }

  v59 = theDict;
  if (theDict)
  {
    theDict = 0;
    CFRelease(v59);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t sub_10000EFFC(int a1, CFStringRef theString)
{
  result = CFStringGetLength(theString);
  if (result == 4)
  {
    memset(buffer, 170, 5);
    result = CFStringGetCString(theString, buffer, 5, 0x8000100u);
    if (result)
    {
      return kdebug_trace();
    }
  }

  return result;
}

uint64_t sub_10000F08C(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, const __CFDictionary *a6, int a7, int a8, __CFString **a9)
{
  v16 = a9;
  if (a7 == 2)
  {
    LODWORD(buf) = -1;
    v17 = 1;
    v18 = sub_10000E184(a1, a2, &buf, 1, a9);
    if (!v18)
    {
      return v17;
    }
  }

  else
  {
    v18 = 0;
  }

  cf1 = sub_10000E80C(a3, a4);
  if (cf1)
  {
    Value = CFDictionaryGetValue(a6, @"keybag-uuid");
    if (Value)
    {
      v20 = Value;
      v21 = a6;
      v22 = CFGetTypeID(Value);
      v23 = v22 == CFStringGetTypeID();
      a6 = v21;
      v16 = a9;
      if (v23 && !CFEqual(cf1, v20))
      {
        v27 = cf1;
        SecError(-26275, a9, @"Keybag UUID (%@) mismatch with backup (%@)", cf1, v20);
LABEL_42:
        v17 = 1;
        goto LABEL_43;
      }
    }
  }

  theDict = a6;
  if (*(a2 + 36) != 1)
  {
    if (a8)
    {
      v26 = secLogObjForScope("SecWarning");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "SecServerDeleteAll", &buf, 2u);
      }

      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 0x40000000;
      v58 = sub_100010540;
      v59[0] = &unk_100059DD0;
      v24 = a1;
      v59[1] = a1;
      v59[2] = v16;
      if ((sub_100009178(a1, 2, v16, &buf) & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_29;
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v58 = 0x2000000000;
    v59[0] = 0;
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 0x40000000;
    v54[2] = sub_10000F5D0;
    v54[3] = &unk_100059C68;
    v54[4] = &buf;
    v54[5] = a1;
    v24 = a1;
    if (sub_100009178(a1, 2, v59, v54))
    {
      v28 = secLogObjForScope("restore");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *v55 = 0;
        v29 = "Successfully deleted nonsyncable items";
        v30 = v28;
        v31 = 2;
LABEL_25:
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v29, v55, v31);
      }
    }

    else
    {
      v32 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = *(*(&buf + 1) + 24);
        *v55 = 138412290;
        v56 = v33;
        v29 = "Unable to delete nonsyncable items prior to keychain restore: %@";
        v30 = v32;
        v31 = 12;
        goto LABEL_25;
      }
    }

    v34 = *(*(&buf + 1) + 24);
    if (v34)
    {
      *(*(&buf + 1) + 24) = 0;
      CFRelease(v34);
    }

    _Block_object_dispose(&buf, 8);
LABEL_29:
    v47 = -1431655766;
    v50 = -1431655766;
    context = v24;
    cf = 0;
    v46 = a3;
    v48 = a4;
    v49 = a5;
    v51 = a2;
    v53 = -1431655766;
    v52 = a7;
    v35 = secLogObjForScope("SecWarning");
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      Count = CFDictionaryGetCount(theDict);
      LODWORD(buf) = 134217984;
      *(&buf + 4) = Count;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Restoring backup items '%ld'", &buf, 0xCu);
    }

    CFDictionaryApplyFunction(theDict, sub_10000F670, &context);
    v27 = cf1;
    if (v18)
    {
      v46 = -1;
      v48 = 0;
      v52 = 1;
      v37 = secLogObjForScope("SecWarning");
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = CFDictionaryGetCount(v18);
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v38;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Restoring sysbound items '%ld'", &buf, 0xCu);
      }

      CFDictionaryApplyFunction(v18, sub_10000F670, &context);
    }

    v39 = cf;
    if (cf)
    {
      if (v16)
      {
        if (*v16)
        {
          CFRelease(*v16);
          v39 = cf;
        }

        v17 = 0;
        *v16 = v39;
      }

      else
      {
        CFRelease(cf);
        v17 = 0;
      }

      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v17 = sub_1000293F4(*(a2 + 20));
  if (v17)
  {
    v24 = a1;
    v25 = sub_10000CF74(a1, v17, 1, v16);
    CFRelease(v17);
    if ((v25 & 1) == 0)
    {
LABEL_18:
      v17 = 0;
      goto LABEL_19;
    }

    goto LABEL_29;
  }

LABEL_19:
  v27 = cf1;
LABEL_43:
  if (v18)
  {
    CFRelease(v18);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  return v17;
}

uint64_t sub_10000F5D0(uint64_t a1)
{
  v2 = SecDbExec(*(a1 + 40), @"DELETE FROM genp WHERE sync = 0 AND NOT agrp IN ('com.apple.security.sos', 'com.apple.security.sos-usercredential', 'com.apple.security.ckks', 'com.apple.security.egoIdentities', 'com.apple.security.octagon') AND NOT ggrp <> '';", (*(*(a1 + 32) + 8) + 24));
  v3 = v2 & SecDbExec(*(a1 + 40), @"DELETE FROM inet WHERE sync = 0 AND NOT agrp IN ('com.apple.security.sos', 'com.apple.security.sos-usercredential', 'com.apple.security.ckks', 'com.apple.security.egoIdentities', 'com.apple.security.octagon') AND NOT ggrp <> '';", (*(*(a1 + 32) + 8) + 24));
  v4 = SecDbExec(*(a1 + 40), @"DELETE FROM cert WHERE sync = 0 AND NOT agrp IN ('com.apple.security.sos', 'com.apple.security.sos-usercredential', 'com.apple.security.ckks', 'com.apple.security.egoIdentities', 'com.apple.security.octagon') AND NOT ggrp <> '';", (*(*(a1 + 32) + 8) + 24));
  return v3 & v4 & SecDbExec(*(a1 + 40), @"DELETE FROM keys WHERE sync = 0 AND NOT agrp IN ('com.apple.security.sos', 'com.apple.security.sos-usercredential', 'com.apple.security.ckks', 'com.apple.security.egoIdentities', 'com.apple.security.octagon') AND NOT ggrp <> '';", (*(*(a1 + 32) + 8) + 24));
}

void sub_10000F670(CFTypeRef cf, const void *a2, uint64_t a3)
{
  v3 = (a3 + 8);
  if (*(a3 + 8))
  {
    return;
  }

  if (!cf || (v7 = CFGetTypeID(cf), v7 != CFStringGetTypeID()))
  {
    SecError(-50, v3, @"class name %@ is not a string", cf);
    return;
  }

  if (CFEqual(cf, @"keybag-uuid"))
  {
    return;
  }

  v8 = sub_100029700(cf);
  if (!v8)
  {
    v16 = secLogObjForScope("SecWarning");
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 138412290;
    v28 = cf;
    v17 = "Ignoring unknown key class '%@'";
    v18 = v16;
    v19 = 12;
    goto LABEL_25;
  }

  v9 = v8;
  if (v8 != sub_10001725C())
  {
    context[0] = v9;
    context[1] = a3;
    if (a2)
    {
      v10 = CFGetTypeID(a2);
      if (v10 == CFArrayGetTypeID())
      {
        v11 = secLogObjForScope("SecWarning");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          Count = CFArrayGetCount(a2);
          v13 = *(a3 + 48);
          *buf = 134218498;
          v28 = Count;
          v29 = 2112;
          v30 = cf;
          v31 = 1024;
          v32 = v13;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Import %ld items of class %@ (filter %d)", buf, 0x1Cu);
        }

        v14 = *v9;
        CFArrayGetCount(a2);
        v15 = *(a3 + 48);
        sub_10000EFFC(4098, v14);
        v34.length = CFArrayGetCount(a2);
        v34.location = 0;
        CFArrayApplyFunction(a2, v34, sub_1000105CC, context);
        return;
      }
    }

    v20 = sub_100010C50(a2);
    v21 = secLogObjForScope("SecWarning");
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      if (v22)
      {
        v23 = *(a3 + 48);
        *buf = 134218498;
        v28 = 1;
        v29 = 2112;
        v30 = cf;
        v31 = 1024;
        v32 = v23;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Import %ld items of class %@ (filter %d)", buf, 0x1Cu);
      }

      v24 = *(a3 + 48);
      sub_10000EFFC(4098, *v9);
      sub_1000105CC(a2, context);
      return;
    }

    if (!v22)
    {
      return;
    }

    v25 = *(a3 + 48);
    *buf = 138412546;
    v28 = cf;
    v29 = 1024;
    LODWORD(v30) = v25;
    v17 = "Unknown value type for class %@ (filter %d)";
    v18 = v21;
    v19 = 18;
LABEL_25:
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
    return;
  }

  SecError(-50, v3, @"attempt to import an identity");
}

const void *sub_10000F9C0(const __CFDictionary *a1, __CFString **a2)
{
  Value = CFDictionaryGetValue(a1, @"keybag-uuid");
  if (!Value || (v4 = Value, v5 = CFGetTypeID(Value), v5 != CFStringGetTypeID()))
  {
    SecError(-26275, a2, @"Missing or invalid %@ in backup dictionary", @"keybag-uuid");
    return 0;
  }

  return v4;
}

BOOL sub_10000FA3C(const void *a1, int a2)
{
  err = 0;
  cf[1] = 0;
  v16 = 0u;
  v14 = 0u;
  cf[0] = a1;
  DWORD2(v16) = a2;
  v20[0] = sub_10001712C();
  v20[1] = sub_100017208();
  v20[2] = sub_100017240();
  v2 = 0;
  v3 = 0;
  v20[3] = sub_100017224();
  do
  {
    v4 = v20[v3];
    v5 = sub_10002A0E4(v4, 0, 0, 0, &err);
    if (!v5)
    {
      break;
    }

    v6 = v5;
    *&v14 = v5;
    v5[13] = -1;
    v7 = sub_10000A868(sub_10000FBF8, &v14, &err);
    sub_100029F58(v6, 0);
    v8 = cf[1];
    if (cf[1])
    {
      cf[1] = 0;
      CFRelease(v8);
    }

    if (err)
    {
      v9 = v7;
    }

    else
    {
      v9 = 1;
    }

    if ((v9 & 1) != 0 || CFErrorGetCode(err) != -25300)
    {
      v11 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *v4;
        *buf = 138412290;
        v19 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Class %@ not up to date", buf, 0xCu);
      }

      return v2;
    }

    v10 = err;
    if (err)
    {
      err = 0;
      CFRelease(v10);
    }

    v2 = v3++ > 2;
  }

  while (v3 != 4);
  return v2;
}

void sub_10000FBF8(sqlite3_stmt *a1, _DWORD *a2)
{
  v3 = a2[10];
  v4 = sub_1000103D8(a1, 1);
  if (!v4)
  {
    ++a2[8];
    return;
  }

  v5 = v4;
  Length = CFDataGetLength(v4);
  BytePtr = CFDataGetBytePtr(v5);
  if (Length < 8)
  {
    SecError(-26275, (*a2 + 40), @"check_generation: Check for underflow");
LABEL_5:
    ++a2[8];
    goto LABEL_6;
  }

  if ((v3 != 0) == *(BytePtr + 1) < 0x20u)
  {
    goto LABEL_5;
  }

LABEL_6:

  CFRelease(v5);
}

uint64_t sub_10000FCC0(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_10000FD34;
  v4[3] = &unk_100059CB0;
  v4[4] = a3;
  v4[5] = a1;
  v4[6] = a2;
  return SecDbTransaction(a1, 2, a3, v4);
}

void sub_10000FD34(uint64_t a1, _BYTE *a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v8 = -1431655766;
  if (!aks_generation(dword_1000739E8, 0, &v8) && (v8 & 2) != 0)
  {
    v5 = *(a1 + 32);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = sub_10000FE54;
    v6[3] = &unk_100059C90;
    v6[4] = &v9;
    v7 = *(a1 + 40);
    v4 = SecAKSDoWithKeybagLockAssertion(dword_1000739E8, v5, v6);
    if (v4)
    {
      LOBYTE(v4) = *(v10 + 24);
    }

    else
    {
      *(v10 + 24) = 0;
    }
  }

  else
  {
    LOBYTE(v4) = SecError(-909, *(a1 + 32), @"No key roll in progress.");
    *(v10 + 24) = v4;
  }

  *a2 = v4;
  _Block_object_dispose(&v9, 8);
}

void sub_10000FE54(void *a1)
{
  cf = 0;
  v8 = -1;
  v2 = sub_10000E184(a1[5], 0, &v8, 0, &cf);
  if (v2)
  {
    v3 = v2;
    if (cf)
    {
      v4 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v11 = cf;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Ignoring export error: %@ during roll export", buf, 0xCu);
      }

      v5 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v5);
      }
    }

    *(*(a1[4] + 8) + 24) = sub_10000F08C(a1[5], a1[6], 0xFFFFFFFFLL, 0, dword_1000739E8, v3, 0, 1, &cf);
    if (cf)
    {
      v6 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v11 = cf;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Ignoring export error: %@ during roll export", buf, 0xCu);
      }

      v7 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v7);
      }
    }

    CFRelease(v3);
  }
}

void sub_100010010(__CFString *a1, const __CFString *a2, CFArrayRef theArray, _BYTE *a4)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count)
    {
      v8 = Count;
      sub_100003A64(a1, a4);
      CFStringAppend(a1, a2);
      CFStringAppend(a1, @" IN (?");
      if (v8 >= 2)
      {
        v9 = v8 - 1;
        do
        {
          CFStringAppend(a1, @",?");
          --v9;
        }

        while (v9);
      }

      CFStringAppend(a1, @""));
    }
  }
}

void sub_1000100D0(__CFString *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (a3 >= 1)
  {
    sub_100003A64(a1, a4);
    CFStringAppendFormat(a1, 0, @"%@=%lld", a2, a3);
  }
}

void sub_100010134(__CFString *a1, uint64_t a2, _BYTE *a3)
{
  v6 = sub_100002E28(a2);
  if (v6 >= 1)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      v9 = sub_1000296E8(a2, i);
      sub_100003AC4(a1, v9, a3);
    }
  }
}

void sub_1000101AC(__CFString *a1, uint64_t a2, _BYTE *a3)
{
  sub_100003A64(a1, a3);
  if (sub_10002955C(*(a2 + 128), 0))
  {
    v5 = @"(musr = ? OR musr = ?)";
  }

  else
  {
    if (sub_1000293A4(*(a2 + 128)))
    {
      return;
    }

    v6 = *(a2 + 128);
    if (v6)
    {
      CFGetTypeID(v6);
      CFNullGetTypeID();
    }

    v5 = @"musr = ?";
  }

  CFStringAppend(a1, v5);
}

uint64_t sub_100010238(uint64_t a1, sqlite3_stmt *a2)
{
  v11 = 1;
  v4 = **(a1 + 32);
  if (v4 != sub_10001725C() || (result = sub_10000A270(a2, *(a1 + 40), &v11, *(a1 + 48)), result))
  {
    result = sub_10000A35C(a2, *(a1 + 32), *(a1 + 40), &v11, *(a1 + 48));
    if (result)
    {
      v7 = *(a1 + 48);
      v6 = *(a1 + 56);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 0x40000000;
      v10[2] = sub_100010324;
      v10[3] = &unk_100059CD0;
      v8 = *(a1 + 72);
      v10[4] = *(a1 + 64);
      v10[5] = a2;
      v9 = *(a1 + 32);
      v10[6] = v8;
      v10[7] = v9;
      v10[8] = *(a1 + 80);
      SecDbForEach(v6, a2, v7, v10);
      return 1;
    }
  }

  return result;
}

BOOL sub_100010324(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 56);
  v3 = *(v2 + 40);
  if (v3)
  {
    Code = CFErrorGetCode(v3);
    v5 = Code == -25330;
    v2 = *(a1 + 56);
    if (*(v2 + 152) == 1 && Code == -25330)
    {
      v7 = *(v2 + 40);
      if (v7)
      {
        *(v2 + 40) = 0;
        CFRelease(v7);
        v2 = *(a1 + 56);
      }

      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = *(v2 + 104);
  return (v8 == -1 || v8 > *(*(a1 + 64) + 32)) && (*(v2 + 40) == 0 || v5);
}

CFDataRef sub_1000103D8(sqlite3_stmt *a1, int a2)
{
  v4 = sqlite3_column_blob(a1, a2);
  v5 = sqlite3_column_bytes(a1, a2);

  return CFDataCreateWithBytesNoCopy(0, v4, v5, kCFAllocatorNull);
}

void sub_100010440(id a1)
{
  v1 = sec_action_create("ratelimiterdisabledlogevent", 1);
  qword_1000736E8 = v1;

  sec_action_set_handler(v1, &stru_100059D70);
}

void sub_100010484(id a1)
{
  v1 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109120;
    v2[1] = -25308;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "decode item failed, keychain is locked (%d)", v2, 8u);
  }
}

uint64_t sub_100010540(uint64_t a1)
{
  if (!SecDbExec(*(a1 + 32), @"DELETE from genp;", *(a1 + 40)) || !SecDbExec(*(a1 + 32), @"DELETE from inet;", *(a1 + 40)) || !SecDbExec(*(a1 + 32), @"DELETE from cert;", *(a1 + 40)))
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return SecDbExec(v2, @"DELETE from keys;", v3);
}

void sub_1000105CC(CFTypeRef cf, const void ***a2)
{
  v2 = a2[1];
  if (v2[1])
  {
    return;
  }

  if (!cf || (v5 = *(v2[5] + 36), v6 = CFGetTypeID(cf), TypeID = CFDictionaryGetTypeID(), v2 = a2[1], v6 != TypeID))
  {
    SecError(-50, v2 + 1, @"value %@ is not a dictionary", cf);
    return;
  }

  v8 = *(v2 + 4);
  v9 = v2[3];
  if (v8 == -1 && v9 == 0)
  {
    v11 = sub_10000336C(kCFAllocatorDefault, *a2, cf, *(v2 + 8), v2 + 1);
  }

  else
  {
    v11 = sub_100023CAC(*a2, cf, v8, v9, *(v2 + 8), v2 + 1);
  }

  v12 = v11;
  if (!v11)
  {
    goto LABEL_50;
  }

  if ((sub_100001CF0(v11, 1, a2[1] + 1) & 1) == 0)
  {
    goto LABEL_49;
  }

  v13 = v12[6];
  if (!v13)
  {
    goto LABEL_46;
  }

  if (*(a2[1] + 12) == 2)
  {
    if (sub_10000C9CC(v13, *a2, v5) || v5 && (Value = CFDictionaryGetValue(v12[6], kSecAttrAccessible)) != 0 && ((v15 = Value, CFEqual(Value, kSecAttrAccessibleWhenUnlockedThisDeviceOnly)) || CFEqual(v15, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly) || CFEqual(v15, kSecAttrAccessibleWhenUnlockedThisDeviceOnly) || CFEqual(v15, kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly)) || CFDictionaryContainsKey(v12[6], kSecAttrTokenID))
    {

      CFRelease(v12);
      return;
    }

    v13 = v12[6];
    if (!v13)
    {
      goto LABEL_46;
    }
  }

  v16 = CFDictionaryGetValue(v13, kSecAttrMultiUser);
  v17 = sub_1000291FC();
  if (v16)
  {
    v18 = v17 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    v19 = v16 == v17;
  }

  else
  {
    v19 = CFEqual(v16, v17) != 0;
  }

  v20 = a2[1][5];
  if (v20 && *(v20 + 36) == 1)
  {
    if (v19)
    {
      v21 = secLogObjForScope("SecWarning");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v46 = v12;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "system keychain not allowed in multi user mode for item: %{private}@", buf, 0xCu);
      }

      goto LABEL_49;
    }

    v22 = sub_1000293F4(v20[5]);
LABEL_44:
    v24 = v22;
    if (v22)
    {
      goto LABEL_45;
    }

    goto LABEL_49;
  }

  if (v19)
  {
    v22 = sub_1000291DC();
    goto LABEL_44;
  }

  v23 = sub_100029270();
  if (v23)
  {
    v24 = v23;
    CFRetain(v23);
LABEL_45:
    sub_100003054(v12, @"musr", v24, a2[1] + 1);
    CFRelease(v24);
LABEL_46:
    if (*(a2[1] + 12) != 1)
    {
      IsStaticPersistentRefsEnabled = SecKeychainIsStaticPersistentRefsEnabled();
      v26 = (a2[1] + 1);
      if (IsStaticPersistentRefsEnabled)
      {
        sub_100023E54(v12, cf, v26);
      }

      else
      {
        sub_100023D78(v12, cf, v26);
      }
    }

    if (SecKeychainIsStaticPersistentRefsEnabled())
    {
      cfa = 0;
      v34 = sub_100003D3C(v12, &cfa);
      if (cfa)
      {
        v35 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v46 = cfa;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "import: failed to get the persistent ref: %@", buf, 0xCu);
        }

        v36 = cfa;
        if (cfa)
        {
          cfa = 0;
          CFRelease(v36);
        }
      }

      if (v34 && CFDataGetLength(v34) == 16)
      {
        v37 = secLogObjForScope("import");
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138477827;
          v46 = v12;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Item already has a UUID persistent ref set: %{private}@", buf, 0xCu);
        }
      }

      else
      {
        v38 = CFUUIDCreate(kCFAllocatorDefault);
        bytes = CFUUIDGetUUIDBytes(v38);
        v39 = CFDataCreate(kCFAllocatorDefault, &bytes.byte0, 16);
        v42 = 0;
        sub_100003DD8(v12, v39, &v42);
        v40 = secLogObjForScope("import");
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138478083;
          v46 = v12;
          v47 = 2112;
          v48 = v42;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "SecServerImportItem: generated a new persistentref UUID for item %{private}@: %@", buf, 0x16u);
        }

        if (v38)
        {
          CFRelease(v38);
        }

        if (v39)
        {
          CFRelease(v39);
        }

        v41 = v42;
        if (v42)
        {
          v42 = 0;
          CFRelease(v41);
        }
      }
    }

    sub_100023A94(v12, a2[1] + 1);
    if ((sub_1000057E0(v12, *a2[1], 0, 1, a2[1] + 1) & 1) == 0)
    {
      sub_100003F9C(v12, 0);
      sub_1000057E0(v12, *a2[1], 0, 1, a2[1] + 1);
    }

    v27 = 0;
    goto LABEL_51;
  }

LABEL_49:
  CFRelease(v12);
  v12 = 0;
LABEL_50:
  v27 = 1;
LABEL_51:
  if (a2[1][1])
  {
    v28 = secLogObjForScope("SecWarning");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = **a2;
      v30 = a2[1][1];
      *buf = 138478339;
      v46 = v12;
      v47 = 2112;
      v48 = v29;
      v49 = 2112;
      v50 = v30;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Failed to import an item (%{private}@) of class '%@': %@ - ignoring error.", buf, 0x20u);
    }

    v31 = a2[1];
    v32 = v31[1];
    if (v32)
    {
      v31[1] = 0;
      CFRelease(v32);
    }
  }

  else
  {
    v33 = secLogObjForScope("import");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v46 = v12;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "imported item: %{private}@", buf, 0xCu);
    }
  }

  if ((v27 & 1) == 0)
  {
    CFRelease(v12);
  }
}

const void *sub_100010C50(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    return (v1 == CFDictionaryGetTypeID());
  }

  return result;
}

void sub_100010CF4(id a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = objc_alloc_init(KCSharingStubXPCListenerDelegate);
  v3 = qword_1000736F8;
  qword_1000736F8 = v2;

  objc_autoreleasePoolPop(v1);
}

uint64_t sub_100010DF8(const void *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, _DWORD *a6, __CFData *a7, uint64_t a8, uint64_t a9, __CFString **a10)
{
  v17 = aks_params_create();
  v58 = v17;
  theData = 0;
  v57 = 0;
  v54 = 0;
  v55 = 0;
  if (!v17)
  {

    return SecError(-108, a10, @"ks_crypt_diversify: failed to create aks_params");
  }

  v18 = v17;
  aks_params_set_data(v17, 15, a8, a9);
  aks_params_get_der(v18, &v55, &v54);
  *v52 = 0;
  __n = 0;
  v19 = a1;
  if (CFEqual(a1, @"oe"))
  {
    v20 = a2;
    v21 = aks_ref_key_create(a2, a3, 0, v55, v54, &v57);
    if (!v21)
    {
      v21 = aks_ref_key_wrap(v57, v55, v54, a5, a4, v52, &__n);
      if (!v21)
      {
        cf = 0xAAAAAAAAAAAAAAAALL;
        blob = aks_ref_key_get_blob(v57, &cf);
        v23 = a10;
        if (blob)
        {
          if (!sub_1000112B4(*v52, __n, blob, cf, a7))
          {
            if (v55)
            {
              free(v55);
            }

            aks_params_free(&v58);
            v47 = a3;
            v48 = a2;
            v46 = "encrypt";
            v42 = @"ks_crypt_diversify: failed to '%s' item (class %d, bag: %d) Item can't be encrypted due to merge failed, so drop the item.";
            goto LABEL_62;
          }

          *a6 = a3;
        }

        v24 = 0;
        goto LABEL_30;
      }
    }

    v24 = v21;
  }

  else
  {
    v20 = a2;
    if (CFEqual(a1, @"od") || CFEqual(a1, @"odel"))
    {
      v28 = a4;
      v23 = a10;
      if ((sub_100011408(a2, a5, v28, &v57, &theData, a10, v26, v27) & 1) == 0)
      {
        if (v55)
        {
          free(v55);
        }

        aks_params_free(&v58);
        v46 = a2;
        v42 = @"ks_crypt_diversify: failed to create ref key with blob because bad data (bag: %d)";
        goto LABEL_62;
      }

      v29 = v57;
      v31 = v54;
      v30 = v55;
      BytePtr = CFDataGetBytePtr(theData);
      Length = CFDataGetLength(theData);
      v34 = aks_ref_key_unwrap(v29, v30, v31, BytePtr, Length, v52, &__n);
      if (v34)
      {
        v24 = v34;
      }

      else
      {
        cf = 0;
        der_decode_plist(0, &cf, a10, *v52, *v52 + __n, v35, v36, v37);
        v38 = CFGetTypeID(cf);
        if (v38 == CFDataGetTypeID())
        {
          CFDataSetLength(a7, 0);
          v39 = cf;
          v40 = CFDataGetBytePtr(cf);
          v41 = CFDataGetLength(v39);
          CFDataAppendBytes(a7, v40, v41);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        v24 = 0;
      }

      v19 = a1;
      goto LABEL_30;
    }

    v24 = 3758097090;
  }

  v23 = a10;
LABEL_30:
  if (v55)
  {
    free(v55);
  }

  if (v58)
  {
    aks_params_free(&v58);
  }

  if (*v52)
  {
    aks_dealloc(*v52, __n);
  }

  if (v57)
  {
    aks_ref_key_free(&v57);
  }

  if (theData)
  {
    CFRelease(theData);
  }

  if (v24 > -536870161)
  {
    if (v24 > -536362975)
    {
      if (v24 != -536362974)
      {
        if (!v24)
        {
          return 1;
        }

        goto LABEL_58;
      }

      v48 = a3;
      v49 = v20;
      v46 = 3758604322;
      v47 = v19;
      v42 = @"ks_crypt_diversify: %x failed to '%@' item (class %d, bag: %d) Persona doesn't exist, so drop the item.";
LABEL_62:
      v45 = -26275;
      return SecError(v45, v23, v42, v46, v47, v48, v49);
    }

    if (v24 == -536870160)
    {
      v48 = a3;
      v49 = v20;
      v46 = 3758097136;
      v47 = v19;
      v42 = @"ks_crypt_diversify: %x failed to '%@' item (class %d, bag: %d) No key available for class.";
      goto LABEL_60;
    }

    if (v24 != -536362989)
    {
LABEL_58:
      v48 = a3;
      v49 = v20;
      v46 = v24;
      v47 = v19;
      v42 = @"ks_crypt_diversify: %x failed to '%@' item (class %d, bag: %d)";
LABEL_60:
      v45 = -25291;
      return SecError(v45, v23, v42, v46, v47, v48, v49);
    }

LABEL_57:
    v48 = a3;
    v49 = v20;
    v46 = v24;
    v47 = v19;
    v42 = @"ks_crypt_diversify: %x failed to '%@' item (class %d, bag: %d) Item can't be decrypted on this device, ever, so drop the item.";
    goto LABEL_62;
  }

  if (v24 == -536870212)
  {
    goto LABEL_57;
  }

  if (v24 != -536870207 && v24 != -536870174)
  {
    goto LABEL_58;
  }

  v43 = a3 == 10 || a3 == 7;
  v44 = "";
  if (v43)
  {
    v44 = " (hibernation?)";
  }

  return SecError(-25308, v23, @"ks_crypt_diversify: %x failed to '%@' item (class %d, bag: %d) Access to item attempted while keychain is locked%s.", v24, v19, a3, v20, v44);
}