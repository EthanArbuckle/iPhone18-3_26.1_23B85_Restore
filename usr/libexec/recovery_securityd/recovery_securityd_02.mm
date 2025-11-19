uint64_t sub_100023A94(uint64_t a1, __CFString **a2)
{
  v4 = sub_100002404(a1, kSecAttrSharingGroup);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFStringGetTypeID())
    {
      if (CFStringGetLength(v5))
      {
        return 1;
      }
    }
  }

  v7 = sub_100002404(a1, kSecAttrAccessGroup);
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  v9 = CFGetTypeID(v7);
  if (v9 != CFStringGetTypeID())
  {
    return 1;
  }

  if (!CFEqual(v8, @"com.apple.cfnetwork"))
  {
    return 1;
  }

  v10 = sub_1000024A8(a1);
  if (v10 != sub_100017208())
  {
    return 1;
  }

  v12 = sub_100002404(a1, kSecAttrServer);
  v13 = sub_100002404(a1, kSecAttrProtocol);
  v14 = sub_100002404(a1, kSecAttrAuthenticationType);
  if (!v12)
  {
    return 1;
  }

  v15 = v14;
  v16 = CFGetTypeID(v12);
  TypeID = CFStringGetTypeID();
  result = 1;
  if (v16 != TypeID)
  {
    return result;
  }

  if (!v13)
  {
    return result;
  }

  v18 = CFGetTypeID(v13);
  v19 = CFStringGetTypeID();
  result = 1;
  if (v18 != v19 || !v15)
  {
    return result;
  }

  v20 = CFGetTypeID(v15);
  if (v20 != CFStringGetTypeID())
  {
    return 1;
  }

  v21 = secLogObjForScope("item");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138477827;
    v23 = a1;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Make this item syncable: %{private}@", &v22, 0xCu);
  }

  return sub_100004118(a1, 1, a2);
}

const void *sub_100023CAC(void *a1, CFDictionaryRef theDict, int a3, uint64_t a4, int a5, __CFString **a6)
{
  Value = CFDictionaryGetValue(theDict, @"v_Data");
  if (!Value)
  {
    SecError(-26275, a6, @"No v_Data in backup dictionary %@", theDict);
    return 0;
  }

  v13 = sub_1000037B8(kCFAllocatorDefault, a1, Value, a3, a4, a6);
  v14 = v13;
  if (v13 && (sub_100002E30(v13, a5, a6) & 1) == 0)
  {
    CFRelease(v14);
    return 0;
  }

  return v14;
}

uint64_t sub_100023D78(void **a1, CFDictionaryRef theDict, __CFString **a3)
{
  Value = CFDictionaryGetValue(theDict, kSecValuePersistentRef);
  if (!Value)
  {
    return SecError(-26275, a3, @"No v_PersistentRef in backup dictionary %@", theDict);
  }

  v7 = Value;
  if ((_SecItemParsePersistentRef() & 1) == 0)
  {
    return SecError(-26275, a3, @"v_PersistentRef %@ failed to decode", v7);
  }

  v8 = sub_1000024A8(a1);
  if (CFEqual(*v8, 0))
  {
    return sub_100003EFC(a1, 0xAAAAAAAAAAAAAAAALL, a3);
  }

  else
  {
    return SecError(-26275, a3, @"v_PersistentRef has unexpected class %@", 0);
  }
}

BOOL sub_100023E54(uint64_t a1, CFDictionaryRef theDict, __CFString **a3)
{
  Value = CFDictionaryGetValue(theDict, kSecValuePersistentRef);
  if (!Value)
  {
    return SecError(-26275, a3, @"No v_PersistentRef in backup dictionary %@", theDict);
  }

  v7 = Value;
  if ((_SecItemParsePersistentRef() & 1) == 0)
  {
    return SecError(-26275, a3, @"v_PersistentRef %@ failed to decode", v7, 0xAAAAAAAAAAAAAAAALL, 0);
  }

  v8 = sub_1000024A8(a1);
  if (!CFEqual(*v8, 0))
  {
    return SecError(-26275, a3, @"v_PersistentRef has unexpected class %@", 0, 0xAAAAAAAAAAAAAAAALL, 0);
  }

  return 0;
}

__CFDictionary *sub_100023FA8(void *a1, uint64_t a2, __CFString **a3)
{
  result = sub_100024B68(a1, a2, a3);
  if (result)
  {
    v4 = result;
    v5 = CFDataCopySHA1Digest(result);
    CFRelease(v4);
    return v5;
  }

  return result;
}

__CFData *sub_100023FF4(uint64_t a1, uint64_t a2, __CFString **a3)
{
  v22 = 0;
  v5 = sub_1000019D8(a1, 32, a3);
  v6 = sub_1000019D8(a1, 128, a3);
  v7 = sub_1000019D8(a1, 0x2000, a3);
  v8 = v7;
  if (v5 && v6 && v7)
  {
    v11 = sub_1000405A0(a1, a3);
    v12 = sub_100023FA8(a1, 256, a3);
    v13 = v12;
    if (!v11 || !v12)
    {
      if (!v12)
      {
        goto LABEL_11;
      }

      goto LABEL_50;
    }

    CFDictionarySetValue(v8, kSecAttrSHA1, v12);
    context[0] = _NSConcreteStackBlock;
    context[1] = 3221225472;
    context[2] = sub_100024350;
    context[3] = &unk_1000631F0;
    context[4] = v6;
    context[5] = v8;
    CFDictionaryApplyFunction(v5, sub_100024448, context);
    if (sub_100021F54(*(a1 + 28), v11, *(a1 + 56), v5, v6, v8, &v22, 1, 0, a3))
    {
      *(a1 + 40) = 4;
LABEL_49:
      CFRelease(v11);
LABEL_50:
      CFRelease(v13);
LABEL_11:
      CFRelease(v5);
      goto LABEL_12;
    }

    if (a3 && *a3 && CFErrorGetCode(*a3) == -25330)
    {
      Domain = CFErrorGetDomain(*a3);
      if (Domain && kCFErrorDomainOSStatus)
      {
        if (CFEqual(Domain, kCFErrorDomainOSStatus))
        {
          goto LABEL_49;
        }
      }

      else if (Domain == kCFErrorDomainOSStatus)
      {
        goto LABEL_49;
      }
    }

    v19 = secLogObjForScope("SecCritical");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      if (a3)
      {
        v20 = *a3;
      }

      else
      {
        v20 = &stru_1000643F8;
      }

      *buf = 138412290;
      v24 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "ks_encrypt_data (db): failed: %@", buf, 0xCu);
    }

    goto LABEL_49;
  }

  if (!v5 && !v6 && !v7)
  {
    return v22;
  }

  if (__security_simulatecrash_enabled())
  {
    v9 = secLogObjForScope("SecEmergency");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v15 = @"missing";
      if (v5)
      {
        v16 = @"present";
      }

      else
      {
        v16 = @"missing";
      }

      if (v6)
      {
        v17 = @"present";
      }

      else
      {
        v17 = @"missing";
      }

      if (v8)
      {
        v15 = @"present";
      }

      if (a3)
      {
        v18 = *a3;
      }

      else
      {
        v18 = @"no error pointer";
      }

      *buf = 138413058;
      v24 = v16;
      v25 = 2112;
      v26 = v17;
      v27 = 2112;
      v28 = v15;
      v29 = 2112;
      v30 = v18;
      _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "SecDbKeychainItemCopyEncryptedData: not all plists are present: secretStuff: %@, attributes: %@, auth_attributes: %@ : %@", buf, 0x2Au);
    }
  }

  if (v5)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (v6)
  {
    CFRelease(v6);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v22;
}

void sub_100024350(uint64_t a1, const void *a2)
{
  CFDictionaryRemoveValue(*(a1 + 32), a2);
  v4 = *(a1 + 40);

  CFDictionaryRemoveValue(v4, a2);
}

CFDateRef sub_100024394(int a1, uint64_t a2, __CFString **a3)
{
  v3 = *(a2 + 8);
  if ((v3 - 5) >= 2)
  {
    if (v3 != 4)
    {
      SecError(-26276, a3, @"attr %@ has no default value", *a2);
      return 0;
    }

    v5 = kCFAllocatorDefault;
    Current = 0.0;
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = kCFAllocatorDefault;
  }

  return CFDateCreate(v5, Current);
}

void sub_100024464(id a1)
{
  v1 = sec_action_create("non-device keybag", 2);
  v2 = qword_100073828;
  qword_100073828 = v1;

  v3 = qword_100073828;

  sec_action_set_handler(v3, &stru_100063230);
}

void sub_1000244BC(id a1)
{
  v1 = secLogObjForScope("SecWarning");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "ks_encrypt_data: called with non-device keybag - call should be rerouted to ks_encrypt_data_legacy", v2, 2u);
  }
}

CFTypeRef sub_10002452C(CFTypeRef cf, __CFString **a2)
{
  v2 = cf;
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 != CFDictionaryGetTypeID())
    {
      v5 = CFGetTypeID(v2);
      v6 = CFCopyTypeIDDescription(v5);
      SecError(-26275, a2, @"plist is a %@, expecting a dictionary", v6);
      if (v6)
      {
        CFRelease(v6);
      }

      CFRelease(v2);
      return 0;
    }
  }

  return v2;
}

uint64_t sub_1000245C0(uint64_t a1, CFTypeRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  if (a3)
  {
    if (ccder_decode_tag())
    {
      v13 = sSecDERErrorDomain[0];
      v14 = @"Unsupported DER Type";
      v15 = -2;
    }

    else
    {
      v13 = sSecDERErrorDomain[0];
      v14 = @"Unknown data encoding";
      v15 = -1;
    }

    SecCFCreateErrorWithFormat(v15, v13, 0, a2, 0, v14, v10, v11, v16);
    return 0;
  }

  else
  {
    SecCFCreateErrorWithFormat(-1, sSecDERErrorDomain[0], 0, a2, 0, @"Null DER", a7, a8, v16);
  }

  return v8;
}

const void *sub_100024B30(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    return (v1 == CFNumberGetTypeID());
  }

  return result;
}

__CFDictionary *sub_100024B68(void *a1, uint64_t a2, __CFString **a3)
{
  result = sub_1000019D8(a1, a2, a3);
  if (result)
  {
    v10 = result;
    DERData = CFPropertyListCreateDERData(kCFAllocatorDefault, result, a3, v5, v6, v7, v8, v9);
    CFRelease(v10);
    return DERData;
  }

  return result;
}

void sub_100024BC8(id a1)
{
  v1 = MKBUserTypeDeviceMode();
  value = 0;
  if (v1)
  {
    v2 = v1;
    if (CFDictionaryGetValueIfPresent(v1, kMKBDeviceModeKey[0], &value))
    {
      if (CFEqual(value, kMKBDeviceModeMultiUser))
      {
        byte_100073838 = 1;
      }
    }

    CFRelease(v2);
  }
}

uint64_t sub_100024C48(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    if ((*(a1 + 56) & 1) == 0)
    {
      v3 = *(a1 + 24);
      if (v3)
      {
        *(a1 + 24) = 0;
        CFRelease(v3);
      }
    }

    v4 = +[UMUserManager sharedManager];
    v5 = [v4 currentPersona];

    if (v5 && [v5 userPersonaType] == 2)
    {
      v6 = secLogObjForScope("serverxpc");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_100040910(a1, v5, v6);
      }

      v7 = secLogObjForScope("serverxpc");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v5 userPersonaUniqueString];
        *buf = 134218242;
        v17 = a1;
        v18 = 2112;
        v19 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "securityd client(%p): persona uuid %@", buf, 0x16u);
      }

      v9 = [v5 userPersonaUniqueString];
      v10 = uuid_parse([v9 UTF8String], &v15);

      if (v10)
      {
        v11 = secLogObjForScope("serverxpc");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v5 userPersonaUniqueString];
          *buf = 134218242;
          v17 = a1;
          v18 = 2112;
          v19 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "securityd client(%p):  uuid %@ didn't parse setting to null", buf, 0x16u);
        }

        v13 = 0;
        *(a1 + 24) = 0;
        goto LABEL_18;
      }

      *(a1 + 24) = CFDataCreate(0, &v15, 16);
    }

    v13 = 1;
LABEL_18:

    objc_autoreleasePoolPop(v2);
    return v13;
  }

  return 0;
}

uint64_t sub_100024EA0(uint64_t a1, int a2, _OWORD *a3)
{
  v3 = a1;
  if (a1)
  {
    v6 = objc_autoreleasePoolPush();
    *(v3 + 20) = a2;
    *(v3 + 24) = 0;
    if (qword_100073830 != -1)
    {
      sub_1000409C4();
    }

    if (byte_100073838 == 1)
    {
      *v24.val = 0;
      *(v3 + 36) = byte_100073838;
      v7 = MKBForegroundUserSessionID();
      *(v3 + 40) = v7;
      if ((v7 + 1) > 1)
      {
        v8 = v7;
      }

      else
      {
        __security_simulatecrash(@"Execution has encountered an unexpected state", 1405091854);
        v8 = 0;
        *(v3 + 40) = 0;
      }

      v9 = *(v3 + 20);
      v10 = secLogObjForScope("serverxpc");
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
      if (v9 < 0x1F6 || v8 == v9)
      {
        if (v11)
        {
          sub_100040A18();
        }

        *(v3 + 24) = sub_1000293F4(*(v3 + 40));
        *(v3 + 20) = *(v3 + 40);
      }

      else
      {
        if (v11)
        {
          sub_1000409D8();
        }

        *(v3 + 24) = sub_10002946C(*(v3 + 20));
      }

      *(v3 + 32) = dword_1000739E8;
    }

    else
    {
      sub_100024C48(v3);
    }

    v12 = a3[1];
    *v24.val = *a3;
    *&v24.val[4] = v12;
    v13 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &v24);
    *v3 = v13;
    *(v3 + 8) = sub_100017598(v13);
    *(v3 + 48) = sub_100017534(*v3);
    v14 = sub_100017830(*v3, @"com.apple.developer.on-demand-install-capable");
    *(v3 + 44) = v14;
    if (v14)
    {
      v15 = secLogObjForScope("serverxpc");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_100040A58();
      }
    }

    *(v3 + 57) = sub_100017830(*v3, @"com.apple.private.keychain.kcsharing.client");
    *(v3 + 16) = sub_100017830(*v3, @"com.apple.private.system-keychain");
    *(v3 + 18) = sub_100017830(*v3, @"com.apple.developer.networking.networkextension");
    *(v3 + 19) = sub_100017830(*v3, @"com.apple.networkextension.keychain");
    if (*(v3 + 36) == 1)
    {
      *(v3 + 17) = sub_100017830(*v3, @"com.apple.private.syncbubble-keychain");
    }

    v16 = *(v3 + 8);
    if (!v16)
    {
      goto LABEL_31;
    }

    v25.length = CFArrayGetCount(v16);
    v25.location = 0;
    if (!CFArrayContainsValue(*(v3 + 8), v25, @"*"))
    {
      goto LABEL_31;
    }

    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (SecIsInternalRelease())
    {
      CFArrayAppendValue(Mutable, @"com.apple.security-cli");
    }

    v18 = sub_1000251B8(*v3, Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if ((v18 & 1) == 0)
    {
      v20 = *v3;
      if (*v3)
      {
        *v3 = 0;
        CFRelease(v20);
      }

      v21 = *(v3 + 8);
      if (v21)
      {
        *(v3 + 8) = 0;
        CFRelease(v21);
      }

      v22 = *(v3 + 24);
      if (v22)
      {
        *(v3 + 24) = 0;
        CFRelease(v22);
      }

      v23 = *(v3 + 48);
      if (v23)
      {
        *(v3 + 48) = 0;
        CFRelease(v23);
      }

      v3 = 0;
    }

    else
    {
LABEL_31:
      v3 = 1;
    }

    objc_autoreleasePoolPop(v6);
  }

  return v3;
}

uint64_t sub_1000251B8(__SecTask *a1, const __CFArray *a2)
{
  if (!a1)
  {
    v9 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "serverxpc: Client task is null, cannot verify platformness", buf, 2u);
    }

LABEL_26:

    goto LABEL_27;
  }

  CodeSignStatus = SecTaskGetCodeSignStatus(a1);
  if ((CodeSignStatus & 0xC000001) != 0x4000001)
  {
    v10 = CodeSignStatus;
    if (SecIsInternalRelease())
    {
      if ((v10 & 0x1C000000) == 0x14000000)
      {
        goto LABEL_3;
      }

      v11 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "serverxpc: client is not a platform binary: 0x%08x", buf, 8u);
      }
    }

    else
    {
      v11 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "serverxpc: client is not a platform binary: 0x%08x", buf, 8u);
      }
    }

LABEL_27:
    v13 = 0;
    return v13 & 1;
  }

LABEL_3:
  v5 = SecTaskCopySigningIdentifier(a1, 0);
  v6 = v5;
  if (a2)
  {
    if (v5)
    {
      *buf = 0;
      v19 = buf;
      v20 = 0x2020000000;
      v21 = 0;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100025588;
      v15[3] = &unk_1000632B0;
      v15[4] = buf;
      v15[5] = v5;
      v7 = v15;
      v22.length = CFArrayGetCount(a2);
      v22.location = 0;
      CFArrayApplyFunction(a2, v22, sub_1000255CC, v7);

      if (v19[24] == 1)
      {
        v8 = secLogObjForScope("serverxpc");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          sub_100040A98();
        }
      }

      else
      {
        v8 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *v16 = 138412290;
          v17 = v6;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "serverxpc: client %@ is not eligible", v16, 0xCu);
        }
      }

      CFRelease(v6);
      v13 = v19[24];
      _Block_object_dispose(buf, 8);
      return v13 & 1;
    }

    v9 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "serverxpc: client has no codesign identifier", buf, 2u);
    }

    goto LABEL_26;
  }

  v12 = secLogObjForScope("serverxpc");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_100040B0C();
  }

  if (v6)
  {
    CFRelease(v6);
  }

  v13 = 1;
  return v13 & 1;
}

void sub_10002555C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100025588(uint64_t a1, CFTypeRef cf1)
{
  result = CFEqual(cf1, *(a1 + 40));
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

uint64_t sub_10002573C(uint64_t a1, void *a2)
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
        v15 = &OBJC_IVAR___SecDbKeychainSerializedMetadata__tamperCheck;
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadData();
        v15 = &OBJC_IVAR___SecDbKeychainSerializedMetadata__ciphertext;
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
    v15 = &OBJC_IVAR___SecDbKeychainSerializedMetadata__wrappedKey;
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

id sub_100026400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) callCallback:a2 error:a3];
  v4 = *(a1 + 40);

  return [v4 setTransaction:0];
}

void sub_10002709C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Unwind_Resume(a1);
}

void sub_100027318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100027668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100027D7C(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
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
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 44) |= 2u;
          while (1)
          {
            v35 = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v35 & 0x7F) << v24;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_50;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v26;
          }

LABEL_50:
          v31 = 40;
        }

        else
        {
          if (v13 != 2)
          {
LABEL_45:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_56;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            v34 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v34 & 0x7F) << v16;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_54;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_54:
          v31 = 8;
        }

        *(a1 + v31) = v22;
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = PBReaderReadData();
            v15 = 32;
            break;
          case 4:
            v14 = PBReaderReadData();
            v15 = 16;
            break;
          case 5:
            v14 = PBReaderReadData();
            v15 = 24;
            break;
          default:
            goto LABEL_45;
        }

        v23 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_56:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100028B08(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
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
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
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
      if ((v12 >> 3) == 1)
      {
        v21 = PBReaderReadData();
        v22 = 16;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 3)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              v27 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v27 & 0x7F) << v14;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_37;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_37:
            *(a1 + 24) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_38;
        }

        v21 = PBReaderReadData();
        v22 = 8;
      }

      v23 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000291FC()
{
  if (qword_100073840 != -1)
  {
    sub_100040C80();
  }

  return qword_100073848;
}

uint64_t sub_100029270()
{
  if (qword_100073850 != -1)
  {
    sub_100040C94();
  }

  return qword_100073858;
}

BOOL sub_1000292E0(CFTypeRef cf1)
{
  if (qword_100073850 != -1)
  {
    sub_100040C94();
  }

  return CFEqual(cf1, qword_100073858) != 0;
}

uint64_t sub_100029330()
{
  if (qword_100073860 != -1)
  {
    sub_100040CA8();
  }

  return qword_100073868;
}

BOOL sub_1000293A4(CFTypeRef cf1)
{
  if (qword_100073860 != -1)
  {
    sub_100040CA8();
  }

  return CFEqual(cf1, qword_100073868) != 0;
}

CFDataRef sub_1000293F4(unsigned int a1)
{
  *bytes = 0x104B57A5353A5AA7;
  v3 = -1803342146;
  v4 = bswap32(a1);
  return CFDataCreate(0, bytes, 16);
}

CFDataRef sub_10002946C(unsigned int a1)
{
  *bytes = 0x114EC8A39FAB1A82;
  v3 = -397635414;
  v4 = bswap32(a1);
  return CFDataCreate(0, bytes, 16);
}

CFDataRef sub_1000294E4(unsigned int a1)
{
  *bytes = 0x9A460A992EBEC436;
  v3 = -1542878804;
  v4 = bswap32(a1);
  return CFDataCreate(0, bytes, 16);
}

uint64_t sub_10002955C(const __CFData *a1, _DWORD *a2)
{
  if (CFDataGetLength(a1) != 16)
  {
    return 0;
  }

  BytePtr = CFDataGetBytePtr(a1);
  v5 = (*BytePtr ^ 0x9A460A992EBEC436 | *(BytePtr + 2) ^ 0xA40989ACLL) == 0;
  if (a2 && !(*BytePtr ^ 0x9A460A992EBEC436 | *(BytePtr + 2) ^ 0xA40989ACLL))
  {
    *a2 = bswap32(*(BytePtr + 3));
    return 1;
  }

  return v5;
}

const __CFData *sub_1000295F0(const __CFData *result)
{
  if (result)
  {
    v1 = result;
    if (CFDataGetLength(result) != 16)
    {
      return 0;
    }

    BytePtr = CFDataGetBytePtr(v1);
    if (*BytePtr == 0xAC4C81CC5CAE23F6 && *(BytePtr + 1) == 0x1135313F01F0D48ALL)
    {
      return 0;
    }

    if (*BytePtr == 0x104B57A5353A5AA7 && *(BytePtr + 2) == -1803342146)
    {
      return 0;
    }

    return ((*BytePtr != 0x114EC8A39FAB1A82 || *(BytePtr + 2) != -397635414) && (*BytePtr != 0x9A460A992EBEC436 || *(BytePtr + 2) != -1542878804));
  }

  return result;
}

uint64_t sub_1000296E8(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 16 * a2;
  result = *(v2 + 264);
  v4 = *(v2 + 272);
  return result;
}

CFTypeRef *sub_100029700(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 != CFStringGetTypeID())
  {
    return 0;
  }

  if (CFEqual(a1, kSecClassGenericPassword))
  {

    return sub_10001712C();
  }

  if (CFEqual(a1, kSecClassInternetPassword))
  {

    return sub_100017208();
  }

  if (CFEqual(a1, kSecClassCertificate))
  {

    return sub_100017224();
  }

  if (CFEqual(a1, kSecClassKey))
  {

    return sub_100017240();
  }

  if (!CFEqual(a1, kSecClassIdentity))
  {
    return 0;
  }

  return sub_10001725C();
}

void sub_100029840(void *a1, const __CFString *a2, uint64_t a3)
{
  if (CFEqual(*a1, kSecAttrSynchronizable))
  {
    *(a3 + 112) = 1;
    if (CFEqual(a2, kSecAttrSynchronizableAny))
    {
      return;
    }
  }

  v6 = *(a1 + 2);
  if (v6 > 6)
  {
    if (v6 <= 13)
    {
      if ((v6 - 11) < 2)
      {
LABEL_22:
        v7 = sub_1000016E8(a2);
        goto LABEL_24;
      }

      if (v6 == 7)
      {
        v7 = sub_100001678(a2);
        goto LABEL_24;
      }

LABEL_34:
      SecError(-50, (a3 + 40), @"attribute %@: value: %@ failed to convert", *a1, a2);
      return;
    }

    if (v6 == 14)
    {
LABEL_20:
      v7 = sub_100001350(a2);
      goto LABEL_24;
    }

    if (v6 != 15)
    {
      if (v6 == 16)
      {
        v7 = sub_1000014F4(a2);
        goto LABEL_24;
      }

      goto LABEL_34;
    }

LABEL_19:
    v7 = sub_1000015D0(a2);
    goto LABEL_24;
  }

  if (v6 > 2)
  {
    if ((v6 - 4) < 3)
    {
      v7 = sub_1000017D8(a2);
      goto LABEL_24;
    }

    if (v6 == 3)
    {
      goto LABEL_22;
    }

    goto LABEL_34;
  }

  if (!v6)
  {
    goto LABEL_19;
  }

  if (v6 != 1)
  {
    if (v6 != 2)
    {
      goto LABEL_34;
    }

    goto LABEL_20;
  }

  v7 = sub_100001414(a2);
LABEL_24:
  Mutable = v7;
  if (!v7)
  {
    goto LABEL_34;
  }

  v9 = *(a3 + 8);
  if (v9 && *(a1 + 2) != 7)
  {
    CFDictionarySetValue(v9, *a1, Mutable);
  }

  if ((a1[2] & 8) != 0)
  {
    v10 = sub_100001414(Mutable);
    CFRelease(Mutable);
    if (!v10)
    {
      SecError(-26276, (a3 + 40), @"failed to get attribute %@ data", *a1);
      return;
    }

    Mutable = CFDataCreateMutable(0, 20);
    CFDataSetLength(Mutable, 20);
    CFDataGetBytePtr(v10);
    CFDataGetLength(v10);
    CFDataGetMutableBytePtr(Mutable);
    CCDigest();
    CFRelease(v10);
  }

  if (*(a1 + 2) == 15)
  {
    if (!Mutable)
    {
      return;
    }

    goto LABEL_38;
  }

  v11 = *(a3 + 32);
  if (v11 + 1 < *(a3 + 256))
  {
    v12 = *a1;
    *(a3 + 32) = v11 + 1;
    v13 = a3 + 16 * v11;
    *(v13 + 264) = v12;
    *(v13 + 272) = Mutable;
    return;
  }

  SecError(-26276, (a3 + 40), @"q_pairs overflow");
  if (Mutable)
  {
LABEL_38:

    CFRelease(Mutable);
  }
}

void sub_100029AD0(const void *a1, const __CFBoolean *a2, uint64_t a3)
{
  if (CFEqual(a1, kSecAttrDeriveSyncIDFromItemAttributes))
  {
    *(a3 + 155) = CFBooleanGetValue(a2) != 0;
  }

  else if (SecKeychainIsStaticPersistentRefsEnabled() && CFEqual(a1, @"persistref"))
  {
    if (a2)
    {
      CFRetain(a2);
    }

    *(a3 + 80) = a2;
  }

  else
  {
    v6 = sub_100009044(*a3, a1, (a3 + 40));
    if (v6)
    {
      v7 = v6;
      sub_100029840(v6, a2, a3);
      v8 = *(v7 + 2);
      if (v8 == 15)
      {
        if (CFDictionaryGetValue(*(a3 + 8), *v7))
        {
          v9 = SecAccessControlCreateFromData();
          if (v9)
          {
            v10 = v9;
            sub_100029C50(a3, v9);
            CFRelease(v10);
          }
        }

        v8 = *(v7 + 2);
      }

      if (v8 == 14)
      {
        v11 = SecAccessControlCreate();
        if (v11)
        {
          v12 = v11;
          if (CFDictionaryGetValue(*(a3 + 8), *v7) && SecAccessControlSetProtection())
          {
            sub_100029C50(a3, v12);
          }

          CFRelease(v12);
        }
      }
    }
  }
}

void sub_100029C50(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 136);
  if (v3)
  {
    if (CFEqual(v3, cf))
    {
      return;
    }

    v7 = @"conflicting kSecAccess and kSecAccessControl attributes";
    goto LABEL_10;
  }

  *(a1 + 136) = CFRetain(cf);
  Protection = SecAccessControlGetProtection();
  if (!Protection)
  {
    v7 = @"kSecAccessControl missing protection";
LABEL_10:

    SecError(-50, (a1 + 40), v7);
    return;
  }

  v5 = Protection;
  v6 = *(a1 + 8);

  CFDictionarySetValue(v6, kSecAttrAccessible, v5);
}

void sub_100029CFC(const void *a1, const __CFString *a2, uint64_t a3)
{
  v5 = sub_100009044(*a3, a1, (a3 + 40));
  if (!v5)
  {
    return;
  }

  v6 = v5;
  Value = CFDictionaryGetValue(*(a3 + 8), *v5);
  if (!Value)
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (!Mutable)
    {
      return;
    }

    goto LABEL_9;
  }

  v8 = Value;
  v9 = CFGetTypeID(Value);
  if (v9 == CFArrayGetTypeID())
  {
    Mutable = CFRetain(v8);
  }

  else
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    CFArrayAppendValue(Mutable, v8);
  }

  CFDictionaryRemoveValue(*(a3 + 8), *v6);
  if (Mutable)
  {
LABEL_9:
    sub_100029840(v6, a2, a3);
    v11 = CFDictionaryGetValue(*(a3 + 8), *v6);
    CFArrayAppendValue(Mutable, v11);
    CFDictionarySetValue(*(a3 + 8), *v6, Mutable);

    CFRelease(Mutable);
  }
}

void sub_100029E38(CFTypeRef **a1, CFTypeRef cf1)
{
  if (!a1[17])
  {
    if (CFEqual(cf1, @"com.apple.apsd"))
    {
      v4 = &kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate;
    }

    else
    {
      v5 = *a1;
      v6 = sub_100017224();
      v4 = &kSecAttrAccessibleWhenUnlocked;
      if (v5 == v6)
      {
        v4 = &kSecAttrAccessibleAlwaysPrivate;
      }
    }

    v7 = *v4;

    sub_100029AD0(kSecAttrAccessible, v7, a1);
  }
}

uint64_t sub_100029ECC(uint64_t a1, CFErrorRef *a2)
{
  v3 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (a2 && v3)
  {
    if (*a2)
    {
      if (CFErrorGetCode(*a2) != -25330)
      {
        goto LABEL_9;
      }

      v4 = *a2;
      if (*a2)
      {
        *a2 = 0;
        CFRelease(v4);
LABEL_9:
        if (*a2)
        {
          goto LABEL_10;
        }
      }
    }

    result = 0;
    *a2 = v3;
    return result;
  }

  if (v3)
  {
    if (!a2)
    {
LABEL_10:
      CFRelease(v3);
      return 0;
    }

    goto LABEL_9;
  }

  return 1;
}

uint64_t sub_100029F58(const void **a1, CFErrorRef *a2)
{
  v3 = sub_100029ECC(a1, a2);
  v4 = a1[4];
  if (v4 >= 1)
  {
    v5 = a1 + 34;
    do
    {
      v7 = *v5;
      v5 += 2;
      v6 = v7;
      if (v7)
      {
        CFRelease(v6);
      }

      --v4;
    }

    while (v4);
  }

  v8 = a1[1];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[16];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[21];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = a1[22];
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = a1[17];
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = a1[18];
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = a1[23];
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = a1[26];
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = a1[27];
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = a1[29];
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = a1[30];
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = a1[10];
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = a1[31];
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = a1[28];
  if (v21)
  {
    CFRelease(v21);
  }

  free(a1);
  return v3;
}

uint64_t sub_10002A060(uint64_t a1, int a2, CFErrorRef *a3)
{
  if (a2 && !*(a1 + 40))
  {
    if ((*(a1 + 114) & 1) != 0 || *(a1 + 113) == 1 && !sub_1000292E0(*(a1 + 128)))
    {
      sub_100018160();
    }

    if (*(a1 + 115) == 1)
    {
      sub_1000180F0();
    }
  }

  return sub_100029F58(a1, a3) & a2;
}

void *sub_10002A0E4(uint64_t a1, const void *a2, CFDictionaryRef theDict, uint64_t a4, __CFString **a5)
{
  if (!a1)
  {
    if (a5 && !*a5)
    {
      SecError(-50, a5, @"Missing class");
    }

    return 0;
  }

  v8 = a2;
  if (!a2)
  {
    if (qword_100073850 != -1)
    {
      sub_100040C94();
    }

    v8 = qword_100073858;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

  v10 = 0;
    ;
  }

  if (!v10)
  {
LABEL_10:
    v12 = sub_100017224();
    if (v12[2])
    {
      v13 = 0;
      do
      {
        v14 = v13 + 1;
      }

      while (v12[v13++ + 3]);
    }

    else
    {
      v14 = 0;
    }

    v16 = sub_100017240();
    if (v16[2])
    {
      v17 = 0;
      do
      {
        v18 = v17 + 1;
      }

      while (v16[v17++ + 3]);
    }

    else
    {
      v18 = 0;
    }

    v10 = v18 + v14;
  }

  if (theDict)
  {
    v10 += CFDictionaryGetCount(theDict);
    v20 = *(a1 + 16);
    if (v20)
    {
      v21 = (a1 + 24);
      do
      {
        v10 -= CFDictionaryContainsKey(theDict, *v20) != 0;
        v22 = *v21++;
        v20 = v22;
      }

      while (v22);
    }
  }

  if (v10 >= 129)
  {
    if (a5 && !*a5)
    {
      v23 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v28 = 134218240;
        v29 = v10;
        v30 = 1024;
        v31 = 128;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "key_count: %ld, QUERY_KEY_LIMIT: %d", &v28, 0x12u);
      }

      SecError(-50, a5, @"Past query key limit");
    }

    return 0;
  }

  v26 = malloc_type_calloc(1uLL, 16 * v10 + 264, 0x10E0040DE1CE4F2uLL);
  if (!v26)
  {
    if (a5 && !*a5)
    {
      SecError(-108, a5, @"Out of memory");
    }

    return 0;
  }

  v24 = v26;
  v26[32] = v10;
  v26[16] = CFRetain(v8);
  *(v24 + 155) = 0;
  *(v24 + 30) = dword_1000739E8;
  *v24 = a1;
  v24[2] = v10;
  v24[3] = v10;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v24[1] = Mutable;
  if (a4)
  {
    if (*(a4 + 44) == 1)
    {
      CFDictionaryAddValue(Mutable, @"clip", kCFBooleanTrue);
    }

    *(v24 + 116) = *(a4 + 57) ^ 1;
  }

  return v24;
}

uint64_t sub_10002A3B0(void *context, CFDictionaryRef theDict, CFErrorRef *a3)
{
  CFDictionaryApplyFunction(theDict, sub_10002A408, context);

  return sub_100029ECC(context, a3);
}

void sub_10002A408(CFTypeRef cf, const void *a2, uint64_t a3)
{
  v3 = (a3 + 40);
  if (!*(a3 + 40))
  {
    if (cf && (v7 = CFGetTypeID(cf), v7 == CFStringGetTypeID()))
    {
      if (a2)
      {
        if (CFEqual(cf, @"musr"))
        {
          v8 = secLogObjForScope("item");
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "update_applier: refusing to update musr", buf, 2u);
          }
        }

        else if (CFEqual(cf, kSecValueData))
        {

          sub_10002A900(a2, a3);
        }

        else
        {

          sub_100029AD0(cf, a2, a3);
        }
      }

      else
      {
        SecError(-50, v3, @"update_applier: key %@ has NULL value", cf);
      }
    }

    else
    {
      SecError(-50, v3, @"update_applier: unknown key type %@", cf);
    }
  }
}

uint64_t sub_10002A574(const __CFDictionary *a1, const void *a2, uint64_t a3, uint64_t a4, __CFString **a5)
{
  Value = CFDictionaryGetValue(a1, kSecClass);
  if (Value && (v11 = Value, v12 = CFGetTypeID(Value), v12 == CFStringGetTypeID()))
  {
    v15 = sub_100029700(v11);
    if (v15)
    {
      goto LABEL_10;
    }

    SecError(-25306, a5, @"can't find class named: %@", v11);
  }

  else
  {
    v13 = CFDictionaryGetValue(a1, kSecValuePersistentRef);
    if (v13)
    {
      v14 = CFGetTypeID(v13);
      if (v14 == CFDataGetTypeID())
      {
        _SecItemParsePersistentRef();
      }
    }

    SecError(-50, a5, @"query missing class name");
  }

  v15 = 0;
LABEL_10:
  v16 = sub_10002A0E4(v15, a2, a1, a4, a5);
  v17 = v16;
  if (v16)
  {
    v16[13] = a3;
    CFDictionaryApplyFunction(a1, sub_10002A9A8, v16);
    if (sub_100029ECC(v17, a5))
    {
      if ((*(v17 + 112) & 1) == 0 && !*(v17 + 72) && SecKeychainIsStaticPersistentRefsEnabled() && !*(v17 + 80) && !*(v17 + 240))
      {
        sub_100029AD0(kSecAttrSynchronizable, kCFBooleanFalse, v17);
      }
    }

    else
    {
      sub_100029F58(v17, a5);
      return 0;
    }
  }

  return v17;
}

void sub_10002A738(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 184);
  if (v3 != cf)
  {
    if (!cf || (CFRetain(cf), (v3 = *(a1 + 184)) != 0))
    {
      CFRelease(v3);
    }

    *(a1 + 184) = cf;
  }
}

void sub_10002A784(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 208);
  if (v3 != cf)
  {
    if (!cf || (CFRetain(cf), (v3 = *(a1 + 208)) != 0))
    {
      CFRelease(v3);
    }

    *(a1 + 208) = cf;
  }
}

void sub_10002A7D0(uint64_t a1, CFTypeRef cf)
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

void sub_10002A81C(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 232);
  if (v3 != cf)
  {
    if (!cf || (CFRetain(cf), (v3 = *(a1 + 232)) != 0))
    {
      CFRelease(v3);
    }

    *(a1 + 232) = cf;
  }
}

void sub_10002A868(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 248);
  if (v3 != cf)
  {
    if (!cf || (CFRetain(cf), (v3 = *(a1 + 248)) != 0))
    {
      CFRelease(v3);
    }

    *(a1 + 248) = cf;
  }
}

void sub_10002A8B4(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 224);
  if (v3 != cf)
  {
    if (!cf || (CFRetain(cf), (v3 = *(a1 + 224)) != 0))
    {
      CFRelease(v3);
    }

    *(a1 + 224) = cf;
  }
}

void sub_10002A900(CFTypeRef cf, uint64_t a2)
{
  if (cf && (v4 = CFGetTypeID(cf), v4 == CFDataGetTypeID()))
  {
    *(a2 + 56) = cf;
    v5 = *(a2 + 8);
    if (v5)
    {

      CFDictionarySetValue(v5, kSecValueData, cf);
    }
  }

  else
  {
    SecError(-50, (a2 + 40), @"set_data: value %@ is not type data", cf);
  }
}

void sub_10002A9A8(const __CFString *cf, const __CFBoolean *a2, uint64_t a3)
{
  v3 = (a3 + 40);
  if (*(a3 + 40))
  {
    return;
  }

  if (!cf)
  {

    SecError(-50, v3, @"applier: NULL key");
    return;
  }

  if (!a2)
  {
    SecError(-50, v3, @"applier: key %@ has NULL value", cf);
    return;
  }

  v7 = CFGetTypeID(cf);
  if (v7 != CFStringGetTypeID())
  {
    if (v7 != CFNumberGetTypeID())
    {
      SecError(-50, v3, @"applier: key %@ neither string nor number", cf);
      return;
    }

    goto LABEL_20;
  }

  Length = CFStringGetLength(cf);
  if (Length == 4)
  {
LABEL_20:

    sub_100029AD0(cf, a2, a3);
    return;
  }

  if (Length < 2)
  {
    SecError(-50, v3, @"applier: key %@ invalid length", cf);
    return;
  }

  CharacterAtIndex = CFStringGetCharacterAtIndex(cf, 0);
  if (CharacterAtIndex > 113)
  {
    switch(CharacterAtIndex)
    {
      case 'r':

        sub_10002B1F0(cf, a2, a3);
        break;
      case 'u':

        sub_10002B328(cf, a2, a3);
        break;
      case 'v':

        sub_10002B64C(cf, a2, a3);
        break;
      default:
        goto LABEL_37;
    }
  }

  else
  {
    if (CharacterAtIndex != 99)
    {
      if (CharacterAtIndex == 102)
      {
        return;
      }

      if (CharacterAtIndex == 109)
      {

        sub_10002ACD0(cf, a2, a3);
        return;
      }

LABEL_37:
      SecError(-50, v3, @"applier: key %@ invalid", cf);
      return;
    }

    sub_10002AC38(cf, a2, a3);
  }
}

void *sub_10002AC38(const void *a1, const void *a2, uint64_t a3)
{
  if (!CFEqual(a1, kSecClass))
  {
    return SecError(-50, (a3 + 40), @"add_class: key %@ is not %@", a1, kSecClass);
  }

  return sub_10002B874(a3, a2, (a3 + 40));
}

void sub_10002ACD0(CFTypeRef cf2, const void *a2, uint64_t a3)
{
  v6 = *(a3 + 16) - 1;
  *(a3 + 16) = v6;
  v7 = a3 + 16 * v6;
  *(v7 + 264) = cf2;
  *(v7 + 272) = a2;
  if (!CFEqual(kSecMatchLimit, cf2))
  {
    if (CFEqual(kSecMatchIssuers, cf2))
    {
      v9 = CFGetTypeID(a2);
      if (v9 == CFArrayGetTypeID())
      {
        Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        if (!Mutable)
        {
          return;
        }

        v11 = Mutable;
        Count = CFArrayGetCount(a2);
        if (Count >= 1)
        {
          v13 = Count;
          for (i = 0; i != v13; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
            TypeID = CFDataGetTypeID();
            if (TypeID == CFGetTypeID(ValueAtIndex))
            {
              v17 = SecDistinguishedNameCopyNormalizedContent();
              if (v17)
              {
                v18 = v17;
                CFArrayAppendValue(v11, v17);
                CFRelease(v18);
              }
            }
          }
        }

        if (CFArrayGetCount(v11) >= 1)
        {
          *(a3 + 176) = v11;
          return;
        }

        v29 = v11;
        goto LABEL_46;
      }
    }

    if (CFEqual(kSecMatchPolicy, cf2))
    {
      v20 = CFGetTypeID(a2);
      if (v20 == CFArrayGetTypeID())
      {
        v21 = _CFXPCCreateXPCObjectFromCFObject();
        if (v21)
        {
          v22 = v21;
          v23 = SecPolicyXPCArrayCopyArray();
          xpc_release(v22);
          if (!v23)
          {
            return;
          }

          if (CFArrayGetCount(v23) == 1)
          {
            v24 = CFArrayGetValueAtIndex(v23, 0);
            v25 = CFGetTypeID(v24);
            if (v25 == SecPolicyGetTypeID())
            {
              v26 = CFArrayGetValueAtIndex(v23, 0);
              sub_10002A784(a3, v26);
LABEL_31:
              v29 = v23;
LABEL_46:

              CFRelease(v29);
              return;
            }
          }

          CFRelease(v23);
          v30 = @"unsupported array of policies";
        }

        else
        {
          v30 = @"unsupported kSecMatchPolicy object in query";
        }
      }

      else
      {
        v30 = @"unsupported value for kSecMatchPolicy attribute";
      }
    }

    else if (CFEqual(kSecMatchValidOnDate, cf2))
    {
      v27 = CFGetTypeID(a2);
      if (v27 == CFNullGetTypeID())
      {
        Current = CFAbsoluteTimeGetCurrent();
        v23 = CFDateCreate(kCFAllocatorDefault, Current);
        sub_10002A7D0(a3, v23);
        goto LABEL_31;
      }

      v32 = CFGetTypeID(a2);
      if (v32 == CFDateGetTypeID())
      {

        sub_10002A7D0(a3, a2);
        return;
      }

      v30 = @"unsupported value for kSecMatchValidOnDate attribute";
    }

    else if (CFEqual(kSecMatchTrustedOnly, cf2))
    {
      v31 = CFGetTypeID(a2);
      if (v31 == CFBooleanGetTypeID())
      {

        sub_10002A81C(a3, a2);
        return;
      }

      v30 = @"unsupported value for kSecMatchTrustedOnly attribute";
    }

    else if (CFEqual(kSecMatchHostOrSubdomainOfHost, cf2))
    {
      v33 = CFGetTypeID(a2);
      if (v33 == CFStringGetTypeID())
      {

        sub_10002A868(a3, a2);
        return;
      }

      v30 = @"unsupported value for kSecMatchHostOrSubdomainOfHost attribute";
    }

    else
    {
      if (!CFEqual(kSecMatchEmailAddressIfPresent, cf2))
      {
        return;
      }

      v34 = CFGetTypeID(a2);
      if (v34 == CFStringGetTypeID())
      {

        sub_10002A8B4(a3, a2);
        return;
      }

      v30 = @"unsupported value for kSecMatchEmailAddressIfPresent attribute";
    }

    SecError(-50, (a3 + 40), v30);
    return;
  }

  v8 = CFGetTypeID(a2);
  if (v8 != CFNumberGetTypeID())
  {
    if (CFEqual(kSecMatchLimitAll, a2))
    {
      v19 = -1;
    }

    else
    {
      if (!CFEqual(kSecMatchLimitOne, a2))
      {
        SecError(-50, (a3 + 40), @"unsupported match limit %@", a2);
        return;
      }

      v19 = 1;
    }

    *(a3 + 104) = v19;
    return;
  }

  if (!CFNumberGetValue(a2, kCFNumberCFIndexType, (a3 + 104)))
  {
    SecError(-50, (a3 + 40), @"failed to convert match limit %@ to CFIndex", a2);
  }
}

uint64_t sub_10002B1F0(const void *a1, CFTypeRef cf, uint64_t a3)
{
  v6 = CFGetTypeID(cf);
  if (v6 != CFBooleanGetTypeID())
  {
    return SecError(-50, (a3 + 40), @"add_return: value %@ is not CFBoolean", cf);
  }

  v7 = CFEqual(cf, kCFBooleanTrue);
  result = CFEqual(a1, kSecReturnData);
  if (result)
  {
    v9 = 1;
  }

  else
  {
    result = CFEqual(a1, kSecReturnAttributes);
    if (result)
    {
      v9 = 2;
    }

    else
    {
      result = CFEqual(a1, kSecReturnRef);
      if (result)
      {
        v9 = 4;
      }

      else
      {
        result = CFEqual(a1, kSecReturnPersistentRef);
        if (!result)
        {
          return SecError(-50, (a3 + 40), @"add_return: unknown key %@", a1);
        }

        v9 = 8;
      }
    }
  }

  v10 = *(a3 + 48);
  if ((v10 & v9) != 0 && !v7)
  {
    v11 = v10 ^ v9;
LABEL_17:
    *(a3 + 48) = v11;
    return result;
  }

  if ((v10 & v9) == 0 && v7)
  {
    v11 = v10 | v9;
    goto LABEL_17;
  }

  return result;
}

void sub_10002B328(const void *a1, const __CFString *a2, uint64_t a3)
{
  if (CFEqual(a1, @"u_ItemList"))
  {
    *(a3 + 88) = a2;
    return;
  }

  if (!CFEqual(a1, kSecUseTombstones))
  {
    if (CFEqual(a1, kSecUseCredentialReference))
    {
      if (a2 && (v7 = CFGetTypeID(a2), v7 == CFDataGetTypeID()))
      {
        if (*(a3 + 144) != a2)
        {
          CFRetain(a2);
          v8 = *(a3 + 144);
          if (v8)
          {
            CFRelease(v8);
          }

          *(a3 + 144) = a2;
        }
      }

      else
      {
        SecError(-50, (a3 + 40), @"add_use: value %@ for key %@ is not CFData", a2, a1);
      }

      return;
    }

    if (CFEqual(a1, kSecUseAuthenticationUI))
    {
      if (a2 && (v13 = CFGetTypeID(a2), v13 == CFStringGetTypeID()))
      {
        if (kSecUseAuthenticationUISkip)
        {
          v14 = CFEqual(kSecUseAuthenticationUISkip, a2) != 0;
        }

        else
        {
          v14 = 0;
        }

        *(a3 + 152) = v14;
      }

      else
      {
        SecError(-50, (a3 + 40), @"add_use: value %@ for key %@ is not CFString", a2, a1);
      }

      return;
    }

    v15 = kSecUseSystemKeychain;
    if (CFEqual(a1, kSecUseSystemKeychain))
    {
      *(a3 + 120) = dword_1000739E8;
      if (*(a3 + 192) == 2)
      {
        v19 = kSecUseSystemKeychainAlways;
        v20 = v15;
LABEL_32:
        SecError(-50, (a3 + 40), @"add_use: can't specify both %@ and %@", v19, v20);
        return;
      }

      v17 = 1;
    }

    else
    {
      if (!sub_100016F58() || (v16 = kSecUseSystemKeychainAlways, !CFEqual(a1, kSecUseSystemKeychainAlways)))
      {
        if (CFEqual(a1, kSecUseSyncBubbleKeychain))
        {
          v18 = CFGetTypeID(a2);
          if (v18 == CFNumberGetTypeID() && CFNumberGetValue(a2, kCFNumberSInt32Type, (a3 + 196)) && *(a3 + 196) >= 1)
          {
            *(a3 + 120) = dword_1000739E8;
          }

          else
          {
            SecError(-50, (a3 + 40), @"add_use: value %@ for key %@ is not valid uid", a2, a1);
          }
        }

        else
        {
          SecError(-50, (a3 + 40), @"add_use: unknown key %@", a1);
        }

        return;
      }

      if (*(a3 + 192) == 1)
      {
        v19 = v15;
        v20 = v16;
        goto LABEL_32;
      }

      *(a3 + 120) = dword_1000739E8;
      v17 = 2;
    }

    *(a3 + 192) = v17;
    return;
  }

  v6 = CFGetTypeID(a2);
  if (v6 == CFBooleanGetTypeID())
  {
    *(a3 + 96) = a2;
    return;
  }

  v9 = CFGetTypeID(a2);
  if (v9 == CFNumberGetTypeID())
  {
    Value = CFBooleanGetValue(a2);
  }

  else
  {
    v11 = CFGetTypeID(a2);
    if (v11 != CFStringGetTypeID())
    {
      SecError(-50, (a3 + 40), @"add_use: value %@ for key %@ is neither CFBoolean nor CFNumber", a2, a1);
      return;
    }

    Value = CFStringGetIntValue(a2);
  }

  v12 = &kCFBooleanTrue;
  if (!Value)
  {
    v12 = &kCFBooleanFalse;
  }

  *(a3 + 96) = *v12;
}

void sub_10002B64C(const void *a1, const void *a2, uint64_t a3)
{
  if (CFEqual(a1, kSecValueData))
  {

    sub_10002A900(a2, a3);
  }

  else if (CFEqual(a1, kSecValuePersistentRef))
  {
    if (_SecItemParsePersistentRef())
    {
      sub_10002B874(a3, 0, (a3 + 40));
      SecKeychainIsStaticPersistentRefsEnabled();
    }

    else
    {
      SecError(-50, (a3 + 40), @"add_value: value %@ is not a valid persitent ref", a2);
    }
  }

  else
  {
    SecError(-50, (a3 + 40), @"add_value: unknown key %@", a1);
  }
}

void *sub_10002B874(void *result, CFTypeRef cf, __CFString **a3)
{
  if (cf && (v5 = result, v6 = CFGetTypeID(cf), result = CFStringGetTypeID(), v6 == result) && (result = sub_100029700(cf)) != 0 && (!*v5 || *v5 == result))
  {
    *v5 = result;
  }

  else if (a3 && !*a3)
  {
    if (cf)
    {
      v7 = -25306;
    }

    else
    {
      v7 = -50;
    }

    return SecError(v7, a3, @"can find class named: %@", cf);
  }

  return result;
}

const __CFString *sub_10002B91C(unsigned int a1)
{
  if (a1 > 0x88)
  {
    return @"Unknown xpc operation";
  }

  else
  {
    return *(&off_100063520 + a1);
  }
}

size_t sub_10002B94C(void *a1, const char *a2, const __CFString *a3, uint64_t a4, __CFString **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    return SecError(-50, a5, @"object for key %s is NULL", a2);
  }

  result = der_sizeof_plist(a3, a5, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    v14 = result;
    v15 = malloc_type_malloc(result, 0xCB2622D6uLL);
    v16 = &v15[v14];
    v20 = der_encode_plist_repair(a3, a5, a4, v15, v16, v17, v18, v19);
    if (v20 && v16 > v20)
    {
      xpc_dictionary_set_data(a1, a2, v20, v16 - v20);
      free(v15);
      return 1;
    }

    else
    {
      free(v15);
      return 0;
    }
  }

  return result;
}

size_t sub_10002BA34(void *a1, const char *a2, const __CFString *a3, __CFString **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    return sub_10002B94C(a1, a2, a3, 0, a4, a6, a7, a8);
  }

  else
  {
    return 1;
  }
}

BOOL sub_10002BA4C(void *a1, const char *a2, CFDataRef theData, __CFString **a4)
{
  if (!theData)
  {
    return SecError(-50, a4, @"data for key %s is NULL", a2);
  }

  if (CFDataGetLength(theData) < 0)
  {
    return SecError(-50, a4, @"no data for key %s", a2);
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  xpc_dictionary_set_data(a1, a2, BytePtr, Length);
  return 1;
}

BOOL sub_10002BB0C(uint64_t a1, uint64_t a2, const __CFString *a3, __CFString **a4)
{
  if (!a3)
  {
    return SecError(-50, a4, @"string for key %s is NULL", a2);
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_10002BBDC;
  v6[3] = &unk_100063500;
  v6[4] = &v7;
  v6[5] = a1;
  v6[6] = a2;
  v6[7] = a4;
  CFStringPerformWithCString(a3, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_10002BBDC(uint64_t a1, char *string)
{
  v3 = *(a1 + 48);
  if (string)
  {
    v4 = *(a1 + 40);

    xpc_dictionary_set_string(v4, v3, string);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = SecError(-50, *(a1 + 56), @"failed to convert string for key %s to utf8", *(a1 + 48));
  }
}

uint64_t sub_10002BC5C(void *a1, const char *a2, __CFString **a3)
{
  v5 = xpc_dictionary_dup_fd(a1, a2);
  if ((v5 & 0x80000000) != 0)
  {
    SecError(-50, a3, @"missing fd for key %s", a2);
  }

  return v5;
}

const void *sub_10002BCB8(xpc_object_t xdict, char *key, __CFString **a3)
{
  v5 = sub_10002BF14(1, xdict, key, a3);
  v6 = v5;
  if (v5)
  {
    v7 = CFGetTypeID(v5);
    if (v7 != CFArrayGetTypeID())
    {
      v8 = CFCopyTypeIDDescription(v7);
      SecError(-50, a3, @"object for key %s not array but %@", key, v8);
      if (v8)
      {
        CFRelease(v8);
      }

      CFRelease(v6);
      return 0;
    }
  }

  return v6;
}

CFDataRef sub_10002BD60(void *a1, const char *a2, __CFString **a3)
{
  length = 0;
  data = xpc_dictionary_get_data(a1, a2, &length);
  if (data)
  {
    if ((length & 0x8000000000000000) != 0)
    {
      SecError(-50, a3, @"too large data for key %s", a2);
    }

    else
    {
      result = CFDataCreate(kCFAllocatorDefault, data, length);
      if (result)
      {
        return result;
      }

      SecError(-50, a3, @"failed to create data for key %s", a2);
    }
  }

  else
  {
    SecError(-50, a3, @"no data for key %s", a2);
  }

  return 0;
}

BOOL sub_10002BDF4(void *a1, const char *a2, void *a3, __CFString **a4)
{
  length = 0;
  data = xpc_dictionary_get_data(a1, a2, &length);
  if (data)
  {
    data = sub_10002BD60(a1, a2, a4);
    v9 = data != 0;
  }

  else
  {
    v9 = 1;
  }

  *a3 = data;
  return v9;
}

const void *sub_10002BE7C(int a1, void *a2, char *a3, __CFString **a4)
{
  v6 = sub_10002BF14(a1, a2, a3, a4);
  v7 = v6;
  if (v6)
  {
    v8 = CFGetTypeID(v6);
    if (v8 != CFDictionaryGetTypeID())
    {
      v9 = CFCopyTypeIDDescription(v8);
      SecError(-50, a4, @"object for key %s not dictionary but %@", a3, v9);
      if (v9)
      {
        CFRelease(v9);
      }

      CFRelease(v7);
      return 0;
    }
  }

  return v7;
}

CFTypeRef sub_10002BF14(int a1, xpc_object_t xdict, char *key, __CFString **a4)
{
  length = 0;
  cf = 0;
  data = xpc_dictionary_get_data(xdict, key, &length);
  if (data)
  {
    v8 = data;
    v9 = data + length;
    v10 = SecCFAllocatorZeroize();
    if (der_decode_plist(v10, &cf, a4, v8, v9, v11, v12, v13) != v9)
    {
      v14 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"trailing garbage after der decoded object for key %s", key);
      SecError(-50, a4, @"%@", v14);
      if (a4)
      {
        v15 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *a4;
          *buf = 138412290;
          v22 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "xpc: %@", buf, 0xCu);
        }
      }

      __security_simulatecrash(v14, 1405091842);
      if (v14)
      {
        CFRelease(v14);
      }

      v17 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v17);
      }
    }

    if (a1)
    {
      cc_clear();
    }

    return cf;
  }

  else
  {
    SecError(-50, a4, @"no object for key %s", key);
    return 0;
  }
}

CFStringRef sub_10002C0B8(void *a1, const char *a2, __CFString **a3)
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

    SecError(-108, a3, @"object for key %s failed to convert %s to CFString", a2, v6);
  }

  else
  {
    SecError(-50, a3, @"object for key %s not string", a2);
  }

  return 0;
}

void sub_10002C6BC()
{
  if (qword_100073878 != -1)
  {
    sub_100040CBC();
  }
}

void sub_10002C6E8(id a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = objc_alloc_init(SecuritydXPCServerListener);
  v3 = qword_100073870;
  qword_100073870 = v2;

  objc_autoreleasePoolPop(v1);
}

id sub_10002C73C()
{
  v0 = SecSecurityClientGet();
  v1 = [LocalSecuritydXPCServer alloc];

  return [(LocalSecuritydXPCServer *)v1 initWithSecurityClient:v0 fakeEntitlements:&__NSDictionary0__struct];
}

void sub_10002D668(id a1)
{
  qword_100073880 = [[_SFAESKeySpecifier alloc] initWithBitSize:2];

  _objc_release_x1();
}

void sub_10002D74C(uint64_t a1)
{
  v2 = [_SFAuthenticatedEncryptionOperation alloc];
  v5 = [*(a1 + 32) keySpecifier];
  v3 = [v2 initWithKeySpecifier:v5];
  v4 = qword_100073890;
  qword_100073890 = v3;
}

void sub_10002D864(uint64_t a1)
{
  v2 = [_SFAuthenticatedEncryptionOperation alloc];
  v5 = [*(a1 + 32) keySpecifier];
  v3 = [v2 initWithKeySpecifier:v5];
  v4 = qword_1000738A0;
  qword_1000738A0 = v3;
}

void *sub_10002DD28(CFDataRef theData)
{
  v1 = CFPropertyListCreateWithDERData(0, theData, 0, 0, 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

id sub_1000300C8(uint64_t a1)
{
  v2 = [*(a1 + 32) lockedStates];
  [v2 removeAllObjects];

  [*(a1 + 32) setKeybag_state:{objc_msgSend(*(a1 + 32), "keybag_state") & 0xFFFFFFFE}];
  [*(a1 + 32) setKeybag_state:{objc_msgSend(*(a1 + 32), "keybag_state")}];
  v3 = *(a1 + 32);
  v4 = [v3 keybag_state] | 4;

  return [v3 setKeybag_state:v4];
}

id sub_1000301DC(uint64_t a1)
{
  v2 = [NSNumber numberWithBool:1];
  v3 = [*(a1 + 32) lockedStates];
  v4 = [NSNumber numberWithInt:1];
  [v3 setObject:v2 forKeyedSubscript:v4];

  v5 = [NSNumber numberWithBool:1];
  v6 = [*(a1 + 32) lockedStates];
  v7 = [NSNumber numberWithInt:6];
  [v6 setObject:v5 forKeyedSubscript:v7];

  v8 = [NSNumber numberWithBool:1];
  v9 = [*(a1 + 32) lockedStates];
  v10 = [NSNumber numberWithInt:9];
  [v9 setObject:v8 forKeyedSubscript:v10];

  v11 = [NSNumber numberWithBool:1];
  v12 = [*(a1 + 32) lockedStates];
  v13 = [NSNumber numberWithInt:12];
  [v12 setObject:v11 forKeyedSubscript:v13];

  v14 = [NSNumber numberWithBool:1];
  v15 = [*(a1 + 32) lockedStates];
  v16 = [NSNumber numberWithInt:3];
  [v15 setObject:v14 forKeyedSubscript:v16];

  v17 = [NSNumber numberWithBool:1];
  v18 = [*(a1 + 32) lockedStates];
  v19 = [NSNumber numberWithInt:7];
  [v18 setObject:v17 forKeyedSubscript:v19];

  v20 = [NSNumber numberWithBool:1];
  v21 = [*(a1 + 32) lockedStates];
  v22 = [NSNumber numberWithInt:10];
  [v21 setObject:v20 forKeyedSubscript:v22];

  [*(a1 + 32) setKeybag_state:{objc_msgSend(*(a1 + 32), "keybag_state") | 1}];
  [*(a1 + 32) setKeybag_state:{objc_msgSend(*(a1 + 32), "keybag_state")}];
  v23 = *(a1 + 32);
  v24 = [v23 keybag_state] & 0xFFFFFFFB;

  return [v23 setKeybag_state:v24];
}

id sub_100030538(uint64_t a1)
{
  v2 = [NSNumber numberWithBool:1];
  v3 = [*(a1 + 32) lockedStates];
  v4 = [NSNumber numberWithInt:1];
  [v3 setObject:v2 forKeyedSubscript:v4];

  v5 = [NSNumber numberWithBool:1];
  v6 = [*(a1 + 32) lockedStates];
  v7 = [NSNumber numberWithInt:6];
  [v6 setObject:v5 forKeyedSubscript:v7];

  v8 = [NSNumber numberWithBool:1];
  v9 = [*(a1 + 32) lockedStates];
  v10 = [NSNumber numberWithInt:9];
  [v9 setObject:v8 forKeyedSubscript:v10];

  v11 = [NSNumber numberWithBool:1];
  v12 = [*(a1 + 32) lockedStates];
  v13 = [NSNumber numberWithInt:12];
  [v12 setObject:v11 forKeyedSubscript:v13];

  [*(a1 + 32) setKeybag_state:{objc_msgSend(*(a1 + 32), "keybag_state") | 1}];
  v14 = *(a1 + 32);
  v15 = [v14 keybag_state];

  return [v14 setKeybag_state:v15];
}

void sub_1000307E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000307F8(uint64_t a1)
{
  v4 = [NSNumber numberWithInt:*(a1 + 48)];
  v2 = [*(a1 + 40) lockedStates];
  v3 = [v2 objectForKeyedSubscript:v4];
  *(*(*(a1 + 32) + 8) + 24) = [v3 BOOLValue];
}

id sub_100030914(uint64_t a1)
{
  v2 = [*(a1 + 32) lockedStates];
  [v2 removeAllObjects];

  v3 = *(a1 + 32);

  return [v3 setKeybag_state:0];
}

void sub_1000309D0(id a1)
{
  qword_1000738B8 = dispatch_queue_create("SecMockAKS", 0);

  _objc_release_x1();
}

void sub_100030A90(id a1)
{
  v1 = getprogname();
  if (!strcmp(v1, "securityd") || !strcmp(v1, "secd") || (os_variant_has_internal_content() & 1) == 0 && (os_variant_uses_ephemeral_storage() & 1) == 0 && (os_variant_allows_internal_security_policies() & 1) == 0)
  {
    abort();
  }
}

uint64_t aks_wrap_key(const void *a1, int a2, uint64_t a3, int a4, char *a5, int *a6, _DWORD *a7)
{
  v14 = 3758097109;
  +[SecMockAKS trapdoor];
  if (!+[SecMockAKS isSEPDown])
  {
    +[SecMockAKS updateOperationsUntilUnlock];
    if ([SecMockAKS isLocked:a3])
    {
      v15 = dword_1000739E8 == a4;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      return 3758097122;
    }

    if (a7)
    {
      *a7 = a3;
      if (+[SecMockAKS useGenerationCount])
      {
        *a7 |= 0x20u;
      }
    }

    if (a2 < 33)
    {
      v16 = *a6;
      if (dword_1000739E8 == a4)
      {
        if (v16 > 127)
        {
LABEL_12:
          *a6 = a2 + 8;
          memcpy(a5, a1, a2);
          v14 = 0;
          *&a5[a2] = -1;
          return v14;
        }
      }

      else if (v16 > 167)
      {
        goto LABEL_12;
      }
    }

    abort();
  }

  return v14;
}

uint64_t aks_kc_backup_wrap_key(int a1, void *__src, size_t __n, char *__dst, void *a5)
{
  if (__n >= 0x21)
  {
    __security_simulatecrash(@"Execution has encountered an unexpected state", 1405091854);
  }

  if (dword_1000739E8 != a1)
  {
    __security_simulatecrash(@"Execution has encountered an unexpected state", 1405091854);
  }

  if (*a5 <= 0xA7uLL)
  {
    __security_simulatecrash(@"Execution has encountered an unexpected state", 1405091854);
  }

  *a5 = __n + 8;
  memcpy(__dst, __src, __n);
  *&__dst[__n] = -1;
  return 0;
}

double aks_kc_backup_open_keybag(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6)
{
  if (a3 || a1 || a4 | a2)
  {
    if (a1 && a2 == 20)
    {
      v6 = *a1 == 0x616220636967616DLL && *(a1 + 8) == 0x79656B2070756B63;
      v7 = v6 && *(a1 + 16) == 560423266;
      if (v7 && a3 && a4 == 9 && *a3 == 0x73696664726F7773 && *(a3 + 8) == 104)
      {
        *a5 = -1;
        strcpy((a6 + 32), "not a real uuid");
        *(a6 + 16) = 560423266;
        result = *"magic backup keybag!";
        *a6 = *"magic backup keybag!";
      }
    }
  }

  else
  {
    *a5 = 17;
  }

  return result;
}

uint64_t aks_kc_backup_unwrap_key(uint64_t a1, unsigned __int8 *__src, unint64_t a3, void *__dst, unint64_t *a5)
{
  if (!a1)
  {
    __security_simulatecrash(@"Execution has encountered an unexpected state", 1405091854);
  }

  if (*a1 != 0x616220636967616DLL || *(a1 + 8) != 0x79656B2070756B63 || *(a1 + 16) != 560423266)
  {
    __security_simulatecrash(@"Execution has encountered an unexpected state", 1405091854);
  }

  v12 = a3 - 8;
  if (a3 < 8 || !__src || !__dst)
  {
    __security_simulatecrash(@"Execution has encountered an unexpected state", 1405091854);
  }

  v13 = 8;
  v14 = 0xFFFFFFFF00000000;
  do
  {
    if (__src[a3 + (v14 >> 32)] != 255)
    {
      return 3758604307;
    }

    v14 -= 0x100000000;
    --v13;
  }

  while (v13);
  if (*a5 < v12)
  {
    __security_simulatecrash(@"Execution has encountered an unexpected state", 1405091854);
  }

  *a5 = v12;
  memcpy(__dst, __src, a3 - 8);
  return 0;
}

uint64_t aks_unwrap_key(char *a1, int a2, uint64_t a3, uint64_t a4, void *a5, _DWORD *a6)
{
  +[SecMockAKS trapdoor];
  if (+[SecMockAKS isSEPDown])
  {
    return 3758097109;
  }

  v11 = 3758604307;
  +[SecMockAKS updateOperationsUntilUnlock];
  if (!+[SecMockAKS forceUnwrapKeyDecodeFailure])
  {
    if (![SecMockAKS isLocked:a3])
    {
      if (!a1)
      {
        return 3758097090;
      }

      if (a2 > 7)
      {
        v12 = (a2 - 8);
        if (*&a1[v12] != -1)
        {
          return v11;
        }

        if (*a6 >= v12)
        {
          *a6 = v12;
          memcpy(a5, a1, v12);
          return 0;
        }
      }

      abort();
    }

    return 3758097122;
  }

  return v11;
}

uint64_t aks_ref_key_create(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, MockAKSRefKeyObject **a6)
{
  v10 = objc_autoreleasePoolPush();
  +[SecMockAKS trapdoor];
  if (+[SecMockAKS forceInvalidPersona])
  {
    v11 = 3758604322;
LABEL_5:
    objc_autoreleasePoolPop(v10);
    return v11;
  }

  v11 = 3758097084;
  if ([SecMockAKS isLocked:a2])
  {
    v11 = 3758097122;
    goto LABEL_5;
  }

  v13 = [NSData dataWithBytes:"1234567890123456789012345678901" length:32];
  v14 = 0;
  if (a4 && a5)
  {
    v14 = [NSData dataWithBytes:a4 length:a5];
  }

  v18 = 0;
  v15 = [[MockAKSRefKeyObject alloc] initWithKeyData:v13 parameters:v14 error:&v18];
  v16 = v18;
  v17 = v16;
  if (!v15 && v16)
  {
    v11 = [v16 code];
  }

  objc_autoreleasePoolPop(v10);
  if (v15)
  {
    v11 = 0;
    *a6 = v15;
  }

  return v11;
}

uint64_t aks_ref_key_encrypt(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v12 = 3758097084;
  +[SecMockAKS trapdoor];
  v13 = [NSData dataWithBytes:a4 length:a5];
  v14 = a1;
  v15 = [_SFAuthenticatedEncryptionOperation alloc];
  v16 = [v14 key];
  v17 = [v16 keySpecifier];
  v18 = [v15 initWithKeySpecifier:v17 authenticationMode:1];

  v19 = [v14 key];

  v26 = 0;
  v20 = [v18 encrypt:v13 withKey:v19 error:&v26];
  v21 = v26;

  if (a7 && a6 && !v21 && v20)
  {
    v25 = 0;
    v22 = [NSKeyedArchiver archivedDataWithRootObject:v20 requiringSecureCoding:1 error:&v25];
    v21 = v25;
    if (!v21 && v22)
    {
      v23 = malloc_type_calloc(1uLL, [v22 length], 0x62C652DEuLL);
      *a6 = v23;
      memcpy(v23, [v22 bytes], objc_msgSend(v22, "length"));
      v12 = 0;
      *a7 = [v22 length];
    }
  }

  return v12;
}

uint64_t aks_ref_key_decrypt(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v14 = objc_autoreleasePoolPush();
  +[SecMockAKS trapdoor];
  v15 = +[SecMockAKS popDecryptRefKeyFailure];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 code];
  }

  else
  {
    v17 = 3758097084;
    if (a4 && a6 && a7)
    {
      if (a2)
      {
        v18 = [NSData dataWithBytes:a2 length:a3];
        v19 = [[MockAKSOptionalParameters alloc] initWithData:v18];
        if ([(MockAKSOptionalParameters *)v19 hasExternalData]&& ![(MockAKSOptionalParameters *)v19 hasAcmHandle])
        {

          v17 = 4294967287;
          goto LABEL_27;
        }
      }

      v17 = 3758604307;
      v20 = [NSData dataWithBytes:a4 length:a5];
      v21 = a1;
      v49 = 0;
      v22 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v20 error:&v49];
      v23 = v49;
      if (!v23 && v22)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_25;
        }

        v24 = [v22 ciphertext];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          goto LABEL_25;
        }

        v26 = [v22 authenticationCode];
        objc_opt_class();
        v27 = objc_opt_isKindOfClass();

        if ((v27 & 1) == 0)
        {
          goto LABEL_25;
        }

        v28 = [v22 initializationVector];
        objc_opt_class();
        v29 = objc_opt_isKindOfClass();

        if (v29)
        {
          v30 = [_SFAuthenticatedEncryptionOperation alloc];
          v31 = [v21 key];
          v32 = [v31 keySpecifier];
          v33 = [v30 initWithKeySpecifier:v32 authenticationMode:1];

          v34 = [v21 key];
          v48 = 0;
          v46 = v33;
          v35 = [v33 decrypt:v22 withKey:v34 error:&v48];
          v23 = v48;

          if (!v23 && v35)
          {
            cf = 0;
            v42 = CFPropertyListCreateDERData(v36, v35, &cf, v37, v38, v39, v40, v41);
            v43 = cf;
            if (cf)
            {
              cf = 0;
              CFRelease(v43);
            }

            if (v42)
            {
              v44 = malloc_type_calloc(1uLL, [(__CFData *)v42 length], 0x671B9095uLL);
              *a6 = v44;
              if (!v44)
              {
                abort();
              }

              memcpy(v44, [(__CFData *)v42 bytes], [(__CFData *)v42 length]);
              v17 = 0;
              *a7 = [(__CFData *)v42 length];
            }
          }
        }

        else
        {
LABEL_25:
          v23 = 0;
        }
      }
    }
  }

LABEL_27:
  objc_autoreleasePoolPop(v14);
  return v17;
}

uint64_t aks_ref_key_wrap(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  +[SecMockAKS trapdoor];

  return aks_ref_key_encrypt(a1, v12, v13, a4, a5, a6, a7);
}

uint64_t aks_ref_key_unwrap(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  +[SecMockAKS trapdoor];

  return aks_ref_key_decrypt(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t aks_operation_optional_params(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void *a7, void *a8)
{
  v15 = objc_autoreleasePoolPush();
  +[SecMockAKS trapdoor];
  v16 = objc_alloc_init(MockAKSOptionalParameters);
  if (a1)
  {
    v17 = [NSData dataWithBytes:a1 length:a2];
    [(MockAKSOptionalParameters *)v16 setAccessGroups:v17];
  }

  if (a3)
  {
    v18 = [NSData dataWithBytes:a3 length:a4];
    [(MockAKSOptionalParameters *)v16 setExternalData:v18];
  }

  if (a5)
  {
    v19 = [NSData dataWithBytes:a5 length:a6];
    [(MockAKSOptionalParameters *)v16 setAcmHandle:v19];
  }

  v20 = [(MockAKSOptionalParameters *)v16 data];
  v21 = malloc_type_malloc([v20 length], 0x618BE598uLL);
  *a7 = v21;
  memcpy(v21, [v20 bytes], objc_msgSend(v20, "length"));
  *a8 = [v20 length];

  objc_autoreleasePoolPop(v15);
  return 0;
}

uint64_t aks_ref_key_create_with_blob(uint64_t a1, uint64_t a2, uint64_t a3, MockAKSRefKeyObject **a4)
{
  v7 = objc_autoreleasePoolPush();
  +[SecMockAKS trapdoor];
  v8 = [NSData dataWithBytes:a2 length:a3];
  v9 = [[MockAKSRefKey alloc] initWithData:v8];
  v10 = v9;
  if (v9 && -[MockAKSRefKey hasKey](v9, "hasKey") && (-[MockAKSRefKey key](v10, "key"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 length], v11, v12))
  {
    v13 = [MockAKSRefKeyObject alloc];
    v14 = [(MockAKSRefKey *)v10 key];
    v15 = [(MockAKSRefKey *)v10 optionalParams];
    v20 = 0;
    v16 = [(MockAKSRefKeyObject *)v13 initWithKeyData:v14 parameters:v15 error:&v20];
    v17 = v20;

    objc_autoreleasePoolPop(v7);
    if (v16)
    {
      v18 = 0;
      *a4 = v16;
    }

    else
    {
      *a4 = -1;
      if ([v17 code])
      {
        v18 = [v17 code];
      }

      else
      {
        v18 = 3758097084;
      }
    }
  }

  else
  {

    objc_autoreleasePoolPop(v7);
    v17 = 0;
    v18 = 3758604312;
  }

  return v18;
}

id aks_ref_key_get_blob(void *a1, void *a2)
{
  v3 = a1;
  v4 = [v3 blob];
  *a2 = [v4 length];

  v5 = [v3 blob];

  v6 = [v5 bytes];
  return v6;
}

uint64_t aks_ref_key_free(id *a1)
{
  if (*a1)
  {
    v2 = *a1;
    CFRelease(v2);
    *a1 = 0;
  }

  return 0;
}

id aks_ref_key_get_external_data(void *a1, void *a2)
{
  v3 = a1;
  v4 = [v3 externalData];
  *a2 = [v4 length];

  v5 = [v3 externalData];

  v6 = [v5 bytes];
  return v6;
}

MockAKSOptionalParameters *aks_params_create()
{
  v0 = objc_autoreleasePoolPush();
  +[SecMockAKS trapdoor];
  v1 = objc_alloc_init(MockAKSOptionalParameters);
  objc_autoreleasePoolPop(v0);
  return v1;
}

uint64_t aks_params_free(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    *a1 = 0;
  }

  return 0;
}

uint64_t aks_params_set_data(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  switch(a2)
  {
    case 3:
      v8 = [NSData dataWithBytes:a3 length:a4];
      [v7 setAcmHandle:v8];
      goto LABEL_7;
    case 2:
      v8 = [NSData dataWithBytes:a3 length:a4];
      [v7 setExternalData:v8];
      goto LABEL_7;
    case 1:
      v8 = [NSData dataWithBytes:a3 length:a4];
      [v7 setAccessGroups:v8];
LABEL_7:

      break;
  }

  return 0;
}

uint64_t aks_params_get_der(void *a1, void *a2, void *a3)
{
  v5 = [a1 data];
  v6 = malloc_type_malloc([v5 length], 0xDC553D0BuLL);
  *a2 = v6;
  memcpy(v6, [v5 bytes], objc_msgSend(v5, "length"));
  *a3 = [v5 length];

  return 0;
}

void aks_dealloc(void *a1, rsize_t __n)
{
  memset_s(a1, __n, 0, __n);

  free(a1);
}

uint64_t MKBKeyBagUnlock(const void *a1)
{
  if (!a1 || !CFEqual(a1, @"keybagHandle"))
  {
    abort();
  }

  return 0;
}

uint64_t MKBKeyBagGetAKSHandle(const void *a1, _DWORD *a2)
{
  if (!a1 || !CFEqual(a1, @"keybagHandle"))
  {
    abort();
  }

  *a2 = 17;
  return 0;
}

uint64_t MKBUserTypeDeviceMode()
{
  v1 = kMKBDeviceModeKey[0];
  v2 = @"kMKBDeviceModeSingleUser";
  [NSDictionary dictionaryWithObjects:&v2 forKeys:&v1 count:1];
  return objc_claimAutoreleasedReturnValue();
}

const void *sub_100032B78(const __CFString *a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = @"logging";
  }

  os_unfair_lock_lock_with_options();
  Mutable = qword_1000738E0;
  if (!qword_1000738E0)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFCopyStringDictionaryKeyCallBacks, 0);
    qword_1000738E0 = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, v1);
  if (!Value)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 0x40000000;
    v5[2] = sub_100032CB4;
    v5[3] = &unk_100063A48;
    v5[4] = v1;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = sub_100033794;
    v6[3] = &unk_100063AE0;
    v6[4] = v5;
    sub_100033584(v1, v6);
    Value = CFDictionaryGetValue(qword_1000738E0, v1);
  }

  os_unfair_lock_unlock(&stru_1000738DC);
  return Value;
}

void sub_100032CB4(uint64_t a1, const char *a2)
{
  v2 = qword_1000738E0;
  v3 = *(a1 + 32);
  v4 = os_log_create("com.apple.securityd", a2);

  CFDictionaryAddValue(v2, v3, v4);
}

const void *secLogObjForScope(const char *a1)
{
  pthread_mutex_lock(&stru_1000735A0);
  pthread_mutex_unlock(&stru_1000735A0);
  if (a1)
  {
    v2 = CFStringCreateWithCString(kCFAllocatorDefault, a1, 0x600u);
    v3 = sub_100032B78(v2);
    if (v2)
    {
      CFRelease(v2);
    }

    return v3;
  }

  else
  {

    return sub_100032B78(0);
  }
}

uint64_t sub_100032D94(const __CFDictionary *a1, uint64_t a2)
{
  v3 = xmmword_1000458A0;
  v4 = a2;
  CFDictionaryApplyFunction(a1, sub_100032DFC, &v3);
  if (v3 == 1)
  {
    return ccder_sizeof();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100032DFC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*a3 == 1)
  {
    result = sub_100032E4C(result, a2, *(a3 + 16));
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

uint64_t sub_100032E4C(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (der_sizeof_plist(a1, a3) && der_sizeof_plist(a2, a3))
  {

    return ccder_sizeof();
  }

  else
  {
    SecCFCreateErrorWithFormat(-6, sSecDERErrorDomain[0], 0, a3, 0, @"null input", v5, v6, v8);
    return 0;
  }
}

uint64_t sub_100032EEC(const __CFDictionary *a1, CFTypeRef *a2, char a3)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v13[0] = 0xAAAAAAAAAAAAAA01;
  v13[1] = a2;
  BYTE1(v13[0]) = a3;
  v13[2] = Mutable;
  v13[3] = 0;
  CFDictionaryApplyFunction(a1, sub_100033134, v13);
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
  CFArraySortValues(Mutable, v14, sub_100033078, 0);
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
    SecCFCreateErrorWithFormat(-7, sSecDERErrorDomain[0], 0, a2, 0, @"ccder failed to encode", v11, v12, v13[0]);
    return 0;
  }

  return result;
}

uint64_t sub_100033078(const __CFData *a1, const __CFData *a2)
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

void sub_100033134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3 == 1)
  {
    v6 = sub_100032E4C(a1, a2, *(a3 + 8));
    if (!v6)
    {
      *a3 = 0;
      return;
    }

    v7 = v6;
    Mutable = CFDataCreateMutable(*(a3 + 24), v6);
    CFDataSetLength(Mutable, v7);
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    v10 = *(a3 + 8);
    v11 = *(a3 + 1);
    v12 = der_encode_plist_repair(a2, v10, v11, MutableBytePtr, &MutableBytePtr[v7]);
    der_encode_plist_repair(a1, v10, v11, MutableBytePtr, v12);
    v13 = ccder_encode_constructed_tl();
    if (v13)
    {
      v18.length = v13 - MutableBytePtr;
      v18.location = 0;
      CFDataDeleteBytes(Mutable, v18);
      CFArrayAppendValue(*(a3 + 16), Mutable);
      if (!Mutable)
      {
        return;
      }
    }

    else
    {
      SecCFCreateErrorWithFormat(-7, sSecDERErrorDomain[0], 0, v10, 0, @"ccder failed to encode", v14, v15, v16);
      *a3 = 0;
      if (!Mutable)
      {
        return;
      }
    }

    CFRelease(Mutable);
  }
}

uint64_t SecGetDebugDescriptionFormatOptions()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100033320;
  block[3] = &unk_100063A68;
  block[4] = &qword_1000738F0;
  if (qword_1000738E8 != -1)
  {
    dispatch_once(&qword_1000738E8, block);
  }

  return qword_1000738F0;
}

CFDictionaryRef sub_100033320(uint64_t a1)
{
  values = kCFBooleanTrue;
  keys = kSecDebugFormatOption;
  result = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  **(a1 + 32) = result;
  return result;
}

void sub_1000333C0(uint64_t a1)
{
  if (qword_1000738F8 != -1)
  {
    dispatch_once(&qword_1000738F8, &stru_100063B20);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100033468;
  block[3] = &unk_100063A90;
  block[4] = a1;
  dispatch_sync(qword_100073900, block);
}

uint64_t sub_100033468(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100073908 != -1)
  {
    dispatch_once(&qword_100073908, &stru_100063B60);
  }

  v2 = qword_100073910;
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

void sub_1000334D4(id a1)
{
  qword_100073910 = CFCalendarCreateWithIdentifier(kCFAllocatorDefault, kCFGregorianCalendar);
  v1 = CFTimeZoneCreateWithTimeIntervalFromGMT(kCFAllocatorDefault, 0.0);
  CFCalendarSetTimeZone(qword_100073910, v1);
  if (v1)
  {

    CFRelease(v1);
  }
}

void sub_100033584(const __CFString *a1, uint64_t a2)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {
    v5 = CStringPtr;
    v6 = strlen(CStringPtr);
    v7 = *(a2 + 16);

    v7(a2, v5, v6);
  }

  else
  {
    usedBufLen = 0;
    Length = CFStringGetLength(a1);
    v12.location = 0;
    v12.length = Length;
    CFStringGetBytes(a1, v12, 0x8000100u, 0, 0, 0, 0, &usedBufLen);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = sub_1000336A8;
    v9[3] = &unk_100063AB8;
    v9[6] = 0;
    v9[7] = Length;
    v9[8] = usedBufLen;
    v9[4] = a2;
    v9[5] = a1;
    sub_10003DC0C(usedBufLen + 1, v9);
  }
}

uint64_t sub_1000336A8(uint64_t result, int a2, UInt8 *buffer)
{
  if (buffer)
  {
    v4 = result;
    v5 = *(result + 40);
    v8 = *(v4 + 48);
    v6 = *(v4 + 64);
    usedBufLen = 0xAAAAAAAAAAAAAAAALL;
    CFStringGetBytes(v5, v8, 0x8000100u, 0, 0, buffer, v6, &usedBufLen);
    buffer[usedBufLen] = 0;
    return (*(*(v4 + 32) + 16))();
  }

  return result;
}

void CFStringPerformWithCString(const __CFString *a1, uint64_t a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = sub_100033794;
  v2[3] = &unk_100063AE0;
  v2[4] = a2;
  sub_100033584(a1, v2);
}

CFStringRef CFStringCreateByTrimmingCharactersInSet(const __CFString *a1, const __CFCharacterSet *a2)
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
    return &stru_1000643F8;
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
  v11 = &stru_1000643F8;
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

uint64_t sub_100033A50(char **a1, unint64_t a2, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  if (*a1)
  {
    if (v10 >= a2)
    {
      SecCFCreateErrorWithFormat(-1, sSecDERErrorDomain[0], 0, a3, 0, @"Unexpected end of datetime", a7, a8, v14);
      *a1 = 0;
    }

    else
    {
      v12 = *v10;
      v11 = v12;
      *a1 = v10 + 1;
      if ((v12 - 58) > 0xFFFFFFF5)
      {
        return (v11 - 48);
      }
    }
  }

  SecCFCreateErrorWithFormat(-1, sSecDERErrorDomain[0], 0, a3, 0, @"Not a decimal digit", a7, a8, v14);
  *a1 = 0;
  return 0xFFFFFFFFLL;
}

char *sub_100033AF8(double *a1, CFTypeRef *a2, unsigned int a3, char *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v112 = a4;
  v109 = sub_100033A50(&v112, a5, a2, a4, a5, a6, a7, a8);
  v108 = sub_100033A50(&v112, a5, a2, v10, v11, v12, v13, v14);
  v107 = sub_100033A50(&v112, a5, a2, v15, v16, v17, v18, v19);
  v25 = sub_100033A50(&v112, a5, a2, v20, v21, v22, v23, v24);
  v31 = sub_100033A50(&v112, a5, a2, v26, v27, v28, v29, v30);
  v37 = sub_100033A50(&v112, a5, a2, v32, v33, v34, v35, v36);
  v43 = sub_100033A50(&v112, a5, a2, v38, v39, v40, v41, v42);
  v49 = sub_100033A50(&v112, a5, a2, v44, v45, v46, v47, v48);
  v55 = sub_100033A50(&v112, a5, a2, v50, v51, v52, v53, v54);
  v66 = sub_100033A50(&v112, a5, a2, v56, v57, v58, v59, v60);
  v67 = 0;
  v68 = v112;
  v69 = NAN;
  if (!v112 || v112 >= a5)
  {
    goto LABEL_24;
  }

  v70 = *v112;
  if (v70 == 46)
  {
    if ((v112 + 1) < a5)
    {
      v70 = v112[1];
      if ((v70 - 58) < 0xFFFFFFF6)
      {
        v71 = sSecDERErrorDomain[0];
        v72 = @"fraction without digits";
LABEL_14:
        v74 = -1;
LABEL_23:
        SecCFCreateErrorWithFormat(v74, v71, 0, a2, 0, v72, v64, v65, v105);
        v67 = 0;
        goto LABEL_24;
      }

      v75 = 0;
      v76 = v112 + 2;
      v77 = 1;
      while (v76 != a5)
      {
        v78 = v70;
        v68 = v76;
        if (v77 < 0x1999999999999999)
        {
          v77 *= 10;
          v75 = (v70 & 0xF) + 10 * v75;
        }

        v79 = *v76++;
        v70 = v79;
        if ((v79 - 58) < 0xFFFFFFF6)
        {
          if (v78 == 48)
          {
            v71 = sSecDERErrorDomain[0];
            v72 = @"fraction ends in 0";
            goto LABEL_14;
          }

          v69 = v75 / v77;
          goto LABEL_8;
        }
      }
    }

    v71 = sSecDERErrorDomain[0];
    v72 = @"overflow";
    v74 = -8;
    goto LABEL_23;
  }

  v69 = 0.0;
LABEL_8:
  if (v68 >= a5)
  {
    v71 = sSecDERErrorDomain[0];
    v72 = @"Unexpected end of datetime";
    goto LABEL_14;
  }

  v67 = v68 + 1;
  v112 = v68 + 1;
  if (v70 != 90)
  {
    if (v70 == 45)
    {
      v73 = -60;
    }

    else
    {
      if (v70 != 43)
      {
LABEL_24:
        SecCFCreateErrorWithFormat(-1, sSecDERErrorDomain[0], 0, a2, 0, @"Invalid datetime character", v64, v65, v105);
        v80 = NAN;
        goto LABEL_25;
      }

      v73 = 60;
    }

    v106 = v73;
    v88 = sub_100033A50(&v112, a5, a2, v61, v62, v63, v64, v65);
    v105 = sub_100033A50(&v112, a5, a2, v89, v90, v91, v92, v93) + 10 * v88;
    v99 = sub_100033A50(&v112, a5, a2, v94, v95, v96, v97, v98);
    v80 = ((sub_100033A50(&v112, a5, a2, v100, v101, v102, v103, v104) + 10 * v99 + 60 * v105) * v106);
    v67 = v112;
LABEL_25:
    if (!v67)
    {
      return v67;
    }

    goto LABEL_26;
  }

  v80 = 0.0;
LABEL_26:
  if (v67 == a5)
  {
    v81 = (v25 + 10 * v107);
    v82 = (v37 + 10 * v31);
    v83 = (v49 + 10 * v43);
    v128[0] = 0;
    if (sub_100033FA8(a3, (v108 + 10 * v109), v81, v82, v83, (v66 + 10 * v55), v128, a2))
    {
      v124 = 0;
      v125 = &v124;
      v126 = 0x2000000000;
      v127 = 0;
      v120 = 0;
      v121 = (&v119 + 4);
      v122 = 0x2000000000;
      v123 = 0;
      v113[0] = _NSConcreteStackBlock;
      v113[1] = 0x40000000;
      v113[2] = sub_1000340CC;
      v113[3] = &unk_100063B88;
      v113[4] = &v124;
      v113[5] = &v119 + 4;
      v114 = a3;
      v115 = v108 + 10 * v109;
      v116 = v81;
      v117 = v82;
      v118 = v83;
      v119 = (v66 + 10 * v55);
      sub_1000333C0(v113);
      if (v125[3])
      {
        v86 = v121[3] - v80;
      }

      else
      {
        SecCFCreateErrorWithFormat(-1, sSecDERErrorDomain[0], 0, a2, 0, @"Failed to encode date from components", v84, v85, v105);
        v86 = NAN;
      }

      _Block_object_dispose(&v119 + 4, 8);
      _Block_object_dispose(&v124, 8);
      *a1 = v86;
      *a1 = v69 + v86;
    }

    else
    {
      v67 = 0;
      *a1 = NAN;
    }
  }

  else
  {
    SecCFCreateErrorWithFormat(-1, sSecDERErrorDomain[0], 0, a2, 0, @"trailing garbage at end of datetime", v64, v65, v105);
    return 0;
  }

  return v67;
}

uint64_t sub_100033FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, __CFString **a8)
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
  if (a6 <= 61 && a5 <= 59 && a4 <= 23 && (a2 - 13) >= 0xFFFFFFF4 && (a3 - 32) >= 0xFFFFFFE1 && (a2 != 2 || (v8 | 0x1C) >= a3) && (a2 == 2 || dword_100045914[a2] - dword_100045914[(a2 - 1)] >= a3))
  {
    return 1;
  }

  SecError(-1, a8, @"Invalid date: %i, %i, %i, %i, %i, %i, %i", a1, a2, a3, a4, a5, a6, v8);
  return 0;
}

uint64_t sub_1000340CC(uint64_t a1, CFCalendarRef calendar)
{
  result = CFCalendarComposeAbsoluteTime(calendar, (*(*(a1 + 40) + 8) + 24), "yMdHms", *(a1 + 48), *(a1 + 52), *(a1 + 56), *(a1 + 60), *(a1 + 64), *(a1 + 68));
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  return result;
}

char *der_decode_date(const __CFAllocator *a1, CFDateRef *a2, CFTypeRef *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v46 = a5;
  if (!a4)
  {
    v40 = sSecDERErrorDomain[0];
    v41 = @"null input";
    v42 = -6;
    goto LABEL_6;
  }

  at = 0.0;
  v47 = ccder_decode_constructed_tl();
  v16 = sub_100033A50(&v47, v46, a3, v11, v12, v13, v14, v15);
  v22 = sub_100033A50(&v47, v46, a3, v17, v18, v19, v20, v21) + 10 * v16;
  v28 = sub_100033A50(&v47, v46, a3, v23, v24, v25, v26, v27);
  v34 = sub_100033A50(&v47, v46, a3, v29, v30, v31, v32, v33);
  v38 = sub_100033AF8(&at, a3, v34 + 10 * v28 + 100 * v22, v47, v46, v35, v36, v37);
  if (v38)
  {
    v39 = CFDateCreate(a1, at);
    *a2 = v39;
    if (!v39)
    {
      v40 = sSecDERErrorDomain[0];
      v41 = @"Failed to create date";
      v42 = -3;
LABEL_6:
      SecCFCreateErrorWithFormat(v42, v40, 0, a3, 0, v41, a7, a8, v44);
      return 0;
    }
  }

  return v38;
}

unint64_t sub_100034290(CFTypeRef *a1, int a2, uint64_t a3, unint64_t a4, double a5)
{
  v45 = 0;
  v46 = 0;
  v44 = 0;
  err = 0;
  p_err = &err;
  v49 = 0x2000000000;
  v50 = -86;
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 0x40000000;
  *&buf[16] = sub_1000348CC;
  v54 = &unk_100063BB0;
  v55 = &err;
  v56 = a5;
  v57 = &v46 + 4;
  v58 = &v46;
  v59 = &v45 + 4;
  v60 = &v45;
  v61 = &v44 + 4;
  v62 = &v44;
  sub_1000333C0(buf);
  if (*(p_err + 24) == 1)
  {
    _Block_object_dispose(&err, 8);
  }

  else
  {
    SecCFCreateErrorWithFormat(-1, sSecDERErrorDomain[0], 0, a1, 0, @"Failed to encode date.", v10, v11, v41);
    v12 = *(p_err + 24);
    _Block_object_dispose(&err, 8);
    if ((v12 & 1) == 0)
    {
      v28 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        if (a1)
        {
          v29 = *a1;
        }

        else
        {
          v29 = 0;
        }

        *buf = 138412290;
        *&buf[4] = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "der: unable to encode date: %@", buf, 0xCu);
      }

      return 0;
    }
  }

  err = 0;
  if ((sub_100033FA8(HIDWORD(v46), v46, HIDWORD(v45), v45, HIDWORD(v44), v44, 0, &err) & 1) == 0)
  {
    v13 = CFErrorCopyDescription(err);
    __security_simulatecrash(v13, 1405091842);
    if (v13)
    {
      CFRelease(v13);
    }

    v14 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = "continuing";
      if (a2)
      {
        v15 = "setting default value";
      }

      *buf = 138412546;
      *&buf[4] = err;
      *&buf[12] = 2080;
      *&buf[14] = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "der: invalid date: %@; %s", buf, 0x16u);
    }

    v16 = err;
    if (err)
    {
      err = 0;
      CFRelease(v16);
    }

    if (a2)
    {
      v46 = 0x7D100000001;
      HIDWORD(v45) = 1;
      HIDWORD(v44) = 1;
    }
  }

  if (a3 + 1 <= a4)
  {
    *(a4 - 1) = 90;
    v17 = a4 - 1;
  }

  else
  {
    v17 = 0;
  }

  v19 = v46;
  v18 = HIDWORD(v46);
  v42 = HIDWORD(v45);
  v43 = v45;
  v21 = v44;
  v20 = HIDWORD(v44);
  v51 = -1431655766;
  v52 = -1431655766;
  *buf = 0xAAAAAAAAAAAAAAAALL;
  v22 = __dtoa();
  v23 = v52;
  v24 = *buf;
  if (a5 < 0.0)
  {
    v25 = v22 + (v52 & ~(v52 >> 31));
    if (v25 < *buf)
    {
      v26 = (*buf - 1);
      for (*v26 = 106 - *(*buf - 1); v26 > v25; *v26 = 105 - v27)
      {
        v27 = *--v26;
      }
    }

    v23 = v52;
    v24 = *buf;
  }

  if (v24 - v22 > v23)
  {
    if ((v23 & 0x80000000) == 0)
    {
      v17 = ccder_encode_body();
LABEL_34:
      if (a3 + 1 <= v17)
      {
        *--v17 = 46;
      }

      else
      {
        v17 = 0;
      }

      goto LABEL_38;
    }

    v41 = a1;
    v30 = v19;
    v31 = v18;
    ccder_encode_body();
    v32 = -v52;
    v33 = ccder_encode_body_nocopy();
    v17 = v33;
    if (v33)
    {
      if (a5 >= 0.0)
      {
        v34 = 48;
      }

      else
      {
        v34 = 57;
      }

      memset(v33, v34, v32);
      v18 = v31;
      v19 = v30;
      a1 = v41;
      goto LABEL_34;
    }

    v18 = v31;
    v19 = v30;
    a1 = v41;
  }

LABEL_38:
  __freedtoa();
  if (v17)
  {
    v37 = a3 + 2;
    if (a3 + 2 <= v17)
    {
      *(v17 - 2) = v21 / 10 + 48;
      *(v17 - 1) = v21 % 10 + 48;
      if (v37 <= v17 - 2)
      {
        *(v17 - 4) = v20 / 10 + 48;
        *(v17 - 3) = v20 % 10 + 48;
        if (v37 <= v17 - 4)
        {
          *(v17 - 6) = v43 / 10 + 48;
          *(v17 - 5) = v43 % 10 + 48;
          if (v37 <= v17 - 6)
          {
            *(v17 - 8) = v42 / 10 + 48;
            *(v17 - 7) = v42 % 10 + 48;
            if (v37 <= v17 - 8)
            {
              *(v17 - 10) = v19 / 10 + 48;
              *(v17 - 9) = v19 % 10 + 48;
              if (v37 <= v17 - 10)
              {
                v38 = (((103 * (v18 % 100)) >> 15) & 1) + ((103 * (v18 % 100)) >> 10);
                *(v17 - 12) = v38 + 48;
                *(v17 - 11) = v18 % 100 - 10 * v38 + 48;
                if (v37 <= v17 - 12)
                {
                  *(v17 - 14) = v18 / 1000 + 48;
                  v39 = v17 - 14;
                  *(v39 + 1) = v18 / 100 % 10 + 48;
                  return v39;
                }
              }
            }
          }
        }
      }
    }
  }

  SecCFCreateErrorWithFormat(-7, sSecDERErrorDomain[0], 0, a1, 0, @"ccder failed to encode", v35, v36, v41);
  return 0;
}

uint64_t sub_1000348CC(uint64_t a1, CFCalendarRef calendar)
{
  result = CFCalendarDecomposeAbsoluteTime(calendar, *(a1 + 40), "yMdHms", *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88));
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  return result;
}

BOOL SecDbError(int a1, CFTypeRef *a2, CFStringRef format, ...)
{
  va_start(va, format);
  if (a1 && a2)
  {
    v5 = *a2;
    *a2 = 0;
    sub_100039FA8(a1, kSecDbErrorDomain, v5, a2, 0, format, va);
  }

  return a1 == 0;
}

BOOL SecDbErrorWithDb(uint64_t a1, sqlite3 *a2, CFTypeRef *a3, CFStringRef format, ...)
{
  va_start(va, format);
  if (a1 && a3)
  {
    v7 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, format, va);
    if (a1 == 14)
    {
      v8 = sqlite3_system_errno(a2);
      v9 = CFStringCreateWithFormat(0, 0, @"%d", v8);
    }

    else
    {
      v9 = CFRetain(&stru_1000643F8);
    }

    v10 = v9;
    v11 = sqlite3_extended_errcode(a2);
    v12 = sqlite3_errmsg(a2);
    if (v11 == a1)
    {
      SecDbError(a1, a3, @"%@: [%d]%@ %s", v7, a1, v10, v12, v14, va);
    }

    else
    {
      SecDbError(a1, a3, @"%@: [%d->%d]%@ %s", v7, a1, v11, v10, v12, va);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }

  return a1 == 0;
}

BOOL sub_100034ABC(uint64_t a1, sqlite3_stmt *a2, CFTypeRef *a3, CFStringRef format, ...)
{
  va_start(va, format);
  if (a1 && a3)
  {
    v7 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, format, va);
    v8 = sqlite3_db_handle(a2);
    v9 = sqlite3_sql(a2);
    v10 = sqlite3_extended_errcode(v8);
    v11 = sqlite3_errmsg(v8);
    if (v10 == a1)
    {
      SecDbError(a1, a3, @"%@: [%d] %s sql: %s", v7, a1, v11, v9, v13, va);
    }

    else
    {
      SecDbError(a1, a3, @"%@: [%d->%d] %s sql: %s", v7, a1, v10, v11, v9, va);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  return a1 == 0;
}

void _SecDbServerSetup()
{
  if (qword_100073918 != -1)
  {
    dispatch_once(&qword_100073918, &stru_100063BF0);
  }
}

void sub_100034BD8(id a1)
{
  v1 = sqlite3_config(16, nullsub_3, 0);
  if (v1)
  {
    v2 = v1;
    v3 = secLogObjForScope("SecWarning");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Could not set up sqlite global error logging to syslog: %d", buf, 8u);
    }
  }
}

uint64_t sub_100034C9C(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

CFStringRef sub_100034CD0(uint64_t a1)
{
  SecGetDebugDescriptionFormatOptions();
  v2 = *(a1 + 16);
  return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"<SecDb path:%@ connections: %@>", v2, *(a1 + 48));
}

void sub_100034D6C(uint64_t a1)
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
  block[2] = sub_100034E50;
  block[3] = &unk_100063E88;
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

void sub_100034E50(uint64_t a1)
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

uint64_t SecDbCreate(const __CFString *a1, __int16 a2, char a3, char a4, char a5, char a6, char a7, const void *a8)
{
  *buf = _NSConcreteStackBlock;
  v33 = 0x40000000;
  v34 = sub_100034C9C;
  v35 = &unk_100063C70;
  v36 = &qword_100073928;
  if (qword_100073920 != -1)
  {
    dispatch_once(&qword_100073920, buf);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v28 = a2;
    v17 = a5;
    v29 = a4;
    v27 = a3;
    if (getenv("__OSINSTALL_ENVIRONMENT"))
    {
      v18 = secLogObjForScope("#SecDB");
      v19 = a6;
      v20 = a7;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "SecDB: running from installer", buf, 2u);
      }

      Copy = @"file::memory:?cache=shared";
    }

    else
    {
      v19 = a6;
      v20 = a7;
      Copy = CFStringCreateCopy(kCFAllocatorDefault, a1);
    }

    *(Instance + 16) = Copy;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 0x40000000;
    v31[2] = sub_1000352F0;
    v31[3] = &unk_100063C90;
    v31[4] = Instance;
    *buf = _NSConcreteStackBlock;
    v33 = 0x40000000;
    v34 = sub_100033794;
    v35 = &unk_100063AE0;
    v36 = v31;
    sub_100033584(a1, buf);
    v22 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@-commit", a1);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 0x40000000;
    v30[2] = sub_100035324;
    v30[3] = &unk_100063CB0;
    v30[4] = Instance;
    *buf = _NSConcreteStackBlock;
    v33 = 0x40000000;
    v34 = sub_100033794;
    v35 = &unk_100063AE0;
    v36 = v30;
    sub_100033584(v22, buf);
    if (v22)
    {
      CFRelease(v22);
    }

    *(Instance + 40) = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    *(Instance + 48) = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    v37.__sig = 0xAAAAAAAAAAAAAAAALL;
    *v37.__opaque = 0xAAAAAAAAAAAAAAAALL;
    if (pthread_mutexattr_init(&v37) || (v23 = &v37, pthread_mutexattr_setpolicy_np(&v37, 1)))
    {
      v24 = secLogObjForScope("SecCritical");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "SecDb: SecDbCreate failed to create attributes for the write mutex; fairness properties are no longer present", buf, 2u);
      }

      v23 = 0;
    }

    if (pthread_mutex_init((Instance + 56), v23))
    {
      v25 = secLogObjForScope("SecCritical");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "SecDb: SecDbCreate failed to init the write mutex, this will end badly", buf, 2u);
      }
    }

    pthread_mutexattr_destroy(&v37);
    *(Instance + 120) = dispatch_semaphore_create(5);
    *(Instance + 128) = 0;
    *(Instance + 136) = _Block_copy(a8);
    *(Instance + 144) = 0;
    *(Instance + 148) = 0;
    *(Instance + 152) = 0;
    *(Instance + 160) = v28;
    *(Instance + 162) = v27;
    *(Instance + 163) = v29;
    *(Instance + 164) = v17;
    *(Instance + 165) = v19;
    *(Instance + 166) = v20;
    *(Instance + 168) = 0;
  }

  return Instance;
}

dispatch_queue_t sub_1000352F0(uint64_t a1, char *label)
{
  result = dispatch_queue_create(label, 0);
  *(*(a1 + 32) + 24) = result;
  return result;
}

dispatch_queue_t sub_100035324(uint64_t a1, char *label)
{
  result = dispatch_queue_create(label, &_dispatch_queue_attr_concurrent);
  *(*(a1 + 32) + 32) = result;
  return result;
}

void SecDbCorrupt(uint64_t a1, const void *a2)
{
  v4 = secLogObjForScope("SecEmergency");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v6 = 138412290;
    v7 = a2;
    _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "SecDBCorrupt: %@", &v6, 0xCu);
  }

  *(a1 + 40) = 1;
  v5 = *(a1 + 56);
  if (v5 != a2)
  {
    if (!a2 || (CFRetain(a2), (v5 = *(a1 + 56)) != 0))
    {
      CFRelease(v5);
    }

    *(a1 + 56) = a2;
  }
}

uint64_t SecDbExec(uint64_t a1, const __CFString *cf, CFTypeRef *a3)
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
      v6 = SecDbCopyStmt(a1, v4, &v9, a3);
      if (v6)
      {
        do
        {
          v7 = sub_100035674(a1, v6, a3);
        }

        while (v7 == 1);
        v6 = ((v7 != 0) & SecDbFinalize(v6, a3));
      }
    }

    else
    {
      v6 = SecDbError(1, a3, @"Error with unexecuted sql remaining %@", v4);
    }

    CFRelease(v4);
    v4 = v9;
  }

  while (v9);
  return v6;
}

sqlite3_stmt *SecDbCopyStmt(uint64_t a1, const __CFString *a2, CFStringRef *a3, CFTypeRef *a4)
{
  v12.location = 0;
  v12.length = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  if (a2)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 0x40000000;
    v13[2] = sub_10003659C;
    v13[3] = &unk_100064040;
    v13[4] = &v14;
    v13[5] = a1;
    v13[6] = a4;
    v13[7] = &v12;
    sub_100033584(a2, v13);
    v7 = v15[3];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v14, 8);
  if (v12.length >= 1)
  {
    v8 = CFGetAllocator(a2);
    v9 = CFStringCreateWithSubstring(v8, a2, v12);
    v10 = v9;
    if (a3)
    {
      *a3 = v9;
    }

    else
    {
      SecDbError(2, a4, @"prepare_v2: %@ unused sql: %@", a2, v9);
      if (v10)
      {
        CFRelease(v10);
      }

      SecDbFinalize(v7, a4);
      return 0;
    }
  }

  return v7;
}

uint64_t sub_100035674(uint64_t a1, sqlite3_stmt *pStmt, CFTypeRef *a3)
{
  v6 = 0;
  while (1)
  {
    if (*(a1 + 24) == 1 && !sqlite3_stmt_readonly(pStmt))
    {
      v7 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = sqlite3_sql(pStmt);
        *buf = 136315138;
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_SecDbStep: SecDbConnection is readonly but we're about to write: %s", buf, 0xCu);
      }
    }

    v9 = sqlite3_step(pStmt);
    if (v9 == 100)
    {
      break;
    }

    if (v9 == 101)
    {
      sqlite3_reset(pStmt);
      return 2;
    }

    if (!sub_10003583C(a1, v9, @"step", v6++, a3))
    {
      return 0;
    }
  }

  return 1;
}

BOOL SecDbFinalize(sqlite3_stmt *a1, CFTypeRef *a2)
{
  v4 = sqlite3_db_handle(a1);
  v5 = sqlite3_finalize(a1);
  return !v5 || SecDbErrorWithDb(v5, v4, a2, @"finalize: %p", a1);
}

BOOL sub_10003583C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, CFTypeRef *a5)
{
  if (a2 - 5 > 1)
  {
    return sub_1000359F4(a1, a2, a5, @"%@", a3);
  }

  if (a4 > 4)
  {
    v10 = 250;
    v11 = 250 * a4 - 820;
  }

  else
  {
    v10 = dword_100045948[a4];
    v11 = dword_10004595C[a4];
  }

  v12 = secLogObjForScope("#SecDB");
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
  if (v11 > 299999)
  {
    if (v13)
    {
      *buf = 67109120;
      v16 = v11;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "sqlite busy/locked: too long: %d ms, giving up", buf, 8u);
    }

    return sub_1000359F4(a1, a2, a5, @"%@", a3);
  }

  if (v13)
  {
    *buf = 67109632;
    v16 = a2;
    v17 = 1024;
    v18 = a4;
    v19 = 1024;
    v20 = v11;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "sqlite busy/locked: %d ntries: %d totaltimeout: %d", buf, 0x14u);
  }

  j__sqlite3_sleep(v10);
  return 1;
}

BOOL sub_1000359F4(uint64_t a1, uint64_t a2, CFTypeRef *a3, CFStringRef format, ...)
{
  va_start(va, format);
  if (!a2 || a2 == 101)
  {
    return !a2 || a2 == 101;
  }

  if (a3)
  {
    va_copy(buf, va);
    v7 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, format, va);
    SecDbErrorWithDb(a2, *(a1 + 64), a3, @"%@", v7);
    CFRelease(v7);
  }

  *(a1 + 48) |= a2 == 10;
  if (*(a1 + 40) == 1)
  {
    v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"SQL DB %@ is corrupted already. Corruption error was: %d (previously %d)", format, *(*(a1 + 16) + 16), a2, *(a1 + 44));
    v9 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@", &buf, 0xCu);
    }

    if (CFEqual(*(*(a1 + 16) + 16), @"/Library/Keychains/keychain-2.db"))
    {
      v10 = 1405092101;
    }

    else if (CFEqual(*(*(a1 + 16) + 16), @"/Library/Keychains/ocspcache.sqlite3"))
    {
      v10 = 1405092357;
    }

    else if (CFEqual(*(*(a1 + 16) + 16), @"/Library/Keychains/TrustStore.sqlite3"))
    {
      v10 = 1405092613;
    }

    else if (CFEqual(*(*(a1 + 16) + 16), @"/Library/Keychains/caissuercache.sqlite3"))
    {
      v10 = 1405092869;
    }

    else
    {
      v10 = 1405091845;
    }

    __security_simulatecrash(v8, v10);
    if (v8)
    {
      CFRelease(v8);
    }

    if (a2 == 26 || a2 == 11)
    {
      v31 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        v28 = "SecDbConnectionCheckCode detected corruption twice: going to handle corrupt DB";
        v29 = v31;
        v30 = 2;
        goto LABEL_49;
      }

      goto LABEL_50;
    }

    return !a2 || a2 == 101;
  }

  v11 = a2 == 11;
  if (a2 == 26)
  {
    v11 = 1;
  }

  *(a1 + 40) = v11;
  if (a2 != 26 && a2 != 11)
  {
    return !a2 || a2 == 101;
  }

  *(a1 + 44) = a2;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2000000000;
  v45 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2000000000;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2000000000;
  v37 = 0;
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 0x40000000;
  v49 = sub_1000360A4;
  v50 = &unk_100063F28;
  v51 = &v34;
  v52 = &v38;
  v53 = &v42;
  v54 = a1;
  SecDbPrepare(a1, @"PRAGMA integrity_check", &v37, &buf);
  if ((v43[3] & 1) == 0)
  {
    v12 = v35[3];
    if (!v12)
    {
      *(v39 + 24) = 1;
      v19 = secLogObjForScope("#SecDB");
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_26;
      }

      *v46 = 0;
      v16 = "#SecDB warning: failed to run integrity check due to corruption";
      v17 = v19;
      v18 = 2;
      goto LABEL_58;
    }

    Code = CFErrorGetCode(v12);
    if (Code == 26 || Code == 11)
    {
      *(v39 + 24) = 1;
    }

    v14 = secLogObjForScope("#SecDB");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = v35[3];
      *v46 = 138543362;
      v47 = v15;
      v16 = "#SecDB warning error %{public}@ when running integrity check";
      v17 = v14;
      v18 = 12;
LABEL_58:
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, v16, v46, v18);
    }
  }

LABEL_26:
  if (*(v39 + 24) == 1)
  {
    v20 = *(v43 + 24);
    v21 = secLogObjForScope("SecError");
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v20 == 1)
    {
      if (v22)
      {
        *v46 = 0;
        v23 = "SecDBCheckCorrupted ran integrity_check, and that didn't return ok";
LABEL_32:
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v23, v46, 2u);
      }
    }

    else if (v22)
    {
      *v46 = 0;
      v23 = "SecDBCheckCorrupted failed to run integrity check";
      goto LABEL_32;
    }
  }

  v24 = v35[3];
  if (v24)
  {
    v35[3] = 0;
    CFRelease(v24);
  }

  v25 = *(v39 + 24);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);
  *(a1 + 40) = v25;
  v26 = secLogObjForScope("SecError");
  v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
  if (v25 == 1)
  {
    if (v27)
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = a2;
      v28 = "operation returned code: %d integrity check=fail";
      v29 = v26;
      v30 = 8;
LABEL_49:
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, v28, &buf, v30);
    }

LABEL_50:
    sub_100035F68(a1, a2, a3);
    return !a2 || a2 == 101;
  }

  if (v27)
  {
    LODWORD(buf) = 67109120;
    DWORD1(buf) = a2;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "operation returned code: %d: integrity check=pass", &buf, 8u);
  }

  return !a2 || a2 == 101;
}

uint64_t sub_100035F68(uint64_t a1, int __errnum, CFTypeRef *a3)
{
  v3 = *(a1 + 16);
  if (*(v3 + 163) == 1)
  {
    v11 = *(v3 + 16);
    *buf = _NSConcreteStackBlock;
    v14 = 0x40000000;
    v15 = sub_100033794;
    v16 = &unk_100063AE0;
    v17 = &stru_100063FF8;
    sub_100033584(v11, buf);
    v12 = secLogObjForScope("SecWarning");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SecDbHandleCorrupt: killing self so that successor might cleanly delete corrupt db", buf, 2u);
    }

    exit(1);
  }

  v5 = __errnum;
  v7 = __errnum;
  strerror(__errnum);
  SecCFCreateErrorWithFormat(v7, kCFErrorDomainPOSIX, 0, a3, 0, @"SecDbHandleCorrupt not allowed to repair, handled error: [%d] %s", v8, v9, v5);
  *(a1 + 40) = 0;
  return 0;
}

uint64_t sub_1000360A4(uint64_t a1, sqlite3_stmt *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v4 = *(a1 + 40);
  return SecDbStep(*(a1 + 56), a2);
}

sqlite3_stmt *SecDbPrepare(uint64_t a1, const __CFString *a2, CFTypeRef *a3, uint64_t a4)
{
  result = SecDbCopyStmt(a1, a2, 0, a3);
  if (result)
  {
    v7 = result;
    (*(a4 + 16))(a4, result);

    return SecDbFinalize(v7, a3);
  }

  return result;
}

void sub_1000361A8(uint64_t a1)
{
  v2 = sqlite3_column_text(*(a1 + 48), 0);
  v3 = v2;
  if (!v2 || strncasecmp(v2, "ok", 3uLL))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    v4 = secLogObjForScope("SecError");
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

BOOL SecDbStep(uint64_t a1, sqlite3_stmt *pStmt, CFTypeRef *a3, uint64_t a4)
{
  while (1)
  {
    v8 = sub_100035674(a1, pStmt, a3);
    if (v8 != 1)
    {
      return v8 != 0;
    }

    if (!a4)
    {
      break;
    }

    v17 = 0;
    v18 = &v17;
    v19 = 0x2000000000;
    v20 = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 0x40000000;
    v13 = sub_1000363F8;
    v14 = &unk_100063D28;
    v15 = a4;
    v16 = &v17;
    v9 = v12;
    v10 = objc_autoreleasePoolPush();
    v13(v9);
    objc_autoreleasePoolPop(v10);

    LOBYTE(v9) = *(v18 + 24);
    _Block_object_dispose(&v17, 8);
    if (v9)
    {
      return 1;
    }
  }

  SecDbError(1, a3, @"SecDbStep SQLITE_ROW returned without a row handler");
  return 0;
}

void sub_100036414(id a1, const char *a2)
{
  memset(__b, 170, sizeof(__b));
  snprintf(__b, 0x401uLL, "%s-iscorrupt", a2);
  memset(&v7, 0, sizeof(v7));
  if (!stat(__b, &v7))
  {
    v3 = secLogObjForScope("SecError");
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
    v5 = secLogObjForScope("SecError");
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

uint64_t sub_10003659C(void *a1, const char *a2, unint64_t a3)
{
  v31[0] = 0;
  v7 = a1[5];
  v6 = a1[6];
  if (sub_100017084())
  {
    __s = 0;
    asprintf(&__s, "%s%s", "EXPLAIN QUERY PLAN ", a2);
    v8 = secLogObjForScope("item");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = a2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "EXPLAIN QUERY PLAN for %s:", &buf, 0xCu);
    }

    v9 = *(v7 + 64);
    pzTail = 0;
    ppStmt = 0;
    v10 = strlen(__s);
    v11 = sqlite3_prepare_v2(v9, __s, v10, &ppStmt, &pzTail);
    if (v11)
    {
      v12 = v11;
      v13 = secLogObjForScope("item");
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
LABEL_19:
        free(__s);
        goto LABEL_20;
      }

      LODWORD(buf) = 67109120;
      DWORD1(buf) = v12;
      v14 = "Unable to prepare query: %d";
      p_buf = &buf;
LABEL_18:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, p_buf, 8u);
      goto LABEL_19;
    }

    Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
    v31[1] = 0;
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 0x40000000;
    v38 = sub_1000369A8;
    v39 = &unk_100064018;
    v40 = ppStmt;
    v41 = Mutable;
    SecDbStep(v7, ppStmt);
    CStringPtr = CFStringGetCStringPtr(Mutable, 0x8000100u);
    v18 = secLogObjForScope("item");
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (CStringPtr)
    {
      if (v19)
      {
        *v35 = 136315138;
        v36 = CStringPtr;
        v20 = "query plan: %s";
        v21 = v18;
        v22 = 12;
LABEL_12:
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v20, v35, v22);
      }
    }

    else if (v19)
    {
      *v35 = 0;
      v20 = "Failed to get query plan";
      v21 = v18;
      v22 = 2;
      goto LABEL_12;
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    v23 = sqlite3_finalize(ppStmt);
    if (!v23)
    {
      goto LABEL_19;
    }

    v24 = v23;
    v13 = secLogObjForScope("item");
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *v35 = 67109120;
    LODWORD(v36) = v24;
    v14 = "Unable to finalize query: %d";
    p_buf = v35;
    goto LABEL_18;
  }

LABEL_20:
  v25 = *(v7 + 64);
  if (a3 >> 31)
  {
    result = SecDbErrorWithDb(18, *(v7 + 64), v6, @"prepare_v2: sql bigger than INT_MAX");
LABEL_22:
    v27 = 0;
  }

  else
  {
    for (i = 0; ; ++i)
    {
      *&buf = 0;
      result = sqlite3_prepare_v2(v25, a2, a3, &buf, v31);
      if (!result)
      {
        break;
      }

      result = sub_10003583C(v7, result, @"preparev2", i, v6);
      if ((result & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v27 = buf;
  }

  *(*(a1[4] + 8) + 24) = v27;
  v29 = a1[7];
  if (v29)
  {
    v30 = (v31[0] - a2);
    if (v31[0] > a2 && v31[0] < &a2[a3])
    {
      *v29 = v30;
      v29[1] = (a3 - v30);
    }
  }

  return result;
}

void sub_1000369A8(uint64_t a1)
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

uint64_t SecDBGetInteger(uint64_t a1, const __CFString *a2, int a3)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 1;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = sub_100036BDC;
  v11[3] = &unk_100063D00;
  v11[4] = &v20;
  v11[5] = &v12;
  v11[6] = &v16;
  v11[7] = a1;
  v4 = SecDbWithSQL(a1, a2, &v15, v11);
  v5 = v4 & v21[3];
  *(v21 + 24) = v5;
  if ((v5 & 1) == 0)
  {
    v6 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v13[3];
      *buf = 138412546;
      v25 = a2;
      v26 = 2112;
      v27 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SecDBGetInteger [%@] failed: %@", buf, 0x16u);
    }
  }

  v8 = v13[3];
  if (v8)
  {
    v13[3] = 0;
    CFRelease(v8);
  }

  v9 = *(v17 + 6);
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  return v9;
}

uint64_t sub_100036BDC(void *a1, sqlite3_stmt *a2)
{
  v3 = a1[7];
  v4 = *(a1[5] + 8);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_100036D90;
  v6[3] = &unk_100063CD8;
  v6[4] = a1[6];
  v6[5] = a2;
  *(*(a1[4] + 8) + 24) &= SecDbStep(v3, a2, (v4 + 24), v6);
  return 1;
}

uint64_t SecDbWithSQL(uint64_t a1, const __CFString *cf, CFTypeRef *a3, uint64_t a4)
{
  v6 = cf;
  CFRetain(cf);
  if (!v6)
  {
    return 1;
  }

  LOBYTE(v8) = 1;
  do
  {
    v11 = 0;
    if (v8)
    {
      v8 = SecDbCopyStmt(a1, v6, &v11, a3);
      if (v8)
      {
        if (a4)
        {
          v9 = (*(a4 + 16))(a4, v8);
        }

        else
        {
          v9 = SecError(-50, a3, @"SecDbWithSQL perform block missing");
        }

        v8 = (v9 & SecDbFinalize(v8, a3));
      }
    }

    else
    {
      v8 = SecDbError(1, a3, @"Error with unexecuted sql remaining %@", v6);
    }

    CFRelease(v6);
    v6 = v11;
  }

  while (v11);
  return v8;
}

uint64_t sub_100036D90(uint64_t a1, _BYTE *a2)
{
  result = sqlite3_column_int(*(a1 + 40), 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  *a2 = 1;
  return result;
}

uint64_t SecDbTransaction(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4)
{
  v13 = 1;
  if (*(a1 + 25) != 1)
  {
    if (a2 <= 3)
    {
      if (a2 == 1)
      {
        v9 = @"BEGIN IMMEDIATE";
        goto LABEL_22;
      }

      if (a2 != 2)
      {
        if (a2 == 3)
        {
          v9 = @"BEGIN";
LABEL_22:
          if (!sqlite3_get_autocommit(*(a1 + 64)) || (SecDbExec(a1, v9, a3) & 1) != 0)
          {
LABEL_24:
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
            v17 = sub_100037080;
            v18 = &unk_100063EB0;
            v23 = v13;
            v19 = v24;
            v20 = &v26;
            v21 = a1;
            v22 = a3;
            if (*(a1 + 24) == 1)
            {
              sub_100037080(buf);
            }

            else
            {
              v11 = *(*(a1 + 16) + 32);
              block[0] = _NSConcreteStackBlock;
              block[1] = 0x40000000;
              block[2] = sub_1000372E4;
              block[3] = &unk_100063ED8;
              block[4] = buf;
              dispatch_barrier_sync(v11, block);
            }

            v6 = *(v27 + 24);
            _Block_object_dispose(v24, 8);
            _Block_object_dispose(&v26, 8);
            return v6 & v13 & 1;
          }

LABEL_26:
          v6 = 0;
          return v6 & v13 & 1;
        }

LABEL_17:
        if (SecDbError(1, a3, @"invalid transaction type %d", a2))
        {
          goto LABEL_24;
        }

        goto LABEL_26;
      }

LABEL_21:
      v9 = @"BEGIN EXCLUSIVE";
      goto LABEL_22;
    }

    switch(a2)
    {
      case 6:
        v10 = 4;
        break;
      case 5:
        v10 = 3;
        break;
      case 4:
        *(a1 + 32) = 0;
        goto LABEL_21;
      default:
        goto LABEL_17;
    }

    *(a1 + 32) = v10;
    goto LABEL_21;
  }

  (*(a4 + 16))(a4, &v13);
  if ((v13 & 1) == 0)
  {
    v5 = secLogObjForScope("#SecDB");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "#SecDB nested transaction asked to not be committed", buf, 2u);
    }
  }

  v6 = 1;
  return v6 & v13 & 1;
}

void sub_100037080(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 48);
  if (v2 == 1)
  {
    if ((*(v3 + 24) & 1) == 0)
    {
      sub_1000372F4(v3, 1);
      v3 = *(a1 + 48);
    }

    v4 = SecDbExec(v3, @"END", *(a1 + 56));
    *(*(*(a1 + 40) + 8) + 24) = v4;
  }

  else
  {
    v5 = SecDbExec(v3, @"ROLLBACK", *(a1 + 56));
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

    sub_1000372F4(v6, v7);
    v6 = *(a1 + 48);
  }

  *(v6 + 32) = 1;
  if (*(a1 + 64) == 1 && *(*(v6 + 16) + 165) == 1 && (*(v6 + 24) & 1) == 0)
  {
    v8 = SecDBGetInteger(v6, @"pragma page_count", -1);
    if (v8 >= 1)
    {
      v9 = v8;
      v10 = SecDBGetInteger(v6, @"pragma freelist_count", -1);
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
              v15 = secLogObjForScope("SecError");
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

void sub_1000372F4(uint64_t a1, uint64_t a2)
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
        context[2] = sub_100037448;
        context[3] = &unk_100064060;
        context[4] = a1;
        context[5] = a2;
        context[6] = v4;
        v10.length = CFArrayGetCount(Copy);
        v10.location = 0;
        CFArrayApplyFunction(Copy, v10, sub_100037468, context);
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

BOOL SecDbCheckpoint(uint64_t a1, CFTypeRef *a2)
{
  v4 = sqlite3_wal_checkpoint_v2(*(a1 + 64), 0, 1, 0, 0);

  return sub_1000359F4(a1, v4, a2, @"wal_checkpoint(FULL)");
}

void SecDbSetCorruptionReset(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 168);
  if (v4)
  {
    _Block_release(v4);
    *(a1 + 168) = 0;
  }

  if (aBlock)
  {
    *(a1 + 168) = _Block_copy(aBlock);
  }
}

BOOL SecDbConnectionAcquireRefMigrationSafe(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  CFRetain(a1);
  if (byte_100073980 == 1)
  {
    if (a2)
    {
      if (dispatch_semaphore_wait(*(a1 + 120), 0))
      {
        v8 = sub_10003A334(1);
        dispatch_semaphore_wait(*(a1 + 120), 0xFFFFFFFFFFFFFFFFLL);
LABEL_9:
        sub_10003A520(v8);
        goto LABEL_13;
      }

      v9 = 1;
    }

    else
    {
      v9 = pthread_mutex_trylock((a1 + 56));
      if (v9)
      {
        v8 = sub_10003A334(0);
        pthread_mutex_lock((a1 + 56));
        goto LABEL_9;
      }
    }

    sub_10003A6C0(v9);
    goto LABEL_13;
  }

  if (a2)
  {
    dispatch_semaphore_wait(*(a1 + 120), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    pthread_mutex_lock((a1 + 56));
  }

LABEL_13:
  v37 = 0;
  v38 = &v37;
  v39 = 0x2000000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = 1;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 0x40000000;
  v25 = sub_100037850;
  v26 = &unk_100063D50;
  v27 = &v37;
  v28 = a3;
  v10 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100037880;
  block[3] = &unk_100063D78;
  block[8] = a1;
  block[9] = a3;
  block[10] = a4;
  v23 = a2;
  block[6] = &v29;
  block[7] = &v37;
  block[4] = v24;
  block[5] = &v33;
  dispatch_sync(v10, block);
  v11 = v38;
  if (*(v34 + 24) == 1 && !v38[3])
  {
    v21 = 0;
    v12 = sub_100037DA8(a1, a2);
    v13 = (v25)(v24, v12);
    v11 = v38;
    if (v13)
    {
      v14 = sub_100037EBC(v38[3], &v21, a4);
      v11 = v38;
      if ((v14 & 1) == 0)
      {
        v15 = v38[3];
        if (v15)
        {
          v38[3] = 0;
          CFRelease(v15);
          v11 = v38;
        }
      }
    }
  }

  v16 = v11[3];
  if (v16 && (v30[3] & 1) == 0 && *(*(v16 + 16) + 136) && (*(v16 + 24) & 1) == 0)
  {
    v17 = *(a1 + 24);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 0x40000000;
    v20[2] = sub_100037FB4;
    v20[3] = &unk_100063DA0;
    v20[4] = &v37;
    v20[5] = a1;
    v20[6] = a4;
    dispatch_sync(v17, v20);
    v16 = v38[3];
  }

  if (a3)
  {
    *a3 = v16;
  }

  if (v16)
  {
    v18 = 1;
  }

  else
  {
    if (a2)
    {
      dispatch_semaphore_signal(*(a1 + 120));
    }

    else
    {
      pthread_mutex_unlock((a1 + 56));
    }

    CFRelease(a1);
    v18 = v38[3] != 0;
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  return v18;
}

BOOL sub_100037850(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = a2;
  v2 = *(a1 + 40);
  if (v2)
  {
    *v2 = a2;
  }

  return *(*(*(a1 + 32) + 8) + 24) != 0;
}

void sub_100037880(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (*(v2 + 128))
  {
    goto LABEL_28;
  }

  v4 = *(a1 + 72);
  v3 = *(a1 + 80);
  v5 = *(v2 + 16);
  v34 = 0;
  v35 = &v34;
  v36 = 0x2000000000;
  v37 = 1;
  cf[0] = _NSConcreteStackBlock;
  cf[1] = 0x40000000;
  cf[2] = sub_1000388A0;
  cf[3] = &unk_100063F50;
  cf[4] = &v34;
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 0x40000000;
  v39 = sub_100033794;
  v40 = &unk_100063AE0;
  v41 = cf;
  sub_100033584(v5, &buf);
  v6 = *(v35 + 24);
  _Block_object_dispose(&v34, 8);
  if (v6)
  {
    v32 = 0;
    v7 = sub_100037DA8(v2, 0);
    if (v7)
    {
      v8 = v7;
      cf[0] = 0;
      if (sub_100037EBC(v7, &v32, cf))
      {
        v9 = cf[0];
        if (cf[0])
        {
          cf[0] = 0;
          CFRelease(v9);
        }

        if (v4)
        {
          *v4 = v8;
        }

        v10 = secLogObjForScope("#SecDB");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf) = 0;
          _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "#SecDB starting maintenance", &buf, 2u);
        }

        if (*(v8 + 40))
        {
          goto LABEL_55;
        }

        v11 = *(v8 + 16);
        v12 = *(v11 + 136);
        if (!v12)
        {
          v13 = 0;
          goto LABEL_56;
        }

        v34 = 0;
        *(v11 + 144) = 0;
        v13 = (*(v12 + 16))(v12, v11, v8, v32, v11 + 144, &v34);
        *(v2 + 128) = v13;
        if ((v13 & 1) == 0)
        {
          v14 = secLogObjForScope("SecError");
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v34;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "opened block failed: %@", &buf, 0xCu);
          }
        }

        if (!v3 || (*(v8 + 40) & 1) != 0 || *v3)
        {
          if (v34)
          {
            v15 = secLogObjForScope("SecError");
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v34;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "opened block failed: error (%@) is being released and lost", &buf, 0xCu);
            }

            v16 = v34;
            if (v34)
            {
              v34 = 0;
              CFRelease(v16);
            }
          }
        }

        else
        {
          *v3 = v34;
        }

        if (*(v8 + 40))
        {
LABEL_55:
          v13 = sub_100035F68(v8, 0, v3);
        }

LABEL_56:
        v31 = secLogObjForScope("#SecDB");
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf) = 0;
          _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "#SecDB ending maintenance", &buf, 2u);
          if (!v13)
          {
LABEL_59:
            CFRelease(v8);
            if (v4)
            {
              *v4 = 0;
            }

            goto LABEL_26;
          }
        }

        else if (!v13)
        {
          goto LABEL_59;
        }

        CFArrayAppendValue(*(v2 + 40), v8);
        goto LABEL_59;
      }

      v26 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = cf[0];
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Unable to create database: %@", &buf, 0xCu);
      }

      if (cf[0])
      {
        Domain = CFErrorGetDomain(cf[0]);
        if (CFEqual(Domain, kSecDbErrorDomain))
        {
          Code = CFErrorGetCode(cf[0]);
          v30 = Code == 11 || Code == 26;
          *(v8 + 40) = v30;
        }
      }

      LOBYTE(v13) = 0;
      if (!v3 || (*(v8 + 40) & 1) != 0)
      {
        goto LABEL_26;
      }

      if (!*v3)
      {
        LOBYTE(v13) = 0;
        *v3 = cf[0];
        goto LABEL_26;
      }
    }
  }

  else
  {
    v17 = *__error();
    v18 = __error();
    SecCFCreateErrorWithFormat(v17, kCFErrorDomainPOSIX, 0, v3, 0, @"Unable to process corruption marker: %{darwin.errno}d", v19, v20, *v18);
  }

  LOBYTE(v13) = 0;
LABEL_26:
  *(*(*(a1 + 48) + 8) + 24) = v13;
  *(*(*(a1 + 40) + 8) + 24) = v13;
  if (*(*(*(a1 + 40) + 8) + 24) != 1)
  {
    return;
  }

  v2 = *(a1 + 64);
LABEL_28:
  v21 = 40;
  if (*(a1 + 88))
  {
    v21 = 48;
  }

  v22 = *(v2 + v21);
  if (CFArrayGetCount(v22) && !*(*(*(a1 + 56) + 8) + 24))
  {
    v23 = *(a1 + 32);
    ValueAtIndex = CFArrayGetValueAtIndex(v22, 0);
    if ((*(v23 + 16))(v23, ValueAtIndex))
    {
      v25 = *(*(*(a1 + 56) + 8) + 24);
      if (v25)
      {
        CFRetain(v25);
      }
    }

    CFArrayRemoveValueAtIndex(v22, 0);
  }
}

uint64_t sub_100037DA8(uint64_t a1, char a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100038618;
  block[3] = &unk_100063E68;
  block[4] = &qword_100073938;
  if (qword_100073930 != -1)
  {
    dispatch_once(&qword_100073930, block);
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

uint64_t sub_100037EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 1;
  v3 = *(*(a1 + 16) + 16);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_10003807C;
  v6[3] = &unk_100063F78;
  v6[4] = &v7;
  v6[5] = a1;
  v6[6] = a2;
  v6[7] = a3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = sub_100033794;
  v11[3] = &unk_100063AE0;
  v11[4] = v6;
  sub_100033584(v3, v11);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_100037FB4(uint64_t a1)
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
      if (v6[40] != 1 || (sub_100035F68(v6, 0, *(a1 + 48)) & 1) == 0 && (v5 = *(*(a1 + 32) + 8), (v6 = *(v5 + 24)) != 0))
      {
        *(v5 + 24) = 0;

        CFRelease(v6);
      }
    }
  }
}

void sub_10003807C(uint64_t a1, char *filename)
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
    v6 = sub_1000382C4(v4, filename, v5, 0);
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
          v14 = *(a1 + 56);
          strerror(v11);
          SecCFCreateErrorWithFormat(v13, kCFErrorDomainPOSIX, 0, v14, 0, @"mkpath_np %s: [%d] %s", v15, v16, v9);
          *(*(*(a1 + 32) + 8) + 24) = 0;
        }
      }
    }

    v17 = *(*(a1 + 32) + 8);
    if (*(v17 + 24) == 1)
    {
      v18 = sub_1000382C4(*(a1 + 40), filename, 4194310, *(a1 + 56));
      v17 = *(*(a1 + 32) + 8);
    }

    else
    {
      v18 = 0;
    }

    *(v17 + 24) = v18;
    if (*(*(*(a1 + 32) + 8) + 24) == 1)
    {
      chmod(filename, *(*(*(a1 + 40) + 16) + 160));
      v19 = *(a1 + 48);
      if (v19)
      {
        *v19 = 1;
      }
    }
  }

  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    if (qword_100073940 != -1)
    {
      dispatch_once(&qword_100073940, &stru_100063FB8);
    }

    v20 = dword_100073948;
    if (dword_100073948)
    {
      v21 = *(a1 + 40);
      v22 = v21[8];

      sqlite3_trace_v2(v22, v20, sub_10003844C, v21);
    }
  }
}

BOOL sub_1000382C4(uint64_t a1, char *filename, uint64_t a3, CFTypeRef *a4)
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
      SecDbErrorWithDb(v11, ppDb, a4, @"open_v2 %s 0x%X", filename, a3);
      sqlite3_close(ppDb);
      ppDb = 0;
    }

    else
    {
      SecDbError(v11, a4, @"open_v2 %s 0x%X", filename, a3);
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

void sub_100038454(id a1)
{
  if (sub_10003853C())
  {
    dword_100073948 = 2;
  }

  if (sub_10003853C())
  {
    dword_100073948 = 1;
  }

  if (sub_10003853C())
  {
    dword_100073948 = 4;
  }

  v1 = secLogObjForScope("#SecDB");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    v2[0] = 67109120;
    v2[1] = dword_100073948;
    _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "sqlDb: sql trace mask: 0x%08x", v2, 8u);
  }
}

uint64_t sub_10003853C()
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

uint64_t sub_100038618(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

CFStringRef sub_10003864C(uint64_t a1)
{
  SecGetDebugDescriptionFormatOptions();
  v2 = "rw";
  if (*(a1 + 24))
  {
    v2 = "ro";
  }

  if (*(a1 + 64))
  {
    v3 = "open";
  }

  else
  {
    v3 = "closed";
  }

  return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"<SecDbConnection %s %s>", v2, v3);
}

CFStringRef sub_1000386D0(uint64_t a1)
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

void sub_100038748(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 && (v3 = sqlite3_close(v2)) != 0)
  {
    v9 = v3;
    v6 = secLogObjForScope("SecError");
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

void sub_1000388A0(uint64_t a1, const std::__fs::filesystem::path *a2)
{
  memset(__b, 170, sizeof(__b));
  snprintf(__b, 0x401uLL, "%s-iscorrupt", a2);
  memset(&v20, 0, sizeof(v20));
  if (!stat(__b, &v20))
  {
    v9 = secLogObjForScope("SecWarning");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v22 = __b;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SecDbSecDbProcessCorruptionMarker: found corruption marker %s", buf, 0xCu);
    }

    if (remove(__b, v10))
    {
      v12 = secLogObjForScope("SecError");
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
        v17 = secLogObjForScope("SecWarning");
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

      v18 = secLogObjForScope("SecError");
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
    v4 = secLogObjForScope("SecError");
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

void SecDbConnectionRelease(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v3 = *(a1 + 24);
    v4 = *(v2 + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_100038C64;
    block[3] = &unk_100063DC0;
    block[4] = a1;
    block[5] = v2;
    v7 = v3;
    dispatch_sync(v4, block);
    if (v3 == 1)
    {
      dispatch_semaphore_signal(*(v2 + 120));
    }

    else
    {
      pthread_mutex_unlock((v2 + 56));
    }

    CFRelease(a1);
    CFRelease(v2);
  }

  else
  {
    v5 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SecDbConnectionRelease called with NULL dbconn", buf, 2u);
    }
  }
}

void sub_100038C64(uint64_t a1)
{
  if (*(*(a1 + 32) + 48) == 1)
  {
    v2 = secLogObjForScope("SecWarning");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SecDbConnectionRelease: IO failure reported in connection, throwing away currently idle caches", &v20, 2u);
    }

    CFArrayRemoveAllValues(*(*(a1 + 40) + 40));
    CFArrayRemoveAllValues(*(*(a1 + 40) + 48));
  }

  else
  {
    Count = CFArrayGetCount(*(*(a1 + 40) + 48));
    v4 = CFArrayGetCount(*(*(a1 + 40) + 40)) + Count;
    v5 = 40;
    if (*(a1 + 48))
    {
      v5 = 48;
    }

    v6 = *(*(a1 + 40) + v5);
    v7 = CFArrayGetCount(v6);
    if (*(a1 + 48))
    {
      v8 = 5;
    }

    else
    {
      v8 = 1;
    }

    v9 = *(*(a1 + 40) + 166);
    if (v7 >= v8 || v4 >= v9)
    {
      if (v9 < 6)
      {
        v17 = secLogObjForScope("dbconn");
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v18 = "rw";
        if (*(a1 + 48))
        {
          v18 = "ro";
        }

        v19 = *(*(a1 + 40) + 166);
        v20 = 136315394;
        v21 = v18;
        v22 = 1024;
        v23 = v19;
        v13 = "releasing %s connection rather than storing in size %d cache";
        v14 = v17;
        v15 = 18;
      }

      else
      {
        v11 = secLogObjForScope("SecError");
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        if (*(a1 + 48))
        {
          v12 = "ro";
        }

        else
        {
          v12 = "rw";
        }

        v20 = 136315138;
        v21 = v12;
        v13 = "dbconn: did not expect to run out of room in the %s cache when releasing connection";
        v14 = v11;
        v15 = 12;
      }

      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, &v20, v15);
      return;
    }

    v16 = *(a1 + 32);

    CFArrayAppendValue(v6, v16);
  }
}

BOOL SecDbPerformRead(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  SecDbConnectionAcquireRefMigrationSafe(a1, 1, &v6, a2);
  v4 = v6;
  if (v6)
  {
    (*(a3 + 16))(a3, v6);
    SecDbConnectionRelease(v4);
  }

  return v4 != 0;
}

uint64_t SecDbPerformWrite(uint64_t a1, __CFString **a2, uint64_t a3)
{
  if (a1)
  {
    v6 = 0;
    SecDbConnectionAcquireRefMigrationSafe(a1, 0, &v6, a2);
    v4 = v6;
    if (v6)
    {
      (*(a3 + 16))(a3, v6);
      SecDbConnectionRelease(v4);
      return 1;
    }
  }

  else
  {
    SecError(-25291, a2, @"failed to get a db handle");
  }

  return 0;
}

BOOL SecDbBindBlob(sqlite3_stmt *a1, uint64_t a2, const void *a3, unint64_t a4, void (__cdecl *a5)(void *), CFTypeRef *a6)
{
  if (a4 >> 31)
  {
    return sub_100034ABC(18, a1, a6, @"bind_blob[%d]: blob bigger than INT_MAX", a2);
  }

  v10 = sqlite3_bind_blob(a1, a2, a3, a4, a5);
  return sub_100034ABC(v10, a1, a6, @"bind_blob[%d]", a2);
}

uint64_t SecDbBindObject(sqlite3_stmt *a1, uint64_t a2, const __CFString *cf, CFTypeRef *a4)
{
  v4 = &v26;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2000000000;
  v29 = 0;
  if (!cf)
  {
    goto LABEL_4;
  }

  v9 = CFGetTypeID(cf);
  if (v9 == CFNullGetTypeID())
  {
    v4 = v27;
LABEL_4:
    *(v4 + 24) = 1;
    goto LABEL_5;
  }

  if (v9 == CFStringGetTypeID())
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 0x40000000;
    v24[2] = sub_1000393FC;
    v24[3] = &unk_100063DE8;
    v24[4] = &v26;
    v24[5] = a1;
    v25 = a2;
    v24[6] = a4;
    sub_100033584(cf, v24);
    goto LABEL_5;
  }

  if (v9 == CFDataGetTypeID())
  {
    Length = CFDataGetLength(cf);
    if (Length)
    {
      v13 = Length;
      BytePtr = CFDataGetBytePtr(cf);
      v15 = SecDbBindBlob(a1, a2, BytePtr, v13, 0xFFFFFFFFFFFFFFFFLL, a4);
    }

    else
    {
      v19 = sqlite3_bind_text(a1, a2, "", 0, 0xFFFFFFFFFFFFFFFFLL);
      v15 = sub_100034ABC(v19, a1, a4, @"bind_text[%d]", a2);
    }

    goto LABEL_16;
  }

  if (v9 == CFDateGetTypeID())
  {
    AbsoluteTime = CFDateGetAbsoluteTime(cf);
    v17 = sqlite3_bind_double(a1, a2, AbsoluteTime);
    v15 = sub_100034ABC(v17, a1, a4, @"bind_double[%d]", a2);
LABEL_16:
    *(v27 + 24) = v15;
    goto LABEL_5;
  }

  if (v9 == CFBooleanGetTypeID())
  {
    Value = CFBooleanGetValue(cf);
    v15 = SecDbBindInt(a1, a2, Value, a4);
    goto LABEL_16;
  }

  if (v9 == CFNumberGetTypeID())
  {
    if (CFNumberIsFloatType(cf))
    {
      valuePtr = NAN;
      v20 = CFNumberGetValue(cf, kCFNumberDoubleType, &valuePtr);
      v21 = sub_100039034(a1, a2, a4, valuePtr);
    }

    else
    {
      valuePtr = -3.72066208e-103;
      v20 = CFNumberGetValue(cf, kCFNumberSInt64Type, &valuePtr);
      if (!v20)
      {
LABEL_26:
        if (v20)
        {
          goto LABEL_5;
        }

        v15 = SecDbError(2, a4, @"bind CFNumberGetValue failed for %@", cf);
        goto LABEL_16;
      }

      v21 = sub_1000390DC(a1, a2, *&valuePtr, a4);
    }

    *(v27 + 24) = v21;
    goto LABEL_26;
  }

  if (a4)
  {
    v22 = CFCopyTypeIDDescription(v9);
    SecDbError(20, a4, @"bind unsupported type %@", v22);
    if (v22)
    {
      CFRelease(v22);
    }
  }

LABEL_5:
  v10 = *(v27 + 24);
  _Block_object_dispose(&v26, 8);
  return v10;
}

BOOL sub_1000393FC(uint64_t a1, char *a2, unint64_t a3)
{
  v4 = *(a1 + 56);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (a3 >> 31)
  {
    result = sub_100034ABC(18, v6, v5, @"bind_text[%d]: text bigger than INT_MAX", *(a1 + 56));
  }

  else
  {
    v8 = sqlite3_bind_text(*(a1 + 40), v4, a2, a3, 0xFFFFFFFFFFFFFFFFLL);
    result = sub_100034ABC(v8, v6, v5, @"bind_text[%d]", v4);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t SecDbForEach(uint64_t a1, sqlite3_stmt *pStmt, CFTypeRef *a3, uint64_t a4)
{
  for (i = 0; ; i = (i + 1))
  {
    if (*(a1 + 24) == 1 && !sqlite3_stmt_readonly(pStmt))
    {
      v9 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = sqlite3_sql(pStmt);
        *buf = 136315138;
        v15 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SecDbForEach: SecDbConnection is readonly but we're about to write: %s", buf, 0xCu);
      }
    }

    v11 = sqlite3_step(pStmt);
    if (v11 != 100)
    {
      break;
    }

    if (a4)
    {
      if (((*(a4 + 16))(a4, i) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v12 = sqlite3_sql(pStmt);
      SecDbError(100, a3, @"step[%d]: %s returned SQLITE_ROW with NULL row block", i, v12);
    }
  }

  if (v11 == 101)
  {
    return 1;
  }

  sub_1000359F4(a1, v11, a3, @"SecDbForEach step[%d]", i);
  return 0;
}

void SecDbRecordChange(uint64_t a1, uint64_t a2, CFArrayRef a3)
{
  v6 = *(a1 + 16);
  os_unfair_lock_lock((v6 + 148));
  v7 = *(v6 + 152);
  os_unfair_lock_unlock((v6 + 148));
  if (!v7)
  {
    return;
  }

  if (a2 && a3)
  {
    *&v11 = a2;
    *(&v11 + 1) = a3;
    v8 = kCFAllocatorDefault;
    v9 = 2;
  }

  else
  {
    if (!a2)
    {
      if (!a3)
      {
        return;
      }

      CFRetain(a3);
      goto LABEL_8;
    }

    *&v11 = a2;
    v8 = kCFAllocatorDefault;
    v9 = 1;
  }

  a3 = CFArrayCreate(v8, &v11, v9, &kCFTypeArrayCallBacks);
  if (!a3)
  {
    return;
  }

LABEL_8:
  CFArrayAppendValue(*(a1 + 72), a3);
  CFRelease(a3);
  if ((*(a1 + 25) & 1) == 0)
  {
    v10 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v11) = 138412290;
      *(&v11 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "db %@ changed outside txn", &v11, 0xCu);
    }

    sub_1000372F4(a1, 2);
  }
}

BOOL SecPLShouldLogRegisteredEvent(void *a1)
{
  v1 = a1;
  v2 = sub_1000397E0() && off_100073950(77, v1) != 0;

  return v2;
}

BOOL sub_1000397E0()
{
  if (qword_100073968 != -1)
  {
    dispatch_once(&qword_100073968, &stru_100064080);
  }

  dispatch_source_merge_data(qword_100073970, 1uLL);
  return qword_100073978 != 0;
}

void sub_10003983C(id a1)
{
  v1 = sec_action_create("PowerLog enabled", 86400);
  v2 = qword_100073970;
  qword_100073970 = v1;

  v3 = qword_100073970;
  context = dispatch_get_context(qword_100073970);
  context[2] = _Block_copy(&stru_1000640A0);
  dispatch_activate(v3);
  v5 = secLogObjForScope("PLsetup");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting up PowerLog", v9, 2u);
  }

  v6 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, @"/System/Library/PrivateFrameworks/PowerLog.framework", kCFURLPOSIXPathStyle, 1u);
  if (v6)
  {
    v7 = v6;
    qword_100073978 = CFBundleCreate(kCFAllocatorDefault, v6);
    CFRelease(v7);
    if (qword_100073978)
    {
      off_100073950 = CFBundleGetFunctionPointerForName(qword_100073978, @"PLShouldLogRegisteredEvent");
      off_100073958 = CFBundleGetFunctionPointerForName(qword_100073978, @"PLLogRegisteredEvent");
      FunctionPointerForName = CFBundleGetFunctionPointerForName(qword_100073978, @"PLLogTimeSensitiveRegisteredEvent");
      qword_100073960 = FunctionPointerForName;
      if (!off_100073950 || !off_100073958 || !FunctionPointerForName)
      {
        CFRelease(qword_100073978);
        qword_100073978 = 0;
      }
    }
  }
}

void sub_1000399B4(id a1)
{
  v1 = secLogObjForScope("PLsetup");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    if (qword_100073978)
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

void SecPLLogRegisteredEvent(void *a1, void *a2)
{
  v4 = a1;
  v3 = a2;
  if (sub_1000397E0())
  {
    off_100073958(77, v4, v3, 0);
  }
}

uint64_t SecBucket2Significant(int64_t a1)
{
  v1 = 1;
  if (a1 >= 101)
  {
    v2 = a1;
    do
    {
      a1 = v2 / 0xA;
      v1 *= 10;
      v3 = v2 > 0x3F1;
      v2 /= 0xAuLL;
    }

    while (v3);
  }

  return v1 * a1;
}

uint64_t der_decode_number(const __CFAllocator *a1, CFNumberRef *a2, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4)
  {
    v20 = 0;
    v12 = ccder_decode_tl();
    if (v12 && (v13 = v12, a5 - v12 >= v20))
    {
      v19 = 0;
      v17 = CFNumberCreate(a1, kCFNumberLongLongType, &v19);
      *a2 = v17;
      if (v17)
      {
        return v13 + v20;
      }

      v14 = sSecDERErrorDomain[0];
      v15 = @"Number allocation failed";
      v16 = -3;
    }

    else
    {
      v14 = sSecDERErrorDomain[0];
      v15 = @"Unknown number encoding";
      v16 = -1;
    }
  }

  else
  {
    v14 = sSecDERErrorDomain[0];
    v15 = @"null input";
    v16 = -6;
  }

  SecCFCreateErrorWithFormat(v16, v14, 0, a3, 0, v15, a7, a8, v19);
  return 0;
}

uint64_t sub_100039D04(const __CFNumber *a1, CFTypeRef *a2)
{
  valuePtr = 0xAAAAAAAAAAAAAAAALL;
  if (CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr))
  {
    if (HIBYTE(valuePtr) - 255 <= 0xFFFFFF01)
    {
      v5 = 9;
      v6 = 48;
      do
      {
        if ((v5 - 2) < 2)
        {
          break;
        }

        v7 = valuePtr >> v6;
        --v5;
        v6 -= 8;
      }

      while (HIBYTE(valuePtr) == v7);
    }

    return ccder_sizeof();
  }

  else
  {
    SecCFCreateErrorWithFormat(-4, sSecDERErrorDomain[0], 0, a2, 0, @"Unable to get number from data", v3, v4, v9);
    return 0;
  }
}

uint64_t sub_100039DE4(const __CFNumber *a1, CFTypeRef *a2, uint64_t a3, uint64_t a4)
{
  valuePtr = 0xAAAAAAAAAAAAAAAALL;
  if (!CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr))
  {
    v15 = sSecDERErrorDomain[0];
    v16 = @"Unable to get number from data";
    v17 = -4;
LABEL_23:
    SecCFCreateErrorWithFormat(v17, v15, 0, a2, 0, v16, v7, v8, v21);
    return 0;
  }

  v9 = valuePtr;
  v10 = HIBYTE(valuePtr);
  if (HIBYTE(valuePtr) - 255 > 0xFFFFFF01)
  {
    v18 = 8;
    if (!a4)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v11 = 9;
    v12 = 48;
    v13 = 1;
    while ((v11 - 2) >= 2)
    {
      v14 = valuePtr >> v12;
      --v11;
      v12 -= 8;
      if (v10 != v14)
      {
        v13 = v11 - 1;
        goto LABEL_11;
      }
    }

    v11 = 2;
LABEL_11:
    if ((((valuePtr >> (8 * v13 - 8)) ^ v10) & 0x80) != 0)
    {
      v18 = v11;
    }

    else
    {
      v18 = v13;
    }

    if (!a4)
    {
      goto LABEL_22;
    }
  }

  if (a4 - a3 < v18)
  {
LABEL_22:
    v15 = sSecDERErrorDomain[0];
    v16 = @"Unknown size";
    v17 = -3;
    goto LABEL_23;
  }

  if (v18 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18;
  }

  do
  {
    *--a4 = v9;
    v9 >>= 8;
    --v19;
  }

  while (v19);
  valuePtr = v9;
  result = ccder_encode_tl();
  if (!result)
  {
    v15 = sSecDERErrorDomain[0];
    v16 = @"ccder failed to encode";
    v17 = -7;
    goto LABEL_23;
  }

  return result;
}

BOOL SecKernError(int a1, CFTypeRef *a2, CFStringRef format, ...)
{
  va_start(va, format);
  if (a1 && a2)
  {
    v5 = *a2;
    *a2 = 0;
    sub_100039FA8(a1, kCFErrorDomainMach, v5, a2, 0, format, va);
  }

  return a1 == 0;
}

void sub_100039FA8(CFIndex a1, const __CFString *a2, __CFString *cf, CFTypeRef *a4, CFDictionaryRef formatOptions, CFStringRef format, va_list arguments)
{
  if (!a4)
  {
    return;
  }

  if (*a4)
  {
    if (cf && *a4 != cf)
    {

      CFRelease(cf);
    }

    return;
  }

  v11 = CFStringCreateWithFormatAndArguments(0, formatOptions, format, arguments);
  v29 = 0;
  if (!cf)
  {
    goto LABEL_30;
  }

  v12 = CFErrorCopyUserInfo(cf);
  Value = CFDictionaryGetValue(v12, kCFErrorDescriptionKey);
  if (Value)
  {
    v14 = CFStringCompare(v11, Value, 0) == kCFCompareEqualTo;
    if (!v12)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v14 = 0;
  if (v12)
  {
LABEL_11:
    CFRelease(v12);
  }

LABEL_12:
  Code = CFErrorGetCode(cf);
  Domain = CFErrorGetDomain(cf);
  v17 = CFStringCompare(a2, Domain, 0);
  v19 = Code == a1 && v17 == kCFCompareEqualTo;
  v20 = cf;
  if (v19 && v14)
  {
    goto LABEL_19;
  }

  v22 = CFErrorCopyUserInfo(cf);
  if (v22)
  {
    v23 = v22;
    v24 = kSOSCountKey;
    if (CFDictionaryContainsKey(v22, kSOSCountKey) == 1)
    {
      v25 = CFDictionaryGetValue(v23, v24);
      if (v25)
      {
        valuePtr = 0;
        CFNumberGetValue(v25, kCFNumberLongType, &valuePtr);
        if (valuePtr > 199)
        {
          CFRelease(v23);
          v20 = cf;
LABEL_19:
          CFRetain(v20);
          *a4 = cf;
          CFRelease(cf);
          if (!v11)
          {
            return;
          }

          v21 = v11;
          goto LABEL_44;
        }

        v29 = valuePtr + 1;
      }
    }

    CFRelease(v23);
  }

LABEL_30:
  v26 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, &v29);
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v28 = Mutable;
  if (cf)
  {
    CFDictionaryAddValue(Mutable, kCFErrorUnderlyingErrorKey, cf);
  }

  if (v26)
  {
    CFDictionaryAddValue(v28, kSOSCountKey, v26);
  }

  if (v11)
  {
    CFDictionaryAddValue(v28, kCFErrorDescriptionKey, v11);
  }

  *a4 = CFErrorCreate(kCFAllocatorDefault, a2, a1, v28);
  if (v26)
  {
    CFRelease(v26);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (cf)
  {
    v21 = cf;
LABEL_44:
    CFRelease(v21);
  }
}

BOOL SecError(int a1, __CFString **a2, CFStringRef format, ...)
{
  va_start(va, format);
  if (a1)
  {
    cf = 0;
    if (a2)
    {
      sub_100039FA8(a1, kCFErrorDomainOSStatus, *a2, &cf, 0, format, va);
      *a2 = cf;
    }

    else
    {
      sub_100039FA8(a1, kCFErrorDomainOSStatus, 0, &cf, 0, format, va);
      v5 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v5);
      }
    }
  }

  return a1 == 0;
}

_DWORD *sub_10003A334(int a1)
{
  if (byte_100073980 != 1)
  {
    return 0;
  }

  v2 = malloc_type_malloc(0x18uLL, 0x100004067B37528uLL);
  if (!v2)
  {
    v8 = secLogObjForScope("SecError");
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
  if (qword_100073990 != -1)
  {
    dispatch_once(&qword_100073990, &stru_1000640E0);
  }

  v4 = qword_100073988;
  v5 = os_signpost_id_generate(qword_100073988);
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

void sub_10003A520(void *a1)
{
  if (byte_100073980 == 1)
  {
    if (a1)
    {
      if (qword_100073990 != -1)
      {
        dispatch_once(&qword_100073990, &stru_1000640E0);
      }

      v2 = qword_100073988;
      v3 = a1[1];
      v4 = v3 - 1;
      if (*(a1 + 16) == 1)
      {
        if (v4 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(qword_100073988))
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
        if (v4 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(qword_100073988))
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

    v7 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Passed NULL StatCtx", &v9, 2u);
    }
  }
}

void sub_10003A6C0(int a1)
{
  if (byte_100073980 == 1)
  {
    if (qword_100073990 != -1)
    {
      dispatch_once(&qword_100073990, &stru_1000640E0);
    }

    v2 = qword_100073988;
    v3 = os_signpost_id_generate(qword_100073988);
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

uint64_t der_decode_plist(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4)
  {
    if (ccder_decode_tag())
    {
      v10 = sSecDERErrorDomain[0];
      v11 = @"Unsupported DER Type";
      v12 = -2;
    }

    else
    {
      v10 = sSecDERErrorDomain[0];
      v11 = @"invalid tag";
      v12 = -1;
    }
  }

  else
  {
    v10 = sSecDERErrorDomain[0];
    v11 = @"null input";
    v12 = -6;
  }

  SecCFCreateErrorWithFormat(v12, v10, 0, a3, 0, v11, a7, a8, v13);
  return 0;
}

uint64_t der_sizeof_plist(const __CFString *a1, CFTypeRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v15 = sSecDERErrorDomain[0];
    v16 = @"Null CFType";
    goto LABEL_8;
  }

  v10 = CFGetTypeID(a1);
  if (CFArrayGetTypeID() == v10)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v12 = 0;
      v13 = Count + 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v13 - 2);
        v12 += der_sizeof_plist(ValueAtIndex, a2);
        --v13;
      }

      while (v13 > 1);
    }

    goto LABEL_14;
  }

  if (CFBooleanGetTypeID() == v10)
  {
LABEL_14:

    return ccder_sizeof();
  }

  if (CFDataGetTypeID() == v10)
  {
    Length = CFDataGetLength(a1);

    return _ccder_sizeof_raw_octet_string(Length);
  }

  if (CFDateGetTypeID() == v10)
  {
    CFDateGetAbsoluteTime(a1);
    __dtoa();
    __freedtoa();
    goto LABEL_14;
  }

  if (CFDictionaryGetTypeID() == v10)
  {

    return sub_100032D94(a1, a2);
  }

  if (CFSetGetTypeID() == v10)
  {

    return sub_10003CB94(a1, a2);
  }

  if (CFStringGetTypeID() == v10)
  {

    return sub_10003BAF8(a1);
  }

  if (CFNumberGetTypeID() != v10)
  {
    if (CFNullGetTypeID() == v10)
    {
      goto LABEL_14;
    }

    v15 = sSecDERErrorDomain[0];
    v16 = @"Unsupported CFType";
LABEL_8:
    SecCFCreateErrorWithFormat(-5, v15, 0, a2, 0, v16, a7, a8, v19);
    return 0;
  }

  return sub_100039D04(a1, a2);
}

uint64_t der_encode_plist_repair(const __CFString *a1, CFTypeRef *a2, uint64_t a3, UInt8 *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v21 = sSecDERErrorDomain[0];
    v22 = @"Null CFType";
LABEL_8:
    SecCFCreateErrorWithFormat(-5, v21, 0, a2, 0, v22, a7, a8, v30);
    return 0;
  }

  v13 = CFGetTypeID(a1);
  if (CFArrayGetTypeID() == v13)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v15 = Count + 1;
      v16 = a5;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v15 - 2);
        v16 = der_encode_plist_repair(ValueAtIndex, a2, a3, a4, v16);
        --v15;
      }

      while (v15 > 1);
    }

    goto LABEL_6;
  }

  if (CFBooleanGetTypeID() == v13)
  {
    CFBooleanGetValue(a1);
    ccder_encode_body();
LABEL_13:
    v18 = ccder_encode_tl();
LABEL_14:
    v23 = v18;
    if (!v18)
    {
      SecCFCreateErrorWithFormat(-7, sSecDERErrorDomain[0], 0, a2, 0, @"ccder failed to encode", v19, v20, v30);
    }

    return v23;
  }

  if (CFDataGetTypeID() == v13)
  {
    CFDataGetLength(a1);
    CFDataGetBytePtr(a1);
    ccder_encode_body();
    goto LABEL_13;
  }

  if (CFDateGetTypeID() == v13)
  {
    AbsoluteTime = CFDateGetAbsoluteTime(a1);
    sub_100034290(a2, a3, a4, a5, AbsoluteTime);
LABEL_6:
    v18 = ccder_encode_constructed_tl();
    goto LABEL_14;
  }

  if (CFDictionaryGetTypeID() == v13)
  {

    return sub_100032EEC(a1, a2, a3);
  }

  if (CFSetGetTypeID() == v13)
  {

    return sub_10003CC4C(a1, a2, a3);
  }

  if (CFStringGetTypeID() == v13)
  {

    return sub_10003BB78(a1, a2, a4, a5, v26, v27, v28, v29);
  }

  if (CFNumberGetTypeID() == v13)
  {

    return sub_100039DE4(a1, a2, a4, a5);
  }

  if (CFNullGetTypeID() != v13)
  {
    v21 = sSecDERErrorDomain[0];
    v22 = @"Unsupported CFType";
    goto LABEL_8;
  }

  return sub_10003CB30(a2);
}

__CFData *CFPropertyListCreateDERData(uint64_t a1, const __CFString *a2, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = der_sizeof_plist(a2, a3, a3, a4, a5, a6, a7, a8);
  Mutable = CFDataCreateMutable(0, v10);
  CFDataSetLength(Mutable, v10);
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  if (!der_encode_plist_repair(a2, a3, 0, MutableBytePtr, &MutableBytePtr[v10], v13, v14, v15) && Mutable)
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

CFTypeRef CFPropertyListCreateWithDERData(uint64_t a1, CFDataRef theData, uint64_t a3, void *a4, CFTypeRef *a5)
{
  cf = 0;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v11 = &BytePtr[Length];
  v15 = der_decode_plist(a1, &cf, a5, BytePtr, &BytePtr[Length], v12, v13, v14);
  if (!v15 || v15 == v11)
  {
    if (a4)
    {
      *a4 = 400;
    }
  }

  else
  {
    SecCFCreateErrorWithFormat(-1, sSecDERErrorDomain[0], 0, a5, 0, @"trailing garbage after plist item", v16, v17, v20);
    v18 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v18);
    }
  }

  return cf;
}

void sub_10003B6F0(uint64_t a1)
{
  dispatch_release(*a1);
  v2 = *(a1 + 16);
  if (v2)
  {
    _Block_release(v2);
  }

  free(a1);
}

void sub_10003B738(uint64_t a1)
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

NSObject *sec_action_create(const char *a1, uint64_t a2)
{
  v3 = dispatch_queue_create(a1, 0);
  v4 = dispatch_source_create(&_dispatch_source_type_data_add, 0, 0, v3);
  v5 = malloc_type_malloc(0x20uLL, 0x10A0040A7A12BA5uLL);
  *v5 = v3;
  v5[1] = v4;
  v5[2] = 0;
  v5[3] = a2;
  dispatch_set_context(v4, v5);
  dispatch_source_set_event_handler_f(v4, sub_10003B738);
  dispatch_set_finalizer_f(v4, sub_10003B6F0);
  return v4;
}

void sec_action_set_handler(NSObject *a1, const void *a2)
{
  context = dispatch_get_context(a1);
  context[2] = _Block_copy(a2);

  dispatch_activate(a1);
}

__CFData *sub_10003B8C0(const __CFAllocator *a1, CFIndex *a2)
{
  Mutable = CFDataCreateMutable(a1, *a2);
  CFDataSetLength(Mutable, *a2);
  CFDataGetMutableBytePtr(Mutable);
  ccdigest();
  return Mutable;
}

__CFData *CFDataCopySHA1Digest(const __CFData *a1)
{
  CFDataGetLength(a1);
  v2 = CFGetAllocator(a1);
  CFDataGetBytePtr(a1);
  v3 = ccsha1_di();

  return sub_10003B8C0(v2, v3);
}

__CFData *CFDataCopySHA256Digest(const __CFData *a1)
{
  CFDataGetLength(a1);
  v2 = CFGetAllocator(a1);
  CFDataGetBytePtr(a1);
  v3 = ccsha256_di();

  return sub_10003B8C0(v2, v3);
}

const UInt8 *der_decode_string(const __CFAllocator *a1, CFStringRef *a2, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4)
  {
    v12 = ccder_decode_tl();
    if (v12 && (v13 = v12, a5 - v12 >= 0))
    {
      v18 = CFStringCreateWithBytes(a1, v12, 0, 0x8000100u, 0);
      *a2 = v18;
      if (v18)
      {
        return v13;
      }

      v14 = sSecDERErrorDomain[0];
      v15 = @"String allocation failed";
      v16 = -3;
    }

    else
    {
      v14 = sSecDERErrorDomain[0];
      v15 = @"Unknown string encoding";
      v16 = -1;
    }
  }

  else
  {
    v14 = sSecDERErrorDomain[0];
    v15 = @"null input";
    v16 = -6;
  }

  SecCFCreateErrorWithFormat(v16, v14, 0, a3, 0, v15, a7, a8, v19);
  return 0;
}

uint64_t sub_10003BAF8(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  usedBufLen = 0;
  v6.location = 0;
  v6.length = Length;
  CFStringGetBytes(a1, v6, 0x8000100u, 0, 0, 0, MaximumSizeForEncoding, &usedBufLen);
  return ccder_sizeof();
}

uint64_t sub_10003BB78(const __CFString *a1, CFTypeRef *a2, UInt8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4)
  {
    Length = CFStringGetLength(a1);
    v18 = 0;
    v19.location = 0;
    v19.length = Length;
    if (CFStringGetBytes(a1, v19, 0x8000100u, 0, 0, a3, a4 - a3, &v18) == Length)
    {
      ccder_encode_body();
      result = ccder_encode_tl();
      if (result)
      {
        return result;
      }

      v14 = sSecDERErrorDomain[0];
      v15 = @"ccder failed to encode";
      v16 = -7;
    }

    else
    {
      v14 = sSecDERErrorDomain[0];
      v15 = @"String extraction failed";
      v16 = -5;
    }
  }

  else
  {
    v14 = sSecDERErrorDomain[0];
    v15 = @"null input";
    v16 = -6;
  }

  SecCFCreateErrorWithFormat(v16, v14, 0, a2, 0, v15, a7, a8, usedBufLen);
  return 0;
}

uint64_t der_decode_BOOLean(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4)
  {
    ccder_decode_tl();
    v9 = sSecDERErrorDomain[0];
    v10 = @"Unknown BOOLean encoding";
    v11 = -1;
  }

  else
  {
    v9 = sSecDERErrorDomain[0];
    v10 = @"null input";
    v11 = -6;
  }

  SecCFCreateErrorWithFormat(v11, v9, 0, a3, 0, v10, a7, a8, v13);
  return 0;
}

const UInt8 *der_decode_data(const __CFAllocator *a1, CFDataRef *a2, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4)
  {
    v12 = ccder_decode_tl();
    if (v12 && (v13 = v12, a5 - v12 >= 0))
    {
      v18 = CFDataCreate(a1, v12, 0);
      *a2 = v18;
      if (v18)
      {
        return v13;
      }

      v14 = sSecDERErrorDomain[0];
      v15 = @"Failed to create data";
      v16 = -3;
    }

    else
    {
      v14 = sSecDERErrorDomain[0];
      v15 = @"Unknown data encoding";
      v16 = -1;
    }
  }

  else
  {
    v14 = sSecDERErrorDomain[0];
    v15 = @"null input";
    v16 = -6;
  }

  SecCFCreateErrorWithFormat(v16, v14, 0, a3, 0, v15, a7, a8, v19);
  return 0;
}

uint64_t SecKeychainMoveUserDb()
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = -67585;
  v0 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.security.KeychainDBMover"];
  v1 = secLogObjForScope("SecKeychainMoveUserDb");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "moverCxn: %@", buf, 0xCu);
  }

  v2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___KeychainDBMoverProtocol];
  [v0 setRemoteObjectInterface:v2];

  [v0 resume];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003C0C0;
  v9[3] = &unk_100064108;
  v9[4] = &v10;
  v3 = [v0 synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003C194;
  v8[3] = &unk_100064108;
  v8[4] = &v10;
  [v3 moveUserDbWithReply:v8];

  [v0 invalidate];
  v4 = secLogObjForScope("SecKeychainMoveUserDb");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(v11 + 6);
    *buf = 67109120;
    LODWORD(v15) = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "returning %d", buf, 8u);
  }

  v6 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v6;
}

void sub_10003C0C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SecKeychainMoveUserDb: remote object failed with error: %@", &v5, 0xCu);
  }

  *(*(*(a1 + 32) + 8) + 24) = [v3 code];
}

void sub_10003C194(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SecKeychainMoveUserDb: replied with error: %@", &v6, 0xCu);
    }

    LODWORD(v3) = [v4 code];
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
}

void sub_10003C404(uint64_t a1, void *a2)
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

void sub_10003C5A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10003C5C0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) containsObject:a2];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void sub_10003C75C(uint64_t a1, void *a2, void *a3)
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

uint64_t der_decode_null(uint64_t a1, CFNullRef *a2, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4)
  {
    result = ccder_decode_tl();
    if (result)
    {
      *a2 = kCFNull;
      return result;
    }

    v11 = sSecDERErrorDomain[0];
    v12 = @"Unknown null encoding";
    v13 = -1;
  }

  else
  {
    v11 = sSecDERErrorDomain[0];
    v12 = @"null input";
    v13 = -6;
  }

  SecCFCreateErrorWithFormat(v13, v11, 0, a3, 0, v12, a7, a8, v14);
  return 0;
}

uint64_t sub_10003CB30(CFTypeRef *a1)
{
  v4 = ccder_encode_tl();
  if (!v4)
  {
    SecCFCreateErrorWithFormat(-7, sSecDERErrorDomain[0], 0, a1, 0, @"ccder failed to encode", v2, v3, v6);
  }

  return v4;
}

uint64_t sub_10003CB94(const __CFSet *a1, uint64_t a2)
{
  v3 = xmmword_1000458A0;
  v4 = a2;
  CFSetApplyFunction(a1, sub_10003CBFC, &v3);
  if (v3 == 1)
  {
    return ccder_sizeof();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10003CBFC(uint64_t result, uint64_t a2)
{
  if (*a2 == 1)
  {
    result = der_sizeof_plist(result, *(a2 + 16));
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

uint64_t sub_10003CC4C(const __CFSet *a1, CFTypeRef *a2, char a3)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v13[0] = 0xAAAAAAAAAAAAAA01;
  v13[1] = a2;
  BYTE1(v13[0]) = a3;
  v13[2] = Mutable;
  v13[3] = 0;
  CFSetApplyFunction(a1, sub_10003CE94, v13);
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
  CFArraySortValues(Mutable, v14, sub_10003CDD8, 0);
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
    SecCFCreateErrorWithFormat(-7, sSecDERErrorDomain[0], 0, a2, 0, @"ccder failed to encode", v11, v12, v13[0]);
    return 0;
  }

  return result;
}

uint64_t sub_10003CDD8(const __CFData *a1, const __CFData *a2)
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

void sub_10003CE94(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a2 == 1)
  {
    v10 = der_sizeof_plist(a1, *(a2 + 8), a3, a4, a5, a6, a7, a8);
    if (!v10)
    {
      *a2 = 0;
      return;
    }

    v11 = v10;
    Mutable = CFDataCreateMutable(*(a2 + 24), v10);
    CFDataSetLength(Mutable, v11);
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    v14 = der_encode_plist_repair(a1, *(a2 + 8), *(a2 + 1), MutableBytePtr, &MutableBytePtr[v11]);
    if (v14)
    {
      v16.length = v14 - MutableBytePtr;
      v16.location = 0;
      CFDataDeleteBytes(Mutable, v16);
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

uint64_t sub_10003CF7C()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10003D014;
  block[3] = &unk_1000641A0;
  block[4] = &qword_1000739A0;
  if (qword_100073998 != -1)
  {
    dispatch_once(&qword_100073998, block);
  }

  return qword_1000739A0;
}

dispatch_queue_t sub_10003D014(uint64_t a1)
{
  result = dispatch_queue_create("AKS Lock Assertion Queue", 0);
  **(a1 + 32) = result;
  return result;
}

BOOL sub_10003D04C(_BOOL8 result)
{
  v1 = result;
  if (!dword_1000739A8)
  {
    v2 = secLogObjForScope("lockassertions");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(v1 + 40);
      v5 = 134217984;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Requesting lock assertion for %lld seconds", &v5, 0xCu);
    }

    result = [SecMockAKS isLocked:6];
    if (result)
    {
      v4 = -536870174;
    }

    else
    {
      v4 = 0;
    }

    *(*(*(v1 + 32) + 8) + 24) = v4;
  }

  if (!*(*(*(v1 + 32) + 8) + 24))
  {
    ++dword_1000739A8;
  }

  return result;
}

void sub_10003D150(uint64_t a1)
{
  v3 = dword_1000739A8;
  if (dword_1000739A8)
  {
    --dword_1000739A8;
    if (v3 == 1)
    {
      v7 = v1;
      v8 = v2;
      v5 = secLogObjForScope("lockassertions");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Dropping lock assertion", v6, 2u);
      }

      *(*(*(a1 + 32) + 8) + 24) = 0;
    }
  }
}

BOOL SecAKSDoWithKeybagLockAssertion(int a1, CFTypeRef *a2, uint64_t a3)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v6 = sub_10003CF7C();
  block = _NSConcreteStackBlock;
  v12 = 0x40000000;
  v13 = sub_10003D04C;
  v14 = &unk_1000641D0;
  v15 = &v18;
  v16 = 60;
  v17 = a1;
  dispatch_sync(v6, &block);
  v7 = SecKernError(*(v19 + 6), a2, @"Kern return error");
  _Block_object_dispose(&v18, 8);
  v8 = 0;
  if (v7)
  {
    (*(a3 + 16))(a3);
    v18 = 0;
    v19 = &v18;
    v20 = 0x2000000000;
    v21 = 0;
    v9 = sub_10003CF7C();
    block = _NSConcreteStackBlock;
    v12 = 0x40000000;
    v13 = sub_10003D150;
    v14 = &unk_1000641F8;
    v15 = &v18;
    LODWORD(v16) = a1;
    dispatch_sync(v9, &block);
    v8 = SecKernError(*(v19 + 6), a2, @"Kern return error");
    _Block_object_dispose(&v18, 8);
  }

  return v8;
}

uint64_t SecAKSSanitizedKeyclass(uint64_t a1)
{
  v1 = a1;
  if (a1 < 32)
  {
    return a1;
  }

  v2 = a1 & 0x1F;
  v3 = secLogObjForScope("SanitizeKeyclass");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5[0] = 67109376;
    v5[1] = v1;
    v6 = 1024;
    v7 = v2;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "sanitizing request for keyclass %d to keyclass %d", v5, 0xEu);
  }

  return v2;
}

uint64_t SecSupportsEnhancedApfs()
{
  if (qword_1000739D0 != -1)
  {
    dispatch_once(&qword_1000739D0, &stru_1000642B8);
  }

  if (byte_1000739C8)
  {
    return 1;
  }

  if (qword_1000739E0 != -1)
  {
    dispatch_once(&qword_1000739E0, &stru_1000642F8);
  }

  return byte_1000739D8;
}

void sub_10003D4BC(id a1)
{
  __len = 1023;
  bzero(__big, 0x400uLL);
  if (!sysctlbyname("kern.bootargs", __big, &__len, 0, 0) && strnstr(__big, "-apfs_shared_datavolume", __len))
  {
    byte_1000739D8 = 1;
  }

  v1 = secLogObjForScope("eapfs");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v4 = byte_1000739D8;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "eapfs boot-arg set to %{BOOL}d", buf, 8u);
  }
}

void sub_10003D5BC(id a1)
{
  v1 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/filesystems");
  if (v1)
  {
    v2 = v1;
    CFProperty = IORegistryEntryCreateCFProperty(v1, @"e-apfs", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      CFRelease(CFProperty);
      byte_1000739C8 = 1;
    }

    IOObjectRelease(v2);
  }

  v4 = secLogObjForScope("eapfs");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = byte_1000739C8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "eapfs IODT set to %{BOOL}d", v5, 8u);
  }
}

uint64_t SecIsEduMode()
{
  if (qword_1000739B0 != -1)
  {
    dispatch_once(&qword_1000739B0, &stru_100064238);
  }

  return byte_1000739AC;
}

void sub_10003D704(id a1)
{
  v1 = MKBUserTypeDeviceMode();
  if (v1)
  {
    v2 = v1;
    value = 0;
    if (CFDictionaryGetValueIfPresent(v1, kMKBDeviceModeKey[0], &value))
    {
      if (CFEqual(value, kMKBDeviceModeSharedIPad))
      {
        byte_1000739AC = 1;
      }
    }

    CFRelease(v2);
  }

  else
  {
    v3 = secLogObjForScope("edumode");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Cannot determine because deviceMode is NULL", v4, 2u);
    }
  }
}