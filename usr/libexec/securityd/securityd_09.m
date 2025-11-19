void sub_100183344(uint64_t a1, const void *a2)
{
  v4 = *(*(a1 + 40) + 8 * CFDictionaryGetValue(*(a1 + 32), a2) + 8);
  Value = CFDictionaryGetValue(*(a1 + 48), a2);
  v6 = **(*(a1 + 56) + 8 * Value + 8);
  CFStringAppendFormat(*(a1 + 64), 0, @"ALTER TABLE %@ RENAME TO %@_old;", v6, *v4);
  v7 = *(a1 + 72);

  CFArrayAppendValue(v7, Value);
}

void sub_1001833E0(uint64_t a1, const void *a2, int a3)
{
  if (!CFSetContainsValue(*(a1 + 32), a2) && !CFDictionaryContainsKey(*(a1 + 40), a2))
  {
    CFStringAppendFormat(*(a1 + 56), 0, @"DROP TABLE IF EXISTS %@;", **(*(a1 + 48) + 8 * a3 + 8));
  }
}

void sub_100183458(uint64_t a1, const void *a2, int a3)
{
  if (!CFSetContainsValue(*(a1 + 32), a2) && !CFDictionaryContainsKey(*(a1 + 40), a2))
  {
    CFStringAppendFormat(*(a1 + 56), 0, @"DROP TABLE IF EXISTS %@;", **(*(a1 + 48) + 8 * a3 + 8));
    v6 = *(a1 + 64);

    CFArrayAppendValue(v6, a3);
  }
}

void sub_100183508(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  cf = 0;
  ++*(*(*(a1 + 32) + 8) + 24);
  *(a2 + 16) = *(a1 + 48);
  v6 = sub_100015B5C(a2, kSecAttrAccessible);
  v7 = v6;
  if (v6)
  {
    v8 = kSecAttrAccessibleAlwaysPrivate == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (v6 == kSecAttrAccessibleAlwaysPrivate)
    {
      goto LABEL_17;
    }

LABEL_9:
    if (v7)
    {
      v10 = kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (v7 == kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate)
      {
        goto LABEL_17;
      }
    }

    else if (CFEqual(v7, kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate))
    {
      goto LABEL_17;
    }

    *(a2 + 40) = 5;
    goto LABEL_19;
  }

  if (!CFEqual(v6, kSecAttrAccessibleAlwaysPrivate))
  {
    goto LABEL_9;
  }

LABEL_17:
  *(*(*(a1 + 40) + 8) + 24) &= sub_100016898(a2, 1, &cf);
  if (*(*(*(a1 + 40) + 8) + 24) != 1)
  {
    goto LABEL_32;
  }

  v12 = sub_100016514(*(a2 + 16), 7, *(a1 + 56));
  v13 = sub_1000154A0(a2, v12, kCFNull, *(a1 + 56));
  v14 = *(*(a1 + 40) + 8);
  v15 = v13 & *(v14 + 24);
  *(v14 + 24) = v15;
  if ((v15 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_19:
  v16 = sub_100015B5C(a2, kSecAttrAccessGroup);
  if (v16)
  {
    v17 = kSecAttrAccessGroupToken == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    if (v16 != kSecAttrAccessGroupToken)
    {
      goto LABEL_28;
    }
  }

  else if (!CFEqual(v16, kSecAttrAccessGroupToken))
  {
LABEL_28:
    v19 = *(a1 + 64);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_10001E9B0;
    v31 = &unk_100338910;
    v32 = a2;
    v33 = 0;
    if ((sub_10001AA4C(a2, v19, &cf, buf) & 1) == 0)
    {
      v20 = sub_100006274("SecError");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138478083;
        *&buf[4] = a2;
        *&buf[12] = 2112;
        *&buf[14] = cf;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "item: %{private}@ insert during upgrade: %@", buf, 0x16u);
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
    }

    goto LABEL_32;
  }

  if (sub_100015B5C(a2, kSecAttrTokenID))
  {
    goto LABEL_28;
  }

  v23 = sub_100006274("upgr");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    *&buf[4] = a2;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "dropping item during schema upgrade due to agrp=com.apple.token: %{private}@", buf, 0xCu);
  }

LABEL_32:
  if (!cf)
  {
    goto LABEL_57;
  }

  OSStatus = SecErrorGetOSStatus();
  if (OSStatus <= -25331)
  {
    if (OSStatus != -536870186 && OSStatus != -536870184)
    {
      v22 = -26275;
      goto LABEL_44;
    }

LABEL_46:
    v26 = sub_100006274("upgr");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = cf;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Bailing in phase 1 because AKS is unavailable: %@", buf, 0xCu);
    }

    goto LABEL_48;
  }

  if (OSStatus > -25300)
  {
    if (OSStatus != -25291)
    {
      v22 = -25299;
LABEL_44:
      if (OSStatus == v22)
      {
        goto LABEL_45;
      }

LABEL_48:
      v27 = cf;
      if (cf)
      {
        CFRetain(cf);
        v28 = *(a1 + 56);
        if (v28 && !*v28)
        {
          *v28 = v27;
        }

        else
        {
          CFRelease(v27);
        }
      }

      v24 = *(*(a1 + 40) + 8);
      v25 = *(v24 + 24);
      if (v27)
      {
        v25 = 0;
      }

      goto LABEL_55;
    }

    goto LABEL_46;
  }

  if (OSStatus != -25330)
  {
    v22 = -25308;
    goto LABEL_44;
  }

LABEL_45:
  v24 = *(*(a1 + 40) + 8);
  v25 = 1;
LABEL_55:
  *(v24 + 24) = v25;
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_57:
  *a3 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
}

uint64_t sub_1001839A0(uint64_t a1, __CFString *a2, _BYTE *a3)
{
  sub_100009A48(a2, a3);
  CFStringAppendFormat(a2, 0, @"NOT %@ IN (?,?)", **(a1 + 32));
  return 1;
}

uint64_t sub_1001839FC(uint64_t a1, sqlite3_stmt *a2, uint64_t a3)
{
  v3 = a3;
  result = sub_10000CBCC(a2, a3, kSecAttrAccessibleAlwaysPrivate, *(a1 + 32));
  if (result)
  {
    v7 = kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate;
    v8 = *(a1 + 32);

    return sub_10000CBCC(a2, (v3 + 1), v7, v8);
  }

  return result;
}

void sub_100183A84(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  err = 0;
  ++*(*(*(a1 + 32) + 8) + 24);
  if (sub_100016898(a2, 1, &err))
  {
    v6 = sub_100016514(*(a2 + 16), 7, *(a1 + 48));
    v7 = sub_1000154A0(a2, v6, kCFNull, &err);
    *(*(*(a1 + 40) + 8) + 24) = v7;
    if (!v7)
    {
      goto LABEL_50;
    }

    v8 = sub_100015B5C(a2, kSecAttrAccessGroup);
    if (v8)
    {
      v9 = kSecAttrAccessGroupToken == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if (v8 != kSecAttrAccessGroupToken)
      {
        goto LABEL_12;
      }
    }

    else if (!CFEqual(v8, kSecAttrAccessGroupToken))
    {
      goto LABEL_12;
    }

    if (!sub_100015B5C(a2, kSecAttrTokenID))
    {
      v20 = sub_100006274("upgr");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        *&buf[4] = a2;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "dropping item during item upgrade due to agrp=com.apple.token: %{private}@", buf, 0xCu);
      }

      off_10039D5C8();
      v12 = sub_1000170C8(a2, *v21, kCFBooleanFalse, 0, &err);
      goto LABEL_13;
    }

LABEL_12:
    off_10039D5C8();
    v12 = sub_10001CECC(a2, a2, *v11, 0, *(*(a1 + 56) + 155), &err);
LABEL_13:
    *(*(*(a1 + 40) + 8) + 24) = v12;
  }

  if (!err)
  {
    goto LABEL_52;
  }

  Code = CFErrorGetCode(err);
  if (Code <= -25309)
  {
    if (Code <= -26276)
    {
      if (Code != -536870186 && Code != -536870184)
      {
        goto LABEL_36;
      }

LABEL_34:
      **(a1 + 64) = 1;
      v17 = sub_100006274("upgr");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = err;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Bailing in phase 2 because AKS is unavailable: %@", buf, 0xCu);
      }

      goto LABEL_36;
    }

    if (Code == -26275)
    {
      *buf = 0;
      off_10039D5C8();
      sub_1000170C8(a2, *v25, kCFBooleanFalse, 0, buf);
      v26 = *buf;
      if (*buf)
      {
        *buf = 0;
        CFRelease(v26);
      }
    }

    else if (Code != -25330)
    {
      goto LABEL_36;
    }

    goto LABEL_46;
  }

  if (Code > -25292)
  {
    if (Code == -25291)
    {
      goto LABEL_34;
    }

    if (Code == 19)
    {
      Domain = CFErrorGetDomain(err);
      if (!CFEqual(@"com.apple.utilities.sqlite3", Domain))
      {
        v28 = sub_100006274("SecError");
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138478083;
          *&buf[4] = a2;
          v31 = 2112;
          v32 = err;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Received SQLITE_CONSTRAINT with wrong error domain. Huh? Item: %{private}@, error: %@", buf, 0x16u);
        }

        goto LABEL_50;
      }

      v14 = sub_100006274("upgr");
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_46;
      }

      *buf = 138477827;
      *&buf[4] = a2;
      v15 = "Received SQLITE_CONSTRAINT -- ignoring: %{private}@";
      goto LABEL_33;
    }

LABEL_36:
    v18 = err;
    if (err)
    {
      CFRetain(err);
      v19 = *(a1 + 48);
      if (v19 && !*v19)
      {
        *v19 = v18;
      }

      else
      {
        CFRelease(v18);
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = v18 == 0;
    goto LABEL_50;
  }

  if (Code != -25308)
  {
    if (Code == -25299)
    {
      v14 = sub_100006274("upgr");
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
LABEL_46:
        v24 = *(*(a1 + 40) + 8);
        goto LABEL_47;
      }

      *buf = 138477827;
      *&buf[4] = a2;
      v15 = "Ignoring duplicate item: %{private}@";
LABEL_33:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
      goto LABEL_46;
    }

    goto LABEL_36;
  }

  v22 = *(a1 + 72);
  v23 = *(a1 + 76);
  LKAReportKeychainUpgradeOutcomeWithError();
  **(a1 + 64) = 1;
  *a3 = 1;
  v24 = *(*(a1 + 40) + 8);
LABEL_47:
  *(v24 + 24) = 1;
LABEL_50:
  if (err)
  {
    CFRelease(err);
  }

LABEL_52:
  if (*a3)
  {
    v27 = 1;
  }

  else
  {
    v27 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
  }

  *a3 = v27 & 1;
}

uint64_t sub_100183FAC(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_1001840DC;
  v4[3] = &unk_1003424A8;
  v4[4] = *(a1 + 40);
  v4[5] = a2;
  v5 = *(a1 + 48);
  return sub_1000141DC(a2, 2, (v2 + 24), v4);
}

uint64_t sub_100184038(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100184074(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_1001840DC(void *a1)
{
  cf = 0;
  v1 = a1[5];
  v2 = a1[6];
  v33.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v33.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v33, 0);
  v3 = off_10033E8C0;
  v4 = &off_10033C738;
  do
  {
    if (*(v4 + 8) == 1)
    {
      CStringPtr = CFStringGetCStringPtr(*v4, 0x8000100u);
      v6 = sqlite3_mprintf("%q", CStringPtr);
      if (v6)
      {
        v7 = v6;
        v8 = CFStringCreateWithCString(kCFAllocatorDefault, v6, 0x8000100u);
        sqlite3_free(v7);
        v9 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"SELECT * FROM %@ WHERE persistref IS ''", v8);
        v29 = 0;
        v30 = &v29;
        v31 = 0x2000000000;
        v32 = 0;
        v25 = 0;
        v26 = &v25;
        v27 = 0x2000000000;
        Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 0x40000000;
        v24[2] = sub_10017F1E4;
        v24[3] = &unk_100342328;
        v24[4] = &v29;
        v24[5] = &v25;
        v24[6] = v1;
        v24[7] = v2;
        sub_10001489C(v1, v9, v30 + 3, v24);
        if (v9)
        {
          CFRelease(v9);
        }

        v22[0] = 0;
        v22[1] = v22;
        v22[2] = 0x2000000000;
        v23 = 0;
        v10 = v26[3];
        *&context = _NSConcreteStackBlock;
        *(&context + 1) = 0x40000000;
        v35 = sub_10017F26C;
        v36 = &unk_100342418;
        v37 = v22;
        v38 = v3;
        v39 = v1;
        p_cf = &cf;
        v41 = v2;
        v42.length = CFArrayGetCount(v10);
        v42.location = 0;
        CFArrayApplyFunction(v10, v42, sub_10017F3FC, &context);
        if (v8)
        {
          CFRelease(v8);
        }

        v11 = v26[3];
        if (v11)
        {
          v26[3] = 0;
          CFRelease(v11);
        }

        v12 = v30[3];
        if (v12)
        {
          v30[3] = 0;
          CFRelease(v12);
        }

        _Block_object_dispose(v22, 8);
        _Block_object_dispose(&v25, 8);
        _Block_object_dispose(&v29, 8);
      }
    }

    v13 = v3[1];
    ++v3;
    v4 = v13;
  }

  while (v13);
  sub_10017F11C(&v33);
  SecCoreAnalyticsSendValue();
  SecCoreAnalyticsSendValue();
  *(*(a1[4] + 8) + 24) = 1;
  if (cf)
  {
    v14 = sub_100006274("SecError");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(context) = 138412290;
      *(&context + 4) = cf;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "upgr-phase3: failed to perform persistent ref upgrade for keychain item(s): %@", &context, 0xCu);
    }

    v15 = cf;
    if (cf)
    {
      CFRetain(cf);
      v16 = a1[7];
      if (v16 && !*v16)
      {
        *v16 = v15;
      }

      else
      {
        CFRelease(v15);
      }

      v18 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v18);
      }
    }
  }

  else
  {
    v17 = sub_100006274("upgr-phase3");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(context) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "finished upgrading keychain items' persistent refs", &context, 2u);
    }
  }

  return 1;
}

uint64_t sub_10018450C(uint64_t a1, uint64_t a2, const void *a3, const void *a4, const __CFArray *a5, int a6)
{
  LODWORD(v6) = a6;
  theArray = 0;
  v30.length = CFArrayGetCount(a5);
  v30.location = 0;
  if (CFArrayContainsValue(a5, v30, a4))
  {
    return 1;
  }

  keys[0] = kSecClass;
  keys[1] = kSecReturnRef;
  keys[2] = kSecAttrSubject;
  values[0] = kSecClassCertificate;
  values[1] = kCFBooleanTrue;
  values[2] = a4;
  v14 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 3, 0, 0);
  v12 = v14;
  if (!v14)
  {
    return v12;
  }

  v24 = 0;
  v15 = sub_100006454(v14, a3, -1, 0, &v24);
  CFRelease(v12);
  if (v15)
  {
    sub_10000A7F4(a1, v15, &theArray, a2, &v24);
    sub_10000DF70(v15, &v24);
  }

  if (v24)
  {
    v16 = sub_100006274("SecError");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v24;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "items matching issuer parent: %@", buf, 0xCu);
    }

    v17 = v24;
    if (!v24)
    {
      return 0;
    }

    v12 = 0;
    v24 = 0;
LABEL_24:
    CFRelease(v17);
    return v12;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    v12 = 0;
  }

  else
  {
    v19 = Count;
    v20 = 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v20 - 1);
      Value = CFDictionaryGetValue(ValueAtIndex, kSecAttrIssuer);
      if (CFEqual(Value, a4) || (v23 = __OFSUB__(v6, 1), v6 = (v6 - 1), (v6 < 0) ^ v23))
      {
        v12 = 0;
      }

      else
      {
        v12 = sub_10018450C(a1, a2, a3, Value, a5, v6);
      }

      if (v20 >= v19)
      {
        break;
      }

      ++v20;
    }

    while (!v12);
  }

  v17 = theArray;
  if (theArray)
  {
    goto LABEL_24;
  }

  return v12;
}

SecCertificateRef sub_1001847A0(__CFString **a1, CFDictionaryRef theDict)
{
  if (a1 == &off_10033DFA8)
  {
    Value = CFDictionaryGetValue(theDict, @"certdata");
    v5 = @"certtkid";
  }

  else
  {
    if (sub_100007604(@"cert", &qword_10039E0B0, &unk_10039E0A8) != a1)
    {
      return 0;
    }

    Value = CFDictionaryGetValue(theDict, kSecValueData);
    v5 = kSecAttrTokenID;
  }

  v6 = CFDictionaryGetValue(theDict, v5);
  if (!Value)
  {
    return 0;
  }

  if (v6)
  {
    v7 = SecTokenItemValueCopy();
    if (v7)
    {
      v8 = v7;
      v9 = CFDictionaryGetValue(v7, @"data");
      if (v9)
      {
        v3 = SecCertificateCreateWithData(kCFAllocatorDefault, v9);
      }

      else
      {
        v12 = sub_100006274("SecError");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "token item doesn't contain token value data", buf, 2u);
        }

        v3 = 0;
      }

      CFRelease(v8);
      return v3;
    }

    v11 = sub_100006274("SecError");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "function SecTokenItemValueCopy failed with: %@", buf, 0xCu);
    }

    return 0;
  }

  return SecCertificateCreateWithData(kCFAllocatorDefault, Value);
}

void sub_1001849CC(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2000000000;
  v6 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_100184A90;
  v4[3] = &unk_1003425F0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4[5] = *(a1 + 40);
  v4[6] = v3;
  v4[4] = v5;
  sub_100008A70(1, 1, v2, &v6, v4);
  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 32));
  _Block_object_dispose(v5, 8);
}

uint64_t sub_100184A90(void *a1, uint64_t a2)
{
  v4 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"DELETE FROM %@ WHERE rowid=%lli", a1[5], a1[6]);
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = 1;
  v5 = a1[4];
  v6 = *(v5 + 8);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 0x40000000;
  v22[2] = sub_100184CD0;
  v22[3] = &unk_1003425C8;
  v22[5] = v5;
  v22[6] = a2;
  v22[4] = &v23;
  v7 = sub_10001489C(a2, v4, (v6 + 24), v22);
  v8 = (v7 & v24[3]);
  *(v24 + 24) &= v7;
  if (v8 != 1 || *(*(a1[4] + 8) + 24))
  {
    v9 = sub_100006274("SecError");
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    v11 = a1[5];
    v10 = a1[6];
    v12 = *(*(a1[4] + 8) + 24);
    *buf = 138412802;
    v28 = v11;
    v29 = 2048;
    v30 = v10;
    v31 = 2112;
    v32 = v12;
    v13 = "Failed to delete corrupt item, %@ row %lli: %@";
    v14 = v9;
    v15 = 32;
    goto LABEL_5;
  }

  v19 = sub_100006274("item");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v21 = a1[5];
    v20 = a1[6];
    *buf = 134218242;
    v28 = v20;
    v29 = 2112;
    v30 = v21;
    v13 = "Deleted corrupt rowid %lli from table %@";
    v14 = v19;
    v15 = 22;
LABEL_5:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
  }

LABEL_6:
  v16 = *(a1[4] + 8);
  v17 = *(v16 + 24);
  if (v17)
  {
    *(v16 + 24) = 0;
    CFRelease(v17);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  _Block_object_dispose(&v23, 8);
  return 1;
}

BOOL sub_100184CD0(void *a1, sqlite3_stmt *a2)
{
  result = sub_100015DAC(a1[6], a2, (*(a1[5] + 8) + 24), 0);
  *(*(a1[4] + 8) + 24) &= result;
  return result;
}

const void *sub_100184D1C(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2000000000;
  v7 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_100185184;
  v5[3] = &unk_1003430F8;
  v5[6] = a1;
  v5[7] = a2;
  v5[4] = v6;
  v5[5] = &v8;
  v2 = sub_100008A70(0, 1, 0, &v7, v5);
  v3 = v9[3];
  if ((v2 & 1) == 0 && v3)
  {
    v9[3] = 0;
    CFRelease(v3);
    v3 = 0;
  }

  _Block_object_dispose(v6, 8);
  _Block_object_dispose(&v8, 8);
  return v3;
}

BOOL sub_100184E08(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 48;
  v5 = CFEqual(*(a1 + 48), kSecClassIdentity);
  v6 = &kSecClassCertificate;
  if (!v5)
  {
    v6 = v4;
  }

  v7 = CFStringCreateWithFormat(0, 0, @"SELECT agrp FROM %@ WHERE rowid == %u", *v6, *(v4 + 8));
  v12[0] = _NSConcreteStackBlock;
  v8 = *(v4 - 16);
  v9 = *(*(v4 - 16) + 8);
  v12[1] = 0x40000000;
  v12[2] = sub_100185068;
  v12[3] = &unk_100343148;
  v14 = a2;
  v13 = v8;
  v10 = sub_10000A928(a2, v7, (v9 + 24), v12);
  if (v7)
  {
    CFRelease(v7);
  }

  return v10 && *(*(*(a1 + 40) + 8) + 24) != 0;
}

uint64_t sub_100184F24(uint64_t a1)
{
  if (!a1 || !*(a1 + 48) || (v2 = *(a1 + 8)) == 0)
  {
    v6 = sub_100006274("SecError");
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (!v7)
    {
      return result;
    }

    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "item: no app clip client or attributes not set, cannot verify restrictions", v12, 2u);
    return 0;
  }

  Count = CFArrayGetCount(v2);
  if (Count != 2)
  {
    if (Count == 1)
    {
      v4 = *(a1 + 48);
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), 0);
      if (v4 && ValueAtIndex)
      {
        return CFEqual(v4, ValueAtIndex) != 0;
      }

      if (v4 == ValueAtIndex)
      {
        return 1;
      }
    }

    return 0;
  }

  v13.location = 0;
  v13.length = 2;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(a1 + 8), v13, kSecAttrAccessGroupToken);
  if (FirstIndexOfValue == -1)
  {
    return 0;
  }

  v10 = *(a1 + 48);
  v11 = CFArrayGetValueAtIndex(*(a1 + 8), FirstIndexOfValue == 0);
  if (v10 && v11)
  {
    return CFEqual(v10, v11) != 0;
  }

  else
  {
    return v10 == v11;
  }
}

uint64_t sub_100185068(void *a1, sqlite3_stmt *a2)
{
  v3 = a1[6];
  v4 = *(a1[4] + 8);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_10018510C;
  v6[3] = &unk_100343120;
  v6[4] = a1[5];
  v6[5] = a2;
  result = sub_10000D2AC(v3, a2, (v4 + 24), v6);
  if (result)
  {
    return *(*(a1[5] + 8) + 24) != 0;
  }

  return result;
}

BOOL sub_10018510C(uint64_t a1)
{
  v2 = sqlite3_column_blob(*(a1 + 40), 0);
  v3 = sqlite3_column_bytes(*(a1 + 40), 0);
  *(*(*(a1 + 32) + 8) + 24) = CFStringCreateWithBytes(0, v2, v3, 0x8000100u, 0);
  return *(*(*(a1 + 32) + 8) + 24) != 0;
}

BOOL sub_100185184(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 48;
  v5 = CFEqual(*(a1 + 48), kSecClassIdentity);
  v6 = &kSecClassCertificate;
  if (!v5)
  {
    v6 = v4;
  }

  v7 = CFStringCreateWithFormat(0, 0, @"SELECT agrp FROM %@ WHERE persistref = ?", *v6);
  v13[0] = _NSConcreteStackBlock;
  v8 = *(v4 + 8);
  v9 = *(v4 - 16);
  v10 = *(*(v4 - 16) + 8);
  v13[1] = 0x40000000;
  v13[2] = sub_1001852A0;
  v13[3] = &unk_1003430D0;
  v15 = v8;
  v16 = a2;
  v14 = v9;
  v11 = sub_10000A928(a2, v7, (v10 + 24), v13);
  if (v7)
  {
    CFRelease(v7);
  }

  return v11 && *(*(*(a1 + 40) + 8) + 24) != 0;
}

BOOL sub_1001852A0(uint64_t a1, sqlite3_stmt *a2)
{
  BytePtr = CFDataGetBytePtr(*(a1 + 48));
  Length = CFDataGetLength(*(a1 + 48));
  v6 = sub_10000CE9C(a2, 1, BytePtr, Length, (*(*(a1 + 32) + 8) + 24));
  v7 = *(a1 + 56);
  v8 = *(*(a1 + 32) + 8);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = sub_10018539C;
  v11[3] = &unk_1003430A8;
  v11[4] = *(a1 + 40);
  v11[5] = a2;
  if (sub_10000D2AC(v7, a2, (v8 + 24), v11))
  {
    v9 = !v6;
  }

  else
  {
    v9 = 1;
  }

  return !v9 && *(*(*(a1 + 40) + 8) + 24) != 0;
}

BOOL sub_10018539C(uint64_t a1)
{
  v2 = sqlite3_column_blob(*(a1 + 40), 0);
  v3 = sqlite3_column_bytes(*(a1 + 40), 0);
  *(*(*(a1 + 32) + 8) + 24) = CFStringCreateWithBytes(0, v2, v3, 0x8000100u, 0);
  return *(*(*(a1 + 32) + 8) + 24) != 0;
}

BOOL sub_100185414(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, kSecAttrSynchronizable);
  v2 = Value;
  if (Value)
  {
    v3 = CFGetTypeID(Value);
    if (v3 == CFBooleanGetTypeID())
    {
      v4 = CFBooleanGetValue(v2) == 0;
      return !v4;
    }

    v5 = CFGetTypeID(v2);
    if (v5 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(v2, kCFNumberSInt32Type, &valuePtr);
      v4 = valuePtr == 0;
      return !v4;
    }

    v7 = CFGetTypeID(v2);
    if (v7 == CFStringGetTypeID())
    {
      IntValue = CFStringGetIntValue(v2);
      v9 = CFStringCreateWithFormat(0, 0, @"%ld", IntValue);
      v10 = CFEqual(v9, v2);
      if (IntValue)
      {
        v11 = v10 == 0;
      }

      else
      {
        v11 = 1;
      }

      v2 = !v11;
      CFRelease(v9);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void sub_100185528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = @"SecItem";
  if (sub_100014C4C())
  {
    v6 = off_10039DD00(77, @"SecItem");

    if (v6)
    {
      v16 = *(a3 + 48);
      v14 = sub_10001104C(0, v7, v8, v9, v10, v11, v12, v13, @"operation", a1);
      if (v14)
      {
        v15 = v14;
        sub_100011140(@"SecItem", v14);

        CFRelease(v15);
      }
    }
  }

  else
  {
  }
}

CFNullRef sub_10018564C(const __CFDictionary *a1, CFTypeRef cf1, uint64_t a3, __CFString **a4)
{
  if (!cf1 || (v8 = kSecAttrSharingGroupNone) != 0 && CFEqual(cf1, kSecAttrSharingGroupNone))
  {
    v9 = @"A group must be specified to share the item";
LABEL_5:
    v10 = -50;
LABEL_12:
    sub_1000103CC(v10, a4, v9, v36, v37);
    return 0;
  }

  if ((*(a3 + 57) & 1) == 0)
  {
    v9 = @"Client doesn't have Keychain Sharing client entitlement";
    goto LABEL_11;
  }

  if (sub_10000639C(a1, 1, a4))
  {
    if (CFDictionaryContainsKey(a1, kSecAttrTombstone))
    {
      v9 = @"Tombstones can't be shared";
      goto LABEL_5;
    }

    if (*(a3 + 36) == 1)
    {
      sub_1000103CC(-909, a4, @"This client can't share items");
      return 0;
    }

    v13 = sub_100011D64(a3);
    if (v13)
    {
      v14 = v13;
      if (CFArrayGetCount(v13))
      {
        v52.length = CFArrayGetCount(v14);
        v52.location = 0;
        if (CFArrayContainsValue(v14, v52, @"*"))
        {
          CFRelease(v14);
          v14 = 0;
        }

        Value = CFDictionaryGetValue(a1, kSecAttrAccessGroup);
        if (!Value)
        {
LABEL_26:
          v24 = sub_100006454(a1, *(a3 + 24), -1, a3, a4);
          if (v24)
          {
            v25 = v24;
            sub_100009B34(v24, v14);
            if ((sub_1000196A0(*(v25 + 128)) || sub_1000103CC(-909, a4, @"Items from a multi-user view can't be shared")) && (!*(v25 + 192) || sub_1000103CC(-909, a4, @"System keychain items can't be shared")))
            {
              if (*(v25 + 196))
              {
                v26 = sub_1000103CC(-909, a4, @"Items in a sync bubble can't be shared");
              }

              else
              {
                v26 = 1;
              }
            }

            else
            {
              v26 = 0;
            }

            v27 = *(v25 + 48);
            *(v25 + 48) = 3;
            v28 = *(v25 + 104);
            v29 = kSecAttrSharingGroup;
            if (!CFDictionaryContainsKey(*(v25 + 8), kSecAttrSharingGroup))
            {
              sub_1000079A0(v29, v8, v25);
            }

            if (v26 && (!*(v25 + 40) || (sub_100009B80(v25, a4) & 1) != 0))
            {
              v48 = 0;
              v49 = &v48;
              v50 = 0x2000000000;
              v51 = 1;
              v44 = 0;
              v45 = &v44;
              v46 = 0x2000000000;
              v47 = 0;
              v40 = 0;
              v41 = &v40;
              v42 = 0x2000000000;
              v43 = 0;
              v38[0] = _NSConcreteStackBlock;
              v38[1] = 0x40000000;
              v38[2] = sub_100185BD8;
              v38[3] = &unk_100342730;
              v38[8] = v25;
              v38[9] = v14;
              v38[4] = &v48;
              v38[5] = &v44;
              v38[6] = &v40;
              v38[7] = a4;
              v38[10] = cf1;
              v39 = v27;
              v30 = sub_100008A70(1, 1, 0, a4, v38);
              sub_10000DF70(v25, a4);
              if (v14)
              {
                CFRelease(v14);
              }

              if (v49[3])
              {
                if (v30)
                {
                  sub_10017E8CC();
                  sub_10017E868();
                  if (!v27)
                  {
                    v11 = kCFNull;
                    goto LABEL_67;
                  }

                  if (v28 == 1)
                  {
                    if (CFArrayGetCount(v41[3]) != 1)
                    {
                      v11 = 0;
LABEL_67:
                      v35 = v41[3];
                      if (v35)
                      {
                        v41[3] = 0;
                        CFRelease(v35);
                      }

                      goto LABEL_62;
                    }

                    ValueAtIndex = CFArrayGetValueAtIndex(v41[3], 0);
                    Copy = CFRetain(ValueAtIndex);
                  }

                  else
                  {
                    Copy = CFArrayCreateCopy(kCFAllocatorDefault, v41[3]);
                  }

                  v11 = Copy;
                  goto LABEL_67;
                }

                v34 = v41[3];
                if (v34)
                {
                  v41[3] = 0;
                  CFRelease(v34);
                }
              }

              else
              {
                v33 = v41[3];
                if (v33)
                {
                  v41[3] = 0;
                  CFRelease(v33);
                }

                sub_100185C78(v45[3], a4);
              }

              v11 = 0;
LABEL_62:
              _Block_object_dispose(&v40, 8);
              _Block_object_dispose(&v44, 8);
              _Block_object_dispose(&v48, 8);
              return v11;
            }

            sub_10000DF70(v25, 0);
          }

          if (v14)
          {
            CFRelease(v14);
          }

          return 0;
        }

        v16 = Value;
        if (sub_1000091A8(v14, Value, a3))
        {
          if (v14)
          {
            CFRelease(v14);
          }

          v14 = sub_100185B00(kCFAllocatorDefault, v17, v18, v19, v20, v21, v22, v23, v16);
          goto LABEL_26;
        }

        if (v14)
        {
          CFRelease(v14);
        }

        v36 = v16;
        v37 = 0;
        v9 = @"Client explicitly specifies access group %@ but is only entitled for %@";
LABEL_11:
        v10 = -34018;
        goto LABEL_12;
      }

      CFRelease(v14);
    }

    v36 = @"application-identifier nor keychain-access-groups";
    v9 = @"Client has neither %@ entitlements";
    goto LABEL_11;
  }

  return 0;
}

CFArrayRef sub_100185B00(CFAllocatorRef allocator, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = &a9;
  v10 = -1;
  do
  {
    v11 = v19++;
    ++v10;
  }

  while (*v11);
  v20 = &a9;
  Mutable = CFArrayCreateMutable(allocator, v10, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    return 0;
  }

  for (i = Mutable; v10; --v10)
  {
    v14 = v20++;
    v15 = *v14;
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = kCFNull;
    }

    CFArrayAppendValue(i, v16);
  }

  Copy = CFArrayCreateCopy(allocator, i);
  CFRelease(i);
  return Copy;
}

uint64_t sub_100185BD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_100185D04;
  v4[3] = &unk_100342708;
  v7 = *(a1 + 64);
  v5 = *(a1 + 32);
  v8 = a2;
  v9 = v2;
  v6 = *(a1 + 48);
  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  return sub_1000141DC(a2, 2, v2, v4);
}

void sub_100185C78(__CFError *cf, CFErrorRef *a2)
{
  if (cf && a2)
  {
    if (!*a2)
    {
      goto LABEL_13;
    }

    if (CFErrorGetCode(*a2) != -25330)
    {
      goto LABEL_9;
    }

    v4 = *a2;
    if (!*a2)
    {
LABEL_13:
      *a2 = cf;
      return;
    }

    *a2 = 0;
    CFRelease(v4);
  }

  else
  {
    if (!cf)
    {
      return;
    }

    if (!a2)
    {
      goto LABEL_10;
    }
  }

LABEL_9:
  if (!*a2)
  {
    goto LABEL_13;
  }

LABEL_10:

  CFRelease(cf);
}

uint64_t sub_100185D04(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = *(*(a1 + 40) + 8);
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 0x40000000;
  v37[2] = sub_10018620C;
  v37[3] = &unk_1003426E0;
  v37[4] = Mutable;
  *(*(*(a1 + 32) + 8) + 24) = sub_10001DC5C(v3, v4, v5, (v6 + 24), v37);
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    if (!Mutable)
    {
LABEL_61:
      v29 = 0;
      return v29 & 1;
    }

LABEL_60:
    CFRelease(Mutable);
    goto LABEL_61;
  }

  if (!CFArrayGetCount(Mutable))
  {
    *(*(*(a1 + 32) + 8) + 24) = sub_1000103CC(-25300, *(a1 + 80), @"No items matched the query");
    if (!Mutable)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  Count = CFArrayGetCount(Mutable);
  v8 = 0;
  *(*(*(a1 + 48) + 8) + 24) = CFArrayCreateMutable(kCFAllocatorDefault, Count, &kCFTypeArrayCallBacks);
  v9 = kSecAttrUUID;
  cf2 = kSecAttrSharingGroup;
  v33 = Mutable;
  while (2)
  {
    if (v8 >= CFArrayGetCount(Mutable))
    {
      goto LABEL_65;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v8);
    v11 = *(*(a1 + 40) + 8);
    v12 = ValueAtIndex[2];
    v13 = v12[2];
    if (!v13)
    {
LABEL_38:
      LOBYTE(v20) = sub_1000103CC(-50, (v11 + 24), @"Items of class '%@' can't be shared", *v12);
      goto LABEL_41;
    }

    v35 = v8;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v32 = *(a1 + 72);
    v34 = *(a1 + 88);
    v18 = v12 + 3;
    do
    {
      if (CFEqual(*v13, v9))
      {
        v14 = v13;
        if (!v13)
        {
          goto LABEL_22;
        }
      }

      else if (CFEqual(*v13, cf2))
      {
        v15 = v13;
        if (!v14)
        {
          goto LABEL_22;
        }
      }

      else if (CFEqual(*v13, kSecAttrSynchronizable))
      {
        v16 = v13;
        if (!v14)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (*(v13 + 8) == 16)
        {
          v17 = v13;
        }

        if (!v14)
        {
          goto LABEL_22;
        }
      }

      if (v15 && v16 && v17)
      {
        sub_10016360C(ValueAtIndex, (v11 + 24));
        goto LABEL_27;
      }

LABEL_22:
      v19 = *v18++;
      v13 = v19;
    }

    while (v19);
    if (!v15)
    {
      v12 = ValueAtIndex[2];
      Mutable = v33;
      v8 = v35;
      goto LABEL_38;
    }

    sub_10016360C(ValueAtIndex, (v11 + 24));
    if (v14)
    {
LABEL_27:
      v20 = sub_1000154A0(ValueAtIndex, v14, 0, (v11 + 24));
      if (v20)
      {
        goto LABEL_28;
      }

LABEL_40:
      Mutable = v33;
      v8 = v35;
      goto LABEL_41;
    }

LABEL_28:
    if (v17)
    {
      v21 = sub_100019F7C();
      v22 = sub_1000154A0(ValueAtIndex, v17, v21, (v11 + 24));
      if (v21)
      {
        CFRelease(v21);
      }

      if (!v22)
      {
        LOBYTE(v20) = 0;
        goto LABEL_40;
      }
    }

    v20 = sub_1000154A0(ValueAtIndex, v15, v34, (v11 + 24));
    if (!v20)
    {
      goto LABEL_40;
    }

    if (v16)
    {
      v20 = sub_1000154A0(ValueAtIndex, v16, kCFBooleanFalse, (v11 + 24));
      if (!v20)
      {
        goto LABEL_40;
      }
    }

    cf = 0;
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 0x40000000;
    v39[2] = sub_10001E9B0;
    v39[3] = &unk_100338910;
    v39[4] = ValueAtIndex;
    v40 = 0;
    if (sub_10001AA4C(ValueAtIndex, v32, &cf, v39))
    {
      LOBYTE(v20) = 1;
      goto LABEL_40;
    }

    v25 = sub_10016379C(cf);
    v26 = cf;
    if (!v25)
    {
      Mutable = v33;
      v8 = v35;
      if (!cf)
      {
        LOBYTE(v20) = 1;
        goto LABEL_41;
      }

      v27 = *(v11 + 24);
      if (v27)
      {
        if (CFErrorGetCode(v27) != -25330)
        {
          goto LABEL_55;
        }

        v28 = *(v11 + 24);
        if (v28)
        {
          *(v11 + 24) = 0;
          CFRelease(v28);
LABEL_55:
          if (*(v11 + 24))
          {
            CFRelease(v26);
            LOBYTE(v20) = 0;
            goto LABEL_41;
          }
        }
      }

      LOBYTE(v20) = 0;
      *(v11 + 24) = v26;
      goto LABEL_41;
    }

    Mutable = v33;
    v8 = v35;
    if (cf)
    {
      cf = 0;
      CFRelease(v26);
    }

    LOBYTE(v20) = sub_1000103CC(-25299, (v11 + 24), @"Item is already shared with this group", v31);
LABEL_41:
    *(*(*(a1 + 32) + 8) + 24) = v20;
    if (*(*(*(a1 + 32) + 8) + 24) != 1)
    {
      goto LABEL_65;
    }

    v23 = sub_100179F18(ValueAtIndex, *(a1 + 96), (*(*(a1 + 40) + 8) + 24));
    if (v23)
    {
      v24 = v23;
      if (!CFEqual(v23, kCFNull))
      {
        CFArrayAppendValue(*(*(*(a1 + 48) + 8) + 24), v24);
      }

      CFRelease(v24);
      ++v8;
      continue;
    }

    break;
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
LABEL_65:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v29 = *(*(*(a1 + 32) + 8) + 24);
  return v29 & 1;
}

uint64_t sub_100186214(uint64_t a1, uint64_t a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_1001862AC;
  v4[3] = &unk_1003427B8;
  v4[4] = a2;
  v4[5] = a1;
  v2 = sub_100008A70(1, 1, 0, a2, v4);
  if (v2)
  {
    sub_10017E8CC();
    sub_10017E868();
  }

  return v2;
}

uint64_t sub_1001862AC(int8x16_t *a1, uint64_t a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_100186330;
  v4[3] = &unk_100342798;
  v2 = a1[2];
  v5 = vextq_s8(v2, v2, 8uLL);
  v6 = a2;
  return sub_1000141DC(a2, 2, v2.i64[0], v4);
}

uint64_t sub_100186330(uint64_t a1)
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x2000000000;
  v34 = 1;
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    if (qword_10039DFD8 != -1)
    {
      dispatch_once(&qword_10039DFD8, &stru_100338EF0);
    }

    v2 = qword_10039DFE0;
  }

  v39[0] = sub_100007604(@"inet", &qword_10039E0A0, &unk_10039E098);
  v39[1] = sub_100007604(@"genp", &qword_10039E090, &unk_10039E088);
  v39[2] = sub_100007604(@"cert", &qword_10039E0B0, &unk_10039E0A8);
  v39[3] = sub_100007604(@"keys", &qword_10039E0C0, &unk_10039E0B8);
  v10 = sub_100185B00(0, v3, v4, v5, v6, v7, v8, v9, @"com.apple.safari.credit-cards");
  v11 = v32;
  if (*(v32 + 24) == 1)
  {
    v12 = 0;
    v26 = kSecAttrMultiUser;
    while (1)
    {
      v13 = sub_100006274("SecDeleteItemsOnSignOut");
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
      v15 = v39[v12];
      if (v14)
      {
        v23 = *v15;
        *buf = 138412546;
        v36 = v23;
        v37 = 2112;
        v38 = v2;
        _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Deleting items from class=%@ with multi-user view=%@", buf, 0x16u);
      }

      v16 = sub_100007698(v15, v2, 0, *(a1 + 32), *(a1 + 40));
      if (!v16)
      {
        break;
      }

      v17 = v16;
      sub_1000079A0(v26, v2, v16);
      sub_1000079A0(kSecAttrSynchronizable, kCFBooleanTrue, v17);
      for (i = 0; i < CFArrayGetCount(v10); ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v10, i);
        sub_10016D73C(kSecAttrAccessGroup, ValueAtIndex, v17);
      }

      v20 = *(a1 + 48);
      v28 = *(a1 + 40);
      v29.isa = _NSConcreteStackBlock;
      *&v29.flags = 0x40000000;
      v29.invoke = sub_10018675C;
      v29.descriptor = &unk_100342750;
      v30 = v17;
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 0x40000000;
      v27[2] = sub_100186788;
      v27[3] = &unk_100342778;
      v27[4] = &v31;
      v27[5] = v20;
      v21 = sub_100014718(v17, v20, v28, 0, &v29, 0, 0, v27);
      *(v32 + 24) &= v21;
      sub_10000DF70(v17, 0);
      v11 = v32;
      if (*(v32 + 24) == 1 && v12++ < 3)
      {
        continue;
      }

      goto LABEL_18;
    }

    v11 = v32;
    *(v32 + 24) = 0;
  }

LABEL_18:
  if (v10)
  {
    CFRelease(v10);
    v11 = v32;
  }

  v24 = *(v11 + 24);
  _Block_object_dispose(&v31, 8);
  return v24;
}

CFStringRef **sub_100186788(uint64_t a1, CFStringRef **a2, _BYTE *a3)
{
  result = sub_1000170C8(a2, *(a1 + 40), kCFBooleanFalse, 0, *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) &= result;
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t sub_10018680C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, __CFString **a6)
{
  if (*(a5 + 44) == 1)
  {

    return sub_1000103CC(-34020, a6, @"App Clips may not call this API");
  }

  else
  {
    v11 = v6;
    v12 = v7;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = sub_1001868C0;
    v9[3] = &unk_1003431B0;
    v9[4] = a6;
    v9[5] = a1;
    v10 = a4;
    v9[6] = a2;
    v9[7] = a5;
    v9[8] = a3;
    return sub_100008A70(1, 1, 0, a6, v9);
  }
}

uint64_t sub_1001868C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_100186954;
  v5[3] = &unk_100343190;
  v5[4] = a2;
  v6 = *(a1 + 40);
  v10 = *(a1 + 72);
  v3 = *(a1 + 64);
  v7 = *(a1 + 56);
  v8 = v2;
  v9 = v3;
  return sub_1000141DC(a2, 2, v2, v5);
}

uint64_t sub_100186954(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v8 = 0;
  err = 0;
  v44[0] = kSecClassGenericPassword;
  v44[1] = kSecClassInternetPassword;
  v44[2] = kSecClassCertificate;
  v44[3] = kSecClassKey;
  do
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 80);
    v12 = *(a1 + 48);
    v11 = *(a1 + 56);
    v39 = *(a1 + 40);
    v13 = sub_10001104C(kCFAllocatorDefault, a2, a3, a4, a5, a6, a7, a8, kSecClass, v44[v8]);
    v14 = sub_100006454(v13, *(v11 + 24), -1, v11, &err);
    CFRelease(v13);
    if (v14)
    {
      if (!v10)
      {
        goto LABEL_9;
      }

      if (*(v11 + 16))
      {
        v15 = *(v14 + 128);
        if (v15)
        {
          *(v14 + 128) = 0;
          CFRelease(v15);
        }

        *(v14 + 128) = CFDataCreateWithBytesNoCopy(0, byte_100294A38, 16, kCFAllocatorNull);
        v16 = sub_100006274("SecItemDeleteTokenItems");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "use system keychain", buf, 2u);
        }

LABEL_9:
        sub_100009B34(v14, v12);
        v17 = sub_100013F34(v9, v14, v12, &err);
        if (sub_100019700(v14, v17, &err))
        {
          goto LABEL_15;
        }

        goto LABEL_12;
      }

      if (sub_1000103CC(-34018, &err, @"client doesn't have entitlement for system keychain"))
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    Code = CFErrorGetCode(err);
    v19 = err;
    if (Code != -25300)
    {
      if (err)
      {
        v38 = *(a1 + 64);
        if (v38 && !*v38)
        {
          result = 0;
          *v38 = err;
          return result;
        }

        CFRelease(err);
      }

      return 0;
    }

    if (err)
    {
      err = 0;
      CFRelease(v19);
    }

LABEL_15:
    ++v8;
  }

  while (v8 != 4);
  v20 = *(a1 + 72);
  if (!v20)
  {
    return 1;
  }

  v21 = 0;
  while (1)
  {
    Count = CFArrayGetCount(v20);
    v23 = v21 < Count;
    result = v21 >= Count;
    if (!v23)
    {
      return result;
    }

    v25 = *(a1 + 32);
    v40 = v21;
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v21);
    v27 = 0;
    v28 = *(a1 + 80);
    v29 = *(a1 + 48);
    v30 = *(a1 + 56);
    v31 = *(a1 + 64);
    while (v27 < CFArrayGetCount(v29))
    {
      result = sub_100006454(ValueAtIndex, *(v30 + 24), 0, v30, v31);
      if (!result)
      {
        return result;
      }

      v32 = result;
      if (v28)
      {
        if (*(v30 + 16) != 1)
        {
          result = sub_1000103CC(-34018, v31, @"client doesn't have entitlement for system keychain");
          if (!result)
          {
            return result;
          }

          break;
        }

        v33 = *(result + 128);
        if (v33)
        {
          v32[16] = 0;
          CFRelease(v33);
        }

        v34 = CFDataCreateWithBytesNoCopy(0, byte_100294A38, 16, kCFAllocatorNull);
        v32[16] = v34;
        sub_100008D78(&off_100342650, v34, v32);
        v35 = sub_100006274("SecItemAddTokenItemToAccessGroups");
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "use system keychain", buf, 2u);
        }
      }

      v36 = CFArrayGetValueAtIndex(v29, v27);
      sub_1000079A0(kSecAttrAccessGroup, v36, v32);
      sub_100019ED0(v32, v36);
      if (v32[5])
      {
        v37 = 0;
      }

      else
      {
        sub_10001A0A4(v32);
        v37 = sub_10001A2F4(v25, v32, 0, v31);
      }

      ++v27;
      if ((sub_100019700(v32, v37, v31) & 1) == 0)
      {
        return 0;
      }
    }

    v21 = v40 + 1;
    v20 = *(a1 + 72);
  }
}

uint64_t sub_100186D90(uint64_t a1)
{
  v2 = sub_100006274("SecError");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v4[0]) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SecServerItemDeleteAll", v4, 2u);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_100186E5C;
  v4[3] = &unk_1003431F0;
  v4[4] = a1;
  return sub_100008A70(1, 1, 0, a1, v4);
}

uint64_t sub_100186E5C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_100186EFC;
  v6[3] = &unk_1003431D0;
  v6[4] = a2;
  v6[5] = v4;
  result = sub_1000141DC(a2, 2, v4, v6);
  if (result)
  {
    return sub_1000152F0(a2, @"VACUUM;", *(a1 + 32));
  }

  return result;
}

uint64_t sub_100186EFC(uint64_t a1)
{
  v2 = sub_1000152F0(*(a1 + 32), @"DELETE FROM genp WHERE sync=1;", *(a1 + 40));
  v3 = v2 & sub_1000152F0(*(a1 + 32), @"DELETE FROM inet WHERE sync=1;", *(a1 + 40));
  v4 = sub_1000152F0(*(a1 + 32), @"DELETE FROM cert WHERE sync=1;", *(a1 + 40));
  v5 = v3 & v4 & sub_1000152F0(*(a1 + 32), @"DELETE FROM keys WHERE sync=1;", *(a1 + 40));
  v6 = *(a1 + 32);
  v7 = sub_100007604(@"genp", &qword_10039E090, &unk_10039E088);
  LODWORD(v6) = sub_100187050(v6, v7, *(a1 + 40));
  v8 = *(a1 + 32);
  v9 = sub_100007604(@"inet", &qword_10039E0A0, &unk_10039E098);
  LODWORD(v8) = v6 & sub_100187050(v8, v9, *(a1 + 40));
  v10 = *(a1 + 32);
  v11 = sub_100007604(@"cert", &qword_10039E0B0, &unk_10039E0A8);
  LODWORD(v8) = v5 & v8 & sub_100187050(v10, v11, *(a1 + 40));
  v12 = *(a1 + 32);
  v13 = sub_100007604(@"keys", &qword_10039E0C0, &unk_10039E0B8);
  return v8 & sub_100187050(v12, v13, *(a1 + 40));
}

BOOL sub_100187050(uint64_t a1, uint64_t a2, const void **a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, kSecMatchLimit, kSecMatchLimitAll);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  v7 = sub_100007698(a2, 0, Mutable, 0, &v19);
  if (!v7)
  {
    v13 = sub_100006274("SecError");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v17[3];
      *buf = 138412290;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "SecServerItemDeleteAll: aborting because failed to initialize Query: %@", buf, 0xCu);
    }

    abort();
  }

  v8 = v7;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 0x40000000;
  v15[2] = sub_100187268;
  v15[3] = &unk_100343258;
  v15[5] = a2;
  v15[6] = a1;
  v15[4] = &v16;
  sub_100014718(v7, a1, v17 + 3, &stru_100343230, 0, 0, 0, v15);
  sub_10000DF70(v8, v17 + 3);
  v9 = v17[3];
  if (v9)
  {
    if (a3)
    {
      v10 = *a3;
      v11 = v17[3];
      if (*a3)
      {
        *a3 = 0;
        CFRelease(v10);
        v11 = v17[3];
      }

      *a3 = v11;
    }

    else
    {
      v17[3] = 0;
      CFRelease(v9);
    }
  }

  _Block_object_dispose(&v16, 8);
  return v9 == 0;
}

uint64_t sub_100187268(void *a1, uint64_t a2)
{
  result = sub_10017A55C(*(a2 + 48), a1[5], 0);
  if ((result & 1) == 0)
  {
    Value = CFDictionaryGetValue(*(a2 + 48), kSecAttrAccessGroup);
    result = CFEqual(Value, @"com.apple.bluetooth");
    if (!result)
    {
      v6 = a1[6];
      v7 = (*(a1[4] + 8) + 24);

      return sub_1000170C8(a2, v6, kCFBooleanFalse, 0, v7);
    }
  }

  return result;
}

uint64_t sub_100187344(const void *a1, uint64_t a2, CFTypeRef *a3)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 1;
  if (qword_10039E178 != -1)
  {
    dispatch_once(&qword_10039E178, &stru_100342878);
  }

  v19[0] = sub_100007604(@"inet", &qword_10039E0A0, &unk_10039E098);
  v19[1] = sub_100007604(@"genp", &qword_10039E090, &unk_10039E088);
  v19[2] = sub_100007604(@"keys", &qword_10039E0C0, &unk_10039E0B8);
  v19[3] = sub_100007604(@"cert", &qword_10039E0B0, &unk_10039E0A8);
  if (a1)
  {
    v7 = CFGetTypeID(a1);
    if (v7 == CFArrayGetTypeID())
    {
      if (CFArrayGetCount(a1))
      {
        context[0] = _NSConcreteStackBlock;
        context[1] = 0x40000000;
        context[2] = sub_10018761C;
        context[3] = &unk_1003428A0;
        context[4] = &v15;
        context[5] = a3;
        context[6] = a1;
        v20.length = CFArrayGetCount(a1);
        v20.location = 0;
        CFArrayApplyFunction(a1, v20, sub_10017F3FC, context);
        if (*(v16 + 24) == 1)
        {
          v13[0] = _NSConcreteStackBlock;
          v13[1] = 0x40000000;
          v13[2] = sub_1001876E8;
          v13[3] = &unk_1003428E0;
          v13[4] = a3;
          v13[5] = v19;
          v13[6] = a2;
          v13[7] = a1;
          v10 = sub_100008A70(1, 1, 0, a3, v13);
          *(v16 + 24) = v10;
        }
      }

      else
      {
        *(v16 + 24) = 0;
        sub_1000111B4(1, @"com.apple.security.xpc", 0, a3, v9, @"accessGroups e empty");
      }
    }

    else
    {
      *(v16 + 24) = 0;
      sub_1000111B4(1, @"com.apple.security.xpc", 0, a3, v8, @"accessGroups not CFArray, got %@", a1);
    }
  }

  else
  {
    *(v16 + 24) = 0;
    sub_1000111B4(1, @"com.apple.security.xpc", 0, a3, v6, @"accessGroups not CFArray, got %@", 0);
  }

  v11 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  return v11;
}

void sub_10018761C(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (cf)
  {
    v7 = CFGetTypeID(cf);
    if (v7 == CFStringGetTypeID())
    {
      if (!CFSetContainsValue(qword_10039E180, cf))
      {
        return;
      }

      sub_1000111B4(1, @"com.apple.security.xpc", 0, *(a1 + 40), v9, @"illegal access group: %@", *(a1 + 48));
    }

    else
    {
      sub_1000111B4(1, @"com.apple.security.xpc", 0, *(a1 + 40), v8, @"access not a string: %@", cf);
    }
  }

  else
  {
    sub_1000111B4(1, @"com.apple.security.xpc", 0, *(a1 + 40), a5, @"access not a string: %@", 0);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
}

uint64_t sub_1001876E8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_100187798;
  v6[3] = &unk_1003428C0;
  v7 = *(a1 + 40);
  v8 = v4;
  v9 = a2;
  v10 = *(a1 + 56);
  result = sub_1000141DC(a2, 2, v4, v6);
  if (result)
  {
    return sub_1000152F0(a2, @"VACUUM", *(a1 + 32));
  }

  return result;
}

uint64_t sub_100187798(uint64_t a1)
{
  v2 = 0;
  cf = 0;
  do
  {
    v3 = sub_100007698(*(*(a1 + 32) + v2), *(*(a1 + 40) + 24), 0, *(a1 + 40), *(a1 + 48));
    if (v3)
    {
      v4 = v3;
      sub_100013F34(*(a1 + 56), v3, *(a1 + 64), &cf);
      v5 = *(a1 + 48);
      v3 = v4;
    }

    else
    {
      v5 = *(a1 + 48);
    }

    sub_10000DF70(v3, v5);
    v6 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v6);
    }

    v2 += 8;
  }

  while (v2 != 32);
  return 1;
}

void sub_100187838(id a1)
{
  values[0] = @"*";
  values[1] = @"apple";
  values[2] = @"com.apple.security.sos";
  values[3] = @"lockdown-identities";
  qword_10039E180 = CFSetCreate(0, values, 4, &kCFTypeSetCallBacks);
}

BOOL sub_1001878C8(const __CFDictionary *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, CFTypeRef *a6, __CFString **a7)
{
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v13 = CFDictionaryGetValue(a1, kSecAttrServer);
  v14 = v13;
  if (v13)
  {
    CFRetain(v13);
  }

  value = CFDictionaryGetValue(a1, kSecAttrAccount);
  v15 = CFDictionaryGetValue(a1, kSecSharedPassword);
  values = @"*";
  *buf = 0;
  v16 = sub_10020144C(7u, buf);
  v82 = v15;
  if (v16)
  {
    v17 = v16;
    xpc_dictionary_set_data(v16, "client", a3, 0x20uLL);
    v18 = sub_100201208(v17, buf);
    if (v18)
    {
      v19 = v18;
      v20 = sub_1002014CC(v18, buf) > 0;
      xpc_release(v19);
    }

    else
    {
      v20 = 0;
    }

    xpc_release(v17);
  }

  else
  {
    v20 = 0;
  }

  if (*buf)
  {
    CFRelease(*buf);
  }

  if (!v20)
  {
    v26 = @"Password AutoFill for iCloud Keychain must be enabled in Settings > Passwords to save passwords";
    v27 = -909;
LABEL_43:
    sub_1000103CC(v27, a7, v26);
    goto LABEL_44;
  }

  if (!v14)
  {
    if (value)
    {
LABEL_41:
      sub_1000103CC(-50, a7, @"No domain provided");
      v46 = 0;
      v14 = 0;
      goto LABEL_45;
    }

    v14 = 0;
    goto LABEL_42;
  }

  v80 = a3;
  v81 = a4;
  v21 = objc_autoreleasePoolPush();
  *buf = v14;
  v22 = [NSArray arrayWithObjects:buf count:1];
  v23 = [_SWCServiceSpecifier serviceSpecifiersWithEntitlementValue:v22 error:0];
  v24 = [v23 firstObject];

  if (v24)
  {
    v25 = v81;
  }

  else
  {
    v28 = [[_SWCServiceSpecifier alloc] initWithServiceType:0 applicationIdentifier:0 domain:v14];
    v25 = v81;
    if (!v28)
    {
      objc_autoreleasePoolPop(v21);
      v84 = -1;
      goto LABEL_26;
    }

    v24 = v28;
  }

  v29 = v24;

  objc_autoreleasePoolPop(v21);
  CFRelease(v14);
  v30 = v29;
  v14 = [v30 domainHost];

  v31 = [v30 domainPort];
  v32 = v31;
  if (v31)
  {
    v84 = [v31 unsignedShortValue];
  }

  else
  {
    v84 = -1;
  }

  if (v14)
  {
    CFRetain(v14);
  }

  CFRelease(v30);
LABEL_26:
  if (!value)
  {
LABEL_42:
    v26 = @"No account provided";
    v27 = -50;
    goto LABEL_43;
  }

  if (!v14)
  {
    goto LABEL_41;
  }

  if (!v25)
  {
    v26 = @"Missing application-identifier entitlement";
    v27 = -34018;
    goto LABEL_43;
  }

  v77 = a6;
  v79 = a7;
  context = objc_autoreleasePoolPush();
  v76 = _SWCServiceTypeWebCredentials;
  [_SWCServiceSpecifier serviceSpecifiersWithEntitlementValue:"serviceSpecifiersWithEntitlementValue:serviceType:error:" serviceType:a5 error:?];
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v33 = v97 = 0u;
  v34 = [v33 countByEnumeratingWithState:&v94 objects:buf count:16];
  v35 = v84;
  if (!v34)
  {
    goto LABEL_39;
  }

  v36 = v34;
  v37 = *v95;
  while (2)
  {
    for (i = 0; i != v36; i = i + 1)
    {
      if (*v95 != v37)
      {
        objc_enumerationMutation(v33);
      }

      v39 = *(*(&v94 + 1) + 8 * i);
      v40 = [v39 domainHost];
      if (![v40 caseInsensitiveCompare:v14])
      {
        if ((v35 & 0x80000000) != 0)
        {
          goto LABEL_50;
        }

        v41 = [v39 domainPort];
        v42 = [NSNumber numberWithInt:v35];
        v43 = [v41 isEqualToNumber:v42];

        v35 = v84;
        if (v43)
        {
LABEL_50:

          objc_autoreleasePoolPop(context);
          v48 = objc_autoreleasePoolPush();
          v49 = sub_100006274("swc");
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            *&buf[4] = v81;
            v99 = 2112;
            v100 = v14;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Application %@ is requesting approval for %@", buf, 0x16u);
          }

          v50 = [[_SWCServiceSpecifier alloc] initWithServiceType:v76 applicationIdentifier:v81 domain:v14];
          *&v94 = 0;
          v51 = [_SWCServiceDetails serviceDetailsWithServiceSpecifier:v50 error:&v94];
          v52 = v94;
          if (v51)
          {
            v53 = [v51 firstObject];
            v54 = v53;
            if (v53)
            {
              v55 = [v53 userApprovalState];
              if (v55 == 1)
              {
                v56 = 1;
              }

              else
              {
                v56 = 2 * (v55 == 2);
              }

              if ([v54 siteApprovalState]== 1)
              {
                v56 |= 4u;
              }

LABEL_65:

              objc_autoreleasePoolPop(v48);
              if (v79)
              {
                if ((v56 & 4) != 0)
                {
                  if ((v56 & 2) == 0)
                  {
                    goto LABEL_71;
                  }

                  sub_1000103CC(-25293, v79, @"User denied access to %@ by %@", v14, v81);
                }

                else
                {
                  sub_1000103CC(-25293, v79, @"%@ failed to approve %@", v14, v81);
                }
              }

              if ((v56 & 4) == 0)
              {
                goto LABEL_44;
              }

LABEL_71:
              *&v90 = 0;
              *(&v90 + 1) = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
              *(&v91 + 1) = *(a2 + 24);
              LOWORD(v91) = 0;
              BYTE2(v91) = 0;
              Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
              if (!Mutable)
              {
                sub_1000103CC(-108, v79, @"Unable to create query dictionary");
                goto LABEL_44;
              }

              v58 = Mutable;
              CFDictionaryAddValue(Mutable, kSecClass, kSecClassInternetPassword);
              CFDictionaryAddValue(v58, kSecAttrAccessGroup, @"com.apple.cfnetwork");
              CFDictionaryAddValue(v58, kSecAttrAuthenticationType, kSecAttrAuthenticationTypeHTMLForm);
              CFDictionaryAddValue(v58, kSecAttrServer, v14);
              CFDictionaryAddValue(v58, kSecAttrSynchronizable, kCFBooleanTrue);
              CFDictionarySetValue(v58, kSecAttrAccount, @"Passwords not saved");
              v59 = sub_100007B14(v58, v77, &v90, v79);
              if (v77)
              {
                v60 = *v77;
                if (*v77)
                {
                  *v77 = 0;
                  CFRelease(v60);
                }
              }

              if (v79)
              {
                v61 = *v79;
                if (*v79)
                {
                  *v79 = 0;
                  CFRelease(v61);
                }
              }

              if (v59)
              {
                sub_1000103CC(-25299, v79, @"Item already exists for this server");
              }

              else
              {
                CFDictionarySetValue(v58, kSecAttrAccount, value);
                if (v84 - 1 <= 0xFFFFFFFD)
                {
                  *buf = v84;
                  v62 = CFNumberCreate(0, kCFNumberSInt16Type, buf);
                  CFDictionaryAddValue(v58, kSecAttrPort, v62);
                  if (v62)
                  {
                    CFRelease(v62);
                  }
                }

                CFDictionaryAddValue(v58, kSecReturnData, kCFBooleanTrue);
                v63 = sub_100007B14(v58, v77, &v90, v79);
                CFDictionaryRemoveValue(v58, kSecReturnData);
                if (v63)
                {
                  if (v82)
                  {
                    v64 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                    ExternalRepresentation = CFStringCreateExternalRepresentation(kCFAllocatorDefault, v82, 0x8000100u, 0);
                    CFDictionaryAddValue(v64, kSecValueData, ExternalRepresentation);
                    v66 = v77 && *v77 && CFEqual(*v77, ExternalRepresentation) != 0;
                    if (ExternalRepresentation)
                    {
                      CFRelease(ExternalRepresentation);
                    }

                    CFDictionaryAddValue(v64, kSecAttrComment, @"default");
                    v46 = (v66 || (v88[0] = _NSConcreteStackBlock, v88[1] = 0x40000000, v88[2] = sub_100188590, v88[3] = &unk_100342908, v88[4] = a2, v88[5] = v81, sub_10020171C(1u, v80, v58, v79, v88))) && sub_10001F5E0(v58, v64, &v90, v79);
                  }

                  else
                  {
                    v87[0] = _NSConcreteStackBlock;
                    v87[1] = 0x40000000;
                    v87[2] = sub_1001885AC;
                    v87[3] = &unk_100342928;
                    v87[4] = a2;
                    v87[5] = v81;
                    v46 = sub_10020171C(2u, v80, v58, v79, v87) && sub_100010CA8(v58, &v90, v79);
                    v64 = 0;
                  }

                  if (v77)
                  {
                    v74 = *v77;
                    if (*v77)
                    {
                      *v77 = 0;
                      CFRelease(v74);
                    }
                  }

                  if (v79)
                  {
                    v75 = *v79;
                    if (*v79)
                    {
                      *v79 = 0;
                      CFRelease(v75);
                    }
                  }

                  if (v64)
                  {
                    CFRelease(v64);
                  }

                  goto LABEL_128;
                }

                if (v77)
                {
                  v67 = *v77;
                  if (*v77)
                  {
                    *v77 = 0;
                    CFRelease(v67);
                  }
                }

                if (v79)
                {
                  v68 = *v79;
                  if (*v79)
                  {
                    *v79 = 0;
                    CFRelease(v68);
                  }
                }

                if (v82)
                {
                  v69 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ (%@)", v14, value);
                  if (v69)
                  {
                    v70 = v69;
                    CFDictionaryAddValue(v58, kSecAttrLabel, v69);
                    CFRelease(v70);
                  }

                  CFDictionaryAddValue(v58, kSecAttrProtocol, kSecAttrProtocolHTTPS);
                  v71 = CFStringCreateExternalRepresentation(kCFAllocatorDefault, v82, 0x8000100u, 0);
                  CFDictionarySetValue(v58, kSecValueData, v71);
                  if (v71)
                  {
                    CFRelease(v71);
                  }

                  CFDictionarySetValue(v58, kSecAttrComment, @"default");
                  if (*(&v90 + 1))
                  {
                    CFRelease(*(&v90 + 1));
                  }

                  *(&v90 + 1) = CFArrayCreate(kCFAllocatorDefault, &off_100342900, 1, &kCFTypeArrayCallBacks);
                  *buf = 1937204065;
                  v72 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, buf);
                  if (v72)
                  {
                    v73 = v72;
                    CFDictionarySetValue(v58, kSecAttrCreator, v72);
                    CFRelease(v73);
                  }

                  v86[0] = _NSConcreteStackBlock;
                  v86[1] = 0x40000000;
                  v86[2] = sub_1001885C8;
                  v86[3] = &unk_100342948;
                  v86[4] = a2;
                  v86[5] = v81;
                  v46 = 0;
                  if (sub_10020171C(0, v80, v58, v79, v86))
                  {
                    v46 = sub_100019784(v58, &v90, v77, v79);
                  }

                  goto LABEL_128;
                }
              }

              v46 = 1;
LABEL_128:
              CFRelease(v58);
              goto LABEL_45;
            }
          }

          else
          {
            v54 = sub_100006274("SecError");
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v52;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "+[_SWCServiceDetails serviceDetailsWithServiceSpecifier:error:] failed with %@", buf, 0xCu);
            }
          }

          v56 = 0;
          goto LABEL_65;
        }
      }
    }

    v36 = [v33 countByEnumeratingWithState:&v94 objects:buf count:16];
    if (v36)
    {
      continue;
    }

    break;
  }

LABEL_39:

  objc_autoreleasePoolPop(context);
  v44 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ not found in %@ entitlement", v14, @"com.apple.developer.associated-domains");
  if (v44)
  {
    v45 = v44;
    sub_1000103CC(-34018, v79, @"%@", v44);
    goto LABEL_82;
  }

  v45 = CFRetain(@"Requested domain not found in entitlement");
  sub_1000103CC(-34018, v79, @"%@", v45);
  if (v45)
  {
LABEL_82:
    CFRelease(v45);
  }

LABEL_44:
  v46 = 0;
LABEL_45:
  if (*(&v90 + 1))
  {
    CFRelease(*(&v90 + 1));
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v46;
}

void sub_100188590(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100172698(*(a1 + 40), a2, kCFBooleanFalse);
  }
}

void sub_1001885AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100172698(*(a1 + 40), a2, kCFBooleanFalse);
  }
}

void sub_1001885C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100172698(*(a1 + 40), a2, kCFBooleanFalse);
  }
}

uint64_t sub_1001885E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 0x40000000;
  v13[2] = sub_100188784;
  v13[3] = &unk_100342998;
  v14 = a4;
  v13[6] = a3;
  v13[7] = a5;
  v13[4] = &v15;
  v13[5] = a2;
  v13[8] = a1;
  sub_100008A70(0, 1, 0, a5, v13);
  v6 = sub_100006274("SecServerKeychainCreateBackup");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (v16[3])
    {
      v7 = "success";
    }

    else
    {
      v7 = "fail";
    }

    if (a5)
    {
      v8 = *a5;
    }

    else
    {
      v8 = 0;
    }

    *buf = 136315394;
    v20 = v7;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Backup result: %s (%@)", buf, 0x16u);
  }

  v9 = v16[3];
  if (a5)
  {
    v10 = *a5;
  }

  LKABackupReportEnd();
  v11 = v16[3];
  _Block_object_dispose(&v15, 8);
  return v11;
}

uint64_t sub_100188784(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 72);
  LKABackupReportStart();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = sub_100188848;
  v10[3] = &unk_100342970;
  v15 = *(a1 + 72);
  v7 = *(a1 + 48);
  v11 = *(a1 + 32);
  v12 = v7;
  v13 = a2;
  v8 = *(a1 + 56);
  v14 = vextq_s8(v8, v8, 8uLL);
  return sub_1000141DC(a2, 3, v8.i64[0], v10);
}

BOOL sub_100188848(uint64_t a1)
{
  v2 = sub_100006274("SecServerKeychainCreateBackup");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 40))
    {
      v3 = "provided";
    }

    else
    {
      v3 = "device";
    }

    v4 = "";
    if (*(a1 + 80))
    {
      v4 = ", EMCS mode";
    }

    *buf = 136315394;
    *v20 = v3;
    *&v20[8] = 2080;
    *&v20[10] = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Performing backup from %s keybag%s", buf, 0x16u);
  }

  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  if (*(a1 + 40) == 0)
  {
    v8 = sub_100188B60(*(a1 + 56), *(a1 + 64), 0, *(a1 + 72));
    goto LABEL_25;
  }

  v9 = *(a1 + 80);
  v10 = *(a1 + 72);
  v17 = -1431655766;
  kdebug_trace();
  cf = 0;
  v11 = MKBKeyBagCreateWithData();
  if (v11)
  {
    if (sub_10001C4BC(v11, v10, @"MKBKeyBagCreateWithData failed: %d", v11))
    {
      goto LABEL_22;
    }

LABEL_17:
    kdebug_trace();
    v8 = 0;
    goto LABEL_25;
  }

  if (!v5 || (v9 & 1) != 0)
  {
    v14 = sub_100006274("keychainbackup");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = "yes";
      if (!v5)
      {
        v15 = "no";
      }

      *buf = 67109378;
      *v20 = v9;
      *&v20[4] = 2080;
      *&v20[6] = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "skipping keybag unlock for EMCS:%{BOOL}d pw:%s", buf, 0x12u);
    }

    goto LABEL_22;
  }

  v12 = MKBKeyBagUnlock();
  if (v12)
  {
    v13 = v12;
    CFRelease(cf);
    if (!sub_10001C4BC(v13, v10, @"failed to unlock bag: %d", v13))
    {
      goto LABEL_17;
    }
  }

LABEL_22:
  if (MKBKeyBagGetAKSHandle())
  {
    v8 = 0;
  }

  else
  {
    kdebug_trace();
    kdebug_trace();
    v8 = sub_100188B60(v6, v7, &v17, v10);
  }

  kdebug_trace();
LABEL_25:
  *(*(*(a1 + 32) + 8) + 24) = v8;
  return *(*(*(a1 + 32) + 8) + 24) != 0;
}

CFDataRef sub_100188B60(uint64_t a1, uint64_t a2, int *a3, __CFString **a4)
{
  kdebug_trace();
  v8 = sub_10017B9F4(a1, a2, a3, 2, a4);
  if (v8)
  {
    v9 = v8;
    Data = CFPropertyListCreateData(kCFAllocatorDefault, v8, kCFPropertyListBinaryFormat_v1_0, 0, a4);
    CFRelease(v9);
  }

  else
  {
    Data = 0;
  }

  kdebug_trace();
  return Data;
}

uint64_t sub_100188C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __CFString **a5)
{
  if (a1 && a3)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 0x40000000;
    v7[2] = sub_100188CF0;
    v7[3] = &unk_1003429B8;
    v7[4] = a2;
    v7[5] = a1;
    v7[6] = a3;
    v7[7] = a4;
    v7[8] = a5;
    result = sub_100008A70(1, 1, 0, a5, v7);
    if (result)
    {
      sub_10017E8CC();
      sub_10017E868();
      return 1;
    }
  }

  else
  {

    return sub_1000103CC(-50, a5, @"backup or keybag missing");
  }

  return result;
}

uint64_t sub_100188CF0(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v5 = a1[7];
  v7 = a1[8];
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20[2] = v8;
  v20[3] = v8;
  v20[0] = v8;
  v20[1] = v8;
  v9 = sub_100006274("SecServerKeychainRestore");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Restoring keychain backup", &buf, 2u);
  }

  kdebug_trace();
  CFDataGetBytePtr(v6);
  CFDataGetLength(v6);
  if (v5)
  {
    CFDataGetBytePtr(v5);
    CFDataGetLength(v5);
  }

  v10 = aks_kc_backup_open_keybag();
  if (v10)
  {
    v11 = v10;
    v12 = sub_100006274("SecWarning");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SecServerKeychainRestore: aks_kc_backup_open_keybag failed: %d", &buf, 8u);
    }

    if (v7)
    {
      sub_10001C4BC(v11, v7, @"aks_kc_backup_open_keybag failed: %d", v11);
    }

    kdebug_trace();
LABEL_17:
    v17 = sub_100006274("SecWarning");
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v18)
    {
      if (v7)
      {
        v19 = *v7;
      }

      else
      {
        v19 = 0;
      }

      LODWORD(buf) = 138412290;
      *(&buf + 4) = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "SecServerKeychainRestore: Restore failed with: %@", &buf, 0xCu);
      return 0;
    }

    return result;
  }

  v13 = sub_100006274("SecServerKeychainRestore");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *&buf = -4227858176;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "aks_kc_backup_open_keybag got backup_keybag:%d", &buf, 8u);
  }

  kdebug_trace();
  kdebug_trace();
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 0x40000000;
  v22 = sub_1001890B8;
  v23 = &unk_100343278;
  v24 = v4;
  v25 = v7;
  v26 = a2;
  v27 = v3;
  v28 = v20;
  v29 = -1;
  v30 = dword_10039E2F8;
  v14 = sub_1000141DC(a2, 2, v7, &buf);
  kdebug_trace();
  if (!v14)
  {
    goto LABEL_17;
  }

  v15 = sub_100006274("SecServerKeychainRestore");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Restore completed successfully", &buf, 2u);
  }

  return 1;
}

BOOL sub_1001890B8(uint64_t a1)
{
  kdebug_trace();
  v2 = CFPropertyListCreateWithData(kCFAllocatorDefault, *(a1 + 32), 0, 0, *(a1 + 40));
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == CFDictionaryGetTypeID())
    {
      v5 = sub_10017C94C(*(a1 + 48), *(a1 + 56), *(a1 + 72), *(a1 + 64), *(a1 + 76), v3, 2, 0, *(a1 + 40));
    }

    else
    {
      v5 = sub_1000103CC(-50, *(a1 + 40), @"import: keychain is not a dictionary");
    }

    v6 = v5;
    CFRelease(v3);
  }

  else
  {
    v6 = 0;
  }

  kdebug_trace();
  return v6;
}

const void *sub_1001891AC(CFDataRef data, CFErrorRef *error)
{
  v3 = CFPropertyListCreateWithData(kCFAllocatorDefault, data, 0, 0, error);
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(v4, @"keybag-uuid");
      if (Value)
      {
        v7 = Value;
        v8 = CFGetTypeID(Value);
        if (v8 == CFStringGetTypeID())
        {
          CFRetain(v7);
LABEL_9:
          CFRelease(v4);
          return v7;
        }
      }

      sub_1000103CC(-26275, error, @"Missing or invalid %@ in backup dictionary", @"keybag-uuid");
    }

    v7 = 0;
    goto LABEL_9;
  }

  return 0;
}

uint64_t sub_10018928C()
{
  v0 = _OctagonSignpostLogSystem();
  v1 = _OctagonSignpostCreate();

  v2 = _OctagonSignpostLogSystem();
  v3 = v2;
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    LOWORD(v13) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, v1, "SOSCCHandleUpdateMessage", " enableTelemetry=YES ", &v13, 2u);
  }

  v4 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    v14 = v1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCCHandleUpdateMessage  enableTelemetry=YES ", &v13, 0xCu);
  }

  v5 = sub_100245E3C();
  if (v5)
  {
    updated = SOSCloudKeychainHandleUpdateMessage();
  }

  else
  {
    updated = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  }

  v7 = updated;
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v9 = _OctagonSignpostLogSystem();
  v10 = v9;
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v13 = 67240192;
    LODWORD(v14) = v7 != 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v1, "SOSCCHandleUpdateMessage", " SOSSignpostNameSOSCCHandleUpdateMessage=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCHandleUpdateMessage}d ", &v13, 8u);
  }

  v11 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218496;
    v14 = v1;
    v15 = 2048;
    v16 = Nanoseconds / 1000000000.0;
    v17 = 1026;
    v18 = v7 != 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCHandleUpdateMessage  SOSSignpostNameSOSCCHandleUpdateMessage=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCHandleUpdateMessage}d ", &v13, 0x1Cu);
  }

  return v7;
}

uint64_t sub_1001894F8(const void *a1, CFTypeRef cf, const void *a3, __CFString **a4)
{
  if (!cf)
  {
    v36 = 0;
LABEL_57:
    sub_1000103CC(-50, a4, @"keybag %@ not a data", v36);
    return 0;
  }

  v8 = CFGetTypeID(cf);
  if (v8 != CFDataGetTypeID())
  {
    v36 = cf;
    goto LABEL_57;
  }

  if (a1)
  {
    v9 = CFGetTypeID(a1);
    if (v9 != CFDictionaryGetTypeID())
    {
      sub_1000103CC(-50, a4, @"backup %@ not a dictionary", a1);
      return 0;
    }
  }

  if (a3)
  {
    v10 = CFGetTypeID(a3);
    if (v10 != CFDataGetTypeID())
    {
      sub_1000103CC(-50, a4, @"password %@ not a data", a3);
      return 0;
    }
  }

  cfa = 0;
  v53 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2000000000;
  v51 = 0;
  v47 = -1431655766;
  if (!sub_100193FBC(cf, a3, &v47, a4))
  {
    goto LABEL_53;
  }

  v11 = sub_10000869C(0);
  v12 = sub_100014CA8(v11);
  sub_100087E9C(v12 != 0, a4, @"No datasource");
  if (v12)
  {
    v13 = (*(v12 + 8))(v12, kSecAttrAccessibleWhenUnlocked, a4);
    if (v13)
    {
      v14 = v13;
      if (a1)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, a1);
        v49[3] = MutableCopy;
        v16 = a1;
      }

      else
      {
        Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v49[3] = Mutable;
        v16 = 0;
      }

      v18 = sub_100176900(v16, a4);
      v19 = *v14;
      if ([OTSOSActualAdapter sosEnabled]_0())
      {
        v37 = 0;
        v38 = &v37;
        v39 = 0x2020000000;
        v40 = 0;
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v59 = sub_1001507A4;
        v60 = &unk_100338250;
        v61 = &v37;
        v62 = v19;
        v63 = 0;
        sub_1001507E8(v19, 0, &buf);
        v20 = *(v38 + 24);
        _Block_object_dispose(&v37, 8);
        if (v20)
        {
          goto LABEL_18;
        }
      }

      else
      {
        SOSCCSetSOSDisabledError();
      }

      V0ViewSet = SOSViewsGetV0ViewSet();
      v20 = (*(v14 + 24))(v14, V0ViewSet, a4);
      if (!v20)
      {
        v23 = v49[3];
        if (v23)
        {
          v49[3] = 0;
          CFRelease(v23);
        }

        v24 = sub_100006274("SecError");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          if (a4)
          {
            v25 = *a4;
          }

          else
          {
            v25 = 0;
          }

          LODWORD(buf) = 138412290;
          *(&buf + 4) = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "failed to obtain manifest for keychain: %@", &buf, 0xCu);
        }

        v22 = 0;
        v20 = 0;
LABEL_27:
        v46[0] = _NSConcreteStackBlock;
        v46[1] = 0x40000000;
        v46[2] = sub_100189ACC;
        v46[3] = &unk_1003432A0;
        v46[4] = &v48;
        sub_10022A5D4(v22, v46);
        v26 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        v37 = _NSConcreteStackBlock;
        v38 = 0x40000000;
        v39 = sub_100189B9C;
        v40 = &unk_1003432C8;
        v45 = v47;
        v43 = v14;
        v44 = a4;
        v41 = &v48;
        v42 = v26;
        if (((*(v14 + 32))(v14, 0, cfa, a4, &v37) & 1) == 0)
        {
          v27 = v49[3];
          if (v27)
          {
            v49[3] = 0;
            CFRelease(v27);
          }
        }

        if (!CFArrayGetCount(v26))
        {
          goto LABEL_37;
        }

        if ([OTSOSActualAdapter sosEnabled]_0())
        {
          v54 = 0;
          v55 = &v54;
          v56 = 0x2020000000;
          v57 = 1;
          *&buf = _NSConcreteStackBlock;
          *(&buf + 1) = 3221225472;
          v59 = sub_100150938;
          v60 = &unk_100338200;
          v61 = &v54;
          v62 = v19;
          v63 = 0;
          v64 = v26;
          v65 = a4;
          dispatch_sync(*(v19 + 112), &buf);
          v28 = *(v55 + 24);
          _Block_object_dispose(&v54, 8);
          if (v28)
          {
LABEL_37:
            if (v26)
            {
              CFRelease(v26);
            }

            if (((*(v14 + 72))(v14, a4) & 1) == 0)
            {
              v30 = v49[3];
              if (v30)
              {
                v49[3] = 0;
                CFRelease(v30);
              }
            }

            if (v18)
            {
              CFRelease(v18);
            }

            if (v20)
            {
              CFRelease(v20);
            }

            goto LABEL_46;
          }
        }

        else
        {
          SOSCCSetSOSDisabledError();
        }

        v29 = v49[3];
        if (v29)
        {
          v49[3] = 0;
          CFRelease(v29);
        }

        goto LABEL_37;
      }

LABEL_18:
      sub_10022A898(v18, v20, &v53, &cfa, a4);
      v22 = v53;
      goto LABEL_27;
    }
  }

LABEL_46:
  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  v31 = sub_1001940F8(v47, a4);
  v32 = v49;
  if (v31)
  {
    goto LABEL_54;
  }

  v33 = v49[3];
  if (!v33)
  {
    goto LABEL_54;
  }

  v49[3] = 0;
  CFRelease(v33);
LABEL_53:
  v32 = v49;
LABEL_54:
  v34 = v32[3];
  _Block_object_dispose(&v48, 8);
  return v34;
}

void sub_100189AB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100189ACC(uint64_t a1, CFDataRef theData)
{
  Length = CFDataGetLength(theData);
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 2 * Length);
  BytePtr = CFDataGetBytePtr(theData);
  v7 = CFDataGetLength(theData);
  if (v7 >= 1)
  {
    v8 = v7;
    do
    {
      v9 = *BytePtr++;
      CFStringAppendFormat(Mutable, 0, @"%02X", v9);
      --v8;
    }

    while (v8);
  }

  CFDictionaryRemoveValue(*(*(*(a1 + 32) + 8) + 24), Mutable);

  CFRelease(Mutable);
}

void sub_100189B9C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  cf = 0;
  if (!a3)
  {
    v20 = *(a1 + 40);
    values = a2;
    v21 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
    CFArrayAppendValue(v20, v21);
    if (!v21)
    {
      return;
    }

    v22 = v21;
    goto LABEL_22;
  }

  v8 = (*(*(a1 + 48) + 112))(a3, &cf);
  if (!v8 || (v9 = (*(*(a1 + 48) + 144))(a3, *(a1 + 64), &cf)) == 0)
  {
    if (SecErrorGetOSStatus() == -26275)
    {
      CFRelease(cf);
      v17 = *(a1 + 40);
      values = a2;
      v18 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
      CFArrayAppendValue(v17, v18);
      if (v18)
      {
        v19 = v18;
LABEL_16:
        CFRelease(v19);
      }
    }

    else
    {
      *a4 = 1;
      **(a1 + 56) = cf;
      v23 = *(*(a1 + 32) + 8);
      v19 = *(v23 + 24);
      if (v19)
      {
        *(v23 + 24) = 0;
        goto LABEL_16;
      }
    }

    v10 = 0;
    goto LABEL_18;
  }

  v10 = v9;
  Length = CFDataGetLength(v8);
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 2 * Length);
  BytePtr = CFDataGetBytePtr(v8);
  v14 = CFDataGetLength(v8);
  if (v14 >= 1)
  {
    v15 = v14;
    do
    {
      v16 = *BytePtr++;
      CFStringAppendFormat(Mutable, 0, @"%02X", v16);
      --v15;
    }

    while (v15);
  }

  CFDictionarySetValue(*(*(*(a1 + 32) + 8) + 24), Mutable, v10);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_18:
  if (v8)
  {
    CFRelease(v8);
  }

  if (v10)
  {
    v22 = v10;
LABEL_22:
    CFRelease(v22);
  }
}

BOOL sub_100189DD8(const void *a1, CFTypeRef cf, const __CFData *a3, __CFString **a4)
{
  if (!cf)
  {
    v20 = 0;
    return sub_1000103CC(-50, a4, @"keybag %@ not a data", v20);
  }

  v8 = CFGetTypeID(cf);
  if (v8 != CFDataGetTypeID())
  {
    v20 = cf;
    return sub_1000103CC(-50, a4, @"keybag %@ not a data", v20);
  }

  if (!a1)
  {
    v21 = 0;
    return sub_1000103CC(-50, a4, @"backup %@ not a dictionary", v21);
  }

  v9 = CFGetTypeID(a1);
  if (v9 != CFDictionaryGetTypeID())
  {
    v21 = a1;
    return sub_1000103CC(-50, a4, @"backup %@ not a dictionary", v21);
  }

  if (a3 && (v10 = CFGetTypeID(a3), v10 != CFDataGetTypeID()))
  {

    return sub_1000103CC(-50, a4, @"password not a data");
  }

  else
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2000000000;
    v28 = 1;
    v24 = -1431655766;
    if (sub_100193FBC(cf, a3, &v24, a4))
    {
      v11 = sub_100176900(a1, a4);
      if (v11)
      {
        v12 = v11;
        v13 = sub_10000869C(0);
        v14 = sub_100014CA8(v13);
        sub_100087E9C(v14 != 0, a4, @"No datasource");
        if (v14)
        {
          v15 = (*(v14 + 8))(v14, kSecAttrAccessibleWhenUnlocked, a4);
          if (v15)
          {
            v22[0] = _NSConcreteStackBlock;
            v22[1] = 0x40000000;
            v22[2] = sub_10018A048;
            v22[3] = &unk_100343318;
            v22[6] = a4;
            v22[7] = v12;
            v22[8] = a1;
            v23 = v24;
            v22[4] = &v25;
            v22[5] = v15;
            LOBYTE(v15) = (*(v15 + 64))(v15, a4, 0, 0, v22);
          }
        }

        else
        {
          LOBYTE(v15) = 0;
        }

        *(v26 + 24) &= v15;
        CFRelease(v12);
      }

      v17 = sub_1001940F8(v24, a4);
      v18 = *(v26 + 24);
      v16 = v17 & v18;
      *(v26 + 24) = v17 & v18;
    }

    else
    {
      v16 = 0;
    }

    _Block_object_dispose(&v25, 8);
    return v16;
  }
}

void sub_10018A048(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  V0BackupViewSet = SOSViewsGetV0BackupViewSet();
  v6 = (*(v4 + 24))(v4, V0BackupViewSet, *(a1 + 48));
  v15 = 0;
  v16 = 0;
  sub_10022A898(v6, *(a1 + 56), &v16, &v15, *(a1 + 48));
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 0x40000000;
  v13[2] = sub_10018A17C;
  v13[3] = &unk_1003432F0;
  v7 = *(a1 + 64);
  v8 = *(a1 + 32);
  v13[6] = *(a1 + 40);
  v13[7] = a2;
  v14 = *(a1 + 72);
  v13[4] = v8;
  v13[5] = v7;
  v13[8] = *(a1 + 48);
  sub_10022A5D4(v15, v13);
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = (*(v9 + 72))(v9, *(a1 + 48));
  }

  else
  {
    v10 = 1;
  }

  *(*(*(a1 + 32) + 8) + 24) &= v10;
  v11 = v16;
  if (v16)
  {
    v16 = 0;
    CFRelease(v11);
  }

  v12 = v15;
  if (v15)
  {
    v15 = 0;
    CFRelease(v12);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_10018A17C(uint64_t a1, CFDataRef theData, _BYTE *a3)
{
  Length = CFDataGetLength(theData);
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 2 * Length);
  BytePtr = CFDataGetBytePtr(theData);
  v9 = CFDataGetLength(theData);
  if (v9 >= 1)
  {
    v10 = v9;
    do
    {
      v11 = *BytePtr++;
      CFStringAppendFormat(Mutable, 0, @"%02X", v11);
      --v10;
    }

    while (v10);
  }

  if (Mutable)
  {
    Value = CFDictionaryGetValue(*(a1 + 40), Mutable);
    CFRelease(Mutable);
    if (Value)
    {
      cf = 0;
      if (((*(*(a1 + 48) + 104))(*(a1 + 56), *(a1 + 72), Value, &cf) & 1) == 0)
      {
        OSStatus = SecErrorGetOSStatus();
        if (OSStatus != -26275)
        {
          if (OSStatus == -25308)
          {
            *a3 = 1;
          }

          else if (OSStatus == -25299)
          {
            v14 = sub_100006274("titc");
            if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_21;
            }

            *buf = 138477827;
            v23 = Value;
            v15 = "restore %{private}@ not replacing existing item";
            v16 = v14;
            v17 = 12;
            goto LABEL_20;
          }

          v18 = sub_100006274("SecError");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138478083;
            v23 = Value;
            v24 = 2112;
            v25 = cf;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "restore %{private}@ failed %@", buf, 0x16u);
          }

          *(*(*(a1 + 32) + 8) + 24) = 0;
          v19 = *(a1 + 64);
          if (v19 && !*v19)
          {
            *v19 = cf;
            return;
          }

          goto LABEL_21;
        }

        v20 = sub_100006274("titc");
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_21;
        }

        *buf = 138478083;
        v23 = Value;
        v24 = 2112;
        v25 = cf;
        v15 = "restore %{private}@ skipping corrupted item %@";
        v16 = v20;
        v17 = 22;
LABEL_20:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
LABEL_21:
        if (cf)
        {
          CFRelease(cf);
        }
      }
    }
  }
}

uint64_t sub_10018A418(char a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v6 = aks_generation();
  result = 0;
  if (!v6)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 0x40000000;
    v8[2] = sub_10018A4E4;
    v8[3] = &unk_1003429D8;
    v9 = v11 & 1;
    v10 = a1;
    v8[4] = a2;
    v8[5] = a3;
    return sub_100008A70(1, 1, 0, a3, v8);
  }

  return result;
}

BOOL sub_10018A4E4(uint64_t a1, const void *a2)
{
  result = sub_10017DDC8(a2, *(a1 + 48));
  if (*(a1 + 52) == 1 && !result)
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 0x40000000;
    v10[2] = sub_10017E0AC;
    v10[3] = &unk_100339BD0;
    v10[4] = v5;
    v10[5] = a2;
    v10[6] = v6;
    if (!sub_100015080(a2, 2, v5, v10))
    {
      goto LABEL_8;
    }

    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Completed roll keys.", v10, 2u);
    }

    if (sub_10017DDC8(a2, *(a1 + 48)))
    {
      return 1;
    }

    else
    {
LABEL_8:
      v8 = sub_100006274("SecError");
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      result = 0;
      if (v9)
      {
        LOWORD(v10[0]) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed to roll keys.", v10, 2u);
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10018A644(uint64_t a1, char a2, const __CFBoolean *a3, const __CFBoolean *a4, uint64_t a5, __CFString **a6)
{
  v11 = sub_100007698(a5, 0, 0, 0, a6);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  *(v11 + 12) = 3;
  v11[13] = -1;
  *(v11 + 30) = dword_10039E2F8;
  sub_1000079A0(kSecAttrAccessGroup, a3, v11);
  sub_1000079A0(kSecAttrSynchronizable, kCFBooleanTrue, v12);
  sub_1000079A0(kSecAttrTombstone, kCFBooleanFalse, v12);
  if (a4)
  {
    sub_1000079A0(kSecAttrService, a4, v12);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 0x40000000;
  v15[2] = sub_10018A7C0;
  v15[3] = &unk_100343398;
  v15[4] = a6;
  v15[5] = v12;
  v16 = a2;
  v15[6] = a1;
  v13 = sub_100008A70(0, 1, 0, a6, v15);
  sub_10000DF70(v12, 0);
  return v13;
}

uint64_t sub_10018A7C0(uint64_t a1, uint64_t a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_10018A848;
  v5[3] = &unk_100343378;
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v5[4] = *(a1 + 40);
  v5[5] = a2;
  v6 = *(a1 + 56);
  v5[6] = v3;
  return sub_1000141DC(a2, 2, v2, v5);
}

uint64_t sub_10018A848(uint64_t a1)
{
  v9 = 0;
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v7.isa = _NSConcreteStackBlock;
  *&v7.flags = 0x40000000;
  v7.invoke = sub_10018A934;
  v7.descriptor = &unk_100343338;
  v8 = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_10018A960;
  v5[3] = &unk_100343358;
  v6 = *(a1 + 56);
  v5[4] = *(a1 + 48);
  sub_100014718(v2, v1, &v9, 0, &v7, 0, 0, v5);
  v3 = v9;
  if (v9)
  {
    v9 = 0;
    CFRelease(v3);
  }

  return 1;
}

void sub_10018A960(uint64_t a1, uint64_t a2)
{
  cf = 0;
  v4 = sub_100006274("InitialSyncItems");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Copy item", buf, 2u);
  }

  v5 = sub_10001B350(a2, 0x10000, 0, &cf);
  if (v5)
  {
    v6 = v5;
    Value = CFDictionaryGetValue(v5, kSecAttrSyncViewHint);
    if (Value && (v8 = CFGetTypeID(Value), v8 == CFStringGetTypeID()))
    {
      v9 = SOSViewInSOSSystem();
    }

    else
    {
      v9 = 1;
    }

    if (*(a1 + 40) == 1)
    {
      valuePtr = -1431655766;
      v10 = CFDictionaryGetValue(v6, kSecAttrType);
      if (v10)
      {
        v11 = v10;
        v12 = CFGetTypeID(v10);
        if (v12 == CFNumberGetTypeID())
        {
          if (!CFNumberGetValue(v11, kCFNumberSInt32Type, &valuePtr))
          {
LABEL_15:
            CFRelease(v6);
            goto LABEL_16;
          }

          v9 = (BYTE2(valuePtr) & v9);
        }
      }
    }

    if (v9)
    {
      CFDictionaryAddValue(v6, kSecClass, **(a2 + 16));
      CFArrayAppendValue(*(a1 + 32), v6);
    }

    goto LABEL_15;
  }

LABEL_16:
  v13 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v13);
  }
}

uint64_t sub_10018AAF4(uint64_t a1, uint64_t a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_10018AB6C;
  v4[3] = &unk_1003429F8;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  v4[5] = a2;
  return sub_1000141DC(a2, 2, v2, v4);
}

uint64_t sub_10018AB6C(uint64_t a1)
{
  Count = CFArrayGetCount(*(a1 + 32));
  v3 = sub_100006274("ImportInitialSyncItems");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = Count;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Importing %d items", buf, 8u);
  }

  if (Count >= 1)
  {
    for (i = 0; Count != i; ++i)
    {
      cf = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 32), i);
      if (!ValueAtIndex)
      {
        continue;
      }

      v6 = ValueAtIndex;
      v7 = CFGetTypeID(ValueAtIndex);
      if (v7 != CFDictionaryGetTypeID())
      {
        continue;
      }

      Value = CFDictionaryGetValue(v6, kSecClass);
      if (Value)
      {
        v9 = Value;
        v10 = sub_1000074BC(Value);
        if (v10)
        {
          v11 = sub_10001A690(v10, v6, dword_10039E2F8, &cf);
          if (v11)
          {
            v12 = v11;
            v13 = sub_100016514(v11[2], 11, &cf);
            if (sub_1000154A0(v12, v13, kCFBooleanTrue, &cf))
            {
              v14 = *(a1 + 40);
              *buf = _NSConcreteStackBlock;
              *&buf[8] = 0x40000000;
              *&buf[16] = sub_10001E9B0;
              v30 = &unk_100338910;
              v31 = v12;
              v32 = 0;
              if ((sub_10001AA4C(v12, v14, &cf, buf) & 1) == 0)
              {
                v15 = sub_100006274("ImportInitialSyncItems");
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412547;
                  *&buf[4] = cf;
                  *&buf[12] = 2113;
                  *&buf[14] = v12;
                  v16 = v15;
                  v17 = "Item store failed with: %@: %{private}@";
                  goto LABEL_31;
                }

                goto LABEL_24;
              }
            }

            else
            {
              v25 = sub_100006274("ImportInitialSyncItems");
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412547;
                *&buf[4] = cf;
                *&buf[12] = 2113;
                *&buf[14] = v12;
                v16 = v25;
                v17 = "Failed to set sync=1: %@ for item %{private}@";
LABEL_31:
                _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, v17, buf, 0x16u);
              }

LABEL_24:
              v26 = cf;
              if (cf)
              {
                cf = 0;
                CFRelease(v26);
              }
            }

            v24 = v12;
          }

          else
          {
            v23 = sub_100006274("ImportInitialSyncItems");
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              *&buf[4] = cf;
              _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "Item creation failed with: %@", buf, 0xCu);
            }

            v24 = cf;
            if (!cf)
            {
              continue;
            }

            cf = 0;
          }

          CFRelease(v24);
          continue;
        }

        v22 = sub_100006274("ImportInitialSyncItems");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *&buf[4] = v9;
          v19 = v22;
          v20 = "Item with unknown class: %@";
          v21 = 12;
          goto LABEL_18;
        }
      }

      else
      {
        v18 = sub_100006274("ImportInitialSyncItems");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          v19 = v18;
          v20 = "Item w/o class";
          v21 = 2;
LABEL_18:
          _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, v20, buf, v21);
        }
      }
    }
  }

  return 1;
}

uint64_t sub_10018AF48(const __CFArray *a1, unsigned int a2, uint64_t a3, __CFString **a4)
{
  if (*(a3 + 36) != 1)
  {
    return 0;
  }

  kdebug_trace();
  v8 = sub_100006274("syncbubble");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 67109378;
    v26 = a2;
    v27 = 2112;
    v28 = a1;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "migration for uid %d for services %@", &v25, 0x12u);
  }

  v9 = *(a3 + 40);
  v29.length = CFArrayGetCount(a1);
  v29.location = 0;
  v10 = 1;
  if (!CFArrayContainsValue(a1, v29, @"com.apple.bird.usermanager.sync"))
  {
    v30.length = CFArrayGetCount(a1);
    v30.location = 0;
    if (!CFArrayContainsValue(a1, v30, @"com.apple.cloudphotod.sync"))
    {
      v31.length = CFArrayGetCount(a1);
      v31.location = 0;
      if (!CFArrayContainsValue(a1, v31, @"com.apple.cloudphotod.syncstakeholder"))
      {
        v32.length = CFArrayGetCount(a1);
        v32.location = 0;
        if (!CFArrayContainsValue(a1, v32, @"com.apple.cloudd.usermanager.sync"))
        {
          v10 = 0;
        }
      }
    }
  }

  v33.length = CFArrayGetCount(a1);
  v33.location = 0;
  v11 = CFArrayContainsValue(a1, v33, @"com.apple.nsurlsessiond.usermanager.sync");
  v34.length = CFArrayGetCount(a1);
  v34.location = 0;
  v12 = CFArrayContainsValue(a1, v34, @"com.apple.syncdefaultsd.usermanager.sync");
  v35.length = CFArrayGetCount(a1);
  v35.location = 0;
  if (CFArrayContainsValue(a1, v35, @"com.apple.mailq.sync") || ((v13 = v12 != 0, v11) ? (v14 = 1) : (v14 = v10), v36.length = CFArrayGetCount(a1), v36.location = 0, CFArrayContainsValue(a1, v36, @"com.apple.mailq.sync.xpc")))
  {
    v10 = 1;
    v15 = 1;
    v16 = 1;
  }

  else
  {
    v15 = 0;
    v16 = v13 | v14;
  }

  v17 = sub_100007604(@"inet", &qword_10039E0A0, &unk_10039E098);
  if (sub_10018B3C0(a3, a2, v9 != a2, v10, v17, &off_10039CB20, 1, a4) && (v18 = sub_100007604(@"genp", &qword_10039E090, &unk_10039E088), sub_10018B3C0(a3, a2, v9 != a2, v10, v18, &off_10039CB20, 1, a4)) && (v19 = sub_100007604(@"genp", &qword_10039E090, &unk_10039E088), sub_10018B3C0(a3, a2, v9 != a2, v15, v19, &off_10039CB30, 16, a4)) && (v20 = sub_100007604(@"genp", &qword_10039E090, &unk_10039E088), sub_10018B3C0(a3, a2, v9 != a2, v16 & 1, v20, &off_10039CC30, 6, a4)))
  {
    v21 = sub_100007604(@"inet", &qword_10039E0A0, &unk_10039E098);
    v22 = sub_10018B3C0(a3, a2, v9 != a2, v11 != 0, v21, &off_10039CC90, 1, a4);
  }

  else
  {
    v22 = 0;
  }

  v23 = sub_100006274("syncbubble");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 67109120;
    v26 = a2;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "migration for uid %d complete", &v25, 8u);
  }

  kdebug_trace();
  return v22;
}

uint64_t sub_10018B3C0(uint64_t a1, unsigned int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, __CFString **a8)
{
  *bytes = 0x114EC8A39FAB1A82;
  v41 = -397635414;
  v15 = bswap32(a2);
  v42 = v15;
  v16 = CFDataCreate(0, bytes, 16);
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  *bytes = 0x104B57A5353A5AA7;
  v41 = -1803342146;
  v42 = v15;
  v18 = CFDataCreate(0, bytes, 16);
  if (!v18)
  {
    CFRelease(v17);
    return 0;
  }

  v19 = v18;
  if (!a3 || (a4 & 1) == 0)
  {
    cf = v17;
    v20 = sub_100006274("syncbubble");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *bytes = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "cleaning out old items", bytes, 2u);
    }

    v21 = sub_100007698(a5, 0, 0, a1, a8);
    v22 = v21;
    if (!v21)
    {
      goto LABEL_31;
    }

    v36 = a1;
    v23 = a5;
    v21[13] = -1;
    *(v21 + 30) = dword_10039E2F8;
    v24 = a6;
    v25 = (a6 + 8);
    v26 = a7;
    do
    {
      sub_1000079A0(*(v25 - 1), *v25, v22);
      v25 += 2;
      --v26;
    }

    while (v26);
    v27 = CFRetain(cf);
    *(v22 + 128) = v27;
    if (!v27)
    {
LABEL_31:
      v33 = 0;
      v34 = 0;
      v17 = cf;
      goto LABEL_24;
    }

    v39[0] = _NSConcreteStackBlock;
    v39[1] = 0x40000000;
    v39[2] = sub_10018B7EC;
    v39[3] = &unk_1003433D8;
    v39[4] = a8;
    v39[5] = v22;
    sub_100008A70(1, 1, 0, a8, v39);
    sub_10000DF70(v22, 0);
    a6 = v24;
    a5 = v23;
    a1 = v36;
    v17 = cf;
  }

  v28 = sub_100006274("syncbubble");
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
  if (!a4 || a3)
  {
    if (v29)
    {
      *bytes = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "skip migration of items", bytes, 2u);
    }

    v33 = 0;
    v22 = 0;
    v34 = 1;
    goto LABEL_24;
  }

  if (v29)
  {
    *bytes = 0;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "migrating sync bubble items", bytes, 2u);
  }

  v30 = sub_100007698(a5, 0, 0, a1, a8);
  v22 = v30;
  if (!v30)
  {
    v33 = 0;
LABEL_33:
    v34 = 0;
    goto LABEL_24;
  }

  *(v30 + 12) = 3;
  v30[13] = -1;
  *(v30 + 30) = dword_10039E2F8;
  v31 = (a6 + 8);
  do
  {
    sub_10016D73C(*(v31 - 1), *v31, v22);
    v31 += 2;
    --a7;
  }

  while (a7);
  sub_10016D73C(@"musr", v19, v22);
  *(v22 + 128) = CFRetain(v19);
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v33 = Mutable;
  if (!Mutable)
  {
    goto LABEL_33;
  }

  CFDictionarySetValue(Mutable, @"musr", v17);
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 0x40000000;
  v38[2] = sub_10018B870;
  v38[3] = &unk_100343458;
  v38[4] = a8;
  v38[5] = v22;
  v38[6] = v33;
  v34 = 1;
  sub_100008A70(1, 1, 0, a8, v38);
LABEL_24:
  CFRelease(v17);
  CFRelease(v19);
  if (v33)
  {
    CFRelease(v33);
  }

  if (v22)
  {
    sub_10000DF70(v22, 0);
  }

  return v34;
}

uint64_t sub_10018B7EC(int8x16_t *a1, uint64_t a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_10018BC24;
  v4[3] = &unk_1003433B8;
  v4[4] = a2;
  v2 = a1[2];
  v5 = vextq_s8(v2, v2, 8uLL);
  return sub_1000141DC(a2, 2, v2.i64[0], v4);
}

uint64_t sub_10018B870(void *a1, uint64_t a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_10018B8F0;
  v5[3] = &unk_100343438;
  v2 = a1[4];
  v3 = a1[6];
  v5[4] = a1[5];
  v5[5] = a2;
  v5[6] = v3;
  return sub_1000141DC(a2, 2, v2, v5);
}

uint64_t sub_10018B8F0(uint64_t a1)
{
  v9 = 0;
  v1 = *(a1 + 32);
  v7.isa = _NSConcreteStackBlock;
  *&v7.flags = 0x40000000;
  v7.invoke = sub_10018B9DC;
  v7.descriptor = &unk_1003433F8;
  v8 = v1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_10018BA08;
  v5[3] = &unk_100343418;
  v2 = *(a1 + 40);
  v6 = vextq_s8(v2, v2, 8uLL);
  sub_100014718(v1, v2.i64[0], &v9, 0, &v7, 0, 0, v5);
  v3 = v9;
  if (v9)
  {
    v9 = 0;
    CFRelease(v3);
  }

  return 1;
}

void sub_10018BA08(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v4 = sub_100006274("syncbubble");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "migrating item", buf, 2u);
  }

  v5 = sub_1001632F8(a2, *(a1 + 32), &v10);
  if (v5)
  {
    v6 = v5;
    sub_10016360C(v5, 0);
    if (!sub_100162EFC(v6, dword_10039E2F8, 0))
    {
      goto LABEL_13;
    }

    v7 = *(a1 + 40);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_10001E9B0;
    v12 = &unk_100338910;
    v13 = v6;
    v14 = 0;
    if ((sub_10001AA4C(v6, v7, &v10, buf) & 1) == 0)
    {
      v8 = sub_100006274("syncbubble");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412547;
        *&buf[4] = v10;
        *&buf[12] = 2113;
        *&buf[14] = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "migration failed with %@ for item %{private}@", buf, 0x16u);
      }
    }

    CFRelease(v6);
  }

  else
  {
    v9 = sub_100006274("syncbubble");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "migration failed, no new_item %@", buf, 0xCu);
    }
  }

  v6 = v10;
  if (!v10)
  {
    return;
  }

  v10 = 0;
LABEL_13:
  CFRelease(v6);
}

uint64_t sub_10018BC38(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 1;
  kdebug_trace();
  v4 = sub_100006274("transmogrify");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "begin", buf, 2u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_10018BE74;
  v9[3] = &unk_100342BB0;
  v9[5] = a2;
  v9[6] = a1;
  v9[4] = &v11;
  sub_100008A70(1, 1, 0, a2, v9);
  if (sub_100089A14())
  {
    if (qword_10039DD70 != -1)
    {
      dispatch_once(&qword_10039DD70, &stru_100335EA0);
    }

    if ((byte_10039DD68 & 1) == 0)
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 0x40000000;
      v8[2] = sub_10018BF00;
      v8[3] = &unk_100342C00;
      v8[4] = &v11;
      v8[5] = a2;
      v8[6] = a1;
      sub_100008A70(1, 1, 0, a2, v8);
    }
  }

  v5 = sub_100006274("transmogrify");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "end", buf, 2u);
  }

  kdebug_trace();
  v6 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t sub_10018BE74(uint64_t a1, uint64_t a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_10018C17C;
  v4[3] = &unk_100342B88;
  v2 = *(a1 + 40);
  v5 = vextq_s8(v2, v2, 8uLL);
  v4[4] = *(a1 + 32);
  v6 = a2;
  return sub_1000141DC(a2, 2, v2.i64[0], v4);
}

uint64_t sub_10018BF00(uint64_t a1, uint64_t a2)
{
  if (sub_100180C54(a2))
  {
    v4 = sub_100006274("transmogrify");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Unexpectedly already transcrypted??", buf, 2u);
    }
  }

  else
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = sub_10018C08C;
    v9[3] = &unk_100342BD8;
    v9[4] = *(a1 + 32);
    v9[5] = a2;
    v5 = *(a1 + 40);
    v10 = vextq_s8(v5, v5, 8uLL);
    sub_1000141DC(a2, 2, v5.i64[0], v9);
    v6 = sub_100006274("transmogrify");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "transcrypted, setting flag to remember we've already done so", buf, 2u);
    }

    sub_100180D0C(a2);
    v7 = sub_100006274("transmogrify");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "transcrypted, using system keychain handle", buf, 2u);
    }

    dword_10039E2F8 = -6;
  }

  return 1;
}

uint64_t sub_10018C08C(void *a1)
{
  v2 = sub_100006274("transmogrify");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10[0]) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "must transcrypt, using default keybag", v10, 2u);
  }

  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = sub_100182968;
  v10[3] = &unk_100342FE0;
  v10[4] = v4;
  v10[5] = v5;
  v10[6] = v3;
  v6 = sub_1000141DC(v3, 2, v5, v10);
  v7 = *(a1[4] + 8);
  if (v6)
  {
    v8 = *(v7 + 24);
  }

  else
  {
    v8 = 0;
  }

  *(v7 + 24) = v8 & 1;
  return 1;
}

uint64_t sub_10018C17C(uint64_t a1)
{
  if (qword_10039DFC8 != -1)
  {
    dispatch_once(&qword_10039DFC8, &stru_100338EB0);
  }

  v2 = qword_10039DFD0;
  v3 = &off_10033C738;
  v4 = off_10033E8C8;
  do
  {
    if (*(v3 + 8) == 1)
    {
      if (qword_10039DFD8 != -1)
      {
        dispatch_once(&qword_10039DFD8, &stru_100338EF0);
      }

      v5 = sub_100007698(v3, qword_10039DFE0, 0, *(a1 + 40), *(a1 + 48));
      if (v5)
      {
        v6 = v5;
        v8 = *(a1 + 48);
        v7 = *(a1 + 56);
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 0x40000000;
        v12[2] = sub_10018C358;
        v12[3] = &unk_100342AF8;
        v12[4] = v8;
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 0x40000000;
        v11[2] = sub_10018C3D4;
        v11[3] = &unk_100342B60;
        v11[4] = *(a1 + 32);
        v11[5] = v2;
        v11[6] = v7;
        v11[7] = v8;
        *(*(*(a1 + 32) + 8) + 24) &= sub_100014718(v5, v7, v8, &stru_100342A58, &stru_100342A98, &stru_100342AD8, v12, v11);
        sub_10000DF70(v6, 0);
      }
    }

    v9 = *v4++;
    v3 = v9;
  }

  while (v9);
  return 1;
}

uint64_t sub_10018C358(uint64_t a1, sqlite3_stmt *a2, uint64_t a3)
{
  if (qword_10039DFD8 != -1)
  {
    dispatch_once(&qword_10039DFD8, &stru_100338EF0);
  }

  v6 = qword_10039DFE0;
  v7 = *(a1 + 32);

  return sub_10000CBCC(a2, a3, v6, v7);
}

void sub_10018C3D4(void *a1, __CFString ***a2)
{
  cf = 0;
  if ((sub_10001A768(a2, kSecAttrMultiUser, a1[5], &cf) & 1) == 0)
  {
    v4 = sub_100006274("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138478083;
      v11 = a2;
      v12 = 2112;
      v13 = cf;
      v5 = "item: %{private}@ update musr to system failed: %@";
      goto LABEL_7;
    }

LABEL_8:
    *(*(a1[4] + 8) + 24) = 0;
    goto LABEL_9;
  }

  if ((sub_10001C528(a2, a2, a1[6], &cf, &stru_100342B38) & 1) == 0)
  {
    v4 = sub_100006274("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138478083;
      v11 = a2;
      v12 = 2112;
      v13 = cf;
      v5 = "item: %{private}@ insert during UPDATE: %@";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 0x16u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
  v6 = cf;
  v7 = a1[7];
  if (cf && v7)
  {
    if (!*v7)
    {
      goto LABEL_19;
    }

    if (CFErrorGetCode(*v7) == -25330)
    {
      v8 = *v7;
      if (!*v7)
      {
        goto LABEL_19;
      }

      *v7 = 0;
      CFRelease(v8);
    }
  }

  else
  {
    if (!cf)
    {
      return;
    }

    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*v7)
  {
LABEL_18:
    CFRelease(v6);
    return;
  }

LABEL_19:
  *v7 = v6;
}

BOOL sub_10018C590(id a1, __CFString *a2, BOOL *a3)
{
  sub_100009A48(a2, a3);
  CFStringAppendFormat(a2, 0, @"musr = ?");
  return 1;
}

uint64_t sub_10018C5F8(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  kdebug_trace();
  v4 = sub_100006274("transcrypt");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "begin", buf, 2u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_10018C78C;
  v8[3] = &unk_100342C28;
  v8[4] = &v10;
  v8[5] = a1;
  v8[6] = a2;
  sub_100008A70(1, 1, 0, a2, v8);
  v5 = sub_100006274("transcrypt");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "end", buf, 2u);
  }

  kdebug_trace();
  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t sub_10018C78C(void *a1, uint64_t a2)
{
  v4 = a1[5];
  v3 = a1[6];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_100182968;
  v6[3] = &unk_100342FE0;
  v6[4] = v4;
  v6[5] = v3;
  v6[6] = a2;
  *(*(a1[4] + 8) + 24) = sub_1000141DC(a2, 2, v3, v6);
  return *(*(a1[4] + 8) + 24);
}

uint64_t sub_10018C82C(int a1, uint64_t a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_10018C8AC;
  v3[3] = &unk_100342C48;
  v4 = a1;
  v3[4] = a2;
  return sub_100008A70(1, 1, 0, a2, v3);
}

uint64_t sub_10018C8AC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  *bytes = 0x114EC8A39FAB1A82;
  v13 = -397635414;
  v14 = bswap32(v4);
  v5 = CFDataCreate(0, bytes, 16);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *(a1 + 40);
  *bytes = 0x104B57A5353A5AA7;
  v13 = -1803342146;
  v14 = bswap32(v7);
  v8 = CFDataCreate(0, bytes, 16);
  if (v8)
  {
    v9 = v8;
    if (sub_10017ABD4(a2, v6, 0, *(a1 + 32)))
    {
      v10 = sub_10017ABD4(a2, v9, 0, *(a1 + 32));
    }

    else
    {
      v10 = 0;
    }

    CFRelease(v6);
  }

  else
  {
    v10 = 0;
    v9 = v6;
  }

  CFRelease(v9);
  return v10;
}

BOOL sub_10018C9E4(void *a1, void *a2, uint64_t a3, __CFString **a4)
{
  keys[0] = kSecClass;
  keys[1] = kSecMatchLimit;
  keys[2] = kSecAttrIssuer;
  keys[3] = kSecAttrSerialNumber;
  keys[4] = kSecAttrSynchronizable;
  values[0] = kSecClassCertificate;
  values[1] = kSecMatchLimitOne;
  values[2] = a1;
  values[3] = a2;
  values[4] = kSecAttrSynchronizableAny;
  v9[0] = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9[1] = a3;
  LOBYTE(v10) = 1;
  v5 = CFDictionaryCreate(0, keys, values, 5, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  cf = 0;
  v6 = sub_100007B14(v5, &cf, v9, a4);
  if (v5)
  {
    CFRelease(v5);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

void sub_10018D0EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10018D118(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (!v6)
  {
    v12 = [WeakRetained deps];
    v13 = [v12 ckks];
    [v13 receiveTLKUploadRecords:v5];

    v11 = [v8 intendedState];
LABEL_7:
    v14 = v11;
    [v8 setNextState:v11];

    goto LABEL_15;
  }

  if ([v6 isCuttlefishError:1033])
  {
    v9 = sub_100006274("octagon-ckks");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 ckksConflictState];
      v18 = 138412290;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "A CKKS key hierarchy is out of date; moving to '%@'", &v18, 0xCu);
    }

    v11 = [v8 ckksConflictState];
    goto LABEL_7;
  }

  if ([v6 isCuttlefishError:1037])
  {
    v15 = sub_100006274("octagon-ckks");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Cuttlefish reports we no longer exist.", &v18, 2u);
    }

    v16 = [v8 peerMissingState];
    [v8 setNextState:v16];
  }

  else
  {
    v16 = sub_100006274("SecError");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "octagon: Error calling tlk upload: %@", &v18, 0xCu);
    }
  }

  [v8 setError:v6];
LABEL_15:
  v17 = [v8 finishedOp];
  [v8 runBeforeGroupFinished:v17];
}

void sub_10018D6D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10018D730(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_100006274("octagon");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [WeakRetained error];
    v4 = v3;
    v5 = @"no error";
    if (v3)
    {
      v5 = v3;
    }

    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Finishing an update TLKs operation with %@", &v6, 0xCu);
  }
}

void sub_10018D814(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) viewKeySets];
  v3 = [*(a1 + 32) pendingTLKShares];
  [WeakRetained proceedWithKeys:v2 pendingTLKShares:v3];
}

void sub_10018EE60(id a1)
{
  qword_10039E1B0 = objc_alloc_init(SecMetrics);

  _objc_release_x1();
}

void sub_10018F00C(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    v3 = 138412290;
    v4 = v2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "metrics URL is: %@", &v3, 0xCu);
  }
}

void sub_10018F150(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10018F16C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [WeakRetained dependencies];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [WeakRetained removeDependency:*(*(&v7 + 1) + 8 * v6)];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_1001911A8(id a1)
{
  sub_100089F24(@"ckks_analytics_v2.db", &stru_100343540);
  sub_100089F24(@"ckks_analytics_v2.db-wal", &stru_100343560);

  sub_100089F24(@"ckks_analytics_v2.db-shm", &stru_100343580);
}

void sub_10019142C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_100191450(uint64_t a1)
{
  v2 = [*(a1 + 32) isCancelled];
  v39 = a1;
  v3 = [*(a1 + 32) viewState];
  v4 = [v3 zoneID];
  v5 = [v4 zoneName];
  v6 = sub_100019104(@"ckkscurrent", v5);

  log = v6;
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CKKSDeleteCurrentItemPointersOperation cancelled, quitting", buf, 2u);
    }

    v8 = 0;
  }

  else
  {
    if (v7)
    {
      v9 = [*(v39 + 32) identifiers];
      *buf = 134217984;
      v51 = [v9 count];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Deleting current item pointers (%lu)", buf, 0xCu);
    }

    log = objc_alloc_init(NSMutableArray);
    v48 = 0u;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    obj = [*(v39 + 32) identifiers];
    v10 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v10)
    {
      v11 = *v46;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v46 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v45 + 1) + 8 * i);
          v14 = [*(v39 + 32) accessGroup];
          v15 = [NSString stringWithFormat:@"%@-%@", v14, v13];

          v16 = [CKRecordID alloc];
          v17 = [*(v39 + 32) viewState];
          v18 = [v17 zoneID];
          v19 = [v16 initWithRecordName:v15 zoneID:v18];

          [log addObject:v19];
        }

        v10 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v10);
    }

    v20 = objc_alloc_init(NSBlockOperation);
    [v20 setName:@"deleteCurrentItemPointers-modifyRecordsComplete"];
    [*(v39 + 32) dependOnBeforeGroupFinished:v20];
    v21 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:0 recordIDsToDelete:log];
    [*(v39 + 32) setModifyRecordsOperation:v21];

    v22 = [*(v39 + 32) modifyRecordsOperation];
    [v22 setAtomic:1];

    v23 = [*(v39 + 32) modifyRecordsOperation];
    v24 = [v23 configuration];
    [v24 setIsCloudKitSupportOperation:1];

    v25 = [*(v39 + 32) modifyRecordsOperation];
    [v25 setQualityOfService:25];

    v26 = [*(v39 + 32) ckoperationGroup];
    v27 = [*(v39 + 32) modifyRecordsOperation];
    [v27 setGroup:v26];

    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1001919BC;
    v43[3] = &unk_1003435A8;
    objc_copyWeak(&v44, (v39 + 40));
    v28 = [*(v39 + 32) modifyRecordsOperation];
    [v28 setPerRecordDeleteBlock:v43];

    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100191B4C;
    v40[3] = &unk_1003435F8;
    objc_copyWeak(&v42, (v39 + 40));
    v29 = v20;
    v41 = v29;
    v30 = [*(v39 + 32) modifyRecordsOperation];
    [v30 setModifyRecordsCompletionBlock:v40];

    v31 = *(v39 + 32);
    v32 = [v31 modifyRecordsOperation];
    [v31 dependOnBeforeGroupFinished:v32];

    v33 = [*(v39 + 32) deps];
    v34 = [v33 ckdatabase];
    v35 = [*(v39 + 32) modifyRecordsOperation];
    [v34 addOperation:v35];

    objc_destroyWeak(&v42);
    objc_destroyWeak(&v44);

    v8 = 1;
  }

  return v8;
}

void sub_10019198C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_1001919BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained viewState];
  v9 = [v8 zoneID];
  v10 = [v9 zoneName];
  v11 = sub_100019104(@"ckkscurrent", v10);

  if (v6)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "error on row: %@ %@", &v13, 0x16u);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v5 recordName];
    v13 = 138412290;
    v14 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Current pointer delete successful for %@", &v13, 0xCu);
  }
}

void sub_100191B4C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = [WeakRetained deps];
  v12 = [v11 databaseProvider];

  if (v9)
  {
    v13 = [WeakRetained viewState];
    v14 = [v13 zoneID];
    v15 = [v14 zoneName];
    v16 = sub_100019104(@"ckkscurrent", v15);

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "CloudKit returned an error: %@", &buf, 0xCu);
    }

    [WeakRetained setError:v9];
    v17 = [WeakRetained operationQueue];
    [v17 addOperation:*(a1 + 32)];
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v24 = 0x3032000000;
    v25 = sub_100191DE0;
    v26 = sub_100191DF0;
    v27 = 0;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100191DF8;
    v19[3] = &unk_1003435D0;
    v20 = v8;
    v21 = WeakRetained;
    p_buf = &buf;
    [v12 dispatchSyncWithSQLTransaction:v19];
    [WeakRetained setError:*(*(&buf + 1) + 40)];
    v18 = [WeakRetained operationQueue];
    [v18 addOperation:*(a1 + 32)];

    _Block_object_dispose(&buf, 8);
  }
}

void sub_100191DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100191DE0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100191DF8(uint64_t a1)
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v25;
    *&v4 = 138412546;
    v22 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v24 + 1) + 8 * v7);
        v9 = [*(a1 + 40) deps];
        v10 = [v9 contextID];
        v11 = *(*(a1 + 48) + 8);
        obj = *(v11 + 40);
        v12 = [CKKSCurrentItemPointer intransactionRecordDeleted:v8 contextID:v10 resync:0 error:&obj];
        objc_storeStrong((v11 + 40), obj);

        if ((v12 & 1) == 0)
        {
          v13 = [*(a1 + 40) viewState];
          v14 = [v13 zoneID];
          v15 = [v14 zoneName];
          v16 = sub_100019104(@"ckkscurrent", v15);

          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = [v8 recordName];
            v18 = *(*(*(a1 + 48) + 8) + 40);
            *buf = v22;
            v29 = v17;
            v30 = 2112;
            v31 = v18;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Couldn't delete current item pointer for %@ from database: %@", buf, 0x16u);
          }

          [*(a1 + 40) setError:*(*(*(a1 + 48) + 8) + 40)];
        }

        v19 = [*(a1 + 40) viewState];
        v20 = [v19 notifyViewChangedScheduler];
        [v20 trigger];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v5);
  }

  return 1;
}

uint64_t sub_100192738(uint64_t a1, void *a2)
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
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27[0] & 0x7F) << v5;
        if ((v27[0] & 0x80) == 0)
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
        break;
      }

      if (v13 == 3)
      {
        v22 = PBReaderReadString();
        v23 = 16;
        goto LABEL_38;
      }

      if (v13 != 4)
      {
        goto LABEL_34;
      }

      v21 = objc_alloc_init(SECC2MPError);
      objc_storeStrong((a1 + 32), v21);
      v27[0] = 0xAAAAAAAAAAAAAAAALL;
      v27[1] = 0xAAAAAAAAAAAAAAAALL;
      if (!PBReaderPlaceMark() || !sub_100192738(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_43:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v22 = PBReaderReadString();
      v23 = 24;
LABEL_38:
      v24 = *(a1 + v23);
      *(a1 + v23) = v22;

      goto LABEL_43;
    }

    if (v13 == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 40) |= 1u;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v27[0] & 0x7F) << v14;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_42;
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

LABEL_42:
      *(a1 + 8) = v20;
      goto LABEL_43;
    }

LABEL_34:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_43;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100192CEC(const void *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, _DWORD *a6, __CFData *a7, uint64_t a8, uint64_t a9, __CFString **a10)
{
  v45 = aks_params_create();
  theData = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  if (!v45)
  {

    return sub_1000103CC(-108, a10, @"ks_crypt_diversify: failed to create aks_params");
  }

  aks_params_set_data();
  aks_params_get_der();
  v39 = 0;
  v40 = 0;
  v16 = a1;
  if (CFEqual(a1, @"oe"))
  {
    v17 = a2;
    v18 = aks_ref_key_create();
    if (!v18)
    {
      v18 = aks_ref_key_wrap();
      if (!v18)
      {
        cf = 0xAAAAAAAAAAAAAAAALL;
        blob = aks_ref_key_get_blob();
        v20 = a10;
        if (blob)
        {
          if (!sub_1001931A8(v39, v40, blob, cf, a7))
          {
            aks_params_free();
            v34 = a3;
            v35 = a2;
            v33 = "encrypt";
            v29 = @"ks_crypt_diversify: failed to '%s' item (class %d, bag: %d) Item can't be encrypted due to merge failed, so drop the item.";
            goto LABEL_58;
          }

          *a6 = a3;
        }

        v21 = 0;
        goto LABEL_26;
      }
    }

    v21 = v18;
  }

  else
  {
    v17 = a2;
    if (CFEqual(a1, @"od") || CFEqual(a1, @"odel"))
    {
      v23 = a4;
      v20 = a10;
      if ((sub_1001932F8(a2, a5, v23, &v44, &theData, a10) & 1) == 0)
      {
        aks_params_free();
        v33 = a2;
        v29 = @"ks_crypt_diversify: failed to create ref key with blob because bad data (bag: %d)";
        goto LABEL_58;
      }

      CFDataGetBytePtr(theData);
      CFDataGetLength(theData);
      v24 = aks_ref_key_unwrap();
      if (v24)
      {
        v21 = v24;
      }

      else
      {
        cf = 0;
        sub_1000068E0(0, &cf, a10, v39, &v39[v40]);
        v25 = cf;
        v26 = CFGetTypeID(cf);
        if (v26 == CFDataGetTypeID())
        {
          CFDataSetLength(a7, 0);
          BytePtr = CFDataGetBytePtr(v25);
          Length = CFDataGetLength(v25);
          CFDataAppendBytes(a7, BytePtr, Length);
        }

        if (v25)
        {
          CFRelease(v25);
        }

        v21 = 0;
      }

      v16 = a1;
      goto LABEL_26;
    }

    v21 = 3758097090;
  }

  v20 = a10;
LABEL_26:
  if (v42)
  {
    free(v42);
  }

  if (v45)
  {
    aks_params_free();
  }

  if (v39)
  {
    aks_dealloc();
  }

  if (v44)
  {
    aks_ref_key_free();
  }

  if (theData)
  {
    CFRelease(theData);
  }

  if (v21 > -536870161)
  {
    if (v21 <= -536362975)
    {
      if (v21 == -536870160)
      {
        v35 = a3;
        v36 = v17;
        v33 = 3758097136;
        v34 = v16;
        v29 = @"ks_crypt_diversify: %x failed to '%@' item (class %d, bag: %d) No key available for class.";
        goto LABEL_56;
      }

      if (v21 != -536362989)
      {
LABEL_54:
        v35 = a3;
        v36 = v17;
        v33 = v21;
        v34 = v16;
        v29 = @"ks_crypt_diversify: %x failed to '%@' item (class %d, bag: %d)";
LABEL_56:
        v32 = -25291;
        return sub_1000103CC(v32, v20, v29, v33, v34, v35, v36);
      }

      goto LABEL_53;
    }

    if (v21 != -536362974)
    {
      if (!v21)
      {
        return 1;
      }

      goto LABEL_54;
    }

    v35 = a3;
    v36 = v17;
    v33 = 3758604322;
    v34 = v16;
    v29 = @"ks_crypt_diversify: %x failed to '%@' item (class %d, bag: %d) Persona doesn't exist, so drop the item.";
LABEL_58:
    v32 = -26275;
    return sub_1000103CC(v32, v20, v29, v33, v34, v35, v36);
  }

  if (v21 == -536870212)
  {
LABEL_53:
    v35 = a3;
    v36 = v17;
    v33 = v21;
    v34 = v16;
    v29 = @"ks_crypt_diversify: %x failed to '%@' item (class %d, bag: %d) Item can't be decrypted on this device, ever, so drop the item.";
    goto LABEL_58;
  }

  if (v21 != -536870207 && v21 != -536870174)
  {
    goto LABEL_54;
  }

  v30 = a3 == 10 || a3 == 7;
  v31 = "";
  if (v30)
  {
    v31 = " (hibernation?)";
  }

  return sub_1000103CC(-25308, v20, @"ks_crypt_diversify: %x failed to '%@' item (class %d, bag: %d) Access to item attempted while keychain is locked%s.", v21, v16, a3, v17, v31);
}

BOOL sub_1001931A8(UInt8 *bytes, CFIndex length, const UInt8 *a3, CFIndex a4, __CFData *a5)
{
  v8 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, bytes, length, kCFAllocatorNull);
  v9 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, a3, a4, kCFAllocatorNull);
  v17 = v9;
  if (v8)
  {
    v18 = v9 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    v22 = sub_10001104C(kCFAllocatorDefault, v10, v11, v12, v13, v14, v15, v16, @"d1", v8);
    CFDataSetLength(a5, 0);
    v26 = sub_10001B910(v22, 0, v23, v24, v25);
    v19 = v26;
    if (v26)
    {
      BytePtr = CFDataGetBytePtr(v26);
      v28 = CFDataGetLength(v19);
      CFDataAppendBytes(a5, BytePtr, v28);
      CFRelease(v19);
      v19 = CFDataGetLength(a5) > 0;
    }

    CFRelease(v22);
LABEL_13:
    CFRelease(v8);
    v20 = v19;
    if (!v17)
    {
      return v20;
    }

    goto LABEL_8;
  }

  v19 = 0;
  v20 = 0;
  if (v8)
  {
    goto LABEL_13;
  }

  if (v9)
  {
LABEL_8:
    CFRelease(v17);
  }

  return v20;
}

uint64_t sub_1001932F8(uint64_t a1, uint64_t a2, CFIndex a3, uint64_t a4, CFTypeRef *a5, __CFString **a6)
{
  v24 = 0;
  cf = 0;
  v23 = 0;
  v10 = a2 + a3;
  v11 = sub_1000068E0(0, &cf, 0, a2, a2 + a3);
  if (!v11 || (v12 = v11, v11 != v10))
  {
    sub_1000103CC(-26275, a6, @"encrypted_data_from_blob: NULL 'blob data'");
    v15 = 0;
    v16 = 0;
    v13 = cf;
    if (!cf)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v13 = cf;
  v14 = CFGetTypeID(cf);
  if (v14 != CFDictionaryGetTypeID())
  {
    v18 = CFGetTypeID(v13);
    v19 = CFCopyTypeIDDescription(v18);
    v20 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"encrypted_data_from_blob: Bad object type %@ for 'blob data'", v19);
    sub_1000103CC(-26276, a6, @"%@", v20);
    sub_100089FEC(v20, 1405091842);
    if (v19)
    {
      CFRelease(v19);
    }

    if (v20)
    {
      CFRelease(v20);
    }

    v15 = 0;
LABEL_18:
    v16 = 0;
    if (!v13)
    {
      goto LABEL_8;
    }

LABEL_7:
    CFRelease(v13);
    goto LABEL_8;
  }

  if (sub_10019352C(v13, &v23, &v24))
  {
    v15 = v23;
  }

  else
  {
    v15 = CFDataCreate(kCFAllocatorDefault, v12, a3);
    v24 = CFRetain(v15);
  }

  if (!v15)
  {
    sub_1000103CC(-26275, a6, @"encrypted_data_from_blob: failed to decode 'encrypted data'");
    goto LABEL_18;
  }

  v21 = v24;
  if (!v24)
  {
    sub_1000103CC(-26275, a6, @"encrypted_data_from_blob: failed to decode 'key data'");
    goto LABEL_18;
  }

  CFDataGetBytePtr(v24);
  CFDataGetLength(v21);
  v22 = aks_ref_key_create_with_blob();
  if (v22)
  {
    sub_1000103CC(-26275, a6, @"aks_ref_key: failed to create ref key with blob: %x (bag: %d)", v22, a1);
    goto LABEL_18;
  }

  if (a5)
  {
    *a5 = CFRetain(v15);
  }

  v16 = 1;
  if (v13)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (v24)
  {
    CFRelease(v24);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v16;
}

uint64_t sub_10019352C(const __CFDictionary *a1, CFTypeRef *a2, CFTypeRef *a3)
{
  Value = CFDictionaryGetValue(a1, @"d1");
  v7 = CFDictionaryGetValue(a1, @"d2");
  if (Value)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return 0;
  }

  v9 = v7;
  TypeID = CFDataGetTypeID();
  if (TypeID != CFGetTypeID(Value))
  {
    return 0;
  }

  v11 = CFDataGetTypeID();
  if (v11 != CFGetTypeID(v9))
  {
    return 0;
  }

  *a2 = CFRetain(Value);
  *a3 = CFRetain(v9);
  return 1;
}

void sub_1001935E8(CFErrorRef *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *a1;
    if (!v4)
    {
      goto LABEL_10;
    }

    if (CFErrorGetCode(v4) != -25330)
    {
      return;
    }

    if (*a1)
    {
      v5 = CFErrorCopyUserInfo(*a1);
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v5);
      CFRelease(v5);
      v7 = *a1;
      if (*a1)
      {
        *a1 = 0;
        CFRelease(v7);
      }

      if (a2)
      {
        goto LABEL_8;
      }
    }

    else
    {
LABEL_10:
      MutableCopy = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (a2)
      {
LABEL_8:
        valuePtr = -25330;
        v8 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
        Value = CFDictionaryGetValue(MutableCopy, v8);
        if (Value)
        {
          Mutable = CFArrayCreateMutableCopy(0, 0, Value);
        }

        else
        {
          Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
        }

        v20 = Mutable;
        v21 = sub_10019378C(Mutable, v11, v12, v13, v14, v15, v16, v17, a2);
        CFArrayAppendValue(v20, v21);
        CFRelease(v21);
        CFDictionarySetValue(MutableCopy, v8, v20);
        CFRelease(v8);
        CFRelease(v20);
        v18 = kCFErrorDomainOSStatus;
        v19 = MutableCopy;
        goto LABEL_14;
      }
    }

    v18 = kCFErrorDomainOSStatus;
    v19 = 0;
LABEL_14:
    *a1 = CFErrorCreate(0, v18, -25330, v19);
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }
}

CFArrayRef sub_10019378C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = &a9;
  v9 = -1;
  do
  {
    v10 = v18++;
    ++v9;
  }

  while (*v10);
  v19 = &a9;
  Mutable = CFArrayCreateMutable(0, v9, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    return 0;
  }

  for (i = Mutable; v9; --v9)
  {
    v13 = v19++;
    v14 = *v13;
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = kCFNull;
    }

    CFArrayAppendValue(i, v15);
  }

  Copy = CFArrayCreateCopy(0, i);
  CFRelease(i);
  return Copy;
}

void sub_100193860(uint64_t a1, CFTypeRef cf1, uint64_t a3, uint64_t a4, uint64_t a5, const __CFData *a6, __CFString **a7)
{
  if (CFEqual(cf1, @"od"))
  {
    v14 = "decrypt";
  }

  else if (CFEqual(cf1, @"oe"))
  {
    v14 = "encrypt";
  }

  else
  {
    v14 = "";
  }

  v15 = CFEqual(cf1, @"odel");
  v16 = "delete";
  if (!v15)
  {
    v16 = v14;
  }

  if (a1 <= -536870161)
  {
    if (a1 != -536870212)
    {
      if (a1 != -536870194)
      {
        if (a1 == -536870174)
        {
          sub_1000103CC(-25308, a7, @"aks_ref_key: %x failed to '%s' item (class %d, bag: %d) Access to item attempted while keychain is locked.", 3758097122, v16, a4, a3);
          return;
        }

        goto LABEL_27;
      }

      goto LABEL_20;
    }

LABEL_19:
    sub_1000103CC(-26275, a7, @"aks_ref_key: %x failed to '%s' item (class %d, bag: %d) Item can't be decrypted on this device, ever, so drop the item.", a1, v16, a4, a3);
    return;
  }

  if (a1 > -536363000)
  {
    if (a1 != -536362999 && a1 != -536362989)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  if (a1 == -536870160)
  {
    sub_1000103CC(-25291, a7, @"ks_crypt: %x failed to '%@' item (class %d, bag: %d) No key available for class.", 3758097136, cf1, a4, a3);
    return;
  }

  if (a1 != -536363000)
  {
LABEL_27:
    sub_1000103CC(-25291, a7, @"aks_ref_key: %x failed to '%s' item (class %d, bag: %d)", a1, v16, a4, a3);
    return;
  }

LABEL_20:
  if (a1 == -536870194)
  {
    if (a6)
    {
      BytePtr = CFDataGetBytePtr(a6);
      Length = CFDataGetLength(a6);
      v19 = ACMContextCreateWithExternalForm(BytePtr, Length);
      if (v19)
      {
        v20 = v19;
        ACMContextRemovePassphraseCredentialsByPurposeAndScope(v19, 0, 1);
        ACMContextDelete(v20, 0);
      }
    }
  }

  sub_1001935E8(a7, a5);
}

uint64_t sub_100193AC4(int a1, const __CFData *a2, int a3, const __CFData *a4, CFDataRef theData, uint64_t a6, __CFString **a7)
{
  if (theData)
  {
    CFDataGetBytePtr(theData);
    CFDataGetLength(theData);
  }

  v11 = SecAccessControlCopyData();
  if (a4)
  {
    CFDataGetBytePtr(a4);
    CFDataGetLength(a4);
    aks_operation_optional_params();
    CFDataGetBytePtr(a2);
    CFDataGetLength(a2);
    v12 = aks_ref_key_decrypt();
    if (v12)
    {
      sub_100193860(v12, @"od", 0, 0, v11, a4, a7);
    }

    else
    {
      sub_1000103CC(-26275, a7, @"ks_crypt_acl: %x failed to '%s' item, Item can't be decrypted due to invalid der data, so drop the item.", 0, "decrypt");
    }
  }

  else
  {
    sub_1001935E8(a7, 0);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return 0;
}

uint64_t sub_100193D24(uint64_t a1, const __CFData *a2, const __CFData *a3, uint64_t a4, CFErrorRef *a5)
{
  Constraint = SecAccessControlGetConstraint();
  if (Constraint)
  {
    v9 = kCFBooleanTrue == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (Constraint != kCFBooleanTrue)
    {
      goto LABEL_9;
    }

LABEL_7:
    v10 = 0;
LABEL_14:
    v12 = 1;
    goto LABEL_15;
  }

  if (CFEqual(Constraint, kCFBooleanTrue))
  {
    goto LABEL_7;
  }

LABEL_9:
  if (!a2)
  {
    sub_1001935E8(a5, 0);
    v12 = 0;
    v10 = 0;
    goto LABEL_15;
  }

  v10 = SecAccessControlCopyData();
  if (a3)
  {
    CFDataGetBytePtr(a3);
    CFDataGetLength(a3);
  }

  CFDataGetBytePtr(a2);
  CFDataGetLength(a2);
  aks_operation_optional_params();
  v13 = aks_ref_key_delete();
  if (!v13)
  {
    goto LABEL_14;
  }

  sub_100193860(v13, @"odel", 0, 0, v10, a2, a5);
  v12 = 0;
LABEL_15:
  if (v10)
  {
    CFRelease(v10);
  }

  return v12;
}

void sub_100193EA0(id a1)
{
  if (aks_get_system())
  {
    v1 = MKBGetDeviceLockState();
    v2 = sub_100006274("aks");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v5 = v1;
      _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "AppleKeyStore lock state: %d", buf, 8u);
    }
  }

  byte_10039E1C8 = 1;
  v3 = sub_100006274("aks");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "using hwaes key", buf, 2u);
  }
}

BOOL sub_100193FBC(const __CFData *cf, const __CFData *a2, unsigned int *a3, CFTypeRef *a4)
{
  if (cf && (v8 = CFGetTypeID(cf), v8 == CFDataGetTypeID()))
  {
    CFDataGetBytePtr(cf);
    CFDataGetLength(cf);
    bag = aks_load_bag();
    if (bag)
    {
      return sub_10001C4BC(bag, a4, @"aks_load_bag failed: %@", cf);
    }

    else if (a2 && (v11 = *a3, CFDataGetBytePtr(a2), CFDataGetLength(a2), (v12 = aks_unlock_bag()) != 0))
    {
      v13 = v12;
      v14 = *a3;
      aks_unload_bag();

      return sub_10001C4BC(v13, a4, @"aks_unlock_bag failed");
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (a4)
    {
      sub_1000103CC(-50, a4, @"object %@ is not a data", cf);
    }

    return 0;
  }
}

BOOL sub_1001940F8(uint64_t a1, CFTypeRef *a2)
{
  v3 = aks_unload_bag();
  if (!v3)
  {
    return 1;
  }

  return sub_10001C4BC(v3, a2, @"aks_unload_bag failed");
}

CFMutableArrayRef sub_1001943B8()
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v1 = Mutable;
  if (qword_10039DC50)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_100084F20;
    block[3] = &unk_100335500;
    block[4] = Mutable;
    if (qword_10039DC70 != -1)
    {
      dispatch_once(&qword_10039DC70, &stru_100335580);
    }

    dispatch_sync(qword_10039DC68, block);
  }

  return v1;
}

BOOL sub_10019448C(const __CFString *a1, __CFString **a2)
{
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (v4 == CFStringGetTypeID())
    {
      sub_100085974(a1, 3);
      return 1;
    }

    v5 = CFGetTypeID(a1);
    if (v5 == CFDictionaryGetTypeID())
    {
      sub_1000852A0(a1, 3);
      return 1;
    }
  }

  return sub_1000103CC(-50, a2, @"Unsupported CFType");
}

id sub_100194538(uint64_t a1, uint64_t a2)
{
  v4 = sub_100245E3C();
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v7 = [v6 circle_transport];

    if (v7)
    {
      v8 = [v6 circle_transport];
      v9 = [v8 kvssendDebugInfo:@"Scope" debug:a1 err:a2];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_1001945E0(id a1, NSError *a2)
{
  v2 = sub_100006274("keychainitemupgrade");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "kicking off keychain item upgrade", v3, 2u);
  }
}

void sub_1001946EC(uint64_t a1)
{
  v17[0] = kCFUserNotificationAlertMessageKey;
  v2 = [NSNumber numberWithUnsignedLong:*(a1 + 32)];
  v3 = [NSNumber numberWithUnsignedLong:*(a1 + 40)];
  v4 = [NSString stringWithFormat:@"AppleInternal only:\nYour account has %@ keychain devices, over the recommended performance limit of %@. Please see:\nhttps://at.apple.com/keychain-help", v2, v3];
  v18[0] = v4;
  v18[1] = @"UserSecrets: Keychain";
  v17[1] = kCFUserNotificationAlertHeaderKey;
  v17[2] = kCFUserNotificationAlertTopMostKey;
  v18[2] = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];

  v6 = -250;
  while (1)
  {
    error = 0;
    v7 = CFUserNotificationCreate(0, 0.0, 3uLL, &error, v5);
    v8 = sub_100006274("octagon");
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!v7)
    {
      break;
    }

    if (v9)
    {
      *buf = 134218240;
      *v15 = v7;
      *&v15[8] = 1024;
      v16 = error;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "popdialog: CFNotification %p %d", buf, 0x12u);
    }

    responseFlags = 0;
    error = CFUserNotificationReceiveResponse(v7, 0.0, &responseFlags);
    v10 = sub_100006274("octagon");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v15 = error;
      *&v15[4] = 1024;
      *&v15[6] = responseFlags;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "popdialog: user responded %d %d", buf, 0xEu);
    }

    CFRelease(v7);
    if (error || (responseFlags & 3) != 0)
    {
      sleep(5u);
      if (!__CFADD__(v6++, 1))
      {
        continue;
      }
    }

    goto LABEL_15;
  }

  if (v9)
  {
    *buf = 67109120;
    *v15 = error;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "popdialog: Failed to create notification %d\n", buf, 8u);
  }

LABEL_15:
}

void sub_100194A30(id a1)
{
  byte_10039CDC0 = _os_feature_enabled_impl();
  v1 = sub_100006274("octagon");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_10039CDC0)
    {
      v2 = @"enabled";
    }

    else
    {
      v2 = @"disabled";
    }

    v3 = 138412290;
    v4 = v2;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "popdialog: WarnTooManyPeers is %@ (via feature flags)", &v3, 0xCu);
  }
}

uint64_t sub_10019AAE8(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 100)
      {
        if (v13 == 101)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            v34 = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              v30 = [a2 data];
              [v30 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v34 & 0x7F) << v25;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v11 = v26++ >= 9;
            if (v11)
            {
              LOBYTE(v31) = 0;
              goto LABEL_50;
            }
          }

          v31 = (v27 != 0) & ~[a2 hasError];
LABEL_50:
          *(a1 + 32) = v31;
        }

        else
        {
          if (v13 != 201)
          {
LABEL_32:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_51;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v35 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v35 & 0x7F) << v16;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_48;
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

LABEL_48:
          *(a1 + 8) = v22;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 16;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_32;
          }

          v14 = PBReaderReadString();
          v15 = 24;
        }

        v24 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_51:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10019B6F8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (v9)
  {
    v12 = sub_100006274("SecError");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "octagon: Error preparing voucher: %@", &v15, 0xCu);
    }

    [v11 setError:v9];
  }

  else
  {
    [WeakRetained setVoucher:v7];
    [v11 setVoucherSig:v8];
    v13 = [v11 intendedState];
    [v11 setNextState:v13];
  }

  v14 = [v11 finishedOp];
  [v11 runBeforeGroupFinished:v14];
}

void sub_10019BB30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10019BB5C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [*(a1 + 32) error];
  v3 = v2 == 0;

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) error];
  [v4 sendMetricWithResult:v3 error:v5];

  v6 = [*(a1 + 32) viewKeySets];
  [WeakRetained proceedWithKeys:v6];
}

uint64_t sub_10019C0EC(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) zoneID];
  v3 = [*v1 contextID];
  v42 = 0;
  v30 = [CKKSCurrentItemPointer allInZone:v2 contextID:v3 error:&v42];
  v31 = v42;

  if (v31)
  {
    v4 = [*(a1 + 32) zoneID];
    v5 = [v4 zoneName];
    v6 = sub_100019104(@"ckksfixup", v5);

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v44 = v31;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Couldn't fetch current item pointers: %@", buf, 0xCu);
    }

    v7 = 0;
  }

  else
  {
    v33 = +[NSMutableSet set];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v30;
    v8 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v8)
    {
      v9 = *v39;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v39 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v38 + 1) + 8 * i);
          v12 = [v11 storedCKRecord];
          v13 = [v12 recordID];

          v14 = [*(a1 + 32) zoneID];
          v15 = [v14 zoneName];
          v16 = sub_100019104(@"ckksfixup", v15);

          if (v13)
          {
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v44 = v13;
              v45 = 2112;
              v46 = v11;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Re-fetching %@ for %@", buf, 0x16u);
            }

            [v33 addObject:v13];
          }

          else
          {
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v44 = v11;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "No record ID for stored %@", buf, 0xCu);
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v8);
    }

    if (![v33 count])
    {
      v17 = [*(a1 + 32) zoneID];
      v18 = [v17 zoneName];
      v19 = sub_100019104(@"ckksfixup", v18);

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "No existing CIPs; fixup complete", buf, 2u);
      }
    }

    objc_initWeak(buf, *(a1 + 40));
    v20 = [NSBlockOperation named:@"fetch-records-operation-complete" withBlock:&stru_1003436E0];
    v21 = [*(a1 + 40) deps];
    v22 = [v21 cloudKitClassDependencies];
    v23 = [objc_msgSend(v22 "fetchRecordsOperationClass")];
    v24 = [v33 allObjects];
    v25 = [v23 initWithRecordIDs:v24];

    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10019C680;
    v35[3] = &unk_1003438F8;
    objc_copyWeak(&v37, buf);
    v35[4] = *(a1 + 32);
    v26 = v20;
    v36 = v26;
    [v25 setFetchRecordsCompletionBlock:v35];
    v27 = [*(a1 + 40) deps];
    v28 = [v27 ckdatabase];
    [v28 addOperation:v25];

    [*(a1 + 40) dependOnBeforeGroupFinished:v25];
    [*(a1 + 40) dependOnBeforeGroupFinished:v26];

    objc_destroyWeak(&v37);
    objc_destroyWeak(buf);
    v7 = 1;
    v6 = v33;
  }

  return v7;
}

void sub_10019C640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id location)
{
  objc_destroyWeak((v35 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10019C680(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = [WeakRetained deps];
  v9 = [v8 databaseProvider];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10019C790;
  v14[3] = &unk_100343708;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v15 = v6;
  v16 = v10;
  v17 = WeakRetained;
  v18 = v5;
  v19 = v11;
  v12 = v5;
  v13 = v6;
  [v9 dispatchSyncWithSQLTransaction:v14];
}

uint64_t sub_10019C790(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) zoneID];
  v4 = [v3 zoneName];
  v5 = sub_100019104(@"ckksfixup", v4);

  if (v2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      *buf = 138412290;
      v63 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Finished record fetch with error: %@", buf, 0xCu);
    }

    v7 = [*(a1 + 32) userInfo];
    v5 = [v7 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

    v8 = [*(a1 + 32) domain];
    if ([v8 isEqualToString:?] && objc_msgSend(*(a1 + 32), "code") == 2)
    {

      if (v5)
      {
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        obj = [v5 keyEnumerator];
        v9 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
        if (!v9)
        {
          goto LABEL_24;
        }

        v11 = v9;
        v12 = *v58;
        *&v10 = 138412290;
        v49 = v10;
        while (1)
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v58 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v57 + 1) + 8 * i);
            v15 = [v5 objectForKeyedSubscript:v14, v49];
            v16 = v15;
            if (v15)
            {
              v17 = [v15 domain];
              if ([v17 isEqualToString:CKErrorDomain])
              {
                v18 = [v16 code];

                if (v18 == 11)
                {
                  v19 = [*(a1 + 40) zoneID];
                  v20 = [v19 zoneName];
                  v21 = sub_100019104(@"ckksfixup", v20);

                  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                  {
                    *buf = v49;
                    v63 = v14;
                    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "CloudKit believes %@ no longer exists", buf, 0xCu);
                  }

                  v22 = [*(a1 + 48) deps];
                  [v22 intransactionCKRecordDeleted:v14 recordType:@"currentitem" resync:1];

                  goto LABEL_22;
                }
              }

              else
              {
              }
            }

            v23 = [*(a1 + 40) zoneID];
            v24 = [v23 zoneName];
            v25 = sub_100019104(@"ckksfixup", v24);

            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              v26 = *(a1 + 32);
              *buf = 138412546;
              v63 = v14;
              v64 = 2112;
              v65 = v26;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Unknown error for %@: %@", buf, 0x16u);
            }

            [*(a1 + 48) setError:*(a1 + 32)];
LABEL_22:
          }

          v11 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
          if (!v11)
          {
LABEL_24:

            goto LABEL_29;
          }
        }
      }
    }

    else
    {
    }

    [*(a1 + 48) setError:*(a1 + 32)];
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Finished record fetch successfully", buf, 2u);
  }

LABEL_29:

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v27 = *(a1 + 56);
  v28 = [v27 countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v54;
    do
    {
      for (j = 0; j != v29; j = j + 1)
      {
        if (*v54 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = [*(a1 + 56) objectForKeyedSubscript:*(*(&v53 + 1) + 8 * j)];
        v33 = [*(a1 + 40) zoneID];
        v34 = [v33 zoneName];
        v35 = sub_100019104(@"ckksfixup", v34);

        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v63 = v32;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Recieved record %@", buf, 0xCu);
        }

        v36 = [*(a1 + 48) deps];
        [v36 intransactionCKRecordChanged:v32 resync:1];
      }

      v29 = [v27 countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (v29);
  }

  v37 = [*(a1 + 48) error];

  if (!v37)
  {
    v38 = [*(a1 + 48) deps];
    v39 = [v38 contextID];
    v40 = [*(a1 + 40) zoneID];
    v41 = [v40 zoneName];
    v52 = 0;
    v42 = [CKKSZoneStateEntry fromDatabase:v39 zoneName:v41 error:&v52];
    v43 = v52;

    [v42 setLastFixup:1];
    v51 = v43;
    [v42 saveToDatabase:&v51];
    v44 = v51;

    v45 = [*(a1 + 40) zoneID];
    v46 = [v45 zoneName];
    v47 = sub_100019104(@"ckksfixup", v46);

    if (v44)
    {
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v63 = v42;
        v64 = 2112;
        v65 = v44;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "Couldn't save CKKSZoneStateEntry(%@): %@", buf, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Updated zone fixup state to CKKSFixupRefetchCurrentItemPointers", buf, 2u);
      }

      v47 = [*(a1 + 48) intendedState];
      [*(a1 + 48) setNextState:v47];
    }
  }

  [*(a1 + 48) runBeforeGroupFinished:*(a1 + 64)];
  return 1;
}

uint64_t sub_10019D284(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [NSBlockOperation named:@"fetch-records-operation-complete" withBlock:&stru_100343728];
  v3 = [NSPredicate predicateWithValue:1];
  v4 = [[CKQuery alloc] initWithRecordType:@"tlkshare" predicate:v3];
  v5 = [*(a1 + 32) deps];
  v6 = [v5 cloudKitClassDependencies];
  v7 = [objc_msgSend(objc_msgSend(v6 "queryOperationClass")];

  v8 = [*(a1 + 40) zoneID];
  [v7 setZoneID:v8];

  [v7 setDesiredKeys:0];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10019D528;
  v20[3] = &unk_100343750;
  objc_copyWeak(&v21, &location);
  v20[4] = *(a1 + 40);
  [v7 setRecordFetchedBlock:v20];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10019D608;
  v16 = &unk_1003437A0;
  objc_copyWeak(&v19, &location);
  v17 = *(a1 + 40);
  v9 = v2;
  v18 = v9;
  [v7 setQueryCompletionBlock:&v13];
  v10 = [*(a1 + 32) deps];
  v11 = [v10 ckdatabase];
  [v11 addOperation:v7];

  [*(a1 + 32) dependOnBeforeGroupFinished:v7];
  [*(a1 + 32) dependOnBeforeGroupFinished:v9];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);

  objc_destroyWeak(&location);
  return 1;
}

void sub_10019D4E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10019D528(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained deps];
  v6 = [v5 databaseProvider];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10019DA08;
  v8[3] = &unk_100343880;
  v8[4] = *(a1 + 32);
  v9 = v3;
  v10 = WeakRetained;
  v7 = v3;
  [v6 dispatchSyncWithSQLTransaction:v8];
}

void sub_10019D608(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = [WeakRetained deps];
  v9 = [v8 databaseProvider];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10019D714;
  v16 = &unk_100343778;
  v10 = *(a1 + 32);
  v17 = v6;
  v18 = v10;
  v19 = WeakRetained;
  v20 = v5;
  v11 = v5;
  v12 = v6;
  [v9 dispatchSyncWithSQLTransaction:&v13];

  [WeakRetained runBeforeGroupFinished:{*(a1 + 40), v13, v14, v15, v16}];
}

uint64_t sub_10019D714(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) zoneID];
  v4 = [v3 zoneName];
  v5 = sub_100019104(@"ckksfixup", v4);

  if (v2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      *buf = 138412290;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Couldn't fetch all TLKShare records: %@", buf, 0xCu);
    }

    [*(a1 + 48) setError:*(a1 + 32)];
    return 0;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 56);
      *buf = 138412290;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Successfully fetched TLKShare records (%@)", buf, 0xCu);
    }

    v9 = [*(a1 + 48) deps];
    v10 = [v9 contextID];
    v11 = [*(a1 + 40) zoneID];
    v12 = [v11 zoneName];
    v20 = 0;
    v13 = [CKKSZoneStateEntry fromDatabase:v10 zoneName:v12 error:&v20];
    v14 = v20;

    [v13 setLastFixup:2];
    v19 = v14;
    [v13 saveToDatabase:&v19];
    v15 = v19;

    v16 = [*(a1 + 40) zoneID];
    v17 = [v16 zoneName];
    v18 = sub_100019104(@"ckksfixup", v17);

    if (v15)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v22 = v13;
        v23 = 2112;
        v24 = v15;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Couldn't save CKKSZoneStateEntry(%@): %@", buf, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Updated zone fixup state to CKKSFixupFetchTLKShares", buf, 2u);
      }

      v18 = [*(a1 + 48) intendedState];
      [*(a1 + 48) setNextState:v18];
    }

    return 1;
  }
}

uint64_t sub_10019DA08(uint64_t a1)
{
  v2 = [*(a1 + 32) zoneID];
  v3 = [v2 zoneName];
  v4 = sub_100019104(@"ckksfixup", v3);

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Recieved tlk share record from query: %@", &v8, 0xCu);
  }

  v6 = [*(a1 + 48) deps];
  [v6 intransactionCKRecordChanged:*(a1 + 40) resync:1];

  return 1;
}

void sub_10019DEA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10019DEC8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) error];

  if (v3)
  {
    v4 = sub_100019104(@"ckksfixup", 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 32) error];
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Couldn't perform a reload: %@", buf, 0xCu);
    }

    v6 = [*(a1 + 32) error];
    [WeakRetained setError:v6];
  }

  else
  {
    v6 = [WeakRetained deps];
    v7 = [v6 databaseProvider];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10019E050;
    v8[3] = &unk_100344610;
    v8[4] = WeakRetained;
    [v7 dispatchSyncWithSQLTransaction:v8];
  }
}

uint64_t sub_10019E050(uint64_t a1)
{
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v1 = [*(a1 + 32) deps];
  v2 = [v1 activeManagedViews];

  obj = v2;
  v24 = [v2 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v24)
  {
    v23 = *v29;
    *&v3 = 138412546;
    v21 = v3;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v28 + 1) + 8 * i);
        v6 = [v5 zoneID];
        v7 = [v6 zoneName];
        v8 = sub_100019104(@"ckksfixup", v7);

        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [*(a1 + 32) fixupNumber];
          *buf = 67109120;
          LODWORD(v33) = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Successfully performed a reload fixup. New fixup number is %d", buf, 8u);
        }

        v10 = [*(a1 + 32) deps];
        v11 = [v10 contextID];
        v12 = [v5 zoneID];
        v13 = [v12 zoneName];
        v27 = 0;
        v14 = [CKKSZoneStateEntry fromDatabase:v11 zoneName:v13 error:&v27];
        v15 = v27;

        [v14 setLastFixup:{objc_msgSend(*(a1 + 32), "fixupNumber")}];
        v26 = v15;
        [v14 saveToDatabase:&v26];
        v16 = v26;

        v17 = [v5 zoneID];
        v18 = [v17 zoneName];
        v19 = sub_100019104(@"ckksfixup", v18);

        if (v16)
        {
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = v21;
            v33 = v14;
            v34 = 2112;
            v35 = v16;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Couldn't save CKKSZoneStateEntry(%@): %@", buf, 0x16u);
          }
        }

        else
        {
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Updated zone fixup state to CKKSFixupLocalReload", buf, 2u);
          }

          v19 = [*(a1 + 32) intendedState];
          [*(a1 + 32) setNextState:v19];
        }
      }

      v24 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v24);
  }

  return 1;
}

uint64_t sub_10019E7A0(uint64_t a1)
{
  v2 = [*(a1 + 32) zoneID];
  v46 = 0;
  v3 = [CKKSDeviceStateEntry allInZone:v2 error:&v46];
  v4 = v46;

  if (v4)
  {
    v5 = [*(a1 + 32) zoneID];
    v6 = [v5 zoneName];
    v7 = sub_100019104(@"ckksfixup", v6);

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v48 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Unable to fetch all CDSEs: %@", buf, 0xCu);
    }

    [*(a1 + 40) setError:v4];
    v8 = 0;
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v38 = v3;
    v9 = v3;
    v10 = [v9 countByEnumeratingWithState:&v42 objects:v51 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v43;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v43 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v42 + 1) + 8 * i);
          v15 = [v14 storedCKRecord];
          if (v15)
          {
            [v14 setFromCKRecord:v15];
            v41 = 0;
            [v14 saveToDatabase:&v41];
            v16 = v41;
            if (v16)
            {
              v4 = v16;
              v32 = [*(a1 + 32) zoneID];
              v33 = [v32 zoneName];
              v34 = sub_100019104(@"ckksfixup", v33);

              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v48 = v4;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Unable to save CDSE: %@", buf, 0xCu);
              }

              [*(a1 + 40) setError:v4];
              v8 = 0;
              v3 = v38;
              goto LABEL_31;
            }
          }

          else
          {
            v17 = [*(a1 + 32) zoneID];
            v18 = [v17 zoneName];
            v19 = sub_100019104(@"ckksfixup", v18);

            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v48 = v14;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Saved CDSE has no stored record: %@", buf, 0xCu);
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v42 objects:v51 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v20 = [*(a1 + 32) zoneID];
    v21 = [v20 zoneName];
    v22 = sub_100019104(@"ckksfixup", v21);

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Successfully performed a ResaveDeviceState fixup", buf, 2u);
    }

    v23 = [*(a1 + 40) deps];
    v24 = [v23 contextID];
    v25 = [*(a1 + 32) zoneID];
    v26 = [v25 zoneName];
    v40 = 0;
    v27 = [CKKSZoneStateEntry fromDatabase:v24 zoneName:v26 error:&v40];
    v28 = v40;

    [v27 setLastFixup:4];
    v39 = v28;
    [v27 saveToDatabase:&v39];
    v4 = v39;

    v29 = [*(a1 + 32) zoneID];
    v30 = [v29 zoneName];
    v31 = sub_100019104(@"ckksfixup", v30);

    if (v4)
    {
      v3 = v38;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v48 = v27;
        v49 = 2112;
        v50 = v4;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Couldn't save CKKSZoneStateEntry(%@): %@", buf, 0x16u);
      }

      [*(a1 + 40) setError:v4];
      v8 = 0;
    }

    else
    {
      v3 = v38;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Updated zone fixup state to CKKSFixupResaveDeviceStateEntries", buf, 2u);
      }

      v36 = [*(a1 + 40) intendedState];
      [*(a1 + 40) setNextState:v36];

      v8 = 1;
    }
  }

LABEL_31:

  return v8;
}

void sub_10019EEB0(id a1)
{
  v1 = +[NSMutableSet set];
  [v1 addObject:@"idms_level"];
  [v1 addObject:@"preapproved"];
  [v1 addObject:@"tlk_upload_needed"];
  [v1 addObject:@"policy_check_needed"];
  [v1 addObject:@"ckks_views_changed"];
  [v1 addObject:@"recd_push"];
  [v1 addObject:@"account_available"];
  [v1 addObject:@"cdp_enabled"];
  [v1 addObject:@"attempt_sos_upgrade"];
  [v1 addObject:@"attempt_machine_id_list"];
  [v1 addObject:@"unlocked"];
  [v1 addObject:@"attempt_sos_update_preapprovals"];
  [v1 addObject:@"attempt_sos_consistency"];
  [v1 addObject:@"se_id_changed"];
  [v1 addObject:@"attempt_ucv_upgrade"];
  [v1 addObject:@"check_on_rtc_metrics"];
  [v1 addObject:@"pending_network_availablility"];
  [v1 addObject:@"check_trust_state"];
  [v1 addObject:@"apple_account_signed_out"];
  [v1 addObject:@"passcode_stash_available"];
  [v1 addObject:@"reroll_identity"];
  v2 = qword_10039E250;
  qword_10039E250 = v1;
}

void sub_10019F0E8(uint64_t a1)
{
  v4 = [*(a1 + 32) OctagonStateMap];
  v1 = [v4 allKeys];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_10039E240;
  qword_10039E240 = v2;
}

void sub_10019F1BC(id a1)
{
  v1 = +[NSMutableSet set];
  [v1 addObject:@"Ready"];
  [v1 addObject:@"ReadyUpdated"];
  v2 = qword_10039E230;
  qword_10039E230 = v1;
}

void sub_10019F278(id a1)
{
  v1 = +[NSMutableSet set];
  [v1 addObject:@"NoAccount"];
  [v1 addObject:@"NoAccountDoReset"];
  [v1 addObject:@"Initializing"];
  [v1 addObject:@"DetermineiCloudAccountState"];
  [v1 addObject:@"WaitingForCloudKitAccount"];
  [v1 addObject:@"CloudKitNewlyAvailable"];
  [v1 addObject:@"WaitForCDPCapableSecurityLevel"];
  [v1 addObject:@"WaitForCDP"];
  [v1 addObject:@"Untrusted"];
  v2 = qword_10039E220;
  qword_10039E220 = v1;
}

void sub_10019F3A4(id a1)
{
  v1 = +[NSMutableSet set];
  [v1 addObject:@"Ready"];
  [v1 addObject:@"Error"];
  [v1 addObject:@"Untrusted"];
  [v1 addObject:@"WaitForCDPCapableSecurityLevel"];
  [v1 addObject:@"WaitForUnlock"];
  [v1 addObject:@"WaitForCDP"];
  v2 = qword_10039E210;
  qword_10039E210 = v1;
}

void sub_10019F4EC(uint64_t a1)
{
  v1 = [*(a1 + 32) OctagonStateMap];
  v2 = [v1 allKeys];
  v3 = [NSMutableSet setWithArray:v2];

  [v3 removeObject:@"NoAccount"];
  [v3 removeObject:@"NoAccountDoReset"];
  [v3 removeObject:@"Initializing"];
  [v3 removeObject:@"DetermineiCloudAccountState"];
  [v3 removeObject:@"WaitingForCloudKitAccount"];
  [v3 removeObject:@"CloudKitNewlyAvailable"];
  [v3 removeObject:@"WaitForCDPCapableSecurityLevel"];
  [v3 removeObject:@"LocalReset"];
  [v3 removeObject:@"LocalResetClearLocalContextState"];
  [v3 removeObject:@"WaitForClassCUnlock"];
  v4 = qword_10039E200;
  qword_10039E200 = v3;
}

void sub_10019F6AC(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v14 = a1;
  v3 = [*(a1 + 32) stateInit];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 objectAtIndexedSubscript:0];
        v10 = [v8 objectAtIndexedSubscript:1];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v11 = +[NSAssertionHandler currentHandler];
          [v11 handleFailureInMethod:*(v14 + 40) object:*(v14 + 32) file:@"OTStates.m" lineNumber:324 description:@"stateName should be string"];
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v12 = +[NSAssertionHandler currentHandler];
          [v12 handleFailureInMethod:*(v14 + 40) object:*(v14 + 32) file:@"OTStates.m" lineNumber:325 description:@"stateNum should be number"];
        }

        [v2 setObject:v9 forKeyedSubscript:v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v13 = qword_10039E1F0;
  qword_10039E1F0 = v2;
}

void sub_10019F964(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v14 = a1;
  v3 = [*(a1 + 32) stateInit];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 objectAtIndexedSubscript:0];
        v10 = [v8 objectAtIndexedSubscript:1];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v11 = +[NSAssertionHandler currentHandler];
          [v11 handleFailureInMethod:*(v14 + 40) object:*(v14 + 32) file:@"OTStates.m" lineNumber:305 description:@"stateName should be string"];
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v12 = +[NSAssertionHandler currentHandler];
          [v12 handleFailureInMethod:*(v14 + 40) object:*(v14 + 32) file:@"OTStates.m" lineNumber:306 description:@"stateNum should be number"];
        }

        [v2 setObject:v10 forKeyedSubscript:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v13 = qword_10039E1E0;
  qword_10039E1E0 = v2;
}

void sub_1001A1294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001A12C0(uint64_t a1, void *a2)
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
      v12 = 138412802;
      v13 = v8;
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Unable to remove peers for (%@,%@): %@", &v12, 0x20u);
    }

    [WeakRetained setError:v3];
  }

  else
  {
    if (v6)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Successfully removed peers", &v12, 2u);
    }
  }

  v11 = [WeakRetained finishedOp];
  [WeakRetained runBeforeGroupFinished:v11];
}

CFMutableDataRef sub_1001A156C(const __CFData *a1, uint64_t a2)
{
  v4 = sub_10000869C(0);
  v5 = sub_100014CA8(v4);
  v6 = 0;
  if (!a1 || !v5)
  {
    goto LABEL_20;
  }

  v7 = sub_100245E3C();
  if (!v7)
  {
    v6 = 0;
    goto LABEL_20;
  }

  v6 = v7;
  if (![v6 peerPublicKey])
  {
    SOSErrorCreate();

    goto LABEL_20;
  }

  [v6 peerPublicKey];
  v8 = SecKeyCopyMatchingPrivateKey();

  if (!v8)
  {
LABEL_20:

    return 0;
  }

  v9 = SecOTRFullIdentityCreateFromSecKeyRefSOS();
  if (!v9)
  {

    CFRelease(v8);
    return 0;
  }

  v10 = v9;
  CFRelease(v8);
  v11 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, a1, 0x8000100u);
  if (v11)
  {
    v12 = v11;
    v13 = sub_100245E3C();
    v14 = v13;
    if (v13)
    {
      v15 = [v13 trust];
      v16 = [v15 copyPublicKeyForPeer:v12 err:a2];

      v17 = SecOTRPublicIdentityCreateFromSecKeyRef();
      if (v17)
      {
        if (v16)
        {
          CFRelease(v16);
        }

        v16 = SecOTRSessionCreateFromID();
        Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
        SecOTRSAppendSerialization();
        if (v16)
        {
          CFRelease(v16);
          v16 = 0;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v17 = 0;
      v16 = 0;
    }

    Mutable = 0;
LABEL_14:
    CFRelease(v12);

    if (v16)
    {
      CFRelease(v16);
    }

    if (v17)
    {
      CFRelease(v17);
    }

    goto LABEL_18;
  }

  Mutable = 0;
LABEL_18:
  CFRelease(v10);
  return Mutable;
}

BOOL sub_1001A1768(uint64_t a1, uint64_t a2, CFMutableDataRef *a3, CFMutableDataRef *a4, _BYTE *a5)
{
  v9 = SecOTRSessionCreateFromData();
  if (v9)
  {
    Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
    if (a2)
    {
      SecOTRSProcessPacket();
    }

    else
    {
      SecOTRSAppendStartPacket();
    }

    v11 = CFDataCreateMutable(kCFAllocatorDefault, 0);
    SecOTRSAppendSerialization();
    *a3 = v11;
    *a4 = Mutable;
    *a5 = SecOTRSGetIsReadyForMessages();
    CFRelease(v9);
  }

  return v9 != 0;
}

uint64_t sub_1001A3B58(_BYTE *a1, void *a2)
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
        LOBYTE(v53) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v53 & 0x7F) << v5;
        if ((v53 & 0x80) == 0)
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
      if ((v12 >> 3) <= 300)
      {
        if (v13 <= 200)
        {
          if (v13 == 102)
          {
            v34 = PBReaderReadString();
            v35 = 56;
            goto LABEL_80;
          }

          if (v13 == 103)
          {
            v34 = PBReaderReadString();
            v35 = 40;
LABEL_80:
            v48 = *&a1[v35];
            *&a1[v35] = v34;

            goto LABEL_108;
          }
        }

        else
        {
          switch(v13)
          {
            case 0xC9:
              v34 = PBReaderReadString();
              v35 = 64;
              goto LABEL_80;
            case 0xCA:
              v34 = PBReaderReadString();
              v35 = 72;
              goto LABEL_80;
            case 0xCB:
              v21 = 0;
              v22 = 0;
              v23 = 0;
              a1[92] |= 0x10u;
              while (1)
              {
                LOBYTE(v53) = 0;
                v24 = [a2 position] + 1;
                if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
                {
                  v26 = [a2 data];
                  [v26 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v23 |= (v53 & 0x7F) << v21;
                if ((v53 & 0x80) == 0)
                {
                  break;
                }

                v21 += 7;
                v11 = v22++ >= 9;
                if (v11)
                {
                  LOBYTE(v27) = 0;
                  goto LABEL_98;
                }
              }

              v27 = (v23 != 0) & ~[a2 hasError];
LABEL_98:
              a1[88] = v27;
              goto LABEL_108;
          }
        }
      }

      else if (v13 > 400)
      {
        switch(v13)
        {
          case 0x191:
            v49 = objc_alloc_init(SECC2MPCloudKitOperationInfo);
            [a1 addClientOperation:v49];
            v53 = 0xAAAAAAAAAAAAAAAALL;
            v54 = 0xAAAAAAAAAAAAAAAALL;
            if (!PBReaderPlaceMark() || !sub_10019AAE8(v49, a2))
            {
LABEL_110:

              return 0;
            }

            goto LABEL_86;
          case 0x192:
            v42 = 0;
            v43 = 0;
            v44 = 0;
            a1[92] |= 1u;
            while (1)
            {
              LOBYTE(v53) = 0;
              v45 = [a2 position] + 1;
              if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
              {
                v47 = [a2 data];
                [v47 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v44 |= (v53 & 0x7F) << v42;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              v11 = v43++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_96;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v44;
            }

LABEL_96:
            v50 = 8;
            goto LABEL_107;
          case 0x193:
            v28 = 0;
            v29 = 0;
            v30 = 0;
            a1[92] |= 2u;
            while (1)
            {
              LOBYTE(v53) = 0;
              v31 = [a2 position] + 1;
              if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
              {
                v33 = [a2 data];
                [v33 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v30 |= (v53 & 0x7F) << v28;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v11 = v29++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_106;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v30;
            }

LABEL_106:
            v50 = 16;
            goto LABEL_107;
        }
      }

      else
      {
        switch(v13)
        {
          case 0x12D:
            v49 = objc_alloc_init(SECC2MPCloudKitOperationGroupInfo);
            [a1 addOperationGroup:v49];
            v53 = 0xAAAAAAAAAAAAAAAALL;
            v54 = 0xAAAAAAAAAAAAAAAALL;
            if (!PBReaderPlaceMark() || !sub_1001F41D0(v49, a2))
            {
              goto LABEL_110;
            }

LABEL_86:
            PBReaderRecallMark();

            goto LABEL_108;
          case 0x12E:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            a1[92] |= 4u;
            while (1)
            {
              LOBYTE(v53) = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v53 & 0x7F) << v36;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_92;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v38;
            }

LABEL_92:
            v50 = 24;
            goto LABEL_107;
          case 0x12F:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            a1[92] |= 8u;
            while (1)
            {
              LOBYTE(v53) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v53 & 0x7F) << v14;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_102;
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

LABEL_102:
            v50 = 32;
LABEL_107:
            *&a1[v50] = v20;
            goto LABEL_108;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_108:
      v51 = [a2 position];
    }

    while (v51 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1001A5190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001A51CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1001A51E4(uint64_t a1, uint64_t a2)
{
  v27 = 0;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) deps];
  v6 = [v5 keychainMusrForCurrentAccount];
  v7 = sub_100006454(v4, v6, 1, 0, &v27);

  if (v27 || !v7)
  {
    v9 = [*(a1 + 40) viewState];
    v10 = [v9 zoneID];
    v11 = [v10 zoneName];
    v12 = sub_100019104(@"ckkscurrent", v11);

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = v27;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "couldn't create query for item persistentRef: %@", buf, 0xCu);
    }

    v13 = v27;
    v14 = @"couldn't create query for new item pref";
  }

  else
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1001A5578;
    v26[3] = &unk_100343920;
    v26[4] = *(a1 + 56);
    if (sub_10001DC5C(v7, 0, a2, &v27, v26))
    {
      if (sub_10000DF70(v7, &v27))
      {
        return 1;
      }

      v19 = [*(a1 + 40) viewState];
      v20 = [v19 zoneID];
      v21 = [v20 zoneName];
      v22 = sub_100019104(@"ckkscurrent", v21);

      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v29 = v27;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "couldn't destroy query for item pref: %@", buf, 0xCu);
      }

      v13 = v27;
      v14 = @"couldn't destroy query for item pref";
    }

    else
    {
      sub_10000DF70(v7, 0);
      v15 = [*(a1 + 40) viewState];
      v16 = [v15 zoneID];
      v17 = [v16 zoneName];
      v18 = sub_100019104(@"ckkscurrent", v17);

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v29 = v27;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "couldn't run query for item pref: %@", buf, 0xCu);
      }

      v13 = v27;
      v14 = @"couldn't run query for new item pref";
    }
  }

  v23 = [NSError errorWithDomain:@"CKKSErrorDomain" code:-50 description:v14 underlying:v13];
  v24 = *(*(a1 + 48) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v23;

  return 0;
}

CFTypeRef sub_1001A5578(CFTypeRef result, CFTypeRef cf)
{
  v3 = result;
  if (cf)
  {
    result = CFRetain(cf);
  }

  *(*(*(v3 + 32) + 8) + 24) = cf;
  return result;
}

void sub_1001A5AE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001A5B1C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = [WeakRetained deps];
  v9 = [v8 databaseProvider];

  if (v6)
  {
    v10 = [WeakRetained viewState];
    v11 = [v10 zoneID];
    v12 = [v11 zoneName];
    v13 = sub_100019104(@"ckkscurrent", v12);

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "fetch returned an error: %@", buf, 0xCu);
    }

    v14 = [WeakRetained operationQueue];
    [v14 addOperation:*(a1 + 32)];
  }

  else
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1001A5D20;
    v16[3] = &unk_100343880;
    v17 = v5;
    v18 = *(a1 + 40);
    v19 = WeakRetained;
    [v9 dispatchSyncWithSQLTransaction:v16];
    v15 = [WeakRetained operationQueue];
    [v15 addOperation:*(a1 + 32)];

    v14 = v17;
  }
}

uint64_t sub_1001A5D20(id *a1)
{
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = a1[4];
  v2 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v26;
    *&v3 = 138412546;
    v21 = v3;
    do
    {
      v6 = 0;
      v22 = v4;
      do
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [a1[4] objectForKeyedSubscript:{*(*(&v25 + 1) + 8 * v6), v21}];
        if ([a1[5] matchesCKRecord:v7 checkServerFields:0])
        {
          v8 = v5;
          [a1[5] setFromCKRecord:v7];
          v9 = a1[5];
          v24 = 0;
          v10 = [v9 saveToDatabase:&v24];
          v11 = v24;
          v12 = [a1[6] viewState];
          v13 = [v12 zoneID];
          v14 = [v13 zoneName];
          v15 = sub_100019104(@"ckkscurrent", v14);

          if (!v10 || v11)
          {
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = v21;
              v30 = v7;
              v31 = 2112;
              v32 = v11;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "couldn't save updated CKRecord to database: %@ %@", buf, 0x16u);
            }
          }

          else
          {
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              v19 = a1[5];
              *buf = 138412290;
              v30 = v19;
              _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "CKKSMirrorEntry updated: %@", buf, 0xCu);
            }

            v11 = v15;
          }

          v5 = v8;
          v4 = v22;
        }

        else
        {
          v16 = [a1[6] viewState];
          v17 = [v16 zoneID];
          v18 = [v17 zoneName];
          v11 = sub_100019104(@"ckkscurrent", v18);

          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v30 = v7;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "fetched non-matching record %@", buf, 0xCu);
          }
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v4);
  }

  return 1;
}

void sub_1001A60FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_1001A6120(uint64_t a1)
{
  if (![*(a1 + 32) isCancelled])
  {
    v196 = 0;
    v6 = *(a1 + 32);
    v7 = [v6 newerItemPersistentRef];
    v8 = [*(a1 + 32) accessGroup];
    v195 = 0;
    v9 = [v6 _onqueueFindSecDbItem:v7 accessGroup:v8 error:&v195];
    v5 = v195;
    [*(a1 + 32) setNewItem:v9];

    v10 = [*(a1 + 32) newItem];
    v11 = *(a1 + 32);
    if (!v10 || v5)
    {
      v35 = [v11 viewState];
      v36 = [v35 zoneID];
      v37 = [v36 zoneName];
      v38 = sub_100019104(@"ckkscurrent", v37);

      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v198 = v5;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Couldn't fetch new item, quitting: %@", buf, 0xCu);
      }

      [*(a1 + 32) setError:v5];
      goto LABEL_25;
    }

    v12 = [v11 newItem];
    v13 = sub_100016514(v12[2], 7, &v196);
    v14 = sub_100015BFC(v12, v13, &v196);
    v15 = v14;
    if (!v14 || (CFRetain(v14), v196) || ([*(a1 + 32) newerItemSHA1], v16 = objc_claimAutoreleasedReturnValue(), v17 = -[__CFString isEqual:](v15, "isEqual:", v16), v16, (v17 & 1) == 0))
    {
      v40 = [*(a1 + 32) viewState];
      v41 = [v40 zoneID];
      v42 = [v41 zoneName];
      v43 = sub_100019104(@"ckkscurrent", v42);

      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = [*(a1 + 32) newerItemSHA1];
        *buf = 138412546;
        v198 = v15;
        v199 = 2112;
        v200 = v44;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Hash mismatch for new item: %@ vs %@", buf, 0x16u);
      }

      v19 = v196;
      v45 = [NSError errorWithDomain:@"CKKSErrorDomain" code:14 description:@"New item has changed hashes mismatch. Refetch and try again." underlying:v196];;
      [*(a1 + 32) setError:v45];

      goto LABEL_29;
    }

    v18 = sub_100015BFC([*(a1 + 32) newItem], &off_100343C98, &v196);
    v19 = v18;
    if (v18)
    {
      CFRetain(v18);
      v20 = *(a1 + 32);
      if (!v196)
      {
        v21 = [v20 oldItemPersistentRef];

        if (v21)
        {
          v22 = *(a1 + 32);
          v23 = [v22 oldItemPersistentRef];
          v24 = [*(a1 + 32) accessGroup];
          v194 = 0;
          v25 = [v22 _onqueueFindSecDbItem:v23 accessGroup:v24 error:&v194];
          v5 = v194;
          [*(a1 + 32) setOldItem:v25];

          v26 = [*(a1 + 32) oldItem];
          v27 = *(a1 + 32);
          if (!v26 || v5)
          {
            v68 = [v27 viewState];
            v69 = [v68 zoneID];
            v70 = [v69 zoneName];
            v71 = sub_100019104(@"ckkscurrent", v70);

            if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v198 = v5;
              _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "Couldn't fetch old item, quitting: %@", buf, 0xCu);
            }

            [*(a1 + 32) setError:v5];
            goto LABEL_30;
          }

          cf = sub_10016374C([v27 oldItem], &v196);
          if (!cf || (CFRetain(cf), v196) || ([*(a1 + 32) oldItemSHA1], v28 = objc_claimAutoreleasedReturnValue(), v29 = -[__CFString isEqual:](cf, "isEqual:", v28), v28, (v29 & 1) == 0))
          {
            v72 = [*(a1 + 32) viewState];
            v73 = [v72 zoneID];
            v74 = [v73 zoneName];
            v75 = sub_100019104(@"ckkscurrent", v74);

            if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
            {
              v76 = [*(a1 + 32) oldItemSHA1];
              *buf = 138412546;
              v198 = cf;
              v199 = 2112;
              v200 = v76;
              _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "Hash mismatch for old item: %@ vs %@", buf, 0x16u);
            }

            v77 = v196;
            v78 = [NSError errorWithDomain:@"CKKSErrorDomain" code:14 description:@"Old item has changed hashes mismatch. Refetch and try again." underlying:v196];;
            [*(a1 + 32) setError:v78];

            goto LABEL_29;
          }

          v177 = sub_100015BFC([*(a1 + 32) oldItem], &off_100343C98, &v196);
          if (!v177 || (CFRetain(v177), v196))
          {
            v30 = [*(a1 + 32) viewState];
            v31 = [v30 zoneID];
            v32 = [v31 zoneName];
            v33 = sub_100019104(@"ckkscurrent", v32);

            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v198 = v196;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Error fetching UUID for old item: %@", buf, 0xCu);
            }

            v34 = v196;
            [*(a1 + 32) setError:v196];

LABEL_29:
            v5 = 0;
LABEL_30:
            v39 = 0;
LABEL_31:

            goto LABEL_32;
          }
        }

        else
        {
          cf = 0;
          v177 = 0;
        }

        v52 = [*(a1 + 32) viewState];
        v53 = [v52 zoneID];
        v54 = [v53 zoneName];
        v55 = sub_100019104(@"ckkscurrent", v54);

        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          v56 = [*(a1 + 32) currentPointerIdentifier];
          *buf = 138412802;
          v198 = v56;
          v199 = 2112;
          v200 = v19;
          v201 = 2112;
          v202 = v177;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Setting current pointer for %@ to %@ (from %@)", buf, 0x20u);
        }

        v57 = [*(a1 + 32) currentPointerIdentifier];
        v58 = [*(a1 + 32) viewState];
        v59 = [v58 contextID];
        v60 = [*(a1 + 32) viewState];
        v61 = [v60 zoneID];
        v193 = 0;
        v176 = [CKKSCurrentItemPointer tryFromDatabase:v57 contextID:v59 state:@"remote" zoneID:v61 error:&v193];
        v5 = v193;

        if (v176)
        {
          v62 = [NSString stringWithFormat:@"Update to current item pointer is pending."];
          v63 = [NSError errorWithDomain:@"CKKSErrorDomain" code:12 description:v62];
          [*(a1 + 32) setError:v63];

          v64 = [*(a1 + 32) viewState];
          v65 = [v64 zoneID];
          v66 = [v65 zoneName];
          oslog = sub_100019104(@"ckkscurrent", v66);

          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            v67 = [*(a1 + 32) error];
            *buf = 138412290;
            v198 = v67;
            _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Attempt to set a new current item pointer when one exists: %@", buf, 0xCu);
          }

          v39 = 0;
          goto LABEL_97;
        }

        v172 = [*(a1 + 32) currentPointerIdentifier];
        v79 = [*(a1 + 32) viewState];
        v80 = [v79 contextID];
        v81 = [*(a1 + 32) viewState];
        v82 = [v81 zoneID];
        v192 = v5;
        oslog = [CKKSCurrentItemPointer tryFromDatabase:v172 contextID:v80 state:@"local" zoneID:v82 error:&v192];
        v174 = v192;

        if (oslog)
        {
          if (v177)
          {
            v83 = [oslog currentItemUUID];
            v84 = [v83 isEqualToString:v177];

            if ((v84 & 1) == 0)
            {
              v85 = [*(a1 + 32) viewState];
              v86 = [v85 zoneID];
              v87 = [v86 zoneName];
              v88 = sub_100019104(@"ckkscurrent", v87);

              if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v198 = oslog;
                v199 = 2112;
                v200 = v177;
                _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "current item pointer(%@) doesn't match user-supplied UUID (%@); rejecting change of current", buf, 0x16u);
              }

              v173 = [NSString stringWithFormat:@"Current pointer(%@) does not match user-supplied %@, aborting", oslog, v177];
              v89 = [NSError errorWithDomain:@"CKKSErrorDomain" code:14 description:v173];
              [*(a1 + 32) setError:v89];

LABEL_64:
              v39 = 0;
LABEL_96:

              v5 = v174;
LABEL_97:

              goto LABEL_31;
            }
          }

          else
          {
            v95 = *(a1 + 32);
            v96 = [oslog currentItemUUID];
            v97 = [*(a1 + 32) accessGroup];
            v98 = [v95 _onqueueFindSecDbItemWithUUID:v96 accessGroup:v97 error:0];

            if (v98)
            {
              CFRelease(v98);
              v99 = [*(a1 + 32) viewState];
              v100 = [v99 zoneID];
              v101 = [v100 zoneName];
              v102 = sub_100019104(@"ckkscurrent", v101);

              if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v198 = oslog;
                _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "no user-supplied UUID and current item pointer(%@) is not dangling; rejecting change of current", buf, 0xCu);
              }

              v173 = [NSString stringWithFormat:@"No user-supplied UUID and current pointer(%@) is not dangling, aborting", oslog];
              v103 = [NSError errorWithDomain:@"CKKSErrorDomain" code:14 description:v173];
              [*(a1 + 32) setError:v103];

              goto LABEL_64;
            }
          }

          [oslog setCurrentItemUUID:v19];
        }

        else
        {
          if (v177)
          {
            v90 = [*(a1 + 32) viewState];
            v91 = [v90 zoneID];
            v92 = [v91 zoneName];
            v93 = sub_100019104(@"ckkscurrent", v92);

            if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
            {
              v94 = [*(a1 + 32) currentPointerIdentifier];
              *buf = 138412290;
              v198 = v94;
              _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "Requested to update a current item pointer but one doesn't exist at %@; rejecting change of current", buf, 0xCu);
            }

            oslog = [NSString stringWithFormat:@"Current pointer(%@) does not match given value of '%@', aborting", 0, v177];
            v173 = [NSError errorWithDomain:@"CKKSErrorDomain" code:14 description:oslog];
            [*(a1 + 32) setError:v173];
            goto LABEL_64;
          }

          osloga = [CKKSCurrentItemPointer alloc];
          v104 = [*(a1 + 32) currentPointerIdentifier];
          v105 = [*(a1 + 32) viewState];
          v106 = [v105 contextID];
          v107 = [*(a1 + 32) viewState];
          v108 = [v107 zoneID];
          oslog = [(CKKSCurrentItemPointer *)osloga initForIdentifier:v104 contextID:v106 currentItemUUID:v19 state:@"local" zoneID:v108 encodedCKRecord:0];

          v109 = [*(a1 + 32) viewState];
          v110 = [v109 zoneID];
          v111 = [v110 zoneName];
          v112 = sub_100019104(@"ckkscurrent", v111);

          if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v198 = oslog;
            _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "Creating a new current item pointer: %@", buf, 0xCu);
          }
        }

        v113 = [*(a1 + 32) deps];
        v114 = [v113 contextID];
        v115 = [*(a1 + 32) viewState];
        v116 = [v115 zoneID];
        v191 = v174;
        v173 = [(CKKSSQLDatabaseObject *)CKKSOutgoingQueueEntry allUUIDsWithContextID:v114 zoneID:v116 error:&v191];
        v170 = v191;

        v117 = [*(a1 + 32) deps];
        v118 = [v117 contextID];
        v119 = [*(a1 + 32) viewState];
        v120 = [v119 zoneID];
        v190 = v170;
        v169 = [(CKKSSQLDatabaseObject *)CKKSIncomingQueueEntry allUUIDsWithContextID:v118 zoneID:v120 error:&v190];
        v121 = v190;

        if (([v173 containsObject:v19] & 1) != 0 || objc_msgSend(v169, "containsObject:", v19))
        {
          v122 = [NSString stringWithFormat:@"New item(%@) is being synced can't set current pointer.", v19];;
          v123 = [NSError errorWithDomain:@"CKKSErrorDomain" code:13 description:v122];
        }

        else
        {
          v123 = v121;
        }

        if (v177)
        {
          v124 = v123;
          if (([v173 containsObject:?] & 1) != 0 || objc_msgSend(v169, "containsObject:", v177))
          {
            v125 = [NSString stringWithFormat:@"Old item(%@) is being synced can't set current pointer.", v177];;
            v123 = [NSError errorWithDomain:@"CKKSErrorDomain" code:13 description:v125];
          }
        }

        if (v123)
        {
          v174 = v123;
          v126 = [*(a1 + 32) viewState];
          v127 = [v126 zoneID];
          v128 = [v127 zoneName];
          v129 = sub_100019104(@"ckkscurrent", v128);

          if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
          {
            v130 = [*(a1 + 32) currentPointerIdentifier];
            *buf = 138412546;
            v198 = v130;
            v199 = 2112;
            v200 = v174;
            _os_log_impl(&_mh_execute_header, v129, OS_LOG_TYPE_ERROR, "Error attempting to update current item pointer %@: %@", buf, 0x16u);
          }

          [*(a1 + 32) setError:v174];
          v39 = 0;
        }

        else
        {
          v175 = [oslog currentItemUUID];
          v131 = [*(a1 + 32) deps];
          v132 = [v131 contextID];
          v133 = [*(a1 + 32) viewState];
          v134 = [v133 zoneID];
          v189 = 0;
          v171 = [CKKSMirrorEntry fromDatabase:v175 contextID:v132 zoneID:v134 error:&v189];
          v168 = v189;

          if (v171)
          {
            v135 = v168 == 0;
          }

          else
          {
            v135 = 0;
          }

          v136 = !v135;
          v137 = [*(a1 + 32) viewState];
          v138 = [v137 zoneID];
          v139 = [v138 zoneName];
          v140 = sub_100019104(@"ckkscurrent", v139);

          if (v136)
          {
            if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v198 = oslog;
              v199 = 2112;
              v200 = v171;
              _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_ERROR, "Error attempting to set a current item pointer to an item that isn't synced: %@ %@", buf, 0x16u);
            }

            v141 = [oslog currentItemUUID];
            v142 = [NSString stringWithFormat:@"No synced item matching (%@) can't set current pointer.", v141];;
            v174 = [NSError errorWithDomain:@"CKKSErrorDomain" code:-25300 description:v142 underlying:v168];

            [*(a1 + 32) setError:v174];
            v39 = 0;
          }

          else
          {
            if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v198 = oslog;
              _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "Saving new current item pointer %@", buf, 0xCu);
            }

            v143 = objc_alloc_init(NSMutableDictionary);
            v144 = [*(a1 + 32) viewState];
            v145 = [v144 zoneID];
            v146 = [oslog CKRecordWithZoneID:v145];

            v147 = [v146 recordID];
            [v143 setObject:v146 forKeyedSubscript:v147];

            v148 = objc_alloc_init(NSBlockOperation);
            [v148 setName:@"updateCurrentItemPointer-modifyRecordsComplete"];
            [*(a1 + 32) dependOnBeforeGroupFinished:v148];
            v149 = [CKModifyRecordsOperation alloc];
            v150 = [v143 allValues];
            v151 = [v149 initWithRecordsToSave:v150 recordIDsToDelete:0];
            [*(a1 + 32) setModifyRecordsOperation:v151];

            v152 = [*(a1 + 32) modifyRecordsOperation];
            [v152 setAtomic:1];

            v153 = [*(a1 + 32) modifyRecordsOperation];
            v154 = [v153 configuration];
            [v154 setIsCloudKitSupportOperation:1];

            v155 = [*(a1 + 32) modifyRecordsOperation];
            [v155 setQualityOfService:25];

            v156 = [*(a1 + 32) modifyRecordsOperation];
            [v156 setSavePolicy:0];

            v157 = [*(a1 + 32) ckoperationGroup];
            v158 = [*(a1 + 32) modifyRecordsOperation];
            [v158 setGroup:v157];

            v187[0] = _NSConcreteStackBlock;
            v187[1] = 3221225472;
            v187[2] = sub_1001A79D4;
            v187[3] = &unk_100343858;
            objc_copyWeak(&v188, (a1 + 40));
            v159 = [*(a1 + 32) modifyRecordsOperation];
            [v159 setPerRecordSaveBlock:v187];

            v181[0] = _NSConcreteStackBlock;
            v181[1] = 3221225472;
            v181[2] = sub_1001A7B80;
            v181[3] = &unk_100344710;
            objc_copyWeak(&v186, (a1 + 40));
            v160 = v143;
            v182 = v160;
            v161 = v148;
            v183 = v161;
            v184 = oslog;
            v185 = v171;
            v162 = [*(a1 + 32) modifyRecordsOperation];
            [v162 setModifyRecordsCompletionBlock:v181];

            v163 = *(a1 + 32);
            v164 = [v163 modifyRecordsOperation];
            [v163 dependOnBeforeGroupFinished:v164];

            v165 = [*(a1 + 32) deps];
            v166 = [v165 ckdatabase];
            v167 = [*(a1 + 32) modifyRecordsOperation];
            [v166 addOperation:v167];

            objc_destroyWeak(&v186);
            objc_destroyWeak(&v188);

            v174 = 0;
            v39 = 1;
          }
        }

        goto LABEL_96;
      }
    }

    else
    {
      v20 = *(a1 + 32);
    }

    v47 = [v20 viewState];
    v48 = [v47 zoneID];
    v49 = [v48 zoneName];
    v50 = sub_100019104(@"ckkscurrent", v49);

    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v198 = v196;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "Error fetching UUID for new item: %@", buf, 0xCu);
    }

    v51 = v196;
    [*(a1 + 32) setError:v196];

    goto LABEL_29;
  }

  v2 = [*(a1 + 32) viewState];
  v3 = [v2 zoneID];
  v4 = [v3 zoneName];
  v5 = sub_100019104(@"ckkscurrent", v4);

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CKKSUpdateCurrentItemPointerOperation cancelled, quitting", buf, 2u);
  }

LABEL_25:
  v39 = 0;
LABEL_32:

  return v39;
}