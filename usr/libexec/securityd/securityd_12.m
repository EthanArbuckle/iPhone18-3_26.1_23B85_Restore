void sub_100211300(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_100211334(uint64_t a1, CFTypeRef cf, const void *a3)
{
  if (a3)
  {
    v6 = sub_100006274("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SOSCloudKeychainGetObjectsFromCloud returned error: %@", &v11, 0xCu);
    }

    CFRetain(a3);
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }

  if (!cf)
  {
    goto LABEL_8;
  }

  v7 = CFGetTypeID(cf);
  if (v7 == CFNullGetTypeID())
  {
    CFRelease(cf);
LABEL_8:
    *(*(*(a1 + 48) + 8) + 24) = 0;
    return dispatch_semaphore_signal(*(a1 + 32));
  }

  v8 = *(*(a1 + 48) + 8);
  if (*(v8 + 24) != cf)
  {
    CFRetain(cf);
    v9 = *(v8 + 24);
    if (v9)
    {
      CFRelease(v9);
    }

    *(v8 + 24) = cf;
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100211470(uint64_t a1)
{
  PeerID = SOSPeerInfoGetPeerID();
  v3 = *(a1 + 32);

  CFSetAddValue(v3, PeerID);
}

void sub_1002114B0(uint64_t a1)
{
  PeerID = SOSPeerInfoGetPeerID();
  v3 = *(a1 + 32);

  CFSetAddValue(v3, PeerID);
}

intptr_t sub_1002114F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_100006274("SecError");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SOSCloudKeychainRemoveKeys returned error: %@", &v7, 0xCu);
    }
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

intptr_t sub_1002115BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_100006274("SecError");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SOSCloudKeychainPutObjectsInCloud returned error: %@", &v7, 0xCu);
    }
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100211680(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFStringGetTypeID())
    {
      KeyType = SOSKVSKeyGetKeyType();
      if (KeyType == 1)
      {
        SOSKVSKeyParse();
        [*(a1 + 32) addObject:{cf, 0}];
        if (cfa)
        {
          CFRelease(cfa);
        }
      }

      else if (KeyType == 4)
      {
        SOSKVSKeyParse();
        [*(a1 + 32) addObject:cf];
      }
    }
  }
}

void sub_1002117E8(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = +[CKKSViewManager manager];
  v41 = 0;
  v8 = [v7 currentTLKsFilteredByPolicy:a3 error:&v41];
  v9 = v41;

  if (v9)
  {
    v10 = sub_100006274("piggy");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v54 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "unable to fetch TLKs: %@", buf, 0xCu);
    }
  }

  else
  {
    v31 = 0;
    v34 = v5;
    v37 = v5;
    v32 = v8;
    v11 = v8;
    v33 = v6;
    v36 = v6;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v11;
    v12 = [v11 countByEnumeratingWithState:&v43 objects:buf count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v44;
      v15 = "piggy";
      v35 = *v44;
      do
      {
        v16 = 0;
        v38 = v13;
        do
        {
          if (*v44 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v43 + 1) + 8 * v16);
          v42 = 0;
          v18 = [v17 ensureKeyLoadedFromKeychain:{&v42, v31}];
          v19 = v42;
          v20 = v19;
          if (v18)
          {
            v21 = v19 == 0;
          }

          else
          {
            v21 = 0;
          }

          if (v21)
          {
            v40 = v19;
            v47[0] = kSecValueData;
            v23 = [v18 keyMaterial];
            v48[0] = v23;
            v47[1] = kSecAttrServer;
            v24 = [v17 zoneID];
            v25 = [v24 zoneName];
            v48[1] = v25;
            v47[2] = kSecAttrAccount;
            [v17 uuid];
            v27 = v26 = v15;
            v48[2] = v27;
            v28 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:3];
            v22 = [v28 mutableCopy];

            v15 = v26;
            [v22 setObject:&__kCFBooleanTrue forKeyedSubscript:@"auth"];
            v29 = sub_100006274(v26);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *v49 = 138412290;
              v50 = v17;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "sending TLK %@", v49, 0xCu);
            }

            [v37 addObject:v22];
            v30 = [v17 uuid];
            [v36 addObject:v30];

            v14 = v35;
            v13 = v38;
            v20 = v40;
          }

          else
          {
            v22 = sub_100006274(v15);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *v49 = 138412546;
              v50 = v17;
              v51 = 2112;
              v52 = v20;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Failed to load TLK %@: %@", v49, 0x16u);
            }
          }

          v16 = v16 + 1;
        }

        while (v13 != v16);
        v13 = [obj countByEnumeratingWithState:&v43 objects:buf count:16];
      }

      while (v13);
    }

    v6 = v33;
    v5 = v34;
    v9 = v31;
    v8 = v32;
  }
}

void sub_100211C28(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100211CEC;
  v8[3] = &unk_100345448;
  v11 = 0;
  v9 = a3;
  v10 = v5;
  v6 = v5;
  v7 = v9;
  [a2 enumerateObjectsUsingBlock:v8];
}

void sub_100211CEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:kSecAttrPath];
  v5 = [v3 objectForKeyedSubscript:kSecAttrAccount];
  v6 = [v3 objectForKey:kSecAttrServer];
  v7 = v6;
  if (v4)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8 || v6 == 0;
  if (!v9 && (([v4 isEqualToString:v5] & 1) != 0 || *(a1 + 48) == 1) && (objc_msgSend(*(a1 + 32), "containsObject:", v5) & 1) == 0)
  {
    v10 = [v3 objectForKey:kSecValueData];
    v11 = [[NSData alloc] initWithBase64EncodedData:v10 options:0];
    if (v11)
    {
      v12 = v11;
      v16 = v10;
      v13 = sub_100006274("piggy");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v20 = v7;
        v21 = 2112;
        v22 = v5;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "fetched TLK %@ with name %@", buf, 0x16u);
      }

      v17[0] = kSecValueData;
      v17[1] = kSecAttrServer;
      v18[0] = v12;
      v18[1] = v7;
      v17[2] = kSecAttrAccount;
      v18[2] = v5;
      v14 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];
      v15 = [v14 mutableCopy];

      if (*(a1 + 48) == 1)
      {
        [v15 setObject:&__kCFBooleanTrue forKeyedSubscript:@"auth"];
      }

      [*(a1 + 40) addObject:v15];
      [*(a1 + 32) addObject:v5];
    }

    else
    {
    }
  }
}

int64_t sub_100211F44(id a1, NSDictionary *a2, NSDictionary *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [(NSDictionary *)v5 objectForKeyedSubscript:kSecAttrServer];
  v7 = sub_10021203C(v6);

  v8 = [(NSDictionary *)v5 objectForKeyedSubscript:@"auth"];

  if (v8)
  {
    v7 |= 0x3E8u;
  }

  v9 = [(NSDictionary *)v4 objectForKeyedSubscript:kSecAttrServer];
  v10 = sub_10021203C(v9);

  v11 = [(NSDictionary *)v4 objectForKeyedSubscript:@"auth"];

  v12 = v10 | 0x3E8;
  if (!v11)
  {
    v12 = v10;
  }

  v13 = v7 > v12;
  v14 = v7 < v12;
  if (v13)
  {
    return -1;
  }

  else
  {
    return v14;
  }
}

uint64_t sub_10021203C(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Manatee"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"Engram"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"AutoUnlock"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"Health"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1002120D4(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Manatee"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Engram"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"AutoUnlock"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"Health"])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_10021216C(void *a1)
{
  v1 = a1;
  [v1 length];
  [v1 length];
  [v1 bytes];

  ccder_encode_body();

  return ccder_encode_tl();
}

uint64_t sub_100212204(void *a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        [v6 length];
        [v6 bytes];
        if (!ccder_encode_body())
        {

          v7 = 0;
          goto LABEL_11;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = ccder_encode_constructed_tl();
LABEL_11:

  return v7;
}

void sub_100212370(uint64_t a1, const void *a2)
{
  if (SOSPeerInfoIsCloudIdentity())
  {
    v4 = *(a1 + 32);

    CFArrayAppendValue(v4, a2);
  }
}

void sub_1002123C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006274("accountLogState");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 32))
    {
      v5 = 73;
    }

    else
    {
      v5 = 105;
    }

    v6 = *(a1 + 33) == 0;
    v8[0] = 67109634;
    if (v6)
    {
      v7 = 98;
    }

    else
    {
      v7 = 66;
    }

    v8[1] = v5;
    v9 = 1024;
    v10 = v7;
    v11 = 2112;
    v12 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sync: %c%c PeerViews: %@", v8, 0x18u);
  }
}

void sub_1002124BC(id a1, __CFString *a2)
{
  v3 = sub_100006274("accountLogState");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "outstanding views: %@", &v4, 0xCu);
  }
}

void sub_100212568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  IsSessionInAwaitingState = SecOTRSessionIsSessionInAwaitingState();
  v8 = sub_100006274("otrtimer");
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (IsSessionInAwaitingState)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "coder is in awaiting state, restarting coder", buf, 2u);
    }

    v47 = 0;
    sub_1002295FC(a3);
    if (sub_10022936C(a3, &v47) == 3)
    {
      v10 = sub_100006274("SecError");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v50 = v47;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Attempt to recover coder failed to restart: %@", buf, 0xCu);
      }
    }

    else
    {
      v11 = sub_100006274("otrtimer");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "coder restarted!", buf, 2u);
      }

      v12 = *(a1 + 40);
      if ([OTSOSActualAdapter sosEnabled]_0())
      {
        *(v12 + 105) = 1;
      }

      *(a2 + 48) = 1;
      sub_100251538(*(a2 + 16), v13, v14, v15, v16, v17, v18, v19);
    }

    v20 = *(a1 + 32);
    v21 = *(a2 + 16);
    v22 = v20;
    v23 = sub_10020649C(v22, @"NegotiationRetryCount");
    if (!v23)
    {
      v23 = +[NSMutableDictionary dictionary];
    }

    v24 = [v23 objectForKey:{v21, v47}];
    v25 = [NSNumber alloc];
    if (v24)
    {
      v26 = [v25 initWithInt:{objc_msgSend(v24, "intValue") + 1}];
      [v23 setObject:v26 forKey:v21];
      v27 = sub_100006274("otr");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [v26 intValue];
        *buf = 67109120;
        LODWORD(v50) = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "OTR negotiation retry count: %d", buf, 8u);
      }
    }

    else
    {
      v24 = [v25 initWithInt:1];
      [v23 setObject:v24 forKey:v21];
    }

    sub_100228C18(v22, @"NegotiationRetryCount", v23, 0);

    CFDictionaryRemoveValue(*(a2 + 104), *(a2 + 16));
    v29 = *(a2 + 16);
    v30 = *(a1 + 32);
    v31 = v29;
    cf = 0;
    v32 = sub_10020649C(v30, @"PeerNegotiationTimeouts");
    if (!v32 || (v33 = v32, v34 = CFGetTypeID(v32), v34 != CFDictionaryGetTypeID()))
    {
      v35 = sub_100006274("otrtimer");
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      *buf = 0;
      v36 = "timeout dictionary doesn't exist";
      v37 = v35;
      v38 = 2;
      goto LABEL_32;
    }

    if (CFDictionaryGetValue(v33, v31))
    {
      CFDictionaryRemoveValue(v33, v31);
      sub_100228C18(v30, @"PeerNegotiationTimeouts", v33, &cf);
      if (!cf)
      {
LABEL_35:

        v40 = *(a1 + 32);
        v41 = *(a2 + 16);
        v42 = v40;
        v43 = v41;
        v44 = sub_10020649C(v42, @"kSOSAccountPeerLastSentTimestamp");
        v45 = v44;
        if (v44)
        {
          v46 = [v44 objectForKey:v43];
          if (v46)
          {
            [v45 removeObjectForKey:v43];
            sub_100228C18(v42, @"kSOSAccountPeerLastSentTimestamp", v45, 0);
          }
        }

        return;
      }

      v35 = sub_100006274("otrtimer");
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v50 = cf;
        v36 = "SOSAccountSetValue threw an error for key kSOSAccountPeerNegotiationTimeouts: %@";
LABEL_29:
        v37 = v35;
        v38 = 12;
LABEL_32:
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, v36, buf, v38);
      }
    }

    else
    {
      v35 = sub_100006274("otrtimer");
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v50 = v31;
        v36 = "timeout for peerid: %@, doesn't exist";
        goto LABEL_29;
      }
    }

LABEL_33:

    v39 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v39);
    }

    goto LABEL_35;
  }

  if (v9)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "time fired but out of negotiation! Not restarting coder", buf, 2u);
  }
}

void sub_100212AB0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 96);
  v18 = 0;
  v6 = [v5 accessGroupToNextMessageToSend];
  v7 = [v6 objectForKey:*(a1 + 32)];

  if (v7)
  {
    v8 = sub_100006274("ratelimit");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = v7;
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SOSPeerRateLimiter timer went off! sending:%@ \n to peer:%@", buf, 0x16u);
    }

    v9 = [*(*(*(a1 + 40) + 8) + 40) kvs_message_transport];
    v10 = [*(*(*(a1 + 40) + 8) + 40) kvs_message_transport];
    v11 = [v9 SOSTransportMessageSendMessage:v10 id:v4 messageToSend:v7 err:&v18];

    if (v11)
    {
      v12 = v18 == 0;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      v13 = sub_100006274("ratelimit");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v18;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "could not send message: %@", buf, 0xCu);
      }
    }
  }

  v14 = [v5 accessGroupRateLimitState];
  v15 = [[NSNumber alloc] initWithLong:1];
  [v14 setObject:v15 forKey:*(a1 + 32)];

  v16 = [v5 accessGroupToTimer];
  [v16 removeObjectForKey:*(a1 + 32)];

  v17 = [v5 accessGroupToNextMessageToSend];
  [v17 removeObjectForKey:*(a1 + 32)];
}

uint64_t sub_100212DD4(void *a1, uint64_t a2, const void **a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@-tomb", a2);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100212ED4;
  v13[3] = &unk_1003460B8;
  v10 = v7;
  v14 = v10;
  v11 = sub_10021C3A4(v10, v9, a3, v13, v8);

  if (v9)
  {
    CFRelease(v9);
  }

  return v11;
}

uint64_t sub_100212ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) peerID];
  v6 = sub_10022B5A0(a2, v5, 1u, a3);

  return v6;
}

uint64_t sub_100212F30(void *a1)
{
  v1 = a1;
  MutableForSOSPeerInfosByID = CFSetCreateMutableForSOSPeerInfosByID();
  v3 = [v1 trust];
  v4 = [v3 getCircle:0];

  if (v4)
  {
    [v1 accountKey];
    SOSCircleForEachValidPeer();
  }

  return MutableForSOSPeerInfosByID;
}

void sub_100213010(uint64_t a1, const void *a2)
{
  if (sub_100213068(a2, *(a1 + 32)))
  {
    v4 = *(a1 + 40);

    CFSetAddValue(v4, a2);
  }
}

uint64_t sub_100213068(int a1, CFTypeRef cf2)
{
  if (!cf2 || !kSOSViewKeychainV0)
  {
    if (kSOSViewKeychainV0 != cf2)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (CFEqual(kSOSViewKeychainV0, cf2))
  {
    return 0;
  }

LABEL_6:
  if (!SOSPeerInfoHasBackupKey())
  {
    return 0;
  }

  return SOSPeerInfoIsViewPermitted();
}

uint64_t sub_1002130EC(void *a1, const void *a2, uint64_t a3, const void **a4)
{
  v7 = a1;
  Mutable = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
  if (sub_100087F00(Mutable, a4, @"No backup view set created"))
  {
    CFSetAddValue(Mutable, a2);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10021338C;
    v19[3] = &unk_100345618;
    v20 = v7;
    v21 = a2;
    v22 = Mutable;
    v23 = a3;
    v9 = sub_100212DD4(v20, a2, a4, v19);
    v10 = v9;
    if (a4 && v9 && *a4)
    {
      v11 = sub_100006274("SecError");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *a4;
        *buf = 138412290;
        v25 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Got Success and Error (dropping error): %@", buf, 0xCu);
      }

      v13 = *a4;
      if (*a4)
      {
        *a4 = 0;
        CFRelease(v13);
      }
    }

    if ((v10 & 1) == 0)
    {
      v14 = sub_100006274("backupring");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        if (a4)
        {
          v15 = *a4;
        }

        else
        {
          v15 = @"No error space.";
        }

        *buf = 138412546;
        v25 = a2;
        v26 = 2112;
        v27 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Got error setting keybag for backup view '%@': %@", buf, 0x16u);
      }
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    v16 = v20;
  }

  else
  {
    v16 = sub_100006274("backupring");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      if (a4)
      {
        v17 = *a4;
      }

      else
      {
        v17 = @"No error space.";
      }

      *buf = 138412546;
      v25 = a2;
      v26 = 2112;
      v27 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Got error setting keybag for backup view '%@': %@", buf, 0x16u);
    }

    v10 = 0;
  }

  return v10;
}

void *sub_10021338C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [*(a1 + 32) trust];
  v7 = [v6 copyPeerSetForView:*(a1 + 40)];

  Mutable = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
  sub_100258E40(a2, Mutable);
  context[0] = _NSConcreteStackBlock;
  context[1] = 0x40000000;
  context[2] = sub_100258F74;
  context[3] = &unk_100347500;
  context[4] = a2;
  CFSetApplyFunction(v7, sub_1002589F4, context);
  v9 = sub_10022B940(a2, [*(a1 + 32) fullPeerInfo], *(a1 + 48), *(a1 + 56), a3);
  v10 = 0;
  if (a2 && v9)
  {
    CFRetain(a2);
    v10 = a2;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v10;
}

void sub_1002134DC(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFStringGetTypeID())
    {
      v5 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@-tomb", cf);
      (*(*(a1 + 32) + 16))();
      if (v5)
      {

        CFRelease(v5);
      }
    }
  }
}

void sub_100213590(void *a1, void *a2)
{
  context = a2;
  if ([a1 peerInfo])
  {
    PermittedViews = SOSPeerInfoGetPermittedViews();
    MutableCopy = CFSetCreateMutableCopy(kCFAllocatorDefault, 0, PermittedViews);
    CFSetRemoveValue(MutableCopy, kSOSViewKeychainV0);
    CFSetApplyFunction(MutableCopy, sub_1002134C4, context);
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }
}

void *sub_10021363C(void *a1, const void *a2, CFTypeRef *a3)
{
  v5 = a1;
  v6 = v5;
  v7 = 0;
  if (v5)
  {
    if (a2)
    {
      v8 = [v5 trust];
      v7 = [v8 peerInfo];

      if (v7)
      {
        if (SOSPeerInfoHasBackupKey() && SOSPeerInfoIsEnabledView() && (v9 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@-tomb", a2)) != 0)
        {
          v10 = v9;
          v11 = [v6 peerID];
          v7 = sub_10022B5A0(v10, v11, 1u, a3);

          CFRelease(v10);
          Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
          MutableForSOSPeerInfosByID = CFSetCreateMutableForSOSPeerInfosByID();
          v14 = [v6 trust];
          [v14 trustedCircle];
          [v6 accountKey];
          SOSCircleForEachBackupCapablePeerForView();

          v15 = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
          CFSetAddValue(v15, a2);
          v16 = sub_10022BC48(kCFAllocatorDefault, v6, 0);
          if (v16)
          {
            v17 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            CFDictionaryAddValue(v17, bskbRkbgPrefix, v16);
            v18 = SOSBackupSliceKeyBagCreateWithAdditionalKeys();
            if (v17)
            {
              CFRelease(v17);
            }
          }

          else
          {
            v18 = SOSBackupSliceKeyBagCreate();
          }

          if (v18)
          {
            sub_100258E40(v7, Mutable);
            sub_10022B940(v7, [v6 fullPeerInfo], v15, v18, a3);
            sub_1002155F8(v7, [v6 fullPeerInfo], v15, a3);
          }

          else if (v7)
          {
            CFRelease(v7);
            v7 = 0;
          }

          if (v15)
          {
            CFRelease(v15);
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }

          if (MutableForSOSPeerInfosByID)
          {
            CFRelease(MutableForSOSPeerInfosByID);
          }

          if (v18)
          {
            CFRelease(v18);
          }

          if (v16)
          {
            CFRelease(v16);
          }
        }

        else
        {
          v7 = 0;
        }
      }
    }
  }

  return v7;
}

void sub_100213930(uint64_t a1, const void *a2)
{
  v4 = *(a1 + 32);
  PeerID = SOSPeerInfoGetPeerID();
  CFSetAddValue(v4, PeerID);
  v6 = *(a1 + 40);

  CFSetAddValue(v6, a2);
}

void sub_10021398C(void *a1)
{
  v1 = a1;
  v2 = sub_100006274("backup");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Updating Backup Rings", buf, 2u);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100213A84;
  v4[3] = &unk_100345550;
  v5 = v1;
  v3 = v1;
  sub_100213590(v3, v4);
  [v3 setPublicKeyStatus:2 forKey:1];
  [v3 setCircle_rings_retirements_need_attention:1];
}

void sub_100213A84(uint64_t a1, uint64_t a2)
{
  cf = 0;
  v3 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100213BB8;
  v6[3] = &unk_100345528;
  v7 = v3;
  v8 = a2;
  sub_100212DD4(v7, a2, &cf, v6);
  if (cf)
  {
    v4 = sub_100006274("ring");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = cf;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error during SOSAccountProcessBackupRings (%@)", buf, 0xCu);
    }

    v5 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v5);
    }
  }
}

void sub_100213BC4(uint64_t a1, const void *a2)
{
  v4 = *(a1 + 32);
  PeerID = SOSPeerInfoGetPeerID();
  CFSetAddValue(v4, PeerID);
  v6 = *(a1 + 40);

  CFSetAddValue(v6, a2);
}

uint64_t sub_100213C20(void *a1, const __CFData *a2, uint64_t a3)
{
  v5 = a1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100213DFC;
  v17 = sub_100213E0C;
  v18 = [v5 account];
  if (a2)
  {
    Copy = CFDataCreateCopy(kCFAllocatorDefault, a2);
    [v14[5] setBackup_key:Copy];
  }

  else
  {
    [v14[5] setBackup_key:0];
  }

  v7 = v14[5];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100213E14;
  v12[3] = &unk_100345578;
  v12[4] = &v13;
  v12[5] = a2;
  v8 = sub_10021A5E8(v7, @"Backup public key", a3, v12);
  if (v8)
  {
    [v14[5] setPublicKeyStatus:1 forKey:1];
    v9 = sub_100006274("devRecovery");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Processing backup rings since we got a BackupKey", v11, 2u);
    }

    sub_10021398C(v14[5]);
  }

  _Block_object_dispose(&v13, 8);

  return v8;
}

void sub_100213DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100213DFC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100213E14(uint64_t a1)
{
  v2 = [*(*(*(a1 + 32) + 8) + 40) backup_key];

  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = SOSCopyIDOfDataBufferWithLength();
    v5 = sub_100006274("backup");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting peerInfo backupKey to %@", &v10, 0xCu);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    v6 = *(a1 + 40);
    SOSPeerInfoV2DictionarySetValue();
  }

  else
  {
    v7 = sub_100006274("backup");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting peerInfo backupKey to NULL", &v10, 2u);
    }

    SOSPeerInfoV2DictionaryRemoveValue();
  }

  v8 = sub_100006274("backup");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Changed BackupKey for PeerInfo", &v10, 2u);
  }

  return 1;
}

uint64_t sub_100213FE0(uint64_t a1, const void *a2)
{
  result = sub_1002130EC(*(a1 + 32), a2, *(a1 + 48), *(a1 + 56));
  *(*(*(a1 + 40) + 8) + 24) &= result;
  return result;
}

void sub_10021403C(uint64_t a1, const void *a2)
{
  if (sub_100213068(*(a1 + 48), a2))
  {
    v4 = sub_100212F30(*(a1 + 32));
    v5 = *(a1 + 56);
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    context = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_1002142B4;
    v23 = &unk_100346870;
    v24 = v5;
    v25 = Mutable;
    CFSetApplyFunction(v4, sub_1002134C4, &context);
    v7 = *(a1 + 32);
    v8 = *(a1 + 64);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v16 = sub_100214350;
    v17 = &unk_1003454D8;
    v18 = v7;
    v19 = a2;
    v9 = v18;
    v10 = v15;
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    context = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_100214364;
    v23 = &unk_1003455F0;
    v24 = &v27;
    v25 = Mutable;
    v26 = v8;
    v11 = &context;
    v12 = sub_100212F30(v9);
    v22(v11, v12);

    if (v12)
    {
      CFRelease(v12);
    }

    v13 = v28[3];
    if (v13)
    {
      v16(v10, v28[3], v8);
      v14 = v28[3];
      if (v14)
      {
        v28[3] = 0;
        CFRelease(v14);
      }
    }

    _Block_object_dispose(&v27, 8);

    *(*(*(a1 + 40) + 8) + 24) = v13 != 0;
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }
}

void sub_100214298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002142B4(uint64_t a1, uint64_t a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1002145D8;
  v4[3] = &unk_100346870;
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[4] = a2;
  v4[5] = v2;
  v5.length = CFArrayGetCount(v3);
  v5.location = 0;
  CFArrayApplyFunction(v3, v5, sub_1002134C4, v4);
}

void sub_100214364(void *a1, CFSetRef theSet)
{
  Count = CFSetGetCount(theSet);
  MutableCopy = CFSetCreateMutableCopy(kCFAllocatorDefault, Count, theSet);
  v6 = a1[5];
  context[0] = _NSConcreteStackBlock;
  context[1] = 3221225472;
  context[2] = sub_100214460;
  context[3] = &unk_1003477F0;
  context[4] = MutableCopy;
  v9.length = CFArrayGetCount(v6);
  v9.location = 0;
  CFArrayApplyFunction(v6, v9, sub_1002134C4, context);
  v7 = a1[6];
  *(*(a1[4] + 8) + 24) = SOSBackupSliceKeyBagCreate();
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }
}

void sub_100214460(uint64_t a1, CFTypeRef cf)
{
  if (cf && (v3 = CFGetTypeID(cf), v3 == SOSPeerInfoGetTypeID()))
  {
    PeerID = SOSPeerInfoGetPeerID();
    v5 = *(a1 + 32);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100214570;
    v7[3] = &unk_100346870;
    v7[4] = PeerID;
    v7[5] = v5;
    CFSetApplyFunction(v5, sub_1002134C4, v7);
  }

  else
  {
    v6 = sub_100006274("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Peer list contains a non-peerInfo element", buf, 2u);
    }
  }
}

void sub_100214570(uint64_t a1, const void *a2)
{
  PeerID = SOSPeerInfoGetPeerID();
  if (PeerID)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      if (CFStringCompare(PeerID, v5, 0) == kCFCompareEqualTo)
      {
        v6 = *(a1 + 40);

        CFSetRemoveValue(v6, a2);
      }
    }
  }
}

void sub_1002145D8(uint64_t a1)
{
  PeerID = SOSPeerInfoGetPeerID();
  v3 = *(a1 + 32);
  v4 = SOSPeerInfoGetPeerID();
  if (PeerID && v4 && CFStringCompare(v4, PeerID, 0) == kCFCompareEqualTo)
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);

    CFArrayAppendValue(v5, v6);
  }
}

void sub_100214644(void *a1)
{
  v1 = a1;
  v2 = [v1 account];
  if (([v2 isInCircle:0] & 1) == 0)
  {
    v15 = sub_100006274("backup");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Not currently in circle", v16, 2u);
    }

    goto LABEL_15;
  }

  [v2 peerInfo];
  v3 = SOSPeerInfoCopyBackupKey();
  v4 = [v2 backup_key];

  if (!v4)
  {
    if (!v3)
    {
      goto LABEL_15;
    }

    sub_100213C20(v1, 0, 0);
    goto LABEL_14;
  }

  v5 = [v2 backup_key];
  v6 = SOSBSKBIsGoodBackupPublic();

  if (v6)
  {
    v7 = [v2 backup_key];
    v8 = v7;
    if (!v3 || !v7)
    {

      if (v3 == v8)
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    }

    v9 = CFEqual(v3, v7);

    if (!v9)
    {
LABEL_17:
      v11 = sub_100006274("backupkey");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Account backup key and peerinforef backup key don't match.  Using account backup key.", v16, 2u);
      }

      v12 = [v2 backup_key];
      v13 = sub_100213C20(v1, v12, 0);

      if ((v13 & 1) == 0)
      {
        v14 = sub_100006274("backupkey");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v16 = 138412290;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Failed to setup backup public key in peerInfo from account: %@", v16, 0xCu);
        }
      }

      goto LABEL_13;
    }

LABEL_14:
    CFRelease(v3);
    goto LABEL_15;
  }

  v10 = sub_100006274("backupkey");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 138412290;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "account backup key isn't valid: %@", v16, 0xCu);
  }

  sub_100213C20(v1, 0, 0);
LABEL_13:
  if (v3)
  {
    goto LABEL_14;
  }

LABEL_15:
}

void sub_100214900(uint64_t a1, CFDataRef theData)
{
  v2 = theData;
  if (theData)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v20 = 0;
    v21 = 0;
    v18 = 0;
    v19 = 0;
    BytePtr = CFDataGetBytePtr(theData);
    v5 = &BytePtr[CFDataGetLength(v2)];
    if (sub_100214C00(&v21, &v20, &v19, &v18) == v5)
    {
      v6 = v20;
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100214D44;
      v27 = &unk_100345640;
      v28 = &v22;
      v29 = v19;
      v30 = v18;
      v7 = buf;
      v8 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v6, 4, kCFAllocatorNull);
      v9 = v7;
      v10 = v9;
      if (v8)
      {
        Length = CFDataGetLength(v8);
        Mutable = CFStringCreateMutable(kCFAllocatorDefault, 2 * Length);
        v13 = CFDataGetBytePtr(v8);
        v14 = CFDataGetLength(v8);
        if (v14 >= 1)
        {
          do
          {
            v15 = *v13++;
            CFStringAppendFormat(Mutable, 0, @"%02X", v15);
            --v14;
          }

          while (v14);
        }

        (*&buf[16])(v10, Mutable);
        CFRelease(Mutable);

        CFRelease(v8);
      }

      else
      {
        (*&buf[16])(v9, @"(null)");
        CFRelease(@"(null)");
      }

      v2 = v23[3];
    }

    else
    {
      v2 = 0;
    }

    _Block_object_dispose(&v22, 8);
  }

  v16 = sub_100006274("circleOps");
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v17)
    {
      *buf = 138412546;
      *&buf[4] = a1;
      *&buf[12] = 2112;
      *&buf[14] = v2;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@ %@]", buf, 0x16u);
    }

    CFRelease(v2);
  }

  else
  {
    if (v17)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "failed to decode pbkdf2 params", buf, 2u);
    }
  }
}

void sub_100214BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

size_t sub_100214C00(void *a1, uint64_t *a2, void *a3, void *a4)
{
  ccder_decode_constructed_tl();
  v8 = ccder_decode_tl();
  ccder_decode_uint64();
  ccder_decode_uint64();
  v9 = ccder_decode_tl();
  if (CSSMOID_PKCS5_HMAC_SHA1.Length)
  {
    return 0;
  }

  v10 = v9;
  if (memcmp(CSSMOID_PKCS5_HMAC_SHA1.Data, v9, CSSMOID_PKCS5_HMAC_SHA1.Length) || !v10)
  {
    return 0;
  }

  if (a2)
  {
    *a2 = v8;
  }

  if (a1)
  {
    *a1 = 0;
  }

  result = v10 + CSSMOID_PKCS5_HMAC_SHA1.Length;
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  return result;
}

CFStringRef sub_100214D44(void *a1, uint64_t a2)
{
  result = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"<Params: iter: %zd, size: %zd, salt: %@>", a1[5], a1[6], a2);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t sub_100214DA0(const __CFData *a1, CFDataRef theData)
{
  v17 = 0;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  v15 = 0;
  v16 = 0;
  CFDataGetBytePtr(theData);
  CFDataGetLength(theData);
  if (!sub_100214C00(&v18, &v17, &v16, &v15))
  {
    *&v13 = theData;
LABEL_7:
    SOSCreateErrorWithFormat();
    return 0;
  }

  v4 = v15;
  if (v15 != 256 || (v4 = v18, v18 <= 3) || (v4 = v16, v16 >> 4 <= 0xC34))
  {
    *&v13 = v4;
    goto LABEL_7;
  }

  CFDataGetBytePtr(a1);
  CFDataGetLength(a1);
  v6 = (32 * *ccec_get_cp()) | 0x10;
  __chkstk_darwin();
  v8 = (v14 - v7);
  v9 = 0;
  do
  {
    v10 = &v8[v9 / 8];
    *v10 = 0xAAAAAAAAAAAAAAAALL;
    v10[1] = 0xAAAAAAAAAAAAAAAALL;
    v9 += 16;
  }

  while (v7 != v9);
  sub_100214900(@"SOSUserKeygen generating key for:", theData);
  __chkstk_darwin();
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v14[-8] = v11;
  v13 = v11;
  *&v14[-16] = v11;
  *&v14[-12] = v11;
  *&v14[-24] = v11;
  *&v14[-20] = v11;
  *&v14[-32] = v11;
  *&v14[-28] = v11;
  ccsha256_di();
  ccpbkdf2_hmac();
  v14[1] = 0;
  if (ccrng())
  {
    key_deterministic = ccec_generate_key_deterministic();
    cc_clear();
    if (!key_deterministic)
    {
      return sub_100215024(v8);
    }
  }

  SOSCreateError();
  return 0;
}

uint64_t sub_100215024(uint64_t *a1)
{
  v1 = *a1;
  v2 = 3 * ((cczp_bitlen() + 7) >> 3);
  __chkstk_darwin();
  v4 = &v16 - v3;
  memset(&v16 - v3, 170, v2 + 1);
  ccec_x963_export();
  v5 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v4, v2 + 1, kCFAllocatorNull);
  v13 = sub_10001104C(kCFAllocatorDefault, v6, v7, v8, v9, v10, v11, v12, kSecValueData, v5);
  v14 = SecKeyCreateFromAttributeDictionary();
  CFRelease(v13);
  CFRelease(v5);
  cc_clear();
  return v14;
}

uint64_t sub_10021519C(uint64_t a1, const __CFSet *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a6)
  {
    if (sub_100258C54(*(a4 + 24), a3))
    {
      SOSCreateError();
      return 1;
    }

    else if (sub_1002595AC(a4))
    {
      return 0;
    }

    else
    {
      if (a1)
      {
        SOSFullPeerInfoGetPeerInfo();
        PeerID = SOSPeerInfoGetPeerID();
        v16 = sub_100258DA0(a4);
        v30 = 0;
        v31 = &v30;
        v32 = 0x2020000000;
        v33 = 1;
        context = _NSConcreteStackBlock;
        v24 = 3221225472;
        v25 = sub_100215474;
        v26 = &unk_1003462B0;
        v27 = &v30;
        PermittedViews = SOSPeerInfoGetPermittedViews();
        CFSetApplyFunction(v16, sub_100215594, &context);
        v17 = *(v31 + 24);
        _Block_object_dispose(&v30, 8);
        v18 = sub_100258E88(a4, PeerID);
      }

      else
      {
        v18 = 0;
        v17 = 0;
      }

      if (v17 & 1 | !v18)
      {
        v19 = 0;
      }

      else
      {
        v19 = 11;
      }

      if (v18 || (v17 & 1) == 0)
      {
        v20 = v19;
      }

      else
      {
        v20 = 10;
      }

      if (v20 == 11)
      {
        SOSCreateError();
        return 11;
      }

      else if (v20 == 10)
      {
        SOSCreateError();
        return 10;
      }

      else
      {
        v21 = sub_100258DA0(a4);
        if (!v21)
        {
          return 9;
        }

        v30 = 0;
        v31 = &v30;
        v32 = 0x2020000000;
        v33 = 1;
        context = _NSConcreteStackBlock;
        v24 = 3221225472;
        v25 = sub_1002154AC;
        v26 = &unk_100345640;
        PermittedViews = a2;
        v29 = v21;
        v27 = &v30;
        sub_100259084(a4, &context);
        v22 = *(v31 + 24);
        _Block_object_dispose(&v30, 8);
        if (v22 == 1)
        {
          return sub_1002345E8(a2, a4, a6, a7, a8);
        }

        else
        {
          return 9;
        }
      }
    }
  }

  else
  {
    SOSCreateError();
    return 3;
  }
}

void sub_10021545C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100215474(uint64_t a1, const void *a2)
{
  result = CFSetContainsValue(*(a1 + 40), a2);
  if (!result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return result;
}

void sub_1002154AC(void *a1)
{
  v2 = a1[5];
  v3 = SOSPeerInfoSetFindByID();
  if (v3)
  {
    v4 = a1[6];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10021555C;
    v5[3] = &unk_1003462B0;
    v5[4] = a1[4];
    v5[5] = v3;
    CFSetApplyFunction(v4, sub_100215594, v5);
  }

  else
  {
    *(*(a1[4] + 8) + 24) = 0;
  }
}

uint64_t sub_10021555C(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = SOSPeerInfoIsViewPermitted();
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return result;
}

uint64_t sub_1002155AC(const void *a1, const void *a2)
{
  v3 = sub_100259164(a1, 1);
  v4 = v3;
  if (v3 && a2)
  {
    CFDictionarySetValue(*(v3 + 16), @"LastModifier", a2);
  }

  return v4;
}

void sub_1002155F8(uint64_t a1, uint64_t a2, const void *a3, CFTypeRef *a4)
{
  SOSFullPeerInfoGetPeerInfo();
  PeerID = SOSPeerInfoGetPeerID();
  v8 = SOSFullPeerInfoCopyDeviceKey();
  v9 = v8;
  if (v8 && PeerID)
  {
    CFDictionarySetValue(*(a1 + 16), @"LastModifier", PeerID);
    if (sub_100258DF8(a1, a3))
    {
      sub_1002599A4(a1, v9, a4);
    }
  }

  else if (!v8)
  {
    return;
  }

  CFRelease(v9);
}

void sub_1002156C0(void *a1, uint64_t a2)
{
  v3 = sub_10020649C(a1, @"PeerNegotiationTimeouts");
  if (!v3 || (v4 = v3, v5 = CFGetTypeID(v3), v5 != CFDictionaryGetTypeID()))
  {
    v7 = sub_100006274("otrtimer");
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
LABEL_10:

      v9 = 0;
      goto LABEL_11;
    }

    *buf = 0;
LABEL_9:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "deadline value not available yet", buf, 2u);
    goto LABEL_10;
  }

  Value = CFDictionaryGetValue(v4, *(a2 + 16));
  v7 = sub_100006274("otrtimer");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!Value)
  {
    if (!v8)
    {
      goto LABEL_10;
    }

    *buf = 0;
    goto LABEL_9;
  }

  if (v8)
  {
    *buf = 67109120;
    LODWORD(v20) = [Value intValue];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "decided to wait %d before restarting negotiation", buf, 8u);
  }

  v9 = 1000000000 * [Value intValue];
LABEL_11:
  v10 = *(a2 + 16);
  if (v10)
  {
    CFRetain(*(a2 + 16));
  }

  v11 = sub_100006274("otrtimer");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = a2;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "setting timer for peer: %@", buf, 0xCu);
  }

  v12 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
  v13 = dispatch_time(0, v9);
  dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1002159D0;
  handler[3] = &unk_100346E68;
  handler[4] = v10;
  dispatch_source_set_event_handler(v12, handler);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100215B2C;
  v17[3] = &unk_100346E68;
  v17[4] = v10;
  dispatch_source_set_cancel_handler(v12, v17);
  dispatch_resume(v12);
  v14 = v12;
  v15 = *(a2 + 104);
  if (!v15)
  {
    v15 = objc_alloc_init(NSMutableDictionary);
  }

  [v15 setObject:v14 forKey:*(a2 + 16)];
  v16 = v15;
  *(a2 + 104) = v16;
}

void sub_1002159D0(uint64_t a1)
{
  v2 = sub_100006274("otrtimer");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v4[0]) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "otrTimerFired fired", v4, 2u);
  }

  v4[4] = *(a1 + 32);
  v5 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10025642C;
  v4[3] = &unk_100346C18;
  sub_1002497A8(&v5, v4);
  if (v5)
  {
    v3 = sub_100006274("SecError");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "error resetting otr negotation: %@", buf, 0xCu);
    }
  }
}

void sub_100215B2C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_100215B3C(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 accountKey];
  v5 = [v3 accountKeyDerivationParameters];
  sub_100216D24(v4);
  der_sizeof_data_or_null();
  v6 = ccder_sizeof();

  Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
  CFDataSetLength(Mutable, v6);
  v8 = [v3 accountKey];
  v9 = [v3 accountKeyDerivationParameters];
  CFDataGetMutableBytePtr(Mutable);
  CFDataGetMutableBytePtr(Mutable);
  CFDataGetLength(Mutable);
  der_encode_data_or_null();
  sub_100216D80(v8);
  v10 = ccder_encode_constructed_tl();

  if (v10)
  {
    v11 = [v3 key_transport];
    v12 = [v3 key_transport];
    v13 = [v11 SOSTransportKeyParameterPublishCloudParameters:v12 data:Mutable err:a2];

    if (v13)
    {
      v14 = 1;
      if (!Mutable)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    SOSCreateErrorWithFormat();
  }

  else
  {
    SOSCreateError();
  }

  v14 = 0;
  if (Mutable)
  {
LABEL_8:
    CFRelease(Mutable);
  }

LABEL_9:

  return v14;
}

BOOL sub_100215D20(int a1, CFDataRef theData)
{
  CFDataGetBytePtr(theData);
  CFDataGetBytePtr(theData);
  CFDataGetLength(theData);
  ccder_decode_sequence_tl();
  sub_100216DF4();
  v3 = der_decode_data_or_null();
  BytePtr = CFDataGetBytePtr(theData);
  return v3 == &BytePtr[CFDataGetLength(theData)];
}

void sub_100215E08(void *a1)
{
  if (dword_10039E368 > 0)
  {
    --dword_10039E368;
    return;
  }

  v12 = [a1 account];
  if (sub_100216084(v12, 0))
  {
    v1 = [v12 kvs_message_transport];
    v2 = [v1 SOSTransportMessageGetEngine];

    if (![OTSOSActualAdapter sosEnabled]_0())
    {
LABEL_17:
      dword_10039E368 = 20;
      goto LABEL_18;
    }

    cf = 0;
    v3 = sub_100006274("engineLogState");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Start", buf, 2u);
    }

    if (v2)
    {
      v4 = sub_100151158(v2, &cf);
      if (v4)
      {
        v5 = v4;
        SOSCCForEachEngineStateAsStringFromArray();
LABEL_10:
        v6 = cf;
        if (cf)
        {
          cf = 0;
          CFRelease(v6);
        }

        if (v5)
        {
          CFRelease(v5);
        }

        v7 = sub_100006274("engineLogState");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finish", buf, 2u);
        }

        goto LABEL_17;
      }

      v8 = sub_100006274("engineLogState");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = cf;
        v9 = "No engine peers: %@\n";
        v10 = v8;
        v11 = 12;
        goto LABEL_25;
      }
    }

    else
    {
      v8 = sub_100006274("engineLogState");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v9 = "No Engine Available";
        v10 = v8;
        v11 = 2;
LABEL_25:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
      }
    }

    v5 = 0;
    goto LABEL_10;
  }

LABEL_18:
}

id sub_100216084(void *a1, uint64_t a2)
{
  v2 = [a1 isInCircle:a2];
  if ((v2 & 1) == 0)
  {
    v3 = sub_100006274("account-sync");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Not performing requested sync operation: not in circle yet", v5, 2u);
    }
  }

  return v2;
}

CFMutableSetRef sub_100216108(void *a1, const __CFSet *a2)
{
  v3 = a1;
  Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  v5 = [v3 account];
  v6 = sub_100216084(v5, 0);

  if (v6)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100216204;
    v8[3] = &unk_100345A78;
    v9 = v3;
    v10 = Mutable;
    CFSetApplyFunction(a2, sub_100216628, v8);
  }

  return Mutable;
}

void sub_100216204(uint64_t a1, CFTypeRef cf)
{
  if (!cf || (v2 = cf, v4 = CFGetTypeID(cf), v4 != CFStringGetTypeID()))
  {
    v2 = 0;
    cfa = 0;
    goto LABEL_10;
  }

  cfa = 0;
  v5 = *(a1 + 32);
  v24 = 0;
  v6 = [v5 account];
  if ((sub_100216084(v6, &cfa) & 1) == 0)
  {

    goto LABEL_10;
  }

  v7 = sub_100006274("account-sync");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Syncing with KVS capable peer: %@", buf, 0xCu);
  }

  Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  CFSetAddValue(Mutable, v2);
  v9 = [v5 account];
  *buf = 0;
  if (!sub_100216084(v9, &v24))
  {
    goto LABEL_30;
  }

  v10 = [v9 kvs_message_transport];
  v11 = [v9 kvs_message_transport];
  v12 = [v10 SOSTransportMessageSyncWithPeers:v11 p:Mutable err:buf];

  if (v12)
  {
    LODWORD(v13) = 1;
    goto LABEL_31;
  }

  v13 = *buf;
  if (!*buf)
  {
    goto LABEL_31;
  }

  if (CFErrorGetCode(*buf) == 1032)
  {
    Domain = CFErrorGetDomain(v13);
    if (Domain && kSOSErrorDomain)
    {
      if (!CFEqual(Domain, kSOSErrorDomain))
      {
        goto LABEL_27;
      }

LABEL_24:
      v20 = sub_100006274("account-sync");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Arming account to update SOSEngine with current trusted peers", v25, 2u);
      }

      [v9 setEngine_peer_state_needs_repair:1];
      goto LABEL_27;
    }

    if (Domain == kSOSErrorDomain)
    {
      goto LABEL_24;
    }
  }

LABEL_27:
  if (!*buf)
  {
LABEL_30:
    LODWORD(v13) = 0;
    goto LABEL_31;
  }

  if (v24)
  {
    CFRelease(*buf);
    goto LABEL_30;
  }

  LODWORD(v13) = 0;
  v24 = *buf;
LABEL_31:

  v21 = sub_100006274("account-sync");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = "failed";
    if (v13)
    {
      v22 = "succeeded";
    }

    *buf = 136315394;
    *&buf[4] = v22;
    v27 = 2112;
    v28 = v24;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "KVS sync %s. (%@)", buf, 0x16u);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (!v24)
  {

    if (v13)
    {
      goto LABEL_44;
    }

LABEL_10:
    v14 = sub_100006274("account-sync");
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 138412546;
    *&buf[4] = v2;
    v27 = 2112;
    v28 = cfa;
    v15 = "failed to sync with peer: %@ error: %@";
    v16 = v14;
    v17 = 22;
    goto LABEL_12;
  }

  if (cfa)
  {
    CFRelease(v24);
  }

  else
  {
    cfa = v24;
  }

  if ((v13 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_44:
  CFSetAddValue(*(a1 + 40), v2);
  v14 = sub_100006274("account-sync");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v2;
    v15 = "synced with peer: %@";
    v16 = v14;
    v17 = 12;
LABEL_12:
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
  }

LABEL_13:

  v18 = cfa;
  if (cfa)
  {
    cfa = 0;
    CFRelease(v18);
  }
}

CFMutableSetRef sub_100216640(void *a1, const __CFSet *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [v5 account];
  if (sub_100216084(v6, a3))
  {
    Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
    v8 = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
    if ([v6 peerInfo])
    {
      PeerID = SOSPeerInfoGetPeerID();
      MutableCopy = CFSetCreateMutableCopy(kCFAllocatorDefault, 0, a2);
      CFSetRemoveValue(MutableCopy, PeerID);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10021684C;
      v13[3] = &unk_100347768;
      v14 = v6;
      v15 = v8;
      v16 = Mutable;
      CFSetApplyFunction(MutableCopy, sub_100216628, v13);
      v11 = sub_100216108(v5, v8);
      context[0] = _NSConcreteStackBlock;
      context[1] = 3221225472;
      context[2] = sub_100216A10;
      context[3] = &unk_1003477F0;
      context[4] = Mutable;
      CFSetApplyFunction(v11, sub_100216628, context);
      if (v11)
      {
        CFRelease(v11);
      }

      sub_100215E08(v5);
      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      if (v8)
      {
        CFRelease(v8);
      }
    }

    else if (v8)
    {
      CFRelease(v8);
    }
  }

  else
  {
    Mutable = CFSetCreateMutableCopy(kCFAllocatorDefault, 0, a2);
  }

  return Mutable;
}

void sub_10021684C(uint64_t a1, CFTypeRef cf)
{
  v2 = cf;
  cfa = 0;
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 != CFStringGetTypeID())
    {
      sub_1000103CC(-50, &cfa, @"object %@ is not a string", v2);
      v2 = 0;
    }
  }

  else
  {
    sub_1000103CC(-50, &cfa, @"object %@ is not a string", 0);
  }

  v5 = [*(a1 + 32) trust];
  [v5 trustedCircle];
  if (v2)
  {
    v6 = SOSCircleCopyPeerWithID();
    if (v6)
    {
      v7 = v6;
      [*(a1 + 32) accountKey];
      HasValidSyncingPeer = SOSCircleHasValidSyncingPeer();
      v9 = 48;
      if (HasValidSyncingPeer)
      {
        v9 = 40;
      }

      CFSetAddValue(*(a1 + v9), v2);
      CFRelease(v7);
    }

    else
    {
      CFSetAddValue(*(a1 + 48), v2);
    }
  }

  if (cfa)
  {
    v10 = sub_100006274("account-sync");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = v2;
      v15 = 2112;
      v16 = cfa;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Skipped peer ID: %@ due to %@", buf, 0x16u);
    }

    v11 = cfa;
    if (cfa)
    {
      cfa = 0;
      CFRelease(v11);
    }
  }
}

CFMutableSetRef sub_100216A18(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 account];
  if (sub_100216084(v4, a2))
  {
    v5 = [v3 account];
    v6 = [v5 kvs_message_transport];
    v7 = [v6 SOSTransportMessageGetEngine];

    v8 = sub_100150DB4(v7);
    v9 = [[NSSet alloc] initWithArray:v8];
    v10 = sub_10014EF2C(v7, v9, 1, a2);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id sub_100216AF0(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 account];
  v5 = [v4 trust];
  v6 = sub_100216084(v4, a2);
  if (v6)
  {
    v7 = +[NSMutableSet set];
    [v5 trustedCircle];
    [v4 accountKey];
    v10 = v7;
    v8 = v7;
    SOSCircleForEachValidSyncingPeer();
    [v3 requestSyncWithPeers:v8];
  }

  return v6;
}

id sub_100216C18(uint64_t a1)
{
  v1 = *(a1 + 32);
  PeerID = SOSPeerInfoGetPeerID();

  return [v1 addObject:PeerID];
}

uint64_t sub_100216C58(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = ccder_decode_tag();
  result = 0;
  if (v4)
  {
    if (a1)
    {
      *a1 = SOSFullPeerInfoCreateFromDER();
      return a3;
    }
  }

  return result;
}

uint64_t sub_100216D24(uint64_t a1)
{
  if (a1)
  {
    SecKeyCopyPublicBytes();
  }

  return der_sizeof_data_or_null();
}

uint64_t sub_100216D80(uint64_t a1)
{
  if (a1)
  {
    SecKeyCopyPublicBytes();
  }

  return der_encode_data_or_null();
}

uint64_t sub_1002179C0(const void *a1, const void *a2)
{
  v3 = sub_100259164(a1, 5);
  v4 = v3;
  if (v3 && a2)
  {
    CFDictionarySetValue(*(v3 + 16), @"LastModifier", a2);
  }

  return v4;
}

uint64_t sub_100217A0C(void *a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  sub_100217A94(a1);
  if (!sub_100217C1C(a1))
  {
    return 0;
  }

  v8 = sub_100238980(a3, a4);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = sub_10022B6D0(a1, v8, a2, a4);
  CFRelease(v9);
  return v10;
}

void sub_100217A94(void *a1)
{
  if (!a1)
  {
    v1 = sub_100006274("SecError");
    if (!os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v8 = 0;
    v2 = "no ring passed in";
    v3 = &v8;
LABEL_17:
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, v2, v3, 2u);
    goto LABEL_18;
  }

  if (!a1[2])
  {
    v1 = sub_100006274("SecError");
    if (!os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v7 = 0;
    v2 = "ring has no unSignedInformation";
    v3 = &v7;
    goto LABEL_17;
  }

  if (!a1[3])
  {
    v1 = sub_100006274("SecError");
    if (!os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v6 = 0;
    v2 = "ring has no signedInformation";
    v3 = &v6;
    goto LABEL_17;
  }

  if (!a1[4])
  {
    v1 = sub_100006274("SecError");
    if (!os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v5 = 0;
    v2 = "ring has no signatures";
    v3 = &v5;
    goto LABEL_17;
  }

  if (!a1[5])
  {
    v1 = sub_100006274("SecError");
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 0;
      v2 = "ring has no data";
      v3 = &v4;
      goto LABEL_17;
    }

LABEL_18:
  }
}

BOOL sub_100217C1C(void *a1)
{
  v1 = sub_100258BCC(a1);
  if (v1 != 5)
  {
    SOSCreateError();
  }

  return v1 == 5;
}

BOOL sub_100217C70(void *a1)
{
  v1 = a1;
  v2 = sub_100217CE0(v1);
  if (v2)
  {
    v3 = [v1 trust];
    [v3 generationSignatureUpdateWith:v1 key:v2];
  }

  return v2 != 0;
}

id sub_100217CE0(void *a1)
{
  v1 = a1;
  if (![v1 accountPrivateKey])
  {
    SOSCreateError();
  }

  v2 = [v1 accountPrivateKey];

  return v2;
}

void sub_100217D3C(void *a1)
{
  v1 = a1;
  v2 = sub_100006274("circleOps");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Purging private account credential", v6, 2u);
  }

  if ([v1 accountPrivateKey])
  {
    [v1 setAccountPrivateKey:0];
  }

  v3 = [v1 _password_tmp];

  if (v3)
  {
    [v1 set_password_tmp:0];
  }

  v4 = [v1 user_private_timer];

  if (v4)
  {
    v5 = [v1 user_private_timer];
    dispatch_source_cancel(v5);

    [v1 setUser_private_timer:0];
    xpc_transaction_end();
  }

  if ([v1 lock_notification_token] != -1)
  {
    notify_cancel([v1 lock_notification_token]);
    [v1 setLock_notification_token:0xFFFFFFFFLL];
  }
}

void sub_100217E5C(void *a1)
{
  v1 = a1;
  v2 = [v1 user_private_timer];

  if (v2)
  {
    v3 = dispatch_time(0, 600000000000);
    v4 = sub_100006274("keygen");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = 10;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting private credential purge time to %lld minutes", &v6, 0xCu);
    }

    v5 = [v1 user_private_timer];
    dispatch_source_set_timer(v5, v3, 0xFFFFFFFFFFFFFFFFLL, 0x12A05F200uLL);
  }
}

void sub_100217F74(void *a1)
{
  v1 = SecKeyCopyExternalRepresentation([a1 accountPrivateKey], 0);
  v2 = v1;
  if (v1)
  {
    v20[0] = kSecClass;
    v20[1] = kSecAttrAccount;
    v21[0] = kSecClassInternetPassword;
    v21[1] = @"SOSUserCredential";
    v20[2] = kSecAttrIsInvisible;
    v20[3] = kSecAttrAccessible;
    v21[2] = &__kCFBooleanTrue;
    v21[3] = kSecAttrAccessibleWhenUnlocked;
    v3 = kSecAttrSysBound;
    v20[4] = kSecAttrAccessGroup;
    v20[5] = kSecAttrSysBound;
    v21[4] = @"com.apple.security.sos-usercredential";
    v21[5] = &off_100365218;
    v20[6] = kSecValueData;
    v21[6] = v1;
    v4 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:7];
    v5 = SecItemAdd(v4, 0);
    if (v5)
    {
      v6 = v5;
      if (v5 != -25299)
      {
        v10 = sub_100006274("circleOps");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 67109120;
          v15 = v6;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Failed to add user private key to keychain: %d", &v14, 8u);
        }

        v7 = v4;
        goto LABEL_14;
      }

      v18[0] = kSecClass;
      v18[1] = kSecAttrAccount;
      v19[0] = kSecClassInternetPassword;
      v19[1] = @"SOSUserCredential";
      v18[2] = kSecAttrAccessGroup;
      v18[3] = kSecUseDataProtectionKeychain;
      v19[2] = @"com.apple.security.sos-usercredential";
      v19[3] = &__kCFBooleanTrue;
      v7 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:4];

      v16[0] = kSecValueData;
      v16[1] = v3;
      v17[0] = v2;
      v17[1] = &off_100365218;
      v8 = SecItemUpdate(v7, [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2]);
      if (v8)
      {
        v9 = v8;
        v10 = sub_100006274("circleOps");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 67109120;
          v15 = v9;
          v11 = "Failed to update user private key to keychain: %d";
          v12 = v10;
          v13 = 8;
LABEL_10:
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, &v14, v13);
          goto LABEL_14;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v7 = v4;
    }

    v10 = sub_100006274("circleOps");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      v11 = "Stored user private key stashed local keychain";
      v12 = v10;
      v13 = 2;
      goto LABEL_10;
    }

LABEL_14:
  }
}

SecKeyRef sub_100218278(__CFString **a1)
{
  result = 0;
  v11[0] = kSecClass;
  v11[1] = kSecAttrAccount;
  v12[0] = kSecClassInternetPassword;
  v12[1] = @"SOSUserCredential";
  v11[2] = kSecAttrAccessGroup;
  v11[3] = kSecReturnData;
  v12[2] = @"com.apple.security.sos-usercredential";
  v12[3] = &__kCFBooleanTrue;
  v11[4] = kSecMatchLimit;
  v12[4] = kSecMatchLimitOne;
  v2 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:5];
  v3 = SecItemCopyMatching(v2, &result);
  if (v3)
  {
    sub_1000103CC(v3, a1, @"Failed fetching account credential: %d", v3);
    v4 = 0;
  }

  else
  {
    v9[0] = kSecAttrKeyClass;
    v9[1] = kSecAttrKeyType;
    v10[0] = kSecAttrKeyClassPrivate;
    v10[1] = kSecAttrKeyTypeEC;
    v5 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
    v4 = SecKeyCreateWithData(result, v5, a1);
    v6 = result;
    if (result)
    {
      result = 0;
      CFRelease(v6);
    }
  }

  return v4;
}

id sub_100218428(void *a1)
{
  v1 = a1;
  if ([v1 accountKey] && (objc_msgSend(v1, "accountKeyIsTrusted") & 1) != 0)
  {
    v2 = [v1 accountKey];
  }

  else
  {
    SOSCreateError();
    v2 = 0;
  }

  return v2;
}

uint64_t sub_100218498(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  PublicFromPrivate = SecKeyCreatePublicFromPrivate();
  v6 = [v4 accountKey];
  if (PublicFromPrivate && v6)
  {
    if (CFEqual(v6, PublicFromPrivate))
    {
      v7 = 1;
LABEL_17:
      CFRelease(PublicFromPrivate);
      goto LABEL_18;
    }
  }

  else if (v6 == PublicFromPrivate)
  {
    v7 = 1;
    if (!PublicFromPrivate)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  [v4 accountKey];
  v8 = SOSCopyIDOfKey();
  v9 = SOSCopyIDOfKey();
  SOSCreateErrorWithFormat();
  v10 = sub_100006274("circleop");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = v9;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Password generated pubkey doesn't match - candidate: %@  known: %@", buf, 0x16u);
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  v7 = 0;
  if (PublicFromPrivate)
  {
    goto LABEL_17;
  }

LABEL_18:

  return v7;
}

uint64_t sub_100218648(void *a1, __CFString **a2)
{
  v3 = a1;
  if (![v3 accountKey] || (objc_msgSend(v3, "accountKeyIsTrusted") & 1) == 0)
  {
    SOSCreateError();
LABEL_12:
    v6 = 0;
    goto LABEL_7;
  }

  v4 = sub_100218278(a2);
  if (!v4)
  {
    v8 = sub_100006274("circleOps");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Looked for a stashed private key, didn't find one", v9, 2u);
    }

    goto LABEL_12;
  }

  v5 = v4;
  v6 = sub_100218498(v3, v4, a2);
  if (v6)
  {
    sub_10021875C(v3, 0, v5, 1);
  }

  CFRelease(v5);
LABEL_7:

  return v6;
}

void sub_10021875C(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = a1;
  if ((sub_10021A328(v7) & 1) == 0)
  {
    v8 = [v7 trust];
    if ([v8 fullPeerInfo])
    {
      SOSFullPeerInfoUpgradeSignatures();
    }
  }

  v9 = v7;
  PublicFromPrivate = SecKeyCreatePublicFromPrivate();
  if ([v9 accountKey] && objc_msgSend(v9, "accountKeyIsTrusted") && CFEqual(PublicFromPrivate, objc_msgSend(v9, "accountKey")))
  {
    if (PublicFromPrivate)
    {
      CFRelease(PublicFromPrivate);
    }
  }

  else
  {
    if (a4 && [v9 accountKey])
    {
      [v9 setPreviousAccountKey:{objc_msgSend(v9, "accountKey")}];
    }

    [v9 setAccountKey:PublicFromPrivate];
    [v9 setAccountKeyIsTrusted:1];
    if (![v9 previousAccountKey])
    {
      [v9 setPreviousAccountKey:{objc_msgSend(v9, "accountKey")}];
    }

    if (PublicFromPrivate)
    {
      CFRelease(PublicFromPrivate);
    }

    [v9 accountKey];
    v11 = SOSCopyIDOfKeyWithLength();
    v12 = sub_100006274("circleOps");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "trusting new public key: %@", &v13, 0xCu);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    notify_post("com.apple.security.publickeyavailable");
  }

  sub_100218968(v9, a3, a2);
  sub_100221828(v9);
}

void sub_100218968(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a2)
  {
    v6 = sub_100006274("circleOps");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setting new private userKey", buf, 2u);
    }

    [v5 setAccountPrivateKey:a2];
    if (!a3)
    {
      v7 = sub_100006274("circleOps");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "no userKey password to save", buf, 2u);
      }

      [v5 set_password_tmp:0];
      goto LABEL_14;
    }
  }

  else
  {
    v8 = sub_100006274("circleOps");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Purging private entities for userKey", buf, 2u);
    }

    sub_100217D3C(v5);
    if (!a3)
    {
      v18 = sub_100006274("circleOps");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "SOSAccountSetPrivateCredential nothing to save", buf, 2u);
      }

      goto LABEL_17;
    }
  }

  v9 = sub_100006274("circleOps");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "temporarily caching userKey password", buf, 2u);
  }

  v10 = [[NSData alloc] initWithData:a3];
  [v5 set_password_tmp:v10];

LABEL_14:
  v11 = [v5 user_private_timer];

  if (!v11)
  {
    xpc_transaction_begin();
    v12 = [v5 queue];
    v13 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v12);
    [v5 setUser_private_timer:v13];

    v14 = [v5 user_private_timer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100218D0C;
    handler[3] = &unk_100346018;
    v15 = v5;
    v23 = v15;
    dispatch_source_set_event_handler(v14, handler);

    *buf = -1431655766;
    v16 = [v15 queue];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100218D88;
    v19[3] = &unk_100345668;
    v17 = v15;
    v20 = v17;
    notify_register_dispatch("com.apple.mobile.keybagd.lock_status", buf, v16, v19);

    [v17 setLock_notification_token:*buf];
    sub_100217E5C(v17);
    v18 = [v17 user_private_timer];
    dispatch_resume(v18);
LABEL_17:

    goto LABEL_18;
  }

  sub_100217E5C(v5);
LABEL_18:
}

void sub_100218D0C(uint64_t a1)
{
  v2 = sub_100006274("keygen");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Timing out, purging private account credential", v3, 2u);
  }

  sub_100217D3C(*(a1 + 32));
}

void sub_100218D88(uint64_t a1)
{
  v4 = 0;
  *buf = -1431655766;
  lock_state = aks_get_lock_state();
  if (sub_10001C4BC(lock_state, &v4, @"aks_get_lock_state failed: %x", lock_state))
  {
    if (buf[0])
    {
      sub_100217D3C(*(a1 + 32));
    }
  }

  else
  {
    v3 = sub_100006274("SecError");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Checking for locked after change failed: %@", buf, 0xCu);
    }
  }
}

uint64_t sub_100218E7C(void *a1, const __CFData *a2, CFTypeRef *a3)
{
  v5 = a1;
  if ([v5 accountKey])
  {
    v6 = [v5 accountKeyDerivationParameters];

    if (v6)
    {
      v7 = [v5 accountKeyDerivationParameters];
      v8 = sub_100214DA0(a2, v7);

      if (v8)
      {
        if (sub_100218498(v5, v8, a3))
        {

          sub_10021875C(v5, a2, v8, [v5 accountKeyIsTrusted]);
          CFRelease(v8);
          v9 = 1;
          goto LABEL_21;
        }

        CFRelease(v8);
      }
    }
  }

  v10 = [v5 accountKeyDerivationParameters];

  if (v10)
  {
    cf = 0;
    v11 = [v5 accountKeyDerivationParameters];
    v12 = sub_100215D20(&cf, v11);

    if (v12)
    {
      sub_100214900(@"sosAccountValidatePasswordOrFail", 0);
    }

    else
    {
      v13 = sub_100006274("circleOps");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Failed to retrieve cloud parameters - %@", buf, 0xCu);
      }

      if (a3)
      {
        if (*a3)
        {
          CFRelease(*a3);
        }

        *a3 = 0;
      }
    }

    v14 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v14);
    }
  }

  SOSCreateError();
  v15 = sub_100006274("circleOps");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Failed to create correct key with password.  Caching for use with KeyParam refreshes", buf, 2u);
  }

  sub_100218968(v5, 0, a2);
  v9 = 0;
LABEL_21:

  return v9;
}

uint64_t sub_100219108(void *a1, uint64_t a2, const __CFData *a3, CFTypeRef *a4)
{
  v7 = a1;
  v8 = sub_100218E7C(v7, a3, a4);
  if (v8)
  {
    sub_100217F74(v7);
    sub_100228C18(v7, @"AccountName", a2, 0);
  }

  v9 = sub_100006274("circleop");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Setting account.key_interests_need_updating to true in SOSAccountTryUserCredentials", v11, 2u);
  }

  [v7 setKey_interests_need_updating:1];
  return v8;
}

const void *sub_1002191DC(void *a1)
{
  sub_10025844C(a1);
  v2 = a1[3];

  return CFDictionaryGetValue(v2, @"Payload");
}

uint64_t sub_10021921C(uint64_t a1, __SecKey *a2, const void *a3, uint64_t a4, CFTypeRef *a5)
{
  SOSFullPeerInfoGetPeerInfo();
  PeerID = SOSPeerInfoGetPeerID();
  v10 = SOSFullPeerInfoCopyDeviceKey();
  v11 = 0;
  if (v10 && PeerID)
  {
    CFDictionarySetValue(*(a1 + 16), @"LastModifier", PeerID);
    sub_10025844C(a1);
    if (!a3)
    {
      v11 = 0;
      if (!a2)
      {
        goto LABEL_8;
      }

      goto LABEL_6;
    }

    CFDictionarySetValue(*(a1 + 24), @"Payload", a3);
    v11 = sub_1002599A4(a1, v10, a5);
  }

  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  if (a1)
  {
    sub_100259A8C(a1, a2, a5);
  }

LABEL_8:
  if (v10)
  {
    CFRelease(v10);
  }

  return v11;
}

uint64_t sub_10021930C(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  SOSFullPeerInfoGetPeerInfo();
  PeerID = SOSPeerInfoGetPeerID();
  v6 = SOSFullPeerInfoCopyDeviceKey();
  v7 = v6;
  if (v6)
  {
    v8 = PeerID == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (v8)
  {
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    CFDictionarySetValue(*(a1 + 16), @"LastModifier", PeerID);
    sub_100259A8C(a1, v7, a3);
  }

  CFRelease(v7);
  return v9;
}

uint64_t sub_1002193B4(uint64_t a1, __SecKey *a2, uint64_t a3, CFTypeRef *a4)
{
  SOSFullPeerInfoGetPeerInfo();
  PeerID = SOSPeerInfoGetPeerID();
  v8 = SOSFullPeerInfoCopyDeviceKey();
  v9 = 0;
  if (v8 && PeerID)
  {
    CFDictionarySetValue(*(a1 + 16), @"LastModifier", PeerID);
    v9 = sub_1002599A4(a1, v8, a4);
  }

  if (a2 && a1)
  {
    sub_100259A8C(a1, a2, a4);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v9;
}

uint64_t sub_10021946C(uint64_t a1, __SecKey *a2, uint64_t a3, CFTypeRef *a4)
{
  SOSFullPeerInfoGetPeerInfo();
  PeerID = SOSPeerInfoGetPeerID();
  if (sub_100258E88(a1, PeerID))
  {
    sub_10025844C(a1);
    Value = CFDictionaryGetValue(*(a1 + 24), @"PeerIDs");
    if (!Value || (v9 = Value, v10 = CFGetTypeID(Value), v10 != CFSetGetTypeID()))
    {
      v9 = 0;
    }

    v11 = v9;
LABEL_8:
    CFSetRemoveValue(v11, PeerID);
    if (!PeerID)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (sub_100258CB4(a1, PeerID))
  {
    sub_10025844C(a1);
    v11 = CFDictionaryGetValue(*(a1 + 16), @"Applicants");
    goto LABEL_8;
  }

  if (!sub_100258D04(a1, PeerID))
  {
    SOSCreateError();
    return 0;
  }

  sub_100258D54(a1, PeerID);
  if (PeerID)
  {
LABEL_9:
    CFDictionarySetValue(*(a1 + 16), @"LastModifier", PeerID);
  }

LABEL_10:
  v12 = SOSFullPeerInfoCopyDeviceKey();
  sub_1002599A4(a1, v12, a4);
  if (a2 && a1)
  {
    sub_100259A8C(a1, a2, a4);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return 1;
}

uint64_t sub_1002195E4(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  SOSFullPeerInfoGetPeerInfo();
  PeerID = SOSPeerInfoGetPeerID();
  v7 = SOSFullPeerInfoCopyDeviceKey();
  if (sub_1002196F4(a1, PeerID) != 1)
  {
    v9 = sub_100006274("ring");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Already associated with ring", v11, 2u);
    }

LABEL_8:
    v8 = 0;
    result = 0;
    if (!v7)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (!v7 || !PeerID)
  {
    goto LABEL_8;
  }

  sub_10025900C(a1, PeerID);
  CFDictionarySetValue(*(a1 + 16), @"LastModifier", PeerID);
  v8 = sub_1002599A4(a1, v7, a4);
LABEL_9:
  CFRelease(v7);
  return v8;
}

uint64_t sub_1002196F4(uint64_t a1, const void *a2)
{
  if (sub_100258E88(a1, a2))
  {
    return 0;
  }

  if (sub_100258CB4(a1, a2))
  {
    return 2;
  }

  if (sub_100258D04(a1, a2))
  {
    return 3;
  }

  return 1;
}

uint64_t sub_100219758(uint64_t a1, __SecKey *a2, uint64_t a3, CFTypeRef *a4)
{
  SOSFullPeerInfoGetPeerInfo();
  PeerID = SOSPeerInfoGetPeerID();
  v8 = SOSFullPeerInfoCopyDeviceKey();
  v9 = 0;
  if (v8 && PeerID)
  {
    sub_100259610(a1);
    sub_10025900C(a1, PeerID);
    CFDictionarySetValue(*(a1 + 16), @"LastModifier", PeerID);
    v9 = sub_1002599A4(a1, v8, a4);
  }

  if (a2 && a1)
  {
    sub_100259A8C(a1, a2, a4);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v9;
}

BOOL sub_100219824(uint64_t a1, const void *a2)
{
  sub_100259610(a1);
  if (a2)
  {
    CFDictionarySetValue(*(a1 + 16), @"LastModifier", a2);
  }

  return a2 != 0;
}

uint64_t sub_10021986C(const void *a1, const void *a2)
{
  v3 = sub_100259164(a1, 0);
  v4 = v3;
  if (v3 && a2)
  {
    CFDictionarySetValue(*(v3 + 16), @"LastModifier", a2);
  }

  return v4;
}

void sub_100219D7C(void *a1, const void *a2)
{
  if (a2)
  {
    if (!SOSPeerInfoIsRetirementTicket() || (v4 = a1[4], SOSPeerInfoRetireRetirementTicket()) && (v5 = a1[5], (SOSCircleHasActivePeer() & 1) == 0))
    {
      v6 = a1[6];

      CFSetAddValue(v6, a2);
    }
  }
}

void sub_100219DF8(uint64_t a1, const void *a2)
{
  CFArrayAppendValue(*(a1 + 40), a2);
  v4 = [*(a1 + 32) retirees];
  CFSetRemoveValue(v4, a2);
}

SecKeyRef sub_100219E70(int a1, uint64_t a2, uint64_t a3, uint64_t a4, CFErrorRef *a5)
{
  valuePtr = a1;
  privateKey = 0;
  v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  v14 = sub_10001104C(kCFAllocatorDefault, v7, v8, v9, v10, v11, v12, v13, kSecAttrIsPermanent, kCFBooleanTrue);
  v22 = sub_10001104C(kCFAllocatorDefault, v15, v16, v17, v18, v19, v20, v21, kSecAttrKeyType, kSecAttrKeyTypeEC);
  if (v14)
  {
    CFRelease(v14);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  v23 = SecKeyGeneratePair(v22, 0, &privateKey);
  if (v22)
  {
    CFRelease(v22);
  }

  if (v23)
  {
    v24 = sub_100006274("SecError");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v29 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "status: %ld", buf, 0xCu);
    }

    if (a5 && !*a5)
    {
      *a5 = CFErrorCreate(kCFAllocatorDefault, kCFErrorDomainOSStatus, v23, 0);
    }
  }

  return privateKey;
}

void sub_10021A0B4(uint64_t a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, kSecAttrLabel);
  if (Value)
  {
    v4 = Value;
    if (CFStringHasPrefix(Value, @"Cloud Identity"))
    {
      result = 0;
      v10 = sub_10001104C(kCFAllocatorDefault, kSecReturnRef, kCFBooleanTrue, v5, v6, v7, v8, v9, kSecMatchLimit, kSecMatchLimitOne);
      v11 = SecItemCopyMatching(v10, &result);
      if (v11)
      {
        v12 = v11;
        v13 = sub_100006274("iCloudIdentity");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109378;
          LODWORD(v17[0]) = v12;
          WORD2(v17[0]) = 2112;
          *(v17 + 6) = v4;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Failed query(%d) for %@", buf, 0x12u);
        }

        v14 = 0;
      }

      else
      {
        v14 = result;
        v13 = sub_100006274("iCloudIdentity");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v17[0] = v4;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Got key for label (%@)", buf, 0xCu);
        }
      }

      if (v10)
      {
        CFRelease(v10);
      }

      if (v14)
      {
        (*(*(a1 + 32) + 16))();
        CFRelease(v14);
      }
    }
  }
}

uint64_t sub_10021A328(void *a1)
{
  v1 = [a1 trust];
  if ([v1 fullPeerInfo])
  {
    PublicFromPrivate = SecKeyCreatePublicFromPrivate();
    SOSFullPeerInfoGetPeerInfo();
    v3 = SOSPeerInfoApplicationVerify();
    if (PublicFromPrivate)
    {
      CFRelease(PublicFromPrivate);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_10021A3A8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  if (![v7 hasPeerInfo])
  {
    goto LABEL_7;
  }

  if (!v8[2](v8, [v7 fullPeerInfo], a3))
  {
    v12 = 0;
    goto LABEL_8;
  }

  v9 = [v7 trust];
  if (![v9 trustedCircle])
  {
    SOSCreateErrorWithFormat();

LABEL_7:
    v12 = 1;
    goto LABEL_8;
  }

  v10 = [v7 trust];
  v11 = [v7 circle_transport];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10021A518;
  v14[3] = &unk_1003467B0;
  v16 = a2;
  v15 = v7;
  v12 = [v10 modifyCircle:v11 err:a3 action:v14];

LABEL_8:
  return v12;
}

uint64_t sub_10021A518(uint64_t a1)
{
  v2 = sub_100006274("circleChange");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Calling SOSCircleUpdatePeerInfo for %@", &v5, 0xCu);
  }

  [*(a1 + 32) peerInfo];
  return SOSCircleUpdatePeerInfo();
}

uint64_t sub_10021A5E8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10021A69C;
  v10[3] = &unk_100345700;
  v11 = a4;
  v12 = a3;
  v7 = v11;
  v8 = sub_10021A3A8(a1, a2, a3, v10);

  return v8;
}

uint64_t sub_10021A69C(uint64_t a1)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v2 = SOSFullPeerInfoUpdate();

  return v2;
}

const void *sub_10021A748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Copy = SOSPeerInfoCreateCopy();
  v6 = *(a1 + 40);
  v7 = (*(*(a1 + 32) + 16))();
  if (a3 && v7 && SOSPeerInfoSign())
  {
    v8 = sub_100006274("circleOp");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Signed Peerinfo to update", buf, 2u);
    }
  }

  else
  {
    v9 = sub_100006274("circleOp");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed updating PeerInfo", v11, 2u);
    }

    if (Copy)
    {
      CFRelease(Copy);
      return 0;
    }
  }

  return Copy;
}

void sub_10021A878(uint64_t a1)
{
  v1 = *(a1 + 32);
  SOSCircleForEachPeer();
}

CFMutableArrayRef sub_10021A908(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a3;
  if (sub_100218428(v4))
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    v7 = [v4 trust];
    v5[2](v5, [v7 trustedCircle], Mutable);
    CFArrayOfSOSPeerInfosSortByID();
  }

  else
  {
    Mutable = 0;
  }

  return Mutable;
}

void sub_10021A9C0(uint64_t a1)
{
  [*(a1 + 32) accountKey];
  if ((SOSPeerInfoApplicationVerify() & 1) == 0)
  {
    v2 = *(a1 + 40);

    sub_10021AA24(v2);
  }
}

void sub_10021AA24(__CFArray *a1)
{
  Copy = SOSPeerInfoCreateCopy();
  CFArrayAppendValue(a1, Copy);

  CFRelease(Copy);
}

void sub_10021AA7C(uint64_t a1)
{
  v1 = *(a1 + 32);
  SOSCircleForEachPeer();
}

void sub_10021AB0C(uint64_t a1)
{
  [*(a1 + 32) accountKey];
  if (SOSPeerInfoApplicationVerify())
  {
    v2 = *(a1 + 40);

    sub_10021AA24(v2);
  }
}

void sub_10021AB70(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = v2;
  SOSCircleForEachPeer();
}

void sub_10021AC10(uint64_t a1, const void *a2)
{
  v4 = *(a1 + 40);
  PeerID = SOSPeerInfoGetPeerID();
  if (v4)
  {
    v6 = PeerID == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (v4 == PeerID)
    {
      return;
    }
  }

  else if (CFEqual(v4, PeerID))
  {
    return;
  }

  [*(a1 + 32) accountKey];
  if (SOSPeerInfoApplicationVerify() && (SOSPeerInfoIsRetirementTicket() & 1) == 0)
  {
    v8 = *(a1 + 48);

    CFArrayAppendValue(v8, a2);
  }
}

void sub_10021ADA8(uint64_t a1)
{
  if ((SOSPeerInfoVersionHasV2Data() & 1) == 0)
  {
    v2 = *(a1 + 32);

    sub_10021AA24(v2);
  }
}

void sub_10021ADFC(uint64_t a1)
{
  v1 = *(a1 + 32);
  SOSCircleForEachPeer();
}

void sub_10021AE8C(uint64_t a1)
{
  if ((SOSPeerInfoVersionHasV2Data() & 1) == 0)
  {
    [*(a1 + 32) accountKey];
    if (SOSPeerInfoApplicationVerify())
    {
      v2 = *(a1 + 40);

      sub_10021AA24(v2);
    }
  }
}

void sub_10021AFFC(uint64_t a1)
{
  [*(a1 + 32) accountKey];
  if (SOSPeerInfoApplicationVerify())
  {
    v2 = SOSPeerInfoCopyEnabledViews();
    v3 = *(a1 + 40);
    context[0] = _NSConcreteStackBlock;
    context[1] = 3221225472;
    context[2] = sub_10021B0C0;
    context[3] = &unk_1003477F0;
    context[4] = v3;
    CFSetApplyFunction(v2, sub_10021B0C8, context);
    if (v2)
    {
      CFRelease(v2);
    }
  }
}

id sub_10021B1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) trust];
  v7 = [v6 encodeToDER:*(a1 + 32) err:*(a1 + 40) start:a3 end:a3 + a2];

  return v7;
}

void sub_10021BF64(uint64_t a1, int a2, CFTypeRef cf)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFDataGetTypeID())
    {
      v5 = SOSPeerInfoCreateFromData();
      CFSetAddValue(*(a1 + 32), v5);
      if (v5)
      {

        CFRelease(v5);
      }
    }
  }
}

void sub_10021BFFC(uint64_t a1, CFTypeRef cf)
{
  if (!cf)
  {
    return;
  }

  v4 = CFGetTypeID(cf);
  if (v4 == CFDataGetTypeID())
  {
    v5 = 0;
  }

  else
  {
    v11 = CFGetTypeID(cf);
    if (v11 != CFArrayGetTypeID())
    {
      return;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(cf, 0);
    v5 = CFArrayGetValueAtIndex(cf, 1);
    if (CFArrayGetCount(cf) != 2)
    {
      return;
    }

    if (!ValueAtIndex)
    {
      return;
    }

    v13 = CFGetTypeID(ValueAtIndex);
    if (v13 != CFDataGetTypeID())
    {
      return;
    }

    if (!v5)
    {
      return;
    }

    v14 = CFGetTypeID(v5);
    if (v14 != CFDataGetTypeID())
    {
      return;
    }
  }

  v6 = *(a1 + 40);
  v7 = SOSCircleCreateFromData();
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = *(a1 + 48);
  Name = SOSCircleGetName();
  if (v9 && Name)
  {
    if (!CFEqual(v9, Name))
    {
      goto LABEL_19;
    }

LABEL_17:
    [*(a1 + 32) setTrustedCircle:v8];
    CFRelease(v8);
    if (!v5)
    {
      return;
    }

    v8 = SOSFullPeerInfoCreateFromData();
    [*(a1 + 32) setFullPeerInfo:v8];
    if (!v8)
    {
      return;
    }

    goto LABEL_19;
  }

  if (v9 == Name)
  {
    goto LABEL_17;
  }

LABEL_19:

  CFRelease(v8);
}

id sub_10021C18C(uint64_t a1)
{
  sub_10022C730(*(a1 + 32));
  v2 = sub_100006274("circleop");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting account.key_interests_need_updating to true in SOSAccountCreateFromDER", v4, 2u);
  }

  return [*(a1 + 32) setKey_interests_need_updating:1];
}

id sub_10021C248(void *a1, const void *a2)
{
  v3 = a1;
  v4 = [v3 trust];

  if (v4)
  {
    v5 = [v3 trust];
    v4 = [v5 copyRing:a2 err:0];

    if (v4)
    {
      v6 = CFGetTypeID(v4);
      if (v6 != sub_100257F8C())
      {
        v7 = sub_100006274("SecError");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 138412290;
          v12 = v4;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Non ring in ring table: %@, purging!", &v11, 0xCu);
        }

        v8 = [v3 trust];
        v9 = [v8 getRings:0];

        if (v9)
        {
          CFDictionaryRemoveValue(v9, a2);
        }

        CFRelease(v4);
        v4 = 0;
      }
    }
  }

  return v4;
}

uint64_t sub_10021C3A4(void *a1, uint64_t a2, const void **a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a4;
  v11 = a5;
  if (([v9 isInCircle:0] & 1) == 0)
  {
    SOSErrorCreate();
    goto LABEL_13;
  }

  v12 = [v9 trust];
  v13 = [v12 copyRing:a2 err:a3];

  if (v13)
  {
    goto LABEL_5;
  }

  v14 = v10[2](v10, a2, a3);
  if (!v14)
  {
LABEL_13:
    v19 = 0;
    goto LABEL_14;
  }

  v13 = v14;
LABEL_5:
  v15 = v11[2](v11, v13, a3);
  if (!v15)
  {
    CFRelease(v13);
    goto LABEL_13;
  }

  v16 = v15;
  v17 = [v9 trust];
  v18 = [v9 circle_transport];
  v19 = [v17 handleUpdateRing:v9 prospectiveRing:v16 transport:v18 userPublicKey:objc_msgSend(v9 writeUpdate:"accountKey") err:{1, a3}];

  CFRelease(v13);
  CFRelease(v16);
  if (a3 && v19)
  {
    v20 = *a3;
    if (*a3)
    {
      *a3 = 0;
      CFRelease(v20);
    }

    v19 = 1;
  }

LABEL_14:

  return v19;
}

void sub_10021DAF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006274("acct-txn");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = getuid();
    if ([*(a1 + 32) initialInCircle])
    {
      v6 = "member";
    }

    else
    {
      v6 = "non-member";
    }

    v7 = [*(a1 + 32) account];
    v8 = [v7 SOSMonitorModeSOSIsActiveDescription];
    v9[0] = 67109890;
    v9[1] = v5;
    v10 = 2080;
    v11 = v6;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "UID: %d - Finished as:%s %@ v:%@", v9, 0x26u);
  }
}

void sub_10021DC1C(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 peerInfo])
  {
    [v2 peerInfo];
    v3 = SOSPeerInfoCopyEnabledViews();
    if (sub_100220920(v2))
    {
      MutableCopy = v3;
    }

    else
    {
      v5 = sub_10020649C(v2, @"pendingEnableViews");
      if (!v5 || (v6 = v5, v7 = CFGetTypeID(v5), v7 != CFSetGetTypeID()))
      {
        v6 = 0;
      }

      v8 = sub_10020649C(v2, @"pendingDisableViews");
      if (!v8 || (v9 = v8, v10 = CFGetTypeID(v8), v10 != CFSetGetTypeID()))
      {
        v9 = 0;
      }

      MutableCopy = CFSetCreateMutableCopy(kCFAllocatorDefault, 0, v3);
      context = _NSConcreteStackBlock;
      p_context = 3221225472;
      v14 = sub_100220980;
      v15 = &unk_1003477F0;
      v16 = MutableCopy;
      CFSetApplyFunction(v6, sub_1002208C8, &context);
      context = _NSConcreteStackBlock;
      p_context = 3221225472;
      v14 = sub_100220988;
      v15 = &unk_1003477F0;
      v16 = MutableCopy;
      CFSetApplyFunction(v9, sub_1002208C8, &context);
      if (v3)
      {
        CFRelease(v3);
      }

      if (v6)
      {
        CFRelease(v6);
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }
  }

  else
  {
    MutableCopy = 0;
  }

  context = 0;
  p_context = &context;
  v14 = 0x2020000000;
  if ([v2 getCircleStatus:0] || !MutableCopy)
  {
    v15 = 0;
    if (!MutableCopy)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v15 = SOSViewBitmaskFromSet();
  }

  CFRelease(MutableCopy);
LABEL_11:
  if (*(p_context + 24) != qword_10039E388)
  {
    qword_10039E388 = *(p_context + 24);
    [v2 setNotifyViewChangeOnExit:1];
  }

  if ([v2 notifyViewChangeOnExit])
  {
    v11 = v2;
    SOSCachedNotificationOperation();
  }

  _Block_object_dispose(&context, 8);
}

void sub_10021DF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10021DF1C(uint64_t a1, int token, uint64_t a3)
{
  if (a3 && !notify_set_state(token, *(*(*(a1 + 40) + 8) + 24)))
  {
    notify_post(kSOSCCViewMembershipChangedNotification);
    [*(a1 + 32) setNotifyViewChangeOnExit:0];
  }

  return a3;
}

void sub_10021E29C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006274("acct-txn");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = getuid();
    if ([*(a1 + 32) initialInCircle])
    {
      v6 = "member";
    }

    else
    {
      v6 = "non-member";
    }

    v7 = [*(a1 + 32) account];
    v8 = [v7 SOSMonitorModeSOSIsActiveDescription];
    v9[0] = 67109890;
    v9[1] = v5;
    v10 = 2080;
    v11 = v6;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "UID: %d - Starting as:%s %@ v:%@", v9, 0x26u);
  }
}

uint64_t sub_10021E6A8(uint64_t a1, int token, uint64_t a3)
{
  if (a3 && !notify_set_state(token, *(a1 + 40)))
  {
    [*(*(a1 + 32) + 16) setNotifyCircleChangeOnExit:0];
    v5 = sub_100006274("sosnotify");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "posting kSOSCCCircleChangedNotification", v7, 2u);
    }

    notify_post(kSOSCCCircleChangedNotification);
  }

  return a3;
}

void sub_10021E75C(id a1)
{
  SOSCachedNotificationOperation();
  v1 = sub_100006274("sosnotify");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109120;
    v2[1] = qword_10039E370;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "initial last circle status is: %d", v2, 8u);
  }
}

BOOL sub_10021E824(id a1, int a2, BOOL a3)
{
  state64 = 0xAAAAAAAAAAAAAAAALL;
  if (!notify_get_state(a2, &state64) && (state64 & 0x8000000000000000) != 0)
  {
    qword_10039E370 = state64;
  }

  return 1;
}

id sub_10021EA14()
{
  off_10039D610();
  v1 = v0;
  *v0 = 1;
  result = [*(v2 + 32) performTransaction_Locked:*(v2 + 48) action:*(v2 + 40)];
  *v1 = 0;
  return result;
}

uint64_t sub_10021EC74(void *a1)
{
  v1 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10021ED3C;
  v4[3] = &unk_1003459B0;
  v4[4] = &v5;
  sub_10023C5F0(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_10021ED24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10021ED3C(uint64_t a1)
{
  result = SOSPeerInfoIsEnabledView();
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_10021ED88(void *a1)
{
  v1 = a1;
  v2 = [v1 queue];
  dispatch_assert_queue_V2(v2);

  v3 = [v1 trust];
  [v3 fullPeerInfo];
  [v3 trustedCircle];
  SOSFullPeerInfoGetPeerInfo();
  PeerID = SOSPeerInfoGetPeerID();
  if (!PeerID)
  {
    v10 = 0;
    Mutable = 0;
    goto LABEL_17;
  }

  [v1 accountKey];
  if (!SOSPeerInfoApplicationVerify() || (SOSPeerInfoIsRetirementTicket() & 1) != 0 || !SOSCircleHasPeer())
  {
    v10 = 0;
    Mutable = 0;
    PeerID = 0;
    goto LABEL_17;
  }

  v5 = SOSPeerInfoCopyEnabledViews();
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = sub_10021EC74(v1);
  v6 = SOSPeerInfoSupportsCKKSForAll();
  v7 = sub_100006274("engine-notify");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"doesn't support";
    if (v6)
    {
      v8 = @"supports";
    }

    *buf = 138412546;
    *&buf[4] = PeerID;
    *&buf[12] = 2112;
    *&buf[14] = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Self peer(%@) %@ CKKS For All", buf, 0x16u);
  }

  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v10 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10021F4D4;
  v27[3] = &unk_1003459D8;
  v11 = v1;
  v30 = Mutable;
  v31 = v10;
  v32 = v5;
  v28 = v11;
  v29 = &v49;
  v33 = v6;
  sub_10023C5F0(v11, v27);
  v12 = v11;
  if (![v12 getCircleStatus:0])
  {
    if (sub_100220920(v12))
    {
      [v12 peerInfo];
      if (SOSPeerInfoV2DictionaryHasData())
      {
        v13 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_10021F79C;
        v56 = &unk_100345A78;
        v14 = v12;
        v57 = v14;
        v58 = v13;
        CFSetApplyFunction(v5, sub_10021FF50, buf);
        context = _NSConcreteStackBlock;
        v35 = 3221225472;
        v36 = sub_10021F9B0;
        v37 = &unk_1003476F0;
        v38 = v14;
        v39 = Mutable;
        CFDictionaryApplyFunction(v13, sub_10021FCB8, &context);
        if (v13)
        {
          CFRelease(v13);
        }

        v15 = v57;
        goto LABEL_39;
      }

      v15 = sub_100006274("backup");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v25 = "No key to backup to, we don't enable individual view backups";
        goto LABEL_38;
      }
    }

    else
    {
      v15 = sub_100006274("backup");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v25 = "Haven't finished initial backup syncing, not registering backup metas with engine";
LABEL_38:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v25, buf, 2u);
      }
    }

LABEL_39:
  }

  if (*(v50 + 24) == 1)
  {
    CFSetAddValue(v5, kSOSViewKeychainV0);
  }

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10021FBF0;
  v26[3] = &unk_100346A98;
  v26[4] = PeerID;
  sub_100085CC8(v5, v26);
  PeerID = sub_10022DB74(PeerID, v5, 0);
  if (v5)
  {
    CFRelease(v5);
  }

  _Block_object_dispose(&v49, 8);
LABEL_17:
  v16 = [v1 factory];
  Name = SOSCircleGetName();
  if (v16)
  {
    v18 = v16[1](v16, Name, 0);
    if (v18)
    {
      v19 = *v18;
      (*(v18 + 72))(v18, 0);
      if (v19)
      {
        if ([OTSOSActualAdapter sosEnabled]_0())
        {
          v49 = 0;
          v50 = &v49;
          v51 = 0x2020000000;
          v52 = 0;
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_10015067C;
          v56 = &unk_100338200;
          v57 = &v49;
          v58 = v19;
          v59 = PeerID;
          v60 = Mutable;
          v61 = v10;
          dispatch_sync(*(v19 + 112), buf);
          v45 = 0;
          v46 = &v45;
          v47 = 0x2020000000;
          v48 = 1;
          v41 = 0;
          v42 = &v41;
          v43 = 0x2020000000;
          v44 = 0;
          context = _NSConcreteStackBlock;
          v35 = 3221225472;
          v36 = sub_10015075C;
          v37 = &unk_100338228;
          v39 = &v41;
          v40 = v19;
          v38 = &v45;
          v20 = sub_10014854C(v19, &v44, &context);
          v21 = v20 & v46[3];
          *(v46 + 24) = v21;
          if ((v21 & 1) == 0)
          {
            v22 = sub_100006274("SecError");
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v23 = v42[3];
              *v53 = 138412290;
              v54 = v23;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "failed to save engine state: %@", v53, 0xCu);
            }

            v24 = v42[3];
            if (v24)
            {
              CFRelease(v24);
            }
          }

          _Block_object_dispose(&v41, 8);
          _Block_object_dispose(&v45, 8);
          _Block_object_dispose(&v49, 8);
        }
      }
    }
  }

  if (PeerID)
  {
    CFRelease(PeerID);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v10)
  {
    CFRelease(v10);
  }
}

void sub_10021F48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

void sub_10021F4D4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) accountKey];
  if (SOSPeerInfoApplicationVerify())
  {
    IsRetirementTicket = SOSPeerInfoIsRetirementTicket();
    v5 = 48;
    if (IsRetirementTicket)
    {
      v5 = 56;
    }
  }

  else
  {
    v5 = 56;
  }

  v6 = *(a1 + v5);
  v7 = SOSPeerInfoCopyEnabledViews();
  v8 = *(a1 + 64);
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  Mutable = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
  if (v7 && v8)
  {
    *&context = _NSConcreteStackBlock;
    *(&context + 1) = 3221225472;
    v20 = sub_10021FF68;
    v21 = &unk_1003462B0;
    v22 = &v15;
    v23 = v8;
    CFSetApplyFunction(v7, sub_10021FF50, &context);
  }

  v9 = v16[3];
  _Block_object_dispose(&v15, 8);
  if (v7)
  {
    CFRelease(v7);
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    CFSetAddValue(v9, kSOSViewKeychainV0);
  }

  if (*(a1 + 72) == 1 && SOSPeerInfoSupportsCKKSForAll())
  {
    v10 = sub_100006274("engine-notify");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      PeerID = SOSPeerInfoGetPeerID();
      LODWORD(context) = 138412290;
      *(&context + 4) = PeerID;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Peer %@ supports CKKS For All; ignoring in SOS syncing", &context, 0xCu);
    }

    CFSetRemoveAllValues(v9);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10021FFC4;
  v14[3] = &unk_100346A98;
  v14[4] = a2;
  sub_100085CC8(v9, v14);
  v12 = SOSPeerInfoGetPeerID();
  v13 = sub_10022DB74(v12, v9, 0);
  if (v9)
  {
    CFRelease(v9);
  }

  CFArrayAppendValue(v6, v13);
  if (v13)
  {
    CFRelease(v13);
  }
}

void sub_10021F77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10021F79C(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFStringGetTypeID() && (!kSOSViewKeychainV0 || !CFEqual(cf, kSOSViewKeychainV0)))
    {
      v5 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@-tomb", cf);
      v6 = [*(a1 + 32) trust];
      v7 = [v6 copyRing:v5 err:0];

      if (v7 && (v8 = CFGetTypeID(v7), v8 == sub_100257F8C()) && sub_100258BCC(v7) == 1)
      {
        Value = CFDictionaryGetValue(*(a1 + 40), v7);
        if (Value && (v10 = Value, v11 = CFGetTypeID(Value), v11 == CFSetGetTypeID()))
        {
          CFSetAddValue(v10, v5);
        }

        else
        {
          Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
          CFSetAddValue(Mutable, v5);
          CFDictionarySetValue(*(a1 + 40), v7, Mutable);
          if (Mutable)
          {
            CFRelease(Mutable);
          }
        }
      }

      else
      {
        v12 = sub_100006274("SecWarning");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v15 = v5;
          v16 = 2112;
          v17 = v5;
          v18 = 2112;
          v19 = v7;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "View '%@' not being backed up – ring %@:%@ not backup ring.", buf, 0x20u);
        }
      }

      if (v5)
      {
        CFRelease(v5);
      }

      if (v7)
      {
        CFRelease(v7);
      }
    }
  }
}

void sub_10021F9B0(uint64_t a1, const __CFDictionary **a2, const __CFSet *cf)
{
  if (!cf || (v5 = cf, v6 = CFGetTypeID(cf), v6 != CFSetGetTypeID()))
  {
    v5 = 0;
  }

  if (a2)
  {
    v7 = CFGetTypeID(a2);
    v8 = sub_100257F8C();
    if (v5)
    {
      if (v7 == v8)
      {
        if (sub_1002208E0(*(a1 + 32), v5))
        {
          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_10021FCD4;
          v20[3] = &unk_100346A98;
          v20[4] = a2;
          sub_100085CC8(v5, v20);
          return;
        }

        v19 = 0;
        v9 = sub_10022B78C(a2, 0);
        if (v9 && (v10 = v9, v11 = CFGetTypeID(v9), v11 == CFDataGetTypeID()))
        {
          v12 = SOSBackupSliceKeyBagCreateFromData();
          if (v12)
          {
            v13 = sub_1002585C4(a2[3]);
            v14 = sub_10022DB74(v13, v5, v10);
            if (sub_100087F00(v14, &v19, @"Didn't make peer meta for: %@", a2))
            {
              CFArrayAppendValue(*(a1 + 40), v14);
              v15 = v18;
              v18[0] = _NSConcreteStackBlock;
              v18[1] = 3221225472;
              v18[2] = sub_10021FDA4;
              v18[3] = &unk_100345A98;
              v18[4] = a2;
              v18[5] = v10;
LABEL_14:
              sub_100085CC8(v5, v15);
              if (v14)
              {
                CFRelease(v14);
              }

              if (v12)
              {
                CFRelease(v12);
              }

              v16 = v19;
              if (v19)
              {
                v19 = 0;
                CFRelease(v16);
              }

              return;
            }

LABEL_23:
            v15 = v17;
            v17[0] = _NSConcreteStackBlock;
            v17[1] = 3221225472;
            v17[2] = sub_10021FE80;
            v17[3] = &unk_100345A98;
            v17[4] = a2;
            v17[5] = v19;
            goto LABEL_14;
          }
        }

        else
        {
          v12 = 0;
        }

        v14 = 0;
        goto LABEL_23;
      }
    }
  }
}

void sub_10021FBF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006274("engine-notify");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "My Meta: %@: %@", &v6, 0x16u);
  }
}

void sub_10021FCD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006274("engine-notify");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_1002585C4(*(*(a1 + 32) + 24));
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Not ready, no peer meta: R: %@ Vs: %@", &v6, 0x16u);
  }
}

void sub_10021FDA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006274("engine-notify");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_1002585C4(*(*(a1 + 32) + 24));
    v6 = *(a1 + 40);
    v7 = 138412802;
    v8 = v5;
    v9 = 2112;
    v10 = a2;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Backup peer meta: R: %@ Vs: %@ VD: %@", &v7, 0x20u);
  }
}

void sub_10021FE80(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006274("SecError");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = 138412802;
    v8 = v5;
    v9 = 2112;
    v10 = a2;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Failed to register backup meta from %@ for views %@. Error (%@)", &v7, 0x20u);
  }
}

void sub_10021FF68(uint64_t a1, const void *a2)
{
  if (CFSetContainsValue(*(a1 + 40), a2))
  {
    v4 = *(*(*(a1 + 32) + 8) + 24);

    CFSetAddValue(v4, a2);
  }
}

void sub_10021FFC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006274("engine-notify");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    PeerID = SOSPeerInfoGetPeerID();
    v8 = 2112;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Meta: %@: %@", &v6, 0x16u);
  }
}

void sub_100220090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1002202C0;
  v10[3] = &unk_100345A28;
  v8 = *(a1 + 32);
  v9 = *(a1 + 56);
  v11 = v8;
  v12 = v9;
  v13 = a2;
  v14 = a3;
  sub_100220144(v6, v7, v10);
}

void sub_100220144(const __CFSet *a1, const __CFSet *a2, void *a3)
{
  v5 = a3;
  MutableCopy = CFSetCreateMutableCopy(kCFAllocatorDefault, 0, a2);
  v7 = CFSetCreateMutableCopy(kCFAllocatorDefault, 0, a1);
  context[0] = _NSConcreteStackBlock;
  context[1] = 3221225472;
  context[2] = sub_1002202B0;
  context[3] = &unk_1003477F0;
  context[4] = MutableCopy;
  CFSetApplyFunction(a1, sub_10021FF50, context);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002202B8;
  v8[3] = &unk_1003477F0;
  v8[4] = v7;
  CFSetApplyFunction(a2, sub_10021FF50, v8);
  v5[2](v5, MutableCopy, v7);

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

void sub_1002202C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) change_blocks];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002203A4;
  v7[3] = &unk_100345A00;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 56);
  v11 = a2;
  v12 = a3;
  v13.length = CFArrayGetCount(v6);
  v13.location = 0;
  CFArrayApplyFunction(v6, v13, sub_10021FF50, v7);
}

uint64_t sub_1002203A4(void *a1, uint64_t a2)
{
  v4 = sub_100006274("updates");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "calling change block", v6, 2u);
  }

  return (*(a2 + 16))(a2, a1[4], a1[5], a1[6], a1[7], a1[8], a1[9]);
}

void sub_100220440(uint64_t a1, const void *a2, CFTypeRef cf)
{
  if (cf)
  {
    v5 = CFGetTypeID(cf);
    if (v5 == CFDataGetTypeID())
    {
      v6 = *(a1 + 48);
      v7 = SOSPeerInfoCreateFromData();
      if (v7)
      {
        v8 = v7;
        PeerID = SOSPeerInfoGetPeerID();
        if (CFEqual(a2, PeerID))
        {
          v10 = *(a1 + 48);
          if (SOSPeerInfoInspectRetirementTicket())
          {
            v11 = [*(a1 + 32) retirees];
            [v11 addObject:v8];

            [*(a1 + 40) setCircle_rings_retirements_need_attention:1];
            CFArrayAppendValue(*(a1 + 56), a2);
          }
        }

        CFRelease(v8);
      }
    }
  }
}

void sub_100220520(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 1;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100220620;
    block[3] = &unk_100345B48;
    block[4] = &v5;
    if (qword_10039E390 != -1)
    {
      dispatch_once(&qword_10039E390, block);
    }

    v2 = *(v6 + 24);
    _Block_object_dispose(&v5, 8);
    v3 = &kCFBooleanTrue;
    if (!v2)
    {
      v3 = &kCFBooleanFalse;
    }

    sub_100228C18(v1, @"unsynced", *v3, 0);
  }
}

void sub_100220620(uint64_t a1)
{
  v2 = SOSViewCopyViewSet();
  *(*(*(a1 + 32) + 8) + 24) = CFSetGetCount(v2) > 0;
  if (v2)
  {

    CFRelease(v2);
  }
}

CFMutableSetRef sub_100220688(void *a1)
{
  v1 = a1;
  v2 = SOSViewCopyViewSet();
  v3 = sub_1002206E4(v1, v2);

  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

CFMutableSetRef sub_1002206E4(void *a1, const __CFSet *a2)
{
  v3 = a1;
  v4 = sub_10020649C(v3, @"unsynced");
  v5 = [v3 getCircleStatus:0];

  if (v5)
  {
    v7 = kCFAllocatorDefault;
    return CFSetCreateMutableCopy(v7, 0, a2);
  }

  if (v4)
  {
    v6 = CFGetTypeID(v4);
    if (v6 == CFBooleanGetTypeID())
    {
      v7 = kCFAllocatorDefault;
      if (CFBooleanGetValue(v4))
      {
        return CFSetCreateMutableCopy(v7, 0, a2);
      }

      goto LABEL_10;
    }

    v8 = CFGetTypeID(v4);
    if (v8 == CFSetGetTypeID())
    {
      v7 = kCFAllocatorDefault;
      MutableCopy = CFSetCreateMutableCopy(kCFAllocatorDefault, 0, v4);
      CFSetRemoveAllValues(MutableCopy);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100220874;
      v11[3] = &unk_100346870;
      v11[4] = a2;
      v11[5] = MutableCopy;
      CFSetApplyFunction(v4, sub_1002208C8, v11);
      if (!MutableCopy)
      {
        return CFSetCreateMutableCopy(v7, 0, a2);
      }

      return MutableCopy;
    }
  }

  v7 = kCFAllocatorDefault;
LABEL_10:
  MutableCopy = CFSetCreateMutable(v7, 0, &kCFTypeSetCallBacks);
  if (!MutableCopy)
  {
    return CFSetCreateMutableCopy(v7, 0, a2);
  }

  return MutableCopy;
}

void sub_100220874(uint64_t a1, const void *a2)
{
  if (CFSetContainsValue(*(a1 + 32), a2))
  {
    v4 = *(a1 + 40);

    CFSetAddValue(v4, a2);
  }
}

BOOL sub_1002208E0(void *a1, const __CFSet *a2)
{
  v2 = sub_1002206E4(a1, a2);
  Count = CFSetGetCount(v2);
  if (v2)
  {
    CFRelease(v2);
  }

  return Count != 0;
}

BOOL sub_100220920(void *a1)
{
  v1 = a1;
  v2 = SOSViewCopyViewSet();
  v3 = sub_1002208E0(v1, v2);

  if (v2)
  {
    CFRelease(v2);
  }

  return !v3;
}

uint64_t sub_100220990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = SOSViewCopyViewSet();
  v6 = v5;
  if (!a2)
  {
    if (!v5)
    {
      return a2 & 1;
    }

    goto LABEL_10;
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  if (v5)
  {
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_100220C2C;
    v12 = &unk_1003462B0;
    v13 = &v15;
    v14 = a2;
    CFSetApplyFunction(v5, sub_1002208C8, &v9);
    v7 = *(v16 + 24);
    _Block_object_dispose(&v15, 8);
    if (v7)
    {
      LOBYTE(a2) = 0;
    }

    else
    {
      LOBYTE(a2) = 1;
      if (a3)
      {
        v15 = 0;
        v16 = &v15;
        v17 = 0x2020000000;
        v18 = 1;
        v9 = _NSConcreteStackBlock;
        v10 = 3221225472;
        v11 = sub_100220C2C;
        v12 = &unk_1003462B0;
        v13 = &v15;
        v14 = a3;
        CFSetApplyFunction(v6, sub_1002208C8, &v9);
        LOBYTE(a2) = *(v16 + 24);
        _Block_object_dispose(&v15, 8);
      }
    }

LABEL_10:
    CFRelease(v6);
    return a2 & 1;
  }

  _Block_object_dispose(&v15, 8);
  LOBYTE(a2) = 0;
  return a2 & 1;
}

void sub_100220B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100220B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100006274("updates");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "calling in sync block [%@]", &v8, 0xCu);
  }

  return (*(a3 + 16))(a3, *(a1 + 32));
}

uint64_t sub_100220C2C(uint64_t a1, const void *a2)
{
  result = CFSetContainsValue(*(a1 + 40), a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (result)
  {
    v5 = 0;
  }

  *(v4 + 24) = v5;
  return result;
}

void sub_100220C6C(void *a1, const __CFSet *a2)
{
  v3 = a1;
  v4 = [v3 account];
  v5 = [v4 getCircleStatus:0];
  v6 = sub_10020649C(v4, @"unsynced");
  v7 = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  sub_1002211DC(a2, &stru_100345AB8);
  if (!v5)
  {
    if (v7 == kCFBooleanTrue)
    {
      v8 = SOSViewCopyViewSet();
      v11 = kCFAllocatorDefault;
      Copy = CFSetCreateCopy(kCFAllocatorDefault, v8);
      if (v7)
      {
        CFRelease(v7);
      }

      v14 = sub_100006274("initial-sync");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Pending views setting to all we can expect.", buf, 2u);
      }

      if (!v8)
      {
        MutableCopy = 0;
        v7 = Copy;
        goto LABEL_35;
      }

      v7 = Copy;
    }

    else
    {
      if (!v7 || (v10 = CFGetTypeID(v7), v10 != CFSetGetTypeID()))
      {
        v8 = 0;
        MutableCopy = 0;
LABEL_35:
        sub_1002211DC(MutableCopy, &stru_100345AD8);
        goto LABEL_36;
      }

      CFRetain(v7);
      v11 = kCFAllocatorDefault;
      v8 = v7;
    }

    v15 = v4;
    cf = 0;
    p_cf = &cf;
    v23 = 0x2020000000;
    Mutable = CFSetCreateMutable(v11, 0, &kCFTypeSetCallBacks);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100221290;
    v26 = &unk_100345E50;
    v27 = &cf;
    sub_10023C5F0(v15, buf);
    v16 = p_cf[3];
    _Block_object_dispose(&cf, 8);

    MutableCopy = CFSetCreateMutableCopy(v11, 0, v8);
    CFSetRemoveAllValues(MutableCopy);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100220874;
    v26 = &unk_100346870;
    v27 = v16;
    v28 = MutableCopy;
    CFSetApplyFunction(v8, sub_1002208C8, buf);
    if (a2)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100220988;
      v26 = &unk_1003477F0;
      v27 = MutableCopy;
      CFSetApplyFunction(a2, sub_1002208C8, buf);
    }

    if (v7 == MutableCopy)
    {
      v17 = v7;
    }

    else
    {
      if (!MutableCopy)
      {
        CFRelease(v7);
        v17 = 0;
        if (!v16)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      CFRetain(MutableCopy);
      v17 = MutableCopy;
      if (v7)
      {
        CFRelease(v7);
        v17 = MutableCopy;
        if (!v16)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }
    }

    if (!v16)
    {
LABEL_33:
      v7 = v17;
      goto LABEL_35;
    }

LABEL_32:
    CFRelease(v16);
    goto LABEL_33;
  }

  if (v5 != 2)
  {
    if (!v7)
    {
      v8 = 0;
      MutableCopy = 0;
      goto LABEL_39;
    }

    v12 = sub_100006274("initial-sync");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "not in circle nor applying: clearing pending", buf, 2u);
    }

    v8 = 0;
    MutableCopy = 0;
LABEL_14:

    CFRelease(v7);
    v7 = 0;
    goto LABEL_39;
  }

  v8 = 0;
  MutableCopy = 0;
LABEL_36:
  if (v7)
  {
    v18 = CFGetTypeID(v7);
    if (v18 == CFSetGetTypeID() && !CFSetGetCount(v7))
    {
      v12 = sub_100006274("initial-sync");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Empty set, using NULL instead", buf, 2u);
      }

      goto LABEL_14;
    }
  }

LABEL_39:
  cf = 0;
  if (!sub_100228C18(v4, @"unsynced", v7, &cf))
  {
    v19 = sub_100006274("initial-sync");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = cf;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Failure saving new unsynced value: %@ value: %@", buf, 0x16u);
    }
  }

  v20 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v20);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v8)
  {
    CFRelease(v8);
  }
}

void sub_1002211DC(const __CFSet *a1, void *a2)
{
  v5 = a2;
  if (a1 && (v3 = CFGetTypeID(a1), v3 == CFSetGetTypeID()))
  {
    sub_100085CC8(a1, v5);
  }

  else
  {
    v4 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@", a1);
    v5[2](v5, v4);
    if (v4)
    {
      CFRelease(v4);
    }
  }
}

void sub_100221308(id a1, __CFString *a2)
{
  v3 = sub_100006274("initial-sync");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Unsynced: %@", &v4, 0xCu);
  }
}

void sub_1002213B4(uint64_t a1, CFSetRef theSet)
{
  v2 = *(*(*(a1 + 32) + 8) + 24);
  context[0] = _NSConcreteStackBlock;
  context[1] = 3221225472;
  context[2] = sub_100220980;
  context[3] = &unk_1003477F0;
  context[4] = v2;
  CFSetApplyFunction(theSet, sub_1002208C8, context);
}

void sub_100221440(id a1, __CFString *a2)
{
  v3 = sub_100006274("initial-sync");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Views in sync: %@", &v4, 0xCu);
  }
}

void sub_1002214EC(void *a1)
{
  v1 = a1;
  if (([v1 isListeningForSync] & 1) == 0)
  {
    v2 = [v1 trust];
    v3 = [v2 getDataSourceEngine:{objc_msgSend(v1, "factory")}];

    if (v3)
    {
      v4 = sub_100006274("initial-sync");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting up notifications to monitor in-sync", buf, 2u);
      }

      v5 = [v1 queue];
      sub_10014E1E8(v3, v5);

      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100221684;
      v8[3] = &unk_100345B20;
      v6 = v1;
      v9 = v6;
      sub_10014E104(v3, v8);
      [v6 setIsListeningForSync:1];
      v7 = v9;
    }

    else
    {
      v7 = sub_100006274("SecError");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Couldn't find engine to setup notifications!!!", buf, 2u);
      }
    }
  }
}

id sub_100221684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002216F4;
  v5[3] = &unk_100345AF8;
  v5[4] = a2;
  v5[5] = a3;
  return [v3 performTransaction_Locked:v5];
}

void sub_1002216F4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = [v4 account];
  v6 = sub_100006274("initial-sync");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Peer %@ synced views: %@", &v8, 0x16u);
  }

  v7 = [v5 trust];
  if ([v7 trustedCircle] && objc_msgSend(v5, "isInCircle:", 0) && SOSCircleHasActivePeerWithID())
  {
    sub_100220C6C(v4, v2);
  }
}

void sub_100221828(void *a1)
{
  v1 = a1;
  if ([v1 peerInfo] && objc_msgSend(v1, "isInCircle:", 0) && sub_100220920(v1))
  {
    v2 = SOSViewCopyViewSet();
    if ((SOSPeerInfoVersionIsCurrent() & 1) == 0)
    {
      v3 = SOSViewCopyViewSet();
      context[0] = _NSConcreteStackBlock;
      context[1] = 3221225472;
      context[2] = sub_100220980;
      context[3] = &unk_1003477F0;
      context[4] = v2;
      CFSetApplyFunction(v3, sub_1002208C8, context);
      if (v3)
      {
        CFRelease(v3);
      }
    }

    v4 = [v1 trust];
    [v4 updateFullPeerInfo:v1 minimum:v2 excluded:SOSViewsGetV0ViewSet()];

    if (v2)
    {
      CFRelease(v2);
    }
  }
}

void sub_10022340C(uint64_t a1, const void *a2)
{
  v4 = *(a1 + 32);
  PeerID = SOSPeerInfoGetPeerID();
  CFSetAddValue(v4, PeerID);
  v6 = *(a1 + 40);

  CFSetAddValue(v6, a2);
}

void sub_100223468(uint64_t a1, const void *a2)
{
  v4 = *(a1 + 32);
  PeerID = SOSPeerInfoGetPeerID();
  CFSetAddValue(v4, PeerID);
  v6 = *(a1 + 40);

  CFSetAddValue(v6, a2);
}

void sub_10022366C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100223684(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*(a1 + 32) + 8);
  if (*(v3 + 24) == 1 && (!a3 || !a3[2] || !a3[3] || !a3[4] || !a3[5]))
  {
    *(v3 + 24) = 0;
    v5 = sub_100006274("ring");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = a2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Ring %@ not stable", &v7, 0xCu);
    }
  }

  return 0;
}

void sub_100223A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100223A9C(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = SOSCircleResetToEmpty();
  return *(*(*(a1 + 32) + 8) + 24);
}

id sub_100223CA0(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 48) + 8);
  if (*(v2 + 24) == 1)
  {
    result = [*(a1 + 32) resetRing:*(a1 + 40) ringName:a2 err:*(a1 + 56)];
    v2 = *(*(a1 + 48) + 8);
  }

  else
  {
    result = 0;
  }

  *(v2 + 24) = result;
  return result;
}

void sub_100223F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Block_object_dispose((v29 - 112), 8);
  _Block_object_dispose((v29 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100223F84(uint64_t a1, const void *a2, CFDataRef theData)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  *(*(*(a1 + 48) + 8) + 24) = CFDataCreateCopy(kCFAllocatorDefault, theData);
  CFDictionaryAddValue(*(a1 + 88), a2, *(*(*(a1 + 48) + 8) + 24));
  *(*(*(a1 + 56) + 8) + 24) = sub_100228868(0, *(*(*(a1 + 48) + 8) + 24));
  v5 = *(*(*(a1 + 40) + 8) + 24);
  v6 = *(*(*(a1 + 56) + 8) + 24);
  *(*(*(a1 + 64) + 8) + 24) = (*(*(a1 + 32) + 16))();
  v7 = *(*(*(a1 + 64) + 8) + 24);
  if (v7)
  {
    *(*(*(a1 + 72) + 8) + 24) = sub_100228578(v7, 0);
    CFDictionaryReplaceValue(*(a1 + 88), a2, *(*(*(a1 + 72) + 8) + 24));
    v8 = *(*(a1 + 72) + 8);
    v9 = *(v8 + 24);
    if (v9)
    {
      *(v8 + 24) = 0;
      CFRelease(v9);
    }

    *(*(*(a1 + 80) + 8) + 24) = 1;
  }

  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 24);
  if (v11)
  {
    *(v10 + 24) = 0;
    CFRelease(v11);
  }

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 24);
  if (v13)
  {
    *(v12 + 24) = 0;
    CFRelease(v13);
  }

  v14 = *(*(a1 + 64) + 8);
  v15 = *(v14 + 24);
  if (v15)
  {
    *(v14 + 24) = 0;

    CFRelease(v15);
  }
}

uint64_t sub_100224228(uint64_t a1)
{
  v2 = sub_100006274("circleChange");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Calling SOSCircleUpdatePeerInfo for gestalt change", v4, 2u);
  }

  [*(a1 + 32) peerInfo];
  return SOSCircleUpdatePeerInfo();
}

uint64_t sub_1002247EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFDataGetLength(*(a1 + 32));
    CFDataGetBytePtr(v1);
    ccder_encode_raw_octet_string();
  }

  return ccder_encode_constructed_tl();
}

BOOL sub_100224870(FILE *a1, __CFString **a2, size_t capacity, uint64_t a4)
{
  Mutable = CFDataCreateMutable(kCFAllocatorDefault, capacity);
  CFDataSetLength(Mutable, capacity);
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  v10 = (*(a4 + 16))(a4, MutableBytePtr, &MutableBytePtr[capacity]);
  if (!v10)
  {
LABEL_7:
    v17 = 0;
    if (!Mutable)
    {
      return v17;
    }

    goto LABEL_4;
  }

  if (MutableBytePtr != v10)
  {
    sub_1000103CC(-1, a2, @"size mismatch der_end - der: %td", v10 - MutableBytePtr);
    goto LABEL_7;
  }

  v11 = fwrite(MutableBytePtr, capacity, 1uLL, a1) != 1;
  v17 = sub_100087DC8(v11, a2, @"fwrite SOSBackupEventWrite", v12, v13, v14, v15, v16, v19);
  if (Mutable)
  {
LABEL_4:
    CFRelease(Mutable);
  }

  return v17;
}

BOOL sub_10022496C(FILE *a1, CFDataRef theData, __CFString **a3)
{
  CFDataGetLength(theData);
  v6 = ccder_sizeof_raw_octet_string();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_100224A0C;
  v8[3] = &unk_100345CC8;
  v8[4] = theData;
  v8[5] = a3;
  return sub_100224870(a1, a3, v6, v8);
}

uint64_t sub_100224A0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  CFDataGetLength(v1);
  CFDataGetBytePtr(v1);

  return ccder_encode_raw_octet_string();
}

BOOL sub_100224A70(FILE *a1, const __CFDictionary *a2, __CFString **a3)
{
  v6 = sub_10000E078(a2, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_100224B10;
  v8[3] = &unk_100345CE8;
  v8[4] = a2;
  v8[5] = a3;
  return sub_100224870(a1, a3, v6, v8);
}

BOOL sub_100224B28(FILE *a1, uint64_t a2, __CFString **a3)
{
  v6 = ccder_sizeof_uint64();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_100224BD4;
  v9[3] = &unk_100345D08;
  v9[4] = a2;
  v9[5] = a3;
  v7 = sub_100224870(a1, a3, v6, v9);
  fflush(a1);
  return v7;
}

uint64_t sub_100224E24(uint64_t a1)
{
  v2 = sub_100006274("circleChange");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Calling SOSCircleUpdatePeerInfo for gestalt change", v4, 2u);
  }

  [*(a1 + 32) peerInfo];
  return SOSCircleUpdatePeerInfo();
}

void sub_100224FC4(uint64_t a1, const void *a2)
{
  if (SOSPeerInfoIsCloudIdentity())
  {
    CloudIdentity = SOSFullPeerInfoCreateCloudIdentity();
    if (CloudIdentity)
    {

      CFRelease(CloudIdentity);
    }

    else
    {
      v5 = *(a1 + 32);

      CFSetAddValue(v5, a2);
    }
  }
}

void sub_100225248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100225260(uint64_t a1)
{
  result = SOSPeerInfoIsEnabledView();
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

id sub_1002253B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  PeerID = SOSPeerInfoGetPeerID();

  return [v1 addObject:PeerID];
}

void sub_100225608(uint64_t a1, CFTypeRef cf)
{
  cfa = 0;
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFStringGetTypeID())
    {
      [*(a1 + 32) trustedCircle];
      v5 = SOSCircleCopyPeerWithID();
      if (v5)
      {
        v6 = v5;
        [*(a1 + 32) trustedCircle];
        [*(a1 + 40) accountKey];
        HasValidSyncingPeer = SOSCircleHasValidSyncingPeer();
        v8 = 56;
        if (HasValidSyncingPeer)
        {
          v8 = 48;
        }

        CFSetAddValue(*(a1 + v8), cf);

        CFRelease(v6);
      }

      else
      {
        v11 = *(a1 + 56);

        CFSetAddValue(v11, cf);
      }

      return;
    }

    sub_1000103CC(-50, &cfa, @"object %@ is not a string", cf);
  }

  else
  {
    sub_1000103CC(-50, &cfa, @"object %@ is not a string", 0);
  }

  if (cfa)
  {
    v9 = sub_100006274("sync-with-peers");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = 0;
      v15 = 2112;
      v16 = cfa;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Skipped peer ID: %@ due to %@", buf, 0x16u);
    }

    v10 = cfa;
    if (cfa)
    {
      cfa = 0;
      CFRelease(v10);
    }
  }
}

void sub_100226268(uint64_t a1, const void *a2)
{
  v4 = *(a1 + 32);
  if ((SOSPeerInfoApplicationVerify() & 1) == 0)
  {
    v5 = *(a1 + 40);

    CFSetAddValue(v5, a2);
  }
}

uint64_t sub_1002263E0(uint64_t a1)
{
  v2 = sub_100006274("circleChange");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Calling SOSCircleUpdatePeerInfo for %@", &v5, 0xCu);
  }

  [*(a1 + 32) peerInfo];
  return SOSCircleUpdatePeerInfo();
}

void sub_100226630(void *a1, const void *a2)
{
  v4 = a1[4];
  PeerID = SOSPeerInfoGetPeerID();
  if (v4)
  {
    v6 = PeerID == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (v4 == PeerID)
    {
      return;
    }
  }

  else if (CFEqual(v4, PeerID))
  {
    return;
  }

  v8 = a1[5];
  if (SOSPeerInfoApplicationVerify() && (SOSPeerInfoIsRetirementTicket() & 1) == 0)
  {
    v9 = a1[6];

    CFArrayAppendValue(v9, a2);
  }
}

void sub_1002267A4(uint64_t a1, const void *a2)
{
  if ((*(*(a1 + 32) + 16))())
  {
    v4 = *(a1 + 40);

    CFSetAddValue(v4, a2);
  }
}

void sub_1002269F0(uint64_t a1, const void *a2)
{
  PermittedViews = SOSPeerInfoGetPermittedViews();
  if (CFSetContainsValue(PermittedViews, *(a1 + 32)))
  {
    v5 = *(a1 + 40);

    CFSetAddValue(v5, a2);
  }
}

void sub_100226BC0(uint64_t a1, uint64_t a2, uint64_t a3, const __CFSet *a4, const __CFSet *a5)
{
  Name = SOSCircleGetName();
  v9 = *(a1 + 48);
  if (Name && v9)
  {
    if (!CFEqual(Name, v9))
    {
      return;
    }
  }

  else if (Name != v9)
  {
    return;
  }

  v10 = [*(a1 + 32) peerInfo];
  if (v10)
  {
    PeerID = SOSPeerInfoGetPeerID();
  }

  else
  {
    PeerID = 0;
  }

  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v13 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v14 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (SOSCircleHasPeer())
  {
    context[6] = _NSConcreteStackBlock;
    context[7] = 3221225472;
    context[8] = sub_100226E24;
    context[9] = &unk_100346890;
    context[10] = Mutable;
    context[11] = PeerID;
    SOSCircleForEachPeer();
    context[0] = _NSConcreteStackBlock;
    context[1] = 3221225472;
    context[2] = sub_100226EA4;
    context[3] = &unk_100346870;
    context[4] = v13;
    context[5] = PeerID;
    CFSetApplyFunction(a4, sub_100225814, context);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100226F24;
    v15[3] = &unk_100346870;
    v15[4] = v14;
    v15[5] = PeerID;
    CFSetApplyFunction(a5, sub_100225814, v15);
  }

  if (CFArrayGetCount(Mutable) || CFSetContainsValue(a5, v10))
  {
    (*(*(a1 + 40) + 16))();
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }
}

void sub_100226E24(uint64_t a1)
{
  v2 = *(a1 + 32);
  PeerID = SOSPeerInfoGetPeerID();
  v4 = PeerID;
  v5 = *(a1 + 40);
  if (PeerID && v5)
  {
    if (CFEqual(PeerID, v5))
    {
      return;
    }
  }

  else if (PeerID == v5)
  {
    return;
  }

  CFArrayAppendValue(v2, v4);
}

void sub_100226EA4(uint64_t a1)
{
  v2 = *(a1 + 32);
  PeerID = SOSPeerInfoGetPeerID();
  v4 = PeerID;
  v5 = *(a1 + 40);
  if (PeerID && v5)
  {
    if (CFEqual(PeerID, v5))
    {
      return;
    }
  }

  else if (PeerID == v5)
  {
    return;
  }

  CFArrayAppendValue(v2, v4);
}

void sub_100226F24(uint64_t a1)
{
  v2 = *(a1 + 32);
  PeerID = SOSPeerInfoGetPeerID();
  v4 = PeerID;
  v5 = *(a1 + 40);
  if (PeerID && v5)
  {
    if (CFEqual(PeerID, v5))
    {
      return;
    }
  }

  else if (PeerID == v5)
  {
    return;
  }

  CFArrayAppendValue(v2, v4);
}

void sub_100227484(uint64_t a1, const __CFSet *a2)
{
  if (a2)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100227810;
    v4[3] = &unk_100346A98;
    v4[4] = a1;
    sub_100085CC8(a2, v4);
  }

  else
  {
    v3 = sub_100006274("circleChange");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v6 = a1;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "No %@ list provided.", buf, 0xCu);
    }
  }
}

BOOL sub_100227590(void *a1, __CFSet *a2, int a3)
{
  v5 = a1;
  if (a2)
  {
    v6 = kSOSViewKeychainV0;
    v7 = 1;
    if (CFSetContainsValue(a2, kSOSViewKeychainV0))
    {
      if (sub_10021EC74(v5))
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }

      v7 = v8 == a3;
      CFSetRemoveValue(a2, v6);
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

uint64_t sub_100227624(uint64_t a1)
{
  v2 = sub_100006274("circleChange");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Calling SOSCircleUpdatePeerInfo for views or peerInfo change", v4, 2u);
  }

  [*(a1 + 32) peerInfo];
  return SOSCircleUpdatePeerInfo();
}

void sub_1002276B8(id a1, __CFString *a2)
{
  v3 = sub_100006274("viewChange");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Disabling %@", &v4, 0xCu);
  }
}

void sub_100227764(id a1, __CFString *a2)
{
  v3 = sub_100006274("viewChange");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Enabling %@", &v4, 0xCu);
  }
}

void sub_100227810(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006274("circleChange");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ list: %@", &v6, 0x16u);
  }
}

void sub_100227AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100227B08(uint64_t a1)
{
  [*(a1 + 32) peerInfo];
  v2 = *(a1 + 56);
  result = SOSPeerInfoViewStatus();
  v4 = 40;
  if (result == 1)
  {
    v4 = 48;
  }

  *(*(*(a1 + v4) + 8) + 24) = 1;
  return result;
}

uint64_t sub_1002280EC(uint64_t a1)
{
  v2 = sub_100006274("circleChange");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Calling SOSCircleUpdatePeerInfo for views change", v4, 2u);
  }

  [*(a1 + 32) peerInfo];
  return SOSCircleUpdatePeerInfo();
}

uint64_t sub_1002282D8(uint64_t a1)
{
  v2 = sub_100006274("circleChange");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Calling SOSCircleUpdatePeerInfo for gestalt change", v4, 2u);
  }

  [*(a1 + 32) peerInfo];
  return SOSCircleUpdatePeerInfo();
}

uint64_t sub_100228578(const __CFDictionary **a1, CFTypeRef *a2)
{
  if (!a1[2])
  {
    v6 = sub_100006274("SecError");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    *buf = 0;
    v7 = "ring has no unSignedInformation";
LABEL_20:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 2u);
    goto LABEL_5;
  }

  if (!a1[3])
  {
    v6 = sub_100006274("SecError");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    *buf = 0;
    v7 = "ring has no signedInformation";
    goto LABEL_20;
  }

  if (!a1[4])
  {
    v6 = sub_100006274("SecError");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    *buf = 0;
    v7 = "ring has no signatures";
    goto LABEL_20;
  }

  if (!a1[5])
  {
    v6 = sub_100006274("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "ring has no data";
      goto LABEL_20;
    }
  }

LABEL_5:
  if (sub_10000E078(a1[2], a2) && sub_10000E078(a1[3], a2) && sub_10000E078(a1[4], a2) && sub_10000E078(a1[5], a2))
  {
    ccder_sizeof();
  }

  else
  {
    sub_1000111B4(-1, @"com.apple.security.cfder.error", 0, a2, v4, @"don't know how to encode");
  }

  return CFDataCreateWithDER();
}

uint64_t sub_1002287A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  sub_10000E1FC(v1[5], v2, 0);
  sub_10000E1FC(v5, v2, 0);
  sub_10000E1FC(v4, v2, 0);
  sub_10000E1FC(v3, v2, 0);

  return ccder_encode_constructed_tl();
}

void *sub_100228868(CFTypeRef *a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  sub_100257F8C();
  Instance = _CFRuntimeCreateInstance();
  theDict = 0;
  v23 = 0xAAAAAAAAAAAAAAAALL;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  if (!Instance)
  {
    v16 = sub_100006274("ring");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Unable to allocate ring", v18, 2u);
    }

    v14 = 0;
    goto LABEL_25;
  }

  v7 = Instance;
  v8 = &BytePtr[Length];
  v9 = ccder_decode_constructed_tl();
  v10 = sub_100006D24(0, &theDict, a1, v9, v23);
  v11 = sub_100006D24(0, &v21, a1, v10, v23);
  v12 = sub_100006D24(0, &v20, a1, v11, v23);
  v13 = sub_100006D24(0, &v19, a1, v12, v23);
  if (v13)
  {
    if (v13 == v8)
    {
      v7[2] = CFDictionaryCreateMutableCopy(0, 0, theDict);
      v7[3] = CFDictionaryCreateMutableCopy(0, 0, v21);
      v7[4] = CFDictionaryCreateMutableCopy(0, 0, v20);
      v14 = 0;
      v7[5] = CFDictionaryCreateMutableCopy(0, 0, v19);
      goto LABEL_5;
    }

    v17 = sub_100006274("ring");
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *v18 = 0;
    goto LABEL_23;
  }

  v17 = sub_100006274("ring");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
LABEL_23:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Unable to decode DER", v18, 2u);
  }

LABEL_24:
  v14 = v7;
LABEL_25:
  v7 = 0;
LABEL_5:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v7;
}

BOOL sub_100228AD0(void *a1, uint64_t a2, CFTypeRef *a3)
{
  v5 = a1;
  v6 = sub_100228B50(v5, a3);
  if (v6)
  {
    v7 = [v5 trust];
    v8 = [v7 expansion];
    [v8 removeObjectForKey:a2];
  }

  return v6;
}

BOOL sub_100228B50(void *a1, CFTypeRef *a2)
{
  v3 = a1;
  v4 = [v3 trust];
  v5 = [v4 expansion];

  if (!v5)
  {
    v6 = +[NSMutableDictionary dictionary];
    v7 = [v3 trust];
    [v7 setExpansion:v6];
  }

  v8 = [v3 trust];
  v9 = [v8 expansion];
  v10 = sub_100087F00(v9, a2, @"Can't Alloc Account Expansion dictionary");

  return v10;
}

BOOL sub_100228C18(void *a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v7 = a1;
  v8 = v7;
  if (a3)
  {
    if (sub_100228B50(v7, a4))
    {
      v9 = [v8 trust];
      v10 = [v9 expansion];
      [v10 setObject:a3 forKey:a2];

      v11 = 1;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = sub_100228AD0(v7, a2, a4);
  }

  return v11;
}

CFStringRef sub_100228CC0(void *a1)
{
  v1 = a1;
  v2 = sub_10020649C(v1, @"UUID");
  if (v2 && (v3 = v2, v4 = CFGetTypeID(v2), v4 == CFStringGetTypeID()))
  {
    CFRetain(v3);
  }

  else
  {
    v5 = CFUUIDCreate(kCFAllocatorDefault);
    v3 = CFUUIDCreateString(kCFAllocatorDefault, v5);
    cf = 0;
    if (!sub_100228C18(v1, @"UUID", v3, &cf))
    {
      v6 = sub_100006274("SecError");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v11 = v3;
        v12 = 2112;
        v13 = cf;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed to set UUID: %@ (%@)", buf, 0x16u);
      }
    }

    v7 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v7);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }

  return v3;
}

uint64_t sub_100228F20()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100228FB8;
  block[3] = &unk_100345EF0;
  block[4] = &qword_10039E3A0;
  if (qword_10039E398 != -1)
  {
    dispatch_once(&qword_10039E398, block);
  }

  return qword_10039E3A0;
}

uint64_t sub_100228FB8(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

const __CFString *sub_100228FEC(uint64_t a1)
{
  sub_100017B30();

  return sub_100229024(a1);
}

const __CFString *sub_100229024(uint64_t a1)
{
  if (!a1)
  {
    return @"NULL";
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v1 = *(a1 + 48);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v11 = sub_100229178;
  v12 = &unk_100345F18;
  v13 = &v15;
  v14 = a1;
  if (v1)
  {
    Length = CFDataGetLength(v1);
    Mutable = CFStringCreateMutable(kCFAllocatorDefault, 2 * Length);
    BytePtr = CFDataGetBytePtr(v1);
    v5 = CFDataGetLength(v1);
    if (v5 >= 1)
    {
      v6 = v5;
      do
      {
        v7 = *BytePtr++;
        CFStringAppendFormat(Mutable, 0, @"%02X", v7);
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    Mutable = @"(null)";
  }

  v11(v10, Mutable);
  CFRelease(Mutable);
  v8 = v16[3];
  _Block_object_dispose(&v15, 8);
  return v8;
}

CFStringRef sub_100229178(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 24);
  v5 = "w";
  if (*(v3 + 32))
  {
    v5 = "W";
  }

  if (*(v3 + 56))
  {
    v6 = "O";
  }

  else
  {
    v6 = "o";
  }

  result = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"<Coder %@ %@ %s%s>", v4, a2, v5, v6);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_10022923C(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      a1[3] = 0;
      CFRelease(v2);
    }

    v3 = a1[5];
    if (v3)
    {
      a1[5] = 0;
      CFRelease(v3);
    }

    v4 = a1[6];
    if (v4)
    {
      a1[6] = 0;

      CFRelease(v4);
    }
  }
}

CFMutableDataRef sub_1002292A8(uint64_t a1)
{
  if (!*(a1 + 24))
  {
    SOSCreateErrorWithFormat();
    return 0;
  }

  Mutable = CFDataCreateMutable(0, 0);
  if (!Mutable)
  {
    SOSCreateErrorWithFormat();
    return Mutable;
  }

  v3 = *(a1 + 24);
  if (SecOTRSAppendSerialization())
  {
    SOSCreateErrorWithFormat();
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

uint64_t sub_10022936C(uint64_t a1, void *a2)
{
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  v5 = *(a1 + 24);
  if (!v5)
  {
    CFStringAppend(Mutable, @"*** no otr session ***");
    v9 = 0;
    v6 = 0;
    goto LABEL_15;
  }

  v6 = CFCopyDescription(v5);
  if (*(a1 + 32) == 1)
  {
    v19 = @"waiting for peer to send first data packet";
LABEL_31:
    CFStringAppend(Mutable, v19);
    v9 = 0;
    goto LABEL_13;
  }

  v7 = *(a1 + 24);
  if (SecOTRSGetIsReadyForMessages())
  {
    CFStringAppend(Mutable, @"otr session ready");
    v13 = 0;
    v9 = 0;
    goto LABEL_19;
  }

  v8 = *(a1 + 24);
  if ((SecOTRSGetIsIdle() & 1) == 0)
  {
    v19 = @"otr negotiating already";
    goto LABEL_31;
  }

  v9 = CFDataCreateMutable(kCFAllocatorDefault, 0);
  if (v9)
  {
    v10 = *(a1 + 24);
    if (SecOTRSAppendStartPacket())
    {
      if (a2)
      {
        v11 = *a2;
      }

      SOSCreateErrorWithFormat();
      goto LABEL_15;
    }

    if (*(a1 + 40) != v9)
    {
      CFRetain(v9);
      v12 = *(a1 + 40);
      if (v12)
      {
        CFRelease(v12);
      }

      *(a1 + 40) = v9;
    }

LABEL_13:
    v13 = 1;
    goto LABEL_19;
  }

  SOSCreateError();
LABEL_15:
  if (a2 && *a2)
  {
    CFStringAppendFormat(Mutable, 0, @" %@", *a2);
  }

  v13 = 3;
LABEL_19:
  v14 = sub_100006274("coder");
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    if (!v9)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v16 = SecOTRPacketTypeString();
  v17 = *(a1 + 24);
  v18 = off_100345F38[v13];
  *buf = 138413314;
  v21 = v6;
  v22 = 2080;
  v23 = v16;
  v24 = 2112;
  v25 = Mutable;
  v26 = 2112;
  v27 = v17;
  v28 = 2080;
  v29 = v18;
  _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%@ %s %@ %@ returned %s", buf, 0x34u);
  if (v9)
  {
LABEL_21:
    CFRelease(v9);
  }

LABEL_22:
  if (v6)
  {
    CFRelease(v6);
  }

  CFRelease(Mutable);
  return v13;
}

void sub_1002295FC(uint64_t a1)
{
  v2 = *(a1 + 24);
  SecOTRSessionReset();
  *(a1 + 32) = 0;
  v3 = *(a1 + 40);
  if (v3)
  {
    *(a1 + 40) = 0;
    CFRelease(v3);
  }

  *(a1 + 56) = 0;
  v4 = *(a1 + 48);
  if (v4)
  {
    *(a1 + 48) = 0;
    CFRelease(v4);
  }

  v5 = *ccsha1_di();
  Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
  CFDataSetLength(Mutable, v5);
  *(a1 + 48) = Mutable;
}

uint64_t sub_100229684(uint64_t a1)
{
  if (!*(a1 + 24))
  {
    return 0;
  }

  Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
  v3 = *(a1 + 24);
  if (SecOTRSAppendRestartPacket())
  {
    v6 = 3;
    if (!Mutable)
    {
      return v6;
    }

    goto LABEL_11;
  }

  v4 = sub_100006274("coder");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = Mutable;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Resending OTR Start %@", &v8, 0xCu);
  }

  v5 = *(a1 + 40);
  if (v5 != Mutable)
  {
    if (!Mutable || (CFRetain(Mutable), (v5 = *(a1 + 40)) != 0))
    {
      CFRelease(v5);
    }

    *(a1 + 40) = Mutable;
  }

  v6 = 1;
  if (Mutable)
  {
LABEL_11:
    CFRelease(Mutable);
  }

  return v6;
}

void sub_1002297B0(char **a1, __int128 *a2)
{
  if (a2)
  {
    v4 = a1[1];
    v5 = (a1 + 1);
    v6 = (v4 + 1);
    if (a1[2] >= v4 + 1)
    {
      v9 = *a1;
    }

    else
    {
      if (v6 > 0x100000)
      {
        v7 = sub_100006274("manifest");
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v15 = 134217984;
        v16 = v6;
        v8 = "Requesting too much space for digest vectors: %ld";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, &v15, 0xCu);
        return;
      }

      v10 = 1048476;
      if (v6 < 0xFFF9C)
      {
        v10 = v6;
      }

      v11 = v10 + 100;
      v12 = 20 * (v10 + 100);
      v9 = reallocf(*a1, v12);
      *a1 = v9;
      if (!v9)
      {
        *v5 = 0;
        v5[1] = 0;
        v7 = sub_100006274("manifest");
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v15 = 134217984;
        v16 = v12;
        v8 = "reallocf failed requesting space for digest vectors: %ld (bytes)";
        goto LABEL_14;
      }

      a1[2] = v11;
      v4 = a1[1];
      v6 = (v4 + 1);
    }

    *v5 = v6;
    v13 = &v9[20 * v4];
    v14 = *a2;
    *(v13 + 4) = *(a2 + 4);
    *v13 = v14;
  }
}

void sub_100229930(char **a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    if (v2)
    {
      qsort(v2, a1[1], 0x14uLL, sub_100229AF4);
      *(a1 + 24) = 0;
      v3 = a1[1];
      if (v3 >= 2)
      {
        v4 = *a1;
        if (*a1)
        {
          v5 = v4 + 20;
          v6 = &v4[20 * v3];
          if (v3 >= 2)
          {
            v7 = v4 + 20;
            v8 = v4 + 20;
            while (1)
            {
              if (v4)
              {
                v9 = bswap64(*v4);
                v10 = bswap64(*v7);
                if (v9 == v10)
                {
                  v9 = bswap64(*(v4 + 1));
                  v10 = bswap64(*(v7 + 1));
                  if (v9 == v10)
                  {
                    v9 = bswap32(*(v4 + 4));
                    v10 = bswap32(*(v7 + 4));
                    if (v9 == v10)
                    {
                      v11 = 0;
LABEL_17:
                      if (!v11)
                      {
                        v12 = v4 + 20;
                        v13 = v4 + 20 - v8;
                        if (v5 != v8)
                        {
                          memmove(v5, v8, v4 + 20 - v8);
                        }

                        v5 += v13;
                        v14 = v7 + 20;
                        do
                        {
                          v8 = v14;
                          if (v14 >= v6)
                          {
                            break;
                          }

                          v15 = *v12 == *v14 && *(v12 + 1) == v14[1];
                          v16 = v15 && *(v12 + 4) == *(v14 + 4);
                          v14 = (v14 + 20);
                        }

                        while (v16);
                        v7 = v8;
                        v4 = v8;
                      }

                      goto LABEL_30;
                    }
                  }
                }

                if (v9 < v10)
                {
                  v11 = -1;
                }

                else
                {
                  v11 = 1;
                }

                if ((v11 & 0x80000000) == 0)
                {
                  goto LABEL_17;
                }

                v4 = v7;
              }

LABEL_30:
              v7 += 20;
              if (v7 >= v6)
              {
                goto LABEL_33;
              }
            }
          }

          v8 = v4 + 20;
LABEL_33:
          if (v8 < v6)
          {
            v17 = v4 - v8;
            v18 = v17 + 20;
            if (v5 != v8)
            {
              memmove(v5, v8, v17 + 20);
            }

            v5 += v18;
          }

          a1[1] = ((v5 - *a1) / 0x14uLL);
        }
      }
    }
  }
}

uint64_t sub_100229AF4(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v2 = bswap64(*a1);
    v3 = bswap64(*a2);
    if (v2 == v3 && (v2 = bswap64(*(a1 + 8)), v3 = bswap64(*(a2 + 8)), v2 == v3) && (v2 = bswap32(*(a1 + 16)), v3 = bswap32(*(a2 + 16)), v2 == v3))
    {
      return 0;
    }

    else if (v2 < v3)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  else if (a1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return a2 != 0;
  }
}

unint64_t sub_100229B70(unint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = result;
    v6 = 0;
    for (i = a3; ; i = (a3 + 20 * result))
    {
      sub_1002297B0(v5, i);
      result = sub_100229BE8(a3, a2, v6);
      if (result >= a2)
      {
        break;
      }

      v6 = result;
    }
  }

  return result;
}

unint64_t sub_100229BE8(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a1 && a3 < a2)
  {
    v3 = a1 + 20 * a3;
    v4 = v3 + 20;
    while (a2 - 1 != a3)
    {
      ++a3;
      v6 = *v3 == *v4 && *(v3 + 8) == *(v4 + 8) && *(v3 + 16) == *(v4 + 16);
      v4 += 20;
      if (!v6)
      {
        return a3;
      }
    }

    return a2;
  }

  return a3;
}

unint64_t sub_100229C44(uint64_t *a1, uint64_t a2, char **a3)
{
  v6 = a1[1];
  if (v6 && *(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = *a1 + 20 * v8;
      v10 = *a2;
      v11 = *a2 + 20 * v7;
      if (*a1)
      {
        v12 = v10 == 0;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        v13 = v10 != 0;
        if (*a1)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v14 = bswap64(*v9);
        v15 = bswap64(*v11);
        if (v14 == v15 && (v14 = bswap64(*(v9 + 8)), v15 = bswap64(*(v11 + 8)), v14 == v15) && (v14 = bswap32(*(v9 + 16)), v15 = bswap32(*(v11 + 16)), v14 == v15))
        {
          v13 = 0;
        }

        else if (v14 < v15)
        {
          v13 = -1;
        }

        else
        {
          v13 = 1;
        }
      }

      if (v13)
      {
        if ((v13 & 0x80000000) == 0)
        {
          sub_1002297B0(a3, (*a2 + 20 * v7));
          v7 = sub_100229BE8(*a2, *(a2 + 8), v7);
          v6 = a1[1];
          goto LABEL_23;
        }

LABEL_21:
        sub_1002297B0(a3, v9);
        v6 = a1[1];
        v8 = sub_100229BE8(*a1, v6, v8);
        goto LABEL_23;
      }

      sub_1002297B0(a3, v9);
      v6 = a1[1];
      v8 = sub_100229BE8(*a1, v6, v8);
      v7 = sub_100229BE8(*a2, *(a2 + 8), v7);
LABEL_23:
      if (v8 >= v6 || v7 >= *(a2 + 8))
      {
        goto LABEL_27;
      }
    }
  }

  v7 = 0;
  v8 = 0;
LABEL_27:
  sub_100229B70(a3, v6 - v8, *a1 + 20 * v8);
  v16 = *(a2 + 8) - v7;
  v17 = *a2 + 20 * v7;

  return sub_100229B70(a3, v16, v17);
}

unint64_t sub_100229DF8(unint64_t result, unint64_t *a2, unint64_t a3, uint64_t *a4, char **a5)
{
  v8 = a2[1];
  if (v8 > result)
  {
    v10 = result;
    v11 = a4[1];
    do
    {
      if (a3 >= v11)
      {
        break;
      }

      result = *a2;
      if (!*a2)
      {
        break;
      }

      v12 = *a4;
      if (!*a4)
      {
        return result;
      }

      v13 = result + 20 * v10;
      v14 = v12 + 20 * a3;
      v15 = bswap64(*v13);
      v16 = bswap64(*v14);
      if (v15 != v16)
      {
        goto LABEL_10;
      }

      v15 = bswap64(*(v13 + 8));
      v16 = bswap64(*(v14 + 8));
      if (v15 == v16 && (v15 = bswap32(*(v13 + 16)), v16 = bswap32(*(v14 + 16)), v15 == v16))
      {
        v10 = sub_100229BE8(result, v8, v10);
        result = sub_100229BE8(v12, v11, a3);
        a3 = result;
      }

      else
      {
LABEL_10:
        v17 = v15 < v16 ? -1 : 1;
        if (v17 < 0)
        {
          result = sub_100229BE8(result, v8, v10);
          v10 = result;
        }

        else
        {
          sub_1002297B0(a5, v14);
          v11 = a4[1];
          result = sub_100229BE8(*a4, v11, a3);
          a3 = result;
          v8 = a2[1];
        }
      }
    }

    while (v10 < v8);
  }

  if (*a4)
  {
    v18 = a4[1] - a3;
    v19 = *a4 + 20 * a3;

    return sub_100229B70(a5, v18, v19);
  }

  return result;
}

unint64_t sub_100229F8C(uint64_t *a1, unint64_t *a2, uint64_t a3, char **a4)
{
  v5 = a2;
  v6 = a1;
  if (!a1[1])
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
    goto LABEL_51;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  do
  {
    if (v8 >= *(a3 + 8))
    {
      break;
    }

    v10 = *v6 + 20 * v7;
    v11 = *a3;
    v12 = *a3 + 20 * v8;
    if (*v6)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      v14 = v11 != 0;
      if (!*v6)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v16 = bswap64(*v10);
      v17 = bswap64(*v12);
      if (v16 == v17)
      {
        v16 = bswap64(*(v10 + 8));
        v17 = bswap64(*(v12 + 8));
        if (v16 == v17)
        {
          v16 = bswap32(*(v10 + 16));
          v17 = bswap32(*(v12 + 16));
          if (v16 == v17)
          {
            v14 = 0;
LABEL_19:
            v31 = 0;
            v15 = v14 == 0;
            goto LABEL_20;
          }
        }
      }

      if (v16 < v17)
      {
        v14 = -1;
      }

      else
      {
        v14 = 1;
      }

      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_19;
      }
    }

    v15 = 0;
    v31 = 1;
    v12 = v10;
LABEL_20:
    v18 = v5[1];
    if (v9 >= v18)
    {
      goto LABEL_41;
    }

    v19 = *v5;
    if (v12)
    {
      v20 = v19 == 0;
    }

    else
    {
      v20 = 1;
    }

    v21 = !v20;
    while ((v21 & 1) != 0)
    {
      v22 = v19 + 20 * v9;
      v23 = bswap64(*v22);
      v24 = bswap64(*v12);
      if (v23 == v24)
      {
        v23 = bswap64(*(v22 + 8));
        v24 = bswap64(*(v12 + 8));
        if (v23 == v24)
        {
          v23 = bswap32(*(v22 + 16));
          v24 = bswap32(*(v12 + 16));
          if (v23 == v24)
          {
            v25 = 0;
            goto LABEL_40;
          }
        }
      }

      if (v23 < v24)
      {
        v25 = -1;
      }

      else
      {
        v25 = 1;
      }

      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_40;
      }

LABEL_38:
      v9 = sub_100229BE8(v19, v18, v9);
      if (v9 >= v18)
      {
        goto LABEL_42;
      }
    }

    if (v19)
    {
      goto LABEL_38;
    }

    v25 = v12 != 0;
LABEL_40:
    if (v25)
    {
LABEL_41:
      sub_1002297B0(a4, v12);
LABEL_42:
      if (v15)
      {
LABEL_43:
        v6 = a1;
        v26 = a1[1];
        v7 = sub_100229BE8(*a1, v26, v7);
        v8 = sub_100229BE8(*a3, *(a3 + 8), v8);
        v5 = a2;
        continue;
      }
    }

    else
    {
      v9 = sub_100229BE8(v19, v18, v9);
      if (v15)
      {
        goto LABEL_43;
      }
    }

    v6 = a1;
    v5 = a2;
    if (v31)
    {
      v26 = a1[1];
      v7 = sub_100229BE8(*a1, v26, v7);
    }

    else
    {
      v8 = sub_100229BE8(*a3, *(a3 + 8), v8);
      v26 = a1[1];
    }
  }

  while (v7 < v26);
LABEL_51:
  sub_100229DF8(v9, v5, v7, v6, a4);

  return sub_100229DF8(v9, v5, v8, a3, a4);
}

uint64_t sub_10022A258()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10022A2F0;
  block[3] = &unk_100345FC8;
  block[4] = &qword_10039E3B0;
  if (qword_10039E3A8 != -1)
  {
    dispatch_once(&qword_10039E3A8, block);
  }

  return qword_10039E3B0;
}

uint64_t sub_10022A2F0(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

__CFString *sub_10022A324(CFDataRef *a1)
{
  sub_100017B30();

  return sub_10022A35C(a1);
}

__CFString *sub_10022A35C(CFDataRef *a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  if (!a1)
  {
    v6 = 0;
LABEL_6:
    CFStringAppendFormat(Mutable, 0, @"<[%zu]", v6);
    goto LABEL_7;
  }

  if (CFDataGetLength(a1[3]) < 0xA0)
  {
    v6 = CFDataGetLength(a1[3]) / 0x14uLL;
    goto LABEL_6;
  }

  v3 = sub_10022A4C8(a1);
  BytePtr = CFDataGetBytePtr(v3);
  Length = CFDataGetLength(a1[3]);
  CFStringAppendFormat(Mutable, 0, @"<[%zu:%02X%02X%02X%02X]", Length / 0x14, *BytePtr, BytePtr[1], BytePtr[2], BytePtr[3]);
LABEL_7:
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2000000000;
  v9[3] = 8;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_10022A540;
  v8[3] = &unk_100345FF0;
  v8[4] = v9;
  v8[5] = Mutable;
  sub_10022A5D4(a1, v8);
  CFStringAppend(Mutable, @">");
  _Block_object_dispose(v9, 8);
  return Mutable;
}

__CFData *sub_10022A4C8(__CFData *result)
{
  if (result)
  {
    v1 = result;
    result = *(result + 2);
    if (!result)
    {
      CFDataGetLength(*(v1 + 3));
      CFDataGetBytePtr(*(v1 + 3));
      v2 = ccsha1_di();
      result = sub_10001B2EC(kCFAllocatorDefault, v2);
      *(v1 + 2) = result;
    }
  }

  return result;
}

void sub_10022A540(uint64_t a1, CFDataRef theData, _BYTE *a3)
{
  BytePtr = CFDataGetBytePtr(theData);
  CFStringAppendFormat(*(a1 + 40), 0, @" %02X%02X%02X%02X", *BytePtr, BytePtr[1], BytePtr[2], BytePtr[3]);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 24) - 1;
  *(v6 + 24) = v7;
  if (!v7)
  {
    CFStringAppend(*(a1 + 40), @"...");
    *a3 = 1;
  }
}

void sub_10022A5D4(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  if (a1)
  {
    BytePtr = CFDataGetBytePtr(*(a1 + 24));
    Length = CFDataGetLength(*(a1 + 24));
    if (Length >= 20)
    {
      v6 = &BytePtr[Length];
      do
      {
        v7 = CFDataCreate(kCFAllocatorDefault, BytePtr, 20);
        if (v7)
        {
          v8 = v7;
          (*(a2 + 16))(a2, v7, &v10);
          CFRelease(v8);
        }

        if (v10)
        {
          break;
        }

        v9 = BytePtr + 40;
        BytePtr += 20;
      }

      while (v9 <= v6);
    }
  }
}

BOOL sub_10022A694(__CFData *a1, __CFData *a2)
{
  v3 = sub_10022A4C8(a1);
  v4 = sub_10022A4C8(a2);
  if (v3 && v4)
  {
    return CFEqual(v3, v4) != 0;
  }

  else
  {
    return v3 == v4;
  }
}

void sub_10022A6EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t sub_10022A73C(const __CFData *a1, CFTypeRef *a2)
{
  sub_10022A258();
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    if (a1)
    {
      Copy = CFDataCreateCopy(kCFAllocatorDefault, a1);
    }

    else
    {
      Copy = CFDataCreate(kCFAllocatorDefault, 0, 0);
    }

    *(Instance + 24) = Copy;
  }

  else
  {
    sub_1000111B4(2, @"com.apple.security.sos.manifest.error", 0, a2, v4, @"Failed to create manifest");
  }

  return Instance;
}

uint64_t sub_10022A7E0(UInt8 *bytes, CFIndex length, CFTypeRef *a3)
{
  v4 = CFDataCreate(kCFAllocatorDefault, bytes, length);
  v5 = sub_10022A73C(v4, a3);
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

void *sub_10022A838(uint64_t a1)
{
  if (!a1)
  {
    return &unk_10039E3B8;
  }

  Length = CFDataGetLength(*(a1 + 24));
  *(a1 + 40) = Length / 0x14;
  *(a1 + 48) = Length / 0x14;
  *(a1 + 32) = CFDataGetBytePtr(*(a1 + 24));
  v3 = a1 + 32;
  *(v3 + 24) = 0;
  return v3;
}

uint64_t sub_10022A898(uint64_t a1, uint64_t a2, uint64_t *a3, const void **a4, CFTypeRef *a5)
{
  if (a1 && CFDataGetLength(*(a1 + 24)) > 0x13)
  {
    if (!a2 || CFDataGetLength(*(a2 + 24)) <= 0x13)
    {
      v10 = sub_10022A7E0(0, 0, a5);
      if (a3)
      {
        CFRetain(a1);
        *a3 = a1;
      }

      if (a4)
      {
        v15 = *a4;
        if (*a4 != v10)
        {
          if (!v10 || (CFRetain(v10), (v15 = *a4) != 0))
          {
            CFRelease(v15);
          }

          *a4 = v10;
        }
      }

      goto LABEL_16;
    }

    *v34 = 0u;
    v35 = 0u;
    *v32 = 0u;
    v33 = 0u;
    Length = CFDataGetLength(*(a1 + 24));
    *(a1 + 40) = Length / 0x14;
    *(a1 + 48) = Length / 0x14;
    *(a1 + 32) = CFDataGetBytePtr(*(a1 + 24));
    *(a1 + 56) = 0;
    v17 = CFDataGetLength(*(a2 + 24));
    *(a2 + 40) = v17 / 0x14;
    *(a2 + 48) = v17 / 0x14;
    *(a2 + 32) = CFDataGetBytePtr(*(a2 + 24));
    *(a2 + 56) = 0;
    v18 = *(a1 + 40);
    if (v18)
    {
      v19 = 0;
      v20 = 0;
      while (1)
      {
        v21 = *(a2 + 40);
        if (v20 >= v21)
        {
          goto LABEL_55;
        }

        v22 = *(a1 + 32);
        v23 = v22 + 20 * v19;
        v24 = *(a2 + 32);
        v25 = v24 + 20 * v20;
        if (v22)
        {
          v26 = v24 == 0;
        }

        else
        {
          v26 = 1;
        }

        if (v26)
        {
          v27 = v24 != 0;
          if (v22)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v28 = bswap64(*v23);
          v29 = bswap64(*v25);
          if (v28 == v29 && (v28 = bswap64(*(v23 + 8)), v29 = bswap64(*(v25 + 8)), v28 == v29) && (v28 = bswap32(*(v23 + 16)), v29 = bswap32(*(v25 + 16)), v28 == v29))
          {
            v27 = 0;
          }

          else if (v28 < v29)
          {
            v27 = -1;
          }

          else
          {
            v27 = 1;
          }
        }

        if (!v27)
        {
          v19 = sub_100229BE8(v22, v18, v19);
          v20 = sub_100229BE8(v24, v21, v20);
          goto LABEL_52;
        }

        if (v27 < 0)
        {
LABEL_50:
          sub_1002297B0(v34, v23);
          v18 = *(a1 + 40);
          v19 = sub_100229BE8(*(a1 + 32), v18, v19);
          goto LABEL_52;
        }

        sub_1002297B0(v32, (v24 + 20 * v20));
        v20 = sub_100229BE8(*(a2 + 32), *(a2 + 40), v20);
        v18 = *(a1 + 40);
LABEL_52:
        if (v19 >= v18)
        {
          goto LABEL_55;
        }
      }
    }

    v20 = 0;
    v19 = 0;
LABEL_55:
    sub_100229B70(v34, v18 - v19, *(a1 + 32) + 20 * v19);
    sub_100229B70(v32, *(a2 + 40) - v20, *(a2 + 32) + 20 * v20);
    if (a3)
    {
      v30 = sub_10022ABF8(v34, a5);
      *a3 = v30;
      v13 = v30 != 0;
      if (!a4)
      {
LABEL_58:
        free(v34[0]);
        v34[0] = 0;
        v34[1] = 0;
        BYTE8(v35) = 0;
        *&v35 = 0;
        free(v32[0]);
        return v13;
      }
    }

    else
    {
      v13 = 1;
      if (!a4)
      {
        goto LABEL_58;
      }
    }

    v31 = sub_10022ABF8(v32, a5);
    *a4 = v31;
    v13 = (v31 != 0) & v13;
    goto LABEL_58;
  }

  v10 = sub_10022A7E0(0, 0, a5);
  if (a3)
  {
    v11 = *a3;
    if (*a3 != v10)
    {
      if (!v10 || (CFRetain(v10), (v11 = *a3) != 0))
      {
        CFRelease(v11);
      }

      *a3 = v10;
    }
  }

  if (a4)
  {
    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      CFRetain(v12);
    }

    *a4 = v12;
  }

LABEL_16:
  if (v10)
  {
    CFRelease(v10);
  }

  return 1;
}

uint64_t sub_10022ABF8(uint64_t result, CFTypeRef *a2)
{
  if (result)
  {
    v3 = result;
    if (*(result + 24) == 1)
    {
      sub_100229930(result);
    }

    v4 = *v3;
    v5 = 20 * *(v3 + 8);

    return sub_10022A7E0(v4, v5, a2);
  }

  return result;
}

uint64_t sub_10022AC58(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  *v12 = 0u;
  v13 = 0u;
  v7 = sub_10022A838(a1);
  v8 = sub_10022A838(a2);
  v9 = sub_10022A838(a3);
  sub_100229F8C(v7, v8, v9, v12);
  v10 = sub_10022ABF8(v12, a4);
  free(v12[0]);
  return v10;
}

CFTypeRef sub_10022ACE4(uint64_t a1, CFTypeRef cf, CFTypeRef *a3)
{
  if (a1 && CFDataGetLength(*(a1 + 24)) > 0x13)
  {
    *v10 = 0u;
    v11 = 0u;
    Length = CFDataGetLength(*(a1 + 24));
    *(a1 + 40) = Length / 0x14;
    *(a1 + 48) = Length / 0x14;
    *(a1 + 32) = CFDataGetBytePtr(*(a1 + 24));
    v7 = a1 + 32;
    *(v7 + 24) = 0;
    v8 = sub_10022A838(cf);
    sub_100229DF8(0, v7, 0, v8, v10);
    cf = sub_10022ABF8(v10, a3);
    free(v10[0]);
    return cf;
  }

  if (cf)
  {
    CFRetain(cf);
    return cf;
  }

  return sub_10022A7E0(0, 0, a3);
}

uint64_t sub_10022ADE0(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  *v23 = 0u;
  v24 = 0u;
  v5 = sub_10022A838(a1);
  v6 = sub_10022A838(a2);
  v7 = v5[1];
  if (v7)
  {
    v8 = v6;
    v9 = 0;
    v10 = 0;
    v11 = v6[1];
    do
    {
      if (v10 >= v11)
      {
        break;
      }

      v12 = *v5;
      v13 = *v5 + 20 * v9;
      v14 = *v8;
      if (*v5)
      {
        v15 = v14 == 0;
      }

      else
      {
        v15 = 1;
      }

      if (v15)
      {
        v16 = v14 != 0;
        if (v12)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v17 = v14 + 20 * v10;
        v18 = bswap64(*v13);
        v19 = bswap64(*v17);
        if (v18 == v19 && (v18 = bswap64(*(v13 + 8)), v19 = bswap64(*(v17 + 8)), v18 == v19) && (v18 = bswap32(*(v13 + 16)), v19 = bswap32(*(v17 + 16)), v18 == v19))
        {
          v16 = 0;
        }

        else if (v18 < v19)
        {
          v16 = -1;
        }

        else
        {
          v16 = 1;
        }
      }

      if (!v16)
      {
        sub_1002297B0(v23, v13);
        v7 = v5[1];
        v9 = sub_100229BE8(*v5, v7, v9);
        v20 = *v8;
        v11 = v8[1];
        goto LABEL_23;
      }

      if ((v16 & 0x80000000) == 0)
      {
        v20 = *v8;
LABEL_23:
        v10 = sub_100229BE8(v20, v11, v10);
        continue;
      }

LABEL_21:
      v9 = sub_100229BE8(v12, v7, v9);
    }

    while (v9 < v7);
  }

  v21 = sub_10022ABF8(v23, a3);
  free(v23[0]);
  return v21;
}

CFDataRef *sub_10022AF68(uint64_t a1, CFDataRef *cf, CFTypeRef *a3)
{
  if (a1)
  {
    v5 = a1;
    if (CFDataGetLength(*(a1 + 24)) > 0x13)
    {
      if (cf && CFDataGetLength(cf[3]) > 0x13)
      {
        *v11 = 0u;
        v12 = 0u;
        Length = CFDataGetLength(*(v5 + 24));
        *(v5 + 40) = Length / 0x14;
        *(v5 + 48) = Length / 0x14;
        *(v5 + 32) = CFDataGetBytePtr(*(v5 + 24));
        v8 = v5 + 32;
        *(v8 + 24) = 0;
        v9 = CFDataGetLength(cf[3]);
        cf[5] = (v9 / 0x14);
        cf[6] = (v9 / 0x14);
        cf[4] = CFDataGetBytePtr(cf[3]);
        v10 = (cf + 4);
        v10[24] = 0;
        sub_100229C44(v8, v10, v11);
        v5 = sub_10022ABF8(v11, a3);
        free(v11[0]);
      }

      else
      {
        CFRetain(v5);
      }

      return v5;
    }
  }

  if (cf)
  {
    CFRetain(cf);
    return cf;
  }

  return sub_10022A7E0(0, 0, a3);
}

void sub_10022B220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_10022B238(const __CFDictionary *a1)
{
  v1 = a1;
  if (a1)
  {
    v11 = 0;
    v2 = sub_10000E078(a1, &v11);
    if (v2)
    {
      v3 = v2;
      v4 = &v10 - ((__chkstk_darwin(v2) + 15) & 0xFFFFFFFFFFFFFFF0);
      memset(v4, 170, v3);
      if (sub_10000E1FC(v1, &v11, 0))
      {
        v1 = malloc_type_malloc(0x20uLL, 0xED82182DuLL);
        CC_SHA256(v4, v3, v1);
      }

      else
      {
        v7 = sub_100006274("key-interests");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v13 = v11;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to DER encode dictionary - %@", buf, 0xCu);
        }

        v8 = v11;
        if (v11)
        {
          v11 = 0;
          CFRelease(v8);
        }

        return 0;
      }
    }

    else
    {
      v5 = sub_100006274("key-interests");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = v11;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to get size of dictionary - %@", buf, 0xCu);
      }

      v6 = v11;
      if (v11)
      {
        v11 = 0;
        CFRelease(v6);
      }

      return 0;
    }
  }

  return v1;
}

void sub_10022B41C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[1];
  v4 = *(a1 + 48);
  if (v3)
  {
    if (!v4)
    {
      goto LABEL_16;
    }

    v5 = *v3;
    v6 = v3[1];
    v8 = v3[2];
    v7 = v3[3];
    v9 = *v4 == v5 && v4[1] == v6;
    v10 = v9 && v4[2] == v8;
    if (!v10 || v4[3] != v7)
    {
      goto LABEL_16;
    }

    free(*(a1 + 48));
    LOBYTE(v4) = 0;
  }

  else if (v4)
  {
LABEL_16:
    [v2 onqueueFreeHashBuff];
    *(*(a1 + 32) + 8) = *(a1 + 48);
    LOBYTE(v4) = 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = v4;
}

uint64_t sub_10022B5A0(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 <= 5 && a3 - 5 < 0xFFFFFFFFFFFFFFFDLL && (v4 = off_100346038[a3][2]) != 0)
  {

    return (v4)(a1, a2, a4);
  }

  else
  {
    SOSCreateError();
    return 0;
  }
}

uint64_t sub_10022B614(void *a1, uint64_t a2, uint64_t a3)
{
  sub_100217A94(a1);
  v6 = sub_100258BCC(a1);
  if (v6 > 5 || v6 - 5 >= 0xFFFFFFFFFFFFFFFDLL)
  {
    SOSCreateError();
    return 0;
  }

  else
  {
    v7 = off_100346038[v6][8];
    if (v7)
    {

      return (v7)(a1, 0, a2, a3);
    }

    else
    {
      return 1;
    }
  }
}

uint64_t sub_10022B6D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100217A94(a1);
  v8 = sub_100258BCC(a1);
  if (v8 <= 5 && v8 - 5 < 0xFFFFFFFFFFFFFFFDLL && (v9 = off_100346038[v8][13]) != 0)
  {

    return (v9)(a1, 0, a2, a3, a4);
  }

  else
  {
    SOSCreateError();
    return 0;
  }
}

uint64_t sub_10022B78C(void *a1, uint64_t a2)
{
  sub_100217A94(a1);
  v4 = sub_100258BCC(a1);
  if (v4 <= 5 && v4 - 5 < 0xFFFFFFFFFFFFFFFDLL && (v5 = off_100346038[v4][14]) != 0)
  {

    return (v5)(a1, a2);
  }

  else
  {
    SOSCreateError();
    return 0;
  }
}

const void *sub_10022B838(void *a1)
{
  sub_100217A94(a1);
  if (sub_100258BCC(a1) == 1)
  {

    return sub_100258DA0(a1);
  }

  else
  {
    SOSCreateError();
    return 0;
  }
}

uint64_t sub_10022B8A8(uint64_t result, CFTypeRef cf)
{
  v2 = cf;
  v3 = result;
  v4 = *(result + 40);
  if (!cf || (v5 = CFGetTypeID(cf), result = CFStringGetTypeID(), v5 != result))
  {
    if (v4)
    {
      result = sub_1000103CC(-50, v4, @"object %@ is not a string", v2);
    }

    v2 = 0;
  }

  *(*(*(v3 + 32) + 8) + 24) = v2;
  return result;
}

uint64_t sub_10022B940(void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  sub_100217A94(a1);
  if (!sub_10022B9EC(a1))
  {
    return 0;
  }

  v9 = SOSBSKBCopyEncoded();
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  if (sub_100258DF8(a1, a3))
  {
    v11 = sub_10022B6D0(a1, v10, a2, a5);
  }

  else
  {
    v11 = 0;
  }

  CFRelease(v10);
  return v11;
}

BOOL sub_10022B9EC(void *a1)
{
  v1 = sub_100258BCC(a1);
  if (v1 != 1)
  {
    SOSCreateError();
  }

  return v1 == 1;
}

uint64_t sub_10022BA3C(void *a1)
{
  sub_100217A94(a1);
  if (!sub_10022B9EC(a1) || !sub_10022B78C(a1, 0))
  {
    return 0;
  }

  return SOSBackupSliceKeyBagCreateFromData();
}

void sub_10022BAB4(void *a1, uint64_t a2, CFTypeRef *a3)
{
  v5 = a1;
  v12 = v5;
  if (!a2)
  {
    goto LABEL_13;
  }

  v6 = *(a2 + 40);
  v7 = SOSRKNullKey();
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (v6 == v7)
    {
LABEL_12:
      v5 = v12;
LABEL_13:
      sub_100228AD0(v5, @"recoveryKeyBag", a3);
      goto LABEL_14;
    }
  }

  else if (CFEqual(v6, v7))
  {
    goto LABEL_12;
  }

  v9 = sub_100238980(a2, a3);
  v10 = v12;
  if (!v9)
  {
    goto LABEL_15;
  }

  sub_100228C18(v12, @"recoveryKeyBag", v9, a3);
  CFRelease(v9);
LABEL_14:
  v10 = v12;
LABEL_15:
}

uint64_t sub_10022BB90(const __CFAllocator *a1, void *a2, CFTypeRef *a3)
{
  v5 = sub_10020649C(a2, @"recoveryKeyBag");
  v6 = v5;
  if (v5 && (v7 = CFGetTypeID(v5), v7 == CFDataGetTypeID()))
  {

    return sub_100238AFC(a1, v6, a3);
  }

  else
  {
    if (a3)
    {
      sub_1000103CC(-50, a3, @"object %@ is not a data", v6);
    }

    return 0;
  }
}

const __CFData *sub_10022BC48(const __CFAllocator *a1, void *a2, CFTypeRef *a3)
{
  v4 = sub_10022BB90(a1, a2, a3);
  if (!v4)
  {
    Copy = 0;
    if (!a3)
    {
      return Copy;
    }

    goto LABEL_7;
  }

  v5 = v4;
  Copy = *(v4 + 40);
  if (Copy)
  {
    v7 = SOSRKNullKey();
    if (v7 && CFEqual(Copy, v7))
    {
      Copy = 0;
    }

    else
    {
      Copy = CFDataCreateCopy(kCFAllocatorDefault, Copy);
    }
  }

  CFRelease(v5);
  if (a3)
  {
LABEL_7:
    if (!Copy && !*a3)
    {
      SOSErrorCreate();
    }
  }

  return Copy;
}

uint64_t sub_10022BCFC(void *a1, const __CFData *a2, void *a3)
{
  v5 = a1;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  if ([v5 isInCircle:a3])
  {
    v6 = sub_10022BC48(kCFAllocatorDefault, v5, 0);
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10022C0BC;
    v28[3] = &unk_100346A98;
    v28[4] = v6;
    sub_10022C12C(a2, v28);
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = sub_10023873C(kCFAllocatorDefault, v5, a2, 0);
    sub_10022BAB4(v5, v7, 0);
    v27 = 0;
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_10022C210;
    v22 = &unk_100346090;
    v23 = v5;
    v24 = &v29;
    v25 = &v33;
    v26 = v7;
    v8 = v23;
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v38 = sub_10022C5CC;
    v39 = &unk_1003460B8;
    v9 = v8;
    v40 = v9;
    if (sub_10021C3A4(v9, @"RecoveryRing", &v27, &buf, &v19))
    {
      [v9 setPublicKeyStatus:2 forKey:{2, v19, v20, v21, v22, v23, v24, v25, v26}];
    }

    else
    {

      v11 = v30;
      v12 = v30[3];
      if (v12)
      {
        v30[3] = 0;
        CFRelease(v12);
        v11 = v30;
      }

      v11[3] = v27;
      *(v34 + 24) = 0;
    }

    if (v7)
    {
      CFRelease(v7);
    }

    v13 = [v9 trust];
    [v13 peerInfo];
    HasBackupKey = SOSPeerInfoHasBackupKey();

    if (HasBackupKey)
    {
      sub_10021398C(v9);
    }

    if ((v34[3] & 1) == 0)
    {
      if (!v30[3])
      {
        SOSErrorCreate();
      }

      v15 = sub_100006274("recovery");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v30[3];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "SetRecoveryPublic Failed: %@", &buf, 0xCu);
      }

      v17 = v30[3];
      if (a3)
      {
        *a3 = v17;
      }

      else if (v17)
      {
        v30[3] = 0;
        CFRelease(v17);
      }
    }

    v10 = *(v34 + 24);
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);

  return v10 & 1;
}

void sub_10022C07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_10022C0BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10022C668;
  v3[3] = &unk_100346A98;
  v3[4] = a2;
  sub_10022C12C(v2, v3);
}

void sub_10022C12C(const __CFData *a1, void *a2)
{
  v9 = a2;
  if (a1)
  {
    Length = CFDataGetLength(a1);
    Mutable = CFStringCreateMutable(kCFAllocatorDefault, 2 * Length);
    BytePtr = CFDataGetBytePtr(a1);
    v6 = CFDataGetLength(a1);
    if (v6 >= 1)
    {
      v7 = v6;
      do
      {
        v8 = *BytePtr++;
        CFStringAppendFormat(Mutable, 0, @"%02X", v8);
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    Mutable = @"(null)";
  }

  v9[2](v9, Mutable);
  CFRelease(Mutable);
}

void *sub_10022C210(uint64_t a1, void *a2)
{
  Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  v5 = [*(a1 + 32) trust];
  [v5 trustedCircle];
  [*(a1 + 32) accountKey];
  SOSCircleForEachValidSyncingPeer();

  sub_100258E40(a2, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v6 = *(a1 + 32);
  if (*(a1 + 56))
  {
    if (sub_100217A0C(a2, [*(a1 + 32) fullPeerInfo], *(a1 + 56), (*(*(a1 + 40) + 8) + 24)))
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      goto LABEL_19;
    }

    v10 = sub_100006274("SecError");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(*(*(a1 + 40) + 8) + 24);
      *buf = 138412290;
      v22 = v11;
      v12 = "SetRecoveryKey failed at SOSRingSetRecoveryKeyBag #1: %@";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  v7 = SOSRKNullKey();
  v8 = sub_10023873C(kCFAllocatorDefault, v6, v7, (*(*(a1 + 40) + 8) + 24));
  if (!v8)
  {
    v10 = sub_100006274("SecError");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(*(*(a1 + 40) + 8) + 24);
      *buf = 138412290;
      v22 = v13;
      v12 = "SetRecoveryKey failed at SOSRecoveryKeyBagCreateForAccount: %@";
      goto LABEL_13;
    }

LABEL_14:

    goto LABEL_19;
  }

  v9 = v8;
  if (sub_100217A0C(a2, [*(a1 + 32) fullPeerInfo], v8, (*(*(a1 + 40) + 8) + 24)))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    v14 = sub_100006274("SecError");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(*(*(a1 + 40) + 8) + 24);
      *buf = 138412290;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "SetRecoveryKey failed at SOSRingSetRecoveryKeyBag #2: %@", buf, 0xCu);
    }
  }

  CFRelease(v9);
LABEL_19:
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v16 = [*(a1 + 32) trust];
    v17 = sub_10022B614(a2, [v16 fullPeerInfo], *(*(a1 + 40) + 8) + 24);

    if ((v17 & 1) == 0)
    {
      v18 = sub_100006274("SecError");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(*(*(a1 + 40) + 8) + 24);
        *buf = 138412290;
        v22 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "SetRecoveryKey failed at SOSRingGenerationSign: %@", buf, 0xCu);
      }

      *(*(*(a1 + 48) + 8) + 24) = 0;
    }
  }

  if (a2)
  {
    CFRetain(a2);
  }

  return a2;
}

uint64_t sub_10022C5CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) peerID];
  v6 = sub_10022B5A0(a2, v5, 5u, a3);

  return v6;
}

void sub_10022C628(uint64_t a1)
{
  v1 = *(a1 + 32);
  PeerID = SOSPeerInfoGetPeerID();

  CFSetAddValue(v1, PeerID);
}

void sub_10022C668(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006274("recovery");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SetRecoveryPublic: %@ from %@", &v6, 0x16u);
  }
}

void sub_10022C730(void *a1)
{
  v1 = a1;
  v2 = [v1 queue];
  dispatch_assert_queue_V2(v2);

  v3 = sub_10022BB90(kCFAllocatorDefault, v1, 0);
  v4 = qword_10039E3D8;
  if (v3)
  {
    v5 = qword_10039E3D8 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (v3 == qword_10039E3D8)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  if (!CFEqual(v3, qword_10039E3D8))
  {
    v4 = qword_10039E3D8;
LABEL_10:
    v7 = sub_100006274("recovery");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = v4;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Recovery Key changed: old %@ new %@", &v9, 0x16u);
    }

    notify_post(kSOSCCRecoveryKeyChanged);
    v8 = qword_10039E3D8;
    if (qword_10039E3D8 != v3)
    {
      if (!v3 || (CFRetain(v3), (v8 = qword_10039E3D8) != 0))
      {
        CFRelease(v8);
      }

      qword_10039E3D8 = v3;
    }

LABEL_17:
    if (!v3)
    {
      return;
    }
  }

  CFRelease(v3);
}

uint64_t sub_10022C8A0()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10022C938;
  block[3] = &unk_100346138;
  block[4] = &qword_10039E3E8;
  if (qword_10039E3E0 != -1)
  {
    dispatch_once(&qword_10039E3E0, block);
  }

  return qword_10039E3E8;
}

uint64_t sub_10022C938(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

CFStringRef sub_10022C96C(uint64_t a1)
{
  sub_100017B30();

  return sub_10022C9A4(a1);
}

CFStringRef sub_10022C9A4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    BytePtr = CFDataGetBytePtr(v2);
  }

  else
  {
    BytePtr = &byte_100294A65;
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = CFDataGetBytePtr(v4);
  }

  else
  {
    v5 = &byte_100294A65;
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    v7 = CFDataGetBytePtr(v6);
  }

  else
  {
    v7 = &byte_100294A65;
  }

  v8 = CFGetAllocator(a1);
  v9 = CFDateCreate(v8, *(a1 + 104));
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  v11 = sub_10000869C(0);
  v12 = sub_100014CA8(v11);
  if (v12 && (v13 = (*(v12 + 8))(v12, kSecAttrAccessibleWhenUnlocked, 0)) != 0)
  {
    v14 = v13;
    v68[0] = 0;
    v68[1] = v68;
    v68[2] = 0x2000000000;
    v68[3] = 16;
    v15 = sub_10022CD98(a1);
    CFStringAppendFormat(Mutable, 0, @"{[%zu]", v15);
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 0x40000000;
    v67[2] = sub_10022CE9C;
    v67[3] = &unk_1003461B0;
    v67[5] = v14;
    v67[6] = Mutable;
    v67[4] = v68;
    v69[0] = _NSConcreteStackBlock;
    v69[1] = 0x40000000;
    v69[2] = sub_10022CF58;
    v69[3] = &unk_100346188;
    v69[5] = 0;
    v69[6] = v14;
    v69[4] = v67;
    sub_10022D038(a1, 0, v69);
    CFStringAppend(Mutable, @"}");
    _Block_object_dispose(v68, 8);
  }

  else
  {
    CFStringAppend(Mutable, @"{NO DATASOURCE}");
  }

  if (*(a1 + 112))
  {
    v16 = CFGetAllocator(a1);
    v17 = "j";
    v19 = *(a1 + 88);
    v18 = *(a1 + 96);
    v20 = *BytePtr;
    v21 = BytePtr[1];
    v22 = "P";
    if (v19)
    {
      v17 = "J";
    }

    v23 = BytePtr[2];
    v24 = BytePtr[3];
    v25 = "D";
    v26 = *v5;
    v27 = v5[1];
    if ((v19 & 2) == 0)
    {
      v22 = "p";
    }

    v28 = v5[2];
    v29 = v5[3];
    v30 = *v7;
    v31 = v7[1];
    v32 = v7[2];
    v33 = v7[3];
    v35 = *(a1 + 64);
    v34 = *(a1 + 72);
    if ((v19 & 3) == 0)
    {
      v25 = "d";
    }

    v36 = "k";
    if ((v19 & 4) != 0)
    {
      v36 = "K";
    }

    v37 = "z";
    if ((v19 & 5) != 0)
    {
      v37 = "Z";
    }

    if ((v19 & 6) != 0)
    {
      v38 = "H";
    }

    else
    {
      v38 = "h";
    }

    v65 = v37;
    v66 = v38;
    v63 = v25;
    v64 = v36;
    v61 = v17;
    v62 = v22;
    v59 = Mutable;
    v60 = "g";
    v57 = v35;
    v58 = v34;
    v55 = v32;
    v56 = v33;
    v53 = v30;
    v54 = v31;
    v51 = v28;
    v52 = v29;
    v49 = v26;
    v50 = v27;
    v47 = v23;
    v48 = v24;
    v39 = @"<MSG %llu %@ %02X%02X%02X%02X %02X%02X%02X%02X %02X%02X%02X%02X %@ %@ %@ %s%s%s%s%s%s%s>";
    v45 = v20;
    v46 = v21;
    v44 = v9;
    goto LABEL_29;
  }

  v43 = sub_10022D11C(a1);
  v16 = CFGetAllocator(a1);
  v18 = *(a1 + 96);
  if (v43 > 1)
  {
    if (v43 != 2)
    {
      v49 = *(a1 + 72);
      v50 = Mutable;
      v47 = v5[3];
      v48 = *(a1 + 64);
      v39 = @"<MSGObjects %llu %02X%02X%02X%02X %@ %@ %@";
      v45 = v5[1];
      v46 = v5[2];
      v44 = *v5;
LABEL_29:
      v40 = CFStringCreateWithFormat(v16, 0, v39, v18, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
      goto LABEL_30;
    }

    v40 = CFStringCreateWithFormat(v16, 0, @"<MSGManifest %llu %@>", *(a1 + 96), *(a1 + 72));
  }

  else if (v43)
  {
    v40 = CFStringCreateWithFormat(v16, 0, @"<MSGDigest %llu %02X%02X%02X%02X>", v18, *BytePtr, BytePtr[1], BytePtr[2], BytePtr[3]);
  }

  else
  {
    v40 = CFStringCreateWithFormat(v16, 0, @"<MSGInvalid %llu >", *(a1 + 96));
  }

LABEL_30:
  v41 = v40;
  if (v9)
  {
    CFRelease(v9);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v41;
}