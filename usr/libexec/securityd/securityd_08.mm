CFTypeRef sub_1001698C4(CFDataRef data, CFErrorRef *error)
{
  v3 = CFPropertyListCreateWithData(0, data, 1uLL, 0, error);

  return sub_100169F50(v3, error);
}

CFTypeRef sub_100169910(const __CFData *a1, CFTypeRef *a2)
{
  cf = 0;
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v6 = &BytePtr[Length];
  v7 = sub_1000068E0(0, &cf, a2, BytePtr, &BytePtr[Length]);
  if (a2 && !v7)
  {
    Domain = CFErrorGetDomain(*a2);
    if (!Domain || !CFEqual(Domain, @"com.apple.security.cfder.error") || CFErrorGetCode(*a2) != -1)
    {
      goto LABEL_13;
    }

    v11 = *a2;
    if (*a2)
    {
      *a2 = 0;
      CFRelease(v11);
    }

    v7 = sub_100169A2C(&cf, a2, BytePtr, v6, v10);
  }

  if (v7)
  {
    if (v7 != v6)
    {
      sub_1000111B4(-26275, kCFErrorDomainOSStatus, 0, a2, v8, @"trailing garbage at end of decrypted item");
      v12 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v12);
      }
    }
  }

LABEL_13:
  v13 = cf;

  return sub_100169F50(v13, a2);
}

uint64_t sub_100169A2C(uint64_t a1, CFTypeRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3;
  if (a3)
  {
    if (ccder_decode_tag())
    {
      sub_1000111B4(-2, @"com.apple.security.cfder.error", 0, a2, v7, @"Unsupported DER Type");
    }

    else
    {
      sub_1000111B4(-1, @"com.apple.security.cfder.error", 0, a2, v7, @"Unknown data encoding");
    }

    return 0;
  }

  else
  {
    sub_1000111B4(-1, @"com.apple.security.cfder.error", 0, a2, a5, @"Null DER");
  }

  return v5;
}

CFTypeRef sub_100169F50(CFTypeRef cf, __CFString **a2)
{
  v2 = cf;
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 != CFDictionaryGetTypeID())
    {
      v5 = CFGetTypeID(v2);
      v6 = CFCopyTypeIDDescription(v5);
      sub_1000103CC(-26275, a2, @"plist is a %@, expecting a dictionary", v6);
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

uint64_t sub_100169FE4(CFDateRef *a1, CFErrorRef *a2, uint64_t a3)
{
  Domain = CFErrorGetDomain(*a2);
  if (!Domain || !CFEqual(Domain, @"com.apple.security.cfder.error") || CFErrorGetCode(*a2) != -1)
  {
    return 0;
  }

  at = 0.0;
  v8 = CFCalendarCreateWithIdentifier(0, kCFGregorianCalendar);
  v9 = CFTimeZoneCreateWithTimeIntervalFromGMT(0, 0.0);
  CFCalendarSetTimeZone(v8, v9);
  CFCalendarComposeAbsoluteTime(v8, &at, "yMd", 2001, 3, 24);
  if (v9)
  {
    CFRelease(v9);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  v10 = CFDateCreate(0, at);
  *a1 = v10;
  if (!v10)
  {
    return 0;
  }

  v11 = *a2;
  if (*a2)
  {
    *a2 = 0;
    CFRelease(v11);
  }

  return a3;
}

const void *sub_10016A0F8(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    return (v1 == CFStringGetTypeID());
  }

  return result;
}

const void *sub_10016A130(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    return (v1 == CFNumberGetTypeID());
  }

  return result;
}

void sub_10016A168(uint64_t a1, CFDictionaryRef theDict, __CFString **a3)
{
  Value = CFDictionaryGetValue(theDict, kSecValuePersistentRef);
  if (Value)
  {
    v7 = Value;
    if (_SecItemParsePersistentRef())
    {
      if (!CFEqual(**(a1 + 16), 0))
      {
        sub_1000103CC(-26275, a3, @"v_PersistentRef has unexpected class %@", 0, 0xAAAAAAAAAAAAAAAALL, 0);
      }
    }

    else
    {
      sub_1000103CC(-26275, a3, @"v_PersistentRef %@ failed to decode", v7, 0xAAAAAAAAAAAAAAAALL, 0);
    }
  }

  else
  {
    sub_1000103CC(-26275, a3, @"No v_PersistentRef in backup dictionary %@", theDict);
  }
}

CFDateRef sub_10016A288(int a1, uint64_t a2, __CFString **a3)
{
  v3 = *(a2 + 8);
  if ((v3 - 5) >= 2)
  {
    if (v3 != 4)
    {
      sub_1000103CC(-26276, a3, @"attr %@ has no default value", *a2);
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

void sub_10016A530(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
}

void sub_10016AD64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10016AD94(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14 = +[CKKSAnalytics logger];
  [v14 logResultForEvent:@"OctagonEventUpgradePreapprovedJoin" hardFailure:1 result:v12];

  if (v12)
  {
    v15 = sub_100006274("SecError");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "octagon-sos: attemptPreapprovedJoin failed: %@", buf, 0xCu);
    }

    if ([v12 isCuttlefishError:1033])
    {
      v16 = sub_100006274("octagon-ckks");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "A CKKS key hierarchy is out of date; requesting reset", buf, 2u);
      }

      v17 = [WeakRetained ckksConflictState];
      [WeakRetained setNextState:v17];
    }

    else
    {
      [WeakRetained setError:v12];
      [WeakRetained setNextState:@"BecomeUntrusted"];
    }

    v24 = [WeakRetained finishedOp];
    [WeakRetained runBeforeGroupFinished:v24];
  }

  else
  {
    [WeakRetained requestSilentEscrowUpdate];
    v18 = sub_100006274("SecError");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "octagon-sos: attemptPreapprovedJoin succeded", buf, 2u);
    }

    v19 = [WeakRetained deps];
    v20 = [v19 ckks];
    [v20 setCurrentSyncingPolicy:v11];

    v21 = [WeakRetained deps];
    v22 = [v21 stateHolder];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10016B230;
    v34[3] = &unk_100338E48;
    v35 = v9;
    v36 = v11;
    v33 = 0;
    v23 = [v22 persistAccountChanges:v34 error:&v33];
    v24 = v33;

    if (!v23 || v24)
    {
      v31 = sub_100006274("octagon-sos");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v38 = v24;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Couldn't persist results: %@", buf, 0xCu);
      }

      [WeakRetained setError:v24];
      [WeakRetained setNextState:@"Error"];
    }

    else
    {
      v25 = [WeakRetained intendedState];
      [WeakRetained setNextState:v25];

      v26 = sub_100006274("octagon-ckks");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [WeakRetained deps];
        v28 = [v27 ckks];
        *buf = 138412290;
        v38 = v28;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Providing ck records (from sos upgrade) to %@", buf, 0xCu);
      }

      v29 = [WeakRetained deps];
      v30 = [v29 ckks];
      [v30 receiveTLKUploadRecords:v10];
    }

    v32 = [WeakRetained finishedOp];
    [WeakRetained runBeforeGroupFinished:v32];
  }
}

id sub_10016B230(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTrustState:2];
  [v3 setPeerID:*(a1 + 32)];
  [v3 setTPSyncingPolicy:*(a1 + 40)];

  return v3;
}

void sub_10016B40C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10016B434(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) viewKeySets];
  v3 = [*(a1 + 32) pendingTLKShares];
  [WeakRetained proceedWithKeys:v2 pendingTLKShares:v3];
}

void sub_10016BA5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10016BA84(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained afterUpdate];
}

void sub_10016BBD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10016BBFC(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = +[CKKSAnalytics logger];
  [v7 logResultForEvent:@"OctagonEventUpgradePreflightPreapprovedJoin" hardFailure:1 result:v5];

  if (v5)
  {
    v8 = sub_100006274("SecError");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "octagon-sos: preflightPreapprovedJoin failed: %@", &v12, 0xCu);
    }

    [WeakRetained setError:v5];
LABEL_12:
    [WeakRetained setNextState:@"BecomeUntrusted"];
    v11 = [WeakRetained finishedOp];
    [WeakRetained runBeforeGroupFinished:v11];

    goto LABEL_13;
  }

  v9 = sub_100006274("octagon-sos");
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if ((a2 & 1) == 0)
  {
    if (v10)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "TPH believes a preapprovedJoin will fail; aborting.", &v12, 2u);
    }

    goto LABEL_12;
  }

  if (v10)
  {
    LOWORD(v12) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "TPH believes a preapprovedJoin might succeed; continuing.", &v12, 2u);
  }

  [WeakRetained afterPreflight];
LABEL_13:
}

void sub_10016CDA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 200));
  objc_destroyWeak((v1 - 152));
  _Unwind_Resume(a1);
}

void sub_10016CE2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained error];

  if (v2)
  {
    v3 = [WeakRetained error];
    v4 = [v3 isRetryable];

    if (v4)
    {
      v5 = [WeakRetained error];
      [v5 retryInterval];
      v7 = v6;

      v8 = sub_100006274("octagon-sos");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [WeakRetained error];
        v15 = 134218242;
        v16 = v7;
        v17 = 2112;
        v18 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SOS upgrade error is not fatal: requesting retry in %0.2fs: %@", &v15, 0x16u);
      }

      v10 = [WeakRetained deps];
      v11 = [v10 flagHandler];
      v12 = [[OctagonPendingFlag alloc] initWithFlag:@"attempt_sos_upgrade" delayInSeconds:v7];
      [v11 handlePendingFlag:v12];
    }

    else
    {
      v10 = sub_100006274("octagon-sos");
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
LABEL_10:

        v13 = [WeakRetained eventS];
        v14 = [WeakRetained error];
        [v13 sendMetricWithResult:0 error:v14];

        goto LABEL_11;
      }

      v11 = [WeakRetained error];
      v15 = 138412290;
      v16 = *&v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SOS upgrade error is: %@; not retrying", &v15, 0xCu);
    }

    goto LABEL_10;
  }

  v13 = [WeakRetained eventS];
  [v13 sendMetricWithResult:1 error:0];
LABEL_11:
}

void sub_10016D074(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = a8;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v19 = +[CKKSAnalytics logger];
  [v19 logResultForEvent:@"OctagonEventUpgradePrepare" hardFailure:1 result:v17];

  if (v17)
  {
    v20 = sub_100006274("SecError");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v17;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "octagon-sos: Error preparing identity: %@", buf, 0xCu);
    }

    [WeakRetained setError:v17];
    [WeakRetained handlePrepareErrors:v17 nextExpectedState:@"BecomeUntrusted"];
    v21 = [WeakRetained finishedOp];
    [WeakRetained runBeforeGroupFinished:v21];
  }

  else
  {
    v22 = sub_100006274("octagon-sos");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v36 = v13;
      v37 = 2112;
      v38 = v14;
      v39 = 2112;
      v40 = v15;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Prepared: %@ %@ %@", buf, 0x20u);
    }

    v31 = v13;

    v23 = [WeakRetained deps];
    v24 = [v23 stateHolder];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10016D3FC;
    v33[3] = &unk_100344BD8;
    v25 = v16;
    v34 = v25;
    v32 = 0;
    v26 = [v24 persistAccountChanges:v33 error:&v32];
    v21 = v32;

    if (!v26 || v21)
    {
      v29 = sub_100006274("SecError");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v21;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "octagon-ckks: Error persisting new views and policy: %@", buf, 0xCu);
      }

      [WeakRetained setError:v21];
      [WeakRetained handlePrepareErrors:v21 nextExpectedState:@"BecomeUntrusted"];
      v30 = [WeakRetained finishedOp];
      [WeakRetained runBeforeGroupFinished:v30];
    }

    else
    {
      v27 = [WeakRetained deps];
      v28 = [v27 ckks];
      [v28 setCurrentSyncingPolicy:v25];

      [WeakRetained afterPrepare];
    }

    v13 = v31;
  }
}

id sub_10016D3FC(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTPSyncingPolicy:*(a1 + 32)];

  return v3;
}

OTAccountMetadataClassC *__cdecl sub_10016D440(id a1, OTAccountMetadataClassC *a2)
{
  v2 = a2;
  [(OTAccountMetadataClassC *)v2 setAttemptedJoin:2];
  [(OTAccountMetadataClassC *)v2 setCdpState:2];

  return v2;
}

void sub_10016D73C(const void *a1, const __CFString *a2, uint64_t a3)
{
  v5 = sub_100007370(*a3, a1, (a3 + 40));
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
    sub_100008D78(v6, a2, a3);
    v11 = CFDictionaryGetValue(*(a3 + 8), *v6);
    CFArrayAppendValue(Mutable, v11);
    CFDictionarySetValue(*(a3 + 8), *v6, Mutable);

    CFRelease(Mutable);
  }
}

void sub_10016D878(const void *a1, const __CFString *a2, uint64_t a3)
{
  v5 = sub_100007370(*a3, a1, (a3 + 40));
  if (v5)
  {
    v6 = v5;
    Value = CFDictionaryGetValue(*(a3 + 8), *v5);
    if (Value)
    {
      v8 = Value;
      v9 = CFGetTypeID(Value);
      if (v9 == CFArrayGetTypeID())
      {
        Mutable = CFRetain(v8);
      }

      else
      {
        v11 = sub_100006274("SecError");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *v6;
          v14 = 138412546;
          v15 = v12;
          v16 = 2112;
          v17 = v8;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "negating %@ = %@ in query", &v14, 0x16u);
        }

        Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        CFArrayAppendValue(Mutable, kCFNull);
        CFArrayAppendValue(Mutable, v8);
      }

      CFDictionaryRemoveValue(*(a3 + 8), *v6);
      if (Mutable)
      {
        goto LABEL_11;
      }
    }

    else
    {
      Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      CFArrayAppendValue(Mutable, kCFNull);
      if (Mutable)
      {
LABEL_11:
        sub_100008D78(v6, a2, a3);
        v13 = CFDictionaryGetValue(*(a3 + 8), *v6);
        CFArrayAppendValue(Mutable, v13);
        CFDictionarySetValue(*(a3 + 8), *v6, Mutable);
        CFRelease(Mutable);
      }
    }
  }
}

void sub_10016DA50(uint64_t a1, CFTypeRef cf)
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

void sub_10016DA9C(uint64_t a1, CFTypeRef cf)
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

void sub_10016DAE8(uint64_t a1, CFTypeRef cf)
{
  if (*(a1 + 232) != cf)
  {
    CFRetain(cf);
    v4 = *(a1 + 232);
    if (v4)
    {
      CFRelease(v4);
    }

    *(a1 + 232) = cf;
  }
}

void sub_10016DB34(uint64_t a1, CFTypeRef cf)
{
  if (*(a1 + 248) != cf)
  {
    CFRetain(cf);
    v4 = *(a1 + 248);
    if (v4)
    {
      CFRelease(v4);
    }

    *(a1 + 248) = cf;
  }
}

void sub_10016DB80(uint64_t a1, CFTypeRef cf)
{
  if (*(a1 + 224) != cf)
  {
    CFRetain(cf);
    v4 = *(a1 + 224);
    if (v4)
    {
      CFRelease(v4);
    }

    *(a1 + 224) = cf;
  }
}

void sub_10016E1D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained timeoutCanOccur])
  {
    v1 = [WeakRetained _onqueueTimeoutError];
    [WeakRetained setError:v1];

    [WeakRetained setTimeoutCanOccur:0];
    [WeakRetained cancel];
  }
}

void sub_10016E740(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10016E75C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained finishingBlock];
    v4[2]();

    (*(*(a1 + 32) + 16))();
    v5 = [v3 completionHandlerDidRunCondition];
    [v5 fulfill];

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [v3 dependencies];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v3 removeDependency:*(*(&v12 + 1) + 8 * i)];
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v11 = sub_100019104(@"resultoperation", 0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "completion handler called on deallocated operation instance", buf, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_10016EC60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10016EC80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
}

uint64_t sub_10016FD88(uint64_t a1, CFTypeRef *a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = -1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_10016FE58;
  v5[3] = &unk_100338FC0;
  v5[5] = a1;
  v5[6] = a2;
  v5[4] = &v6;
  v2 = sub_10016FED4(a2, v5);
  v3 = *(v7 + 6);
  if ((v2 & 1) == 0 && (v3 & 0x80000000) == 0)
  {
    close(*(v7 + 6));
    v3 = 0xFFFFFFFFLL;
    *(v7 + 6) = -1;
  }

  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t sub_10016FE58(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[5];
  v5 = a1[6];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_10016FF90;
  v7[3] = &unk_100338F98;
  v7[4] = a1[4];
  v7[5] = v5;
  return sub_10015097C(a3, v4, v5, v7);
}

void *sub_10016FED4(CFTypeRef *a1, uint64_t a2)
{
  v4 = sub_10000869C(0);
  v5 = sub_100014CA8(v4);
  sub_100087E9C(v5 != 0, a1, @"No datasource");
  if (!v5)
  {
    return 0;
  }

  result = (*(v5 + 8))(v5, kSecAttrAccessibleWhenUnlocked, a1);
  if (result)
  {
    v7 = result;
    v8 = *result;
    if (*result)
    {
      (*(a2 + 16))(a2, result, v8);
    }

    LODWORD(result) = (v7[9])(v7, a1);
    if (v8)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_10016FF90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = -1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10022F3A0;
  v6[3] = &unk_100346238;
  v6[4] = &v7;
  v6[5] = v4;
  sub_10022E5D0(a3, v4, v6);
  v5 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  *(*(*(a1 + 32) + 8) + 24) = v5;
}

void sub_100170050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100170068(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 1;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_100170124;
  v8[3] = &unk_100338FE8;
  v8[4] = &v9;
  v8[5] = a1;
  v8[6] = a2;
  v8[7] = a3;
  v8[8] = a4;
  v4 = sub_10016FED4(a4, v8);
  v5 = *(v10 + 24);
  v6 = v4 & v5;
  *(v10 + 24) = v4 & v5;
  _Block_object_dispose(&v9, 8);
  return v6;
}

void sub_100170124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v9 = *(a1 + 48);
  v6 = *(a1 + 64);
  if ([OTSOSActualAdapter sosEnabled]_0())
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 1;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100150B20;
    v10[3] = &unk_1003382C8;
    v10[4] = &v14;
    v11 = v9;
    v12 = v6;
    v13 = a3;
    v7 = sub_10015097C(a3, v5, v6, v10);
    v8 = v7 & v15[3];
    *(v15 + 24) = v8;
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    SOSCCSetSOSDisabledError();
    v8 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v8;
}

uint64_t sub_100170244(CFTypeRef *a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_100170300;
  v6[3] = &unk_100339010;
  v6[4] = &v7;
  v6[5] = a1;
  v1 = sub_10016FED4(a1, v6);
  v2 = v8;
  if ((v1 & 1) == 0)
  {
    v3 = v8[3];
    if (v3)
    {
      v8[3] = 0;
      CFRelease(v3);
      v2 = v8;
    }
  }

  v4 = v2[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t sub_100170300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  result = sub_100150DB4(a3);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_100170338(uint64_t a1, CFTypeRef *a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_100170400;
  v7[3] = &unk_100339038;
  v7[4] = &v8;
  v7[5] = a1;
  v7[6] = a2;
  v2 = sub_10016FED4(a2, v7);
  v3 = v9;
  if ((v2 & 1) == 0)
  {
    v4 = v9[3];
    if (v4)
    {
      v9[3] = 0;
      CFRelease(v4);
      v3 = v9;
    }
  }

  v5 = v3[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void sub_100170400(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[5];
  v5 = a1[6];
  if ([OTSOSActualAdapter sosEnabled]_0())
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = &stru_100348050;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10015101C;
    v9[3] = &unk_1003382F0;
    v9[4] = &v10;
    v7 = v9;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100151058;
    block[3] = &unk_1003384B8;
    v16 = a3;
    v17 = v6;
    v15 = v7;
    dispatch_sync(*(a3 + 112), block);

    v8 = v11[3];
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    SOSCCSetSOSDisabledError();
    v8 = 0;
  }

  *(*(a1[4] + 8) + 24) = v8;
}

uint64_t sub_10017053C(int a1, uint64_t a2, int a3, CFTypeRef cf, uint64_t a5, CFTypeRef *a6)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  if (cf && (v10 = CFGetTypeID(cf), v10 == CFDataGetTypeID()))
  {
    v11 = SOSBackupSliceKeyBagCreateFromData();
    if (v11)
    {
      v12 = v11;
      if (a2)
      {
        v13 = SOSBSKBLoadAndUnlockWithPeerIDAndSecret();
      }

      else if (SOSBSKBIsDirect())
      {
        v13 = SOSBSKBLoadAndUnlockWithDirectSecret();
      }

      else
      {
        v13 = SOSBSKBLoadAndUnlockWithWrappingSecret();
      }

      v14 = v13;
      if (v13 != -1)
      {
        *(v22 + 24) = 1;
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 0x40000000;
        v19[2] = sub_100170700;
        v19[3] = &unk_1003390A8;
        v19[4] = &v21;
        v19[5] = a6;
        v19[6] = a5;
        v20 = v13;
        v15 = sub_10016FED4(a6, v19);
        *(v22 + 24) &= v15;
        v16 = sub_1001940F8(v14, a6);
        *(v22 + 24) &= v16;
      }

      CFRelease(v12);
    }
  }

  else if (a6)
  {
    sub_1000103CC(-50, a6, @"object %@ is not a data", cf);
  }

  v17 = *(v22 + 24);
  _Block_object_dispose(&v21, 8);
  return v17;
}

uint64_t sub_100170700(uint64_t a1, uint64_t a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1001707BC;
  v5[3] = &unk_100339080;
  v5[4] = *(a1 + 32);
  v5[5] = a2;
  v7 = *(a1 + 56);
  v3 = *(a1 + 40);
  v6 = vextq_s8(v3, v3, 8uLL);
  result = (*(a2 + 64))(a2, v3.i64[0], 0, 0, v5);
  *(*(*(a1 + 32) + 8) + 24) &= result;
  return result;
}

void sub_1001707BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v10 = _NSConcreteStackBlock;
  v11 = 0x40000000;
  v12 = sub_100170984;
  v13 = &unk_100339058;
  v14 = *(a1 + 40);
  v15 = a2;
  v16 = v5;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 1;
  v6 = sub_10000DAE4(kCFAllocatorDefault, v4, v5);
  v7 = v6;
  if (v6 && (v8 = CFGetTypeID(v6), v8 == CFDictionaryGetTypeID()))
  {
    *(v20 + 24) = 1;
    context[0] = _NSConcreteStackBlock;
    context[1] = 0x40000000;
    context[2] = sub_1001709CC;
    context[3] = &unk_1003390D0;
    v18 = v3;
    context[4] = &v10;
    context[5] = &v19;
    context[6] = v5;
    CFDictionaryApplyFunction(v7, sub_100170B68, context);
  }

  else
  {
    if (v5)
    {
      sub_1000103CC(-50, v5, @"object %@ is not a dictionary", v7, v10, v11, v12, v13, v14, v15, v16);
    }

    *(v20 + 24) = 0;
    if (!v7)
    {
      v9 = 0;
      goto LABEL_9;
    }
  }

  CFRelease(v7);
  v9 = *(v20 + 24);
LABEL_9:
  _Block_object_dispose(&v19, 8);
  *(*(*(a1 + 32) + 8) + 24) &= v9;
}

void sub_100170984(void *a1, uint64_t a2)
{
  cf = 0;
  if ((*(a1[4] + 88))(a1[5], a2, &cf, a1[6]))
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void sub_1001709CC(uint64_t a1, CFTypeRef cf, const void *a3)
{
  v5 = *(a1 + 48);
  if (!cf || (v7 = CFGetTypeID(cf), v7 != CFStringGetTypeID()))
  {
    if (v5)
    {
      sub_1000103CC(-50, v5, @"object %@ is not a string", cf);
    }

    goto LABEL_15;
  }

  v8 = sub_1000074BC(cf);
  v9 = *(a1 + 48);
  if (!v8)
  {
    *(*(*(a1 + 40) + 8) + 24) &= sub_1000103CC(-26275, v9, @"bad class %@ in backup", cf);
    return;
  }

  if (!a3 || (v10 = v8, v11 = CFGetTypeID(a3), v11 != CFArrayGetTypeID()))
  {
    if (v9)
    {
      sub_1000103CC(-50, v9, @"object %@ is not an array", a3);
    }

LABEL_15:
    *(*(*(a1 + 40) + 8) + 24) = 0;
    return;
  }

  Count = CFArrayGetCount(a3);
  if (Count >= 1)
  {
    v13 = Count;
    for (i = 0; i != v13; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a3, i);
      v16 = sub_100163278(kCFAllocatorDefault, v10, ValueAtIndex, *(a1 + 56), 0, *(a1 + 48));
      if (v16)
      {
        v17 = v16;
        (*(*(a1 + 32) + 16))();
        CFRelease(v17);
      }

      else
      {
        *(*(*(a1 + 40) + 8) + 24) = 0;
      }
    }
  }
}

void sub_100171770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001717CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001717E4(uint64_t a1, int a2, int a3, int a4, uint64_t a5, void *a6)
{
  v12 = a6;
  v13 = sub_100006274("octagon");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109632;
    v14[1] = a2;
    v15 = 1024;
    v16 = a3;
    v17 = 1024;
    v18 = a4;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "fetch ramp records returned with featureAllowed: %d,\n featurePromoted: %d,\n featureVisible: %d,\n", v14, 0x14u);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  *(*(*(a1 + 48) + 8) + 24) = a5;
  if (v12)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a6);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100171B54(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100006274("octagon");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = v5;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Fetch operation records %@ fetchError %@", buf, 0x16u);
  }

  v8 = [v5 objectForKeyedSubscript:*(a1 + 32)];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectForKeyedSubscript:@"FeatureAllowed"];
    v11 = [v10 BOOLValue];

    v12 = [v9 objectForKeyedSubscript:@"FeaturePromoted"];
    v13 = [v12 BOOLValue];

    v14 = [v9 objectForKeyedSubscript:@"FeatureVisible"];
    v15 = [v14 BOOLValue];

    v16 = [v9 objectForKeyedSubscript:@"RetryAfter"];
    v17 = [v16 integerValue];

    v18 = sub_100006274("octagon");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = &__kCFBooleanFalse;
      if (v11)
      {
        v20 = &__kCFBooleanTrue;
      }

      else
      {
        v20 = &__kCFBooleanFalse;
      }

      if (v13)
      {
        v21 = &__kCFBooleanTrue;
      }

      else
      {
        v21 = &__kCFBooleanFalse;
      }

      *buf = 138413058;
      if (v15)
      {
        v19 = &__kCFBooleanTrue;
      }

      v27 = v20;
      v28 = 2112;
      v29 = v21;
      v30 = 2112;
      v31 = v19;
      v32 = 2048;
      v33 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Fetch ramp state - featureAllowed %@, featurePromoted: %@, featureVisible: %@, retryAfter: %ld", buf, 0x2Au);
    }
  }

  else
  {
    v22 = sub_100006274("SecError");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "octagon: Couldn't find CKRecord for ramp. Defaulting to not ramped in", buf, 2u);
    }

    v24 = NSLocalizedDescriptionKey;
    v25 = @" Couldn't find CKRecord for ramp. Defaulting to not ramped in";
    v18 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v23 = [NSError errorWithDomain:@"com.apple.security.octagon" code:26 userInfo:v18];

    v6 = v23;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100172298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001722BC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (!v3)
  {
    v11 = [WeakRetained deps];
    v12 = [v11 stateHolder];
    v21 = 0;
    v13 = [v12 persistNewTrustState:1 error:&v21];
    v9 = v21;

    if (!v13 || v9)
    {
      v19 = sub_100006274("SecError");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v9;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "octagon: unable to persist clique departure: %@", buf, 0xCu);
      }

      [v5 setError:v9];
      goto LABEL_17;
    }

    v14 = sub_100006274("octagon");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Successfully departed clique", buf, 2u);
    }

    v15 = [v5 intendedState];
    [v5 setNextState:v15];
    goto LABEL_13;
  }

  [WeakRetained setError:v3];
  v6 = [v5 deps];
  v7 = [v6 lockStateTracker];
  v8 = [v7 isLockedError:v3];

  v9 = sub_100006274("octagon");
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (!v8)
  {
    if (!v10)
    {
LABEL_17:

      goto LABEL_18;
    }

    v15 = [v5 deps];
    v16 = [v15 containerName];
    v17 = [v5 deps];
    v18 = [v17 contextID];
    *buf = 138412802;
    v23 = v16;
    v24 = 2112;
    v25 = v18;
    v26 = 2112;
    v27 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Unable to depart for (%@,%@): %@", buf, 0x20u);

LABEL_13:
    goto LABEL_17;
  }

  if (v10)
  {
    *buf = 138412290;
    v23 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Departing failed due to lock state: %@", buf, 0xCu);
  }

  [v5 setNextState:@"WaitForUnlock"];
LABEL_18:
  v20 = [v5 finishedOp];
  [v5 runBeforeGroupFinished:v20];
}

void sub_100172698(uint64_t a1, uint64_t a2, const __CFBoolean *a3)
{
  v6 = [_SWCServiceSpecifier alloc];
  v7 = [v6 initWithServiceType:_SWCServiceTypeWebCredentials applicationIdentifier:a1 domain:a2];
  v17 = 0;
  v8 = [_SWCServiceDetails serviceDetailsWithServiceSpecifier:v7 error:&v17];
  v9 = v17;
  if (!v8)
  {
    v11 = sub_100006274("SecError");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "+[_SWCServiceDetails serviceDetailsWithServiceSpecifier:error:] failed with %@", buf, 0xCu);
    }

    goto LABEL_12;
  }

  v10 = [v8 firstObject];
  v11 = v10;
  if (!v10)
  {
LABEL_12:
    v14 = v9;
    goto LABEL_13;
  }

  if (kCFBooleanTrue == a3)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2 * (kCFBooleanFalse == a3);
  }

  v16 = v9;
  v13 = [v10 setUserApprovalState:v12 error:&v16];
  v14 = v16;

  if ((v13 & 1) == 0)
  {
    v15 = sub_100006274("SecError");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[_SWCServiceDetails setUserApprovalState:error:] failed with %@", buf, 0xCu);
    }
  }

LABEL_13:
}

uint64_t sub_100172888(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  v4 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2000000000;
  v54 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2000000000;
  v50 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2000000000;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2000000000;
  v42 = 0;
  v37 = 0x2000000000;
  v38 = 0;
  if (a1 && a2)
  {
    v9 = sub_100162EFC(a2, dword_10039E2F8, &v42);
    v10 = sub_100006274("ds");
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138477827;
        v56 = a2;
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "setting UUID persistent ref on peersitem: %{private}@", buf, 0xCu);
      }

      v12 = CFUUIDCreate(kCFAllocatorDefault);
      bytes = CFUUIDGetUUIDBytes(v12);
      v13 = CFDataCreate(kCFAllocatorDefault, &bytes.byte0, 16);
      if (v12)
      {
        CFRelease(v12);
      }

      cf = 0;
      sub_10001A804(a2, v13, &cf);
      if (cf)
      {
        v14 = sub_100006274("ds");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138478083;
          v56 = a2;
          v57 = 2112;
          v58 = cf;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "failed to set persistent ref on item %{private}@, error: %@", buf, 0x16u);
        }

        v15 = cf;
        if (cf)
        {
          cf = 0;
          CFRelease(v15);
        }
      }

      if (v13)
      {
        CFRelease(v13);
      }

      v32[0] = _NSConcreteStackBlock;
      v32[1] = 0x40000000;
      v32[2] = sub_100172DC0;
      v32[3] = &unk_100339148;
      v32[4] = &v35;
      v32[5] = &v47;
      v32[6] = &v39;
      v32[7] = &v51;
      v32[9] = a2;
      v32[10] = a3;
      v32[8] = &v43;
      if (sub_10001AA4C(a2, a1, v40 + 3, v32) && (v36[3] & 1) == 0)
      {
        v16 = sub_100006274("ds");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138477827;
          v56 = a2;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Insert succeeded for: %{private}@", buf, 0xCu);
        }

        v52[3] = 2;
        if (v40[3])
        {
          v17 = sub_100006274("ds");
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = v40[3];
            *buf = 138412290;
            v56 = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "kSOSMergeFailure => kSOSMergePeersObject, %@", buf, 0xCu);
          }

          v19 = v40[3];
          if (v19)
          {
            CFRelease(v19);
          }
        }
      }

      v20 = v40[3];
      if (v20 && (sub_10016379C(v20) & 1) == 0)
      {
        v21 = sub_100006274("ds");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = v52[3];
          v23 = v40[3];
          *buf = 134218242;
          v56 = v22;
          v57 = 2112;
          v58 = v23;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "dsMergeObject failed: mr=%ld, %@", buf, 0x16u);
        }

        if (!v52[3])
        {
          v24 = v40;
          v25 = v40[3];
          if (v25)
          {
            if (a4 && !*a4)
            {
              *a4 = v25;
            }

            else
            {
              CFRelease(v25);
              v24 = v40;
            }
          }

          v24[3] = 0;
        }
      }

      v28 = v48[3];
      if (v28)
      {
        CFRelease(v28);
      }

      v29 = v44[3];
      if (v29)
      {
        CFRelease(v29);
      }

      v30 = v40[3];
      if (v30)
      {
        CFRelease(v30);
      }

      v4 = v52[3];
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v40[3];
        *buf = 138412290;
        v56 = v26;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "kSOSMergeFailure => SecDbItemSetKeybag: %@", buf, 0xCu);
      }

      v27 = v40[3];
      if (v27)
      {
        if (a4 && !*a4)
        {
          v4 = 0;
          *a4 = v27;
          goto LABEL_50;
        }

        CFRelease(v27);
      }

      v4 = 0;
    }
  }

LABEL_50:
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v51, 8);
  return v4;
}

void sub_100172DC0(uint64_t a1, __CFString ***a2, void *a3)
{
  *(*(*(a1 + 32) + 8) + 24) = 1;
  v6 = *(a1 + 72);
  v7 = *(*(a1 + 48) + 8);
  *cf = 0;
  v8 = sub_100007370(v6[2], kSecAttrModificationDate, (v7 + 24));
  v9 = sub_100015BFC(v6, v8, cf);
  v10 = sub_100015BFC(a2, v8, cf);
  v11 = v10;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v15 = CFDateCompare(v9, v10, 0);
    v14 = a2;
    if (v15 == kCFCompareLessThan)
    {
      goto LABEL_18;
    }

    if (v15)
    {
      if (v15 == kCFCompareGreaterThan)
      {
        v14 = v6;
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v33 = sub_100016514(v6[2], 7, cf);
    v9 = sub_100015BFC(v6, v33, cf);
    v34 = sub_100016514(a2[2], 7, cf);
    v35 = sub_100015BFC(a2, v34, cf);
    v11 = v35;
    if (v9 && v35 != 0)
    {
      Length = CFDataGetLength(v9);
      v38 = CFDataGetLength(v11);
      v39 = v38;
      if ((Length & 0x8000000000000000) != 0 || v38 < 0)
      {
        v14 = a2;
        if (Length > v38)
        {
          goto LABEL_18;
        }

        v14 = v6;
        if (Length < v38)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (Length >= v38)
        {
          v40 = v38;
        }

        else
        {
          v40 = Length;
        }

        BytePtr = CFDataGetBytePtr(v9);
        v42 = CFDataGetBytePtr(v11);
        v43 = memcmp(BytePtr, v42, v40);
        v14 = a2;
        if (v43 > 0)
        {
          goto LABEL_18;
        }

        v44 = !v43 && Length > v39;
        v14 = a2;
        if (v44)
        {
          goto LABEL_18;
        }

        v45 = Length >= v39 && v43 == 0;
        v14 = v6;
        if (!v45)
        {
          goto LABEL_18;
        }
      }

      v14 = a2;
      goto LABEL_18;
    }
  }

  if (SecErrorGetOSStatus() != -26275)
  {
LABEL_17:
    v14 = 0;
    goto LABEL_18;
  }

  if (v9)
  {
    v13 = v6;
  }

  else
  {
    v13 = 0;
  }

  if (v11)
  {
    v14 = a2;
  }

  else
  {
    v14 = v13;
  }

LABEL_18:
  if (!*cf)
  {
LABEL_22:
    if (v14 && a2 && v14 != a2)
    {
      v16 = v14[2];
      v17 = v16[2];
      if (!v17)
      {
        goto LABEL_40;
      }

      v18 = (v16 + 3);
      do
      {
        if (*v17)
        {
          if (CFEqual(*v17, @"UUID"))
          {
            sub_100162F88(v14, a2, v17);
          }

          if (*v17 && CFEqual(*v17, @"persistref"))
          {
            sub_100162F88(v14, a2, v17);
          }
        }

        v19 = *v18++;
        v17 = v19;
      }

      while (v19);
      v20 = v14[2];
      v21 = v20[2];
      if (!v21)
      {
LABEL_40:
        CFRetain(v14);
        goto LABEL_41;
      }

      v22 = v20 + 3;
      do
      {
        if ((BYTE2(v21->data) & 2) != 0)
        {
          sub_100162F88(v14, a2, v21);
        }

        v23 = *v22++;
        v21 = v23;
      }

      while (v23);
    }

    if (!v14)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (v14 || *(v7 + 24))
  {
    CFRelease(*cf);
    goto LABEL_22;
  }

  *(v7 + 24) = *cf;
LABEL_41:
  *(*(*(a1 + 40) + 8) + 24) = v14;
  v24 = *(*(*(a1 + 40) + 8) + 24);
  if (v24)
  {
    if (*(a1 + 80))
    {
      **(a1 + 80) = CFRetain(v24);
      v24 = *(*(*(a1 + 40) + 8) + 24);
    }

    if (CFEqual(v24, a2))
    {
      if ((sub_10001C8C4(a2) & 1) == 0)
      {
        v25 = sub_100006274("ds");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *cf = 138477827;
          *&cf[4] = a2;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Conflict resolver chose my (local) item: %{private}@", cf, 0xCu);
        }
      }

      v26 = 1;
    }

    else
    {
      v27 = *(*(a1 + 64) + 8);
      v28 = *(v27 + 24);
      if (v28 != a2)
      {
        if (!a2 || (CFRetain(a2), (v28 = *(v27 + 24)) != 0))
        {
          CFRelease(v28);
        }

        *(v27 + 24) = a2;
      }

      v29 = *(*(a1 + 40) + 8);
      v30 = *(v29 + 24);
      if (v30)
      {
        CFRetain(*(v29 + 24));
      }

      *a3 = v30;
      if (CFEqual(*(*(*(a1 + 40) + 8) + 24), *(a1 + 72)))
      {
        if ((sub_10001C8C4(*(a1 + 72)) & 1) == 0)
        {
          v31 = sub_100006274("ds");
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = *(a1 + 72);
            *cf = 138477827;
            *&cf[4] = v32;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Conflict resolver chose peers item: %{private}@", cf, 0xCu);
          }
        }

        v26 = 2;
      }

      else
      {
        if ((sub_10001C8C4(*(*(*(a1 + 40) + 8) + 24)) & 1) == 0)
        {
          v46 = sub_100006274("ds");
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            v47 = *(*(*(a1 + 40) + 8) + 24);
            *cf = 138477827;
            *&cf[4] = v47;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Conflict resolver created a new item; return it to our caller: %{private}@", cf, 0xCu);
          }
        }

        v26 = 3;
      }
    }
  }

  else
  {
    v26 = 0;
  }

  *(*(*(a1 + 56) + 8) + 24) = v26;
}

CFDictionaryRef sub_1001732C8(uint64_t a1, uint64_t a2, __CFString **a3)
{
  v6 = sub_100016514(*(a1 + 16), 7, a3);
  values[0] = sub_100015BFC(a1, v6, a3);
  if (!values[0])
  {
    return 0;
  }

  v20 = 0;
  v7 = sub_10001B350(a1, 128, 0, a3);
  v8 = sub_10001B350(a1, 0x2000, 0, a3);
  v9 = v8;
  if (v7 && v8)
  {
    v10 = sub_100015814(a1, a3);
    if (v10)
    {
      v11 = v10;
      if (sub_100168BB8(a2, v10, *(a1 + 56), v7, v9, &v20, 0, 0, a3))
      {
        *(a1 + 40) = 4;
      }

      else
      {
        v15 = sub_100006274("SecCritical");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          if (a3)
          {
            v16 = *a3;
          }

          else
          {
            v16 = &stru_100348050;
          }

          *buf = 138412290;
          v24 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "ks_encrypt_data (db): failed: %@", buf, 0xCu);
        }
      }

      CFRelease(v11);
    }

    goto LABEL_22;
  }

  if (!(v7 | v8))
  {
    goto LABEL_12;
  }

  v12 = sub_100006274("SecEmergency");
  if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    if (v7)
    {
      goto LABEL_22;
    }

LABEL_10:
    if (!v9)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v17 = @"missing";
  if (v7)
  {
    v18 = @"present";
  }

  else
  {
    v18 = @"missing";
  }

  if (v9)
  {
    v17 = @"present";
  }

  if (a3)
  {
    v19 = *a3;
  }

  else
  {
    v19 = @"no error pointer";
  }

  *buf = 138412802;
  v24 = v18;
  v25 = 2112;
  v26 = v17;
  v27 = 2112;
  v28 = v19;
  _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "SecDbItemCopyEncryptedDataToBackup: not all plists are present: attributes: %@, auth_attributes: %@ : %@", buf, 0x20u);
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_22:
  CFRelease(v7);
  if (v9)
  {
LABEL_11:
    CFRelease(v9);
  }

LABEL_12:
  cf = v20;
  if (!v20)
  {
    return 0;
  }

  values[1] = **(a1 + 16);
  v13 = CFDictionaryCreate(kCFAllocatorDefault, &off_10039CA40, values, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFRelease(cf);
  return v13;
}

__CFDictionary *sub_100173574(uint64_t a1, __CFString **a2)
{
  v4 = sub_10001B350(a1, 32, 0x20000, a2);
  v5 = sub_10001B350(a1, 128, 0x20000, a2);
  v6 = sub_10001B350(a1, 0x2000, 0x20000, a2);
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      context[0] = _NSConcreteStackBlock;
      context[1] = 0x40000000;
      context[2] = sub_1001736FC;
      context[3] = &unk_100339668;
      context[4] = v5;
      CFDictionaryApplyFunction(v6, sub_10017370C, context);
    }

    if (v4)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 0x40000000;
      v9[2] = sub_100173704;
      v9[3] = &unk_100339688;
      v9[4] = v5;
      CFDictionaryApplyFunction(v4, sub_10017370C, v9);
    }

    CFDictionaryAddValue(v5, kSecClass, **(a1 + 16));
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v5;
}

const void *sub_100173728(const __CFDictionary *a1, __CFString **a2)
{
  Value = CFDictionaryGetValue(a1, kSecClass);
  if (!Value)
  {
    sub_1000103CC(-50, a2, @"query missing %@ attribute", kSecClass);
    return 0;
  }

  v5 = Value;
  v6 = sub_1000074BC(Value);
  if (!v6)
  {
    sub_1000103CC(-25306, a2, @"can find class named: %@", v5);
    return 0;
  }

  v7 = dword_10039E2F8;

  return sub_10001A690(v6, a1, v7, a2);
}

const void *sub_1001737E4(void **a1)
{
  v2 = sub_100016514(a1[2], 6, 0);
  if (!v2)
  {
    return 0;
  }

  v3 = sub_100015BFC(a1, v2, 0);
  v4 = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  return v4;
}

const void *sub_100173844(void **a1, __CFString **a2)
{
  v4 = sub_100016514(a1[2], 7, a2);
  v5 = sub_100015BFC(a1, v4, a2);
  v6 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  return v6;
}

BOOL sub_10017389C(uint64_t a1, int a2, CFDictionaryRef theDict, __CFString **a4)
{
  Value = CFDictionaryGetValue(theDict, @"class");
  v9 = CFDictionaryGetValue(theDict, @"data");
  if (Value)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {

    return sub_1000103CC(-26275, a4, @"no class or data in object");
  }

  else
  {
    v12 = v9;
    v13 = sub_1000074BC(Value);
    if (v13)
    {
      v14 = sub_100163278(kCFAllocatorDefault, v13, v12, a2, 0, a4);
      if (!v14)
      {
        return 0;
      }

      v15 = v14;
      v16 = sub_100172888(a1, v14, 0, a4) != 0;
      CFRelease(v15);
      return v16;
    }

    else
    {
      return sub_1000103CC(-26275, a4, @"no such class %@; update kc_class_with_name ", Value);
    }
  }
}

uint64_t sub_1001739D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFTypeRef *a5)
{
  v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"SOSDataSource-%@", *(a1 + 160));
  v15 = sub_10014B368(kCFAllocatorDefault, v8, v9, v10, v11, v12, v13, v14, kSecAttrAccessGroup, kSOSInternalAccessGroup);
  if (v7)
  {
    CFRelease(v7);
  }

  v16 = sub_100007604(@"genp", &qword_10039E090, &unk_10039E088);
  v17 = sub_10001A690(v16, v15, dword_10039E2F8, a5);
  v18 = sub_10001728C(v17, a4, a5, &stru_100338978);
  if (v15)
  {
    CFRelease(v15);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v18;
}

BOOL sub_100173B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __CFString **a6)
{
  v10 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"SOSDataSource-%@", *(a1 + 160));
  v18 = sub_10014B368(kCFAllocatorDefault, v11, v12, v13, v14, v15, v16, v17, kSecAttrAccessGroup, kSOSInternalAccessGroup);
  if (v10)
  {
    CFRelease(v10);
  }

  v19 = sub_100007604(@"genp", &qword_10039E090, &unk_10039E088);
  v20 = sub_10001A690(v19, v18, dword_10039E2F8, a6);
  v21 = sub_100172888(a2, v20, 0, a6);
  if (!v21)
  {
    v22 = sub_100006274("SecError");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      if (a6)
      {
        v23 = *a6;
      }

      else
      {
        v23 = 0;
      }

      *buf = 138412802;
      v26 = a3;
      v27 = 2112;
      v28 = a4;
      v29 = 2112;
      v30 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "failed to save %@@%@ state: %@", buf, 0x20u);
    }
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v21 != 0;
}

uint64_t sub_100173D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 152);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_100173DD4;
  v6[3] = &unk_100339648;
  v6[4] = a4;
  return sub_100008A70(0, 1, v4, a2, v6);
}

uint64_t sub_100173DD4(uint64_t a1, uint64_t a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_100173E90;
  v4[3] = &unk_100339620;
  v4[4] = *(a1 + 32);
  v4[5] = a2;
  v2 = *(*(a2 + 16) + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100087A40;
  block[3] = &unk_100335A38;
  block[4] = v4;
  dispatch_sync(v2, block);
  return 1;
}

uint64_t sub_100173EA4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v5 = *(a1 + 152);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_100173F30;
  v7[3] = &unk_1003395F8;
  v7[5] = a3;
  v7[6] = a2;
  v8 = a4;
  v7[4] = a5;
  return sub_100008A70(1, 1, v5, a2, v7);
}

uint64_t sub_100173F30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  if (*(a1 + 40) == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_100173FC4;
  v6[3] = &unk_1003395D0;
  v7 = *(a1 + 56);
  v6[4] = *(a1 + 32);
  v6[5] = a2;
  return sub_100015080(a2, v4, v3, v6);
}

void sub_100173FC4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == 1)
  {
    v11[5] = v2;
    v11[6] = v3;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 0x40000000;
    v10[2] = sub_1001740B0;
    v10[3] = &unk_1003395A8;
    v5 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v10[5] = v5;
    v10[6] = a2;
    v6 = *(*(v5 + 16) + 32);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 0x40000000;
    v11[2] = sub_100087A40;
    v11[3] = &unk_100335A38;
    v11[4] = v10;
    dispatch_sync(v6, v11);
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = *(*(a1 + 32) + 16);
    v9 = *(a1 + 32);

    v8(v9, v7, a2);
  }
}

uint64_t sub_1001740C8(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4, uint64_t a5)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 1;
  v10 = sub_100007604(@"genp", &qword_10039E090, &unk_10039E088);
  v11 = sub_100016514(v10, 7, a4);
  if (v11)
  {
    memset(v25, 0, sizeof(v25));
    memset(v24, 0, sizeof(v24));
    memset(v23, 0, sizeof(v23));
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x2000000000;
    v18[3] = v25;
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x2000000000;
    v17[3] = v24;
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2000000000;
    v16[3] = v23;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 0x40000000;
    v15[2] = sub_1001742C8;
    v15[3] = &unk_100339580;
    v15[8] = v18;
    v15[9] = v17;
    v15[4] = &stru_1003394C8;
    v15[5] = &stru_100339508;
    v15[10] = v16;
    v15[11] = a4;
    v15[12] = a3;
    v15[13] = v11;
    v15[6] = a5;
    v15[7] = &v19;
    if (a2)
    {
      sub_1001742C8(v15, a2);
      v12 = *(v20 + 24);
    }

    else
    {
      v13 = sub_100008A70(0, 1, *(a1 + 152), a4, v15);
      v12 = v13 & v20[3];
      *(v20 + 24) = v12;
    }

    _Block_object_dispose(v16, 8);
    _Block_object_dispose(v17, 8);
    _Block_object_dispose(v18, 8);
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v19, 8);
  return v12 & 1;
}

uint64_t sub_1001742C8(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 32; i += 8)
  {
    if (*(*(*(a1 + 56) + 8) + 24) != 1)
    {
      goto LABEL_8;
    }

    if (qword_10039E030 != -1)
    {
      dispatch_once(&qword_10039E030, &stru_1003392A8);
    }

    v5 = sub_100007698(qword_10039E038[i / 8], 0, 0, 0, *(a1 + 88));
    *(*(*(*(a1 + 64) + 8) + 24) + i) = v5;
    if (v5 && (v6 = sub_1000143F0(*(*(*(*(a1 + 64) + 8) + 24) + i), *(a1 + 32), *(a1 + 40), 0), (*(*(*(*(a1 + 72) + 8) + 24) + i) = v6) != 0))
    {
      v7 = sub_10000A434(a2, *(*(*(*(a1 + 72) + 8) + 24) + i), 0, *(a1 + 88));
      *(*(*(*(a1 + 80) + 8) + 24) + i) = v7;
      v8 = v7 != 0;
    }

    else
    {
LABEL_8:
      v8 = 0;
    }

    *(*(*(a1 + 56) + 8) + 24) = v8;
  }

  v9 = *(a1 + 56);
  if (*(*(v9 + 8) + 24))
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 0x40000000;
    v20[2] = sub_100174530;
    v20[3] = &unk_100339558;
    v10 = *(a1 + 96);
    v11 = *(a1 + 104);
    v12 = *(a1 + 80);
    v13 = *(a1 + 88);
    v24 = *(a1 + 64);
    v25 = v12;
    v26 = v11;
    v27 = v13;
    v28 = a2;
    v21 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
    v22 = *(a1 + 48);
    v23 = v9;
    sub_10022A5D4(v10, v20);
  }

  for (j = 0; j != 32; j += 8)
  {
    v15 = *(*(*(*(a1 + 80) + 8) + 24) + j);
    if (v15)
    {
      v16 = sub_10000DB94(v15, *(a1 + 88));
    }

    else
    {
      v16 = 1;
    }

    *(*(*(a1 + 56) + 8) + 24) &= v16;
    v17 = *(*(*(*(a1 + 72) + 8) + 24) + j);
    if (v17)
    {
      CFRelease(v17);
    }

    v18 = *(*(*(*(a1 + 64) + 8) + 24) + j);
    if (v18)
    {
      *(*(*(a1 + 56) + 8) + 24) &= sub_10000DF70(v18, *(a1 + 88));
    }
  }

  return 1;
}

void sub_100174530(uint64_t a1, void *value)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v4 = 0;
    while (!v17[3] && v4 < 4)
    {
      CFDictionarySetValue(*(*(*(*(*(a1 + 64) + 8) + 24) + 8 * v4) + 8), **(a1 + 80), value);
      *(*(*(a1 + 56) + 8) + 24) = sub_100014918(*(*(*(*(a1 + 64) + 8) + 24) + 8 * v4), *(*(*(*(a1 + 72) + 8) + 24) + 8 * v4), *(a1 + 88), *(a1 + 32), 0);
      if (*(*(*(a1 + 56) + 8) + 24) == 1)
      {
        v6 = *(a1 + 72);
        v7 = *(*(*(v6 + 8) + 24) + 8 * v4);
        v9 = *(a1 + 88);
        v8 = *(a1 + 96);
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 0x40000000;
        v15[2] = sub_100174774;
        v15[3] = &unk_100339530;
        v15[6] = *(a1 + 64);
        v15[7] = v6;
        v15[8] = v4;
        v15[9] = v9;
        v15[4] = *(a1 + 40);
        v15[5] = &v16;
        *(*(*(a1 + 56) + 8) + 24) &= sub_100015DAC(v8, v7, v9, v15);
        if (*(*(*(a1 + 56) + 8) + 24))
        {
          v10 = *(*(*(*(a1 + 72) + 8) + 24) + 8 * v4);
          v11 = *(a1 + 88);
          v12 = sqlite3_reset(v10);
          *(*(*(a1 + 56) + 8) + 24) &= sub_10000CAD8(v12, v10, v11, @"reset");
          ++v4;
          if (*(*(*(a1 + 56) + 8) + 24))
          {
            continue;
          }
        }
      }

      v13 = v17[3];
      break;
    }
  }

  (*(*(a1 + 48) + 16))();
  v14 = v17[3];
  if (v14)
  {
    CFRelease(v14);
  }

  _Block_object_dispose(&v16, 8);
}

uint64_t sub_100174774(uint64_t *a1)
{
  result = sub_100015FB4(kCFAllocatorDefault, **(*(*(a1[6] + 8) + 24) + 8 * a1[8]), *(*(*(a1[7] + 8) + 24) + 8 * a1[8]), dword_10039E2F8, a1[4]);
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

void sub_1001747E0(id a1)
{
  qword_10039E038[0] = sub_100007604(@"genp", &qword_10039E090, &unk_10039E088);
  qword_10039E040 = sub_100007604(@"inet", &qword_10039E0A0, &unk_10039E098);
  qword_10039E048 = sub_100007604(@"keys", &qword_10039E0C0, &unk_10039E0B8);
  qword_10039E050 = sub_100007604(@"cert", &qword_10039E0B0, &unk_10039E0A8);
}

uint64_t sub_1001748A8(uint64_t a1, CFDictionaryRef theDict, __CFString **a3)
{
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v7 = sub_100007604(@"genp", &qword_10039E090, &unk_10039E088);
  v8 = sub_100007698(v7, 0, MutableCopy, 0, a3);
  if (v8)
  {
    v9 = v8;
    v10 = v8[1];
    if (v10)
    {
      CFRelease(v10);
    }

    v9[1] = MutableCopy;
    v11 = *(a1 + 152);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 0x40000000;
    v16[2] = sub_100174AA8;
    v16[3] = &unk_100339488;
    v16[6] = a3;
    v16[7] = MutableCopy;
    v16[8] = theDict;
    v16[4] = &v17;
    v16[5] = v9;
    sub_100008A70(0, 1, v11, a3, v16);
    sub_10000DF70(v9, a3);
  }

  else if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (!v18[3])
  {
    v12 = sub_100006274("ds");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (a3)
      {
        v13 = *a3;
      }

      else
      {
        v13 = 0;
      }

      *buf = 138412546;
      v22 = theDict;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "failed to load item %@: %@", buf, 0x16u);
    }
  }

  v14 = v18[3];
  _Block_object_dispose(&v17, 8);
  return v14;
}

uint64_t sub_100174AA8(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v2 = a1[6];
  v7.isa = _NSConcreteStackBlock;
  *&v7.flags = 0x40000000;
  v7.invoke = sub_100174B7C;
  v7.descriptor = &unk_100339438;
  v8 = a1[7];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_100174BA4;
  v6[3] = &unk_100339460;
  v4 = a1[8];
  v6[4] = a1[4];
  v6[5] = v4;
  v6[6] = v2;
  return sub_100014718(v3, a2, v2, 0, &v7, 0, 0, v6);
}

const void *sub_100174BA4(void *a1, const void *a2)
{
  v4 = sub_100006274("ds");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[5];
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "found item for keys %@", &v8, 0xCu);
  }

  result = sub_100015BFC(a2, &off_100339EF0, a1[6]);
  v7 = result;
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(a1[4] + 8) + 24) = v7;
  return result;
}

uint64_t sub_100174C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __CFString **a5)
{
  v10 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"SOSDataSource-%@", *(a1 + 160));
  v18 = sub_10014B368(kCFAllocatorDefault, v11, v12, v13, v14, v15, v16, v17, kSecAttrAccessGroup, kSOSInternalAccessGroup);
  if (v10)
  {
    CFRelease(v10);
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x2000000000;
  v31 = 0;
  v19 = sub_100007604(@"genp", &qword_10039E090, &unk_10039E088);
  v20 = sub_100007698(v19, 0, v18, 0, a5);
  if (v20)
  {
    v21 = v20;
    v22 = v20[1];
    if (v22)
    {
      CFRelease(v22);
    }

    v21[1] = v18;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 0x40000000;
    v27[2] = sub_100174F48;
    v27[3] = &unk_100339418;
    v27[6] = a5;
    v27[7] = v18;
    v27[8] = a2;
    v27[9] = a3;
    v27[4] = &v28;
    v27[5] = v21;
    if (a4)
    {
      sub_100174F48(v27, a4);
    }

    else
    {
      sub_100008A70(0, 1, *(a1 + 152), a5, v27);
    }

    sub_10000DF70(v21, a5);
  }

  else if (v18)
  {
    CFRelease(v18);
  }

  if (!v29[3])
  {
    v23 = sub_100006274("ds");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      if (a5)
      {
        v24 = *a5;
      }

      else
      {
        v24 = 0;
      }

      *buf = 138412802;
      v33 = a2;
      v34 = 2112;
      v35 = a3;
      v36 = 2112;
      v37 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "failed to load %@@%@ state: %@", buf, 0x20u);
    }
  }

  v25 = v29[3];
  _Block_object_dispose(&v28, 8);
  return v25;
}

uint64_t sub_100174F48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v8.isa = _NSConcreteStackBlock;
  *&v8.flags = 0x40000000;
  v8.invoke = sub_100175020;
  v8.descriptor = &unk_1003393C8;
  v9 = *(a1 + 56);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_100175048;
  v5[3] = &unk_1003393F0;
  v6 = *(a1 + 64);
  v5[4] = *(a1 + 32);
  v7 = v2;
  return sub_100014718(v3, a2, v2, 0, &v8, 0, 0, v5);
}

const void *sub_100175048(void *a1, const void *a2)
{
  v4 = sub_100006274("ds");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[5];
    v6 = a1[6];
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "found item for key %@@%@", &v9, 0x16u);
  }

  result = sub_100015BFC(a2, &off_100339EF0, a1[7]);
  v8 = result;
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(a1[4] + 8) + 24) = v8;
  return result;
}

CFTypeRef sub_100175138(uint64_t a1, const __CFSet *a2, CFTypeRef *a3)
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, 0);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 1;
  context[0] = _NSConcreteStackBlock;
  context[1] = 0x40000000;
  context[2] = sub_100175440;
  context[3] = &unk_100339228;
  context[4] = &v18;
  context[5] = a1;
  context[6] = Mutable;
  context[7] = a3;
  CFSetApplyFunction(a2, sub_100175EA0, context);
  v7 = 0;
  if (*(v19 + 24) == 1)
  {
    cf = 0;
    p_cf = &cf;
    v28 = 0x2000000000;
    v29 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2000000000;
    v25 = 0;
    v8 = *(a1 + 152);
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 0x40000000;
    v31 = sub_100175984;
    v32 = &unk_100339318;
    v34 = &cf;
    v35 = Mutable;
    v33 = &v22;
    if ((sub_100008A70(0, 1, v8, a3, &buf) & 1) == 0)
    {
      v9 = p_cf[3];
      if (v9)
      {
        CFRelease(v9);
      }
    }

    v10 = v23[3];
    if (v10)
    {
      if (a3 && !*a3)
      {
        *a3 = v10;
      }

      else
      {
        CFRelease(v10);
      }
    }

    v7 = p_cf[3];
    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&cf, 8);
  }

  Count = CFArrayGetCount(Mutable);
  if (Count >= 1)
  {
    v12 = Count;
    v13 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v13);
      cf = 0;
      if (sub_10000DF70(ValueAtIndex, &cf))
      {
        goto LABEL_21;
      }

      v15 = sub_100006274("SecError");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = cf;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "query_destroy failed: %@", &buf, 0xCu);
      }

      if (!cf)
      {
        goto LABEL_20;
      }

      if (!a3 || *a3)
      {
        break;
      }

      *a3 = cf;
      if (v7)
      {
LABEL_24:
        CFRelease(v7);
        v7 = 0;
      }

LABEL_21:
      if (v12 == ++v13)
      {
        goto LABEL_25;
      }
    }

    CFRelease(cf);
LABEL_20:
    if (v7)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

LABEL_25:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  _Block_object_dispose(&v18, 8);
  return v7;
}

void sub_100175440(uint64_t a1, CFStringRef theString)
{
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  HasSuffix = CFStringHasSuffix(theString, @"-tomb");
  if (HasSuffix)
  {
    v26.length = CFStringGetLength(theString) - 5;
    v26.location = 0;
    v6 = CFStringCreateWithSubstring(kCFAllocatorDefault, theString, v26);
  }

  else
  {
    v6 = CFRetain(theString);
  }

  v7 = v6;
  if ((SOSViewInSOSSystem() & 1) == 0)
  {
    goto LABEL_23;
  }

  if (CFEqual(v7, kSOSViewKeychainV0))
  {
    for (i = 0; i != 3; ++i)
    {
      if (qword_10039E010 != -1)
      {
        dispatch_once(&qword_10039E010, &stru_100339268);
      }

      sub_100175EB8(v4, qword_10039E018[i], HasSuffix != 0, 0, 0, v3);
    }

    goto LABEL_23;
  }

  if (CFEqual(v7, kSOSViewWiFi))
  {
    v9 = sub_100007604(@"genp", &qword_10039E090, &unk_10039E088);
    v10 = sub_1001760B0(v4, v9, HasSuffix != 0, @"apple", v3);
    if (v10)
    {
      sub_1000079A0(kSecAttrService, @"AirPort", v10);
    }

    goto LABEL_23;
  }

  if (CFEqual(v7, kSOSViewAutofillPasswords))
  {
    v11 = HasSuffix != 0;
    v12 = sub_100007604(@"inet", &qword_10039E0A0, &unk_10039E098);
    v13 = @"com.apple.cfnetwork";
LABEL_22:
    sub_1001760B0(v4, v12, v11, v13, v3);
    goto LABEL_23;
  }

  if (CFEqual(v7, kSOSViewSafariCreditCards))
  {
    v11 = HasSuffix != 0;
    v12 = sub_100007604(@"genp", &qword_10039E090, &unk_10039E088);
    v13 = @"com.apple.safari.credit-cards";
    goto LABEL_22;
  }

  if (CFEqual(v7, kSOSViewiCloudIdentity))
  {
    v11 = HasSuffix != 0;
    v12 = sub_100007604(@"keys", &qword_10039E0C0, &unk_10039E0B8);
    v13 = @"com.apple.security.sos";
    goto LABEL_22;
  }

  if (CFEqual(v7, kSOSViewBackupBagV0))
  {
    v11 = HasSuffix != 0;
    v12 = sub_100007604(@"genp", &qword_10039E090, &unk_10039E088);
    v13 = @"com.apple.sbd";
    goto LABEL_22;
  }

  if (CFEqual(v7, kSOSViewOtherSyncable))
  {
    v14 = HasSuffix != 0;
    v15 = sub_100007604(@"cert", &qword_10039E0B0, &unk_10039E0A8);
    sub_100175EB8(v4, v15, v14, 1, 0, v3);
    v16 = sub_100007604(@"genp", &qword_10039E090, &unk_10039E088);
    v17 = sub_1001760B0(v4, v16, v14, @"apple", v3);
    sub_10016D878(kSecAttrService, @"AirPort", v17);
    v18 = sub_100007604(@"genp", &qword_10039E090, &unk_10039E088);
    v19 = sub_100175EB8(v4, v18, v14, 1, 0, v3);
    sub_10016D878(kSecAttrAccessGroup, @"apple", v19);
    sub_10016D878(kSecAttrAccessGroup, @"com.apple.safari.credit-cards", v19);
    sub_10016D878(kSecAttrAccessGroup, @"com.apple.sbd", v19);
    v20 = sub_100007604(@"inet", &qword_10039E0A0, &unk_10039E098);
    v21 = sub_100175EB8(v4, v20, v14, 1, 0, v3);
    sub_10016D878(kSecAttrAccessGroup, @"com.apple.cfnetwork", v21);
    v22 = sub_100007604(@"keys", &qword_10039E0C0, &unk_10039E0B8);
    v23 = sub_100175EB8(v4, v22, v14, 1, 0, v3);
    sub_10016D878(kSecAttrAccessGroup, @"com.apple.security.sos", v23);
  }

  else
  {
    for (j = 0; j != 4; ++j)
    {
      if (qword_10039E030 != -1)
      {
        dispatch_once(&qword_10039E030, &stru_1003392A8);
      }

      sub_100175EB8(v4, qword_10039E038[j], HasSuffix != 0, 1, v7, v3);
    }
  }

LABEL_23:
  if (v7)
  {

    CFRelease(v7);
  }
}

BOOL sub_100175984(uint64_t a1, uint64_t a2)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3800000000;
  v23 = 0u;
  v24 = 0u;
  Count = CFArrayGetCount(*(a1 + 48));
  if (Count < 1)
  {
    v6 = 1;
LABEL_8:
    *(*(*(a1 + 40) + 8) + 24) = sub_10022ABF8((v21 + 3), (*(*(a1 + 32) + 8) + 24));
  }

  else
  {
    v5 = Count;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 48), v7);
      v9 = *(*(a1 + 32) + 8);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 0x40000000;
      v19[2] = sub_100175CA8;
      v19[3] = &unk_1003392C8;
      v19[4] = ValueAtIndex;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 0x40000000;
      v18[2] = sub_100175CD4;
      v18[3] = &unk_1003392F0;
      v18[4] = &v20;
      v25 = 0;
      v26 = &v25;
      v27 = 0x2000000000;
      v28 = 1;
      v10 = sub_1000143F0(ValueAtIndex, &stru_100339358, v19, 0);
      if (!v10)
      {
        break;
      }

      v11 = v10;
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 0x40000000;
      v30 = sub_100175DD0;
      v31 = &unk_1003393A8;
      v36 = ValueAtIndex;
      v37 = v9 + 24;
      v32 = v19;
      v33 = 0;
      v38 = a2;
      v34 = v18;
      v35 = &v25;
      v12 = sub_10001489C(a2, v10, (v9 + 24), &buf);
      *(v26 + 24) &= v12;
      CFRelease(v11);
      v13 = *(v26 + 24);
      _Block_object_dispose(&v25, 8);
      if ((v13 & 1) == 0)
      {
        goto LABEL_10;
      }

      v6 = ++v7 >= v5;
      if (v5 == v7)
      {
        goto LABEL_8;
      }
    }

    *(v26 + 24) = 0;
    _Block_object_dispose(&v25, 8);
LABEL_10:
    v14 = sub_100006274("SecError");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(*(*(a1 + 32) + 8) + 24);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "SecDbItemSelectSHA1 failed: %@", &buf, 0xCu);
    }
  }

  v16 = v21;
  free(v21[3]);
  v16[3] = 0;
  v16[4] = 0;
  *(v16 + 48) = 0;
  v16[5] = 0;
  _Block_object_dispose(&v20, 8);
  return v6;
}

void sub_100175CD4(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_column_blob(a2, 0);
  v5 = sqlite3_column_bytes(a2, 0);
  if (v5 == 20)
  {
    v6 = *(*(a1 + 32) + 8);
    sub_1002297B0((v6 + 24), v4);
    *(v6 + 48) = 1;
  }

  else
  {
    v7 = v5;
    v8 = sub_100006274("SecError");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "digest %zu bytes", &v9, 0xCu);
    }
  }
}

uint64_t sub_100175DD0(uint64_t a1, sqlite3_stmt *a2)
{
  result = sub_100014918(*(a1 + 64), a2, *(a1 + 72), *(a1 + 32), *(a1 + 40));
  if (result)
  {
    v6 = *(a1 + 72);
    v5 = *(a1 + 80);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 0x40000000;
    v7[2] = sub_100175E78;
    v7[3] = &unk_100339380;
    v7[4] = *(a1 + 48);
    v7[5] = a2;
    result = sub_100015DAC(v5, a2, v6, v7);
  }

  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

__CFString **sub_100175EB8(__CFArray *a1, uint64_t a2, int a3, BOOL a4, const __CFString *a5, __CFString **a6)
{
  v11 = sub_100007698(a2, 0, 0, 0, a6);
  v12 = v11;
  if (v11)
  {
    *(v11 + 12) = 3;
    v11[13] = -1;
    *(v11 + 30) = dword_10039E2F8;
    sub_1000079A0(kSecAttrSynchronizable, kCFBooleanTrue, v11);
    sub_10016D73C(kSecAttrAccessible, kSecAttrAccessibleWhenUnlocked, v12);
    sub_10016D73C(kSecAttrAccessible, kSecAttrAccessibleAfterFirstUnlock, v12);
    sub_10016D73C(kSecAttrAccessible, kSecAttrAccessibleAlwaysPrivate, v12);
    sub_10016D73C(kSecAttrAccessible, kSecAttrAccessibleWhenUnlockedThisDeviceOnly, v12);
    sub_10016D73C(kSecAttrAccessible, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly, v12);
    sub_10016D73C(kSecAttrAccessible, kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate, v12);
    if (a3)
    {
      sub_1000079A0(kSecAttrTombstone, kCFBooleanFalse, v12);
    }

    CFArrayAppendValue(a1, v12);
    v13 = *(a2 + 16);
    if (v13)
    {
      v14 = (a2 + 24);
      do
      {
        v15 = v13 != &off_100343C70;
        if (v13 == &off_100339F40)
        {
          v15 = a4;
        }

        if (!v15)
        {
          if (a5 && v13 == &off_100343C70)
          {
            sub_100008D78(&off_100343C70, a5, v12);
          }

          else
          {
            v16 = sub_10001B134(v13, v12 + 5);
            if (v16)
            {
              v17 = v16;
              sub_100008D78(v13, v16, v12);
              CFRelease(v17);
            }
          }
        }

        v18 = *v14++;
        v13 = v18;
      }

      while (v18);
    }
  }

  return v12;
}

__CFString **sub_1001760B0(__CFArray *a1, uint64_t a2, int a3, const __CFBoolean *a4, __CFString **a5)
{
  v6 = sub_100175EB8(a1, a2, a3, 1, 0, a5);
  v7 = v6;
  if (a4 && v6)
  {
    sub_1000079A0(kSecAttrAccessGroup, a4, v6);
  }

  return v7;
}

void sub_100176108(id a1)
{
  qword_10039E018[0] = sub_100007604(@"genp", &qword_10039E090, &unk_10039E088);
  qword_10039E020 = sub_100007604(@"inet", &qword_10039E0A0, &unk_10039E098);
  qword_10039E028 = sub_100007604(@"keys", &qword_10039E0C0, &unk_10039E0B8);
}

void sub_10017618C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 152);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_100176200;
  v3[3] = &unk_100339200;
  v3[4] = a2;
  v3[5] = a1;
  sub_10008686C(v2, v3);
}

uint64_t sub_100176230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v3 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_1001762E0;
  v6[3] = &unk_1003396B0;
  v6[4] = &v7;
  v6[5] = a1;
  v6[6] = a2;
  v6[7] = a3;
  dispatch_sync(v3, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_1001762E0(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = CFDictionaryGetValue(*(*(a1 + 40) + 24), *(a1 + 48));
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v2 = *(*(a1 + 40) + 40);
    if (v2)
    {
      v4 = *(a1 + 48);
      v3 = *(a1 + 56);
      v5 = malloc_type_calloc(1uLL, 0xA8uLL, 0xE00405186C4AEuLL);
      v5[1] = sub_100176224;
      v5[2] = sub_10017618C;
      v5[3] = sub_100175138;
      v5[5] = sub_100174C88;
      v5[6] = sub_1001748A8;
      v5[4] = sub_1001740C8;
      v5[8] = sub_100173EA4;
      v5[10] = sub_100173D54;
      v5[9] = sub_100173D4C;
      v5[11] = sub_100172888;
      v5[12] = sub_100173B2C;
      v5[7] = sub_1001739D0;
      v5[13] = sub_10017389C;
      v5[14] = sub_100173844;
      v5[15] = sub_1001737E4;
      v5[16] = sub_100173728;
      v5[17] = sub_100173574;
      v5[18] = sub_1001732C8;
      CFRetain(v2);
      v5[19] = v2;
      if (v4)
      {
        CFRetain(v4);
      }

      v5[20] = v4;
      if ([OTSOSActualAdapter sosEnabled]_0())
      {
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v28 = sub_10014779C;
        v29 = &unk_100346E68;
        v30 = &qword_10039DF18;
        if (qword_10039DF10 != -1)
        {
          dispatch_once(&qword_10039DF10, &buf);
        }

        Instance = _CFRuntimeCreateInstance();
        *(Instance + 16) = v5;
        v7 = dispatch_queue_create("engine", 0);
        v8 = *(Instance + 112);
        *(Instance + 112) = v7;

        *(Instance + 56) = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        *(Instance + 64) = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        *(Instance + 72) = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v9 = *(Instance + 136);
        *(Instance + 136) = 0;

        *(Instance + 96) = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        *(Instance + 104) = 0;
        cf = 0;
        if ((sub_100149D1C(Instance, 0, &cf) & 1) == 0)
        {
          v10 = sub_100006274("SecWarning");
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = cf;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "engine failed load state starting with nothing %@", &buf, 0xCu);
          }

          v11 = cf;
          if (cf)
          {
            cf = 0;
            CFRelease(v11);
          }

          v12 = sub_100006274("engine");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = (*(*(Instance + 16) + 8))();
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "new engine for datasource named %@", &buf, 0xCu);
          }

          Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          v15 = *(Instance + 56);
          if (v15)
          {
            CFRelease(v15);
          }

          *(Instance + 56) = Mutable;
          v16 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          v17 = *(Instance + 64);
          if (v17)
          {
            CFRelease(v17);
          }

          *(Instance + 64) = v16;
          v18 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          v19 = *(Instance + 72);
          if (v19)
          {
            CFRelease(v19);
          }

          *(Instance + 72) = v18;
          v20 = *(Instance + 48);
          if (v20)
          {
            *(Instance + 48) = 0;
            CFRelease(v20);
          }

          v21 = *(Instance + 80);
          if (v21)
          {
            *(Instance + 80) = 0;
            CFRelease(v21);
          }

          sub_10014A744(Instance, 0, 0, 0);
        }

        v22 = *(Instance + 16);
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v28 = sub_10014C0FC;
        v29 = &unk_100338410;
        v30 = Instance;
        (*(v22 + 16))();
        *v5 = Instance;
      }

      else
      {
        SOSCCSetSOSDisabledError();
        free(v5);
        v5 = 0;
      }

      *(*(*(a1 + 32) + 8) + 24) = v5;
      v23 = *(*(a1 + 40) + 24);
      v24 = *(a1 + 48);
      v25 = *(*(*(a1 + 32) + 8) + 24);

      CFDictionarySetValue(v23, v24, v25);
    }
  }
}

uint64_t sub_100176900(const __CFDictionary *a1, CFTypeRef *a2)
{
  v3 = &v8;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3800000000;
  v11 = 0u;
  v12 = 0u;
  if (a1)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 0x40000000;
    v7[2] = sub_1001769E4;
    v7[3] = &unk_1003391D8;
    v7[4] = &v8;
    CFDictionaryApplyFunction(a1, sub_10017370C, v7);
    v3 = v9;
  }

  v4 = sub_10022ABF8((v3 + 3), a2);
  v5 = v9;
  free(v9[3]);
  v5[3] = 0;
  v5[4] = 0;
  *(v5 + 48) = 0;
  v5[5] = 0;
  _Block_object_dispose(&v8, 8);
  return v4;
}

void sub_1001769E4(uint64_t a1, int a2, CFTypeRef cf)
{
  if (cf)
  {
    v5 = CFGetTypeID(cf);
    if (v5 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(cf, @"hash");
      if (Value)
      {
        v7 = Value;
        v8 = CFGetTypeID(Value);
        if (v8 == CFDataGetTypeID() && CFDataGetLength(v7) == 20)
        {
          v9 = *(*(a1 + 32) + 8);
          BytePtr = CFDataGetBytePtr(v7);
          sub_1002297B0((v9 + 24), BytePtr);
          *(v9 + 48) = 1;
        }
      }
    }
  }
}

void sub_100177024(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[CKKSAnalytics logger];
    [v7 logUnrecoverableError:v6 forEvent:@"OctagonEventAuthKitDeviceList" withAttributes:0];

    v8 = [AAFAnalyticsEventSecurity alloc];
    LOBYTE(v50) = 1;
    v9 = [v8 initWithKeychainCircleMetrics:&__NSDictionary0__struct altDSID:a1[4] flowID:a1[5] deviceSessionID:a1[6] eventName:kSecurityRTCEventNameTrustedDeviceListFailure testsAreEnabled:0 canSendMetrics:v50 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];
    [v9 sendMetricWithResult:0 error:v6];
    v10 = sub_100006274("authkit");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = a1[4];
      *buf = 138412546;
      v67 = v11;
      v68 = 2112;
      v69 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "received no device list(%@): %@", buf, 0x16u);
    }

    (*(a1[7] + 16))(a1[7], 0);
    goto LABEL_5;
  }

  v55 = a1;
  if (!v5)
  {
    v9 = [NSError errorWithDomain:@"com.apple.security.octagon" code:68 description:@"bad response from AuthKit"];
    (*(a1[7] + 16))(a1[7], 0);
    v46 = +[CKKSAnalytics logger];
    [v46 logUnrecoverableError:v9 forEvent:@"OctagonEventAuthKitDeviceList" withAttributes:0];

LABEL_5:
    goto LABEL_47;
  }

  v57 = +[NSMutableSet set];
  v53 = +[NSMutableSet set];
  v52 = +[NSMutableSet set];
  v54 = +[NSMutableSet set];
  v56 = [v5 deviceListVersion];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v51 = v5;
  v12 = [v5 deviceList];
  v13 = [v12 countByEnumeratingWithState:&v62 objects:v75 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v63;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v63 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v62 + 1) + 8 * i);
        v18 = [v17 machineId];
        [v57 addObject:v18];

        v19 = sub_100006274("authkit");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v55[4];
          v21 = [v17 machineId];
          *buf = 138412802;
          v67 = v20;
          v68 = 2112;
          v69 = v56;
          v70 = 2112;
          v71 = v21;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Current machine ID on list for (%@) version %@: %@", buf, 0x20u);
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v62 objects:v75 count:16];
    }

    while (v14);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v22 = [v5 deletedDeviceList];
  v23 = [v22 countByEnumeratingWithState:&v58 objects:v74 count:16];
  v24 = v55;
  v25 = v52;
  if (v23)
  {
    v26 = v23;
    v27 = *v59;
    do
    {
      for (j = 0; j != v26; j = j + 1)
      {
        if (*v59 != v27)
        {
          objc_enumerationMutation(v22);
        }

        v29 = *(*(&v58 + 1) + 8 * j);
        v30 = [v29 removalReason];
        if (!v30)
        {
          v39 = [v29 machineId];
          [v54 addObject:v39];

          v32 = sub_100006274("authkit");
          if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_34;
          }

          v40 = v24[4];
          v34 = [v29 machineId];
          *buf = 138412802;
          v67 = v40;
          v68 = 2112;
          v69 = v56;
          v70 = 2112;
          v71 = v34;
          v35 = v32;
          v36 = "Device evicted for unknown reason for (%@) version %@: %@";
          goto LABEL_30;
        }

        if (v30 == 2)
        {
          v37 = [v29 machineId];
          [v25 addObject:v37];

          v32 = sub_100006274("authkit");
          if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_34;
          }

          v38 = v24[4];
          v34 = [v29 machineId];
          *buf = 138412802;
          v67 = v38;
          v68 = 2112;
          v69 = v56;
          v70 = 2112;
          v71 = v34;
          v35 = v32;
          v36 = "Device evicted due to limit for (%@) version %@: %@";
          goto LABEL_30;
        }

        if (v30 == 1)
        {
          v31 = [v29 machineId];
          [v53 addObject:v31];

          v32 = sub_100006274("authkit");
          if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_34;
          }

          v33 = v24[4];
          v34 = [v29 machineId];
          *buf = 138412802;
          v67 = v33;
          v68 = 2112;
          v69 = v56;
          v70 = 2112;
          v71 = v34;
          v35 = v32;
          v36 = "User initiated removed machine ID for (%@) version %@: %@";
LABEL_30:
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, v36, buf, 0x20u);

          goto LABEL_34;
        }

        v41 = sub_100006274("SecError");
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = [v29 removalReason];
          v43 = v55[4];
          v44 = [v29 machineId];
          *buf = 134218754;
          v67 = v42;
          v25 = v52;
          v68 = 2112;
          v69 = v43;
          v24 = v55;
          v70 = 2112;
          v71 = v56;
          v72 = 2112;
          v73 = v44;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "authkit: super shrug here. Device is in the deletedDeviceList but has an undefined removal reason (%ld) for (%@) version %@: %@", buf, 0x2Au);
        }

        v32 = [v29 machineId];
        [v54 addObject:v32];
LABEL_34:
      }

      v26 = [v22 countByEnumeratingWithState:&v58 objects:v74 count:16];
    }

    while (v26);
  }

  v5 = v51;
  if (objc_opt_respondsToSelector())
  {
    v45 = [v51 trustedDeviceHash];
  }

  else
  {
    v45 = &stru_100348050;
  }

  if (objc_opt_respondsToSelector())
  {
    v47 = [v51 deletedDeviceHash];
  }

  else
  {
    v47 = &stru_100348050;
  }

  if (objc_opt_respondsToSelector())
  {
    v48 = [v51 trustedDevicesUpdateTimestamp];
  }

  else
  {
    v48 = 0;
  }

  (*(v24[7] + 16))(v24[7], v57);
  v49 = +[CKKSAnalytics logger];
  [v49 logSuccessForEventNamed:@"OctagonEventAuthKitDeviceList"];

  v6 = 0;
LABEL_47:
}

void sub_1001799B8(id a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = objc_opt_new();
  v3 = qword_10039E068;
  qword_10039E068 = v2;

  v4 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.security.octagon"];
  v5 = qword_10039E070;
  qword_10039E070 = v4;

  [qword_10039E070 setDelegate:qword_10039E068];
  [qword_10039E070 resume];

  objc_autoreleasePoolPop(v1);
}

uint64_t sub_100179A50(uint64_t a1, unsigned int *a2, const __CFArray *a3, int a4, uint64_t a5)
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
    context[2] = sub_100179C48;
    context[3] = &unk_100339780;
    context[4] = a2;
    context[5] = Mutable;
    v24.length = CFArrayGetCount(a3);
    v24.location = 0;
    CFArrayApplyFunction(a3, v24, sub_100179F00, context);
  }

  else
  {
    v12 = *(a2 + 1);
    if (v12)
    {
      v13 = (a2 + 4);
      do
      {
        sub_100179C58(v11, v12);
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
  v17[2] = sub_100179E98;
  v17[3] = &unk_1003397A8;
  v17[4] = &v19;
  v17[5] = a1;
  v17[6] = a5;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 0x40000000;
  v23[2] = sub_1000105E8;
  v23[3] = &unk_100335678;
  v23[4] = v17;
  sub_100008380(v11, v23);
  if (v11)
  {
    CFRelease(v11);
  }

  v15 = *(v20 + 24);
  _Block_object_dispose(&v19, 8);
  return v15;
}

void sub_100179C58(__CFString *a1, uint64_t *a2)
{
  CFStringAppendFormat(a1, 0, @"CREATE TABLE %@("), *a2;
  v4 = a2[2];
  if (!v4)
  {
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
      v7 = off_100339CF0[v6];
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
  if (v10)
  {
    v11 = 0;
    v12 = a2 + 3;
    do
    {
      if ((~*(v10 + 16) & 3) == 0)
      {
        v13 = *v10;
        if (v11)
        {
          v14 = @",";
        }

        else
        {
          v14 = CFSTR("UNIQUE(");
        }

        CFStringAppend(a1, v14);
        CFStringAppend(a1, v13);
        v11 = 1;
      }

      v15 = *v12++;
      v10 = v15;
    }

    while (v15);
    if (v11)
    {
      CFStringAppend(a1, @""));
    }
  }

LABEL_26:
  CFStringAppend(a1, @";"));
  v16 = a2[2];
  if (v16)
  {
    v17 = 3;
    do
    {
      if ((~*(v16 + 4) & 6) == 0)
      {
        v18 = *(v16 + 2);
        v19 = *a2;
        v20 = *v16;
        if (v18 == 11)
        {
          CFStringAppendFormat(a1, 0, @"CREATE INDEX %@%@0 ON %@(%@) WHERE %@=0;", v19, v20, v19, v20, v20);
        }

        else
        {
          CFStringAppendFormat(a1, 0, @"CREATE INDEX %@%@ ON %@(%@);", v19, v20, *a2, v20, v21);
        }
      }

      v16 = a2[v17++];
    }

    while (v16);
  }
}

BOOL sub_100179E98(uint64_t a1, const char *a2)
{
  v4 = sqlite3_exec(*(*(a1 + 40) + 64), a2, 0, 0, 0);
  result = sub_10001D8CC(v4, *(*(a1 + 40) + 64), *(a1 + 48), @"sqlite3_exec: %s", a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

CFDataRef sub_100179F18(uint64_t a1, int a2, __CFString **a3)
{
  if (a2 == 8)
  {
    sub_1001634BC(a1, a3);
    v8 = **(a1 + 16);
    v9 = *(a1 + 48);

    return _SecItemCreateUUIDBasedPersistentRef();
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

      v11 = CFGetAllocator(a1);
      Mutable = CFDictionaryCreateMutable(v11, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v6 = Mutable;
      if ((v5 & 4) != 0)
      {
        CFDictionarySetValue(Mutable, kSecClass, **(a1 + 16));
      }

      v13 = *(a1 + 16);
      v14 = *(v13 + 16);
      if (v14)
      {
        v15 = (v13 + 24);
        do
        {
          if ((*(v14 + 16) & ((16 * ((v5 & 6) != 0)) | (32 * ((v5 & 5) != 0)))) != 0)
          {
            v16 = sub_100015BFC(a1, v14, a3);
            if (!v16)
            {
              if (v6)
              {
                CFRelease(v6);
                v6 = 0;
              }

              break;
            }

            v17 = v16;
            if (!CFEqual(kCFNull, v16))
            {
              CFDictionarySetValue(v6, *v14, v17);
            }
          }

          v18 = *v15++;
          v14 = v18;
        }

        while (v18);
      }

      CFDictionaryRemoveValue(v6, kSecAttrUUID);
      if ((v5 & 8) != 0)
      {
        sub_1001634BC(a1, a3);
        v19 = **(a1 + 16);
        v20 = *(a1 + 48);
        UUIDBasedPersistentRef = _SecItemCreateUUIDBasedPersistentRef();
        CFDictionarySetValue(v6, kSecValuePersistentRef, UUIDBasedPersistentRef);
        if (UUIDBasedPersistentRef)
        {
          CFRelease(UUIDBasedPersistentRef);
        }
      }

      return v6;
    }

    v7 = sub_100015B5C(a1, kSecValueData);
    if (v7)
    {
      v6 = v7;
      CFRetain(v7);
      return v6;
    }

    return CFDataCreate(kCFAllocatorDefault, 0, 0);
  }
}

BOOL sub_10017A188(const void *a1, uint64_t a2)
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
  if (Value)
  {
    v6 = CFEqual(a1, Value) != 0;
  }

  else
  {
    v6 = a1 == 0;
  }

  CFRelease(v4);
  return v6;
}

void sub_10017A218(id a1)
{
  v1 = sub_100088500("ratelimiterdisabledlogevent", 1);
  qword_10039E080 = v1;
  context = dispatch_get_context(v1);
  context[2] = _Block_copy(&stru_100339C90);

  dispatch_activate(v1);
}

void sub_10017A27C(id a1)
{
  v1 = sub_100006274("SecError");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109120;
    v2[1] = -25308;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "decode item failed, keychain is locked (%d)", v2, 8u);
  }
}

void sub_10017A320(sqlite3_stmt *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = sqlite3_column_int64(a1, 0);
  v6 = sub_10000FDB8(a1, 1);
  v7 = sqlite3_column_blob(a1, 3);
  v8 = sqlite3_column_bytes(a1, 3);
  v9 = CFDataCreate(kCFAllocatorDefault, v7, v8);
  if (!v9)
  {
    UUIDBasedPersistentRef = 0;
    if (v6)
    {
      goto LABEL_8;
    }

LABEL_5:
    v13 = 0;
    v14 = 0;
    v15 = UUIDBasedPersistentRef != 0;
    goto LABEL_13;
  }

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
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_8:
  v14 = sub_1000885B0(v6);
  v13 = v14 != 0;
  v15 = UUIDBasedPersistentRef != 0;
  if (v14 && UUIDBasedPersistentRef)
  {
    v23 = sub_10001104C(0, v16, v17, v18, v19, v20, v21, v22, kSecValuePersistentRef, UUIDBasedPersistentRef);
    if (v23)
    {
      v24 = v23;
      CFArrayAppendValue(*(a2 + 24), v23);
      CFRelease(v24);
    }

    ++*(a2 + 32);
    v15 = 1;
    goto LABEL_15;
  }

LABEL_13:
  v25 = sub_100006274("item");
  if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    if (!v13)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v26 = **v4;
  *buf = 134218242;
  v28 = v5;
  v29 = 2112;
  v30 = v26;
  _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "rowid %lu in %@ failed to create pref/digest", buf, 0x16u);
  if (v13)
  {
LABEL_15:
    CFRelease(v14);
  }

LABEL_16:
  if (v6)
  {
    CFRelease(v6);
    if (!v15)
    {
      return;
    }

    goto LABEL_18;
  }

  if (v15)
  {
LABEL_18:
    CFRelease(UUIDBasedPersistentRef);
  }
}

uint64_t sub_10017A55C(const __CFDictionary *a1, uint64_t a2, int a3)
{
  Value = CFDictionaryGetValue(a1, kSecAttrSysBound);
  if (Value && (v7 = Value, v8 = CFGetTypeID(Value), v8 == CFNumberGetTypeID()))
  {
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

  else
  {
    result = CFDictionaryGetValue(a1, kSecAttrAccessGroup);
    if (result)
    {
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

      if (CFEqual(v11, @"apple") && sub_100007604(@"genp", &qword_10039E090, &unk_10039E088) == a2)
      {
        v37 = CFDictionaryGetValue(a1, kSecAttrService);
        v38 = CFDictionaryGetValue(a1, kSecAttrAccount);
        if (sub_10016A0F8(v37))
        {
          if (sub_10016A0F8(v38) && CFEqual(v37, @"com.apple.managedconfiguration"))
          {
            v39 = 0;
            v40 = 0;
            v41 = 1;
            v42 = 1;
            do
            {
              v43 = v42;
              v44 = v39;
              v42 = v41;
              v45 = CFEqual(v38, off_100339950[v40]);
              if (v45)
              {
                break;
              }

              v41 = 0;
              v39 = 1;
              v40 = 1;
            }

            while ((v44 & 1) == 0);
            v46 = v45 ? v43 : v42;
            if (v46)
            {
              return 1;
            }
          }
        }

        if (sub_10016A0F8(v37) && CFEqual(v37, @"com.apple.account.CloudKit.token") || sub_10016A0F8(v37) && CFEqual(v37, @"com.apple.account.idms.continuation-key"))
        {
          return 1;
        }
      }

      if (a3)
      {
        if (CFEqual(v11, @"com.apple.apsd"))
        {
          if (sub_100007604(@"genp", &qword_10039E090, &unk_10039E088) == a2)
          {
            v13 = CFDictionaryGetValue(a1, kSecAttrService);
            if (sub_10016A0F8(v13))
            {
              v14 = 0;
              v15 = 0;
              v16 = 1;
              v17 = 1;
              do
              {
                v18 = v17;
                v19 = v14;
                v17 = v16;
                v20 = CFEqual(v13, off_100339960[v15]);
                if (v20)
                {
                  break;
                }

                v16 = 0;
                v14 = 1;
                v15 = 1;
              }

              while ((v19 & 1) == 0);
              v21 = v20 ? v18 : v17;
              if (v21)
              {
                return 1;
              }
            }
          }
        }

        if (CFEqual(v11, @"appleaccount"))
        {
          if (sub_100007604(@"genp", &qword_10039E090, &unk_10039E088) == a2)
          {
            v22 = CFDictionaryGetValue(a1, kSecAttrService);
            if (sub_10016A0F8(v22))
            {
              v23 = 0;
              v24 = 1;
              do
              {
                if (CFEqual(v22, off_100339970[v23]))
                {
                  break;
                }

                v24 = v23++ < 3;
              }

              while (v23 != 4);
              if (v24)
              {
                return 1;
              }
            }
          }
        }

        if (CFEqual(v11, @"apple") && sub_100007604(@"genp", &qword_10039E090, &unk_10039E088) == a2)
        {
          v47 = CFDictionaryGetValue(a1, kSecAttrService);
          if (sub_10016A0F8(v47))
          {
            v48 = 0;
            v49 = 1;
            do
            {
              if (CFEqual(v47, off_100339990[v48]))
              {
                break;
              }

              v49 = v48++ < 0xD;
            }

            while (v48 != 14);
            if (v49)
            {
              return 1;
            }
          }

          if (sub_10016A0F8(v47) && CFStringHasPrefix(v47, @"com.apple.gs."))
          {
            return 1;
          }

          if (sub_10016A0F8(v47))
          {
            if (CFEqual(v47, @"com.apple.facetime"))
            {
              v50 = CFDictionaryGetValue(a1, kSecAttrAccount);
              if (sub_10016A0F8(v50))
              {
                if (CFEqual(v50, @"registrationV1"))
                {
                  return 1;
                }
              }
            }
          }
        }

        if (CFEqual(v11, @"com.apple.ind"))
        {
          if (sub_100007604(@"genp", &qword_10039E090, &unk_10039E088) == a2)
          {
            v25 = CFDictionaryGetValue(a1, kSecAttrService);
            if (sub_10016A0F8(v25))
            {
              if (CFEqual(v25, @"com.apple.ind.registration"))
              {
                return 1;
              }
            }
          }
        }

        if (CFEqual(v11, @"ichat"))
        {
          if (sub_100007604(@"genp", &qword_10039E090, &unk_10039E088) == a2)
          {
            v26 = CFDictionaryGetValue(a1, kSecAttrService);
            if (sub_10016A0F8(v26))
            {
              if (CFEqual(v26, @"ids"))
              {
                return 1;
              }
            }
          }
        }

        if (CFEqual(v11, @"ichat"))
        {
          if (sub_100007604(@"keys", &qword_10039E0C0, &unk_10039E0B8) == a2)
          {
            v27 = CFDictionaryGetValue(a1, kSecAttrLabel);
            if (sub_10016A0F8(v27))
            {
              v28 = 0;
              v29 = 0;
              v30 = 1;
              v31 = 1;
              do
              {
                v32 = v31;
                v33 = v28;
                v31 = v30;
                v34 = CFEqual(v27, off_100339A00[v29]);
                if (v34)
                {
                  break;
                }

                v30 = 0;
                v28 = 1;
                v29 = 1;
              }

              while ((v33 & 1) == 0);
              v35 = v34 ? v32 : v31;
              if (v35)
              {
                return 1;
              }
            }
          }
        }

        if (CFEqual(v11, @"com.apple.rapport") && sub_100007604(@"genp", &qword_10039E090, &unk_10039E088) == a2)
        {
          return 1;
        }
      }

      cf = 0;
      if (CFDictionaryGetValueIfPresent(a1, kSecAttrSharingGroup, &cf) && cf && (v36 = CFGetTypeID(cf), v36 == CFStringGetTypeID()))
      {
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10017ABD4(uint64_t a1, uint64_t a2, int a3, CFTypeRef *a4)
{
  v8 = sub_100006274("SecWarning");
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
  v10[2] = sub_10017AD04;
  v10[3] = &unk_100339A10;
  v10[4] = a1;
  v10[5] = a2;
  v11 = a3;
  v10[6] = a4;
  return sub_1000141DC(a1, 2, a4, v10);
}

uint64_t sub_10017AD04(uint64_t a1)
{
  if (!sub_10017ADAC(*(a1 + 32), @"DELETE FROM genp WHERE musr = ?", *(a1 + 40), *(a1 + 56), *(a1 + 48)) || !sub_10017ADAC(*(a1 + 32), @"DELETE FROM inet WHERE musr = ?", *(a1 + 40), *(a1 + 56), *(a1 + 48)) || !sub_10017ADAC(*(a1 + 32), @"DELETE FROM cert WHERE musr = ?", *(a1 + 40), *(a1 + 56), *(a1 + 48)))
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 48);

  return sub_10017ADAC(v2, @"DELETE FROM keys WHERE musr = ?", v3, v4, v5);
}

uint64_t sub_10017ADAC(uint64_t a1, CFTypeRef cf, const __CFString *a3, int a4, CFTypeRef *a5)
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
    v10 = sub_10000A434(a1, v8, 0, a5);
    if (v10)
    {
      v11 = v10;
      if (sub_10000CBCC(v10, 1, a3, a5))
      {
        sub_100015DAC(a1, v11, a5, &stru_100339CB0);
      }

      if (sub_10000DB94(v11, a5))
      {
        v12 = 1;
LABEL_16:
        CFRelease(v9);
        return v12;
      }
    }
  }

  v13 = sub_100006274("SecWarning");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    if (a5)
    {
      v14 = *a5;
    }

    else
    {
      v14 = 0;
    }

    *buf = 138412802;
    v17 = v9;
    v18 = 2112;
    v19 = a3;
    v20 = 2112;
    v21 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "DeleteAllFromTableForMUSRView failed for %@ for musr: %@: %@", buf, 0x20u);
  }

  v12 = 0;
  result = 0;
  if (v9)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_10017AF38(uint64_t a1)
{
  v2 = sub_100006274("item");
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
  v10[2] = sub_10017B12C;
  v10[3] = &unk_100339A88;
  v10[4] = &buf;
  v10[5] = &v11;
  v10[6] = a1;
  v3 = sub_100008A70(1, 1, 0, &v23, v10);
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

  v6 = sub_100006274("item");
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

uint64_t sub_10017B12C(int8x16_t *a1, uint64_t a2)
{
  v6[0] = _NSConcreteStackBlock;
  v2 = vextq_s8(a1[2], a1[2], 8uLL);
  v3 = *(a1[2].i64[0] + 8);
  v6[1] = 0x40000000;
  v6[2] = sub_10017B1BC;
  v6[3] = &unk_100339A60;
  v7 = v2;
  v4 = a1[3].i64[0];
  v8 = a2;
  v9 = v4;
  return sub_1000141DC(a2, 2, (v3 + 24), v6);
}

uint64_t sub_10017B1BC(int8x16_t *a1)
{
  v2 = &off_10033C738;
  v3 = off_10033E8C8;
  do
  {
    if (*(v2 + 8) == 1)
    {
      v4 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"DELETE FROM %@ WHERE agrp = ? AND clip = 1", *v2);
      v6 = a1[2].i64[0];
      v5 = a1[2].i64[1];
      v7 = *(v5 + 8);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 0x40000000;
      v11[2] = sub_10017B2F4;
      v11[3] = &unk_100339A38;
      v11[4] = v6;
      v11[5] = v5;
      v8 = a1[3];
      v12 = vextq_s8(v8, v8, 8uLL);
      *(*(a1[2].i64[0] + 8) + 24) &= sub_10001489C(v8.i64[0], v4, (v7 + 24), v11);
      if (v4)
      {
        CFRelease(v4);
      }
    }

    v9 = *v3++;
    v2 = v9;
  }

  while (v9);
  return *(*(a1[2].i64[0] + 8) + 24);
}

BOOL sub_10017B2F4(uint64_t a1, sqlite3_stmt *a2)
{
  *(*(*(a1 + 32) + 8) + 24) &= sub_10000CBCC(a2, 1, *(a1 + 48), (*(*(a1 + 40) + 8) + 24));
  result = sub_100015DAC(*(a1 + 56), a2, (*(*(a1 + 40) + 8) + 24), 0);
  *(*(*(a1 + 32) + 8) + 24) &= result;
  return result;
}

uint64_t sub_10017B374(int8x16_t *a1, uint64_t a2)
{
  v6[0] = _NSConcreteStackBlock;
  v2 = vextq_s8(a1[2], a1[2], 8uLL);
  v3 = *(a1[2].i64[0] + 8);
  v6[1] = 0x40000000;
  v6[2] = sub_10017B408;
  v6[3] = &unk_100339B38;
  v7 = v2;
  v4 = a1[3].i64[1];
  v8 = a1[3].i64[0];
  v9 = a2;
  v10 = v4;
  return sub_1000141DC(a2, 2, (v3 + 24), v6);
}

uint64_t sub_10017B408(uint64_t a1)
{
  v2 = &off_10033C738;
  v3 = off_10033E8C8;
  do
  {
    if (*(v2 + 8) == 1)
    {
      CFDictionarySetValue(*(*(*(a1 + 32) + 8) + 24), kSecClass, *v2);
      v4 = *(*(*(a1 + 32) + 8) + 24);
      if (qword_10039DFE8 != -1)
      {
        dispatch_once(&qword_10039DFE8, &stru_100338F30);
      }

      v5 = sub_100006454(v4, qword_10039DFF0, -1, 0, (*(*(a1 + 40) + 8) + 24));
      if (v5)
      {
        v6 = v5;
        v17[0] = _NSConcreteStackBlock;
        v7 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
        v8 = *(*(a1 + 40) + 8);
        v17[1] = 0x40000000;
        v17[2] = sub_10017B678;
        v17[3] = &unk_100339B10;
        v9 = *(a1 + 56);
        v18 = v7;
        v19 = vextq_s8(v9, v9, 8uLL);
        *(*(*(a1 + 48) + 8) + 24) &= sub_100014718(v5, v9.i64[0], (v8 + 24), 0, &stru_100339AC8, 0, 0, v17);
        sub_10000DF70(v6, 0);
      }

      else
      {
        v10 = sub_100006274("SecError");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = **(v3 - 1);
          v12 = *(*(*(a1 + 40) + 8) + 24);
          *buf = 138412546;
          v21 = v11;
          v22 = 2112;
          v23 = v12;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "AppcClipPromotion: unable to create query for class %@: %@", buf, 0x16u);
        }

        v13 = *(*(a1 + 40) + 8);
        v14 = *(v13 + 24);
        if (v14)
        {
          *(v13 + 24) = 0;
          CFRelease(v14);
        }
      }
    }

    v15 = *v3++;
    v2 = v15;
  }

  while (v15);
  return *(*(*(a1 + 48) + 8) + 24);
}

void sub_10017B678(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  cf = 0;
  if (!sub_100016898(a2, 1, &cf))
  {
    goto LABEL_13;
  }

  v6 = sub_1001632F8(a2, *(a1 + 48), &cf);
  v7 = v6;
  if (cf || (sub_10016360C(v6, &cf), cf))
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
  v19[2] = sub_10017B9C0;
  v19[3] = &unk_100339AE8;
  v19[4] = v7;
  if ((sub_10001AA4C(v7, v8, &cf, v19) & 1) == 0)
  {
    if (!sub_10016379C(cf))
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
  v11 = sub_100006274("item");
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_11;
  }

  *buf = 67109120;
  v22 = v10;
  _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "SecServerPromoteAppClipItemsToParentApp SecDbItemInsertOrReplace %d", buf, 8u);
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
      v14 = sub_100006274("item");
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
      v15 = sub_100006274("item");
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

BOOL sub_10017B944(id a1, const SecDbAttr *a2)
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

CFTypeRef sub_10017B9C0(CFTypeRef result, uint64_t a2, void *a3)
{
  v4 = *(result + 4);
  if (v4)
  {
    result = CFRetain(*(result + 4));
  }

  *a3 = v4;
  return result;
}

__CFDictionary *sub_10017B9F4(uint64_t a1, uint64_t a2, int *a3, int a4, __CFString **a5)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  cf = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v46 = 0u;
  memset(v45, 0, sizeof(v45));
  DWORD2(v50) = dword_10039E2F8;
  theDict = Mutable;
  if (!Mutable)
  {
    if (a5 && !*a5)
    {
      sub_1000103CC(-108, a5, @"Can't create keychain dictionary");
    }

    v14 = 0;
    goto LABEL_59;
  }

  LODWORD(v46) = 11;
  *(&v49 + 1) = -1;
  WORD4(v52) = 257;
  v42 = a4;
  if (a4 == 2 && (SOSCCIsSOSTrustAndSyncingEnabled() & 1) == 0)
  {
    v10 = sub_100006274("item");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SOS is disabled, Skipping backing up tombstones", buf, 2u);
    }

    BYTE10(v52) = 1;
    a4 = 2;
  }

  v38 = a5;
  if (!a2 || *(a2 + 36) != 1)
  {
    if (qword_10039DFD8 != -1)
    {
      dispatch_once(&qword_10039DFD8, &stru_100338EF0);
    }

    *&cf = qword_10039DFE0;
    CFRetain(qword_10039DFE0);
    if (a3)
    {
      v13 = sub_10017C138(*a3, 0);
    }

    else
    {
      v15 = dword_10039E2F8;
      memset(uu, 170, 16);
      uuid = aks_kc_backup_get_uuid();
      if (uuid)
      {
        v17 = uuid;
        v18 = sub_100006274("SecError");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *&buf[4] = v15;
          *&buf[8] = 1024;
          *&buf[10] = v17;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "keybag-uuid: could not determine backup keybag UUID for %d: %d", buf, 0xEu);
        }

        a4 = v42;
        goto LABEL_24;
      }

      memset(buf, 0, 37);
      uuid_unparse_lower(uu, buf);
      v13 = CFStringCreateWithCString(0, buf, 0x8000100u);
    }

    if (v13)
    {
      v39 = v13;
      CFDictionarySetValue(theDict, @"keybag-uuid", v13);
LABEL_25:
      v12 = 0;
      goto LABEL_26;
    }

LABEL_24:
    v39 = 0;
    goto LABEL_25;
  }

  v11 = *(a2 + 20);
  *buf = 0x104B57A5353A5AA7;
  *&buf[8] = -1803342146;
  *&buf[12] = bswap32(v11);
  v39 = 0;
  *&cf = CFDataCreate(0, buf, 16);
  v12 = 1;
LABEL_26:
  v70[0] = sub_100007604(@"genp", &qword_10039E090, &unk_10039E088);
  v70[1] = sub_100007604(@"inet", &qword_10039E0A0, &unk_10039E098);
  v70[2] = sub_100007604(@"cert", &qword_10039E0B0, &unk_10039E0A8);
  v19 = 0;
  v70[3] = sub_100007604(@"keys", &qword_10039E0C0, &unk_10039E0B8);
  v20 = a3 == 0;
  if (a3)
  {
    v21 = a3;
  }

  else
  {
    v21 = &dword_10039E2F8;
  }

  v22 = "non-";
  if (a4 == 1)
  {
    v22 = "";
  }

  v41 = v22;
  while (1)
  {
    *&v45[0] = v70[v19];
    v66 = 0xAAAAAAAAAAAAAAAALL;
    v67 = 0xAAAAAAAAAAAAAAAALL;
    *&buf[32] = 0xAAAAAAAAAAAAAAAALL;
    *buf = v45;
    *&buf[8] = 0;
    *&buf[16] = a1;
    *&buf[24] = 0;
    v23 = *v21;
    *&buf[32] = 0;
    LODWORD(v66) = v23;
    BYTE4(v66) = v20;
    LODWORD(v67) = a4;
    BYTE4(v67) = v12;
    v68 = 0;
    v69 = 0;
    v24 = sub_100006274("item");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = **&v45[0];
      *uu = 136315394;
      *&uu[4] = v41;
      *&uu[12] = 2112;
      *&uu[14] = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "exporting %ssysbound class '%@'", uu, 0x16u);
    }

    err = 0;
    if (!sub_10000A574(sub_10017C24C, buf, &err))
    {
      break;
    }

    v26 = sub_100006274("item");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = **&v45[0];
      Count = CFArrayGetCount(*&buf[24]);
      *uu = 138413058;
      *&uu[4] = v27;
      a4 = v42;
      *&uu[12] = 2048;
      *&uu[14] = Count;
      v61 = 2048;
      v62 = v68;
      v63 = 2048;
      v64 = v69;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "exporting class '%@' complete: %ld items exported (%zu skips, %zu failures)", uu, 0x2Au);
    }

    if (CFArrayGetCount(*&buf[24]))
    {
      v29 = **&v45[0];
      CFArrayGetCount(*&buf[24]);
      if (CFStringGetLength(v29) == 4)
      {
        memset(uu, 170, 5);
        if (CFStringGetCString(v29, uu, 5, 0x8000100u))
        {
          kdebug_trace();
        }
      }

      CFDictionaryAddValue(theDict, **&v45[0], *&buf[24]);
      a4 = v42;
    }

LABEL_46:
    v32 = *&buf[24];
    if (*&buf[24])
    {
      *&buf[24] = 0;
      CFRelease(v32);
    }

    if (++v19 == 4)
    {
      v14 = v39;
      goto LABEL_60;
    }
  }

  if (CFErrorGetCode(err) == -25300)
  {
    v30 = sub_100006274("item");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = **&v45[0];
      *uu = 138412290;
      *&uu[4] = v31;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "exporting class '%@' complete (no items)", uu, 0xCu);
    }

    CFRelease(err);
    goto LABEL_46;
  }

  v33 = sub_100006274("SecError");
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = **&v45[0];
    *uu = 138412546;
    *&uu[4] = v34;
    *&uu[12] = 2112;
    *&uu[14] = err;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "exporting class '%@' failed: %@", uu, 0x16u);
  }

  if (v38)
  {
    if (*v38)
    {
      CFRelease(*v38);
    }

    *v38 = err;
  }

  else
  {
    CFRelease(err);
  }

  CFRelease(theDict);
  v35 = *&buf[24];
  v14 = v39;
  if (*&buf[24])
  {
    *&buf[24] = 0;
    CFRelease(v35);
  }

LABEL_59:
  theDict = 0;
LABEL_60:
  v36 = cf;
  if (cf)
  {
    *&cf = 0;
    CFRelease(v36);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return theDict;
}

CFStringRef sub_10017C138(int a1, uint64_t a2)
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

  bag_uuid = aks_get_bag_uuid();
  if (!bag_uuid)
  {
    goto LABEL_3;
  }

  v5 = bag_uuid;
  v6 = sub_100006274("SecError");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *out = 67109376;
    *&out[4] = a1;
    *&out[8] = 1024;
    *&out[10] = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "keybag-uuid: could not determine keybag UUID for %d: %d", out, 0xEu);
  }

  return 0;
}

void sub_10017C24C(sqlite3_stmt *a1, uint64_t a2)
{
  v4 = *a2;
  cf = 0;
  v64 = 0;
  v5 = sqlite3_column_int64(a1, 0);
  theDict = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v61 = 0;
  v7 = sub_10000F9B0(a1, v4, 1, *(a2 + 8), &theDict, &v64, &v61, &cf);
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
          v45 = sub_100006274("SecError");
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
              v57 = sub_10001104C(0, v49, v50, v51, v52, v53, v54, v55, @"agrp", v48);
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
        v39 = sub_100006274("item");
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218242;
          *v66 = v5;
          *&v66[8] = 2112;
          *&v66[10] = cf;
          _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "Could not export item for rowid %llu: %@", buf, 0x16u);
        }

        if (v38 != -26275)
        {
          v40 = v4[5];
          if (v40)
          {
            CFRelease(v40);
          }

          v4[5] = cf;
          goto LABEL_82;
        }
      }

      v44 = cf;
      if (!cf)
      {
        goto LABEL_82;
      }

      cf = 0;
      goto LABEL_81;
    }

    v25 = sub_100006274("item");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *v66 = v5;
      *&v66[8] = 1024;
      *&v66[10] = v18;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "export rowid %llu skipped. akpu/token: %i", buf, 0x12u);
    }

    goto LABEL_40;
  }

  v21 = *(a2 + 48);
  if (v21)
  {
    if ((v21 != 1) != sub_10017A55C(theDict, *v4, *(a2 + 52)))
    {
      v19 = theDict;
      goto LABEL_34;
    }

LABEL_40:
    ++*(a2 + 56);
    goto LABEL_82;
  }

LABEL_34:
  v22 = CFDictionaryGetValue(v19, kSecAttrPersistentReference);
  if (v22 && CFDataGetLength(v22) == 16)
  {
    isa = (*v4)->isa;
    UUIDBasedPersistentRef = _SecItemCreateUUIDBasedPersistentRef();
  }

  else
  {
    v27 = sub_100006274("pref");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v66 = v5;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "s3dl_export_row: Creating old persistent ref for %llu", buf, 0xCu);
    }

    v28 = (*v4)->isa;
    UUIDBasedPersistentRef = _SecItemCreatePersistentRef();
  }

  v29 = UUIDBasedPersistentRef;
  if (UUIDBasedPersistentRef)
  {
    if (*(a2 + 40) != -1)
    {
      v30 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v31 = (*v4)->data;
      if (v31)
      {
        v32 = &(*v4)->length;
        do
        {
          if ((v31[17] & 0x20) != 0)
          {
            v33 = CFDictionaryGetValue(MutableCopy, *v31);
            if (v33)
            {
              CFDictionaryAddValue(v30, *v31, v33);
              CFDictionaryRemoveValue(MutableCopy, *v31);
            }
          }

          v34 = *v32++;
          v31 = v34;
        }

        while (v34);
      }

      value = 0;
      v35 = (v4 + 5);
      v36 = sub_10001BA08(*(a2 + 40), v64, v4[18], Mutable, MutableCopy, v30, &value, 0, *(a2 + 44), v4 + 5);
      CFDictionaryRemoveAllValues(theDict);
      CFRelease(v30);
      if (v36)
      {
        v37 = value;
        CFDictionarySetValue(theDict, kSecValueData, value);
        if (!v37)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v41 = sub_100006274("SecCritical");
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

        v37 = *v35;
        if (!*v35)
        {
          goto LABEL_69;
        }

        *v35 = 0;
      }

      CFRelease(v37);
    }

LABEL_69:
    if (CFDictionaryGetCount(theDict))
    {
      CFDictionarySetValue(theDict, kSecValuePersistentRef, v29);
      CFArrayAppendValue(*(a2 + 24), theDict);
      ++*(a2 + 32);
    }

    v44 = v29;
LABEL_81:
    CFRelease(v44);
  }

LABEL_82:
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

BOOL sub_10017C94C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, const __CFDictionary *a6, int a7, int a8, __CFString **a9)
{
  v16 = a9;
  if (a7 == 2)
  {
    LODWORD(bytes) = -1;
    v17 = 1;
    v18 = sub_10017B9F4(a1, a2, &bytes, 1, a9);
    if (!v18)
    {
      return v17;
    }
  }

  else
  {
    v18 = 0;
  }

  cf1 = sub_10017C138(a3, a4);
  v49 = a1;
  if (!cf1 || (Value = CFDictionaryGetValue(a6, @"keybag-uuid")) == 0 || (v20 = Value, v21 = a6, v22 = CFGetTypeID(Value), v23 = v22 == CFStringGetTypeID(), a6 = v21, v16 = a9, !v23) || CFEqual(cf1, v20))
  {
    if (*(a2 + 36) == 1)
    {
      v24 = *(a2 + 20);
      *&bytes = 0x104B57A5353A5AA7;
      DWORD2(bytes) = -1803342146;
      HIDWORD(bytes) = bswap32(v24);
      v25 = CFDataCreate(0, &bytes, 16);
      if (!v25)
      {
        goto LABEL_18;
      }

      v26 = v25;
      v27 = a6;
      v28 = v49;
      v29 = sub_10017ABD4(v49, v25, 1, v16);
      CFRelease(v26);
      if ((v29 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_29;
    }

    if (a8)
    {
      v27 = a6;
      v30 = sub_100006274("SecWarning");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(bytes) = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "SecServerDeleteAll", &bytes, 2u);
      }

      *&bytes = _NSConcreteStackBlock;
      *(&bytes + 1) = 0x40000000;
      v64 = sub_10017CF54;
      v65[0] = &unk_100339CD0;
      v28 = v49;
      v65[1] = v49;
      v65[2] = v16;
      if ((sub_1000141DC(v49, 2, v16, &bytes) & 1) == 0)
      {
LABEL_18:
        v17 = 0;
        v31 = cf1;
        if (!v18)
        {
          goto LABEL_47;
        }

LABEL_46:
        CFRelease(v18);
        goto LABEL_47;
      }

LABEL_29:
      v53 = -1431655766;
      v56 = -1431655766;
      context = v28;
      cf = 0;
      v52 = a3;
      v54 = a4;
      v55 = a5;
      v57 = a2;
      v59 = -1431655766;
      v58 = a7;
      v39 = sub_100006274("SecWarning");
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        Count = CFDictionaryGetCount(v27);
        LODWORD(bytes) = 134217984;
        *(&bytes + 4) = Count;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Restoring backup items '%ld'", &bytes, 0xCu);
      }

      CFDictionaryApplyFunction(v27, sub_10017D080, &context);
      v31 = cf1;
      if (v18)
      {
        v52 = -1;
        v54 = 0;
        v58 = 1;
        v41 = sub_100006274("SecWarning");
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = CFDictionaryGetCount(v18);
          LODWORD(bytes) = 134217984;
          *(&bytes + 4) = v42;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Restoring sysbound items '%ld'", &bytes, 0xCu);
        }

        CFDictionaryApplyFunction(v18, sub_10017D080, &context);
      }

      v43 = cf;
      v17 = cf == 0;
      if (cf)
      {
        if (v16)
        {
          if (*v16)
          {
            CFRelease(*v16);
            v43 = cf;
          }

          *v16 = v43;
        }

        else
        {
          CFRelease(cf);
        }
      }

      if (sub_100019064())
      {
        v44 = sub_100019104(@"reset", 0);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(bytes) = 0;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Local keychain was reset; performing local resync", &bytes, 2u);
        }

        v45 = +[CKKSViewManager manager];
        [v45 rpcResyncLocal:0 reply:&stru_1003372E8];
      }

      if (!v18)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    *&bytes = 0;
    *(&bytes + 1) = &bytes;
    v64 = 0x2000000000;
    v65[0] = 0;
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 0x40000000;
    v60[2] = sub_10017CFE0;
    v60[3] = &unk_100339B88;
    v60[4] = &bytes;
    v60[5] = a1;
    v27 = a6;
    if (sub_1000141DC(a1, 2, v65, v60))
    {
      v32 = sub_100006274("restore");
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v33 = "Successfully deleted nonsyncable items";
        v34 = v32;
        v35 = 2;
LABEL_25:
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, v33, buf, v35);
      }
    }

    else
    {
      v36 = sub_100006274("SecError");
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = *(*(&bytes + 1) + 24);
        *buf = 138412290;
        v62 = v37;
        v33 = "Unable to delete nonsyncable items prior to keychain restore: %@";
        v34 = v36;
        v35 = 12;
        goto LABEL_25;
      }
    }

    v38 = *(*(&bytes + 1) + 24);
    if (v38)
    {
      *(*(&bytes + 1) + 24) = 0;
      CFRelease(v38);
    }

    _Block_object_dispose(&bytes, 8);
    v28 = v49;
    goto LABEL_29;
  }

  v31 = cf1;
  sub_1000103CC(-26275, a9, @"Keybag UUID (%@) mismatch with backup (%@)", cf1, v20);
  v17 = 1;
  if (v18)
  {
    goto LABEL_46;
  }

LABEL_47:
  if (v31)
  {
    CFRelease(v31);
  }

  return v17;
}

uint64_t sub_10017CF54(uint64_t a1)
{
  if (!sub_1000152F0(*(a1 + 32), @"DELETE from genp;", *(a1 + 40)) || !sub_1000152F0(*(a1 + 32), @"DELETE from inet;", *(a1 + 40)) || !sub_1000152F0(*(a1 + 32), @"DELETE from cert;", *(a1 + 40)))
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return sub_1000152F0(v2, @"DELETE from keys;", v3);
}

uint64_t sub_10017CFE0(uint64_t a1)
{
  v2 = sub_1000152F0(*(a1 + 40), @"DELETE FROM genp WHERE sync = 0 AND NOT agrp IN ('com.apple.security.sos', 'com.apple.security.sos-usercredential', 'com.apple.security.ckks', 'com.apple.security.egoIdentities', 'com.apple.security.octagon') AND NOT ggrp <> '';", (*(*(a1 + 32) + 8) + 24));
  v3 = v2 & sub_1000152F0(*(a1 + 40), @"DELETE FROM inet WHERE sync = 0 AND NOT agrp IN ('com.apple.security.sos', 'com.apple.security.sos-usercredential', 'com.apple.security.ckks', 'com.apple.security.egoIdentities', 'com.apple.security.octagon') AND NOT ggrp <> '';", (*(*(a1 + 32) + 8) + 24));
  v4 = sub_1000152F0(*(a1 + 40), @"DELETE FROM cert WHERE sync = 0 AND NOT agrp IN ('com.apple.security.sos', 'com.apple.security.sos-usercredential', 'com.apple.security.ckks', 'com.apple.security.egoIdentities', 'com.apple.security.octagon') AND NOT ggrp <> '';", (*(*(a1 + 32) + 8) + 24));
  return v3 & v4 & sub_1000152F0(*(a1 + 40), @"DELETE FROM keys WHERE sync = 0 AND NOT agrp IN ('com.apple.security.sos', 'com.apple.security.sos-usercredential', 'com.apple.security.ckks', 'com.apple.security.egoIdentities', 'com.apple.security.octagon') AND NOT ggrp <> '';", (*(*(a1 + 32) + 8) + 24));
}

void sub_10017D080(CFTypeRef cf, const void *a2, uint64_t a3)
{
  v3 = (a3 + 8);
  if (*(a3 + 8))
  {
    return;
  }

  if (!cf)
  {
    sub_1000103CC(-50, v3, @"class name %@ is not a string", 0);
    return;
  }

  v7 = CFGetTypeID(cf);
  if (v7 != CFStringGetTypeID())
  {
    sub_1000103CC(-50, v3, @"class name %@ is not a string", cf);
    return;
  }

  if (CFEqual(cf, @"keybag-uuid"))
  {
    return;
  }

  v8 = sub_1000074BC(cf);
  if (!v8)
  {
    v16 = sub_100006274("SecWarning");
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 138412290;
    v29 = cf;
    v17 = "Ignoring unknown key class '%@'";
    v18 = v16;
    v19 = 12;
    goto LABEL_28;
  }

  v9 = v8;
  if (v8 != &off_10033DFA8)
  {
    context[0] = v8;
    context[1] = a3;
    if (a2)
    {
      v10 = CFGetTypeID(a2);
      if (v10 == CFArrayGetTypeID())
      {
        v11 = sub_100006274("SecWarning");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          Count = CFArrayGetCount(a2);
          v13 = *(a3 + 48);
          *buf = 134218498;
          v29 = Count;
          v30 = 2112;
          v31 = cf;
          v32 = 1024;
          v33 = v13;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Import %ld items of class %@ (filter %d)", buf, 0x1Cu);
        }

        v14 = *v9;
        CFArrayGetCount(a2);
        v15 = *(a3 + 48);
        sub_10017D3E8(v14);
        v35.length = CFArrayGetCount(a2);
        v35.location = 0;
        CFArrayApplyFunction(a2, v35, sub_10017D470, context);
        return;
      }

      v21 = CFGetTypeID(a2);
      v20 = v21 == CFDictionaryGetTypeID();
    }

    else
    {
      v20 = 0;
    }

    v22 = sub_100006274("SecWarning");
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      if (v23)
      {
        v24 = *(a3 + 48);
        *buf = 134218498;
        v29 = 1;
        v30 = 2112;
        v31 = cf;
        v32 = 1024;
        v33 = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Import %ld items of class %@ (filter %d)", buf, 0x1Cu);
      }

      v25 = *(a3 + 48);
      sub_10017D3E8(*v9);
      sub_10017D470(a2, context);
      return;
    }

    if (!v23)
    {
      return;
    }

    v26 = *(a3 + 48);
    *buf = 138412546;
    v29 = cf;
    v30 = 1024;
    LODWORD(v31) = v26;
    v17 = "Unknown value type for class %@ (filter %d)";
    v18 = v22;
    v19 = 18;
LABEL_28:
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
    return;
  }

  sub_1000103CC(-50, v3, @"attempt to import an identity");
}

uint64_t sub_10017D3E8(const __CFString *a1)
{
  result = CFStringGetLength(a1);
  if (result == 4)
  {
    memset(buffer, 170, 5);
    result = CFStringGetCString(a1, buffer, 5, 0x8000100u);
    if (result)
    {
      return kdebug_trace();
    }
  }

  return result;
}

void sub_10017D470(CFTypeRef cf, uint64_t **a2)
{
  v3 = a2[1];
  v5 = v3[1];
  v4 = (v3 + 1);
  if (v5)
  {
    return;
  }

  if (!cf)
  {
    sub_1000103CC(-50, v4, @"value %@ is not a dictionary", 0);
    return;
  }

  v7 = BYTE4(v4[4][1].isa);
  v8 = CFGetTypeID(cf);
  TypeID = CFDictionaryGetTypeID();
  v10 = a2[1];
  if (v8 != TypeID)
  {
    sub_1000103CC(-50, v10 + 1, @"value %@ is not a dictionary", cf);
    return;
  }

  v11 = *(v10 + 4);
  v12 = v10[3];
  v13 = *a2;
  v14 = *(v10 + 8);
  if (v11 == -1 && v12 == 0)
  {
    v18 = sub_10001A690(*a2, cf, *(v10 + 8), (v10 + 1));
    if (v18)
    {
      goto LABEL_16;
    }

LABEL_65:
    v34 = 1;
LABEL_66:
    if (a2[1][1])
    {
      v35 = sub_100006274("SecWarning");
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = **a2;
        v37 = a2[1][1];
        *buf = 138478339;
        *&buf[4] = v18;
        *&buf[12] = 2112;
        *&buf[14] = v36;
        *&buf[22] = 2112;
        v67 = v37;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Failed to import an item (%{private}@) of class '%@': %@ - ignoring error.", buf, 0x20u);
      }

      v38 = a2[1];
      v39 = v38[1];
      if (v39)
      {
        v38[1] = 0;
        CFRelease(v39);
      }
    }

    else
    {
      v40 = sub_100006274("import");
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        *&buf[4] = v18;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "imported item: %{private}@", buf, 0xCu);
      }
    }

    if ((v34 & 1) == 0)
    {
      CFRelease(v18);
    }

    return;
  }

  Value = CFDictionaryGetValue(cf, @"v_Data");
  if (!Value)
  {
    sub_1000103CC(-26275, v10 + 1, @"No v_Data in backup dictionary %@", cf);
LABEL_64:
    v18 = 0;
    goto LABEL_65;
  }

  v17 = sub_100163278(kCFAllocatorDefault, v13, Value, v11, v12, v10 + 1);
  v18 = v17;
  if (!v17)
  {
    goto LABEL_65;
  }

  if (!sub_100162EFC(v17, v14, v10 + 1))
  {
    goto LABEL_63;
  }

LABEL_16:
  if (!sub_100016898(v18, 1, a2[1] + 1))
  {
    goto LABEL_63;
  }

  v19 = v18[6];
  if (!v19)
  {
    goto LABEL_52;
  }

  if (*(a2[1] + 12) != 2)
  {
LABEL_32:
    v22 = CFDictionaryGetValue(v19, kSecAttrMultiUser);
    if (qword_10039DFC8 != -1)
    {
      dispatch_once(&qword_10039DFC8, &stru_100338EB0);
    }

    if (v22 && qword_10039DFD0)
    {
      v23 = CFEqual(v22, qword_10039DFD0) != 0;
    }

    else
    {
      v23 = v22 == qword_10039DFD0;
    }

    v24 = a2[1][5];
    if (v24 && *(v24 + 36) == 1)
    {
      if (v23)
      {
        v25 = sub_100006274("SecWarning");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138477827;
          *&buf[4] = v18;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "system keychain not allowed in multi user mode for item: %{private}@", buf, 0xCu);
        }

        goto LABEL_63;
      }

      v28 = *(v24 + 20);
      *buf = 0x104B57A5353A5AA7;
      *&buf[8] = -1803342146;
      *&buf[12] = bswap32(v28);
      v26 = CFDataCreate(0, buf, 16);
    }

    else
    {
      if (!v23)
      {
        if (qword_10039DFD8 != -1)
        {
          dispatch_once(&qword_10039DFD8, &stru_100338EF0);
        }

        v27 = qword_10039DFE0;
        if (!qword_10039DFE0)
        {
          goto LABEL_63;
        }

        CFRetain(qword_10039DFE0);
        goto LABEL_51;
      }

      v26 = CFDataCreateWithBytesNoCopy(0, byte_100294A38, 16, kCFAllocatorNull);
    }

    v27 = v26;
    if (v26)
    {
LABEL_51:
      sub_10001A768(v18, @"musr", v27, (a2[1] + 1));
      CFRelease(v27);
      goto LABEL_52;
    }

LABEL_63:
    CFRelease(v18);
    goto LABEL_64;
  }

  if (!sub_10017A55C(v19, *a2, v7))
  {
    if (!v7 || (v20 = CFDictionaryGetValue(v18[6], kSecAttrAccessible)) == 0 || (v21 = v20, !CFEqual(v20, kSecAttrAccessibleWhenUnlockedThisDeviceOnly)) && !CFEqual(v21, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly) && !CFEqual(v21, kSecAttrAccessibleWhenUnlockedThisDeviceOnly) && !CFEqual(v21, kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly))
    {
      if (!CFDictionaryContainsKey(v18[6], kSecAttrTokenID))
      {
        v19 = v18[6];
        if (v19)
        {
          goto LABEL_32;
        }

LABEL_52:
        v29 = a2[1];
        if (*(v29 + 12) != 1)
        {
          sub_10016A168(v18, cf, v29 + 1);
        }

        cfa = 0;
        v30 = sub_1001634BC(v18, &cfa);
        if (cfa)
        {
          v31 = sub_100006274("SecError");
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = cfa;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "import: failed to get the persistent ref: %@", buf, 0xCu);
          }

          v32 = cfa;
          if (cfa)
          {
            cfa = 0;
            CFRelease(v32);
          }
        }

        if (v30 && CFDataGetLength(v30) == 16)
        {
          v33 = sub_100006274("import");
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138477827;
            *&buf[4] = v18;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Item already has a UUID persistent ref set: %{private}@", buf, 0xCu);
          }
        }

        else
        {
          v41 = CFUUIDCreate(kCFAllocatorDefault);
          bytes = CFUUIDGetUUIDBytes(v41);
          v42 = CFDataCreate(kCFAllocatorDefault, &bytes.byte0, 16);
          v63 = 0;
          sub_10001A804(v18, v42, &v63);
          v43 = sub_100006274("import");
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138478083;
            *&buf[4] = v18;
            *&buf[12] = 2112;
            *&buf[14] = v63;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "SecServerImportItem: generated a new persistentref UUID for item %{private}@: %@", buf, 0x16u);
          }

          if (v41)
          {
            CFRelease(v41);
          }

          if (v42)
          {
            CFRelease(v42);
          }

          v44 = v63;
          if (v63)
          {
            v63 = 0;
            CFRelease(v44);
          }
        }

        v45 = a2[1];
        v46 = sub_100015B5C(v18, kSecAttrSharingGroup);
        if (!v46 || (v47 = v46, v48 = CFGetTypeID(v46), v48 != CFStringGetTypeID()) || !CFStringGetLength(v47))
        {
          v49 = sub_100015B5C(v18, kSecAttrAccessGroup);
          if (v49)
          {
            v50 = v49;
            v51 = CFGetTypeID(v49);
            if (v51 == CFStringGetTypeID())
            {
              if (CFEqual(v50, @"com.apple.cfnetwork"))
              {
                v52 = v18[2];
                if (v52 == sub_100007604(@"inet", &qword_10039E0A0, &unk_10039E098))
                {
                  v55 = sub_100015B5C(v18, kSecAttrServer);
                  v56 = sub_100015B5C(v18, kSecAttrProtocol);
                  v57 = sub_100015B5C(v18, kSecAttrAuthenticationType);
                  if (v55)
                  {
                    v58 = v57;
                    v59 = CFGetTypeID(v55);
                    if (v59 == CFStringGetTypeID())
                    {
                      if (v56)
                      {
                        v60 = CFGetTypeID(v56);
                        if (v60 == CFStringGetTypeID())
                        {
                          if (v58)
                          {
                            v61 = CFGetTypeID(v58);
                            if (v61 == CFStringGetTypeID())
                            {
                              v62 = sub_100006274("item");
                              if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                              {
                                *buf = 138477827;
                                *&buf[4] = v18;
                                _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Make this item syncable: %{private}@", buf, 0xCu);
                              }

                              sub_100163668(v18, v45 + 1);
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

        v53 = a2[1];
        v54 = *v53;
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 0x40000000;
        *&buf[16] = sub_10001E9B0;
        v67 = &unk_100338910;
        v68 = v18;
        v69 = 256;
        if ((sub_10001AA4C(v18, v54, v53 + 1, buf) & 1) == 0)
        {
          sub_10016360C(v18, 0);
          sub_100163B20(v18, *a2[1], 0, 1, a2[1] + 1);
        }

        v34 = 0;
        goto LABEL_66;
      }
    }
  }

  CFRelease(v18);
}

BOOL sub_10017DDC8(const void *a1, int a2)
{
  err = 0;
  cf[1] = 0;
  v16 = 0u;
  v14 = 0u;
  cf[0] = a1;
  DWORD2(v16) = a2;
  v20[0] = sub_100007604(@"genp", &qword_10039E090, &unk_10039E088);
  v20[1] = sub_100007604(@"inet", &qword_10039E0A0, &unk_10039E098);
  v20[2] = sub_100007604(@"keys", &qword_10039E0C0, &unk_10039E0B8);
  v2 = 0;
  v3 = 0;
  v20[3] = sub_100007604(@"cert", &qword_10039E0B0, &unk_10039E0A8);
  do
  {
    v4 = v20[v3];
    v5 = sub_100007698(v4, 0, 0, 0, &err);
    if (!v5)
    {
      break;
    }

    v6 = v5;
    *&v14 = v5;
    v5[13] = -1;
    v7 = sub_10000A574(sub_10017DFE4, &v14, &err);
    sub_10000DF70(v6, 0);
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
      v11 = sub_100006274("SecError");
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

void sub_10017DFE4(sqlite3_stmt *a1, _DWORD *a2)
{
  v3 = a2[10];
  v4 = sub_10000FDB8(a1, 1);
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
    sub_1000103CC(-26275, (*a2 + 40), @"check_generation: Check for underflow");
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

void sub_10017E0AC(uint64_t a1, _BYTE *a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v8 = -1431655766;
  if (aks_generation())
  {
    LOBYTE(v4) = sub_1000103CC(-909, *(a1 + 32), @"No key roll in progress.");
    *(v10 + 24) = v4;
  }

  else
  {
    v5 = *(a1 + 32);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = sub_10017E1C8;
    v6[3] = &unk_100339BB0;
    v6[4] = &v9;
    v7 = *(a1 + 40);
    v4 = sub_100089884(dword_10039E2F8, v5, v6);
    if (v4)
    {
      LOBYTE(v4) = *(v10 + 24);
    }

    else
    {
      *(v10 + 24) = 0;
    }
  }

  *a2 = v4;
  _Block_object_dispose(&v9, 8);
}

void sub_10017E1C8(void *a1)
{
  cf = 0;
  v8 = -1;
  v2 = sub_10017B9F4(a1[5], 0, &v8, 0, &cf);
  if (v2)
  {
    v3 = v2;
    if (cf)
    {
      v4 = sub_100006274("SecError");
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

    *(*(a1[4] + 8) + 24) = sub_10017C94C(a1[5], a1[6], -1, 0, dword_10039E2F8, v3, 0, 1, &cf);
    if (cf)
    {
      v6 = sub_100006274("SecError");
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

const void *sub_10017E368(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = off_10033E8C0;
  v4 = &off_10033C738;
  while (1)
  {
    result = *v4;
    if (!v2 || !result)
    {
      if (result == v2)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    result = CFEqual(result, v2);
    if (result)
    {
      break;
    }

LABEL_7:
    v6 = v3[1];
    ++v3;
    v4 = v6;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  v4 = *v3;
LABEL_8:
  **(a1 + 32) = v4;
  return result;
}

void sub_10017E3E0(id a1)
{
  byte_10039CB18 = _os_feature_enabled_impl();
  v1 = sub_100006274("octagon");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_10039CB18)
    {
      v2 = @"enabled";
    }

    else
    {
      v2 = @"disabled";
    }

    v3 = 138412290;
    v4 = v2;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "SOS Feature is %@ (via feature flags)", &v3, 0xCu);
  }
}

void sub_10017E4C0(id a1)
{
  byte_10039E100 = _os_feature_enabled_impl();
  v1 = sub_100006274("octagon");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_10039E100)
    {
      v2 = "enabled";
    }

    else
    {
      v2 = "disabled";
    }

    v3 = 136315138;
    v4 = v2;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "OctagonSupportsMultiuser is %s", &v3, 0xCu);
  }
}

void sub_10017E5A0(id a1)
{
  byte_10039E110 = _os_feature_enabled_impl();
  v1 = sub_100006274("octagon");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_10039E110)
    {
      v2 = "enabled";
    }

    else
    {
      v2 = "disabled";
    }

    v3 = 136315138;
    v4 = v2;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "DeferSOSFromSignIn is %s", &v3, 0xCu);
  }
}

void sub_10017E680(id a1)
{
  byte_10039E120 = _os_feature_enabled_impl();
  v1 = sub_100006274("octagon");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_10039E120)
    {
      v2 = "enabled";
    }

    else
    {
      v2 = "disabled";
    }

    v3 = 136315138;
    v4 = v2;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "RollIdentityOnMIDRotation is %s", &v3, 0xCu);
  }
}

void sub_10017E760(id a1)
{
  byte_10039E130 = _os_feature_enabled_impl();
  v1 = sub_100006274("keychain");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_10039E130)
    {
      v2 = "enabled";
    }

    else
    {
      v2 = "disabled";
    }

    v3 = 136315138;
    v4 = v2;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "System Keychain Always Supported set via feature flag to %s", &v3, 0xCu);
  }
}

void sub_10017E868()
{
  os_unfair_lock_lock(&unk_10039E150);
  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  os_unfair_lock_unlock(&unk_10039E150);

  CFNotificationCenterPostNotificationWithOptions(DistributedCenter, @"com.apple.security.shared-items-changed", 0, 0, 0);
}

void sub_10017E8CC()
{
  if (qword_10039E158 != -1)
  {
    dispatch_once(&qword_10039E158, &stru_1003421B8);
  }

  v1 = qword_10039E160;

  dispatch_source_merge_data(v1, 1uLL);
}

void sub_10017E924(id a1)
{
  v1 = sub_100088500("SecServerKeychainChanged", 1);
  qword_10039E160 = v1;
  context = dispatch_get_context(v1);
  context[2] = _Block_copy(&stru_1003421F8);

  dispatch_activate(v1);
}

void sub_10017E988(id a1)
{
  v1 = notify_post("com.apple.security.keychainchanged");
  if (v1)
  {
    v2 = v1;
    v3 = sub_100006274("SecError");
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v8 = 136315394;
    v9 = "com.apple.security.keychainchanged";
    v10 = 1024;
    v11 = v2;
    v4 = "notify_post %s returned: %u";
    v5 = v3;
    v6 = 18;
  }

  else
  {
    v7 = sub_100006274("item");
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v8 = 136315138;
    v9 = "com.apple.security.keychainchanged";
    v4 = "Sent %s";
    v5 = v7;
    v6 = 12;
  }

  _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v4, &v8, v6);
}

uint64_t sub_10017EAA4(uint64_t a1, int *a2, CFTypeRef *a3)
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = 1;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = 0;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 0x40000000;
  v24[2] = sub_10017EE7C;
  v24[3] = &unk_100342248;
  v24[5] = &v25;
  v24[6] = a1;
  v24[4] = &v33;
  v6 = sub_10001489C(a1, @"SELECT name FROM sqlite_master WHERE type='table' AND name='tversion'", &v32, v24);
  v7 = v6 & v34[3];
  *(v34 + 24) = v7;
  if (v7)
  {
    if (v26[3])
    {
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 0x40000000;
      v23[2] = sub_10017EF0C;
      v23[3] = &unk_100342290;
      v23[4] = &v33;
      v23[5] = a1;
      v23[6] = a2;
      v8 = sub_10001489C(a1, @"SELECT version FROM tversion", v30 + 3, v23);
      v9 = (v8 & v34[3]);
      *(v34 + 24) &= v8;
      if (v9 == 1 && *a2 >= 9u)
      {
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 0x40000000;
        v22[2] = sub_10017EF9C;
        v22[3] = &unk_1003422D8;
        v22[4] = &v33;
        v22[5] = &v29;
        v22[6] = a2;
        v22[7] = a1;
        sub_10001489C(a1, @"SELECT minor FROM tversion WHERE version = ?", v30 + 3, v22);
        *(v34 + 24) = 1;
      }
    }

    else
    {
      v10 = sub_100006274("upgr");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v30[3];
        *buf = 138412290;
        *v38 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "no tversion table, will setup a new database: %@", buf, 0xCu);
      }

      *a2 = 0;
    }
  }

  else
  {
    sub_10001D9F0(11, a3, @"Failed to read sqlite_master table: %@", v30[3]);
  }

  v12 = sub_100006274("upgr");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *a2;
    v14 = *(v34 + 24);
    v15 = v30[3];
    *buf = 67109634;
    *v38 = v13;
    *&v38[4] = 1024;
    *&v38[6] = v14;
    v39 = 2112;
    v40 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "database version is: 0x%08x : %d : %@", buf, 0x18u);
  }

  v16 = sub_100006274("upgr");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = getuid();
    v18 = geteuid();
    *buf = 67109376;
    *v38 = v17;
    *&v38[4] = 1024;
    *&v38[6] = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "UID: %d  EUID: %d", buf, 0xEu);
  }

  v19 = v30[3];
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = *(v34 + 24);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  return v20;
}

BOOL sub_10017EE7C(void *a1, sqlite3_stmt *a2)
{
  v3 = a1[6];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_10017F104;
  v5[3] = &unk_100342220;
  v5[4] = a1[5];
  result = sub_100015DAC(v3, a2, 0, v5);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

BOOL sub_10017EF0C(void *a1, sqlite3_stmt *a2)
{
  v3 = a1[5];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_10017F0C0;
  v5[3] = &unk_100342268;
  v5[4] = a1[6];
  v5[5] = a2;
  result = sub_100015DAC(v3, a2, 0, v5);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

BOOL sub_10017EF9C(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(*(a1 + 40) + 8);
  v5 = sqlite3_bind_int(a2, 1, **(a1 + 48));
  result = sub_10000CAD8(v5, a2, (v4 + 24), @"bind_int[%d]", 1);
  if (result)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = sub_10017F070;
    v9[3] = &unk_1003422B0;
    v8 = *(a1 + 48);
    v7 = *(a1 + 56);
    v9[4] = a2;
    v9[5] = v8;
    result = sub_100015DAC(v7, a2, 0, v9);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

sqlite3_int64 sub_10017F070(uint64_t a1, _BYTE *a2)
{
  result = sqlite3_column_int64(*(a1 + 32), 0);
  **(a1 + 40) |= (result << 8) & 0xFF00FF00;
  *a2 = 1;
  return result;
}

uint64_t sub_10017F0C0(uint64_t a1, _BYTE *a2)
{
  result = sqlite3_column_int(*(a1 + 40), 0);
  **(a1 + 32) = result;
  if (result)
  {
    *a2 = 1;
  }

  return result;
}

uint64_t sub_10017F104(uint64_t result, _BYTE *a2)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a2 = 1;
  return result;
}

uint64_t sub_10017F11C(uint64_t a1)
{
  v7.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v7.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v7, 0);
  v2 = 1000 * (v7.tv_sec - *a1) + *(a1 + 8) / -1000 + v7.tv_usec / 1000;
  v3 = 1;
  if (v2 >= 101)
  {
    v4 = 1000 * (v7.tv_sec - *a1) + *(a1 + 8) / -1000 + v7.tv_usec / 1000;
    do
    {
      v2 = v4 / 0xA;
      v3 *= 10;
      v5 = v4 > 0x3F1;
      v4 /= 0xAuLL;
    }

    while (v5);
  }

  return v3 * v2;
}

BOOL sub_10017F1E4(void *a1, sqlite3_stmt *a2)
{
  v2 = *(a1[4] + 8);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_10017FC44;
  v5[3] = &unk_100342300;
  v3 = a1[6];
  v5[4] = a1[5];
  v5[5] = a2;
  v5[6] = a1[7];
  return sub_100015DAC(v3, a2, (v2 + 24), v5);
}

void sub_10017F26C(uint64_t a1, uint64_t a2)
{
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v14 = 0;
    v4 = **(a1 + 40);
    if (qword_10039DFE8 != -1)
    {
      dispatch_once(&qword_10039DFE8, &stru_100338F30);
    }

    v5 = sub_100007698(v4, qword_10039DFF0, 0, 0, &v14);
    v6 = v14;
    if (v14)
    {
      v14 = 0;
      CFRelease(v6);
    }

    v7 = *(a1 + 48);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 0x40000000;
    v13[2] = sub_10017F414;
    v13[3] = &unk_1003423C8;
    v13[4] = a2;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = sub_10017F428;
    v9[3] = &unk_1003423F0;
    v9[4] = *(a1 + 32);
    v9[5] = a2;
    v10 = *(a1 + 56);
    v11 = v7;
    v12 = v5;
    sub_100014718(v5, v7, &v14, &stru_100342368, &stru_1003423A8, 0, v13, v9);
    if (v5)
    {
      sub_10000DF70(v5, 0);
    }

    v8 = v14;
    if (v14)
    {
      v14 = 0;
      CFRelease(v8);
    }
  }
}

void sub_10017F428(uint64_t a1, void **a2)
{
  v30 = 0;
  cf = 0;
  v4 = qword_10039E168;
  qword_10039E168 = 0;
  v5 = *(a1 + 40);
  if (v5)
  {
    CFRetain(*(a1 + 40));
  }

  qword_10039E168 = v5;
  v6 = sub_1001634BC(a2, &cf);
  if (cf)
  {
    v7 = sub_100006274("SecError");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = cf;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "upgr-phase3: failed to get persistent ref error: %@", buf, 0xCu);
    }

    if (sub_10017F9BC(cf, *(a1 + 48)))
    {
LABEL_7:
      *(*(*(a1 + 32) + 8) + 24) = 1;
      **(a1 + 56) = 1;
      if (qword_10039E168)
      {
        CFRelease(qword_10039E168);
      }

      qword_10039E168 = v4;
      v8 = cf;
      if (cf)
      {
        cf = 0;
LABEL_65:
        CFRelease(v8);
        return;
      }

      return;
    }

    v9 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v9);
    }
  }

  v10 = sub_100163560(a2, &v30);
  if (v30)
  {
    v11 = sub_100006274("SecError");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v30;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "upgr-phase3: failed to get rowID error: %@", buf, 0xCu);
    }
  }

  v12 = *a2[2];
  v13 = @"YES";
  if (v6 && CFDataGetLength(v6) == 16)
  {
    v13 = @"NO";
  }

  v14 = sub_100006274("upgr-phase3");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v33 = v10;
    v34 = 2112;
    *v35 = v12;
    *&v35[8] = 2112;
    *&v35[10] = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "inspecting item at row %lld in table %@, should add persistref uuid?: %@", buf, 0x20u);
  }

  v15 = v30;
  if (v30)
  {
    v30 = 0;
    CFRelease(v15);
  }

  v16 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v16);
  }

  if (CFStringCompare(v13, @"YES", 0))
  {
    return;
  }

  v17 = sub_100006274("upgr-phase3");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v33 = v10;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "upgrading item persistentref at row id %lld", buf, 0xCu);
  }

  v18 = sub_100019F7C();
  v19 = sub_10001A768(a2, kSecAttrPersistentReference, v18, &cf);
  if (v18)
  {
    CFRelease(v18);
  }

  if (cf)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  if ((v20 & 1) == 0)
  {
    v25 = sub_100006274("SecError");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138478083;
      v33 = a2;
      v34 = 2112;
      *v35 = cf;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "upgr-phase3: failed to set persistentref for item:%{private}@, error:%@", buf, 0x16u);
    }

    if (cf)
    {
      if (sub_10017F9BC(cf, *(a1 + 48)))
      {
        goto LABEL_7;
      }

      v26 = cf;
      if (cf)
      {
        cf = 0;
        goto LABEL_60;
      }
    }

    else if ((v19 & 1) == 0)
    {
      v27 = sub_100006274("SecError");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "upgr-phase3: SecDbItemSetValueWithName returned false", buf, 2u);
      }

      *(*(*(a1 + 32) + 8) + 24) = 1;
      **(a1 + 56) = 1;
      if (qword_10039E168)
      {
        CFRelease(qword_10039E168);
      }

      qword_10039E168 = v4;
      return;
    }

LABEL_63:
    if (!v4)
    {
      return;
    }

    v8 = v4;
    goto LABEL_65;
  }

  v29 = 0;
  v21 = sub_10001CECC(a2, a2, *(a1 + 64), 0, *(*(a1 + 72) + 155), &v29);
  v22 = v29;
  v23 = sub_100006274("upgr-phase3");
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  if (v21 && !v22)
  {
    if (v24)
    {
      *buf = 138478083;
      v33 = a2;
      v34 = 1024;
      *v35 = 1;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "updated item %{private}@: %d", buf, 0x12u);
    }

    goto LABEL_61;
  }

  if (v24)
  {
    *buf = 138478339;
    v33 = a2;
    v34 = 1024;
    *v35 = v21;
    *&v35[4] = 2112;
    *&v35[6] = v29;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "phase3: failed to update item %{private}@: %d, error: %@", buf, 0x1Cu);
  }

  if (!v29)
  {
    goto LABEL_61;
  }

  if (!sub_10017F9BC(v29, *(a1 + 48)))
  {
    v26 = v29;
    if (!v29)
    {
      goto LABEL_61;
    }

    v29 = 0;
LABEL_60:
    CFRelease(v26);
LABEL_61:
    v28 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v28);
    }

    goto LABEL_63;
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  **(a1 + 56) = 1;
  if (qword_10039E168)
  {
    CFRelease(qword_10039E168);
  }

  qword_10039E168 = v4;
  v8 = v29;
  if (v29)
  {
    v29 = 0;
    goto LABEL_65;
  }
}

BOOL sub_10017F9BC(__CFError *a1, __CFError **a2)
{
  Code = CFErrorGetCode(a1);
  if (Code > -25331)
  {
    switch(Code)
    {
      case -25330:
        v10 = sub_100006274("upgr-phase3");
        result = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          return result;
        }

        v13 = 138412290;
        v14 = a1;
        v7 = "authentication needed: %@";
        break;
      case -25308:
        v11 = sub_100006274("upgr-phase3");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 138412290;
          v14 = a1;
          v12 = "interaction not allowed: %@";
          goto LABEL_25;
        }

LABEL_26:
        if (a1)
        {
          CFRetain(a1);
          if (a2 && !*a2)
          {
            *a2 = a1;
          }

          else
          {
            CFRelease(a1);
          }
        }

        return 1;
      case -25291:
        v10 = sub_100006274("upgr-phase3");
        result = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          return result;
        }

        v13 = 138412290;
        v14 = a1;
        v7 = "AKS is unavailable: %@";
        break;
      default:
        goto LABEL_18;
    }

    v8 = v10;
    v9 = 12;
    goto LABEL_17;
  }

  if (Code == -536870186 || Code == -536870184)
  {
    v11 = sub_100006274("upgr-phase3");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = a1;
      v12 = "AKS is not ready/timing out: %@";
LABEL_25:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, &v13, 0xCu);
      goto LABEL_26;
    }

    goto LABEL_26;
  }

  if (Code != -26275)
  {
LABEL_18:
    if (!a1)
    {
      return 0;
    }

    CFRetain(a1);
    if (!a2 || *a2)
    {
      CFRelease(a1);
      return 0;
    }

    result = 0;
    *a2 = a1;
    return result;
  }

  v5 = sub_100006274("upgr-phase3");
  result = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    LOWORD(v13) = 0;
    v7 = "failed to decode keychain item";
    v8 = v5;
    v9 = 2;
LABEL_17:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v13, v9);
    return 0;
  }

  return result;
}

void sub_10017FC44(uint64_t a1, _BYTE *a2)
{
  v4 = sqlite3_column_int64(*(a1 + 40), 0);
  valuePtr = v4;
  v5 = sub_100006274("upgr-phase3");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "picked up rowid: %lld that needs a persistref", buf, 0xCu);
  }

  v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  v7 = v6;
  if (qword_10039E168 && CFNumberCompare(v6, qword_10039E168, 0) != kCFCompareGreaterThan)
  {
LABEL_7:
    if (!v7)
    {
      return;
    }

    goto LABEL_8;
  }

  if (CFArrayGetCount(*(*(*(a1 + 32) + 8) + 24)) <= 99)
  {
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v7);
    goto LABEL_7;
  }

  *a2 = 1;
  **(a1 + 48) = 1;
  if (!v7)
  {
    return;
  }

LABEL_8:
  CFRelease(v7);
}

const __CFString *sub_10017FD94()
{
  if (os_variant_is_recovery())
  {
    v0 = @"keychain-recovery-2.db";
    v1 = 1;
  }

  else
  {
    if (qword_10039E1D0 != -1)
    {
      dispatch_once(&qword_10039E1D0, &stru_100343638);
    }

    if (byte_10039E1C8)
    {
      v2 = @"keychain-2.db";
    }

    else
    {
      v2 = @"keychain-2-debug.db";
    }

    if (qword_10039DD70 != -1)
    {
      dispatch_once(&qword_10039DD70, &stru_100335EA0);
    }

    v3 = byte_10039DD68;
    syslog(5, "SecCopyURLForFileInParameterizedKeychainDirectory: forceUserScope:%d", byte_10039DD68);
    v1 = v3 ^ 1;
    v0 = v2;
  }

  v4 = sub_100089E34(v1, v0);
  v5 = v4;
  if (v4)
  {
    v6 = CFURLCopyFileSystemPath(v4, kCFURLPOSIXPathStyle);
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_100006274("SecServerKeychainCopyPath");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (v6)
    {
      CStringPtr = CFStringGetCStringPtr(v6, 0x8000100u);
      v9 = "<unknown>";
      if (CStringPtr)
      {
        v9 = CStringPtr;
      }
    }

    else
    {
      v9 = "<null>";
    }

    *buf = 136315138;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "path: %s", buf, 0xCu);
  }

  return v6;
}

uint64_t sub_10017FF48(uint64_t a1, uint8_t *a2, uint64_t a3, int a4, _BYTE *a5, CFTypeRef *a6)
{
  v78 = 0;
  if (!sub_100089A14())
  {
    goto LABEL_5;
  }

  if (qword_10039DD70 != -1)
  {
    dispatch_once(&qword_10039DD70, &stru_100335EA0);
  }

  if ((byte_10039DD68 & 1) == 0)
  {
    if (qword_10039DD60 != -1)
    {
      dispatch_once(&qword_10039DD60, &stru_100335E60);
    }

    v11 = byte_10039DD5C;
  }

  else
  {
LABEL_5:
    v11 = 0;
  }

  v72 = a4;
  if (a4)
  {
    if (!v11)
    {
      goto LABEL_20;
    }

    v12 = sub_100006274("upgr");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "created new db, setting edu bag version", buf, 2u);
    }

    sub_100180D0C(a3);
    goto LABEL_14;
  }

  v13 = sub_10017EAA4(a3, &v78, a6);
  if ((v13 & v11) == 1)
  {
    v14 = sub_100180C54(a3);
    v15 = sub_100006274("upgr");
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if ((v14 & 1) == 0)
    {
      if (v16)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "must transcrypt", buf, 2u);
      }

      block = 0;
      *buf = -1431655766;
      lock_state = aks_get_lock_state();
      if (sub_10001C4BC(lock_state, &block, @"aks_get_lock_state failed: %x", lock_state))
      {
        if ((buf[0] & 1) == 0)
        {
          v71 = sub_100006274("upgr");
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "using default keybag", buf, 2u);
          }

          dword_10039E2F8 = 0;
          v11 = 1;
          goto LABEL_20;
        }
      }

      else
      {
        v49 = sub_100006274("upgr");
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = block;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "error querying system keybag lock state: %@", buf, 0xCu);
        }

        v50 = block;
        if (block)
        {
          block = 0;
          CFRelease(v50);
        }
      }

      v62 = sub_100006274("SecError");
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Cannot transcrypt because system keybag not (yet) unlocked!! 🫸", buf, 2u);
      }

      sub_1000103CC(-25291, a6, @"transcryption error: system keybag not (yet) unlocked");
      v11 = 0;
LABEL_105:
      v63 = sub_100006274("SecError");
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v64 = "";
        if (v72)
        {
          v64 = "from v0 ";
        }

        if (a6)
        {
          v65 = *a6;
        }

        else
        {
          v65 = 0;
        }

        *buf = 136315394;
        *&buf[4] = v64;
        *&buf[12] = 2112;
        *&buf[14] = v65;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Upgrade %sfailed: %@", buf, 0x16u);
      }

      v60 = 0;
      if (!a6)
      {
        goto LABEL_99;
      }

      goto LABEL_113;
    }

    if (v16)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "already transcrypted", buf, 2u);
LABEL_14:
      v11 = 0;
      goto LABEL_20;
    }
  }

  v11 = 0;
  if (!v13)
  {
    goto LABEL_105;
  }

LABEL_20:
  v74 = v11;
  v17 = v78;
  block = 0;
  p_block = &block;
  v90 = 0x2000000000;
  LOBYTE(v91) = 0;
  values = 0;
  p_values = &values;
  v86 = 0x2000000000;
  v87 = 1;
  v80 = 0;
  v81 = &v80;
  v82 = 0x2000000000;
  v83 = 0;
  if (a6)
  {
    *a6 = 0;
  }

  if (v17 != 2828)
  {
    if (v17 == 12 && (v17 & 0xFC00u) >= 0xB01)
    {
      v18 = sub_100006274("upgr");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "skipping upgrade since minor is newer", buf, 2u);
      }
    }

    else
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 0x40000000;
      *&buf[16] = sub_100180E84;
      *&buf[24] = &unk_100342C70;
      *&v102 = &values;
      *(&v102 + 1) = &v80;
      v106 = v17;
      v107 = 2828;
      v104 = dword_10033E8B8;
      v105 = a5;
      *&v103 = &block;
      *(&v103 + 1) = a3;
      v19 = sub_100015080(a3, 2, &v83, buf);
      v20 = (v19 & p_values[3]);
      *(p_values + 24) &= v19;
      if (v20 == 1 && *(p_block + 24) == 1)
      {
        SecCoreAnalyticsSendValue();
      }
    }
  }

  v76 = a6;
  v77 = a5;
  v75 = a1;
  if (*(p_values + 24) != 1)
  {
LABEL_35:
    v22 = sub_100006274("SecError");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v81[3];
      *v95 = 138412290;
      v96 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "upgrade: error occurred, considering marking database as corrupt: %@", v95, 0xCu);
    }

    v24 = v81[3];
    if (v24)
    {
      Domain = CFErrorGetDomain(v24);
      Code = CFErrorGetCode(v81[3]);
      if (Domain && CFEqual(Domain, @"com.apple.utilities.sqlite3"))
      {
        if (Code - 5 < 2 || Code == -536870184 || Code == 13 || Code == -25291)
        {
          goto LABEL_49;
        }

        v27 = -536870186;
      }

      else
      {
        if (Code == -536870186 || Code == -536870184)
        {
          goto LABEL_49;
        }

        v27 = -25291;
      }

      if (Code == v27)
      {
LABEL_49:
        v28 = sub_100006274("SecError");
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = v81[3];
          *v95 = 138412290;
          v96 = v29;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "upgrade: not marking keychain database corrupt for error: %@", v95, 0xCu);
        }

        v30 = v81[3];
        if (v30)
        {
          v81[3] = 0;
          CFRelease(v30);
        }

        goto LABEL_93;
      }

      v51 = sub_100006274("SecError");
      if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_83;
      }

      v52 = v81[3];
      *v95 = 138412290;
      v96 = v52;
      v32 = "upgrade: unable to complete upgrade, marking DB as corrupt: %@";
      v33 = v51;
      v34 = 12;
    }

    else
    {
      v31 = sub_100006274("SecError");
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
LABEL_83:
        v53 = sub_100006274("SecError");
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *v95 = 0;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "upgrade: marking database as corrupt", v95, 2u);
        }

        v54 = v81[3];
        v55 = sub_100006274("SecEmergency");
        if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
        {
          *v95 = 138412290;
          v96 = v54;
          _os_log_fault_impl(&_mh_execute_header, v55, OS_LOG_TYPE_FAULT, "SecDBCorrupt: %@", v95, 0xCu);
        }

        *(a3 + 40) = 1;
        v56 = *(a3 + 56);
        if (v56 != v54)
        {
          if (!v54 || (CFRetain(v54), (v56 = *(a3 + 56)) != 0))
          {
            CFRelease(v56);
          }

          *(a3 + 56) = v54;
        }

        SecCoreAnalyticsSendValue();
        goto LABEL_93;
      }

      *v95 = 0;
      v32 = "upgrade: unable to complete upgrade and no error object returned, marking DB as corrupt";
      v33 = v31;
      v34 = 2;
    }

    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, v32, v95, v34);
    goto LABEL_83;
  }

  if (v81[3])
  {
    v21 = sub_100006274("SecWarning");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v95 = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "upgrade: error has been set but status is true", v95, 2u);
    }

    *(p_values + 24) = 0;
    goto LABEL_35;
  }

  if (*(p_block + 24) == 1)
  {
    LKAReportKeychainUpgradeOutcomeWithError();
  }

  if (v17 == 2828 || *(p_block + 24) == 1)
  {
    sub_10018244C(a3);
    v35 = off_10033E8C0;
    v36 = &off_10033C738;
    do
    {
      v37 = v36[2];
      if (v37)
      {
        v38 = v36 + 3;
        do
        {
          if ((~LODWORD(v37->data) & 6) == 0)
          {
            cf = 0;
            v39 = *v35;
            v40 = CFStringCreateWithFormat(0, 0, @"CREATE INDEX IF NOT EXISTS %@%@ ON %@(%@);", **v35, v37->isa, **v35, v37->isa);
            v41 = sub_1000152F0(a3, v40, &cf);
            if (v40)
            {
              CFRelease(v40);
            }

            if ((v41 & 1) == 0)
            {
              v42 = sub_100006274("SecError");
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                v43 = *v39;
                isa = v37->isa;
                *v95 = 138412802;
                v96 = v43;
                v97 = 2112;
                v98 = isa;
                v99 = 2112;
                v100 = cf;
                _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "upgrade: unable to opportunistically create index (%@,%@): %@", v95, 0x20u);
              }
            }

            v45 = cf;
            if (cf)
            {
              cf = 0;
              CFRelease(v45);
            }
          }

          v46 = *v38++;
          v37 = v46;
        }

        while (v46);
      }

      v47 = v35[1];
      ++v35;
      v36 = v47;
    }

    while (v47);
  }

LABEL_93:
  v57 = v81;
  v58 = v81[3];
  a6 = v76;
  a5 = v77;
  a1 = v75;
  if (v58)
  {
    if (!v76 || (*v76 = CFRetain(v58), v57 = v81, (v58 = v81[3]) != 0))
    {
      v57[3] = 0;
      CFRelease(v58);
    }
  }

  v59 = *(p_values + 24);
  _Block_object_dispose(&v80, 8);
  _Block_object_dispose(&values, 8);
  _Block_object_dispose(&block, 8);
  if ((v59 & 1) == 0)
  {
    v11 = v74;
    goto LABEL_105;
  }

  v60 = 1;
  v11 = v74;
  if (!v76)
  {
LABEL_99:
    v61 = 0;
    goto LABEL_114;
  }

LABEL_113:
  v61 = *a6;
LABEL_114:
  *(*(*(a1 + 32) + 8) + 24) = v61;
  if (v11)
  {
    values = @"*";
    v102 = 0u;
    v103 = 0u;
    memset(buf, 0, sizeof(buf));
    *&buf[8] = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
    *&buf[16] = 1;
    buf[18] = 0;
    block = _NSConcreteStackBlock;
    p_block = 0x40000000;
    v90 = sub_100182968;
    v91 = &unk_100342FE0;
    v92 = buf;
    v93 = a6;
    v94 = a3;
    sub_1000141DC(a3, 2, a6, &block);
    v66 = *&buf[8];
    if (*&buf[8])
    {
      *&buf[8] = 0;
      CFRelease(v66);
    }

    v67 = sub_100006274("upgr");
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(block) = 0;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "transcrypted, setting flag to remember we've already done so", &block, 2u);
    }

    sub_100180D0C(a3);
    v68 = sub_100006274("upgr");
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(block) = 0;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "transcrypted, using system keychain handle", &block, 2u);
    }

    dword_10039E2F8 = -6;
  }

  if (v60 && (!a5 || (*a5 & 1) == 0))
  {
    global_queue = dispatch_get_global_queue(0, 0);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_100182BA0;
    *&buf[24] = &unk_1003424F0;
    *&v102 = a2;
    dispatch_async(global_queue, buf);
    if (byte_10039DF08 == 1)
    {
      dispatch_async(global_queue, &stru_100342530);
    }

    block = _NSConcreteStackBlock;
    p_block = 0x40000000;
    v90 = sub_100182CA0;
    v91 = &unk_100342550;
    v92 = a2;
    dispatch_async(global_queue, &block);
  }

  return v60;
}

uint64_t sub_100180C54(uint64_t a1)
{
  v1 = sub_100019404(a1, @"PRAGMA user_version", 0) & 1;
  v2 = sub_100006274("edutranscrypted");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "got: %{BOOL}d", v4, 8u);
  }

  return v1;
}

void sub_100180D0C(uint64_t a1)
{
  cf = 0;
  v2 = sub_100019404(a1, @"PRAGMA user_version", 0);
  v3 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"PRAGMA user_version = %d", v2 | 1u);
  v4 = sub_1000152F0(a1, v3, &cf);
  if ((v4 & 1) == 0)
  {
    v5 = sub_100006274("SecError");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = cf;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setDbUserVersion failed: %@", buf, 0xCu);
    }
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if ((v4 & 1) == 0)
  {
    v6 = sub_100006274("edutranscrypted");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = cf;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "failed to set DB user version: %@", buf, 0xCu);
    }

    v7 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v7);
    }
  }
}

void sub_100180E84(uint64_t a1, CFMutableStringRef a2)
{
  v3 = a1;
  v148 = 0;
  v4 = sub_10017EAA4(*(a1 + 56), &v148, (*(*(a1 + 40) + 8) + 24));
  *(*(*(v3 + 32) + 8) + 24) = v4;
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = *(v3 + 80);
  if (v5 != v148)
  {
    v118 = *(*(v3 + 40) + 8);
    v119 = *(v118 + 24);
    if (v119)
    {
      *(v118 + 24) = 0;
      CFRelease(v119);
    }

    v18 = 0;
    *(*(*(v3 + 32) + 8) + 24) = 1;
    goto LABEL_155;
  }

  v6 = *(v3 + 64);
  v7 = v6[1];
  if ((*v6 | (v7 << 8)) == v5)
  {
    goto LABEL_15;
  }

  if (!v5)
  {
    *(*(*(v3 + 32) + 8) + 24) = sub_100179A50(*(v3 + 56), v6, 0, 1, *(*(v3 + 40) + 8) + 24);
    sub_10018244C(*(v3 + 56));
    v120 = *(v3 + 84);
    v121 = *(*(*(v3 + 40) + 8) + 24);
LABEL_14:
    LKAReportKeychainUpgradeOutcomeWithError();
    goto LABEL_15;
  }

  v8 = *(v3 + 80);
  v148 = v8;
  v9 = *v6 | (v7 << 8);
  if (v5 >= 0x10000 && v8 != v9)
  {
    sub_10001D9F0(11, (*(*(v3 + 40) + 8) + 24), @"Half migrated but obsolete DB found: found 0x%x(0x%x) but 0x%x is needed", v5, HIWORD(v5), v9);
    *(*(*(v3 + 32) + 8) + 24) = 0;
    v122 = *(v3 + 84);
    goto LABEL_14;
  }

  v10 = &off_100294000;
  v11 = HIWORD(v5);
  v136 = HIWORD(v5);
  v137 = v3;
  v138 = a2;
  if (!HIWORD(v5))
  {
    v148 = v9;
    v12 = dword_10033E8B8;
    v13 = &off_100341798;
    v14 = dword_10033E8B8;
    while ((*v14 | (v14[1] << 8)) != v8)
    {
      v15 = *v13++;
      v14 = v15;
      if (!v15)
      {
        sub_10001D9F0(11, (*(*(v3 + 40) + 8) + 24), @"no schema for version: 0x%x", v5);
        *(*(*(v3 + 32) + 8) + 24) = 0;
        v16 = sub_100006274("SecError");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v8;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "no schema for version 0x%x", buf, 8u);
        }

        v17 = *(v3 + 84);
        goto LABEL_14;
      }
    }

    HIDWORD(v132) = v5;
    v19 = sub_100006274("upgr");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = **(v3 + 64) | (*(*(v3 + 64) + 4) << 8);
      *buf = 67109376;
      *&buf[4] = v8;
      *&buf[8] = 1024;
      *&buf[10] = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Upgrading from version 0x%x to 0x%x", buf, 0xEu);
    }

    v133 = v8;
    kdebug_trace();
    v144 = *(v3 + 56);
    v21 = *(*(v3 + 40) + 8);
    v23 = *v14;
    v22 = v14[1];
    v188 = 0;
    v189 = &v188;
    v190 = 0x2000000000;
    v191 = 1;
    v184 = 0;
    v185 = &v184;
    v186 = 0x2000000000;
    v187 = 0;
    v183.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    *&v183.tv_usec = 0xAAAAAAAAAAAAAAAALL;
    gettimeofday(&v183, 0);
    v206.location = 48;
    v206.length = 57;
    v24 = CFCharacterSetCreateWithCharactersInRange(0, v206);
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, 0);
    v25 = *(v14 + 1);
    if (v25)
    {
      v26 = 0;
      v27 = (v14 + 4);
      a2 = Mutable;
      while (1)
      {
        v28 = sub_100085F34(*v25, v24);
        if (CFDictionaryContainsKey(Mutable, v28))
        {
          break;
        }

        CFDictionarySetValue(Mutable, v28, v26);
        if (v28)
        {
          CFRelease(v28);
        }

        v25 = *(v27 + v26++);
        if (!v25)
        {
          goto LABEL_24;
        }
      }

LABEL_89:
      _os_assert_log();
      _os_crash();
      __break(1u);
LABEL_90:
      v140 = 0;
      goto LABEL_91;
    }

LABEL_24:
    v142 = (v21 + 24);
    v29 = v23 | (v22 << 8);
    v30 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, 0);
    v31 = 0;
    v32 = &off_10033C738;
    v27 = Mutable;
    do
    {
      v33 = sub_100085F34(*v32, v24);
      if (CFDictionaryContainsKey(v30, v33))
      {
        _os_assert_log();
        _os_crash();
        __break(1u);
        goto LABEL_89;
      }

      CFDictionarySetValue(v30, v33, v31);
      if (v33)
      {
        CFRelease(v33);
      }

      v32 = *&dword_10033E8B8[2 * v31 + 4];
      v31 = v31 + 1;
    }

    while (v31 != 27);
    if (v24)
    {
      CFRelease(v24);
    }

    v34 = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
    context = _NSConcreteStackBlock;
    p_context = 0x40000000;
    v177 = sub_100183220;
    v178 = &unk_100342C90;
    v179 = v30;
    v180 = v14;
    v181 = dword_10033E8B8;
    v182 = v34;
    CFDictionaryApplyFunction(Mutable, sub_100183F90, &context);
    a2 = CFStringCreateMutable(0, 0);
    v35 = CFArrayCreateMutable(0, 0, 0);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_100183344;
    v199 = &unk_100342CB0;
    v200 = Mutable;
    v201 = v14;
    v202 = v30;
    v203 = dword_10033E8B8;
    v204 = a2;
    v205 = v35;
    CFSetApplyFunction(v34, sub_10017F3FC, buf);
    v167 = _NSConcreteStackBlock;
    v168 = 0x40000000;
    v169 = sub_1001833E0;
    v170 = &unk_100342CD0;
    v171 = v34;
    v172 = v30;
    v173 = v14;
    v174 = a2;
    CFDictionaryApplyFunction(Mutable, sub_100183F90, &v167);
    v158 = _NSConcreteStackBlock;
    v159 = 0x40000000;
    v160 = sub_100183458;
    v161 = &unk_100342CF0;
    cf = v35;
    theSet = v34;
    v162 = v34;
    v163 = Mutable;
    v164 = dword_10033E8B8;
    v165 = a2;
    v166 = v35;
    theDict = v30;
    CFDictionaryApplyFunction(v30, sub_100183F90, &v158);
    v36 = v142;
    LODWORD(v132) = v29;
    if (CFStringGetLength(a2) < 1 || (v37 = sub_1000152F0(v144, a2, v142), v38 = (v37 & v189[3]), *(v189 + 24) &= v37, v38 == 1))
    {
      if (a2)
      {
        CFRelease(a2);
      }

      a2 = CFStringCreateMutable(0, 0);
      v39 = off_10033E8C0;
      v40 = &off_10033C738;
      do
      {
        v41 = v40[2];
        if (v41)
        {
          v42 = v40 + 3;
          do
          {
            if ((~LODWORD(v41->data) & 6) == 0)
            {
              v43 = *v39;
              v44 = **v39;
              CFStringAppendFormat(a2, 0, @"DROP INDEX IF EXISTS %@%@;", v44, v41->isa);
              if (LODWORD(v41->info) == 11)
              {
                v45 = *v43;
                CFStringAppendFormat(a2, 0, @"DROP INDEX IF EXISTS %@%@0;", *v43, v41->isa);
              }
            }

            v46 = *v42++;
            v41 = v46;
          }

          while (v46);
        }

        v47 = v39[1];
        ++v39;
        v40 = v47;
      }

      while (v47);
      v36 = v142;
      v48 = sub_1000152F0(v144, a2, v142);
      v49 = v48 & v189[3];
      *(v189 + 24) = v49;
      if (v49)
      {
        if (a2)
        {
          CFRelease(a2);
        }

        v50 = sub_100179A50(v144, dword_10033E8B8, cf, 0, v142);
        v51 = (v50 & v189[3]);
        *(v189 + 24) &= v50;
        if (v51 == 1)
        {
          v12 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
          v149 = _NSConcreteStackBlock;
          v150 = 0x40000000;
          v151 = sub_100183500;
          v152 = &unk_100342DD8;
          v153 = v12;
          CFSetApplyFunction(v34, sub_10017F3FC, &v149);
          a2 = 0;
          v52 = 0;
          v24 = 0;
          v140 = 0;
          v139 = v12;
          while (1)
          {
            if (v52 >= CFArrayGetCount(v12))
            {
              if (a2)
              {
                CFRelease(a2);
              }

              a2 = CFStringCreateMutable(0, 0);
              v192.tv_sec = _NSConcreteStackBlock;
              *&v192.tv_usec = 0x40000000;
              v193 = sub_100183948;
              v194 = &unk_100342DB8;
              v195 = v27;
              v196 = v14;
              v197 = a2;
              CFSetApplyFunction(theSet, sub_10017F3FC, &v192);
              if (CFStringGetLength(a2) >= 1)
              {
                v74 = sub_1000152F0(v144, a2, v36);
                v75 = v74 & v189[3];
                *(v189 + 24) = v75;
                v10 = &off_100294000;
                if ((v75 & 1) == 0)
                {
LABEL_162:
                  v117 = *v36;
                  LKAReportKeychainUpgradeOutcomeWithError();
                }

LABEL_92:
                v76 = *(v189 + 24);
                v77 = 1;
                if (v185[3] >= 101)
                {
                  v78 = v185[3];
                  do
                  {
                    v77 *= 10;
                    v79 = v78 > 0x3F1;
                    v78 /= 0xAuLL;
                  }

                  while (v79);
                }

                sub_10017F11C(&v183);
                SecCoreAnalyticsSendValue();
                SecCoreAnalyticsSendValue();
                if (v140)
                {
                  sub_10000DF70(v140, 0);
                }

                v3 = v137;
                if (a2)
                {
                  CFRelease(a2);
                }

                if (cf)
                {
                  CFRelease(cf);
                }

                a2 = v138;
                if (v24)
                {
                  v80 = *v24;
                  if (*v24)
                  {
                    *v24 = 0;
                    CFRelease(v80);
                  }

                  free(v24);
                }

                if (v12)
                {
                  CFRelease(v12);
                }

                if (theSet)
                {
                  CFRelease(theSet);
                }

                if (v27)
                {
                  CFRelease(v27);
                }

                if (theDict)
                {
                  CFRelease(theDict);
                }

                v81 = *(v189 + 24);
                _Block_object_dispose(&v184, 8);
                _Block_object_dispose(&v188, 8);
                *(*(*(v137 + 32) + 8) + 24) = v81;
                if (v81)
                {
                  kdebug_trace();
                  v11 = v133;
                  v5 = HIDWORD(v132);
                  goto LABEL_115;
                }

                v130 = sub_100006274("SecError");
                if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
                {
                  v131 = *(*(*(v137 + 40) + 8) + 24);
                  *buf = 138412290;
                  *&buf[4] = v131;
                  v125 = "upgrade: Upgrade phase1 failed: %@";
                  v126 = v130;
                  v127 = 12;
LABEL_176:
                  _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, v125, buf, v127);
                }

                goto LABEL_15;
              }

LABEL_91:
              v10 = &off_100294000;
              goto LABEL_92;
            }

            ValueAtIndex = CFArrayGetValueAtIndex(v12, v52);
            v54 = *&v14[2 * CFDictionaryGetValue(v27, ValueAtIndex) + 2];
            v55 = *&dword_10033E8B8[2 * CFDictionaryGetValue(theDict, ValueAtIndex) + 2];
            v56 = sub_100006274("upgr");
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
            {
              v57 = *v54;
              LODWORD(v192.tv_sec) = 138412290;
              *(&v192.tv_sec + 4) = v57;
              _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Upgrading table %@", &v192, 0xCu);
            }

            if (v54[2])
            {
              v58 = 0;
                ;
              }

              v60 = v58;
              if (!v24)
              {
                goto LABEL_60;
              }
            }

            else
            {
              v60 = 0;
              if (!v24)
              {
                goto LABEL_60;
              }
            }

            v61 = *v24;
            if (*v24)
            {
              *v24 = 0;
              CFRelease(v61);
            }

            free(v24);
LABEL_60:
            v62 = v60;
            v24 = malloc_type_malloc(8 * v60 + 24, 0x1060040E5A1EACFuLL);
            *v24 = CFStringCreateWithFormat(0, 0, @"%@_old", *v54);
            v63 = *(v54 + 8);
            *(v24 + 8) = v63;
            if ((v60 & 0x80000000) == 0)
            {
              do
              {
                v24[v62 + 2] = v54[v62 + 2];
                --v62;
              }

              while (v62 != -1);
            }

            if (v63)
            {
              v27 = Mutable;
              v36 = v142;
              if (v140)
              {
                sub_10000DF70(v140, 0);
              }

              v12 = v139;
              if (qword_10039DFE8 != -1)
              {
                dispatch_once(&qword_10039DFE8, &stru_100338F30);
              }

              v64 = sub_100007698(v24, qword_10039DFF0, 0, 0, v142);
              if (!v64)
              {
                goto LABEL_90;
              }

              v149 = _NSConcreteStackBlock;
              v150 = 0x40000000;
              v151 = sub_100183508;
              v152 = &unk_100342D98;
              v153 = &v184;
              v154 = &v188;
              v155 = v55;
              v156 = v142;
              v157 = v144;
              v140 = v64;
              v65 = sub_100014718(v64, v144, v142, &stru_100342D30, &stru_100342D70, 0, 0, &v149);
              v66 = v65 & v189[3];
              *(v189 + 24) = v66;
              if ((v66 & 1) == 0)
              {
                goto LABEL_161;
              }
            }

            else
            {
              v27 = Mutable;
              if (a2)
              {
                CFRelease(a2);
              }

              a2 = CFStringCreateMutable(0, 0);
              v67 = CFStringCreateMutable(0, 0);
              v68 = v24[2];
              if (v68)
              {
                v69 = 0;
                v70 = v24 + 3;
                do
                {
                  if ((*(v68 + 16) & 2) != 0)
                  {
                    if (v69)
                    {
                      CFStringAppendFormat(v67, 0, @",");
                    }

                    CFStringAppendFormat(v67, 0, @"%@", *v68);
                    v69 = 1;
                  }

                  v71 = *v70++;
                  v68 = v71;
                }

                while (v71);
              }

              CFStringAppendFormat(a2, 0, @"INSERT OR REPLACE INTO %@ (%@) SELECT %@ FROM %@;", *v55, v67, v67, *v24, v132);
              if (v67)
              {
                CFRelease(v67);
              }

              v36 = v142;
              v72 = sub_1000152F0(v144, a2, v142);
              v73 = (v72 & v189[3]);
              *(v189 + 24) &= v72;
              v12 = v139;
              if (v73 != 1)
              {
                goto LABEL_161;
              }
            }

            ++v52;
          }
        }

        v12 = 0;
        a2 = 0;
        v24 = 0;
        v140 = 0;
      }

      else
      {
        v12 = 0;
        v24 = 0;
        v140 = 0;
      }
    }

    else
    {
      v12 = 0;
      v24 = 0;
      v140 = 0;
    }

LABEL_161:
    v10 = &off_100294000;
    goto LABEL_162;
  }

LABEL_115:
  v145 = v11;
  v143 = v5 < 0x10000;
  v188 = 0;
  kdebug_trace();
  v82 = *(v3 + 56);
  v83 = *(v3 + 72);
  v84 = v148;
  off_10039D5C8();
  v86 = v85;
  v147 = *v85;
  *v85 = v87;
  context = 0;
  p_context = &context;
  v177 = *(v10 + 241);
  LOBYTE(v178) = 1;
  v167 = 0;
  v168 = &v167;
  v169 = v177;
  v170 = 0;
  memset(&v192, 170, sizeof(v192));
  gettimeofday(&v192, 0);
  v88 = 0;
  v89 = &off_10033C738;
  v90 = off_10033E8C8;
  while ((v83->isa & 1) == 0)
  {
    if (*(v89 + 8) == 1)
    {
      v91 = sub_100016514(v89, 14, &v188);
      if (v91)
      {
        v92 = v91;
        if (v88)
        {
          sub_10000DF70(v88, 0);
        }

        v93 = *(v90 - 1);
        if (qword_10039DFE8 != -1)
        {
          dispatch_once(&qword_10039DFE8, &stru_100338F30);
        }

        v94 = sub_100007698(v93, qword_10039DFF0, 0, 0, &v188);
        if (!v94)
        {
          *(p_context + 24) = 0;
          a2 = v138;
          v101 = v147;
          goto LABEL_133;
        }

        v88 = v94;
        v95 = *v86;
        v158 = _NSConcreteStackBlock;
        v159 = 0x40000000;
        v160 = sub_1001839A0;
        v161 = &unk_100342E38;
        v162 = v92;
        v149 = _NSConcreteStackBlock;
        v150 = 0x40000000;
        v151 = sub_1001839FC;
        v152 = &unk_100342E58;
        v153 = &v188;
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 0x40000000;
        *&buf[16] = sub_100183A84;
        v199 = &unk_100342E80;
        v200 = &v167;
        v201 = &context;
        v202 = &v188;
        v203 = v94;
        v204 = v83;
        v205 = v84 | 0xB0C00000000;
        v96 = sub_100014718(v94, v95, &v188, 0, &stru_100342E18, &v158, &v149, buf);
        v97 = v96 & *(p_context + 24);
        *(p_context + 24) = v97;
        if ((v97 & 1) == 0)
        {
          LKAReportKeychainUpgradeOutcomeWithError();
          a2 = v138;
          v101 = v147;
LABEL_132:
          sub_10000DF70(v88, 0);
          goto LABEL_133;
        }
      }
    }

    v98 = *v90++;
    v89 = v98;
    if (!v98)
    {
      break;
    }
  }

  v99 = 1;
  if (*(v168 + 24) < 101)
  {
    a2 = v138;
    v101 = v147;
  }

  else
  {
    v100 = *(v168 + 24);
    a2 = v138;
    v101 = v147;
    do
    {
      v99 *= 10;
      v79 = v100 > 0x3F1;
      v100 /= 0xAuLL;
    }

    while (v79);
  }

  sub_10017F11C(&v192);
  SecCoreAnalyticsSendValue();
  SecCoreAnalyticsSendValue();
  if (v88)
  {
    goto LABEL_132;
  }

LABEL_133:
  *v86 = v101;
  v102 = *(p_context + 24);
  _Block_object_dispose(&v167, 8);
  _Block_object_dispose(&context, 8);
  v3 = v137;
  *(*(*(v137 + 32) + 8) + 24) = v102;
  if (*(*(*(v137 + 32) + 8) + 24))
  {
    goto LABEL_146;
  }

  if (!v136)
  {
    **(v137 + 72) = 1;
    *(*(*(v137 + 32) + 8) + 24) = 1;
    v107 = v188;
    if (!v188)
    {
      goto LABEL_146;
    }

    v188 = 0;
    goto LABEL_144;
  }

  v103 = v188;
  if (!v188)
  {
    goto LABEL_146;
  }

  v104 = *(*(v137 + 40) + 8);
  v105 = *(v104 + 24);
  if (v105)
  {
    if (CFErrorGetCode(v105) == -25330)
    {
      v106 = *(v104 + 24);
      if (!v106)
      {
        goto LABEL_145;
      }

      *(v104 + 24) = 0;
      CFRelease(v106);
    }

    if (*(v104 + 24))
    {
      v107 = v103;
LABEL_144:
      CFRelease(v107);
      goto LABEL_146;
    }
  }

LABEL_145:
  *(v104 + 24) = v103;
LABEL_146:
  if (*(*(*(v137 + 32) + 8) + 24))
  {
    if (**(v137 + 72))
    {
      v108 = v145;
    }

    else
    {
      v109 = sub_100006274("upgr");
      if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
      {
        v110 = **(v137 + 64) | (*(*(v137 + 64) + 4) << 8);
        *buf = 67109376;
        *&buf[4] = v145;
        *&buf[8] = 1024;
        *&buf[10] = v110;
        _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "Done upgrading from version 0x%x to 0x%x", buf, 0xEu);
      }

      *(*(*(v137 + 48) + 8) + 24) = 1;
      kdebug_trace();
      v108 = 0;
    }

    v111 = v148 | (v108 << 16);
    v112 = (v108 << 8) & 0xFF0000 | BYTE1(v148);
    v113 = sub_100006274("upgr");
    if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = v111;
      *&buf[8] = 1024;
      *&buf[10] = v112;
      _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "Upgrading saving version major 0x%x minor 0x%x", buf, 0xEu);
    }

    v18 = CFStringCreateWithFormat(0, 0, @"UPDATE tversion SET version='%d', minor='%d'", v111, v112);
    v114 = sub_1000152F0(*(v137 + 56), v18, (*(*(v137 + 40) + 8) + 24));
    *(*(*(v137 + 32) + 8) + 24) = v114;
    if ((v114 & 1) == 0)
    {
      v128 = sub_100006274("SecError");
      if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
      {
        v129 = *(*(*(v137 + 40) + 8) + 24);
        *buf = 138412290;
        *&buf[4] = v129;
        _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "upgrade: Setting version failed: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v123 = sub_100006274("SecError");
    if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
    {
      v124 = *(*(*(v137 + 40) + 8) + 24);
      *buf = 67109378;
      *&buf[4] = v143;
      *&buf[8] = 2112;
      *&buf[10] = v124;
      v125 = "upgrade: Upgrade phase2 (%d) failed: %@";
      v126 = v123;
      v127 = 18;
      goto LABEL_176;
    }

LABEL_15:
    v18 = 0;
  }

LABEL_155:
  if ((*(*(*(v3 + 32) + 8) + 24) & 1) == 0)
  {
    v115 = sub_100006274("SecError");
    if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
    {
      v116 = *(*(*(v3 + 40) + 8) + 24);
      *buf = 138412290;
      *&buf[4] = v116;
      _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "upgrade: SecDB upgrade failed: %@", buf, 0xCu);
    }
  }

  if (v18)
  {
    CFRelease(v18);
  }

  LOBYTE(a2->isa) = *(*(*(v3 + 32) + 8) + 24);
}

void sub_10018244C(uint64_t a1)
{
  cf = 0;
  if (sub_1000152F0(a1, @"DROP INDEX IF EXISTS genpagrp; DROP INDEX IF EXISTS genpsync;", &cf)
    && sub_1000152F0(a1, @"DROP INDEX IF EXISTS inetagrp; DROP INDEX IF EXISTS inetsync;", &cf)
    && sub_1000152F0(a1, @"DROP INDEX IF EXISTS certagrp; DROP INDEX IF EXISTS certsync;", &cf)
    && sub_1000152F0(a1, @"DROP INDEX IF EXISTS keysagrp; DROP INDEX IF EXISTS keyssync;", &cf)
    && sub_1000152F0(a1, @"DROP INDEX IF EXISTS genpsync0;", &cf)
    && sub_1000152F0(a1, @"DROP INDEX IF EXISTS inetsync0;", &cf)
    && sub_1000152F0(a1, @"DROP INDEX IF EXISTS certsync0;", &cf)
    && sub_1000152F0(a1, @"DROP INDEX IF EXISTS keyssync0;", &cf)
    && sub_1000152F0(a1, @"DROP INDEX IF EXISTS genpmusr;", &cf)
    && sub_1000152F0(a1, @"DROP INDEX IF EXISTS inetmusr;", &cf)
    && sub_1000152F0(a1, @"DROP INDEX IF EXISTS certmusr;", &cf)
    && sub_1000152F0(a1, @"DROP INDEX IF EXISTS keysmusr;", &cf)
    && sub_1000152F0(a1, @"DROP INDEX IF EXISTS item_backupmusr;", &cf)
    && sub_1000152F0(a1, @"DROP INDEX IF EXISTS backup_keybagmusr;", &cf)
    && sub_1000152F0(a1, @"DROP INDEX IF EXISTS backup_keyarchivemusr;", &cf)
    && sub_1000152F0(a1, @"DROP INDEX IF EXISTS archived_key_backupmusr;", &cf)
    && sub_1000152F0(a1, @"DROP INDEX IF EXISTS agrp_musr_tomb_svce;", &cf)
    && sub_1000152F0(a1, @"DROP INDEX IF EXISTS agrp_musr_tomb_srvr;", &cf)
    && sub_1000152F0(a1, @"CREATE INDEX IF NOT EXISTS agrp_musr_tomb_svce_acct ON genp(agrp, musr, tomb, svce, acct);", &cf)
    && sub_1000152F0(a1, @"CREATE INDEX IF NOT EXISTS agrp_musr_tomb_srvr_acct ON inet(agrp, musr, tomb, srvr, acct);", &cf)
    && sub_1000152F0(a1, @"CREATE INDEX IF NOT EXISTS agrp_musr_tomb_type ON inet(agrp, musr, tomb, type);", &cf)
    && sub_1000152F0(a1, @"CREATE INDEX IF NOT EXISTS genpagrp_musr_tomb_acct ON genp(agrp, musr, tomb, acct);", &cf)
    && sub_1000152F0(a1, @"CREATE INDEX IF NOT EXISTS inetagrp_musr_tomb_acct ON inet(agrp, musr, tomb, acct);", &cf)
    && sub_1000152F0(a1, @"CREATE INDEX IF NOT EXISTS agrp_musr_tomb_subj ON cert(agrp, musr, tomb, subj);", &cf)
    && sub_1000152F0(a1, @"CREATE INDEX IF NOT EXISTS agrp_musr_tomb_atag ON keys(agrp, musr, tomb, atag);", &cf)
    && sub_1000152F0(a1, @"CREATE INDEX IF NOT EXISTS synckeys_contextID_ckzone_keyclass_state ON synckeys(contextID, ckzone, keyclass, state);", &cf)
    && sub_1000152F0(a1, @"CREATE INDEX IF NOT EXISTS incomingqueue_contextID_ckzone_UUID ON incomingqueue(contextID, ckzone, UUID);", &cf)
    && sub_1000152F0(a1, @"CREATE INDEX IF NOT EXISTS incomingqueue_contextID_ckzone_state ON incomingqueue(contextID, ckzone, state);", &cf)
    && sub_1000152F0(a1, @"CREATE INDEX IF NOT EXISTS incomingqueue_contextID_ckzone_parentkeyUUID ON incomingqueue(contextID, ckzone, parentKeyUUID);", &cf)
    && sub_1000152F0(a1, @"CREATE INDEX IF NOT EXISTS outgoingqueue_contextID_ckzone_UUID ON outgoingqueue(contextID, ckzone, UUID);", &cf)
    && sub_1000152F0(a1, @"CREATE INDEX IF NOT EXISTS outgoingqueue_contextID_ckzone_state ON outgoingqueue(contextID, ckzone, state);", &cf)
    && sub_1000152F0(a1, @"CREATE INDEX IF NOT EXISTS outgoingqueue_contextID_ckzone_parentkeyUUID ON outgoingqueue(contextID, ckzone, parentKeyUUID);", &cf)
    && sub_1000152F0(a1, @"CREATE INDEX IF NOT EXISTS ckmirror_contextID_ckzone_UUID ON ckmirror(contextID, ckzone, UUID);", &cf)
    && sub_1000152F0(a1, @"CREATE INDEX IF NOT EXISTS ckmirror_contextID_ckzone_parentkeyUUID ON ckmirror(contextID, ckzone, parentKeyUUID);", &cf)
    && sub_1000152F0(a1, @"CREATE INDEX IF NOT EXISTS ckmirror_pcss_pcsk ON ckmirror(pcss, pcsk);", &cf)
    && sub_1000152F0(a1, @"DROP INDEX IF EXISTS tlksharecontextID;", &cf)
    && sub_1000152F0(a1, @"DROP INDEX IF EXISTS currentitemscontextID;", &cf)
    && sub_1000152F0(a1, @"DROP INDEX IF EXISTS ckdevicestatecontextID;", &cf)
    && sub_1000152F0(a1, @"DROP INDEX IF EXISTS outgoingqueuecontextID;", &cf)
    && sub_1000152F0(a1, @"DROP INDEX IF EXISTS incomingqueuecontextID;", &cf)
    && sub_1000152F0(a1, @"DROP INDEX IF EXISTS synckeyscontextID;", &cf)
    && sub_1000152F0(a1, @"DROP INDEX IF EXISTS ckmirrorcontextID;", &cf)
    && sub_1000152F0(a1, @"DROP INDEX IF EXISTS currentkeyscontextID;", &cf)
    && sub_1000152F0(a1, @"DROP INDEX IF EXISTS ckstatecontextID;", &cf))
  {
    v2 = sub_100006274("upgr");
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_48;
    }

    *buf = 0;
    v3 = "processed custom indexes (now or in the past)";
    v4 = v2;
    v5 = 2;
    goto LABEL_47;
  }

  v7 = sub_100006274("SecError");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = cf;
    v3 = "upgr: failed to process custom indexes: %@";
    v4 = v7;
    v5 = 12;
LABEL_47:
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v3, buf, v5);
  }

LABEL_48:
  v6 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v6);
  }
}

uint64_t sub_100182968(uint64_t a1)
{
  if (qword_10039DFC8 != -1)
  {
    dispatch_once(&qword_10039DFC8, &stru_100338EB0);
  }

  v2 = qword_10039DFD0;
  v3 = &off_10033C738;
  v4 = 1;
  v5 = off_10033E8C8;
  do
  {
    if (*(v3 + 8) == 1)
    {
      v6 = sub_100007698(v3, v2, 0, *(a1 + 32), *(a1 + 40));
      if (v6)
      {
        v7 = v6;
        v8 = *(a1 + 40);
        v15 = *(a1 + 48);
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 0x40000000;
        v16[2] = sub_100183014;
        v16[3] = &unk_100342F60;
        v16[4] = v2;
        v16[5] = v8;
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 0x40000000;
        v14[2] = sub_100183028;
        v14[3] = &unk_100342FC0;
        v4 &= sub_100014718(v6, v15, v8, &stru_100342EC0, &stru_100342F00, &stru_100342F40, v16, v14);
        sub_10000DF70(v7, 0);
      }

      else
      {
        v9 = sub_100006274("transcrypt");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = **(v5 - 1);
          v11 = **(a1 + 40);
          *buf = 138412546;
          v18 = v10;
          v19 = 2112;
          v20 = v11;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "could not create query for class %@: %@", buf, 0x16u);
        }
      }
    }

    v12 = *v5++;
    v3 = v12;
  }

  while (v12);
  return v4 & 1;
}

void sub_100182BA0(uint64_t a1)
{
  if (byte_10039E058 == 1)
  {
    v2 = +[OTManager manager];
    [v2 initializeOctagon];
    [v2 setupAnalytics];
  }

  if (sub_100019064())
  {
    v3 = *(a1 + 32);
    v4 = objc_autoreleasePoolPush();
    v5 = +[CKKSViewManager manager];
    [v5 setupAnalytics];
    sub_10008686C(v3, &stru_100337288);
    v6 = [v5 completedSecCKKSInitialize];
    [v6 fulfill];

    if (qword_10039DED8 != -1)
    {
      dispatch_once(&qword_10039DED8, &stru_1003372A8);
    }

    objc_autoreleasePoolPop(v4);
  }
}

void sub_100182CA0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = KCSharingLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Requesting for registering database events", buf, 2u);
  }

  if (objc_opt_class() && atomic_load_explicit(dword_10039DDE8, memory_order_acquire) < 2)
  {
    sub_10008686C(v1, &stru_100334BC8);
  }

  else
  {
    v3 = KCSharingLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "KCSharing is disabled, KCSharing won't register for database events", v8, 2u);
    }
  }

  v4 = KCSharingLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Requesting KCSharing Preflight", v11, 2u);
  }

  if (objc_opt_class() && atomic_load_explicit(dword_10039DDE8, memory_order_acquire) < 2)
  {
    v5 = +[KCSharingSyncController sharedInstance];
    [v5 preflightWithCompletion:&stru_100334BE8];
  }

  else
  {
    v5 = KCSharingLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "KCSharing is disabled, KCSharing won't preflight", v10, 2u);
    }
  }

  v6 = KCSharingLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Requesting for KCSharing fixups", v13, 2u);
  }

  if (objc_opt_class() && atomic_load_explicit(dword_10039DDE8, memory_order_acquire) < 2)
  {
    v7 = +[KCSharingSyncController sharedInstance];
    [v7 performKCSharingFixUpsWithCompletion:&stru_100334C48];
  }

  else
  {
    v7 = KCSharingLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "KCSharing is disabled, KCSharing won't perform fixups", v12, 2u);
    }
  }
}

void sub_100182F60(id a1)
{
  v1 = sub_100006274("escrowrequest");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "performing EscrowRequestServerInitialize", v5, 2u);
  }

  v2 = +[EscrowRequestServer server];
  v3 = [v2 controller];
  v4 = [v3 stateMachine];
  [v4 startOperation];
}

void sub_100183028(uint64_t a1, __CFString ***a2)
{
  v4 = sub_100006274("transcrypt");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v10 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "handling item: %{private}@", buf, 0xCu);
  }

  cf = 0;
  if (!sub_100162EFC(a2, -6, &cf))
  {
    v5 = sub_100006274("transcrypt");
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    *buf = 138412290;
    v10 = cf;
    v6 = "failed to set keybag, but continuing. Error: %@";
    goto LABEL_9;
  }

  if (sub_10001C528(a2, a2, *(a1 + 32), &cf, &stru_100342FA0))
  {
    return;
  }

  v5 = sub_100006274("transcrypt");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = cf;
    v6 = "failed to update item, but continuing. Error: %@";
LABEL_9:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
  }

LABEL_10:
  v7 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v7);
  }
}

BOOL sub_1001831B8(id a1, __CFString *a2, BOOL *a3)
{
  sub_100009A48(a2, a3);
  CFStringAppendFormat(a2, 0, @"musr = ?");
  return 1;
}

void sub_100183220(uint64_t a1, const void *a2, int a3)
{
  value = 0xAAAAAAAAAAAAAAAALL;
  if (CFDictionaryGetValueIfPresent(*(a1 + 32), a2, &value))
  {
    v6 = *(*(a1 + 40) + 8 * a3 + 8);
    v7 = *(*(a1 + 48) + 8 * value + 8);
    if (CFEqual(*v6, *v7) && *(v6 + 8) == *(v7 + 8))
    {
      v8 = *(v7 + 16);
      v9 = *(v6 + 16);
      if (v9)
      {
        v10 = v8 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
LABEL_9:
        if (!(v9 | v8))
        {
          return;
        }
      }

      else
      {
        v11 = (v7 + 24);
        v12 = (v6 + 24);
        while (CFEqual(*v9, *v8) && *(v9 + 8) == *(v8 + 8) && *(v9 + 16) == *(v8 + 16) && *(v9 + 24) == *(v8 + 24) && *(v9 + 32) == *(v8 + 32))
        {
          v13 = *v11++;
          v8 = v13;
          v14 = *v12++;
          v9 = v14;
          if (!v14 || !v8)
          {
            goto LABEL_9;
          }
        }
      }
    }

    CFSetAddValue(*(a1 + 56), a2);
  }
}