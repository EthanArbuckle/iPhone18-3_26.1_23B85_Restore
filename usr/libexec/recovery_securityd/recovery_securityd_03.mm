uint64_t SecSeparateUserKeychain()
{
  if (qword_1000739C0 != -1)
  {
    dispatch_once(&qword_1000739C0, &stru_100064278);
  }

  return byte_1000739B8;
}

void sub_10003D808(id a1)
{
  byte_1000739B8 = _os_feature_enabled_impl();
  v1 = secLogObjForScope("keychain");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_1000739B8)
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

CFURLRef sub_10003D8E0(int a1, uint64_t a2)
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

CFURLRef SecCopyURLForFileInUserScopedKeychainDirectory(uint64_t a1)
{
  if (qword_1000739C0 != -1)
  {
    dispatch_once(&qword_1000739C0, &stru_100064278);
  }

  v2 = byte_1000739B8;
  syslog(5, "SecCopyURLForFileInParameterizedKeychainDirectory: forceUserScope:%d", byte_1000739B8);

  return sub_10003D8E0(v2 ^ 1u, a1);
}

uint64_t __security_simulatecrash(uint64_t a1, int a2)
{
  v4 = secLogObjForScope("SecError");
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

uint64_t __security_stackshotreport(uint64_t a1, int a2)
{
  v4 = secLogObjForScope("SecError");
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

void sub_10003DC0C(size_t size, uint64_t a2)
{
  if (size)
  {
    if (size > 0x800)
    {
      v5 = malloc_type_malloc(size, 0x2B51245EuLL);
      (*(a2 + 16))(a2, size, v5);
      if (v5)
      {

        free(v5);
      }
    }

    else
    {
      __chkstk_darwin();
      memset(&v6 - ((size + 15) & 0xFFFFFFFFFFFFFFF0), 170, size);
      (*(a2 + 16))(a2, size, &v6 - ((size + 15) & 0xFFFFFFFFFFFFFFF0));
    }
  }

  else
  {
    v4 = *(a2 + 16);

    v4(a2, 0, 0);
  }
}

xpc_object_t SecCreateXPCObjectWithCFError(__CFError *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  Domain = CFErrorGetDomain(a1);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 0x40000000;
  v21[2] = sub_10003DF0C;
  v21[3] = &unk_100064318;
  v21[4] = v2;
  v21[5] = "domain";
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 0x40000000;
  v22[2] = sub_100033794;
  v22[3] = &unk_100063AE0;
  v22[4] = v21;
  sub_100033584(Domain, v22);
  Code = CFErrorGetCode(a1);
  xpc_dictionary_set_int64(v2, "code", Code);
  v5 = CFErrorCopyUserInfo(a1);
  v12 = der_sizeof_plist(v5, 0, v6, v7, v8, v9, v10, v11);
  if (v12)
  {
    v13 = v12;
    v14 = malloc_type_malloc(v12, 0xD5244697uLL);
    v15 = &v14[v13];
    v19 = der_encode_plist_repair(v5, 0, 0, v14, v15, v16, v17, v18);
    if (v19)
    {
      xpc_dictionary_set_data(v2, "userinfo", v19, v15 - v19);
    }

    free(v14);
  }

  CFRelease(v5);
  return v2;
}

__CFData *sub_10003DF1C(CFMutableDictionaryRef *a1, _BYTE *a2, __CFString **a3)
{
  v6 = sub_100002EFC(a2);
  if ((~*(a2 + 4) & 0xALL) != 0 || (Value = CFDictionaryGetValue(a1[6], v6)) == 0)
  {
    v9 = sub_100001BA0(a1, a2, a3);
    if (v9)
    {
      v8 = sub_10003DFE0(a2, v9, a3);
      if (v8 && (a2[16] & 8) != 0)
      {
        CFDictionarySetValue(a1[6], v6, v8);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = Value;
    CFRetain(Value);
  }

  return v8;
}

__CFData *sub_10003DFE0(uint64_t a1, const __CFNull *a2, __CFString **a3)
{
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = kCFNull;
  }

  if (CFEqual(v5, kCFNull) && (*(a1 + 16) & 1) != 0)
  {
    v6 = sub_10000188C(a1, a3);
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    v6 = CFRetain(v5);
  }

  if ((*(a1 + 16) & 8) == 0 || CFEqual(v6, kCFNull))
  {
    return v6;
  }

  v9 = sub_100001414(v6);
  if (v9)
  {
    v10 = v9;
    v7 = CFDataCopySHA1Digest(v9);
    if (v6)
    {
      CFRelease(v6);
    }

    v6 = v10;
  }

  else
  {
    SecError(-26276, a3, @"failed to get attribute %@ data", *a1);
    v7 = 0;
    if (!v6)
    {
      return v7;
    }
  }

  CFRelease(v6);
  return v7;
}

void sub_10003E100(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Preserving existing data for %@", &v3, 0xCu);
}

BOOL sub_10003E190(const void *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = SecTokenItemValueCopy();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Value = CFDictionaryGetValue(v3, @"oid");
  if (a1 && Value)
  {
    v6 = CFEqual(a1, Value) != 0;
  }

  else
  {
    v6 = Value == a1;
  }

  CFRelease(v4);
  return v6;
}

const __CFData *sub_10003E210(sqlite3_stmt *a1, uint64_t a2, int a3, const __CFArray *a4, const void **a5, void *a6, _DWORD *a7, __CFString **a8)
{
  result = sub_1000103D8(a1, a3);
  if (result)
  {
    v15 = result;
    v16 = sub_100023808(result, a2, a4, a5, a6, a7, a8);
    CFRelease(v15);
    return v16;
  }

  return result;
}

BOOL sub_10003E2C0(sqlite3_stmt *a1, const __CFString *cf, CFTypeRef *a3, uint64_t a4)
{
  if (SecDbBindObject(a1, 1, cf, a3))
  {
    SecDbStep(a4, a1, a3, &stru_100059DB0);
  }

  return SecDbFinalize(a1, a3);
}

void sub_10003E328(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "SecServerPromoteAppClipItemsToParentApp SecDbItemInsertOrReplace %d", v2, 8u);
}

void sub_10003E3A0(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = 134218242;
  v5 = a2;
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Could not export item for rowid %llu: %@", &v4, 0x16u);
}

uint64_t sub_10003E440(uint64_t a1, uint64_t a2, const __CFData *a3, const __CFData *Length, uint64_t a5, CFErrorRef *a6)
{
  v18 = 0;
  Constraint = SecAccessControlGetConstraint();
  if (Constraint && kCFBooleanTrue)
  {
    if (CFEqual(Constraint, kCFBooleanTrue))
    {
LABEL_4:
      v10 = 0;
LABEL_12:
      v12 = 1;
      goto LABEL_13;
    }
  }

  else if (Constraint == kCFBooleanTrue)
  {
    goto LABEL_4;
  }

  if (!a3)
  {
    sub_100011A30(a6, 0);
    v12 = 0;
    v10 = 0;
    goto LABEL_13;
  }

  v10 = SecAccessControlCopyData();
  if (Length)
  {
    BytePtr = CFDataGetBytePtr(Length);
    Length = CFDataGetLength(Length);
  }

  else
  {
    BytePtr = 0;
  }

  v17 = 0;
  v13 = CFDataGetBytePtr(a3);
  v14 = CFDataGetLength(a3);
  aks_operation_optional_params(BytePtr, Length, 0, 0, v13, v14, &v18, &v17);
  v15 = aks_ref_key_delete();
  if (!v15)
  {
    goto LABEL_12;
  }

  sub_100011D68(v15, @"odel", 0, 0, v10, a3, a6);
  v12 = 0;
LABEL_13:
  if (v18)
  {
    free(v18);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v12;
}

void sub_10003E64C(uint64_t a1, const char *a2)
{
  v7 = +[NSAssertionHandler currentHandler];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromSelector(a2);
  [v7 handleFailureInMethod:a2 object:a1 file:@"SecDbKeychainMetadataKeyStore.m" lineNumber:335 description:{@"re-entering -[%@ %@] - that shouldn't happen!", v5, v6}];
}

void sub_10003E710(uint64_t *a1)
{
  v1 = *a1;
  v2 = 134217984;
  v3 = v1;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "securityd have written more then %llu", &v2, 0xCu);
}

void sub_10003E7D8()
{
  v0 = secLogObjForScope("SecCritical");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "com.apple.securityd";
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "security failed to register xpc listener for %s, exiting", &v1, 0xCu);
  }

  abort();
}

void sub_10003E848(uint64_t *a1, uint64_t a2, NSObject *a3)
{
  v5 = *a1;
  v6 = 138412802;
  v7 = v5;
  v8 = 2112;
  v9 = sub_10002B91C(a2);
  v10 = 2048;
  v11 = a2;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "XPC [%@] operation: %@ (%llu)", &v6, 0x20u);
}

unint64_t sub_10003E928(uint64_t a1, NSObject *a2, uint64_t a3, CFDictionaryRef theDict)
{
  if (a2[22].isa)
  {
    Value = CFDictionaryGetValue(theDict, kSecAttrIssuer);
    if (!sub_100019C50(a1, a3, a2[16].isa, Value, a2[22].isa, 10))
    {
      return 0;
    }
  }

  if (!a2[26].isa || (isa = a2->isa, isa != sub_10001725C()) && (v10 = a2->isa, v10 != sub_100017224()))
  {
    v11 = 0;
    goto LABEL_7;
  }

  v47 = sub_10002179C();
  if (!v47)
  {
    return 0;
  }

  v11 = v47;
  v48 = a2[26].isa;
  v49 = a2[27].isa;
  trust = 0;
  values[0] = v47;
  if (!v48)
  {
    goto LABEL_77;
  }

  result = -1431655766;
  v50 = CFArrayCreate(0, values, 1, &kCFTypeArrayCallBacks);
  if (SecTrustCreateWithCertificates(v50, v48, &trust) || v49 && (v51 = CFGetTypeID(v49), v51 == CFDateGetTypeID()) && SecTrustSetVerifyDate(trust, v49))
  {
    v56 = 0;
    goto LABEL_100;
  }

  v52 = SecPolicyCopyProperties(v48);
  v53 = v52;
  if (v52)
  {
    v54 = CFDictionaryGetValue(v52, kSecPolicyOid);
    if (v54)
    {
      v55 = v54;
      if (CFEqual(v54, kSecPolicyAppleX509Basic) || CFEqual(v55, kSecPolicyAppleRevocation))
      {
        if (SecTrustEvaluate(trust, &result))
        {
          v56 = 0;
LABEL_99:
          CFRelease(v53);
          goto LABEL_100;
        }

        goto LABEL_92;
      }
    }
  }

  if (!SecTrustEvaluateLeafOnly())
  {
LABEL_92:
    v56 = result == kSecTrustResultUnspecified || result == kSecTrustResultProceed;
    if (v53)
    {
      goto LABEL_99;
    }

    goto LABEL_100;
  }

  v56 = 0;
  if (v53)
  {
    goto LABEL_99;
  }

LABEL_100:
  if (v50)
  {
    CFRelease(v50);
  }

  if (trust)
  {
    CFRelease(trust);
    if (!v56)
    {
      goto LABEL_77;
    }
  }

  else if (!v56)
  {
    goto LABEL_77;
  }

LABEL_7:
  if (!a2[27].isa)
  {
    goto LABEL_10;
  }

  v12 = a2->isa;
  if (v12 != sub_10001725C())
  {
    v13 = a2->isa;
    if (v13 != sub_100017224())
    {
      goto LABEL_10;
    }
  }

  if (!v11)
  {
    v11 = sub_10002179C();
    if (!v11)
    {
      return 0;
    }
  }

  v32 = a2[27].isa;
  if (!v32)
  {
    goto LABEL_77;
  }

  AbsoluteTime = CFDateGetAbsoluteTime(v32);
  SecCertificateNotValidBefore();
  v35 = v34;
  SecCertificateNotValidAfter();
  if (v35 == 0.0 || (v36 != 0.0 ? (v37 = v35 == v36) : (v37 = 1), v37))
  {
    v41 = secLogObjForScope("FilterWithDate");
    if (!sub_10002176C(v41))
    {
      goto LABEL_77;
    }

    LOWORD(values[0]) = 0;
    v40 = "certificate cannot operate";
    goto LABEL_63;
  }

  if (AbsoluteTime < v35)
  {
    v38 = secLogObjForScope("FilterWithDate");
    if (!sub_10002176C(v38))
    {
      goto LABEL_77;
    }

    LOWORD(values[0]) = 0;
    v40 = "certificate is not valid yet";
LABEL_63:
    sub_100021754(&_mh_execute_header, a2, v39, v40, values);
    goto LABEL_77;
  }

  if (AbsoluteTime > v36)
  {
    v46 = secLogObjForScope("FilterWithDate");
    if (!sub_10002176C(v46))
    {
      goto LABEL_77;
    }

    LOWORD(values[0]) = 0;
    v40 = "certificate expired";
    goto LABEL_63;
  }

LABEL_10:
  if (a2[29].isa)
  {
    v14 = a2->isa;
    if (v14 == sub_10001725C() || (v15 = a2->isa, v15 == sub_100017224()))
    {
      if (!v11)
      {
        v11 = sub_10002179C();
        if (!v11)
        {
          return 0;
        }
      }

      v16 = CFBooleanGetValue(a2[29].isa);
      values[0] = v11;
      if (v16)
      {
        v17 = CFArrayCreate(0, values, 1, &kCFTypeArrayCallBacks);
        trust = 0;
        BasicX509 = SecPolicyCreateBasicX509();
        v20 = BasicX509 && !SecTrustCreateWithCertificates(v17, BasicX509, &trust) && (result = -1431655766, !SecTrustEvaluate(trust, &result)) && (result == kSecTrustResultUnspecified || result == kSecTrustResultProceed);
        if (trust)
        {
          CFRelease(trust);
        }

        if (BasicX509)
        {
          CFRelease(BasicX509);
        }

        if (v17)
        {
          CFRelease(v17);
        }

        if (!v20)
        {
          goto LABEL_77;
        }
      }
    }
  }

  if (!a2[28].isa)
  {
    goto LABEL_47;
  }

  v21 = a2->isa;
  if (v21 != sub_10001725C())
  {
    v22 = a2->isa;
    if (v22 != sub_100017224())
    {
      goto LABEL_47;
    }
  }

  if (!v11)
  {
    v11 = sub_10002179C();
    if (!v11)
    {
      return 0;
    }
  }

  v23 = a2[28].isa;
  if (!v23)
  {
    goto LABEL_77;
  }

  v24 = CFGetTypeID(a2[28].isa);
  if (v24 != CFStringGetTypeID())
  {
    goto LABEL_77;
  }

  values[0] = 0;
  if (SecCertificateCopyEmailAddresses(v11, values) || !values[0])
  {
    goto LABEL_77;
  }

  Count = CFArrayGetCount(values[0]);
  if (Count < 1)
  {
    if (values[0])
    {
      CFRelease(values[0]);
    }

    goto LABEL_77;
  }

  v26 = Count;
  v27 = 0;
  v28 = 1;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(values[0], v27);
    if (ValueAtIndex && CFStringCompare(v23, ValueAtIndex, 1uLL) == kCFCompareEqualTo)
    {
      break;
    }

    v28 = ++v27 < v26;
  }

  while (v26 != v27);
  if (values[0])
  {
    CFRelease(values[0]);
  }

  if (!v28)
  {
LABEL_77:
    HasSuffix = 0;
LABEL_78:
    CFRelease(v11);
    return HasSuffix;
  }

LABEL_47:
  if (!a2[31].isa)
  {
    goto LABEL_49;
  }

  v30 = a2->isa;
  if (v30 != sub_100017208())
  {
    goto LABEL_49;
  }

  v42 = CFDictionaryGetValue(theDict, kSecAttrServer);
  if (!v42)
  {
    return 0;
  }

  v43 = v42;
  v44 = CFGetTypeID(v42);
  if (v44 != CFStringGetTypeID())
  {
    return 0;
  }

  HasSuffix = a2[31].isa;
  if (HasSuffix)
  {
    if (CFEqual(v43, HasSuffix))
    {
      goto LABEL_49;
    }

    Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
    CFStringAppend(Mutable, @".");
    CFStringAppend(Mutable, HasSuffix);
    HasSuffix = CFStringHasSuffix(v43, Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (HasSuffix)
    {
LABEL_49:
      HasSuffix = 1;
      if (!v11)
      {
        return HasSuffix;
      }

      goto LABEL_78;
    }
  }

  return HasSuffix;
}

SecCertificateRef sub_10003EEE4(__CFString ***a1, const __CFDictionary *a2)
{
  v4 = *a1;
  if (v4 == sub_10001725C())
  {
    Value = CFDictionaryGetValue(a2, @"certdata");
    v8 = @"certtkid";
  }

  else
  {
    v5 = *a1;
    if (v5 != sub_100017224())
    {
      return 0;
    }

    Value = CFDictionaryGetValue(a2, kSecValueData);
    v8 = kSecAttrTokenID;
  }

  v9 = CFDictionaryGetValue(a2, v8);
  if (!Value)
  {
    return 0;
  }

  if (v9)
  {
    v10 = SecTokenItemValueCopy();
    if (v10)
    {
      v11 = v10;
      v12 = CFDictionaryGetValue(v10, @"data");
      if (v12)
      {
        v6 = SecCertificateCreateWithData(kCFAllocatorDefault, v12);
      }

      else
      {
        v16 = secLogObjForScope("SecError");
        if (sub_10002176C(v16))
        {
          LOWORD(v18) = 0;
          sub_100021754(&_mh_execute_header, a2, v17, "token item doesn't contain token value data", &v18);
        }

        v6 = 0;
      }

      CFRelease(v11);
      return v6;
    }

    v14 = secLogObjForScope("SecError");
    if (sub_100021720(v14))
    {
      v18 = 138412290;
      v19 = 0;
      sub_1000216FC(&_mh_execute_header, Value, v15, "function SecTokenItemValueCopy failed with: %@", &v18);
    }

    return 0;
  }

  return SecCertificateCreateWithData(kCFAllocatorDefault, Value);
}

uint64_t sub_10003F0E8(const __CFArray *a1, uint64_t a2, CFTypeRef *a3)
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = 1;
  if (qword_1000737F0 != -1)
  {
    dispatch_once(&qword_1000737F0, &stru_100062A88);
  }

  v29 = sub_100017208();
  v30 = sub_10001712C();
  v31 = sub_100017240();
  v32 = sub_100017224();
  if (a1 && (v7 = CFGetTypeID(a1), v7 == CFArrayGetTypeID()))
  {
    if (CFArrayGetCount(a1))
    {
      sub_1000216DC();
      v19 = 0x40000000;
      v20 = sub_10001D260;
      v21 = &unk_100062AB0;
      v22 = &v25;
      v23 = a3;
      v24 = a1;
      v33.length = CFArrayGetCount(a1);
      v33.location = 0;
      CFArrayApplyFunction(a1, v33, sub_10001E348, context);
      if (*(v26 + 24) == 1)
      {
        v10 = sub_100021738();
        v14 = sub_1000199E0(v10, v11, v12, a3, v13);
        *(v26 + 24) = v14;
      }
    }

    else
    {
      *(v26 + 24) = 0;
      SecCFCreateErrorWithFormat(1, sSecXPCErrorDomain, 0, a3, 0, @"accessGroups e empty", v8, v9, v17);
    }
  }

  else
  {
    *(v26 + 24) = 0;
    SecCFCreateErrorWithFormat(1, sSecXPCErrorDomain, 0, a3, 0, @"accessGroups not CFArray, got %@", v5, v6, a1);
  }

  v15 = *(v26 + 24);
  _Block_object_dispose(&v25, 8);
  return v15;
}

uint64_t sub_10003F32C(uint64_t a1)
{
  v2 = 0;
  cf = 0;
  do
  {
    v3 = sub_10002A0E4(*(*(a1 + 32) + v2), *(*(a1 + 40) + 24), 0, *(a1 + 40), *(a1 + 48));
    if (v3)
    {
      sub_10000C3A0(*(a1 + 56), v3, *(a1 + 64), &cf);
    }

    sub_100029F58(v3, *(a1 + 48));
    v4 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v4);
    }

    v2 += 8;
  }

  while (v2 != 32);
  return 1;
}

void sub_10003F3C0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  cf = 0;
  ++*(*(*(a1 + 32) + 8) + 24);
  *(a2 + 16) = *(a1 + 48);
  v6 = sub_100002404(a2, kSecAttrAccessible);
  v7 = v6;
  if (v6 && kSecAttrAccessibleAlwaysPrivate)
  {
    if (!CFEqual(v6, kSecAttrAccessibleAlwaysPrivate))
    {
      goto LABEL_6;
    }
  }

  else if (v6 != kSecAttrAccessibleAlwaysPrivate)
  {
LABEL_6:
    if (v7 && kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate)
    {
      if (CFEqual(v7, kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate))
      {
        goto LABEL_9;
      }
    }

    else if (v7 == kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate)
    {
      goto LABEL_9;
    }

    *(a2 + 40) = 5;
    goto LABEL_14;
  }

LABEL_9:
  sub_100001CF0(a2, 1, &cf);
  sub_100021714();
  *(v8 + 24) &= v9;
  sub_100021714();
  if (*(v10 + 24) == 1)
  {
    v11 = sub_100001820(*(a2 + 16), 7, *(a1 + 56));
    sub_100002090(a2, v11, kCFNull, *(a1 + 56));
    sub_100021714();
    v14 = v13 & *(v12 + 24);
    *(v12 + 24) = v14;
    if (v14)
    {
LABEL_14:
      v15 = sub_100002404(a2, kSecAttrAccessGroup);
      if (v15 && kSecAttrAccessGroupToken)
      {
        if (!CFEqual(v15, kSecAttrAccessGroupToken))
        {
LABEL_20:
          if ((sub_1000057E0(a2, *(a1 + 64), 0, 0, &cf) & 1) == 0)
          {
            v16 = secLogObjForScope("SecError");
            if (sub_100021784(v16))
            {
              *buf = 138478083;
              v32 = a2;
              v33 = 2112;
              v34 = cf;
              _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "item: %{private}@ insert during upgrade: %@", buf, 0x16u);
            }

            sub_100021714();
            *(v17 + 24) = 0;
          }

          goto LABEL_24;
        }
      }

      else if (v15 != kSecAttrAccessGroupToken)
      {
        goto LABEL_20;
      }

      if (!sub_100002404(a2, kSecAttrTokenID))
      {
        v27 = secLogObjForScope("upgr");
        if (sub_100021784(v27))
        {
          *buf = 138477827;
          v32 = a2;
          sub_1000216FC(&_mh_execute_header, v7, v28, "dropping item during schema upgrade due to agrp=com.apple.token: %{private}@", buf);
        }

        goto LABEL_24;
      }

      goto LABEL_20;
    }
  }

LABEL_24:
  if (!cf)
  {
    goto LABEL_50;
  }

  OSStatus = SecErrorGetOSStatus();
  switch(OSStatus)
  {
    case -536870186:
    case -536870184:
      goto LABEL_37;
    case -26275:
      goto LABEL_36;
    case -25330:
    case -25308:
      goto LABEL_36;
    case -25291:
LABEL_37:
      v23 = secLogObjForScope("upgr");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32 = cf;
        sub_1000216FC(&_mh_execute_header, v23, v24, "Bailing in phase 1 because AKS is unavailable: %@", buf);
      }

      goto LABEL_39;
  }

  if (OSStatus != -25299)
  {
LABEL_39:
    v25 = cf;
    if (cf)
    {
      CFRetain(cf);
      v26 = *(a1 + 56);
      if (v26 && !*v26)
      {
        *v26 = v25;
      }

      else
      {
        CFRelease(v25);
      }
    }

    v21 = *(*(a1 + 40) + 8);
    v22 = *(v21 + 24);
    if (v25)
    {
      v22 = 0;
    }

    goto LABEL_48;
  }

LABEL_36:
  sub_100021714();
  v22 = 1;
LABEL_48:
  *(v21 + 24) = v22;
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_50:
  sub_100021714();
  *a3 = *(v29 + 24) ^ 1;
}

uint64_t sub_10003F75C(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = 0;
  err = 0;
  v42[0] = kSecClassGenericPassword;
  v42[1] = kSecClassInternetPassword;
  v42[2] = kSecClassCertificate;
  v42[3] = kSecClassKey;
  do
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 80);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v37 = *(a1 + 40);
    v14 = sub_10000DA5C(kCFAllocatorDefault, a2, a3, a4, a5, a6, a7, a8, kSecClass, v42[v9]);
    v15 = sub_10002A574(v14, *(v13 + 24), -1, v13, &err);
    CFRelease(v14);
    if (v15)
    {
      if (!v11)
      {
        goto LABEL_9;
      }

      if (*(v13 + 16))
      {
        v16 = *(v15 + 128);
        if (v16)
        {
          *(v15 + 128) = 0;
          CFRelease(v16);
        }

        *(v15 + 128) = sub_1000291DC();
        v17 = secLogObjForScope("SecItemDeleteTokenItems");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "use system keychain", buf, 2u);
        }

LABEL_9:
        sub_10002A738(v15, v12);
        v18 = sub_10000C3A0(v10, v15, v12, &err);
        if (sub_10002A060(v15, v18, &err))
        {
          goto LABEL_15;
        }

        goto LABEL_12;
      }

      if (SecError(-34018, &err, @"client doesn't have entitlement for system keychain"))
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    Code = CFErrorGetCode(err);
    v20 = err;
    if (Code != -25300)
    {
      if (err)
      {
        v36 = *(a1 + 64);
        if (v36 && !*v36)
        {
          result = 0;
          *v36 = err;
          return result;
        }

        CFRelease(err);
      }

      return 0;
    }

    if (err)
    {
      err = 0;
      CFRelease(v20);
    }

LABEL_15:
    ++v9;
  }

  while (v9 != 4);
  v21 = *(a1 + 72);
  if (!v21 || CFArrayGetCount(v21) < 1)
  {
    return 1;
  }

  v22 = 0;
  while (1)
  {
    v38 = v22;
    allocator = *(a1 + 32);
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v22);
    v24 = *(a1 + 80);
    v25 = *(a1 + 48);
    v26 = *(a1 + 56);
    v27 = *(a1 + 64);
    if (CFArrayGetCount(v25) >= 1)
    {
      break;
    }

LABEL_35:
    v22 = v38 + 1;
    if (v38 + 1 >= CFArrayGetCount(*(a1 + 72)))
    {
      return 1;
    }
  }

  v28 = 0;
  while (1)
  {
    result = sub_10002A574(ValueAtIndex, *(v26 + 24), 0, v26, v27);
    if (!result)
    {
      return result;
    }

    v30 = result;
    if (v24)
    {
      if (*(v26 + 16) != 1)
      {
        result = SecError(-34018, v27, @"client doesn't have entitlement for system keychain");
        if (!result)
        {
          return result;
        }

        goto LABEL_35;
      }

      v31 = *(result + 128);
      if (v31)
      {
        *(v30 + 128) = 0;
        CFRelease(v31);
      }

      v32 = sub_1000291DC();
      *(v30 + 128) = v32;
      sub_100029840(&off_10005A578, v32, v30);
      v33 = secLogObjForScope("SecItemAddTokenItemToAccessGroups");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "use system keychain", buf, 2u);
      }
    }

    v34 = CFArrayGetValueAtIndex(v25, v28);
    sub_100029AD0(kSecAttrAccessGroup, v34, v30);
    sub_100029E38(v30, v34);
    if (*(v30 + 40))
    {
      v35 = 0;
    }

    else
    {
      sub_10000B8D8(v30, 1);
      v35 = sub_100009A7C(allocator, v30, 0, v27);
    }

    if ((sub_10002A060(v30, v35, v27) & 1) == 0)
    {
      return 0;
    }

    if (++v28 >= CFArrayGetCount(v25))
    {
      goto LABEL_35;
    }
  }
}

void sub_10003FB70()
{
  v0 = secLogObjForScope("upgr");
  if (sub_100021720(v0))
  {
    sub_1000216CC();
    _os_log_impl(v1, v2, v3, v4, v5, 2u);
  }

  sub_100010DEC();
}

void sub_10003FBCC(uint64_t a1)
{
  v3 = secLogObjForScope("upgr");
  if (sub_10002176C(v3))
  {
    *v5 = 0;
    sub_100021754(&_mh_execute_header, v1, v4, "created new db, setting edu bag version", v5);
  }

  sub_100019854(a1);
}

void sub_10003FCD8()
{
  v0 = secLogObjForScope("keychainbackup");
  if (sub_100021720(v0))
  {
    sub_1000216CC();
    _os_log_impl(v1, v2, v3, v4, v5, 0x12u);
  }
}

void sub_10003FDA0(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 8);
  v4 = *(v3 + 24);
  if (v4)
  {
    *(v3 + 24) = 0;
    CFRelease(v4);
  }

  *(*(*a2 + 8) + 24) = 1;
}

void sub_10003FDE8()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_10003FE04(uint64_t a1, uint64_t a2)
{
  v3 = secLogObjForScope("SecError");
  if (sub_100021720(v3))
  {
    v9 = *(*(*a2 + 8) + 24);
    sub_1000216CC();
    _os_log_impl(v4, v5, v6, v7, v8, 0x12u);
  }
}

void sub_10003FEC0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(*(*a1 + 8) + 24);
    sub_100021748();
    sub_1000216FC(&_mh_execute_header, v6, v8, "upgrade: Setting version failed: %@", v9);
  }

  *a3 = a2;
}

BOOL sub_10003FF78(uint64_t *a1, uint64_t *a2)
{
  v4 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a1;
    sub_100021748();
    sub_1000216FC(&_mh_execute_header, v4, v6, "upgr: failed to process custom indexes: %@", v9);
  }

  v7 = *a1;
  *a2 = *a1;
  return v7 == 0;
}

void sub_100040030(const void *a1, uint64_t a2)
{
  CFRetain(a1);
  v4 = *(a2 + 48);
  if (v4 && !*v4)
  {
    *v4 = a1;
  }

  else
  {
    CFRelease(a1);
  }
}

void sub_100040078(uint64_t a1)
{
  v2 = secLogObjForScope("SecError");
  if (sub_100021720(v2))
  {
    v3 = *(*a1 + 24);
    sub_100021748();
    sub_1000216CC();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  abort();
}

uint64_t sub_1000400E8(uint64_t a1, char a2, const __CFData *a3, __CFString **a4)
{
  cf = 0;
  theDict = 0;
  v53 = 0;
  v8 = sub_100002E20(a1);
  v9 = sub_100002E28(a1);
  if (!sub_10002226C(v8, v9, *(a1 + 64), &cf, *(a1 + 56), a3, *(a1 + 16), *(a1 + 72), &theDict, &v53, a2, 0, a4))
  {
    goto LABEL_64;
  }

  if (v53 > 1)
  {
    if (theDict)
    {
      v32 = sub_100002FD8(a1, theDict, a4);
LABEL_43:
      v31 = v32;
      goto LABEL_60;
    }

    goto LABEL_41;
  }

  CFDictionaryGetValue(theDict, @"v_Data");
  v10 = sub_100024BBC();
  if (!sub_100003054(v10, v11, v12, a4))
  {
    goto LABEL_41;
  }

  v13 = sub_100002404(a1, kSecAttrAccessGroup);
  v14 = sub_100024BBC();
  v16 = sub_100002404(v14, v15);
  if (!v13)
  {
    goto LABEL_59;
  }

  v17 = v16;
  v18 = CFGetTypeID(v13);
  if (v18 != CFStringGetTypeID() || v17 == 0)
  {
    goto LABEL_59;
  }

  v20 = CFGetTypeID(v17);
  if (v20 != CFStringGetTypeID())
  {
    goto LABEL_59;
  }

  v21 = sub_1000024A8(a1);
  if (v21 == sub_10001712C() && CFEqual(v17, kSecAttrAccessibleAlwaysPrivate))
  {
    v33 = sub_100002404(a1, kSecAttrService);
    if (!v33)
    {
      goto LABEL_59;
    }

    v34 = v33;
    v35 = CFGetTypeID(v33);
    if (v35 != CFStringGetTypeID() || !CFEqual(v13, @"apple"))
    {
      goto LABEL_59;
    }

    if (CFEqual(v34, @"AirPort"))
    {
      goto LABEL_53;
    }

    if (CFEqual(v34, @"com.apple.airplay.password"))
    {
      goto LABEL_70;
    }

    if (!CFEqual(v34, @"YouTube"))
    {
      v36 = sub_100002404(a1, kSecAttrDescription);
      if (!sub_100009130(v36) || !CFEqual(v36, @"IPSec Shared Secret") && !CFEqual(v36, @"PPP Password"))
      {
        goto LABEL_59;
      }

LABEL_53:
      v37 = &kSecAttrAccessibleAfterFirstUnlock;
LABEL_71:
      v46 = *v37;
      v47 = sub_100024BBC();
LABEL_72:
      v32 = sub_100003054(v47, v48, v49, a4);
      goto LABEL_43;
    }

    v50 = sub_100024BBC();
    if (sub_100003054(v50, v51, v52, a4))
    {
      v49 = @"com.apple.youtube.credentials";
      v47 = a1;
      v48 = kSecAttrAccessGroup;
      goto LABEL_72;
    }

LABEL_41:
    v31 = 0;
    goto LABEL_60;
  }

  v22 = sub_1000024A8(a1);
  if (v22 == sub_100017208() && CFEqual(v17, kSecAttrAccessibleAlwaysPrivate))
  {
    if (CFEqual(v13, @"PrintKitAccessGroup"))
    {
      goto LABEL_70;
    }

    if (CFEqual(v13, @"apple"))
    {
      v23 = sub_100002404(a1, kSecAttrProtocol);
      if (sub_100024B30(v23))
      {
        valuePtr = -1431655766;
        CFNumberGetValue(v23, kCFNumberSInt32Type, &valuePtr);
        if (valuePtr != 1718907000 && valuePtr != 1752461432 && valuePtr != 1752462200 && valuePtr != 1920234360 && valuePtr != 2020635750 && valuePtr != 2020635752 && valuePtr != 2020832370 && valuePtr != 2020832360)
        {
          goto LABEL_59;
        }

        goto LABEL_70;
      }

      if (sub_100009130(v23) && (CFEqual(v23, kSecAttrProtocolHTTPProxy) || CFEqual(v23, kSecAttrProtocolHTTPSProxy) || CFEqual(v23, kSecAttrProtocolRTSPProxy) || CFEqual(v23, kSecAttrProtocolFTPProxy)))
      {
LABEL_70:
        v37 = &kSecAttrAccessibleWhenUnlocked;
        goto LABEL_71;
      }
    }
  }

LABEL_59:
  v31 = 1;
LABEL_60:
  v38 = sub_1000405A0(a1, a4);
  if (!v38)
  {
LABEL_64:
    v31 = 0;
    goto LABEL_65;
  }

  v39 = v38;
  Protection = SecAccessControlGetProtection();
  v41 = SecAccessControlGetProtection();
  if (!CFEqual(Protection, v41))
  {
    v42 = SecAccessControlGetProtection();
    v43 = SecAccessControlGetProtection();
    v31 = SecError(-26275, a4, @"ACL protection doesn't match the one in blob (%@ : %@)", v42, v43);
  }

  CFRelease(v39);
LABEL_65:
  v44 = sub_1000032AC(a1, cf, 0);
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v44 & v31;
}

const void *sub_1000405A0(void **a1, __CFString **a2)
{
  v4 = sub_100001820(a1[2], 15, a2);
  v5 = sub_100001BA0(a1, v4, a2);
  v6 = sub_100001820(a1[2], 14, a2);
  v7 = sub_100001BA0(a1, v6, a2);
  v8 = 0;
  if (v5)
  {
    v9 = v7;
    if (v7)
    {
      if (!CFEqual(v5, kCFNull))
      {
        CFGetAllocator(a1);
        v11 = SecAccessControlCreateFromData();
        if (!v11)
        {
          return 0;
        }

        v10 = v11;
        if (CFEqual(v9, kCFNull))
        {
          v12 = 0;
          goto LABEL_18;
        }

LABEL_9:
        CFGetAllocator(a1);
        v12 = SecAccessControlCreate();
        if (!v12 || !SecAccessControlSetProtection())
        {
          v18 = 0;
          v8 = 0;
          if (!v10)
          {
LABEL_20:
            if (!v12)
            {
              return v8;
            }

            goto LABEL_23;
          }

LABEL_19:
          CFRelease(v10);
          v8 = v18;
          goto LABEL_20;
        }

        if (!v10)
        {
          CFRetain(v12);
          v8 = v12;
LABEL_23:
          CFRelease(v12);
          return v8;
        }

        Protection = SecAccessControlGetProtection();
        v14 = SecAccessControlGetProtection();
        v15 = v14;
        if (!Protection || !v14 || !CFEqual(Protection, v14))
        {
          v16 = secLogObjForScope("SecError");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v20 = 138412546;
            v21 = Protection;
            v22 = 2112;
            v23 = v15;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "SecDbItemCopyAccessControl accc %@ != pdmn %@, setting pdmn to accc value", &v20, 0x16u);
          }

          __security_simulatecrash(@"Corrupted item on decrypt accc != pdmn", 1405091842);
          v17 = sub_100001820(a1[2], 14, a2);
          if (!sub_100002090(a1, v17, Protection, a2))
          {
            v18 = 0;
            goto LABEL_19;
          }
        }

LABEL_18:
        CFRetain(v10);
        v18 = v10;
        goto LABEL_19;
      }

      v10 = 0;
      v8 = 0;
      if (!CFEqual(v9, kCFNull))
      {
        goto LABEL_9;
      }
    }
  }

  return v8;
}

void sub_10004083C(uint64_t *a1, int a2)
{
  v4 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (a1)
    {
      v5 = *a1;
    }

    else
    {
      v5 = 0;
    }

    v6[0] = 67109378;
    v6[1] = a2;
    v7 = 2112;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "decode v%d failed: %@", v6, 0x12u);
  }
}

void sub_100040910(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 userPersonaNickName];
  v6 = 134218242;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "securityd client(%p): persona user %@", &v6, 0x16u);
}

void sub_100040B80(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Found current item for (%@: %@)", &v3, 0x16u);
}

void sub_100040C08(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Keychain DB path %@", &v2, 0xCu);
}

void sub_100040CD0(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SecDbKeychainItemV7.m" lineNumber:360 description:{@"Invalid parameter not satisfying: %@", @"tamperCheck"}];
}

void sub_100040D60(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "wrapToAKS: Key diversification feature persona(musr) %@ is data separated", &v2, 0xCu);
}

void sub_100040DD8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "unwrapFromAKS: Key diversification feature persona(musr) %@ is data separated", &v2, 0xCu);
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, const char *);
  return _CFCalendarDecomposeAbsoluteTime(calendar, at, v3);
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v3 = _CFUUIDGetUUIDBytes(uuid);
  v2 = *&v3.byte8;
  v1 = *&v3.byte0;
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}