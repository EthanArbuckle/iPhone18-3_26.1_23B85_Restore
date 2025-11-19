uint64_t sub_10000E860(uint64_t a1, __CFArray *a2)
{
  if (*(a1 + 192) < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = **(a1 + 184);
  }

  LODWORD(v5) = off_1000927D0(off_1000927C0, a2, v4);
  if (off_1000927B8(off_1000927A8, a2, v4))
  {
    LODWORD(v5) = v5 | 2;
  }

  if (off_100092800())
  {
    v5 = v5 | 8;
  }

  else
  {
    v5 = v5;
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    if ((*(v6 + 16))(v6, a2, v4))
    {
      return v5 | 4;
    }

    else
    {
      return v5;
    }
  }

  return v5;
}

void sub_10000E934(CFTypeRef *a1)
{
  CFRelease(a1[3]);
  CFRelease(a1[4]);

  free(a1);
}

__CFArray *sub_10000E97C()
{
  Mutable = CFDictionaryCreateMutable(0, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  v2 = CFDictionaryCreateMutable(0, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v2)
  {
    CFRelease(v1);
    return 0;
  }

  v3 = v2;
  v4 = CFDictionaryCreateMutable(0, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v4)
  {
    v5 = v4;
    valuePtr = 1;
    v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (v6)
    {
      v7 = v6;
      CFDictionaryAddValue(v5, @"kSecTrustSettingsResult", v6);
      CFDictionaryAddValue(v1, kSecPolicyCheckSystemTrustedWeakHash, kCFBooleanTrue);
      CFDictionaryAddValue(v1, kSecPolicyCheckSystemTrustedWeakKey, kCFBooleanTrue);
      CFDictionaryAddValue(v3, @"kSecTrustSettingsPolicyOptions", v1);
      v8 = CFArrayCreateMutable(0, 2, &kCFTypeArrayCallBacks);
      v9 = v8;
      if (v8)
      {
        CFArrayAppendValue(v8, v3);
        CFArrayAppendValue(v9, v5);
      }

      CFRelease(v1);
    }

    else
    {
      v9 = 0;
      v7 = v1;
    }

    CFRelease(v7);
    CFRelease(v5);
  }

  else
  {
    CFRelease(v1);
    v9 = 0;
  }

  CFRelease(v3);
  return v9;
}

uint64_t sub_10000EB24(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"kSecTrustSettingsResult");
  valuePtr = 0;
  if (!Value)
  {
    return 1;
  }

  v2 = Value;
  v3 = CFGetTypeID(Value);
  if (v3 != CFNumberGetTypeID())
  {
    return 1;
  }

  if (CFNumberGetValue(v2, kCFNumberSInt32Type, &valuePtr))
  {
    return valuePtr;
  }

  return 1;
}

uint64_t sub_10000EB98(void *a1, const void *a2, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"kSecTrustSettingsPolicy");
  v6 = CFDictionaryGetValue(theDict, @"kSecTrustSettingsPolicyName");
  v7 = CFDictionaryGetValue(theDict, @"kSecTrustSettingsPolicyString");
  v8 = CFDictionaryGetValue(theDict, @"kSecTrustSettingsKeyUsage");
  v9 = CFDictionaryGetValue(theDict, @"kSecTrustSettingsPolicyOptions");
  v44 = -1;
  v10 = sub_10000EFE8(a1, Value, v6, &v44);
  v11 = v44;
  v43 = v10;
  if (v7)
  {
    v12 = CFGetTypeID(v7);
    if (v12 != CFStringGetTypeID())
    {
      v15 = 0;
LABEL_22:
      v11 = v44;
      goto LABEL_23;
    }

    Length = CFStringGetLength(v7);
    if (CFStringGetCharacterAtIndex(v7, Length - 1))
    {
      v14 = 0;
    }

    else
    {
      v16 = CFStringGetLength(v7);
      v17 = CFStringGetLength(v7);
      v14 = kCFAllocatorDefault;
      if (v17 >= v16)
      {
        v47.length = v16 - 1;
        v47.location = 0;
        Copy = CFStringCreateWithSubstring(kCFAllocatorDefault, v7, v47);
LABEL_9:
        v19 = Copy;
        if (v11 < 0 || !Copy)
        {
          v15 = 0;
          if (!Copy)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

        if (CFArrayGetCount(a1[1]) <= v11)
        {
          goto LABEL_20;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(a1[1], v11);
        v21 = CFDictionaryGetValue(ValueAtIndex[4], kSecPolicyCheckSSLHostname);
        if (v21 || (v21 = CFDictionaryGetValue(ValueAtIndex[4], kSecPolicyCheckEmail)) != 0)
        {
          v15 = 1;
          if (CFStringCompare(v19, v21, 1uLL) == kCFCompareEqualTo)
          {
            goto LABEL_21;
          }
        }

        v22 = CFDictionaryGetValue(ValueAtIndex[4], kSecPolicyCheckEAPTrustedServerNames);
        if (v22 && (v23 = v22, v46.length = CFArrayGetCount(v22), v46.location = 0, CFArrayContainsValue(v23, v46, v19)))
        {
          v15 = 1;
        }

        else
        {
LABEL_20:
          v15 = 0;
        }

LABEL_21:
        CFRelease(v19);
        goto LABEL_22;
      }
    }

    Copy = CFStringCreateCopy(v14, v7);
    goto LABEL_9;
  }

  v15 = 0;
LABEL_23:
  *valuePtr = 0;
  if (!v8)
  {
    goto LABEL_27;
  }

  v24 = CFGetTypeID(v8);
  if (v24 != CFNumberGetTypeID() || !CFNumberGetValue(v8, kCFNumberSInt64Type, valuePtr))
  {
    v25 = 0;
    if (!v9)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (*valuePtr == 0xFFFFFFFFLL)
  {
LABEL_27:
    v25 = 1;
    if (!v9)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  v41 = Value;
  if (sub_10000EFE8(a1, kSecPolicyAppleOCSPSigner, 0, 0))
  {
    v34 = 16;
  }

  else
  {
    v34 = 0;
  }

  v35 = *(*a1 + 200);
  if (v35 && sub_1000132A0(v35, a2))
  {
    v34 |= 8u;
  }

  if (v11 < 0 || CFArrayGetCount(a1[1]) <= v11)
  {
    Count = CFArrayGetCount(a1[1]);
    if (Count >= 1)
    {
      v38 = Count;
      for (i = 0; i != v38; ++i)
      {
        v40 = CFArrayGetValueAtIndex(a1[1], i);
        v34 |= sub_100045AC0(v40[4]);
      }
    }
  }

  else
  {
    v36 = CFArrayGetValueAtIndex(a1[1], v11);
    v34 |= sub_100045AC0(v36[4]);
  }

  v25 = v34 == *valuePtr;
  Value = v41;
  if (v9)
  {
LABEL_30:
    v26 = CFGetTypeID(v9);
    if (v26 == CFDictionaryGetTypeID())
    {
      v27 = Value;
      v28 = a1[2];
      a1[2] = qword_100092E20;
      CFDictionaryApplyFunction(v9, sub_100006C64, a1);
      a1[2] = qword_100092E28;
      CFDictionaryApplyFunction(v9, sub_100006C64, a1);
      a1[2] = v28;
      Value = v27;
    }
  }

LABEL_32:
  if (CFDictionaryContainsKey(theDict, @"kSecTrustSettingsApplication"))
  {
    v29 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "kSecTrustSettingsApplication is not yet supported on this platform", valuePtr, 2u);
    }
  }

  v30 = v43;
  if (!(Value | v6))
  {
    v30 = 1;
  }

  if (v7)
  {
    v31 = v15;
  }

  else
  {
    v31 = 1;
  }

  v32 = v30 & v31 & v25;
  if (v9)
  {
    return 0;
  }

  else
  {
    return v32;
  }
}

uint64_t sub_10000EFE8(uint64_t a1, CFTypeRef cf, CFTypeRef a3, CFIndex *a4)
{
  if (!a3 || (v8 = CFGetTypeID(a3), v8 != CFStringGetTypeID()))
  {
    if (!cf)
    {
      return 0;
    }

    v9 = CFGetTypeID(cf);
    if (v9 != CFStringGetTypeID())
    {
      return 0;
    }
  }

  v10 = *(a1 + 8);
  Count = CFArrayGetCount(v10);
  if (Count < 1)
  {
    return 0;
  }

  v12 = Count;
  v29 = a4;
  v13 = 0;
  if (a3)
  {
    v14 = cf != 0;
  }

  else
  {
    v14 = 0;
  }

  if (a3)
  {
    v15 = 0;
  }

  else
  {
    v15 = cf != 0;
  }

  if (a3)
  {
    v16 = cf == 0;
  }

  else
  {
    v16 = 0;
  }

  v31 = v16;
  v17 = kSecPolicyNameSSLServer;
  cf2 = kSecPolicyNameSSLClient;
  while (1)
  {
    CFArrayGetValueAtIndex(v10, v13);
    Name = SecPolicyGetName();
    CompatibilityOidString = SecPolicyGetCompatibilityOidString();
    v20 = CompatibilityOidString;
    v21 = CompatibilityOidString && v14;
    if (v21 && Name != 0)
    {
      break;
    }

    if (CompatibilityOidString)
    {
      v23 = v15;
    }

    else
    {
      v23 = 0;
    }

    if (v23)
    {
      v24 = cf;
      v25 = v20;
    }

    else
    {
      v27 = v31;
      if (!Name)
      {
        v27 = 0;
      }

      if (!v27)
      {
        goto LABEL_40;
      }

      v24 = a3;
      v25 = Name;
    }

    if (CFEqual(v24, v25))
    {
      goto LABEL_42;
    }

LABEL_40:
    if (v12 == ++v13)
    {
      return 0;
    }
  }

  v26 = CFEqual(cf, CompatibilityOidString);
  if ((!v26 || !CFEqual(a3, Name)) && (!CFEqual(cf, v20) || !CFEqual(a3, v17) || CFEqual(Name, cf2)))
  {
    goto LABEL_40;
  }

LABEL_42:
  if (v29)
  {
    *v29 = v13;
  }

  return 1;
}

uint64_t sub_10000F1C0(void *a1, const void *a2)
{
  v4 = *(*a1 + 200);
  if (v4)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  v6 = a1[1];
  Count = CFArrayGetCount(v6);
  if (Count < 1)
  {

    return sub_10000B9A8(a1, a2);
  }

  else
  {
    v8 = Count;
    v9 = 0;
    for (i = 0; i != v8; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
      if (ValueAtIndex && CFDictionaryContainsKey(ValueAtIndex[4], a2))
      {
        v9 = 1;
      }
    }

    result = sub_10000B9A8(a1, a2);
    if (result)
    {
      if (v9)
      {
        v13 = *(*a1 + 200);
        v14 = v5 - *(v13 + 49);
        if (v14 >= 1)
        {
          v15 = 0;
          while (1)
          {
            if (v13)
            {
              if ((v15 & 0x8000000000000000) == 0 && *(v13 + 16) > v15)
              {
                v16 = *(v13 + 8 * v15 + 136);
                if (v16)
                {
                  v17 = *(v16 + 16);
                }
              }
            }

            result = SecCertificateIsStrongKey();
            if ((result & 1) == 0)
            {
              result = sub_100012178(a1, a2, v15, kCFBooleanFalse, 0, 0);
              if (!result)
              {
                break;
              }
            }

            if (++v15 >= v14)
            {
              break;
            }

            v13 = *(*a1 + 200);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10000F340(void *a1, const void *a2)
{
  v4 = *(*a1 + 200);
  if (v4)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  v6 = a1[1];
  Count = CFArrayGetCount(v6);
  if (Count < 1)
  {

    return sub_10000B9A8(a1, a2);
  }

  else
  {
    v8 = Count;
    v9 = 0;
    for (i = 0; i != v8; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
      if (ValueAtIndex && CFDictionaryContainsKey(ValueAtIndex[4], a2))
      {
        v9 = 1;
      }
    }

    result = sub_10000B9A8(a1, a2);
    if (result)
    {
      if (v9)
      {
        v13 = *(*a1 + 200);
        v14 = v5 - *(v13 + 49);
        if (v14 >= 1)
        {
          v15 = 0;
          while (1)
          {
            if (v13)
            {
              if ((v15 & 0x8000000000000000) == 0 && *(v13 + 16) > v15)
              {
                v16 = *(v13 + 8 * v15 + 136);
                if (v16)
                {
                  v17 = *(v16 + 16);
                }
              }
            }

            result = SecCertificateIsWeakHash();
            if (result)
            {
              result = sub_100012178(a1, a2, v15, kCFBooleanFalse, 0, 0);
              if (!result)
              {
                break;
              }
            }

            if (++v15 >= v14)
            {
              break;
            }

            v13 = *(*a1 + 200);
          }
        }
      }
    }
  }

  return result;
}

void sub_10000F4C0(void *a1, CFDictionaryRef theDict, const __CFDate *a3)
{
  Value = CFDictionaryGetValue(theDict, @"expiry");
  if (Value)
  {
    v6 = Value;
    if (CFDateCompare(a3, Value, 0) == kCFCompareLessThan)
    {
      v7 = *(*(a1[5] + 8) + 24);
      if (v7 < CFDateGetAbsoluteTime(v6))
      {
        ++*(*(a1[4] + 8) + 24);
        ++*(*(a1[6] + 8) + 24);
      }
    }
  }

  else
  {
    ++*(*(a1[4] + 8) + 24);
  }
}

void sub_10000F584(uint64_t a1, const __CFDictionary *a2, int a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return;
  }

  v4 = *(v3 + 272);
  if (!v4)
  {
    return;
  }

  v8 = *(v3 + 200);
  if (v8)
  {
    if (*(v8 + 16) >= 1)
    {
      v9 = *(v8 + 136);
      if (v9)
      {
        v10 = *(v9 + 16);
      }
    }
  }

  v11 = SecCertificateCopySignedCertificateTimestamps();
  v12 = *(*a1 + 104);
  if (v12)
  {
    CFRetain(*(*a1 + 104));
  }

  v13 = sub_10000B234(a1);
  if (!v11 || CFArrayGetCount(v11) < 1)
  {
    Count = 0;
    if (!v12)
    {
      goto LABEL_16;
    }

LABEL_14:
    if (CFArrayGetCount(v12) >= 1)
    {
      *(v4 + 11) |= 4u;
      Count += CFArrayGetCount(v12);
    }

    goto LABEL_16;
  }

  *(v4 + 11) |= 1u;
  Count = CFArrayGetCount(v11);
  if (v12)
  {
    goto LABEL_14;
  }

LABEL_16:
  if (v13 && CFArrayGetCount(v13) >= 1)
  {
    *(v4 + 11) |= 2u;
    LODWORD(Count) = CFArrayGetCount(v13) + Count;
  }

  *(v4 + 12) = Count;
  *(v4 + 16) = a3;
  if (CFDictionaryGetCount(a2) == 1)
  {
    *(v4 + 20) = 1;
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {

    CFRelease(v13);
  }
}

BOOL sub_10000F718(uint64_t *a1, CFDictionaryRef theDict, const __CFDictionary *a3, int a4, int a5, void *a6)
{
  v6 = 0;
  if (theDict && a3)
  {
    v38 = 0;
    v39 = &v38;
    v13 = *a1;
    v14 = *(*a1 + 120);
    v40 = 0x2020000000;
    v41 = v14;
    v15 = *(v13 + 200);
    if (v15 && *(v15 + 16) >= 1 && (v16 = *(v15 + 136)) != 0)
    {
      v17 = *(v16 + 16);
    }

    else
    {
      v17 = 0;
    }

    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    Count = CFDictionaryGetCount(theDict);
    if (a4)
    {
      v6 = CFDictionaryGetCount(theDict) > 1;
      if (!a5)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v6 = 0;
      if (!a5)
      {
LABEL_28:
        *a6 = v35[3];
        _Block_object_dispose(&v34, 8);
        _Block_object_dispose(&v38, 8);
        return v6;
      }
    }

    v18 = *(*a1 + 200);
    context[0] = _NSConcreteStackBlock;
    context[1] = 3221225472;
    context[2] = sub_10000FA98;
    context[3] = &unk_1000835C8;
    context[4] = &v38;
    CFDictionaryApplyFunction(theDict, sub_10003AA6C, context);
    *(v18 + 128) = v39[3];
    if (v6)
    {
      v6 = 1;
    }

    else
    {
      v29 = 0;
      v30 = &v29;
      v31 = 0x2020000000;
      v32 = 0;
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10000F4C0;
      v28[3] = &unk_1000835F0;
      v28[4] = &v29;
      v28[5] = &v38;
      v28[6] = &v34;
      CFDictionaryApplyFunction(a3, sub_10003AA6C, v28);
      SecCertificateNotValidBefore();
      v19 = *(v30 + 6);
      if (v20 >= 640656000.0)
      {
        SecCertificateNotValidAfter();
        v24 = v23;
        SecCertificateNotValidBefore();
        v26 = v24 - v25;
        if (v26 <= 15552000.0)
        {
          v22 = 2;
        }

        else if (v26 <= 71280000.0)
        {
          v22 = 3;
        }

        else
        {
          v22 = 4;
        }
      }

      else
      {
        v43 = 0;
        v44 = &v43;
        v45 = 0x2020000000;
        v46 = 60;
        v42[0] = _NSConcreteStackBlock;
        v42[1] = 3221225472;
        v42[2] = sub_10003A9E4;
        v42[3] = &unk_100085600;
        v42[4] = &v43;
        v42[5] = v17;
        sub_10001AB7C(v42);
        v21 = *(v44 + 6);
        if (v21 >= 15)
        {
          if (v21 >= 0x1C)
          {
            if (v21 < 0x28)
            {
              v22 = 4;
            }

            else
            {
              v22 = 5;
            }
          }

          else
          {
            v22 = 3;
          }
        }

        else
        {
          v22 = 2;
        }

        _Block_object_dispose(&v43, 8);
      }

      v6 = v22 <= v19;
      _Block_object_dispose(&v29, 8);
    }

    goto LABEL_28;
  }

  return v6;
}

void sub_10000FA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_10000FA98(uint64_t a1, CFDictionaryRef theDict, const __CFDate *a3)
{
  if (!CFDictionaryContainsKey(theDict, @"expiry"))
  {
    AbsoluteTime = CFDateGetAbsoluteTime(a3);
    v6 = *(*(a1 + 32) + 8);
    if (AbsoluteTime < *(v6 + 24))
    {
      *(v6 + 24) = AbsoluteTime;
    }
  }
}

uint64_t sub_10000FAF4(uint64_t a1, unsigned int a2, uint64_t (*a3)(void))
{
  if (a2 <= 0xE && (v6 = malloc_type_malloc(8 * a2 + 8, 0x2004093837F09uLL)) != 0)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    *v6 = a1;
    do
    {
      while (1)
      {
        while (1)
        {
          v11 = v7[v10];
          if (v8)
          {
            break;
          }

          if (v10 >= a2)
          {
            break;
          }

          v13 = *(v11 + 32);
          if (!v13)
          {
            break;
          }

          v8 = 0;
          v7[++v10] = v13;
          if ((v10 & 0x80000000) != 0)
          {
            goto LABEL_15;
          }
        }

        v12 = *(v11 + 40);
        if (v10 == a2)
        {
          v9 |= a3();
        }

        if (!v12)
        {
          break;
        }

        v8 = 0;
        v7[v10] = v12;
        if ((v10 & 0x80000000) != 0)
        {
          goto LABEL_15;
        }
      }

      --v10;
      v8 = 1;
    }

    while ((v10 & 0x80000000) == 0);
LABEL_15:
    free(v7);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10000FBEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  while (!DEROidCompare(v2, a2))
  {
    v2 = *(v2 + 16);
    if (!v2)
    {
      return 0;
    }
  }

  sub_10000FC54(a1, a2, *(a2 + 16));
  return 1;
}

__n128 sub_10000FC54(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v6 = malloc_type_malloc(0x18uLL, 0x1030040D5FA72FAuLL);
  v6[2] = 0;
  *v6 = *a2;
  v7 = malloc_type_malloc(0x38uLL, 0x107004060FBFCD3uLL);
  v7[6] = 0;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *v7 = 0u;
  result = *a2;
  *v7 = *a2;
  v7[2] = a3;
  v7[3] = v6;
  v7[5] = *(a1 + 32);
  v7[6] = a1;
  *(a1 + 32) = v7;
  return result;
}

BOOL sub_10000FCEC(uint64_t a1, uint64_t a2)
{
  v4 = DEROidCompare(a1, &oidAnyPolicy);
  if (v4)
  {
    sub_10000FC54(a1, a2, *(a2 + 16));
  }

  return v4;
}

BOOL sub_10000FD40(double a1)
{
  v2 = sub_10000FDBC();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  if (v4 == CFDateGetTypeID())
  {
    [v3 timeIntervalSinceNow];
    v6 = fabs(v5) < a1;
  }

  else
  {
    v6 = 0;
  }

  CFRelease(v3);
  return v6;
}

uint64_t sub_10000FDBC()
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
  block[2] = sub_10000FE98;
  block[3] = &unk_100083638;
  block[4] = &v4;
  dispatch_sync(v0, block);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void *sub_10000FE98(void *result)
{
  if (qword_100092C30)
  {
    v1 = result;
    v2 = *(qword_100092C30 + 176);
    if (v2)
    {
      result = CFRetain(*(qword_100092C30 + 176));
    }

    *(*(v1[4] + 8) + 24) = v2;
  }

  return result;
}

uint64_t sub_10000FEE4(uint64_t a1, const void *a2)
{
  v4 = *(*a1 + 200);
  if (v4)
  {
    v5 = *(v4 + 16);
    v6 = v5 - 1;
    if (v5 >= 1 && (v7 = *(v4 + 8 * v6 + 136)) != 0)
    {
      v8 = *(v7 + 16);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v5 = 0;
    v8 = 0;
    v6 = -1;
  }

  v9 = sub_10000B794(a1, off_1000927F0, v8);
  v10 = *(a1 + 8);
  if ((v9 & *(*(*a1 + 200) + 49)) != 0)
  {
    v11 = v6;
  }

  else
  {
    v11 = v5;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), *(a1 + 24));
  result = CFDictionaryGetValue(ValueAtIndex[4], a2);
  if (v11 >= 1)
  {
    for (i = 0; i < v11; ++i)
    {
      v15 = *(*a1 + 200);
      if (v15)
      {
        if ((i & 0x8000000000000000) == 0 && *(v15 + 16) > i)
        {
          v16 = *(v15 + 8 * i + 136);
          if (v16)
          {
            v17 = *(v16 + 16);
          }
        }
      }

      result = SecPolicyCheckCertSignatureHashAlgorithms();
      if ((result & 1) == 0)
      {
        result = sub_100012178(a1, a2, i, kCFBooleanFalse, 0, 0);
        if (!result)
        {
          break;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100010020(uint64_t a1, uint64_t a2, uint64_t *a3, __CFString **a4)
{
  if (a1 && *(a1 + 36) == 1)
  {
    if (!a3)
    {
      return 1;
    }

    if (qword_100092AF0 != -1)
    {
      dispatch_once(&qword_100092AF0, &stru_100081F38);
    }

    if (byte_100092AE8)
    {
      v5 = off_1000927B0;
      if (off_1000927B0)
      {
        v6 = off_1000927A8;
LABEL_14:
        v8 = (v5)(v6);
LABEL_16:
        *a3 = v8;
        return 1;
      }
    }

    else
    {
      v5 = off_1000927E0[0];
      if (off_1000927E0[0])
      {
        v6 = off_1000927D8;
        goto LABEL_14;
      }
    }

    v8 = 0;
    goto LABEL_16;
  }

  return sub_100007D00(a1, a2, 0, a3, a4);
}

const __CFArray *sub_100010108(uint64_t a1, const void *a2)
{
  v4 = *(*a1 + 200);
  if (v4 && *(v4 + 16) >= 1 && (v5 = *(v4 + 136)) != 0)
  {
    v6 = *(v5 + 16);
  }

  else
  {
    v6 = 0;
  }

  result = sub_10000B794(a1, off_1000927F0, v6);
  if ((result & 1) == 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), *(a1 + 24));
    Value = CFDictionaryGetValue(ValueAtIndex[4], a2);
    SecCertificateNotValidBefore();
    v11 = v10;
    SecCertificateNotValidAfter();
    result = sub_100010208(Value, v11, v12);
    if ((result & 1) == 0)
    {

      return sub_100012178(a1, a2, 0, kCFBooleanFalse, 0, 0);
    }
  }

  return result;
}

const __CFArray *sub_100010208(const __CFArray *result, double a2, double a3)
{
  if (result)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    if (v6 == CFArrayGetTypeID())
    {
      v7 = 0;
      v8 = a3 - a2;
      while (1)
      {
        Count = CFArrayGetCount(v5);
        v10 = v7 < Count;
        result = (v7 >= Count);
        if (!v10)
        {
          break;
        }

        result = CFArrayGetValueAtIndex(v5, v7);
        if (!result)
        {
          break;
        }

        v11 = result;
        v12 = CFGetTypeID(result);
        if (v12 != CFArrayGetTypeID())
        {
          return 0;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(v11, 0);
        v14 = CFArrayGetValueAtIndex(v11, 1);
        if (!ValueAtIndex)
        {
          return 0;
        }

        v15 = v14;
        v16 = CFGetTypeID(ValueAtIndex);
        TypeID = CFDateGetTypeID();
        result = 0;
        if (v16 != TypeID || !v15)
        {
          return result;
        }

        v18 = CFGetTypeID(v15);
        if (v18 != CFNumberGetTypeID())
        {
          return 0;
        }

        AbsoluteTime = CFDateGetAbsoluteTime(ValueAtIndex);
        valuePtr = 0.0;
        if (!CFNumberGetValue(v15, kCFNumberDoubleType, &valuePtr) || AbsoluteTime <= a2 && v8 > valuePtr)
        {
          return 0;
        }

        ++v7;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10001035C(uint64_t a1, const void *a2)
{
  v4 = *(*a1 + 200);
  if (!v4)
  {
    goto LABEL_8;
  }

  if (*(v4 + 16) >= 1)
  {
    v5 = *(v4 + 136);
    if (v5)
    {
      v6 = *(v5 + 16);
    }
  }

  v7 = *(v4 + 16);
  if (v7 >= 1 && (v8 = *(v4 + 8 * v7 + 128)) != 0)
  {
    v9 = *(v8 + 16);
  }

  else
  {
LABEL_8:
    v9 = 0;
  }

  result = sub_100045FC0(v9, a1, @"TestSystemRoot");
  if (result)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), *(a1 + 24));
    Value = CFDictionaryGetValue(ValueAtIndex[4], a2);
    SecCertificateNotValidBefore();
    v14 = v13;
    SecCertificateNotValidAfter();
    result = sub_100010208(Value, v14, v15);
    if ((result & 1) == 0)
    {

      return sub_100012178(a1, a2, 0, kCFBooleanFalse, 0, 0);
    }
  }

  return result;
}

void sub_100010480(void *a1, const void *a2)
{
  v4 = *(*a1 + 200);
  if (v4)
  {
    if (*(v4 + 16) >= 1)
    {
      v5 = *(v4 + 136);
      if (v5)
      {
        v6 = *(v5 + 16);
      }
    }

    v7 = *(v4 + 16);
    v8 = v7 - 1;
    if (v7 >= 1 && (v9 = *(v4 + 8 * v8 + 136)) != 0)
    {
      v10 = *(v9 + 16);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v7 = 0;
    v10 = 0;
    v8 = -1;
  }

  if (sub_100045FC0(v10, a1, @"TestSystemRoot"))
  {
    if ((SecPolicyCheckCertExtendedKeyUsage() & 1) == 0)
    {
      sub_100012178(a1, a2, 0, kCFBooleanFalse, 0, 0);
    }

    if (v7 >= 3)
    {
      v11 = 18;
      do
      {
        v12 = *(*a1 + 200);
        if (v12)
        {
          if (((v11 - 17) & 0x8000000000000000) == 0 && *(v12 + 16) > v11 - 17)
          {
            v13 = *(v12 + 8 * v11);
            if (v13)
            {
              v14 = *(v13 + 16);
            }
          }
        }

        v15 = SecCertificateCopyExtendedKeyUsage();
        if (v15)
        {
          v16 = v15;
          if (CFArrayGetCount(v15) && (SecPolicyCheckCertExtendedKeyUsage() & 1) == 0 && (SecPolicyCheckCertExtendedKeyUsage() & 1) == 0)
          {
            sub_100012178(a1, a2, 0, kCFBooleanFalse, 0, 0);
          }

          CFRelease(v16);
        }

        ++v11;
      }

      while (1 - v8 + v11 != 18);
    }
  }

  else if (!sub_10000B794(a1, off_1000927F0, v10))
  {
    SecCertificateNotValidBefore();
    if (v17 > 583628400.0 && (SecPolicyCheckCertExtendedKeyUsage() & 1) == 0)
    {

      sub_100012178(a1, a2, 0, kCFBooleanFalse, 0, 0);
    }
  }
}

void sub_1000106E0(uint64_t a1, const __CFData *a2)
{
  v6 = NAN;
  v3 = sub_10001078C(a2, 1, *(a1 + 48), *(a1 + 56), *(a1 + 64), &v6, *(*(*(a1 + 32) + 8) + 24));
  if (v3)
  {
    v4 = v3;
    v5 = v6;
    sub_100010D44(*(a1 + 72), v3, v6);
    if (!CFDictionaryContainsKey(v4, @"expiry"))
    {
      sub_100010D44(*(a1 + 80), v4, v5);
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }
}

const __CFDictionary *sub_10001078C(const __CFData *a1, uint64_t a2, const __CFData *a3, unint64_t a4, const __CFDictionary *a5, double *a6, CFAbsoluteTime a7)
{
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  if ((Length - 0x7FFFFFFFFFFFFFFFLL) < 0x800000000000002CLL)
  {
    goto LABEL_16;
  }

  v16 = BytePtr[41];
  v17 = BytePtr[42];
  v18 = v17 | (v16 << 8);
  v19 = Length - 43 - v18;
  if (Length - 43 < v18)
  {
    goto LABEL_16;
  }

  v20 = v19 >= 4;
  v21 = v19 - 4;
  if (!v20)
  {
    goto LABEL_16;
  }

  v22 = &BytePtr[v18 + 43];
  if (v21 != __rev16(*(v22 + 1)))
  {
    goto LABEL_16;
  }

  theDict = a5;
  v23 = *BytePtr;
  if (*BytePtr)
  {
    v24 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v56) = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "SCT version unsupported: %d\n", buf, 8u);
    }

    goto LABEL_16;
  }

  v52 = a2;
  v25 = 0;
  v26 = 0;
  v27 = BytePtr + 33;
  do
  {
    v26 = (*(v27 + v25++) | (v26 << 8));
  }

  while (v25 != 8);
  if (v26 > a4)
  {
    v28 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v56 = v26;
      v57 = 2048;
      v58 = a4;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "SCT is in the future: %llu > %llu\n", buf, 0x16u);
    }

    goto LABEL_16;
  }

  v48 = v22[1];
  v49 = *v22;
  if (CFDataGetLength(a3) < 1 || CFDataGetLength(a3) > 1048574 || (v51 = a6, v47 = v18 + CFDataGetLength(a3), (v32 = malloc_type_malloc(v47 + 14, 0x2F6A79A8uLL)) == 0))
  {
LABEL_16:
    v29 = 0;
    v30 = 0;
    goto LABEL_17;
  }

  *v32 = 0;
  *(v32 + 2) = *v27;
  v32[10] = 0;
  v32[11] = v52;
  v50 = v32;
  v33 = v32 + 12;
  v34 = CFDataGetBytePtr(a3);
  v35 = CFDataGetLength(a3);
  memcpy(v33, v34, v35);
  v36 = &v33[CFDataGetLength(a3)];
  *v36 = v16;
  v36[1] = v17;
  memcpy(v36 + 2, BytePtr + 43, v17 | (v16 << 8));
  v37 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, BytePtr + 1, 32, kCFAllocatorNull);
  Value = CFDictionaryGetValue(theDict, v37);
  v29 = Value;
  if (!Value)
  {
LABEL_44:
    v44 = 0;
    v30 = v50;
    if (!v37)
    {
      goto LABEL_60;
    }

LABEL_59:
    CFRelease(v37);
    goto LABEL_60;
  }

  if (!v52 && CFDictionaryContainsKey(Value, @"expiry"))
  {
    v29 = 0;
    goto LABEL_44;
  }

  v39 = (v26 / 0x3E8) - kCFAbsoluteTimeIntervalSince1970;
  v40 = CFDictionaryGetValue(v29, @"frozen");
  if (v40 && CFDateGetAbsoluteTime(v40) < v39)
  {
    v41 = sub_1000027AC("SecError");
    v30 = v50;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v56 = v29;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Frozen CT log issued SCT after freezing (log=%@)\n", buf, 0xCu);
    }

LABEL_40:
    v29 = 0;
    v44 = 0;
    if (!v37)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  v42 = CFDictionaryGetValue(v29, @"start_inclusive");
  v43 = CFDictionaryGetValue(v29, @"end_exclusive");
  v30 = v50;
  if (v42 && CFDateGetAbsoluteTime(v42) > a7 || v43 && CFDateGetAbsoluteTime(v43) <= a7 || !CFDictionaryGetValue(v29, @"key"))
  {
    goto LABEL_40;
  }

  v44 = SecKeyCreateFromSubjectPublicKeyInfoData();
  if (!v44)
  {
LABEL_58:
    v29 = 0;
    if (!v37)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  if (v48 == 3)
  {
    switch(v49)
    {
      case 2:
        v45 = &CSSMOID_ECDSA_WithSHA1;
        break;
      case 5:
        v45 = &CSSMOID_ECDSA_WithSHA384;
        break;
      case 4:
        v45 = &CSSMOID_ECDSA_WithSHA256;
        break;
      default:
        goto LABEL_58;
    }
  }

  else
  {
    if (v48 != 1)
    {
      goto LABEL_58;
    }

    switch(v49)
    {
      case 2:
        v45 = &CSSMOID_SHA1WithRSA;
        break;
      case 5:
        v45 = &CSSMOID_SHA384WithRSA;
        break;
      case 4:
        v45 = &CSSMOID_SHA256WithRSA;
        break;
      default:
        goto LABEL_58;
    }
  }

  v54 = *v45;
  if (SecKeyDigestAndVerify())
  {
    v46 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v56 = v29;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "SCT signature failed (log=%@)\n", buf, 0xCu);
    }

    goto LABEL_58;
  }

  *v51 = v39;
  if (v37)
  {
    goto LABEL_59;
  }

LABEL_60:
  if (v44)
  {
    CFRelease(v44);
  }

LABEL_17:
  free(v30);
  return v29;
}

void sub_100010D44(const __CFDictionary *a1, const void *a2, CFAbsoluteTime a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value || CFDateGetAbsoluteTime(Value) > a3)
  {
    v7 = CFDateCreate(kCFAllocatorDefault, a3);
    CFDictionarySetValue(a1, a2, v7);
    if (v7)
    {

      CFRelease(v7);
    }
  }
}

BOOL sub_100010DE4(sqlite3_stmt *a1, uint64_t a2, const void *a3, unint64_t a4, CFTypeRef *a5)
{
  if (a4 >> 31)
  {
    return sub_100005AD8(18, a1, a5, @"bind_blob[%d]: blob bigger than INT_MAX", a2);
  }

  v9 = sqlite3_bind_blob(a1, a2, a3, a4, 0xFFFFFFFFFFFFFFFFLL);
  return sub_100005AD8(v9, a1, a5, @"bind_blob[%d]", a2);
}

void sub_100010E60(uint64_t a1)
{
  if (sub_100003140())
  {
    os_unfair_lock_lock(&unk_100092D70);
    if (qword_100092D78)
    {
      goto LABEL_19;
    }

    v2 = sub_100008D3C(@"ocspcache.sqlite3");
    if (!v2 || (v3 = v2, v4 = CFURLCopyFileSystemPath(v2, kCFURLPOSIXPathStyle), CFRelease(v3), !v4))
    {
LABEL_18:
      if (!qword_100092D78)
      {
LABEL_20:
        os_unfair_lock_unlock(&unk_100092D70);
        return;
      }

LABEL_19:
      (*(a1 + 16))(a1);
      goto LABEL_20;
    }

    v5 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
    if (v5)
    {
      v6 = sub_100027148(v4, 384, 1, 1, 1, 1, &stru_100083290);
      *v5 = v6;
      if (v6)
      {
        v20 = 0;
        v21 = &v20;
        v22 = 0x2000000000;
        v23 = 1;
        v16 = 0;
        v17 = &v16;
        v18 = 0x2000000000;
        v19 = 0;
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 0x40000000;
        v15[2] = sub_10003A240;
        v15[3] = &unk_100083330;
        v15[4] = &v20;
        v15[5] = &v16;
        v7 = sub_10001AF60(v6, &v19, v15);
        v8 = v7 & v21[3];
        *(v21 + 24) = v8;
        if ((v8 & 1) == 0)
        {
          v9 = sub_1000027AC("SecError");
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = v17[3];
            *buf = 138412290;
            v25 = v10;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "OCSP table update failed: %@", buf, 0xCu);
          }

          v11 = v17[3];
          if (v11)
          {
            Code = CFErrorGetCode(v11);
          }

          else
          {
            Code = -2070;
          }

          sub_100054DC0(2, 2, Code);
        }

        v13 = v17[3];
        if (v13)
        {
          CFRelease(v13);
        }

        v14 = *(v21 + 24);
        _Block_object_dispose(&v16, 8);
        _Block_object_dispose(&v20, 8);
        if (v14)
        {
          goto LABEL_17;
        }

        if (*v5)
        {
          CFRelease(*v5);
        }
      }

      free(v5);
      v5 = 0;
    }

LABEL_17:
    qword_100092D78 = v5;
    CFRelease(v4);
    goto LABEL_18;
  }
}

uint64_t sub_1000110F0(uint64_t *a1, uint64_t a2, double a3)
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = 1;
  v6 = *(a2 + 8);
  PublicKeyData = SecCertificateGetPublicKeyData();
  if (PublicKeyData)
  {
    v8 = PublicKeyData;
    v9 = *a2;
    v10 = SecCertificateCopyIssuerSequence();
    if (v10)
    {
      v11 = v10;
      v12 = SecCertificateCopySerialNumberData(*a2, 0);
      if (v12)
      {
        v13 = v12;
        if (CFDataGetLength(v12) >= 1 && *(v8 + 8) <= 0x7FFFFFFFFFFFFFFEuLL)
        {
          v14 = *a1;
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 0x40000000;
          v24[2] = sub_1000113B8;
          v24[3] = &unk_100083508;
          v24[4] = &v25;
          v24[5] = &v29;
          v24[8] = v11;
          v24[9] = v8;
          *&v24[10] = a3;
          v24[6] = &v33;
          v24[7] = v13;
          v15 = sub_100004B74(v14, (v30 + 3), v24);
          *(v26 + 24) &= v15;
        }

        CFRelease(v13);
      }

      CFRelease(v11);
    }
  }

  if (*(v26 + 24) != 1 || v30[3])
  {
    v16 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v30[3];
      *buf = 138412290;
      v38 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "ocsp cache lookup failed: %@", buf, 0xCu);
    }

    v18 = v34[3];
    if (v18)
    {
      sub_100019788(v18);
      v34[3] = 0;
    }

    v19 = v30[3];
    if (v19)
    {
      Code = CFErrorGetCode(v19);
    }

    else
    {
      Code = -2070;
    }

    sub_100054DC0(2, 3, Code);
    v21 = v30[3];
    if (v21)
    {
      CFRelease(v21);
    }
  }

  v22 = v34[3];
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  return v22;
}

uint64_t sub_100011378(uint64_t a1, uint64_t *a2)
{
  result = sub_1000110F0(a2, *(a1 + 40), 0.0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_1000113B8(uint64_t a1, uint64_t a2)
{
  v9[0] = _NSConcreteStackBlock;
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v5 = *(a1 + 80);
  v6 = *(a1 + 40);
  v7 = *(*(a1 + 40) + 8);
  v9[1] = 0x40000000;
  v9[2] = sub_100011484;
  v9[3] = &unk_1000834E0;
  v9[4] = v3;
  v11 = v4;
  v12 = a2;
  v13 = *(a1 + 64);
  v14 = v5;
  v10 = v6;
  result = sub_100004A60(a2, @"SELECT DISTINCT hashAlgorithm FROM ocsp WHERE serialNum=?", (v7 + 24), v9);
  *(*(*(a1 + 32) + 8) + 24) &= result;
  return result;
}

uint64_t sub_100011484(uint64_t a1, sqlite3_stmt *a2)
{
  BytePtr = CFDataGetBytePtr(*(a1 + 56));
  Length = CFDataGetLength(*(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = sub_100010DE4(a2, 1, BytePtr, Length, (*(*(a1 + 40) + 8) + 24));
  v7 = *(a1 + 56);
  v6 = *(a1 + 64);
  v13[0] = _NSConcreteStackBlock;
  v8 = *(a1 + 32);
  v9 = *(a1 + 88);
  v10 = *(a1 + 40);
  v11 = *(*(a1 + 40) + 8);
  v13[1] = 0x40000000;
  v13[2] = sub_10001D450;
  v13[3] = &unk_1000834B8;
  v15 = a2;
  v16 = *(a1 + 72);
  v13[4] = v8;
  v17 = v6;
  v18 = v9;
  v19 = v7;
  v14 = v10;
  *(*(*(a1 + 32) + 8) + 24) &= sub_100005D40(v6, a2, (v11 + 24), v13);
  return *(*(*(a1 + 32) + 8) + 24);
}

CFTypeRef sub_1000115A4(uint64_t a1, uint64_t a2)
{
  cf = 0;
  v3 = SecTrustStoreForDomain();
  v4 = sub_100010020(v3, a2, &cf, 0);
  result = cf;
  if ((v4 & 1) == 0)
  {
    if (cf)
    {
      cf = 0;
      CFRelease(result);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100011604(void *a1, const void *a2)
{
  v4 = *(*a1 + 200);
  if (v4)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a1[1], a1[3]);
  CFDictionaryGetValue(ValueAtIndex[4], a2);
  v7 = *(*a1 + 200);
  if (v7 && *(v7 + 16) >= 1 && (v8 = *(v7 + 136)) != 0)
  {
    v9 = *(v8 + 16);
  }

  else
  {
    v9 = 0;
  }

  result = sub_10000B794(a1, off_1000927F0, v9);
  if ((result & 1) == 0 && v5 >= 1)
  {
    for (i = 0; i < v5; ++i)
    {
      v12 = *(*a1 + 200);
      if (v12)
      {
        if ((i & 0x8000000000000000) == 0 && *(v12 + 16) > i)
        {
          v13 = *(v12 + 8 * i + 136);
          if (v13)
          {
            v14 = *(v13 + 16);
          }
        }
      }

      result = SecCertificateIsAtLeastMinKeySize();
      if ((result & 1) == 0)
      {
        result = sub_100012178(a1, a2, i, kCFBooleanFalse, 0, 0);
        if (!result)
        {
          break;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100011734(uint64_t a1, const void *a2)
{
  v4 = *(*a1 + 200);
  if (v4)
  {
    if (*(v4 + 16) >= 1)
    {
      v5 = *(v4 + 136);
      if (v5)
      {
        v6 = *(v5 + 16);
      }
    }
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), *(a1 + 24));
  CFDictionaryGetValue(ValueAtIndex[4], a2);
  result = SecPolicyCheckCertSubjectOrganization();
  if ((result & 1) == 0)
  {

    return sub_100012178(a1, a2, 0, kCFBooleanFalse, 0, 0);
  }

  return result;
}

uint64_t sub_1000117F4(uint64_t a1, const void *a2)
{
  v4 = *(*a1 + 200);
  if (v4)
  {
    if (*(v4 + 16) >= 1)
    {
      v5 = *(v4 + 136);
      if (v5)
      {
        v6 = *(v5 + 16);
      }
    }
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), *(a1 + 24));
  Value = CFDictionaryGetValue(ValueAtIndex[4], a2);
  CFDictionaryGetValue(Value, kSecPolicyLeafMarkerProd);
  result = SecPolicyCheckCertLeafMarkerOid();
  if ((result & 1) == 0)
  {
    if ((SecIsInternalRelease() & 1) == 0 && (sub_100003C24() & 1) == 0 && !CFPreferencesGetAppBooleanValue(@"AppleServerAuthenticationAllowUATIdMS", @"com.apple.security", 0) || (CFDictionaryGetValue(Value, kSecPolicyLeafMarkerQA), result = SecPolicyCheckCertLeafMarkerOid(), (result & 1) == 0))
    {
      v10 = kSecPolicyCheckLeafMarkersProdAndQA;

      return sub_100012178(a1, v10, 0, kCFBooleanFalse, 1, 0);
    }
  }

  return result;
}

void sub_100011920(uint64_t a1, const void *a2)
{
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), *(a1 + 24));
  Value = CFDictionaryGetValue(ValueAtIndex[4], a2);
  if (Value)
  {
    v6 = Value;
    v7 = CFGetTypeID(Value);
    if (v7 == CFStringGetTypeID())
    {
      v8 = *a1;

      sub_1000119A8(v8, v6);
    }
  }
}

void sub_1000119A8(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 216);
  if (v3 != cf)
  {
    if (!cf || (CFRetain(cf), (v3 = *(a1 + 216)) != 0))
    {
      CFRelease(v3);
    }

    *(a1 + 216) = cf;
  }
}

void *sub_1000119F4(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  v6 = malloc_type_malloc(0x30uLL, 0x1020040E3B5EC00uLL);
  v7 = v6;
  if (v6)
  {
    *v6 = a1;
    v6[1] = a2;
    v8 = sub_100011DF8(v6, &cf);
    v9 = atomic_load(&qword_100092928);
    v7[2] = v8;
    v7[3] = v9;
    v7[4] = 0;
    *(v7 + 40) = 0;
    if (cf)
    {
      if (a3 && !*a3)
      {
        *a3 = cf;
      }

      else
      {
        CFRelease(cf);
      }
    }
  }

  return v7;
}

void sub_100011A9C(void *a1, uint64_t a2)
{
  v3 = sub_1000119F4(a1[7], a2, (*(a1[5] + 8) + 24));
  v4 = *(a1[6] + 8);
  if (*(v4 + 24) == 1)
  {
    v5 = *(a1[5] + 8);
    v6 = (*(a1[4] + 16))();
    v4 = *(a1[6] + 8);
  }

  else
  {
    v6 = 0;
  }

  *(v4 + 24) = v6;

  free(v3);
}

uint64_t sub_100011B2C(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_100011D78;
  v4[3] = &unk_1000844A0;
  v4[4] = &v5;
  v4[5] = a1;
  v4[6] = a2;
  sub_100011BD4(v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_100011BD4(uint64_t a1)
{
  if (qword_100092EA0 != -1)
  {
    dispatch_once(&qword_100092EA0, &stru_1000846E0);
  }

  if ((*(qword_100092EA8 + 16) & 1) == 0)
  {
    v2 = *(a1 + 16);

    v2(a1);
  }
}

uint64_t sub_100011C54(uint64_t *a1, void *a2, uint64_t a3)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 1;
  v4 = *a1;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = sub_100011A9C;
  v11[3] = &unk_100084898;
  v11[6] = &v12;
  v11[7] = a1;
  v11[4] = a3;
  v11[5] = &v16;
  v5 = sub_100004B74(v4, &v19, v11);
  v6 = v13;
  v7 = v5 & v13[3];
  *(v13 + 24) &= v5;
  v8 = v17[3];
  if (v8)
  {
    if (a2 && !*a2)
    {
      *a2 = v8;
    }

    else
    {
      CFRelease(v8);
      v6 = v13;
      v7 = *(v13 + 24) != 0;
    }
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  *(v6 + 24) = v9;
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  return v9;
}

uint64_t sub_100011D78(uint64_t a1, uint64_t *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_100014B38;
  v3[3] = &unk_100084478;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  return sub_100011C54(a2, 0, v3);
}

uint64_t sub_100011DF8(uint64_t a1, void *a2)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = -1;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = a1 != 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  if (a1)
  {
    v3 = *(a1 + 8);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 0x40000000;
    v12[2] = sub_100011FF0;
    v12[3] = &unk_100084F98;
    v12[4] = &v17;
    v12[5] = &v13;
    v12[6] = &v21;
    v12[7] = a1;
    v4 = sub_100004A60(v3, @"SELECT ival FROM admin WHERE key='version'", &v16, v12);
    *(v18 + 24) = v4;
    if (v4 && !v14[3])
    {
      goto LABEL_16;
    }
  }

  else
  {
    v20 = 0;
  }

  v5 = sub_1000027AC("SecError");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v14[3];
    *buf = 138412290;
    v26 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_SecRevocationDbGetVersion failed: %@", buf, 0xCu);
  }

  v7 = v14[3];
  if (v7)
  {
    Code = CFErrorGetCode(v7);
  }

  else
  {
    Code = -2070;
  }

  sub_100054DC0(1, 3, Code);
  v9 = v14[3];
  if (v9)
  {
    if (a2 && !*a2)
    {
      *a2 = v9;
    }

    else
    {
      CFRelease(v9);
    }
  }

LABEL_16:
  v10 = v22[3];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v10;
}

uint64_t sub_100011FF0(void *a1, sqlite3_stmt *a2)
{
  v3 = *(a1[4] + 8);
  if (*(v3 + 24) == 1)
  {
    v4 = *(a1[7] + 8);
    v5 = *(a1[5] + 8);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 0x40000000;
    v8[2] = sub_100012134;
    v8[3] = &unk_100084F70;
    v8[4] = a1[6];
    v8[5] = a2;
    v6 = sub_100005D40(v4, a2, (v5 + 24), v8);
    v3 = *(a1[4] + 8);
  }

  else
  {
    v6 = 0;
  }

  *(v3 + 24) = v6;
  return *(*(a1[4] + 8) + 24);
}

uint64_t sub_1000120B4(CFDataRef theData, const __CFData *a2)
{
  MutableCopy = CFDataCreateMutableCopy(0, 0, theData);
  BytePtr = CFDataGetBytePtr(a2);
  Length = CFDataGetLength(a2);
  CFDataAppendBytes(MutableCopy, BytePtr, Length);
  v6 = SecSHA256DigestCreateFromData();
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v6;
}

sqlite3_int64 sub_100012134(uint64_t a1, _BYTE *a2)
{
  result = sqlite3_column_int64(*(a1 + 40), 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  *a2 = 1;
  return result;
}

uint64_t sub_100012178(uint64_t a1, CFTypeRef cf1, CFIndex a3, const void *a4, int a5, int a6)
{
  if ((a5 & 1) == 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), *(a1 + 24));
    if (!sub_10000B9A8(a1, cf1) && (!ValueAtIndex || !CFDictionaryContainsKey(ValueAtIndex[4], cf1)))
    {
      return 1;
    }
  }

  v13 = CFEqual(cf1, @"WeakKeySize");
  v14 = CFEqual(cf1, @"WeakSignature");
  v15 = CFEqual(cf1, @"BlackListedLeaf");
  if ((CFEqual(cf1, @"BlackListedKey") | v15) | (v14 | v13))
  {
    v16 = 6;
  }

  else
  {
    v16 = 5;
  }

  if (CFEqual(cf1, @"UsageConstraints"))
  {
    v16 = 3;
  }

  v17 = CFEqual(cf1, @"Revocation");
  v18 = CFEqual(cf1, @"IssuerPolicyConstraints");
  if ((CFEqual(cf1, @"IssuerNameConstraints") | v18) | v17)
  {
    v19 = 6;
  }

  else
  {
    v19 = v16;
  }

  if (a6)
  {
    v20 = a6;
  }

  else
  {
    v20 = v19;
  }

  if (v20 == 5)
  {
    v66 = 0;
    v21 = *(*a1 + 200);
    v22 = *(v21 + 8 * a3 + 136);
    v23 = *(v22 + 24);
    v64 = a4;
    if (v21)
    {
      if ((a3 & 0x8000000000000000) == 0)
      {
        v66 = 0;
        if (*(v21 + 16) > a3)
        {
          if (v22)
          {
            v66 = *(v22 + 16);
          }
        }
      }
    }

    v65 = a3;
    Count = CFArrayGetCount(v23);
    if (Count >= 1)
    {
      v25 = Count;
      v26 = 0;
      cf2 = kSecPolicyCheckSSLHostname;
      v62 = kSecPolicyCheckEmail;
      v61 = kSecPolicyCheckTemporalValidity;
      v60 = kSecPolicyCheckValidLeaf;
      v27 = 1;
      while (1)
      {
        v28 = CFArrayGetValueAtIndex(v23, v26);
        if (v28)
        {
          v29 = v28;
          v30 = CFGetTypeID(v28);
          if (v30 == CFDictionaryGetTypeID())
          {
            Value = CFDictionaryGetValue(v29, @"kSecTrustSettingsAllowedError");
            valuePtr = 0;
            if (Value)
            {
              v32 = Value;
              v33 = CFGetTypeID(Value);
              if (v33 == CFNumberGetTypeID() && CFNumberGetValue(v32, kCFNumberSInt32Type, &valuePtr) && sub_10000EB98(a1, v66, v29))
              {
                v34 = -2147409654;
                v35 = valuePtr;
                if (CFEqual(cf1, cf2))
                {
                  v34 = -2147408896;
                }

                else if (CFEqual(cf1, v62))
                {
                  v34 = -2147408872;
                }

                else if (!CFEqual(cf1, v61) && !CFEqual(cf1, v60))
                {
                  v34 = 0;
                }

                if (v35 == v34)
                {
                  break;
                }
              }
            }
          }
        }

        v27 = ++v26 < v25;
        if (v25 == v26)
        {
          goto LABEL_39;
        }
      }

      if (v27)
      {
        v48 = sub_1000027AC("policy");
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          valuePtr = 67109378;
          *v68 = v65;
          *&v68[4] = 2112;
          *&v68[6] = cf1;
          v49 = "cert[%d]: skipped allowed error %@";
LABEL_84:
          _os_log_debug_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, v49, &valuePtr, 0x12u);
        }

        return 1;
      }
    }

LABEL_39:
    v36 = *(*a1 + 128);
    a4 = v64;
    a3 = v65;
    v20 = 5;
    if (v36)
    {
      if (CFArrayGetCount(*(*a1 + 128)) > v65)
      {
        v37 = CFArrayGetValueAtIndex(v36, v65);
        if (v37)
        {
          v38 = v37;
          v39 = CFGetTypeID(v37);
          if (v39 == CFDictionaryGetTypeID())
          {
            v40 = kSecCertificateDetailSHA1Digest;
            if (CFDictionaryContainsKey(v38, kSecCertificateDetailSHA1Digest))
            {
              v41 = *(*a1 + 200);
              if (v41)
              {
                if ((v65 & 0x8000000000000000) == 0 && *(v41 + 16) > v65)
                {
                  v42 = *(v41 + 8 * v65 + 136);
                  if (v42)
                  {
                    v43 = *(v42 + 16);
                  }
                }
              }

              SHA1Digest = SecCertificateGetSHA1Digest();
              v45 = CFDictionaryGetValue(v38, v40);
              if (CFEqual(SHA1Digest, v45))
              {
                v46 = CFDictionaryGetValue(v38, cf1);
                if (v46)
                {
                  if (CFEqual(v64, v46))
                  {
                    v47 = *(a1 + 64);
                    if (v47 > 7 || ((1 << v47) & 0xE8) == 0)
                    {
                      *(a1 + 64) = 1;
                    }

                    v48 = sub_1000027AC("policy");
                    if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
                    {
                      return 1;
                    }

                    valuePtr = 67109378;
                    *v68 = v65;
                    *&v68[4] = 2112;
                    *&v68[6] = cf1;
                    v49 = "cert[%d]: skipped exception error %@";
                    goto LABEL_84;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v50 = sub_1000027AC("policy");
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    v51 = *(a1 + 16);
    if (v51 == qword_100092E28)
    {
      v52 = "path";
    }

    else
    {
      v52 = "custom";
    }

    valuePtr = 67110146;
    *v68 = a3;
    if (v51 == qword_100092E20)
    {
      v53 = "leaf";
    }

    else
    {
      v53 = v52;
    }

    *&v68[4] = 2112;
    *&v68[6] = cf1;
    *&v68[14] = 2080;
    *&v68[16] = v53;
    if (a5)
    {
      v54 = "force";
    }

    else
    {
      v54 = "";
    }

    v69 = 2080;
    v70 = v54;
    v71 = 2112;
    v72 = a4;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "cert[%d]: %@ =(%s)[%s]> %@", &valuePtr, 0x30u);
  }

  v55 = *(a1 + 64);
  if (v55 > 7 || ((1 << v55) & 0xE8) == 0 || v20 == 6)
  {
    goto LABEL_73;
  }

  if (v20 == 3 && v55 == 5)
  {
    v20 = 3;
LABEL_73:
    *(a1 + 64) = v20;
  }

  result = *(a1 + 56);
  if (!result)
  {
    return result;
  }

  v57 = CFArrayGetValueAtIndex(result, a3);
  if (v57)
  {
    CFDictionarySetValue(v57, cf1, a4);
    return 1;
  }

  v58 = sub_1000027AC("SecError");
  result = os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v59 = CFArrayGetCount(*(a1 + 56));
    valuePtr = 134218240;
    *v68 = a3;
    *&v68[8] = 2048;
    *&v68[10] = v59;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "SecPVCSetResultForced: failed to get detail at index %ld (array length %ld)", &valuePtr, 0x16u);
    return 0;
  }

  return result;
}

uint64_t sub_100012818(uint64_t a1, const void *a2)
{
  v4 = *(*a1 + 200);
  if (v4)
  {
    if (*(v4 + 16) >= 1)
    {
      v5 = *(v4 + 136);
      if (v5)
      {
        v6 = *(v5 + 16);
      }
    }
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), *(a1 + 24));
  CFDictionaryGetValue(ValueAtIndex[4], a2);
  result = SecPolicyCheckCertKeyUsage();
  if ((result & 1) == 0)
  {

    return sub_100012178(a1, a2, 0, kCFBooleanFalse, 0, 0);
  }

  return result;
}

BOOL sub_1000128D8(uint64_t a1, uint64_t a2)
{
  sub_100003F3C(a1, a2);
  v27 = 0;
  v28 = &v27;
  v29 = 0x2000000000;
  v30 = 1;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 0x40000000;
  v26[2] = sub_100013304;
  v26[3] = &unk_100085A88;
  v26[4] = &v27;
  v26[5] = a2;
  sub_1000029CC(a1, v26);
  if ((*(a1 + 176) & 1) == 0 && *(v28 + 24) == 1)
  {
    goto LABEL_3;
  }

  if (!a2)
  {
    goto LABEL_15;
  }

  v5 = a2 + 136;
  for (i = *(a2 + 32); i < *(a2 + 16) - 1; *(a2 + 32) = i)
  {
    if (i >= -1 && (v7 = *(v5 + 8 * i + 8)) != 0)
    {
      v8 = *(v7 + 16);
    }

    else
    {
      v8 = 0;
    }

    v9 = SecCertificateCopyKey(v8);
    v10 = v9 == 0;
    if (!v9)
    {
      goto LABEL_34;
    }

    v11 = v9;
    v12 = *(*(v5 + 8 * *(a2 + 32)) + 16);
    IsSignedBy = SecCertificateIsSignedBy();
    CFRelease(v11);
    if (IsSignedBy)
    {
      goto LABEL_15;
    }

    i = *(a2 + 32) + 1;
  }

  if (*(a2 + 49))
  {
    CFArrayAppendValue(*(a1 + 160), a2);
  }

  if (*(a2 + 48) != 1 || (v14 = *(a2 + 40), v14 < 0))
  {
    v15 = *(a2 + 16);
  }

  else
  {
    v15 = *(a2 + 16);
    if (v14 == v15 - 1)
    {
      goto LABEL_21;
    }
  }

  if (v15 >= 1)
  {
    v16 = *(v5 + 8 * v15 - 8);
    if (v16)
    {
      v17 = *(v16 + 16);
    }
  }

  NormalizedIssuerContent = SecCertificateGetNormalizedIssuerContent();
  if (!NormalizedIssuerContent || (v19 = *(a2 + 16), v19 < 2))
  {
LABEL_33:
    v10 = 1;
    goto LABEL_34;
  }

  v20 = NormalizedIssuerContent;
  v21 = v19 - 1;
  v22 = a2 + 8 * v19 + 120;
  while (1)
  {
    v23 = *(*v22 + 16);
    NormalizedSubjectContent = SecCertificateGetNormalizedSubjectContent();
    if (NormalizedSubjectContent)
    {
      if (CFEqual(v20, NormalizedSubjectContent))
      {
        break;
      }
    }

    --v21;
    v22 -= 8;
    if (v21 <= 0)
    {
      goto LABEL_33;
    }
  }

LABEL_21:
  if (*(a1 + 176))
  {
    v4 = *(a1 + 160);
    goto LABEL_4;
  }

LABEL_3:
  v4 = *(a1 + 152);
LABEL_4:
  CFArrayAppendValue(v4, a2);
LABEL_15:
  v10 = 0;
LABEL_34:
  _Block_object_dispose(&v27, 8);
  return v10;
}

uint64_t sub_100012B10(uint64_t a1)
{
  if (*(a1 + 176) == 1)
  {
    sub_100019EDC(a1);
    return 1;
  }

  else
  {
    *(a1 + 248) = sub_1000133F8;
    v3 = sub_10000910C(a1);
    sub_1000029CC(a1, &stru_100085A60);
    return v3;
  }
}

void *sub_100012B7C(const void *a1, const void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x40uLL, 0x107004033994813uLL);
  if (v4)
  {
    if (a1)
    {
      CFRetain(a1);
    }

    *v4 = a1;
    if (a2)
    {
      CFRetain(a2);
    }

    v4[1] = a2;
  }

  return v4;
}

uint64_t sub_100012BF0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, const void *))
{
  NormalizedIssuerContent = SecCertificateGetNormalizedIssuerContent();
  if (NormalizedIssuerContent)
  {
    NormalizedIssuerContent = CFDictionaryGetValue(*(a1 + 32), NormalizedIssuerContent);
  }

  a4(a3, NormalizedIssuerContent);
  return 1;
}

uint64_t sub_100012C48(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, const void *))
{
  v6 = SecTrustStoreForDomain();
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = sub_1000071FC(v6);
  NormalizedIssuerContent = SecCertificateGetNormalizedIssuerContent();
  v8 = NormalizedIssuerContent;
  if (NormalizedIssuerContent && CFDataGetLength(NormalizedIssuerContent) >= 1)
  {
    if (!v6)
    {
      goto LABEL_17;
    }

    if (*(v6 + 8) && *(v6 + 36) != 1 && v22[3])
    {
      v9 = *v6;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 0x40000000;
      v20[2] = sub_100012E20;
      v20[3] = &unk_100085CC8;
      v20[6] = v6;
      v20[7] = v8;
      v20[4] = &v21;
      v20[5] = &v25;
      dispatch_sync(v9, v20);
    }
  }

  else if (!v6)
  {
    goto LABEL_17;
  }

  if (v8)
  {
    v10 = *(v6 + 40);
    if (v10)
    {
      v11 = v26[3];
      if (v11)
      {
        if (CFArrayGetCount(v11))
        {
          goto LABEL_17;
        }

        v10 = *(v6 + 40);
      }

      Value = CFDictionaryGetValue(*(v10 + 16), v8);
      if (Value)
      {
        v13 = Value;
        v14 = v26[3];
        if (v14)
        {
          v26[3] = 0;
          CFRelease(v14);
        }

        Count = CFArrayGetCount(v13);
        MutableCopy = CFArrayCreateMutableCopy(0, Count, v13);
        v26[3] = MutableCopy;
      }
    }
  }

LABEL_17:
  v17 = v22[3];
  if (v17)
  {
    v22[3] = 0;
    CFRelease(v17);
  }

  v18 = v26[3];
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  a4(a3, v18);
  if (v18)
  {
    CFRelease(v18);
  }

  return 1;
}

uint64_t sub_100012E20(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(v2 + 33) != 1)
  {
    goto LABEL_10;
  }

  v3 = *(v2 + 16);
  BytePtr = CFDataGetBytePtr(*(a1 + 56));
  Length = CFDataGetLength(*(a1 + 56));
  if (Length >> 31)
  {
    goto LABEL_5;
  }

  v6 = sqlite3_bind_blob(v3, 1, BytePtr, Length, 0);
  if (v6)
  {
    goto LABEL_21;
  }

  v7 = *(*(a1 + 48) + 16);
  v8 = CFDataGetBytePtr(*(*(*(a1 + 32) + 8) + 24));
  v9 = CFDataGetLength(*(*(*(a1 + 32) + 8) + 24));
  if (v9 >> 31)
  {
LABEL_5:
    v10 = 18;
LABEL_6:
    v11 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v18[0] = 67109120;
      v18[1] = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Failed to read parents from trust store: %d", v18, 8u);
    }

    sub_100054DC0(4, 3, v10);
    v12 = *(*(*(a1 + 40) + 8) + 24);
    if (v12)
    {
      CFRelease(v12);
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }

    goto LABEL_10;
  }

  v6 = sqlite3_bind_blob(v7, 2, v8, v9, 0);
  if (v6)
  {
LABEL_21:
    v10 = v6;
    goto LABEL_6;
  }

  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  *(*(*(a1 + 40) + 8) + 24) = Mutable;
  if (!Mutable)
  {
    v10 = 0;
    goto LABEL_6;
  }

  while (1)
  {
    v15 = sqlite3_step(*(*(a1 + 48) + 16));
    if (v15 != 100)
    {
      break;
    }

    sqlite3_column_blob(*(*(a1 + 48) + 16), 0);
    sqlite3_column_bytes(*(*(a1 + 48) + 16), 0);
    v16 = SecCertificateCreateWithBytes();
    if (!v16)
    {
      v10 = 100;
      goto LABEL_6;
    }

    v17 = v16;
    CFArrayAppendValue(*(*(*(a1 + 40) + 8) + 24), v16);
    CFRelease(v17);
  }

  v10 = v15;
  if (v15 && v15 != 101)
  {
    goto LABEL_6;
  }

LABEL_10:
  sqlite3_reset(*(*(a1 + 48) + 16));
  return sqlite3_clear_bindings(*(*(a1 + 48) + 16));
}

uint64_t sub_100013080(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, const void *))
{
  NormalizedIssuerContent = SecCertificateGetNormalizedIssuerContent();
  if (NormalizedIssuerContent)
  {
    v7 = ccsha1_di();
    CFDataGetBytePtr(NormalizedIssuerContent);
    CFDataGetLength(NormalizedIssuerContent);
    v8 = *v7;
    if (*v7 < 0)
    {
      NormalizedIssuerContent = 0;
    }

    else
    {
      NormalizedIssuerContent = CFDataCreateMutable(kCFAllocatorDefault, 0);
      CFDataSetLength(NormalizedIssuerContent, v8);
      CFDataGetMutableBytePtr(NormalizedIssuerContent);
      ccdigest();
      if (NormalizedIssuerContent)
      {
        Length = CFDataGetLength(NormalizedIssuerContent);
        Mutable = CFStringCreateMutable(kCFAllocatorDefault, 2 * Length);
        BytePtr = CFDataGetBytePtr(NormalizedIssuerContent);
        v12 = CFDataGetLength(NormalizedIssuerContent);
        if (v12 >= 1)
        {
          v13 = v12;
          do
          {
            v14 = *BytePtr++;
            CFStringAppendFormat(Mutable, 0, @"%02X", v14);
            --v13;
          }

          while (v13);
        }

        if (Mutable)
        {
          v15 = objc_autoreleasePoolPush();
          v16 = [qword_100092F48 anchorsForKey:Mutable];
          objc_autoreleasePoolPop(v15);
          a4(a3, v16);
          if (v16)
          {
            CFRelease(v16);
          }

          goto LABEL_10;
        }
      }
    }
  }

  a4(a3, 0);
  Mutable = 0;
  if (NormalizedIssuerContent)
  {
LABEL_10:
    CFRelease(NormalizedIssuerContent);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return 1;
}

uint64_t sub_10001321C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 < 1)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 136;
  v6 = a2 + 136;
  while (1)
  {
    result = CFEqual(*(v5 + 8 * v4), *(v6 + 8 * v4));
    if (!result)
    {
      break;
    }

    if (++v4 >= *(a1 + 16))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1000132A0(uint64_t a1, CFTypeRef cf2)
{
  v2 = *(a1 + 16);
  if (v2 < 1)
  {
    return -1;
  }

  v4 = 0;
  v5 = a1 + 136;
  while (!CFEqual(*(*(v5 + 8 * v4) + 16), cf2))
  {
    if (v2 == ++v4)
    {
      return -1;
    }
  }

  return v4;
}

uint64_t sub_100013304(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(v4 + 16) - 1;
  }

  else
  {
    v5 = -1;
  }

  result = sub_100013694(a2, v5);
  *(*(*(a1 + 32) + 8) + 24) &= result ^ 1;
  return result;
}

uint64_t sub_100013360(uint64_t result)
{
  *(result + 49) = 1;
  if ((*(result + 48) & 1) == 0)
  {
    v1 = *(result + 16);
    if (v1 >= 1)
    {
      v2 = *(*(result + 8 * v1 + 128) + 16);
      return SecCertificateIsSelfSigned();
    }
  }

  return result;
}

uint64_t sub_1000133F8(uint64_t a1)
{
  sub_1000029CC(a1, &stru_100085938);
  if (sub_10000B13C(a1))
  {
    if (a1)
    {
      v2 = *(a1 + 200);
      v3 = *(v2 + 16);
      if (*(v2 + 69))
      {
        v4 = 1;
      }

      else
      {
        v5 = v3 - *(v2 + 49);
        if (v5 < 1)
        {
LABEL_10:
          v4 = 1;
          *(v2 + 69) = 1;
        }

        else
        {
          v6 = v2 + 136;
          while ((*(*v6 + 42) & 1) == 0)
          {
            v6 += 8;
            if (!--v5)
            {
              goto LABEL_10;
            }
          }

          v4 = 0;
        }
      }

      if (v3 >= 1)
      {
        v7 = *(v2 + 136);
        if (v7)
        {
          v8 = *(v7 + 16);
        }
      }

      IsWeakHash = SecCertificateIsWeakHash();
      v10 = *(a1 + 200);
      if (v10)
      {
        v11 = *(v10 + 65);
        v12 = *(*(v10 + 136) + 40) ^ 1;
      }

      else
      {
        v11 = 0;
        v12 = 1;
      }

      v13 = *(a1 + 224);
      if (v13)
      {
        v14 = *(v13 + 96);
      }

      else
      {
        v14 = 0;
      }

      v15 = sub_100013A40(v10, *(a1 + 120));
      v16 = 11000000;
      if ((v11 & 1) == 0)
      {
        v16 = 10000000;
      }

      v17 = v15 + v16;
      v18 = *(a1 + 200);
      if (*(v18 + 96) < v17)
      {
        *(v18 + 96) = v17;
      }

      if (v17 > v14)
      {
        v19 = sub_1000027AC("accept");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v22 = *(a1 + 224);
          v23 = "non ";
          v24 = "non ";
          if (v22)
          {
            if (*(v22 + 65))
            {
              v24 = "";
            }

            else
            {
              v24 = "non ";
            }
          }

          v25 = *(a1 + 200);
          v26 = "reject";
          if (v14 > 10000000)
          {
            v26 = "accept";
          }

          v27 = 136316419;
          if (v11)
          {
            v23 = "";
          }

          v28 = v24;
          v29 = 2080;
          v30 = v26;
          v31 = 2048;
          v32 = v14;
          v33 = 2080;
          v34 = v23;
          v35 = 2048;
          v36 = v17;
          v37 = 2113;
          v38 = v25;
          _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "replacing %sev %s score: %ld with %sev score: %ld %{private}@", &v27, 0x3Eu);
        }

        *(a1 + 224) = *(a1 + 200);
      }

      v20 = sub_1000066A8;
      if ((v11 | v12) & (v4 | IsWeakHash))
      {
        v20 = sub_1000169B4;
      }

      *(a1 + 248) = v20;
    }
  }

  else
  {
    sub_100019EDC(a1);
  }

  return 1;
}

uint64_t sub_100013694(_DWORD *a1, CFIndex a2)
{
  v4 = *(*a1 + 120);
  v5 = *(*a1 + 200);
  if (!v5 || a2 < 0)
  {
    v7 = 0;
    if (!v5)
    {
      v8 = -1;
      goto LABEL_10;
    }
  }

  else if (*(v5 + 16) > a2 && (v6 = *(v5 + 8 * a2 + 136)) != 0)
  {
    v7 = *(v6 + 16);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v5 + 16) - 1;
LABEL_10:
  if (((sub_100006E14(a1, v7, 0) & 1) != 0 || sub_100012178(a1, kSecPolicyCheckTemporalValidity, a2, kCFBooleanFalse, 0, 0)) && (!SecCertificateIsWeakKey() || sub_100012178(a1, kSecPolicyCheckWeakKeySize, a2, kCFBooleanFalse, 0, 0)) && ((SecPolicyCheckCertWeakSignature() & 1) != 0 || sub_100012178(a1, kSecPolicyCheckWeakSignature, a2, kCFBooleanFalse, 0, 0)))
  {
    if (SecCertificateVersion() >= 3)
    {
      BasicConstraints = SecCertificateGetBasicConstraints();
      if (!BasicConstraints)
      {
        v10 = &kSecPolicyCheckBasicConstraints;
LABEL_30:
        if ((sub_100012178(a1, *v10, a2, kCFBooleanFalse, 1, 0) & 1) == 0)
        {
          return (a1[16] > 7u) | (0x17u >> a1[16]) & 1;
        }

        goto LABEL_31;
      }

      if ((*(BasicConstraints + 2) & 1) == 0)
      {
        v10 = &kSecPolicyCheckBasicConstraintsCA;
        goto LABEL_30;
      }

LABEL_31:
      KeyUsage = SecCertificateGetKeyUsage();
      if (KeyUsage && (KeyUsage & 0x20) == 0)
      {
        sub_100012178(a1, kSecPolicyCheckKeyUsage, a2, kCFBooleanFalse, 1, 0);
      }

      return (a1[16] > 7u) | (0x17u >> a1[16]) & 1;
    }

    if (a2 < 1 || v8 <= a2)
    {
      goto LABEL_31;
    }

    v11 = *(*a1 + 200);
    if (v11)
    {
      if (*(v11 + 16) > v8)
      {
        v12 = *(v11 + 8 * v8 + 136);
        if (v12)
        {
          v13 = *(v12 + 16);
        }
      }
    }

    if (SecCertificateVersion() < 3 || sub_100012178(a1, kSecPolicyCheckBasicConstraints, a2, kCFBooleanFalse, 1, 0))
    {
      goto LABEL_31;
    }
  }

  return (a1[16] > 7u) | (0x17u >> a1[16]) & 1;
}

void sub_100013908(_BYTE *a1)
{
  v1 = *(*a1 + 200);
  if (v1)
  {
    v2 = v1[2];
    if (v2 >= 1)
    {
      v4 = 0;
      v5 = 0;
      v6 = kSecPolicyCheckRevocationResponseRequired;
      while (v1[11] > v5)
      {
        v7 = v1[10];
        if (!v7)
        {
          break;
        }

        v8 = (v7 + v4);
        v9 = *(v7 + v4 + 16);
        if (!v9 || *(v9 + 72) == 0.0)
        {
          goto LABEL_10;
        }

LABEL_21:
        ++v5;
        v4 += 40;
        if (v2 == v5)
        {
          return;
        }
      }

      v8 = 0;
LABEL_10:
      if (v1[2] <= v5 || (v10 = v5, (*(v1[v5 + 17] + 43) & 1) == 0))
      {
        if (v5 || a1[32] != 1)
        {
LABEL_16:
          if (sub_100013C7C(v8))
          {
            if (v8)
            {
              v11 = v8[3];
              if (v11)
              {
                if (*(v11 + 49) != *(v11 + 48))
                {
                  sub_100053B7C(v8);
                }
              }
            }
          }

          goto LABEL_21;
        }

        v10 = 0;
      }

      sub_100012178(a1, v6, v10, kCFBooleanFalse, 1, 0);
      goto LABEL_16;
    }
  }
}

uint64_t sub_100013A40(uint64_t a1, double a2)
{
  v3 = *(a1 + 16);
  v4 = v3 - 1;
  v5 = -100000;
  if (*(a1 + 32) == v3 - 1)
  {
    v5 = 0;
  }

  if (*(a1 + 49))
  {
    v5 += 10000;
  }

  if (*(a1 + 48) == 1 && *(a1 + 40) == v4)
  {
    v6 = v5 - v3 + 1000;
  }

  else
  {
    v6 = v5 + v3;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 1;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 0x40000000;
  v15 = sub_100013BF8;
  v16 = &unk_1000830A0;
  v18 = a2;
  v17 = &v19;
  v23 = 0;
  if (v3 <= 0)
  {
    _Block_object_dispose(&v19, 8);
LABEL_16:
    v6 += 100;
    goto LABEL_17;
  }

  v7 = (a1 + 136);
  do
  {
    v8 = v4;
    v9 = *v7++;
    (v15)(v14, *(v9 + 16), &v23);
    if (v23)
    {
      break;
    }

    v4 = v8 - 1;
  }

  while (v8);
  v10 = *(v20 + 24);
  _Block_object_dispose(&v19, 8);
  if (v10)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (*(a1 + 69))
  {
LABEL_23:
    v6 += 10;
    goto LABEL_24;
  }

  v11 = *(a1 + 16) - *(a1 + 49);
  if (v11 < 1)
  {
LABEL_22:
    *(a1 + 69) = 1;
    goto LABEL_23;
  }

  v12 = a1 + 136;
  while ((*(*v12 + 42) & 1) == 0)
  {
    v12 += 8;
    if (!--v11)
    {
      goto LABEL_22;
    }
  }

LABEL_24:
  if (sub_100016760(a1))
  {
    return v6;
  }

  else
  {
    return v6 + 10;
  }
}

uint64_t sub_100013BF8(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = SecCertificateIsValid();
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return result;
}

double sub_100013C34(uint64_t a1)
{
  sub_100015868(a1);
  v3 = *(a1 + 16);
  if (v3)
  {

    return sub_100014948(v3, result);
  }

  return result;
}

uint64_t sub_100013C7C(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 24);
    if (v1)
    {
      v2 = *(v1 + 54);
      if ((*(v1 + 16) - 1) > 1)
      {
        if ((*(v1 + 54) & 1) == 0 && (*(v1 + 50) != 1 || *(v1 + 48) == 1))
        {
          return 0;
        }
      }

      else if ((*(v1 + 54) & 1) == 0 && (*(v1 + 50) & 1) == 0 && (*(v1 + 48) & 1) == 0)
      {
        return 0;
      }

      return 1;
    }

    return 0;
  }

  return result;
}

void sub_100013CE0(uint64_t a1, uint64_t a2, int a3, char a4, double a5)
{
  if (!a2)
  {
    return;
  }

  v7 = *(a2 + 8);
  if (*(a2 + 8))
  {
    v90 = sub_1000027AC("ocsp");
    if (!os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_72;
    }

    v91 = *(a1 + 80);
    *context = 138412546;
    *&context[4] = v91;
    *&context[12] = 1024;
    *&context[14] = v7;
    v92 = "responder: %@ returned status: %d";
    v93 = v90;
    v94 = 18;
LABEL_156:
    _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, v92, context, v94);
    goto LABEL_72;
  }

  v11 = sub_10001E660(a2, *(a1 + 32));
  if (!v11)
  {
    v95 = sub_1000027AC("ocsp");
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_72;
    }

    v96 = *(a1 + 80);
    *context = 138412290;
    *&context[4] = v96;
    v92 = "ocsp responder: %@ did not include status of requested cert";
    v93 = v95;
    v94 = 12;
    goto LABEL_156;
  }

  v12 = v11;
  v13 = *(a1 + 48);
  if (v13 && *(v13 + 8) >= *(v11 + 8))
  {
    goto LABEL_71;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if ((a4 & 1) == 0)
  {
    if (*v12 == 1)
    {
      v15 = *(a2 + 16);
    }

    v16 = *(a1 + 56);
    v17 = kCFAllocatorDefault;
    if (v16 < -1 || (v18 = *(*(a1 + 16) + 200), v19 = v16 + 1, v20 = *(v18 + 16), v21 = v20 - (v16 + 1), v20 <= v16 + 1))
    {
      v102 = 0;
      v29 = 0;
      v30 = 1;
      goto LABEL_20;
    }

    v100 = a3;
    v22 = *(v18 + 32);
    v23 = *(v18 + 40);
    v78 = v22 <= v19;
    v24 = v22 - v19;
    if (v78)
    {
      v25 = 0;
    }

    else
    {
      v25 = v24;
    }

    v26 = v23 - v19;
    if (v23 <= v16)
    {
      v27 = -1;
    }

    else
    {
      v27 = v26;
    }

    if (v23 < 0)
    {
      v28 = 0;
    }

    else
    {
      v28 = *(v18 + 48);
    }

    sub_1000034AC();
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v72 = Instance;
      *(Instance + 24) = 0u;
      *(Instance + 40) = 0u;
      *(Instance + 120) = 0u;
      *(Instance + 104) = 0u;
      *(Instance + 88) = 0u;
      *(Instance + 72) = 0u;
      *(Instance + 56) = 0u;
      *(Instance + 16) = v21;
      *(Instance + 32) = v25;
      *(Instance + 40) = v27;
      *(Instance + 48) = v28;
      *(Instance + 49) = *(v18 + 49);
      v102 = Instance;
      if (v21 >= 1)
      {
        v73 = (Instance + 136);
        v74 = (v18 + 8 * v16 + 144);
        v75 = (Instance + 136);
        do
        {
          v76 = *v74++;
          *v75++ = v76;
          CFRetain(v76);
          --v21;
        }

        while (v21);
        a3 = v100;
        v17 = kCFAllocatorDefault;
        if (*(v72 + 16) >= 1 && (v77 = *v73) != 0)
        {
          v29 = *(v77 + 16);
          if (v29)
          {
            CFRetain(*(v77 + 16));
          }

          v30 = 0;
        }

        else
        {
          v30 = 0;
          v29 = 0;
        }

LABEL_20:
        v31 = sub_10001E2F0(a2);
        *v105 = 0;
        v106 = v105;
        v107 = 0x2000000000;
        v108 = 0;
        v32 = sub_10001E2F0(a2);
        if (v32)
        {
          v33 = v32;
          *context = _NSConcreteStackBlock;
          *&context[8] = 0x40000000;
          *&context[16] = sub_100020964;
          *&context[24] = &unk_100083B40;
          v111 = v105;
          v112 = a2;
          v115.length = CFArrayGetCount(v32);
          v115.location = 0;
          CFArrayApplyFunction(v33, v115, sub_1000407C4, context);
          CFRelease(v33);
        }

        v34 = *(v106 + 24);
        if (v29 && !v34)
        {
          if (sub_100020AB8(a2, v29))
          {
            CFRetain(v29);
            *(v106 + 24) = v29;
            v34 = v29;
          }

          else
          {
            v34 = *(v106 + 24);
          }
        }

        _Block_object_dispose(v105, 8);
        if (v34)
        {
          v35 = v31 == 0;
        }

        else
        {
          v35 = 1;
        }

        if (v35)
        {
          v36 = sub_1000027AC("ocsp");
          v37 = 0;
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v65 = *(a1 + 80);
            *context = 138412290;
            *&context[4] = v65;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "ocsp responder: %@ no signer found for response", context, 0xCu);
            v37 = 0;
            if ((v30 & 1) == 0)
            {
              goto LABEL_149;
            }
          }

          else if ((v30 & 1) == 0)
          {
            goto LABEL_149;
          }

          goto LABEL_34;
        }

        if (v29 && CFEqual(v34, v29))
        {
          v50 = sub_1000027AC("ocsp");
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            v89 = *(a1 + 80);
            *context = 138412290;
            *&context[4] = v89;
            _os_log_debug_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "ocsp responder: %@ response signed by issuer", context, 0xCu);
          }

          v37 = 1;
          if ((v30 & 1) == 0)
          {
            goto LABEL_149;
          }

          goto LABEL_34;
        }

        v101 = a3;
        v59 = sub_1000027AC("ocsp");
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          v88 = *(a1 + 80);
          *context = 138412290;
          *&context[4] = v88;
          _os_log_debug_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEBUG, "ocsp responder: %@ response signed by cert issued by issuer", context, 0xCu);
        }

        Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
        CFArrayAppendValue(Mutable, v34);
        v116.length = CFArrayGetCount(v31);
        v116.location = 0;
        CFArrayAppendArray(Mutable, v31, v116);
        v61 = 0;
        if ((v30 & 1) == 0)
        {
          v61 = sub_100020884(v102);
        }

        *v105 = 0;
        v106 = v105;
        v107 = 0x2000000000;
        LOBYTE(v108) = 0;
        theArray = v61;
        if (Mutable && v61)
        {
          values = SecPolicyCreateOCSPSigner();
          cf = CFArrayCreate(v17, &values, 1, &kCFTypeArrayCallBacks);
          CFRelease(values);
          *context = _NSConcreteStackBlock;
          *&context[8] = 0x40000000;
          *&context[16] = sub_10001C7C0;
          *&context[24] = &unk_100085360;
          v111 = v105;
          v62 = _Block_copy(context);
          v63 = *(a1 + 16);
          if (v63)
          {
            v64 = *(v63 + 32);
            if (v64)
            {
              CFRetain(*(v63 + 32));
            }
          }

          else
          {
            v64 = 0;
          }

          v79 = sub_100003544(0, v64, Mutable, theArray, 1, 0, cf, 0, 0, 0, 0, 0, 0, sub_10001C77C, v62);
          sub_1000209AC(v79, 0);
          sub_100004890(v79);
          if (v64)
          {
            CFRelease(v64);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          if (*(v106 + 24) == 1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
            v81 = CFArrayGetValueAtIndex(Mutable, 0);
            if (ValueAtIndex)
            {
              v82 = v81;
              v83 = SecCertificateCopyKey(ValueAtIndex);
              ValueAtIndex = v83;
              v84 = v83 != 0;
              if (v82 && v83)
              {
                if (!SecCertificateIsSignedBy())
                {
                  CFRelease(ValueAtIndex);
                  _Block_object_dispose(v105, 8);
                  v87 = 1;
                  goto LABEL_145;
                }

                v84 = 1;
              }

              cfa = v84;
            }

            else
            {
              cfa = 0;
            }

            v85 = sub_1000027AC("ocsp");
            if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "ocsp signer cert not signed by issuer", buf, 2u);
            }

            if (cfa)
            {
              CFRelease(ValueAtIndex);
            }
          }
        }

        _Block_object_dispose(v105, 8);
        v86 = sub_1000027AC("ocsp");
        if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
        {
          *context = 0;
          _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "ocsp response signed by certificate which does not satisfy ocspSigner policy", context, 2u);
        }

        v87 = 0;
        v37 = 0;
        if (!Mutable)
        {
LABEL_146:
          if (theArray)
          {
            CFRelease(theArray);
          }

          a3 = v101;
          if ((v30 & 1) == 0)
          {
LABEL_149:
            CFRelease(v102);
            if (!v29)
            {
LABEL_36:
              if (v31)
              {
                CFRelease(v31);
              }

              if (v34)
              {
                CFRelease(v34);
              }

              if (!v37)
              {
                goto LABEL_71;
              }

              goto LABEL_41;
            }

LABEL_35:
            CFRelease(v29);
            goto LABEL_36;
          }

LABEL_34:
          if (!v29)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }

LABEL_145:
        CFRelease(Mutable);
        v37 = v87;
        goto LABEL_146;
      }

      v30 = 0;
      v29 = 0;
    }

    else
    {
      v102 = 0;
      v29 = 0;
      v30 = 1;
    }

    a3 = v100;
    v17 = kCFAllocatorDefault;
    goto LABEL_20;
  }

LABEL_41:
  v38 = *(a1 + 16);
  if (v38)
  {
    v39 = *(v38 + 272);
    if (v39)
    {
      *&v40 = 0xAAAAAAAAAAAAAAAALL;
      *(&v40 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *context = v40;
      *&context[16] = v40;
      if (DERParseSequenceContent((a2 + 56), DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, context, 0x20uLL) || SecSignatureHashAlgorithmForAlgorithmOid() <= 4)
      {
        *(v39 + 69) = 1;
      }
    }
  }

  v41 = *(v12 + 8);
  if (v41 <= Current + 4500.0)
  {
    v46 = v41 + 86400.0;
    if (*(v12 + 16) == 0.0)
    {
      v47 = v46;
    }

    else
    {
      v47 = *(v12 + 16);
    }

    if (Current + -4500.0 <= v47)
    {
      v48 = 1;
      *(*(a1 + 24) + 33) = 1;
      v49 = 1;
      goto LABEL_66;
    }

    v51 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v52 = "thisUpdate + defaultTTL";
      if (*(v12 + 16) != 0.0)
      {
        v52 = "nextUpdate";
      }

      *context = 136315394;
      *&context[4] = v52;
      *&context[12] = 2048;
      *&context[14] = (Current - v47) / 86400.0;
      v43 = "OCSPSingleResponse: %s %.2f days ago";
      v44 = v51;
      v45 = 22;
      goto LABEL_64;
    }
  }

  else
  {
    v42 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *context = 0;
      v43 = "OCSPSingleResponse: thisUpdate more than 1:15 from now";
      v44 = v42;
      v45 = 2;
LABEL_64:
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, v43, context, v45);
    }
  }

  v48 = 0;
  v49 = 0;
LABEL_66:
  if (*v12 == 1)
  {
    v54 = *(*(a1 + 16) + 200);
    if (v54)
    {
      v55 = *(a1 + 56);
      if ((v55 & 0x8000000000000000) == 0 && *(v54 + 16) > v55)
      {
        v56 = *(v54 + 8 * v55 + 136);
        if (v56)
        {
          v57 = *(v56 + 16);
        }
      }
    }

    SecCertificateNotValidAfter();
LABEL_93:
    *(a2 + 32) = v58;
    goto LABEL_94;
  }

  if (!*v12)
  {
    if (!v49)
    {
LABEL_71:
      sub_10001E2B0(v12);
LABEL_72:
      sub_100019788(a2);
      return;
    }

    *(a2 + 24) = 0;
    if (*(a2 + 16) > Current + 4500.0)
    {
      v53 = sub_1000027AC("ocsp");
      if (!os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_71;
      }

      *v105 = 0;
      v70 = "OCSPResponse: producedAt more than 1:15 from now";
LABEL_158:
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, v70, v105, 2u);
      goto LABEL_71;
    }

    *context = _NSConcreteStackBlock;
    *&context[8] = 0x40000000;
    *&context[16] = sub_10001ED88;
    *&context[24] = &unk_100083AF0;
    v111 = *&Current;
    v112 = a2;
    *v105 = _NSConcreteStackBlock;
    v106 = 0x40000000;
    v107 = sub_10001FBBC;
    v108 = &unk_100083B68;
    v109 = context;
    if (DERDecodeSequenceContentWithBlock((a2 + 152), v105))
    {
      v53 = sub_1000027AC("SecError");
      if (!os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_71;
      }

      *v105 = 0;
      v70 = "failed to parse single responses";
      goto LABEL_158;
    }

    v58 = *(a2 + 24);
    if (v58 == 0.0)
    {
      v58 = Current + 86400.0;
    }

    else
    {
      if (v58 < Current + -4500.0)
      {
        v53 = sub_1000027AC("ocsp");
        if (!os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_71;
        }

        *v105 = 0;
        v70 = "OCSPResponse: latestNextUpdate more than 1:15 ago";
        goto LABEL_158;
      }

      v78 = v58 - Current <= a5 || a5 <= 0.0;
      if (!v78)
      {
        v58 = Current + a5;
      }
    }

    goto LABEL_93;
  }

LABEL_94:
  if (a3)
  {
    v66 = *(a1 + 40);
    v67 = *(a1 + 80);
    *context = _NSConcreteStackBlock;
    *&context[8] = 0x40000000;
    *&context[16] = sub_100017E2C;
    *&context[24] = &unk_1000831D8;
    v111 = v66;
    v112 = a2;
    v113 = v67;
    v114 = Current;
    sub_100010E60(context);
  }

  v68 = *(a1 + 40);
  if (v68)
  {
    sub_100019788(v68);
  }

  *(a1 + 40) = a2;
  v69 = *(a1 + 48);
  if (v69)
  {
    sub_10001E2B0(v69);
  }

  *(a1 + 48) = v12;
  *(a1 + 88) = v48;
}

double sub_100014948(uint64_t a1, double result)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = *v3;
    if (v4 != 2)
    {
      if (v4 == 1)
      {
        valuePtr = *(v3 + 8);
        v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
        v7 = *(a1 + 16);
        v8 = *(a1 + 56);
        *buf = _NSConcreteStackBlock;
        *&v18 = 0x40000000;
        *(&v18 + 1) = sub_10005BE70;
        v19 = &unk_1000858D0;
        v20 = kSecPolicyCheckRevocation;
        v21 = v8;
        v22 = v6;
        v23 = 1;
        sub_1000029CC(v7, buf);
        v9 = *(*(a1 + 16) + 200);
        if (v9)
        {
          v10 = *(a1 + 56);
          if (*(v9 + 16) > v10)
          {
            v11 = *(v9 + 8 * v10 + 136);
            if (v6)
            {
              CFRetain(v6);
            }

            *(v11 + 32) = v6;
          }
        }

        CFRelease(v6);
      }

      else if (*v3)
      {
        v12 = sub_1000027AC("ocsp");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *v3;
          v14 = *(a1 + 56);
          *buf = 67109376;
          *&buf[4] = v13;
          LOWORD(v18) = 2048;
          *(&v18 + 2) = v14;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "BAD certStatus (%d) for cert %ld", buf, 0x12u);
        }
      }

      else
      {
        v5 = *(v3 + 2);
        if (v5 == 0.0)
        {
          v5 = *(v3 + 1) + 86400.0;
        }

        *(a1 + 72) = v5;
      }
    }

    result = *(*(a1 + 48) + 8);
    *(a1 + 64) = result;
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    result = *(v15 + 32);
    *(a1 + 72) = result;
  }

  return result;
}

BOOL sub_100014B38(uint64_t a1, void *a2)
{
  v2 = a1;
  Value = 0;
  if (!a2)
  {
    goto LABEL_163;
  }

  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (!v5 || v4 == 0)
  {
    goto LABEL_163;
  }

  v8 = SecCertificateCopySHA256Digest();
  if (!v8)
  {
    Value = 0;
    goto LABEL_163;
  }

  cf2 = v8;
  v9 = *a2;
  if (*a2 && *(v9 + 32) && *(v9 + 24))
  {
    v10 = v2;
    v11 = SecCertificateCopySHA256Digest();
    v12 = sub_1000120B4(v11, cf2);
    os_unfair_lock_lock((v9 + 40));
    v13 = *(v9 + 24);
    v144.length = CFArrayGetCount(v13);
    v144.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v13, v144, v12);
    if (FirstIndexOfValue < 0)
    {
      Value = 0;
      goto LABEL_23;
    }

    v15 = FirstIndexOfValue;
    Value = CFDictionaryGetValue(*(v9 + 32), v12);
    v16 = *(Value + 24);
    if (v11 && v16)
    {
      if (!CFEqual(v16, v11))
      {
        goto LABEL_20;
      }
    }

    else if (v16 != v11)
    {
      goto LABEL_20;
    }

    v17 = *(Value + 32);
    if (v17 && CFEqual(v17, cf2))
    {
      CFArrayRemoveValueAtIndex(*(v9 + 24), v15);
      CFArrayAppendValue(*(v9 + 24), v12);
LABEL_22:
      CFRetain(Value);
LABEL_23:
      os_unfair_lock_unlock((v9 + 40));
      if (v11)
      {
        CFRelease(v11);
      }

      if (v12)
      {
        CFRelease(v12);
      }

      v2 = v10;
      if (Value)
      {
        v19 = cf2;
LABEL_162:
        CFRelease(v19);
        goto LABEL_163;
      }

      goto LABEL_29;
    }

LABEL_20:
    CFArrayRemoveValueAtIndex(*(v9 + 24), v15);
    CFDictionaryRemoveValue(*(v9 + 32), v12);
    v18 = sub_1000027AC("validcache");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "found a bad valid info cache entry at %ld", &buf, 0xCu);
    }

    goto LABEL_22;
  }

LABEL_29:
  v100 = 0;
  v101 = 0;
  v98 = 0;
  cf = 0;
  v96 = 0;
  v97 = 0;
  v20 = SecCertificateCopySerialNumberData(v5, 0);
  if (!v20)
  {
    Value = 0;
    v21 = 0;
    goto LABEL_57;
  }

  v21 = SecCertificateCopySHA256Digest();
  v22 = cf2;
  if (!v21)
  {
    goto LABEL_138;
  }

  v23 = sub_10001CE8C(a2, cf2, &v101);
  if (v23 < 1)
  {
    goto LABEL_138;
  }

  v24 = v23;
  v94 = v5;
  v25 = sub_10001B7D4(a2, v23, &v100, &cf, &v96, &v101);
  v26 = 0;
  if (v25 <= 1)
  {
    if (v25)
    {
      v91 = v25;
      if (v25 != 1)
      {
        goto LABEL_116;
      }

      v125 = 0;
      v126 = &v125;
      v127 = 0x2000000000;
      v128 = 0;
      v121 = 0;
      v122 = &v121;
      v123 = 0x2000000000;
      LOBYTE(v124) = 1;
      *&v141 = 0;
      *(&v141 + 1) = &v141;
      v142 = 0x2000000000;
      v143 = 0;
      v117 = 0;
      v118 = &v117;
      v119 = 0x2000000000;
      BytePtr = CFDataGetBytePtr(v20);
      v113 = 0;
      v114 = &v113;
      v115 = 0x2000000000;
      Length = CFDataGetLength(v20);
      if (v118[3])
      {
        if (v114[3])
        {
          v27 = a2[1];
          *&buf = _NSConcreteStackBlock;
          *(&buf + 1) = 0x40000000;
          v132 = sub_10001BB80;
          v133 = &unk_100084E58;
          v134 = &v121;
          v135 = &v141;
          v136 = &v117;
          v137 = &v113;
          v139 = v24;
          v140 = a2;
          v138 = &v125;
          v28 = sub_100004A60(v27, @"SELECT rowid FROM serials WHERE groupid=? AND serial=?", (*(&v141 + 1) + 24), &buf);
          *(v122 + 24) &= v28;
          if ((v126[3] & 1) == 0 && v114[3] >= 2 && !*v118[3])
          {
            v29 = a2[1];
            valuePtr = _NSConcreteStackBlock;
            p_valuePtr = 0x40000000;
            v104 = sub_1000535BC;
            v105 = &unk_100084EA8;
            v106 = &v121;
            v107 = &v141;
            v108 = &v117;
            v109 = &v113;
            v111 = v24;
            v112 = a2;
            v110 = &v125;
            v30 = sub_100004A60(v29, @"SELECT rowid FROM serials WHERE groupid=? AND serial=?", (*(&v141 + 1) + 24), &valuePtr);
            *(v122 + 24) &= v30;
          }
        }
      }

      if (*(v122 + 24) != 1 || *(*(&v141 + 1) + 24))
      {
        v31 = sub_1000027AC("SecError");
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = *(*(&v141 + 1) + 24);
          *v129 = 138412290;
          v130 = v32;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "_SecRevocationDbSerialInGroup failed: %@", v129, 0xCu);
        }

        v33 = *(*(&v141 + 1) + 24);
        if (v33)
        {
          Code = CFErrorGetCode(v33);
        }

        else
        {
          Code = -2070;
        }

        sub_100054DC0(1, 3, Code);
        v52 = *(*(&v141 + 1) + 24);
        if (v52)
        {
          if (v101)
          {
            CFRelease(v52);
          }

          else
          {
            v101 = *(*(&v141 + 1) + 24);
          }
        }
      }

      v26 = *(v126 + 24);
      _Block_object_dispose(&v113, 8);
      _Block_object_dispose(&v117, 8);
      _Block_object_dispose(&v141, 8);
      _Block_object_dispose(&v121, 8);
      v54 = &v125;
      goto LABEL_85;
    }

    Value = 0;
LABEL_57:
    v22 = cf2;
    goto LABEL_139;
  }

  v91 = v25;
  if (v25 == 2)
  {
    valuePtr = 0;
    p_valuePtr = &valuePtr;
    v104 = 0x2000000000;
    LOBYTE(v105) = 0;
    v125 = 0;
    v126 = &v125;
    v127 = 0x2000000000;
    v128 = 1;
    v121 = 0;
    v122 = &v121;
    v123 = 0x2000000000;
    v124 = 0;
    if (CFDataGetLength(v21) <= 0)
    {
      if ((v126[3] & 1) == 0)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v40 = a2[1];
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 0x40000000;
      v132 = sub_10005370C;
      v133 = &unk_100084EF8;
      v134 = &v125;
      v135 = &v121;
      v138 = v21;
      v139 = a2;
      v136 = &valuePtr;
      v137 = v24;
      v41 = sub_100004A60(v40, @"SELECT rowid FROM hashes WHERE groupid=? AND sha256=?", v122 + 3, &buf);
      v42 = (v41 & v126[3]);
      *(v126 + 24) &= v41;
      if (v42 != 1)
      {
        goto LABEL_61;
      }
    }

    if (!v122[3])
    {
LABEL_84:
      v26 = *(p_valuePtr + 24);
      _Block_object_dispose(&v121, 8);
      _Block_object_dispose(&v125, 8);
      v54 = &valuePtr;
LABEL_85:
      _Block_object_dispose(v54, 8);
      goto LABEL_116;
    }

LABEL_61:
    v43 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = v122[3];
      LODWORD(v141) = 138412290;
      *(&v141 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "_SecRevocationDbCertHashInGroup failed: %@", &v141, 0xCu);
    }

    v45 = v122[3];
    if (v45)
    {
      v46 = CFErrorGetCode(v45);
    }

    else
    {
      v46 = -2070;
    }

    sub_100054DC0(1, 3, v46);
    v53 = v122[3];
    if (v53)
    {
      if (v101)
      {
        CFRelease(v53);
      }

      else
      {
        v101 = v122[3];
      }
    }

    goto LABEL_84;
  }

  if (v25 != 3)
  {
    goto LABEL_116;
  }

  v35 = cf;
  if (cf)
  {
    v36 = v24;
    CFRetain(cf);
    v37 = sub_10004D900(v35);
    if (v37)
    {
      v38 = v37;
    }

    else
    {
      v38 = v35;
    }

    if (v37)
    {
      v39 = v37;
      CFRelease(v35);
      v38 = v39;
    }

    v24 = v36;
  }

  else
  {
    v38 = 0;
  }

  v87 = v38;
  v47 = CFPropertyListCreateWithData(kCFAllocatorDefault, v38, 0, 0, 0);
  v88 = v24;
  v86 = v47;
  if (!v47)
  {
    v90 = 0;
    v50 = 0;
LABEL_87:
    v49 = 0;
    goto LABEL_88;
  }

  v48 = v47;
  v49 = CFDictionaryGetValue(v47, @"xor");
  v50 = CFDictionaryGetValue(v48, @"params");
  if (v49)
  {
    v90 = CFDataGetBytePtr(v49);
    if (v90)
    {
      if (CFDataGetLength(v49) < 1)
      {
        v51 = 0;
        v49 = 0;
      }

      else
      {
        v49 = CFDataGetLength(v49);
        v51 = 0;
      }

      goto LABEL_89;
    }

    v90 = 0;
    goto LABEL_87;
  }

  v90 = 0;
LABEL_88:
  v51 = 1;
LABEL_89:
  v55 = CFDataGetBytePtr(v20);
  if (v55)
  {
    v56 = v55;
    v57 = CFDataGetLength(v20);
    v26 = 0;
    if (v49 < 1)
    {
      v58 = 1;
    }

    else
    {
      v58 = v51;
    }

    if ((v58 & 1) == 0)
    {
      v89 = v57;
      if (v50)
      {
        v85 = v20;
        Count = CFArrayGetCount(v50);
        if (Count < 1)
        {
          v26 = 1;
        }

        else
        {
          v60 = Count;
          v92 = v2;
          v61 = 0;
          v62 = v56 - 1;
          do
          {
            LODWORD(valuePtr) = -1431655766;
            ValueAtIndex = CFArrayGetValueAtIndex(v50, v61);
            if (ValueAtIndex && (v64 = ValueAtIndex, v65 = CFGetTypeID(ValueAtIndex), v65 == CFNumberGetTypeID()) && CFNumberGetValue(v64, kCFNumberSInt32Type, &valuePtr) && (valuePtr & 0x80000000) == 0)
            {
              v66 = valuePtr ^ 0x811C9DC5;
              v67 = v89;
              if (v89 >= 1)
              {
                do
                {
                  v66 = 16777619 * (v66 ^ v62[v67]);
                }

                while (v67-- > 1);
              }

              if (((v90[(v66 % (8 * v49)) >> 3] >> ((v66 % (8 * v49)) & 7)) & 1) == 0)
              {
                v26 = 0;
                goto LABEL_110;
              }
            }

            else
            {
              v69 = sub_1000027AC("validupdate");
              if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
              {
                LODWORD(buf) = 134217984;
                *(&buf + 4) = v61;
                _os_log_debug_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEBUG, "error processing filter params at index %ld", &buf, 0xCu);
              }
            }

            ++v61;
          }

          while (v61 != v60);
          v26 = 1;
LABEL_110:
          v2 = v92;
          v20 = v85;
        }
      }
    }
  }

  else
  {
    v26 = 0;
  }

  if (v86)
  {
    CFRelease(v86);
  }

  v24 = v88;
  if (v87)
  {
    CFRelease(v87);
  }

LABEL_116:
  v93 = v2;
  v70 = v20;
  v71 = v100;
  if ((v100 & 0x80) != 0)
  {
    sub_10004DBEC(a2, v24, &v98, &v97, &v101);
    v71 = v100;
  }

  v73 = v97;
  v72 = v98;
  v74 = v96;
  sub_10001BCC8();
  Value = _CFRuntimeCreateInstance();
  if (Value)
  {
    CFRetain(v21);
    CFRetain(cf2);
    if (v72)
    {
      CFRetain(v72);
    }

    if (v73)
    {
      CFRetain(v73);
    }

    if (v74)
    {
      CFRetain(v74);
    }

    *(Value + 16) = v91;
    *(Value + 24) = v21;
    *(Value + 32) = cf2;
    *(Value + 40) = 0;
    *(Value + 48) = v26 & 1;
    *(Value + 49) = (v71 & 0x10) != 0;
    *(Value + 50) = v71 & 1;
    *(Value + 51) = (v71 & 2) != 0;
    *(Value + 52) = (v71 & 4) != 0;
    *(Value + 53) = (v71 & 8) != 0;
    *(Value + 54) = (v71 & 0x400) != 0;
    *(Value + 55) = (v71 & 0x40) != 0;
    *(Value + 56) = (v71 & 0x80) != 0;
    *(Value + 57) = HIBYTE(v71) & 1;
    *(Value + 58) = (v71 & 0x200) != 0;
    *(Value + 64) = v72;
    *(Value + 72) = v73;
    *(Value + 80) = 0;
    *(Value + 88) = v74;
  }

  v75 = off_1000927D0(off_1000927C0, v94, 0);
  if (qword_100092AE0 != -1)
  {
    dispatch_once(&qword_100092AE0, &stru_100081EF8);
  }

  v20 = v70;
  v22 = cf2;
  v2 = v93;
  if ((byte_100092AD8 | v75))
  {
    v76 = byte_100092AD8 ^ 1 | v75;
    if (!Value)
    {
      goto LABEL_139;
    }
  }

  else
  {
    v76 = sub_100008B24(v94, 0);
    if (!Value)
    {
      goto LABEL_139;
    }
  }

  if (v76)
  {
    goto LABEL_137;
  }

  v77 = SecCertificateCopySHA256Digest();
  v78 = sub_10001BD60(v77);
  if (v77)
  {
    CFRelease(v77);
  }

  if ((v78 & 1) != 0 || sub_10001BD60(cf2))
  {
LABEL_137:
    CFRelease(Value);
LABEL_138:
    Value = 0;
  }

LABEL_139:
  v19 = v101;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v98)
  {
    CFRelease(v98);
  }

  if (v97)
  {
    CFRelease(v97);
  }

  if (v96)
  {
    CFRelease(v96);
  }

  if (Value)
  {
    v79 = *a2;
    if (v79)
    {
      if (*(v79 + 32) && *(v79 + 24))
      {
        v80 = sub_1000120B4(*(Value + 24), *(Value + 32));
        os_unfair_lock_lock((v79 + 40));
        v81 = *(v79 + 24);
        v145.length = CFArrayGetCount(v81);
        v145.location = 0;
        if (CFArrayGetFirstIndexOfValue(v81, v145, v80) < 0)
        {
          CFDictionaryAddValue(*(v79 + 32), v80, Value);
          if (CFArrayGetCount(*(v79 + 24)) >= 100)
          {
            v82 = *(v79 + 32);
            v83 = CFArrayGetValueAtIndex(*(v79 + 24), 0);
            CFDictionaryRemoveValue(v82, v83);
            CFArrayRemoveValueAtIndex(*(v79 + 24), 0);
          }

          CFArrayAppendValue(*(v79 + 24), v80);
        }

        os_unfair_lock_unlock((v79 + 40));
        if (v80)
        {
          CFRelease(v80);
        }
      }
    }
  }

  CFRelease(v22);
  if (v19)
  {
    goto LABEL_162;
  }

LABEL_163:
  *(*(*(v2 + 32) + 8) + 24) = Value;
  return *(*(*(v2 + 32) + 8) + 24) != 0;
}

void sub_100015868(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    return;
  }

  v3 = *a1;
  if (!*a1)
  {
    return;
  }

  v4 = v3[25];
  v5 = sub_100013C7C(a1);
  v6 = v5;
  v7 = v1[48];
  v8 = v1[49];
  v9 = v3[34];
  if (v9)
  {
    if (v5)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    if (v5)
    {
      v11 = 8;
    }

    else
    {
      v11 = 4;
    }

    if (v8 != v7)
    {
      v10 = v11;
    }

    v9[70] |= v10;
    v9[72] |= v1[53];
    v9[73] |= v1[52];
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  if (v1[54] == 1)
  {
    if (v1[49] == 1 && v1[50] == 1)
    {
      v13 = v1[48];
    }

    else
    {
      v13 = 0;
    }

    if (v8 == v7)
    {
      if (v13)
      {
        *(v4 + 68) = 1;
        *(a1 + 33) = 1;
      }
    }

    else
    {
      sub_100053B7C(a1);
    }

    *(a1 + 32) = 1;
    return;
  }

  if (v1[58] == 1)
  {
    v14 = v3[24];
    if (v14 < 1)
    {
      v25 = 64;
    }

    else
    {
      v50 = v5;
      v51 = v12;
      v52 = v8;
      v53 = v7;
      v54 = v1;
      v55 = v4;
      v15 = 0;
      v16 = 0;
      v17 = kSecPolicyCheckIssuerPolicyConstraints;
      do
      {
        if (*(*a1 + 192) <= v16)
        {
          v18 = 0;
        }

        else
        {
          v18 = *(*(*a1 + 184) + 8 * v16);
        }

        v19 = *(v18 + 8);
        if (v19)
        {
          CFRetain(*(v18 + 8));
          Count = CFArrayGetCount(v19);
          if (Count >= 1)
          {
            v21 = Count;
            for (i = 0; i != v21; ++i)
            {
              CFArrayGetValueAtIndex(v19, i);
              OidString = SecPolicyGetOidString();
              if ((sub_100052ACC(*(*(a1 + 24) + 88), OidString) & 1) == 0)
              {
                v15 = 1;
                if (*(*(a1 + 24) + 55) == 1)
                {
                  v24 = 5;
                }

                else
                {
                  v24 = 0;
                }

                sub_100012178(v18, v17, *(a1 + 8), kCFBooleanFalse, 1, v24);
              }
            }
          }

          CFRelease(v19);
        }

        ++v16;
      }

      while (v16 != v14);
      if (v15)
      {
        v25 = 0x80;
      }

      else
      {
        v25 = 64;
      }

      v3 = *a1;
      v4 = v55;
      v1 = v54;
      v8 = v52;
      v7 = v53;
      v12 = v51;
      v6 = v50;
      if (!*a1)
      {
        goto LABEL_95;
      }
    }

    v26 = v3[34];
    if (v26)
    {
      *(v26 + 70) |= v25;
    }
  }

  v27 = *(a1 + 24);
  if (v27)
  {
    if (v3)
    {
      if (*(v27 + 56) == 1)
      {
        v28 = v3[25];
        if (v28)
        {
          v29 = *(a1 + 8);
          if ((v29 & 0x8000000000000000) == 0 && *(v28 + 16) > v29)
          {
            v30 = *(v28 + 8 * v29 + 136);
            if (v30)
            {
              if (*(v30 + 16))
              {
                SecCertificateNotValidBefore();
                v32 = v31;
                v33 = *(a1 + 24);
                v34 = *(v33 + 64);
                if (v34)
                {
                  AbsoluteTime = CFDateGetAbsoluteTime(v34);
                  v33 = *(a1 + 24);
                }

                else
                {
                  AbsoluteTime = -3155760000.0;
                }

                v36 = *(v33 + 72);
                if (v36)
                {
                  v37 = CFDateGetAbsoluteTime(v36);
                  if (v37 < CFAbsoluteTimeGetCurrent())
                  {
                    *(*(a1 + 24) + 53) = 1;
                  }
                }

                else
                {
                  v37 = 3.15569088e10;
                }

                if (v32 >= AbsoluteTime || *(a1 + 8) <= 0)
                {
                  if (*a1)
                  {
                    v38 = *(*a1 + 272);
                    if (v32 >= AbsoluteTime && v32 <= v37)
                    {
                      if (v38)
                      {
                        *(v38 + 70) |= 0x10u;
                      }

                      goto LABEL_95;
                    }

                    goto LABEL_79;
                  }

                  if (v32 < AbsoluteTime || v32 > v37)
                  {
                    v38 = 0;
LABEL_79:
                    v41 = sub_1000027AC("rvc");
                    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                    {
                      if (*(*(a1 + 24) + 55))
                      {
                        v42 = "";
                      }

                      else
                      {
                        v42 = " (non-recoverable error)";
                      }

                      *buf = 136315138;
                      v57 = v42;
                      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "certificate issuance date not within the allowed range for this CA%s", buf, 0xCu);
                    }

                    if (v38)
                    {
                      *(v38 + 70) |= 0x20u;
                    }

                    if (*(*(a1 + 24) + 55) == 1)
                    {
                      sub_10005BDF8(*a1, kSecPolicyCheckGrayListedKey, *(a1 + 8), kCFBooleanFalse);
                    }

                    else
                    {
                      *buf = 0;
                      v43 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, buf);
                      sub_10005BDF8(*a1, kSecPolicyCheckRevocation, *(a1 + 8), v43);
                      v44 = *(*a1 + 200);
                      if (v44)
                      {
                        v45 = *(a1 + 8);
                        if (*(v44 + 16) > v45)
                        {
                          v46 = *(v44 + 8 * v45 + 136);
                          if (v43)
                          {
                            CFRetain(v43);
                          }

                          *(v46 + 32) = v43;
                        }
                      }

                      if (v43)
                      {
                        CFRelease(v43);
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

LABEL_95:
  if (v1[53] == 1)
  {
    v47 = 1;
    if (!v1[55])
    {
      v47 = 2;
    }

    if (*(v4 + 120) <= v47)
    {
      *(v4 + 120) = v47;
    }
  }

  if (v8 == v7)
  {
    v48 = v6;
  }

  else
  {
    v48 = 0;
  }

  if (v48)
  {
    if ((v1[51] & 1) == 0)
    {
      return;
    }
  }

  else
  {
    v1[51] = 1;
  }

  v49 = *(*a1 + 200);
  if (v49)
  {
    v49 = *(v49 + 16);
  }

  if (*(a1 + 8) + 1 < v49)
  {
    sub_1000119A8(*a1, kSecPolicyCheckRevocationAny);
    if (v9)
    {
      v12[71] = 1;
    }
  }
}

void sub_100015DD8(void *a1, uint64_t a2)
{
  v4 = *(a1[7] + 224);
  *(a2 + 24) = 0;
  if (v4)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  MutableCopy = CFArrayCreateMutableCopy(kCFAllocatorDefault, v5, *(a2 + 40));
  if (v5 >= 2)
  {
    v7 = v5 - 1;
    do
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFArrayAppendValue(MutableCopy, Mutable);
      CFRelease(Mutable);
      --v7;
    }

    while (v7);
  }

  v9 = *(a2 + 56);
  if (v9 != MutableCopy)
  {
    if (!MutableCopy || (CFRetain(MutableCopy), (v9 = *(a2 + 56)) != 0))
    {
      CFRelease(v9);
    }

    *(a2 + 56) = MutableCopy;
  }

  *(a2 + 64) = *(a2 + 48);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  *(*(a1[4] + 8) + 24) &= sub_10000910C(a1[7]);
  v10 = *(a1[5] + 8);
  for (i = 1; ; i = *(v10 + 24) + 1)
  {
    *(v10 + 24) = i;
    v12 = *(*(a1[5] + 8) + 24);
    if (v12 >= *(*(a1[6] + 8) + 24))
    {
      break;
    }

    sub_100013694(a2, v12);
    v10 = *(a1[5] + 8);
  }

  sub_10000CC60(a2);
}

uint64_t sub_100015F54(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_100016008;
  v4[3] = &unk_1000858F8;
  v4[4] = &v5;
  sub_1000029CC(a1, v4);
  v2 = v6[3];
  if (!v2)
  {
    v2 = **(a1 + 184);
  }

  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t sub_100016008(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v3 = *(a2 + 64);
  if (v3 > 7 || ((0x17u >> v3) & 1) != 0)
  {
    *(*(*(result + 32) + 8) + 24) = a2;
    *a3 = 1;
  }

  return result;
}

uint64_t sub_10001603C(uint64_t a1, const void *a2)
{
  v4 = *(*a1 + 200);
  if (v4)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), *(a1 + 24));
  result = CFDictionaryGetValue(ValueAtIndex[4], a2);
  if (v5 >= 1)
  {
    for (i = 0; i < v5; ++i)
    {
      v9 = *(*a1 + 200);
      if (v9)
      {
        if ((i & 0x8000000000000000) == 0 && *(v9 + 16) > i)
        {
          v10 = *(v9 + 8 * i + 136);
          if (v10)
          {
            v11 = *(v10 + 16);
          }
        }
      }

      result = SecPolicyCheckCertUnparseableExtension();
      if ((result & 1) == 0)
      {
        result = sub_100012178(a1, a2, i, kCFBooleanFalse, 0, 0);
        if (!result)
        {
          break;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10001612C(uint64_t a1, const void *a2)
{
  v4 = *(*a1 + 200);
  if (v4)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), *(a1 + 24));
  result = CFDictionaryGetValue(ValueAtIndex[4], a2);
  if (v5 >= 1)
  {
    for (i = 0; i < v5; ++i)
    {
      v9 = *(*a1 + 200);
      if (v9)
      {
        if ((i & 0x8000000000000000) == 0 && *(v9 + 16) > i)
        {
          v10 = *(v9 + 8 * i + 136);
          if (v10)
          {
            v11 = *(v10 + 16);
          }
        }
      }

      result = SecPolicyCheckCertNonEmptySubject();
      if ((result & 1) == 0)
      {
        result = sub_100012178(a1, a2, i, kCFBooleanFalse, 0, 0);
        if (!result)
        {
          break;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100016220(uint64_t a1, const void *a2)
{
  v4 = *(*a1 + 200);
  if (v4)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), *(a1 + 24));
  result = CFDictionaryGetValue(ValueAtIndex[4], a2);
  if (v5 >= 1)
  {
    for (i = 0; i < v5; ++i)
    {
      v9 = *(*a1 + 200);
      if (v9)
      {
        if ((i & 0x8000000000000000) == 0 && *(v9 + 16) > i)
        {
          v10 = *(v9 + 8 * i + 136);
          if (v10)
          {
            v11 = *(v10 + 16);
          }
        }
      }

      result = SecPolicyCheckCertDuplicateExtension();
      if ((result & 1) == 0)
      {
        result = sub_100012178(a1, a2, i, kCFBooleanFalse, 0, 0);
        if (!result)
        {
          break;
        }
      }
    }
  }

  return result;
}

void *sub_100016314(void *result)
{
  if (qword_100092C30)
  {
    v1 = result;
    v2 = *(qword_100092C30 + 40);
    if (v2)
    {
      result = CFRetain(*(qword_100092C30 + 40));
    }

    *(*(v1[4] + 8) + 24) = v2;
  }

  return result;
}

uint64_t sub_100016360(uint64_t result, const void *a2)
{
  v2 = *(*result + 200);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3 >= 1)
    {
      v5 = result;
      v6 = 0;
      do
      {
        v7 = *(*v5 + 200);
        if (v7)
        {
          v8 = v3 < 1;
        }

        else
        {
          v8 = 1;
        }

        if (!v8 && *(v7 + 16) >= v3)
        {
          v9 = *(v7 + 8 * v3 + 128);
          if (v9)
          {
            v10 = *(v9 + 16);
          }
        }

        --v3;
        if (v6)
        {
          AuthorityKeyID = SecCertificateGetAuthorityKeyID();
          if (AuthorityKeyID)
          {
            if (!CFEqual(v6, AuthorityKeyID))
            {
              result = sub_100012178(v5, a2, v3, kCFBooleanFalse, 0, 0);
              if (!result)
              {
                break;
              }
            }
          }
        }

        result = SecCertificateGetSubjectKeyID();
        v6 = result;
      }

      while ((v3 + 1) > 1);
    }
  }

  return result;
}

BOOL sub_100016450(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && (a2 & 0x8000000000000000) == 0)
  {
    if (*(a1 + 16) > a2 && (v3 = *(a1 + 8 * a2 + 136)) != 0)
    {
      v2 = *(v3 + 16);
    }

    else
    {
      v2 = 0;
    }
  }

  v4 = SecCertificateCopyNormalizedIssuerSequence(v2);
  v5 = SecCertificateCopyNormalizedSubjectSequence(v2);
  v6 = v5;
  if (v4 && v5)
  {
    v7 = CFEqual(v4, v5) != 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  CFRelease(v4);
  v8 = v7;
LABEL_12:
  if (v6)
  {
    CFRelease(v6);
  }

  return v8;
}

uint64_t sub_100016504()
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
  block[2] = sub_100016314;
  block[3] = &unk_100083638;
  block[4] = &v3;
  dispatch_sync(qword_100092C10, block);
  v0 = v4[3];
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t sub_1000165EC(uint64_t a1)
{
  v1 = a1;
  if (!qword_100092C10 && qword_100092C38 != -1)
  {
    dispatch_once(&qword_100092C38, &stru_1000827E0);
    if (!v1)
    {
      return v1 & 1;
    }

    goto LABEL_4;
  }

  if (a1)
  {
LABEL_4:
    v4 = 0;
    v5 = &v4;
    v6 = 0x2020000000;
    v7 = 0;
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000166D4;
    v3[3] = &unk_100082798;
    v3[4] = &v4;
    v3[5] = v1;
    dispatch_sync(qword_100092C10, v3);
    LOBYTE(v1) = *(v5 + 24);
    _Block_object_dispose(&v4, 8);
  }

  return v1 & 1;
}

void *sub_1000166D4(void *result)
{
  if (qword_100092C30)
  {
    v1 = result;
    result = result[5];
    if (result)
    {
      result = CFEqual(result, @"CTKillSwitch");
      if (result)
      {
        v2 = 216;
LABEL_5:
        *(*(v1[4] + 8) + 24) = *(qword_100092C30 + v2);
        return result;
      }

      result = v1[5];
      if (result)
      {
        result = CFEqual(result, @"CTKillSwitch_nonTLS");
        if (result)
        {
          v2 = 217;
          goto LABEL_5;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100016760(uint64_t a1)
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2000000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 0;
  valuePtr = 2048;
  v2 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  if (v2)
  {
    valuePtr = 224;
    v3 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
    v4 = v3;
    if (v3)
    {
      keys[0] = kSecAttrKeyTypeRSA;
      keys[1] = kSecAttrKeyTypeEC;
      values[0] = v2;
      values[1] = v3;
      v5 = CFDictionaryCreate(0, keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v25[3] = v5;
      if (v5)
      {
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 0x40000000;
        v16 = sub_100016960;
        v17 = &unk_100083108;
        v18 = &v24;
        v19 = &v20;
        LOBYTE(valuePtr) = 0;
        v6 = *(a1 + 16);
        v7 = v6 < 1;
        v8 = v6 - 1;
        if (!v7)
        {
          v9 = (a1 + 136);
          do
          {
            v10 = v8;
            v11 = *v9++;
            v16(v15, *(v11 + 16), &valuePtr);
            if (valuePtr)
            {
              break;
            }

            v8 = v10 - 1;
          }

          while (v10);
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v12 = v25[3];
  if (v12)
  {
    CFRelease(v12);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v13 = *(v21 + 24);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  return v13;
}

uint64_t sub_100016960(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(*(*(a1 + 32) + 8) + 24);
  result = SecCertificateIsAtLeastMinKeySize();
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

uint64_t sub_1000169B4(uint64_t a1)
{
  sub_100003F3C(a1, *(a1 + 224));
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2000000000;
  v14[3] = 0xAAAAAAAAAAAAAAAALL;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2000000000;
  v2 = *(a1 + 224);
  if (v2)
  {
    v2 = *(v2 + 16);
  }

  v13[3] = v2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 1;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_100015DD8;
  v8[3] = &unk_100085AB0;
  v8[4] = &v9;
  v8[5] = v14;
  v8[6] = v13;
  v8[7] = a1;
  sub_1000029CC(a1, v8);
  *(a1 + 248) = sub_100009D8C;
  sub_1000029CC(a1, &stru_100085AF0);
  v3 = *(a1 + 224);
  if (v3)
  {
    if (*(v3 + 96) >= 10000001 && (sub_10000B13C(a1) & 1) == 0)
    {
      *(*(a1 + 224) + 96) = 0;
      v4 = sub_1000027AC("SecWarning");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "In ComputeDetails, we got a reject after an accept in DidValidatePath.", v7, 2u);
      }
    }
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(v13, 8);
  _Block_object_dispose(v14, 8);
  return v5;
}

void sub_100016B80(uint64_t a1)
{
  SecCertificateNotValidBefore();
  v3 = CFDateCreate(0, v2);
  if (v3)
  {
    v4 = v3;
    CFArrayAppendValue(*(a1 + 32), v3);

    CFRelease(v4);
  }
}

void sub_100016BE4(uint64_t a1, CFDateRef theDate)
{
  AbsoluteTime = CFDateGetAbsoluteTime(theDate);
  if (AbsoluteTime < *(a1 + 40))
  {
    v4 = *(*(a1 + 32) + 8);
    if (AbsoluteTime > *(v4 + 24))
    {
      *(v4 + 24) = AbsoluteTime;
    }
  }
}

void sub_100016C30(uint64_t a1)
{
  SecCertificateNotValidAfter();
  v3 = CFDateCreate(0, v2);
  if (v3)
  {
    v4 = v3;
    CFArrayAppendValue(*(a1 + 32), v3);

    CFRelease(v4);
  }
}

uint64_t sub_100016C94(int a1, xpc_object_t xdict, void *a3, __CFString **a4)
{
  dictionary = xpc_dictionary_get_dictionary(xdict, "eventAttributes");
  v8 = sub_100016D54(xdict, "eventName", a4);
  v9 = v8;
  if (dictionary)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    xpc_dictionary_set_BOOL(a3, "status", 0);
    v12 = 0;
    result = 0;
    if (!v9)
    {
      return result;
    }
  }

  else
  {
    v12 = sub_100016DE4(v8, dictionary, a4);
    xpc_dictionary_set_BOOL(a3, "status", v12);
  }

  CFRelease(v9);
  return v12;
}

CFStringRef sub_100016D54(void *a1, const char *a2, __CFString **a3)
{
  string = xpc_dictionary_get_string(a1, a2);
  if (string)
  {
    v6 = string;
    result = CFStringCreateWithCString(kCFAllocatorDefault, string, 0x8000100u);
    if (result)
    {
      return result;
    }

    sub_10001C2D4(-108, a3, @"object for key %s failed to convert %s to CFString", a2, v6);
  }

  else
  {
    sub_10001C2D4(-50, a3, @"object for key %s not string", a2);
  }

  return 0;
}

uint64_t sub_100016DE4(void *a1, void *a2, __CFString **a3)
{
  v5 = a2;
  if (sub_100003140())
  {
    v6 = objc_autoreleasePoolPush();
    if (xpc_get_type(v5) == &_xpc_type_dictionary)
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v22 = 1;
      if ([a1 hasPrefix:@"com.apple.network"])
      {
        v8 = qword_100092ED0;
        +[NetworkingAnalytics logger];
      }

      else
      {
        v8 = qword_100092EC8;
        +[TrustAnalytics logger];
      }
      v9 = ;
      v10 = v8;
      objc_sync_enter(v10);
      v11 = [v10 objectForKeyedSubscript:a1];
      v12 = v11;
      if (v11)
      {
        v13 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v11 unsignedLongValue] + 1);
        [v10 setObject:v13 forKeyedSubscript:a1];
      }

      else
      {
        [v10 setObject:&off_10008C638 forKeyedSubscript:a1];
      }

      objc_sync_exit(v10);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100057398;
      v15[3] = &unk_1000854E0;
      v16 = v5;
      v17 = &v19;
      v18 = a3;
      [v9 trustd_logDetailedEventforEventNamed:a1 attributesCallback:v15 timestampBucket:2];
      v7 = *(v20 + 24);

      _Block_object_dispose(&v19, 8);
    }

    else
    {
      sub_10001C2D4(-50, a3, @"Networking Analytics attributes received were not a dictionary type");
      v7 = 0;
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    sub_10001C2D4(-4, a3, @"Networking analytics not supported in this environment");
    v7 = 0;
  }

  return v7 & 1;
}

void sub_100017028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t DERLengthOfEncodedSequenceFromObject(uint64_t a1, unint64_t a2, unint64_t a3, int a4, uint64_t a5, unint64_t *a6)
{
  v17 = 0;
  result = sub_100017330(a2, a3, a4, a5, &v17);
  if (!result)
  {
    v9 = a1 & 0x1FFFFFFFFFFFFFFFLL;
    v10 = 1;
    if ((a1 & 0x1FFFFFFFFFFFFFFFuLL) >= 0x1F)
    {
      do
      {
        ++v10;
        v11 = v9 > 0x7F;
        v9 >>= 7;
      }

      while (v11);
    }

    v12 = 1;
    if (v17 >= 0x80)
    {
      v13 = v17;
      do
      {
        ++v12;
        v11 = v13 > 0xFF;
        v13 >>= 8;
      }

      while (v11);
    }

    v14 = __CFADD__(v10, v12);
    v15 = v10 + v12;
    if (v14 || (v14 = __CFADD__(v15, v17), v16 = v15 + v17, v14))
    {
      __break(0x5500u);
    }

    else
    {
      result = 0;
      *a6 = v16;
    }
  }

  return result;
}

unint64_t DEREncodeLengthSized(unint64_t result, unint64_t a2, unint64_t a3, uint64_t *a4)
{
  if (result < 0x80)
  {
    if (a3)
    {
      if (*a4)
      {
        *a2 = result;
        if (*a4)
        {
          v4 = 1;
LABEL_19:
          v9 = 0;
          *a4 = v4;
          return v9;
        }
      }

      goto LABEL_22;
    }

    return 7;
  }

  v5 = 0;
  v6 = result;
  do
  {
    --v5;
    v7 = v6 > 0xFF;
    v6 >>= 8;
  }

  while (v7);
  v8 = -v5;
  v9 = 7;
  if (-v5 >= a3 || v8 > 0x7E)
  {
    return v9;
  }

  if (*a4)
  {
    v4 = 1 - v5;
    *a2 = -v5 | 0x80;
    if (v8 < ~a2)
    {
      v10 = (a2 - v5);
      if (a2 - v5 != -2)
      {
        v11 = (a2 + *a4);
        while (v10 != -1)
        {
          if (v10 >= v11 || v10 < a2)
          {
            goto LABEL_22;
          }

          *v10-- = result;
          v7 = result > 0xFF;
          result >>= 8;
          if (!v7)
          {
            if (v8 >= *a4)
            {
              goto LABEL_22;
            }

            goto LABEL_19;
          }
        }
      }
    }

    goto LABEL_23;
  }

LABEL_22:
  __break(0x5519u);
LABEL_23:
  __break(0x5513u);
  return result;
}

unint64_t sub_100017330(unint64_t result, unint64_t a2, int a3, uint64_t a4, void *a5)
{
  v5 = 0;
  if (!a3)
  {
LABEL_38:
    result = 0;
LABEL_40:
    *a5 = v5;
    return result;
  }

  v6 = 0;
  v7 = result + a2;
  while (24 * v6 <= ~a4)
  {
    v8 = a4 + 24 * v6;
    v9 = *v8;
    v10 = *v8 > 0xFFFFFFFFFFFFFFEFLL || *v8 + 16 > a2;
    if (v10)
    {
      v5 = 0;
      result = 7;
      goto LABEL_40;
    }

    if (v9 > ~result)
    {
      break;
    }

    v11 = (result + v9);
    v12 = *(v8 + 16);
    if ((v12 & 0x200) == 0)
    {
      if (v12)
      {
        if (v11 < result || (v11 + 2) > v7)
        {
          goto LABEL_43;
        }

        if (!v11[1])
        {
          goto LABEL_37;
        }
      }

      v14 = *(v8 + 8) & 0x1FFFFFFFFFFFFFFFLL;
      v15 = 1;
      if (v14 >= 0x1F)
      {
        do
        {
          ++v15;
          v10 = v14 > 0x7F;
          v14 >>= 7;
        }

        while (v10);
      }

      v16 = __CFADD__(v5, v15);
      v17 = v5 + v15;
      if (v16)
      {
        goto LABEL_42;
      }

      if (v11 < result || (v11 + 2) > v7)
      {
        goto LABEL_43;
      }

      v18 = v11[1];
      if ((v12 & 0x100) != 0)
      {
        if (v18)
        {
          v18 += **v11 >> 7;
          goto LABEL_24;
        }

LABEL_25:
        v19 = 1;
      }

      else
      {
LABEL_24:
        if (v18 < 0x80)
        {
          goto LABEL_25;
        }

        v19 = 1;
        v22 = v18;
        do
        {
          ++v19;
          v10 = v22 > 0xFF;
          v22 >>= 8;
        }

        while (v10);
      }

      v16 = __CFADD__(v17, v19);
      v23 = v17 + v19;
      if (v16)
      {
        goto LABEL_42;
      }

      v16 = __CFADD__(v23, v18);
      v5 = v23 + v18;
      if (v16)
      {
        goto LABEL_42;
      }

      goto LABEL_37;
    }

    if (v11 < result || (v11 + 2) > v7)
    {
      goto LABEL_43;
    }

    v21 = v11[1];
    v16 = __CFADD__(v5, v21);
    v5 += v21;
    if (v16)
    {
      goto LABEL_42;
    }

LABEL_37:
    if (++v6 == a3)
    {
      goto LABEL_38;
    }
  }

  __break(0x5513u);
LABEL_42:
  __break(0x5500u);
LABEL_43:
  __break(0x5519u);
  return result;
}

uint64_t DEREncodeSequenceFromObject(uint64_t a1, unint64_t a2, unint64_t a3, unsigned int a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t *a8)
{
  v8 = ~a6;
  if (~a6 < a7)
  {
    goto LABEL_72;
  }

  v11 = *a8;
  v46 = a7;
  v47 = 0;
  if (v11 < a7)
  {
    goto LABEL_73;
  }

  result = sub_100017850(a1, a6, &v46);
  if (result)
  {
    return result;
  }

  v17 = v46;
  if (v46 > v8)
  {
    goto LABEL_72;
  }

  v18 = a7 - v46;
  if (a7 < v46)
  {
    goto LABEL_74;
  }

  v19 = a6 + a7;
  v20 = a6 + v46;
  if (a6 + v46 < v19)
  {
    result = sub_100017330(a2, a3, a4, a5, &v47);
    if (result)
    {
      return result;
    }

    v46 = v18;
    if (v20 > a6 + v11 || v20 < a6 || v18 > v11 - v17)
    {
      goto LABEL_73;
    }

    v44 = a6 + v11;
    v21 = v47;
    result = DEREncodeLengthSized(v47, a6 + v17, v18, &v46);
    if (result)
    {
      return result;
    }

    v22 = v44;
    if (__CFADD__(v20, v46))
    {
LABEL_72:
      __break(0x5513u);
      goto LABEL_73;
    }

    v23 = v18 - v46;
    if (v18 >= v46)
    {
      v24 = (v20 + v46);
      if (!__CFADD__(v20 + v46, v21))
      {
        if (&v24[v21] > v19)
        {
          return 7;
        }

        if (a4)
        {
          v25 = 0;
          v43 = a2 + a3;
          v42 = ~a5;
          v26 = a5 + 8;
          v41 = 24 * a4;
          do
          {
            if (v25 > v42)
            {
              goto LABEL_72;
            }

            v27 = *(v26 - 8);
            if (v27 > ~a2)
            {
              goto LABEL_72;
            }

            v28 = (a2 + v27);
            v29 = *(v26 + 8);
            if ((v29 & 0x200) != 0)
            {
              v38 = v28 < a2 || (v28 + 2) > v43;
              if (v38 || v24 > v22 || v24 < a6)
              {
                goto LABEL_73;
              }

              v36 = v28[1];
              v37 = v22 - v24;
            }

            else
            {
              if (v29)
              {
                if (v28 < a2 || (v28 + 2) > v43)
                {
                  goto LABEL_73;
                }

                if (!v28[1])
                {
                  goto LABEL_69;
                }
              }

              v46 = v23;
              if (v24 > v22 || v24 < a6 || v23 > v22 - v24)
              {
                goto LABEL_73;
              }

              result = sub_100017850(*v26, v24, &v46);
              if (result)
              {
                return result;
              }

              if (__CFADD__(v24, v46))
              {
                goto LABEL_72;
              }

              v31 = v23 - v46;
              if (v23 < v46)
              {
                goto LABEL_74;
              }

              if (v28 < a2 || (v28 + 2) > v43)
              {
                goto LABEL_73;
              }

              v32 = v28[1];
              v47 = v32;
              v33 = 1;
              if ((v29 & 0x100) != 0 && v32 && **v28 < 0)
              {
                v33 = 0;
                v47 = ++v32;
              }

              v34 = &v24[v46];
              v46 = v23 - v46;
              if (v34 > v44 || v34 < a6 || v31 > v44 - v34)
              {
                goto LABEL_73;
              }

              result = DEREncodeLengthSized(v32, v34, v31, &v46);
              if (result)
              {
                return result;
              }

              v35 = v46;
              if (__CFADD__(v34, v46))
              {
                goto LABEL_72;
              }

              v23 = v31 - v46;
              if (v31 < v46)
              {
                goto LABEL_74;
              }

              v24 = (v34 + v46);
              if ((v33 & 1) == 0)
              {
                if (v24 == -1)
                {
                  goto LABEL_72;
                }

                if (v24 >= v44 || v24 < a6)
                {
                  goto LABEL_73;
                }

                *v24 = 0;
                --v23;
                if (v31 == v35)
                {
                  goto LABEL_74;
                }

                ++v24;
              }

              if (v24 > v44 || v24 < a6)
              {
                goto LABEL_73;
              }

              v36 = v28[1];
              v37 = v44 - v24;
            }

            if (v36 > v37)
            {
              goto LABEL_73;
            }

            result = memmove(v24, *v28, v36);
            if (v24 > &v24[v36])
            {
              goto LABEL_73;
            }

            v39 = v28[1];
            v22 = v44;
            if (__CFADD__(v24, v39))
            {
              goto LABEL_72;
            }

            v40 = v23 >= v39;
            v23 -= v39;
            if (!v40)
            {
              goto LABEL_74;
            }

            v24 += v39;
LABEL_69:
            v26 += 24;
            v25 += 24;
          }

          while (v41 != v25);
        }

        if (&v24[-a6] <= *a8)
        {
          result = 0;
          *a8 = &v24[-a6];
          return result;
        }

LABEL_73:
        __break(0x5519u);
      }

      goto LABEL_72;
    }

LABEL_74:
    __break(0x5515u);
    return result;
  }

  return 7;
}

uint64_t sub_100017850(uint64_t result, unint64_t a2, unint64_t *a3)
{
  v3 = result & 0x1FFFFFFFFFFFFFFFLL;
  if ((result & 0x1FFFFFFFFFFFFFFFuLL) < 0x1F)
  {
    if (*a3)
    {
      *a2 = HIBYTE(result) & 0xE0 | result;
      v8 = 1;
      goto LABEL_16;
    }

    return 7;
  }

  v4 = 0;
  v5 = result & 0x1FFFFFFFFFFFFFFFLL;
  do
  {
    ++v4;
    v6 = v5 > 0x7F;
    v5 >>= 7;
  }

  while (v6);
  v7 = *a3;
  if (v4 >= *a3)
  {
    return 7;
  }

  if (v4 < ~a2)
  {
    *a2 = HIBYTE(result) | 0x1F;
    if (a2 + v4 != -2)
    {
      v8 = v4 + 1;
      *(a2 + v4) = result & 0x7F;
      if (v3 >= 0x80)
      {
        v9 = (a2 + v4 - 1);
        v10 = (a2 + v7);
        while (v9 != -2)
        {
          if (v9 >= v10 || v9 < a2)
          {
            goto LABEL_19;
          }

          v11 = v3 >> 14;
          v3 >>= 7;
          *v9-- = v3 | 0x80;
          if (!v11)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_20;
      }

LABEL_16:
      if (v8 <= *a3)
      {
        result = 0;
        *a3 = v8;
        return result;
      }

LABEL_19:
      __break(0x5519u);
    }
  }

LABEL_20:
  __break(0x5513u);
  return result;
}

uint64_t sub_1000179E4(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, const __CFData *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v22 = a12;
  v23 = dispatch_semaphore_create(0);
  v41 = 0;
  v42 = &v41;
  v43 = 0x2000000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2000000000;
  v40 = dispatch_queue_create("com.apple.trustd.evaluation.recursive", 0);
  if (a12)
  {
    CFRetain(a12);
  }

  else
  {
    *&v24 = 0xAAAAAAAAAAAAAAAALL;
    *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
    task_info_out[0] = v24;
    task_info_out[1] = v24;
    task_info_outCnt = 8;
    if (task_info(mach_task_self_, 0xFu, task_info_out, &task_info_outCnt))
    {
      v25 = sub_1000027AC("SecWarning");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "failed to get audit token for ourselves", buf, 2u);
      }

      v22 = 0;
    }

    else
    {
      v22 = CFDataCreate(0, task_info_out, 32);
    }
  }

  v26 = v38[3];
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100017C54;
  block[3] = &unk_100085988;
  block[6] = v22;
  block[7] = a1;
  v35 = a3;
  v36 = a4;
  block[8] = a2;
  block[9] = a5;
  block[10] = a6;
  block[11] = a7;
  block[12] = a8;
  *&block[13] = a9;
  block[14] = a10;
  block[15] = a11;
  block[4] = &v37;
  block[5] = &v41;
  block[16] = a13;
  block[17] = a17;
  block[18] = a14;
  block[19] = a15;
  block[20] = a16;
  block[21] = v23;
  dispatch_async(v26, block);
  dispatch_semaphore_wait(v23, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v23);
  v27 = v38[3];
  if (v27)
  {
    v38[3] = 0;
    dispatch_release(v27);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  v28 = *(v42 + 6);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
  return v28;
}

void sub_100017C54(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 24);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 176);
  v5 = *(a1 + 177);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  v10 = *(a1 + 104);
  v11 = *(a1 + 112);
  v12 = *(a1 + 128);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 0x40000000;
  v13[2] = sub_100017D78;
  v13[3] = &unk_100085960;
  v13[4] = *(a1 + 40);
  v14 = *(a1 + 136);
  v15 = *(a1 + 152);
  v16 = *(a1 + 168);
  sub_10000319C(v1, v2, v3, v6, v4, v5, v7, v8, v10, v9, *(&v9 + 1), v11, *(&v11 + 1), v12, v13);
}

void sub_100017D14(uint64_t a1, const void *a2)
{
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), *(a1 + 24));
  v5 = CFDictionaryGetValue(ValueAtIndex[4], a2) != kCFBooleanTrue;
  v6 = *a1;

  sub_1000209AC(v6, v5);
}

intptr_t sub_100017D78(void *a1, int a2, CFTypeRef cf, CFTypeRef a4, CFTypeRef a5, CFTypeRef a6)
{
  *(*(a1[4] + 8) + 24) = a2;
  if (!a2)
  {
    v12 = a1[5];
    if (!v12)
    {
      goto LABEL_14;
    }

    *v12 = a6;
    if (!a6)
    {
      goto LABEL_14;
    }

LABEL_13:
    CFRetain(a6);
    goto LABEL_14;
  }

  v9 = a1[6];
  if (v9)
  {
    *v9 = cf;
    if (cf)
    {
      CFRetain(cf);
    }
  }

  v10 = a1[7];
  if (v10)
  {
    *v10 = a4;
    if (a4)
    {
      CFRetain(a4);
    }
  }

  v11 = a1[8];
  if (v11)
  {
    *v11 = a5;
    a6 = a5;
    if (a5)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  v13 = a1[9];

  return dispatch_semaphore_signal(v13);
}

void sub_100017E2C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v15 = *(a1 + 40);
  v5 = *v15.i64[0];
  if ((CFDataGetLength(*v15.i64[0]) & 0x8000000000000000) == 0)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2000000000;
    v26 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x2000000000;
    v22 = 1;
    v6 = *a2;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 0x40000000;
    v16[2] = sub_100018318;
    v16[3] = &unk_100083420;
    v16[4] = &v19;
    v16[5] = &v23;
    v16[6] = v3;
    v16[7] = v5;
    v17 = vextq_s8(v15, v15, 8uLL);
    v18 = v4;
    v7 = sub_10001AF60(v6, &v26, v16);
    v8 = v7 & v20[3];
    *(v20 + 24) = v8;
    if ((v8 & 1) == 0)
    {
      v9 = sub_1000027AC("SecError");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v24[3];
        *buf = 138412290;
        v28 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_SecOCSPCacheAddResponse failed: %@", buf, 0xCu);
      }

      v11 = v24[3];
      if (v11)
      {
        Code = CFErrorGetCode(v11);
      }

      else
      {
        Code = -2070;
      }

      sub_100054DC0(2, 2, Code);
      v13 = v24[3];
      if (v13)
      {
        v24[3] = 0;
        CFRelease(v13);
      }
    }

    v14 = v24[3];
    if (v14)
    {
      CFRelease(v14);
    }

    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&v23, 8);
  }
}

void sub_10001801C(uint64_t a1)
{
  v1 = *(*(*(*(a1 + 32) + 8) + 24) + 16);
  if (*(v1 + 144) == 1)
  {
    *(v1 + 144) = 0;
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    if (((*(*(*(*(*(*(a1 + 32) + 8) + 24) + 16) + 136) + 16))() & 1) == 0)
    {
      v5 = *(*(a1 + 32) + 8);
      v6 = *(v5 + 24);
      if (v6[40] != 1 || (sub_100027D48(v6, 0, *(a1 + 48)) & 1) == 0 && (v5 = *(*(a1 + 32) + 8), (v6 = *(v5 + 24)) != 0))
      {
        *(v5 + 24) = 0;

        CFRelease(v6);
      }
    }
  }
}

uint64_t sub_1000180E4(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  v13 = 1;
  if (*(a1 + 25) == 1)
  {
    (*(a4 + 16))(a4, &v13);
    if ((v13 & 1) == 0)
    {
      v5 = sub_1000027AC("#SecDB");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "#SecDB nested transaction asked to not be committed", buf, 2u);
      }
    }

    v6 = 1;
  }

  else if (sqlite3_get_autocommit(*(a1 + 64)) && (a2 != 1 ? (v10 = @"BEGIN EXCLUSIVE") : (v10 = @"BEGIN IMMEDIATE"), !sub_1000183E0(a1, v10, a3)))
  {
    v6 = 0;
  }

  else
  {
    *(a1 + 25) = 1;
    (*(a4 + 16))(a4, &v13);
    v26 = 0;
    v27 = &v26;
    v28 = 0x2000000000;
    v29 = 1;
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x2000000000;
    v25 = 0;
    *buf = _NSConcreteStackBlock;
    v16 = 0x40000000;
    v17 = sub_100018790;
    v18 = &unk_1000823D8;
    v23 = v13;
    v19 = v24;
    v20 = &v26;
    v21 = a1;
    v22 = a3;
    if (*(a1 + 24) == 1)
    {
      sub_100018790(buf);
    }

    else
    {
      v11 = *(*(a1 + 16) + 32);
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = sub_100018780;
      block[3] = &unk_100082400;
      block[4] = buf;
      dispatch_barrier_sync(v11, block);
    }

    v6 = *(v27 + 24);
    _Block_object_dispose(v24, 8);
    _Block_object_dispose(&v26, 8);
  }

  return v6 & v13 & 1;
}

uint64_t sub_100018318(uint64_t a1, uint64_t a2)
{
  v7[0] = _NSConcreteStackBlock;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 40) + 8);
  v7[1] = 0x40000000;
  v7[2] = sub_10001AFE4;
  v7[3] = &unk_1000833F8;
  v7[4] = v3;
  v9 = a2;
  v8 = v4;
  v10 = *(a1 + 56);
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  result = sub_1000180E4(a2, 2, (v5 + 24), v7);
  *(*(*(a1 + 32) + 8) + 24) &= result;
  return result;
}

uint64_t sub_1000183E0(uint64_t a1, const __CFString *cf, CFTypeRef *a3)
{
  v4 = cf;
  CFRetain(cf);
  if (!v4)
  {
    return 1;
  }

  LOBYTE(v6) = 1;
  do
  {
    v9 = 0;
    if (v6)
    {
      v6 = sub_10000512C(a1, v4, &v9, a3);
      if (v6)
      {
        do
        {
          v7 = sub_100005BE0(a1, v6, a3);
        }

        while (v7 == 1);
        v6 = ((v7 != 0) & sub_100006318(v6, a3));
      }
    }

    else
    {
      sub_100026CFC(1, a3, @"Error with unexecuted sql remaining %@", v4);
      v6 = 0;
    }

    CFRelease(v4);
    v4 = v9;
  }

  while (v9);
  return v6;
}

uint64_t sub_1000184D0(uint64_t a1, sqlite3_stmt *a2)
{
  BytePtr = CFDataGetBytePtr(*(a1 + 56));
  Length = CFDataGetLength(*(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) &= sub_100010DE4(a2, 1, BytePtr, Length, (*(*(a1 + 40) + 8) + 24));
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v6 = *(a1 + 64);
    if (v6)
    {
      v7 = CFURLCreateData(kCFAllocatorDefault, v6, 0x8000100u, 0);
      if (v7)
      {
        v8 = v7;
        if (CFDataGetLength(v7) >= 1)
        {
          v9 = CFDataGetBytePtr(v8);
          v10 = CFDataGetLength(v8);
          *(*(*(a1 + 32) + 8) + 24) = sub_100010DE4(a2, 2, v9, v10, (*(*(a1 + 40) + 8) + 24));
        }

        CFRelease(v8);
      }
    }
  }

  v11 = *(*(a1 + 40) + 8);
  v12 = sqlite3_bind_double(a2, 3, *(*(a1 + 72) + 32));
  *(*(*(a1 + 32) + 8) + 24) &= sub_100005AD8(v12, a2, (v11 + 24), @"bind_double[%d]", 3);
  v13 = *(*(a1 + 40) + 8);
  v14 = sqlite3_bind_double(a2, 4, *(a1 + 80));
  *(*(*(a1 + 32) + 8) + 24) &= sub_100005AD8(v14, a2, (v13 + 24), @"bind_double[%d]", 4);
  *(*(*(a1 + 32) + 8) + 24) &= sub_100005D40(*(a1 + 88), a2, (*(*(a1 + 40) + 8) + 24), 0);
  *(*(*(a1 + 48) + 8) + 24) = sqlite3_last_insert_rowid(*(*(a1 + 88) + 64));
  return *(*(*(a1 + 32) + 8) + 24);
}

uint64_t sub_1000186D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 56);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_10001B29C;
  v5[3] = &unk_1000833A8;
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v8 = a2;
  v9 = *(a1 + 64);
  *(*(*(a1 + 32) + 8) + 24) &= sub_10001ECD4(v3, v5);
  return *(*(*(a1 + 32) + 8) + 24);
}

void sub_100018790(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 48);
  if (v2 == 1)
  {
    if ((*(v3 + 24) & 1) == 0)
    {
      sub_1000189EC(v3, 1);
      v3 = *(a1 + 48);
    }

    v4 = sub_1000183E0(v3, @"END", *(a1 + 56));
    *(*(*(a1 + 40) + 8) + 24) = v4;
  }

  else
  {
    v5 = sub_1000183E0(v3, @"ROLLBACK", *(a1 + 56));
    v4 = 0;
    *(*(*(a1 + 40) + 8) + 24) = v5;
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
  v6 = *(a1 + 48);
  *(v6 + 25) = 0;
  if ((*(v6 + 24) & 1) == 0)
  {
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    sub_1000189EC(v6, v7);
    v6 = *(a1 + 48);
  }

  *(v6 + 32) = 1;
  if (*(a1 + 64) == 1 && *(*(v6 + 16) + 165) == 1 && (*(v6 + 24) & 1) == 0)
  {
    v8 = sub_10001B54C(v6, @"pragma page_count");
    if (v8 >= 1)
    {
      v9 = v8;
      v10 = sub_10001B54C(v6, @"pragma freelist_count");
      if ((v10 & 0x80000000) == 0)
      {
        LODWORD(v11) = v10;
        v12 = (v9 - v10) / v9;
        if (v10 >> 13 || v12 <= 0.85)
        {
          if (v12 >= 0.4)
          {
            v11 = (v10 * 0.2);
          }

          sql = 0;
          asprintf(&sql, "pragma incremental_vacuum(%d)", v11);
          if (sql)
          {
            errmsg = 0;
            v13 = sqlite3_exec(*(v6 + 64), sql, 0, 0, &errmsg);
            if (v13)
            {
              v14 = v13;
              v15 = sub_1000027AC("SecError");
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109378;
                v19 = v14;
                v20 = 2082;
                v21 = errmsg;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "incremental_vacuum failed with: (%d) %{public}s", buf, 0x12u);
              }
            }

            sqlite3_free(errmsg);
            free(sql);
          }
        }
      }
    }
  }
}

void sub_1000189EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 72);
  if (CFArrayGetCount(v4))
  {
    v5 = *(a1 + 16);
    os_unfair_lock_lock((v5 + 148));
    v6 = *(v5 + 152);
    if (v6)
    {
      Copy = CFArrayCreateCopy(kCFAllocatorDefault, v6);
      os_unfair_lock_unlock((v5 + 148));
      if (Copy)
      {
        *(a1 + 72) = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        context[0] = _NSConcreteStackBlock;
        context[1] = 0x40000000;
        context[2] = sub_100028220;
        context[3] = &unk_100082568;
        context[4] = a1;
        context[5] = a2;
        context[6] = v4;
        v10.length = CFArrayGetCount(Copy);
        v10.location = 0;
        CFArrayApplyFunction(Copy, v10, sub_100028240, context);
        if (v4)
        {
          CFRelease(v4);
        }

        CFRelease(Copy);
      }
    }

    else
    {

      os_unfair_lock_unlock((v5 + 148));
    }
  }
}

uint64_t sub_100018B40(uint64_t a1, _BYTE *a2)
{
  result = sqlite3_column_int(*(a1 + 40), 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  *a2 = 1;
  return result;
}

void sub_100018B84(void **a1)
{
  v2 = *a1;
  if (v2[4])
  {
    sub_100018B84(v2 + 4);
    v2 = *a1;
  }

  if (v2[5])
  {
    sub_100018B84(v2 + 5);
    v2 = *a1;
  }

  sub_100009D40(v2);
  *a1 = 0;
}

void *sub_100018BE0(void *result)
{
  if (qword_100092C30)
  {
    v1 = result;
    v2 = *(qword_100092C30 + 192);
    if (v2)
    {
      result = CFRetain(*(qword_100092C30 + 192));
    }

    *(*(v1[4] + 8) + 24) = v2;
  }

  return result;
}

uint64_t sub_100018C2C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*a3 == 1)
  {
    result = sub_10001A95C(result, a2, *(a3 + 16));
    if (result)
    {
      *(a3 + 8) += result;
    }

    else
    {
      *a3 = 0;
    }
  }

  return result;
}

void sub_100018C7C(const __CFString *a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a3 == 1)
  {
    v8 = sub_10001A95C(a1, a2, *(a3 + 8), a4, a5);
    if (!v8)
    {
      *a3 = 0;
      return;
    }

    v9 = v8;
    Mutable = CFDataCreateMutable(*(a3 + 24), v8);
    CFDataSetLength(Mutable, v9);
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    v12 = *(a3 + 8);
    v13 = *(a3 + 1);
    v14 = sub_100018DC8(a2, v12, v13, MutableBytePtr, &MutableBytePtr[v9]);
    sub_100018DC8(a1, v12, v13, MutableBytePtr, v14);
    v15 = ccder_encode_constructed_tl();
    if (v15)
    {
      v19.length = v15 - MutableBytePtr;
      v19.location = 0;
      CFDataDeleteBytes(Mutable, v19);
      CFArrayAppendValue(*(a3 + 16), Mutable);
      if (!Mutable)
      {
        return;
      }
    }

    else
    {
      sub_100029B54(-7, @"com.apple.security.cfder.error", v16, v12, v17, @"ccder failed to encode");
      *a3 = 0;
      if (!Mutable)
      {
        return;
      }
    }

    CFRelease(Mutable);
  }
}

uint64_t sub_100018DC8(const __CFString *a1, CFTypeRef *a2, uint64_t a3, UInt8 *a4, unint64_t a5)
{
  if (!a1)
  {
    sub_100029B54(-5, @"com.apple.security.cfder.error", a3, a2, a5, @"Null CFType");
    return 0;
  }

  v10 = CFGetTypeID(a1);
  if (CFArrayGetTypeID() == v10)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v12 = Count + 1;
      v13 = a5;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v12 - 2);
        v13 = sub_100018DC8(ValueAtIndex, a2, a3, a4, v13);
        --v12;
      }

      while (v12 > 1);
    }

LABEL_6:
    v15 = ccder_encode_constructed_tl();
    goto LABEL_14;
  }

  if (CFBooleanGetTypeID() == v10)
  {
    buf[0] = CFBooleanGetValue(a1);
    ccder_encode_body();
LABEL_13:
    v15 = ccder_encode_tl();
LABEL_14:
    v18 = v15;
    if (!v15)
    {
      sub_100029B54(-7, @"com.apple.security.cfder.error", v16, a2, v17, @"ccder failed to encode");
    }

    return v18;
  }

  if (CFDataGetTypeID() == v10)
  {
    CFDataGetLength(a1);
    CFDataGetBytePtr(a1);
    ccder_encode_body();
    goto LABEL_13;
  }

  if (CFDateGetTypeID() == v10)
  {
    AbsoluteTime = CFDateGetAbsoluteTime(a1);
    v56 = 0;
    v57 = 0;
    v55 = 0;
    err = 0;
    p_err = &err;
    v60 = 0x2000000000;
    v61 = -86;
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_10001AC24;
    v65 = &unk_100082100;
    v66 = &err;
    v67 = AbsoluteTime;
    v68 = &v57 + 4;
    v69 = &v57;
    v70 = &v56 + 4;
    v71 = &v56;
    v72 = &v55 + 4;
    v73 = &v55;
    sub_10001AB7C(buf);
    if (*(p_err + 24) == 1)
    {
      _Block_object_dispose(&err, 8);
    }

    else
    {
      sub_100029B54(-1, @"com.apple.security.cfder.error", v21, a2, v22, @"Failed to encode date.");
      v23 = *(p_err + 24);
      _Block_object_dispose(&err, 8);
      if ((v23 & 1) == 0)
      {
        v39 = sub_1000027AC("SecError");
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          if (a2)
          {
            v40 = *a2;
          }

          else
          {
            v40 = 0;
          }

          *buf = 138412290;
          *&buf[4] = v40;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "der: unable to encode date: %@", buf, 0xCu);
        }

        goto LABEL_6;
      }
    }

    err = 0;
    if ((sub_10001ACF4(HIDWORD(v57), v57, HIDWORD(v56), v56, HIDWORD(v55), v55, 0, &err) & 1) == 0)
    {
      v24 = CFErrorCopyDescription(err);
      sub_10002AC20(v24, 1405091842);
      if (v24)
      {
        CFRelease(v24);
      }

      v25 = sub_1000027AC("SecError");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = "continuing";
        if (a3)
        {
          v26 = "setting default value";
        }

        *buf = 138412546;
        *&buf[4] = err;
        *&buf[12] = 2080;
        *&buf[14] = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "der: invalid date: %@; %s", buf, 0x16u);
      }

      v27 = err;
      if (err)
      {
        err = 0;
        CFRelease(v27);
      }

      if (a3)
      {
        v57 = 0x7D100000001;
        HIDWORD(v56) = 1;
        HIDWORD(v55) = 1;
      }
    }

    if ((a4 + 1) <= a5)
    {
      *(a5 - 1) = 90;
      v28 = a5 - 1;
    }

    else
    {
      v28 = 0;
    }

    v30 = v57;
    v29 = HIDWORD(v57);
    v53 = HIDWORD(v56);
    v54 = v56;
    v32 = v55;
    v31 = HIDWORD(v55);
    v62 = -1431655766;
    v63 = -1431655766;
    *buf = 0xAAAAAAAAAAAAAAAALL;
    v33 = __dtoa();
    v34 = v63;
    v35 = *buf;
    if (AbsoluteTime < 0.0)
    {
      v36 = v33 + (v63 & ~(v63 >> 31));
      if (v36 < *buf)
      {
        v37 = (*buf - 1);
        for (*v37 = 106 - *(*buf - 1); v37 > v36; *v37 = 105 - v38)
        {
          v38 = *--v37;
        }
      }

      v34 = v63;
      v35 = *buf;
    }

    if (v35 - v33 <= v34)
    {
      goto LABEL_75;
    }

    if (v34 < 0)
    {
      v52 = v30;
      v42 = v29;
      ccder_encode_body();
      v43 = -v63;
      v44 = ccder_encode_body_nocopy();
      v28 = v44;
      if (!v44)
      {
        v29 = v42;
        v30 = v52;
        goto LABEL_75;
      }

      if (AbsoluteTime >= 0.0)
      {
        v45 = 48;
      }

      else
      {
        v45 = 57;
      }

      memset(v44, v45, v43);
      v29 = v42;
      v30 = v52;
    }

    else
    {
      v28 = ccder_encode_body();
    }

    if ((a4 + 1) <= v28)
    {
      *--v28 = 46;
    }

    else
    {
      v28 = 0;
    }

LABEL_75:
    __freedtoa();
    if (!v28)
    {
      goto LABEL_83;
    }

    v50 = (a4 + 2);
    if ((a4 + 2) > v28)
    {
      goto LABEL_83;
    }

    *(v28 - 2) = v32 / 10 + 48;
    *(v28 - 1) = v32 % 10 + 48;
    if (v50 > v28 - 2)
    {
      goto LABEL_83;
    }

    *(v28 - 4) = v31 / 10 + 48;
    *(v28 - 3) = v31 % 10 + 48;
    if (v50 > v28 - 4)
    {
      goto LABEL_83;
    }

    *(v28 - 6) = v54 / 10 + 48;
    *(v28 - 5) = v54 % 10 + 48;
    if (v50 > v28 - 6)
    {
      goto LABEL_83;
    }

    *(v28 - 8) = v53 / 10 + 48;
    *(v28 - 7) = v53 % 10 + 48;
    if (v50 <= v28 - 8 && (*(v28 - 10) = v30 / 10 + 48, *(v28 - 9) = v30 % 10 + 48, v50 <= v28 - 10) && (v51 = (((103 * (v29 % 100)) >> 15) & 1) + ((103 * (v29 % 100)) >> 10), *(v28 - 12) = v51 + 48, *(v28 - 11) = v29 % 100 - 10 * v51 + 48, v50 <= v28 - 12))
    {
      *(v28 - 14) = v29 / 1000 + 48;
      *(v28 - 13) = v29 / 100 % 10 + 48;
    }

    else
    {
LABEL_83:
      sub_100029B54(-7, @"com.apple.security.cfder.error", v48, a2, v49, @"ccder failed to encode");
    }

    goto LABEL_6;
  }

  if (CFDictionaryGetTypeID() == v10)
  {

    return sub_10001A7D8(a1, a2, a3);
  }

  if (CFSetGetTypeID() == v10)
  {

    return sub_10002A7F0(a1, a2, a3);
  }

  if (CFStringGetTypeID() == v10)
  {

    return sub_10001AA74(a1, a2, a4, a5, v41);
  }

  if (CFNumberGetTypeID() == v10)
  {

    return sub_100029750(a1, a2, a4, a5);
  }

  if (CFNullGetTypeID() != v10)
  {
    sub_100029B54(-5, @"com.apple.security.cfder.error", v46, a2, v47, @"Unsupported CFType");
    return 0;
  }

  return sub_10002A6DC(a2);
}

void sub_100019788(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

void sub_1000197C8(uint64_t a1, const __CFData *a2)
{
  v3 = sub_10001EF3C(a2, -1);
  if (v3)
  {
    v4 = v3;
    if (!*(v3 + 8))
    {
      v5 = sub_10001E660(v3, *(a1 + 32));
      if (v5)
      {
        v6 = v5;
        v7 = *(v5 + 40);
        if (v7)
        {
          CFRetain(*(v5 + 40));
          v8 = *(a1 + 40);
          v10.length = CFArrayGetCount(v7);
          v10.location = 0;
          CFArrayAppendArray(v8, v7, v10);
          CFRelease(v7);
        }

        sub_10001E2B0(v6);
      }
    }

    sub_100019788(v4);
  }
}

CFBooleanRef sub_100019894(uint64_t a1, const void *a2)
{
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), *(a1 + 24));
  result = CFDictionaryGetValue(ValueAtIndex[4], a2);
  v6 = result == kCFBooleanTrue;
  if (*(*a1 + 179) != v6)
  {
    *(*a1 + 179) = v6;
  }

  return result;
}

uint64_t sub_1000198F8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, __CFArray *))
{
  SecCertificateGetNormalizedIssuerContent();
  v7 = *(a1 + 24);
  v8 = SecItemCopyParentCertificates_ios();
  if (v8)
  {
    v9 = v8;
    v10 = CFGetTypeID(v8);
    if (v10 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(v9);
      Mutable = CFArrayCreateMutable(kCFAllocatorDefault, Count, &kCFTypeArrayCallBacks);
      context[0] = _NSConcreteStackBlock;
      context[1] = 0x40000000;
      context[2] = sub_100039E34;
      context[3] = &unk_100083198;
      context[4] = Mutable;
      v19.length = CFArrayGetCount(v9);
      v19.location = 0;
      CFArrayApplyFunction(v9, v19, sub_100039E98, context);
    }

    else
    {
      v13 = CFGetTypeID(v9);
      if (v13 == CFDataGetTypeID())
      {
        v14 = CFArrayGetCount(v9);
        Mutable = CFArrayCreateMutable(kCFAllocatorDefault, v14, &kCFTypeArrayCallBacks);
        v15 = SecCertificateCreateWithData(kCFAllocatorDefault, v9);
        if (v15)
        {
          v16 = v15;
          CFArrayAppendValue(Mutable, v15);
          CFRelease(v16);
        }
      }

      else
      {
        Mutable = 0;
      }
    }

    CFRelease(v9);
    a4(a3, Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    a4(a3, 0);
  }

  return 1;
}

uint64_t sub_100019AD0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, id))
{
  v7 = *(a3 + 120);
  v24 = 0;
  v25 = &v24;
  v26 = 0x2000000000;
  v27 = 0;
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 0x40000000;
  v29 = sub_100019DF0;
  v30 = &unk_1000858B0;
  v31 = &v24;
  sub_1000029CC(a3, &buf);
  v8 = *(v25 + 24);
  _Block_object_dispose(&v24, 8);
  if (v8 != 1 || (SecCertificateIsValid() & 1) != 0)
  {
    v9 = objc_autoreleasePoolPush();
    CAIssuers = SecCertificateGetCAIssuers();
    v11 = CAIssuers;
    if (CAIssuers)
    {
      CFRetain(CAIssuers);
      v12 = *(a3 + 272);
      v13 = sub_100038A34(a2, v11, 0);
      if (v13)
      {
        v14 = v13;
        if (v12)
        {
          *(v12 + 21) = 1;
        }

        a4(a3, v13);
        CFRelease(v14);
        goto LABEL_18;
      }

      if (v12)
      {
        *(v12 + 22) = 1;
      }

      v17 = [(__CFArray *)v11 count];
      if (v17 < 0xA)
      {
        if (qword_100092D48 != -1)
        {
          dispatch_once(&qword_100092D48, &stru_100082F58);
        }

        v21 = *(a3 + 32);
        if (v21)
        {
          CFRetain(*(a3 + 32));
        }

        v22 = [qword_100092D38 sessionForAuditToken:v21];
        v23 = [(TrustURLSessionContext *)[CAIssuerContext alloc] initWithContext:a3 uris:v11];
        [(CAIssuerContext *)v23 setCallback:a4];
        [(TrustURLSessionContext *)v23 setAttribution:*(a3 + 280)];
        v16 = [qword_100092D40 fetchNext:v22 context:v23];

        goto LABEL_19;
      }

      v18 = v17;
      v19 = sub_1000027AC("caissuer");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "too many caIssuer entries (%ld)", &buf, 0xCu);
      }
    }

    a4(a3, 0);
LABEL_18:
    v16 = 1;
LABEL_19:

    objc_autoreleasePoolPop(v9);
    return v16;
  }

  v15 = sub_1000027AC("async");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = a2;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "skipping CAIssuer fetch for expired %@", &buf, 0xCu);
  }

  a4(a3, 0);
  return 1;
}

void sub_100019DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_100019E90;
  v4[3] = &unk_100085888;
  v4[4] = *(a1 + 32);
  v4[5] = a3;
  v5.length = CFArrayGetCount(v3);
  v5.location = 0;
  CFArrayApplyFunction(v3, v5, sub_10005BDE0, v4);
}

uint64_t sub_100019E90(uint64_t a1, uint64_t a2)
{
  result = CFDictionaryContainsKey(*(a2 + 32), kSecPolicyCheckTemporalValidity);
  if (result)
  {
    v4 = *(a1 + 40);
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *v4 = 1;
  }

  return result;
}

void sub_100019EDC(uint64_t a1)
{
  *(a1 + 248) = sub_1000066A8;
  v2 = *(a1 + 224);
  if (v2)
  {
    v3 = *(v2 + 65);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 200);
  if (v4)
  {
    v5 = *(v4 + 65);
    if ((v3 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = 0;
    if ((v3 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if ((v5 & 1) == 0)
  {
    return;
  }

LABEL_9:
  if (v2)
  {
    v6 = *(v2 + 96);
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_100013A40(v4, *(a1 + 120));
  v8 = v7;
  v9 = *(a1 + 200);
  if (*(v9 + 96) < v7)
  {
    *(v9 + 96) = v7;
  }

  if (v3)
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  if (v5)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  v12 = *(a1 + 224);
  v13 = sub_1000027AC("reject");
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
  if (!v12 || v8 > v11)
  {
    if (v12)
    {
      if (v14)
      {
        v17 = *(a1 + 200);
        v18 = "non ";
        v26 = 136316419;
        if (v3)
        {
          v19 = "";
        }

        else
        {
          v19 = "non ";
        }

        v27 = v19;
        v28 = 2080;
        v20 = "accept";
        if (v11 <= 10000000)
        {
          v20 = "reject";
        }

        v29 = v20;
        v30 = 2048;
        v31 = v11;
        if (v5)
        {
          v18 = "";
        }

        v32 = 2080;
        v33 = v18;
        v34 = 2048;
        v35 = v8;
        v36 = 2113;
        v37 = v17;
        v21 = "replacing %sev %s score: %ld with %sev score: %ld %{private}@";
        v22 = v13;
        v23 = 62;
LABEL_42:
        _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, v21, &v26, v23);
      }
    }

    else if (v14)
    {
      v24 = "non ";
      v25 = *(a1 + 200);
      v26 = 136315651;
      if (v5)
      {
        v24 = "";
      }

      v27 = v24;
      v28 = 2048;
      v29 = v8;
      v30 = 2113;
      v31 = v25;
      v21 = "%sev score: %ld %{private}@";
      v22 = v13;
      v23 = 32;
      goto LABEL_42;
    }

    *(a1 + 224) = *(a1 + 200);
    return;
  }

  if (v14)
  {
    v15 = "non ";
    v16 = *(a1 + 200);
    v26 = 136315907;
    if (v5)
    {
      v15 = "";
    }

    v27 = v15;
    v28 = 2048;
    v29 = v8;
    v30 = 2048;
    v31 = v11;
    v32 = 2113;
    v33 = v16;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%sev score: %ld lower than %ld %{private}@", &v26, 0x2Au);
  }
}

void sub_10001A194(void (**a1)(void, void, void, void, void, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ++qword_100092EE0;
  a1[2](a1, a5, a3, a4, a2, 0);

  _Block_release(a1);
}

void sub_10001A1F4(uint64_t a1, int64_t value, const __CFString *a3, const __CFString *a4, const __CFArray *a5, void *cf)
{
  cfa = cf;
  if (cf)
  {
    v7 = cf;
    CFRetain(cf);
LABEL_14:
    v15 = sub_10002AE7C(v7);
    if (v15)
    {
      v16 = v15;
      xpc_dictionary_set_value(*(a1 + 32), "error", v15);
      xpc_release(v16);
    }

    v17 = cfa;
    if (cfa)
    {
      cfa = 0;
      CFRelease(v17);
    }

    goto LABEL_18;
  }

  xpc_dictionary_set_int64(*(a1 + 32), "result", value);
  if ((!a3 || sub_10001A6B8(*(a1 + 32), "details", a3, &cfa, v11)) && (!a4 || sub_10001A6B8(*(a1 + 32), "info", a4, &cfa, v11)) && a5)
  {
    v12 = *(a1 + 32);
    v22 = 0;
    v23 = &v22;
    v24 = 0x2000000000;
    v25 = 0;
    v13 = xpc_array_create(0, 0);
    v23[3] = v13;
    if (v13)
    {
      context[0] = _NSConcreteStackBlock;
      context[1] = 0x40000000;
      context[2] = sub_10001AED4;
      context[3] = &unk_100081E38;
      context[4] = &v22;
      context[5] = &cfa;
      v26.length = CFArrayGetCount(a5);
      v26.location = 0;
      CFArrayApplyFunction(a5, v26, sub_10001AF34, context);
    }

    else
    {
      sub_10001C2D4(-50, &cfa, @"xpc_array_create failed");
    }

    v14 = v23[3];
    if (v14)
    {
      xpc_dictionary_set_value(v12, "chain", v14);
      xpc_release(v23[3]);
    }

    _Block_object_dispose(&v22, 8);
  }

  v7 = cfa;
  if (cfa)
  {
    goto LABEL_14;
  }

LABEL_18:
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  xpc_release(*(a1 + 32));
  xpc_release(*(a1 + 40));
  v18 = *(a1 + 48);
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *(a1 + 112);
  if (v19)
  {
    CFRelease(v19);
  }
}

uint64_t sub_10001A414(const __CFString *a1, CFTypeRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    sub_100029B54(-5, @"com.apple.security.cfder.error", a3, a2, a5, @"Null CFType");
    return 0;
  }

  v7 = CFGetTypeID(a1);
  if (CFArrayGetTypeID() == v7)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v9 = 0;
      v10 = Count + 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v10 - 2);
        v9 += sub_10001A414(ValueAtIndex, a2);
        --v10;
      }

      while (v10 > 1);
    }

    goto LABEL_14;
  }

  if (CFBooleanGetTypeID() == v7)
  {
LABEL_14:

    return ccder_sizeof();
  }

  if (CFDataGetTypeID() == v7)
  {
    Length = CFDataGetLength(a1);

    return _ccder_sizeof_raw_octet_string(Length);
  }

  if (CFDateGetTypeID() == v7)
  {
    CFDateGetAbsoluteTime(a1);
    __dtoa();
    __freedtoa();
    goto LABEL_14;
  }

  if (CFDictionaryGetTypeID() == v7)
  {

    return sub_10001A770(a1, a2);
  }

  if (CFSetGetTypeID() == v7)
  {

    return sub_10002A738(a1, a2);
  }

  if (CFStringGetTypeID() == v7)
  {

    return sub_10001A9F4(a1);
  }

  if (CFNumberGetTypeID() != v7)
  {
    if (CFNullGetTypeID() == v7)
    {
      goto LABEL_14;
    }

    sub_100029B54(-5, @"com.apple.security.cfder.error", v14, a2, v15, @"Unsupported CFType");
    return 0;
  }

  return sub_100029678(a1, a2);
}

uint64_t sub_10001A6B8(void *a1, const char *a2, const __CFString *a3, CFTypeRef *a4, uint64_t a5)
{
  v9 = sub_10001A414(a3, a4, a3, a4, a5);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = malloc_type_malloc(v9, 0xCB2622D6uLL);
  v12 = &v11[v10];
  v13 = sub_100018DC8(a3, a4, 0, v11, v12);
  if (v13)
  {
    v14 = v12 > v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  if (v15 == 1)
  {
    xpc_dictionary_set_data(a1, a2, v13, v12 - v13);
  }

  free(v11);
  return v15;
}

uint64_t sub_10001A770(const __CFDictionary *a1, uint64_t a2)
{
  v3 = xmmword_100068A00;
  v4 = a2;
  CFDictionaryApplyFunction(a1, sub_100018C2C, &v3);
  if (v3 == 1)
  {
    return ccder_sizeof();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001A7D8(const __CFDictionary *a1, CFTypeRef *a2, char a3)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v13[0] = 0xAAAAAAAAAAAAAA01;
  v13[1] = a2;
  BYTE1(v13[0]) = a3;
  v13[2] = Mutable;
  v13[3] = 0;
  CFDictionaryApplyFunction(a1, sub_100018C7C, v13);
  if ((v13[0] & 1) == 0)
  {
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return 0;
  }

  v14.length = CFArrayGetCount(Mutable);
  v14.location = 0;
  CFArraySortValues(Mutable, v14, sub_10001AE18, 0);
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
    sub_100029B54(-7, @"com.apple.security.cfder.error", v11, a2, v12, @"ccder failed to encode");
    return 0;
  }

  return result;
}

uint64_t sub_10001A95C(const __CFString *a1, const __CFString *a2, CFTypeRef *a3, uint64_t a4, uint64_t a5)
{
  if (sub_10001A414(a1, a3, a3, a4, a5) && sub_10001A414(a2, a3, v7, v8, v9))
  {

    return ccder_sizeof();
  }

  else
  {
    sub_100029B54(-6, @"com.apple.security.cfder.error", v7, a3, v9, @"null input");
    return 0;
  }
}

uint64_t sub_10001A9F4(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  usedBufLen = 0;
  v6.location = 0;
  v6.length = Length;
  CFStringGetBytes(a1, v6, 0x8000100u, 0, 0, 0, MaximumSizeForEncoding, &usedBufLen);
  return ccder_sizeof();
}

uint64_t sub_10001AA74(const __CFString *a1, CFTypeRef *a2, UInt8 *a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    Length = CFStringGetLength(a1);
    usedBufLen = 0;
    v16.location = 0;
    v16.length = Length;
    if (CFStringGetBytes(a1, v16, 0x8000100u, 0, 0, a3, a4 - a3, &usedBufLen) == Length)
    {
      ccder_encode_body();
      result = ccder_encode_tl();
      if (result)
      {
        return result;
      }

      sub_100029B54(-7, @"com.apple.security.cfder.error", v13, a2, v14, @"ccder failed to encode");
    }

    else
    {
      sub_100029B54(-5, @"com.apple.security.cfder.error", v10, a2, v11, @"String extraction failed");
    }
  }

  else
  {
    sub_100029B54(-6, @"com.apple.security.cfder.error", a3, a2, a5, @"null input");
  }

  return 0;
}

void sub_10001AB7C(uint64_t a1)
{
  if (qword_100092B28 != -1)
  {
    dispatch_once(&qword_100092B28, &stru_100082070);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10001AC88;
  block[3] = &unk_100081FE0;
  block[4] = a1;
  dispatch_sync(qword_100092B30, block);
}

uint64_t sub_10001AC24(uint64_t a1, CFCalendarRef calendar)
{
  result = CFCalendarDecomposeAbsoluteTime(calendar, *(a1 + 40), "yMdHms", *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88));
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  return result;
}

uint64_t sub_10001AC88(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100092B38 != -1)
  {
    dispatch_once(&qword_100092B38, &stru_1000820B0);
  }

  v2 = qword_100092B40;
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

uint64_t sub_10001ACF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, __CFString **a8)
{
  if ((a1 & 3) != 0)
  {
    v8 = 0;
    if (!a7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  HIDWORD(v9) = -1030792151 * a1 + 85899344;
  LODWORD(v9) = HIDWORD(v9);
  if ((v9 >> 2) > 0x28F5C28)
  {
    v8 = 1;
    if (!a7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  HIDWORD(v11) = -1030792151 * a1 + 85899344;
  LODWORD(v11) = HIDWORD(v11);
  v8 = (v11 >> 4) < 0xA3D70B;
  if (a7)
  {
LABEL_6:
    *a7 = v8;
  }

LABEL_7:
  if (a6 <= 61 && a5 <= 59 && a4 <= 23 && (a2 - 13) >= 0xFFFFFFF4 && (a3 - 32) >= 0xFFFFFFE1 && (a2 != 2 || (v8 | 0x1C) >= a3) && (a2 == 2 || dword_100068AA0[a2] - dword_100068AA0[(a2 - 1)] >= a3))
  {
    return 1;
  }

  sub_10001C2D4(-1, a8, @"Invalid date: %i, %i, %i, %i, %i, %i, %i", a1, a2, a3, a4, a5, a6, v8);
  return 0;
}

uint64_t sub_10001AE18(const __CFData *a1, const __CFData *a2)
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

void sub_10001AED4(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v2 = *(a1 + 40);
    if ((SecCertificateAppendToXPCArray() & 1) == 0)
    {
      xpc_release(*(*(*(a1 + 32) + 8) + 24));
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }
  }
}

uint64_t sub_10001AF60(uint64_t a1, __CFString **a2, uint64_t a3)
{
  if (a1)
  {
    v6 = 0;
    sub_10000526C(a1, 0, &v6, a2);
    v4 = v6;
    if (v6)
    {
      (*(a3 + 16))(a3, v6);
      sub_100006380(v4);
      return 1;
    }
  }

  else
  {
    sub_10001C2D4(-25291, a2, @"failed to get a db handle");
  }

  return 0;
}

void sub_10001AFE4(uint64_t a1, _BYTE *a2)
{
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2000000000;
  v26 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *(a1 + 48);
  if (v4)
  {
    v26 = *(v4 + 208);
    if ((v26 & 0x8000000000000000) == 0)
    {
      v5 = *(a1 + 56);
      v6 = *(a1 + 40);
      v7 = *(v6 + 8);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 0x40000000;
      v24[2] = sub_10003A694;
      v24[3] = &unk_100083358;
      v24[4] = *(a1 + 32);
      v24[5] = v25;
      v24[6] = v6;
      v24[7] = v5;
      *(*(*(a1 + 32) + 8) + 24) &= sub_100004A60(v5, @"DELETE FROM responses WHERE responseId=?", (v7 + 24), v24);
    }
  }

  v8 = *(a1 + 56);
  v9 = *(a1 + 40);
  v10 = *(v9 + 8);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 0x40000000;
  v19[2] = sub_1000184D0;
  v19[3] = &unk_100083380;
  v19[4] = *(a1 + 32);
  v19[5] = v9;
  v20 = *(a1 + 64);
  v21 = *(a1 + 80);
  v22 = *(a1 + 88);
  v23 = v8;
  v19[6] = v25;
  *(*(*(a1 + 32) + 8) + 24) &= sub_100004A60(v8, @"INSERT INTO responses (ocspResponse,responderURI,expires,lastUsed) VALUES (?,?,?,?)", (v10 + 24), v19);
  v11 = *(a1 + 56);
  v12 = *(a1 + 40);
  v13 = *(v12 + 8);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 0x40000000;
  v18[2] = sub_1000186D0;
  v18[3] = &unk_1000833D0;
  v14 = *(a1 + 80);
  v18[4] = *(a1 + 32);
  v18[5] = v12;
  v18[6] = v25;
  v18[7] = v14;
  v18[8] = v11;
  *(*(*(a1 + 32) + 8) + 24) &= sub_100004A60(v11, @"INSERT INTO ocsp (hashAlgorithm,issuerNameHash,issuerPubKeyHash,serialNum,responseId,certStatus) VALUES (?,?,?,?,?,?)", (v13 + 24), v18);
  v15 = *(a1 + 56);
  v16 = *(a1 + 88);
  v17 = (*(*(a1 + 40) + 8) + 24);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 0x40000000;
  v27[2] = sub_10001B4B4;
  v27[3] = &unk_100083440;
  v27[4] = v16;
  v27[5] = v17;
  v27[6] = v15;
  *(*(*(a1 + 32) + 8) + 24) &= sub_100004A60(v15, @"DELETE FROM responses WHERE expires<? AND responseId NOT IN (SELECT responseId FROM ocsp WHERE certStatus=1)", v17, v27);
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    *a2 = 0;
  }

  _Block_object_dispose(v25, 8);
}

uint64_t sub_10001B29C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  *(*(*(a1 + 32) + 8) + 24) &= sub_100010DE4(*(a1 + 56), 1, *a4, *(a4 + 8), (*(*(a1 + 40) + 8) + 24));
  *(*(*(a1 + 32) + 8) + 24) &= sub_100010DE4(*(a1 + 56), 2, *(a3 + 16), *(a3 + 24), (*(*(a1 + 40) + 8) + 24));
  *(*(*(a1 + 32) + 8) + 24) &= sub_100010DE4(*(a1 + 56), 3, *(a3 + 32), *(a3 + 40), (*(*(a1 + 40) + 8) + 24));
  *(*(*(a1 + 32) + 8) + 24) &= sub_100010DE4(*(a1 + 56), 4, *(a3 + 48), *(a3 + 56), (*(*(a1 + 40) + 8) + 24));
  v7 = *(a1 + 56);
  v8 = *(*(a1 + 40) + 8);
  v9 = sqlite3_bind_int64(v7, 5, *(*(*(a1 + 48) + 8) + 24));
  *(*(*(a1 + 32) + 8) + 24) &= sub_100005AD8(v9, v7, (v8 + 24), @"bind_int64[%d]", 5);
  v10 = *(a1 + 56);
  v11 = *a2;
  v12 = *(*(a1 + 40) + 8);
  v13 = sqlite3_bind_int(v10, 6, v11);
  *(*(*(a1 + 32) + 8) + 24) &= sub_100005AD8(v13, v10, (v12 + 24), @"bind_int[%d]", 6);
  *(*(*(a1 + 32) + 8) + 24) &= sub_100005D40(*(a1 + 64), *(a1 + 56), (*(*(a1 + 40) + 8) + 24), 0);
  v14 = *(a1 + 56);
  v15 = *(*(a1 + 40) + 8);
  v16 = sqlite3_reset(v14);
  *(*(*(a1 + 32) + 8) + 24) &= sub_100005AD8(v16, v14, (v15 + 24), @"reset");
  return -(*(*(*(a1 + 32) + 8) + 24) ^ 1);
}

BOOL sub_10001B4B4(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 40);
  v5 = sqlite3_bind_double(a2, 1, *(a1 + 32));
  result = sub_100005AD8(v5, a2, v4, @"bind_double[%d]", 1);
  if (result)
  {
    v8 = *(a1 + 40);
    v7 = *(a1 + 48);

    return sub_100005D40(v7, a2, v8, 0);
  }

  return result;
}

uint64_t sub_10001B54C(uint64_t a1, const __CFString *a2)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = -1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = sub_10001B6F8;
  v10[3] = &unk_100082250;
  v10[4] = &v19;
  v10[5] = &v11;
  v10[6] = &v15;
  v10[7] = a1;
  v3 = sub_100004A60(a1, a2, &v14, v10);
  v4 = v3 & v20[3];
  *(v20 + 24) = v4;
  if ((v4 & 1) == 0)
  {
    v5 = sub_1000027AC("SecError");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v12[3];
      *buf = 138412546;
      v24 = a2;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SecDBGetInteger [%@] failed: %@", buf, 0x16u);
    }
  }

  v7 = v12[3];
  if (v7)
  {
    v12[3] = 0;
    CFRelease(v7);
  }

  v8 = *(v16 + 6);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  return v8;
}

uint64_t sub_10001B6F8(void *a1, sqlite3_stmt *a2)
{
  v3 = a1[7];
  v4 = *(a1[5] + 8);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_100018B40;
  v6[3] = &unk_100082228;
  v6[4] = a1[6];
  v6[5] = a2;
  *(*(a1[4] + 8) + 24) &= sub_100005D40(v3, a2, (v4 + 24), v6);
  return 1;
}

sqlite3_int64 sub_10001B79C(uint64_t a1)
{
  result = sqlite3_column_int64(*(a1 + 40), 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_10001B7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = 1;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v7 = *(a1 + 8);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 0x40000000;
  v14[2] = sub_10001B944;
  v14[3] = &unk_100084A50;
  v14[4] = &v23;
  v14[5] = &v15;
  v14[8] = a1;
  v14[9] = a3;
  v14[6] = &v19;
  v14[7] = a2;
  v14[10] = a4;
  v14[11] = a5;
  v8 = sub_100004A60(v7, @"SELECT flags,format,data,policies FROM groups WHERE groupid=?", &v18, v14);
  *(v24 + 24) = v8;
  v9 = v16[3];
  if (v8)
  {
    if (!v9)
    {
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  if (v9)
  {
LABEL_5:
    Code = CFErrorGetCode(v9);
    goto LABEL_7;
  }

  Code = -2070;
LABEL_7:
  sub_100054DC0(1, 3, Code);
  *(v20 + 6) = 0;
  v11 = v16[3];
  if (v11)
  {
    if (a6 && !*a6)
    {
      *a6 = v11;
    }

    else
    {
      CFRelease(v11);
    }
  }

LABEL_12:
  v12 = *(v20 + 6);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  return v12;
}

uint64_t sub_10001B944(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(*(a1 + 32) + 8);
  if (*(v4 + 24) == 1)
  {
    v5 = *(*(a1 + 40) + 8);
    v6 = sqlite3_bind_int64(a2, 1, *(a1 + 56));
    v7 = sub_100005AD8(v6, a2, (v5 + 24), @"bind_int64[%d]", 1);
    v4 = *(*(a1 + 32) + 8);
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 24) = v7;
  v8 = *(*(a1 + 32) + 8);
  if (*(v8 + 24) == 1)
  {
    v9 = *(*(a1 + 64) + 8);
    v10 = *(*(a1 + 40) + 8);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 0x40000000;
    v13[2] = sub_10001BA84;
    v13[3] = &unk_100084A28;
    v13[5] = *(a1 + 72);
    v13[6] = a2;
    v13[4] = *(a1 + 48);
    v14 = *(a1 + 80);
    v11 = sub_100005D40(v9, a2, (v10 + 24), v13);
    v8 = *(*(a1 + 32) + 8);
  }

  else
  {
    v11 = 0;
  }

  *(v8 + 24) = v11;
  return *(*(*(a1 + 32) + 8) + 24);
}

const UInt8 *sub_10001BA84(uint64_t a1)
{
  if (*(a1 + 40))
  {
    **(a1 + 40) = sqlite3_column_int(*(a1 + 48), 0);
  }

  result = sqlite3_column_int(*(a1 + 48), 1);
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(a1 + 56))
  {
    result = sqlite3_column_blob(*(a1 + 48), 2);
    if (result)
    {
      if (*(*(*(a1 + 32) + 8) + 24) == 3)
      {
        v3 = result;
        v4 = sqlite3_column_bytes(*(a1 + 48), 2);
        result = CFDataCreate(kCFAllocatorDefault, v3, v4);
        **(a1 + 56) = result;
      }
    }
  }

  if (*(a1 + 64))
  {
    result = sqlite3_column_blob(*(a1 + 48), 3);
    if (result)
    {
      v5 = result;
      v6 = sqlite3_column_bytes(*(a1 + 48), 3);
      result = CFDataCreate(kCFAllocatorDefault, v5, v6);
      **(a1 + 64) = result;
    }
  }

  return result;
}

uint64_t sub_10001BB80(void *a1, sqlite3_stmt *a2)
{
  v4 = *(a1[5] + 8);
  v5 = sqlite3_bind_int64(a2, 1, a1[9]);
  *(*(a1[4] + 8) + 24) &= sub_100005AD8(v5, a2, (v4 + 24), @"bind_int64[%d]", 1);
  *(*(a1[4] + 8) + 24) &= sub_100010DE4(a2, 2, *(*(a1[6] + 8) + 24), *(*(a1[7] + 8) + 24), (*(a1[5] + 8) + 24));
  v6 = *(a1[10] + 8);
  v7 = *(a1[5] + 8);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_1000538D4;
  v9[3] = &unk_100084E30;
  v9[4] = a1[8];
  v9[5] = a2;
  *(*(a1[4] + 8) + 24) &= sub_100005D40(v6, a2, (v7 + 24), v9);
  return *(*(a1[4] + 8) + 24);
}

uint64_t sub_10001BCC8()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100052790;
  block[3] = &unk_100084238;
  block[4] = &qword_100092E70;
  if (qword_100092E68 != -1)
  {
    dispatch_once(&qword_100092E68, block);
  }

  return qword_100092E70;
}

const __CFBoolean *sub_10001BD60(void *key)
{
  if (qword_100092B80 == -1)
  {
    if (!key)
    {
      return 0;
    }
  }

  else
  {
    dispatch_once(&qword_100092B80, &stru_1000825A8);
    if (!key)
    {
      return 0;
    }
  }

  result = qword_100092B88;
  if (qword_100092B88)
  {
    result = CFDictionaryGetValue(qword_100092B88, key);
    if (result)
    {
      v3 = result;
      v4 = CFGetTypeID(result);
      if (v4 == CFBooleanGetTypeID())
      {
        return (CFBooleanGetValue(v3) != 0);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_10001BDF4(uint64_t a1, uint64_t a2, void *a3, CFTypeRef *a4)
{
  v6 = sub_10001BE4C(a4);
  if (a4 && *a4)
  {
    return 0;
  }

  xpc_dictionary_set_uint64(a3, "status", v6);
  return 1;
}

uint64_t sub_10001BE4C(CFTypeRef *a1)
{
  if (!sub_100003140())
  {
    return 0;
  }

  cf = 0;
  v2 = sub_10001BF8C();
  v3 = sub_10001BFBC(v2, &cf);

  v4 = cf;
  if (cf)
  {
    if (a1)
    {
      *a1 = cf;
    }

    else
    {
      cf = 0;
      CFRelease(v4);
    }
  }

  v5 = sub_1000027AC("trust");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    if (a1)
    {
      if (*a1)
      {
        v7 = "Error";
      }

      else
      {
        v7 = "OK";
      }
    }

    else
    {
      v7 = "N/A";
    }

    *buf = 134218242;
    v10 = v3;
    v11 = 2080;
    v12 = v7;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "exceptionResetCount: %llu (%s)", buf, 0x16u);
  }

  return v3;
}

CFURLRef sub_10001BF8C()
{
  v0 = sub_100008D3C(@"com.apple.security.exception_reset_counter.plist");

  return v0;
}

uint64_t sub_10001BFBC(void *a1, CFErrorRef *a2)
{
  v3 = a1;
  v4 = objc_autoreleasePoolPush();
  v17 = 0;
  v5 = [NSDictionary dictionaryWithContentsOfURL:v3 error:&v17];
  v6 = v17;
  v7 = [v5 mutableCopy];

  if (v7)
  {
    v8 = [v7 objectForKey:@"ExceptionResetCount"];
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v8 unsignedIntValue];
        v10 = sub_1000027AC("trust");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543618;
          v19 = @"ExceptionResetCount";
          v20 = 2048;
          v21 = v9;
          _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "'%{public}@' is %llu.", buf, 0x16u);
        }

        goto LABEL_21;
      }

      v15 = sub_1000027AC("SecError");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v19 = @"ExceptionResetCount";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "The value for key '%{public}@' is not a number.", buf, 0xCu);
      }

      if (a2)
      {
        v13 = kCFErrorDomainPOSIX;
        v14 = 33;
        goto LABEL_19;
      }
    }

    else
    {
      v12 = sub_1000027AC("trust");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543618;
        v19 = @"ExceptionResetCount";
        v20 = 2048;
        v21 = 0;
        _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Could not find key '%{public}@'. Defaulting to value %llu.", buf, 0x16u);
      }

      if (a2)
      {
        v13 = kCFErrorDomainPOSIX;
        v14 = 6;
LABEL_19:
        v9 = 0;
        *a2 = CFErrorCreate(0, v13, v14, 0);
LABEL_21:

        goto LABEL_22;
      }
    }

    v9 = 0;
    goto LABEL_21;
  }

  v11 = sub_1000027AC("SecError");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v19 = v3;
    v20 = 2048;
    v21 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Failed to read from permanent storage at '%{public}@' or the data is bad. Defaulting to value %llu.", buf, 0x16u);
  }

  v9 = 0;
  if (a2)
  {
    *a2 = v6;
  }

LABEL_22:

  objc_autoreleasePoolPop(v4);
  return v9;
}

void sub_10001C2D4(int a1, __CFString **a2, CFStringRef format, ...)
{
  va_start(va, format);
  cf = 0;
  if (a2)
  {
    sub_1000298A0(a1, kCFErrorDomainOSStatus, *a2, &cf, format, va);
    *a2 = cf;
  }

  else
  {
    sub_1000298A0(a1, kCFErrorDomainOSStatus, 0, &cf, format, va);
    v4 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v4);
    }
  }
}

uint64_t sub_10001C358(uint64_t a1, const void *a2)
{
  v4 = *(*a1 + 200);
  if (v4)
  {
    if (*(v4 + 16) >= 1)
    {
      v5 = *(v4 + 136);
      if (v5)
      {
        v6 = *(v5 + 16);
      }
    }
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), *(a1 + 24));
  CFDictionaryGetValue(ValueAtIndex[4], a2);
  result = SecPolicyCheckCertLeafMarkerOidWithoutValueCheck();
  if ((result & 1) == 0)
  {

    return sub_100012178(a1, a2, 0, kCFBooleanFalse, 0, 0);
  }

  return result;
}