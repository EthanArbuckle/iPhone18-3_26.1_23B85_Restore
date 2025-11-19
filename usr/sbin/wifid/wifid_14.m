CFMutableStringRef sub_1000F03DC()
{
  if (!&_lockdown_connect || !lockdown_connect())
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:"Error connecting to LockDown"];
    }

    objc_autoreleasePoolPop(v5);
    return 0;
  }

  v0 = MGCopyAnswer();
  if (&_lockdown_disconnect)
  {
    lockdown_disconnect();
  }

  if (!v0)
  {
    return 0;
  }

  MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, v0);
  CFRelease(v0);
  if (MutableCopy)
  {
    while (1)
    {
      if (!CFStringGetLength(MutableCopy))
      {
        CFRelease(MutableCopy);
        return 0;
      }

      ExternalRepresentation = CFStringCreateExternalRepresentation(kCFAllocatorDefault, MutableCopy, 0x8000100u, 0);
      if (ExternalRepresentation)
      {
        v3 = ExternalRepresentation;
        Length = CFDataGetLength(ExternalRepresentation);
        CFRelease(v3);
        if (Length <= 32)
        {
          break;
        }
      }

      v8.location = CFStringGetLength(MutableCopy) - 1;
      v8.length = 1;
      CFStringDelete(MutableCopy, v8);
    }

    v9.length = CFStringGetLength(MutableCopy);
    v9.location = 0;
    CFStringFindAndReplace(MutableCopy, @"\n", @" ", v9, 0);
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"Using SSID %@ for MIS Session, SSID Length = %ld", MutableCopy, Length}];
    }

    objc_autoreleasePoolPop(v7);
  }

  return MutableCopy;
}

void sub_1000F0580(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: MIS stopped Callback", "__WiFiDeviceManagerStopNetworkCallback"}];
  }

  objc_autoreleasePoolPop(v2);
  if (*(a1 + 5271))
  {
    sub_1001A6B1C(a1);
  }
}

void sub_1000F05FC(uint64_t a1)
{
  v15 = 0;
  if (!_MISAttach)
  {
    v2 = -1;
    goto LABEL_6;
  }

  v2 = _MISAttach(&v15);
  if (v2)
  {
LABEL_6:
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"Failed to attach to MIS Session with error %s", strerror(v2)}];
    }

    objc_autoreleasePoolPop(v5);
    goto LABEL_9;
  }

  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v30 = v3;
  v31 = v3;
  v28 = v3;
  v29 = v3;
  v26 = v3;
  v27 = v3;
  v24 = v3;
  v25 = v3;
  v22 = v3;
  v23 = v3;
  v20 = v3;
  v21 = v3;
  v18 = v3;
  v19 = v3;
  *cStr = v3;
  v17 = v3;
  if (_MISGetDynamicStoreKey)
  {
    v4 = _MISGetDynamicStoreKey(v15, cStr) != 0;
  }

  else
  {
    v4 = 1;
  }

  if (v15 && v4)
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:"Failed to get the MIS key"];
    }

    objc_autoreleasePoolPop(v7);
    goto LABEL_23;
  }

  v8 = CFStringCreateWithCString(0, cStr, 0x600u);
  if (!v8)
  {
LABEL_23:
    if (_MISDetach)
    {
      _MISDetach(v15);
    }

    goto LABEL_9;
  }

  v9 = v8;
  CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v8);
  v10 = *(a1 + 40);
  if (v10[30])
  {
    CFRetain(v10);
    v11 = *(a1 + 40);
    v12 = *(v11 + 240);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F08BC;
    block[3] = &unk_10025EEE8;
    block[4] = v11;
    block[5] = v9;
    block[6] = v15;
    dispatch_async(v12, block);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null queue", "__WiFiDeviceManagerAttachToDynamicStore_block_invoke"}];
    }

    objc_autoreleasePoolPop(v13);
    if (_MISDetach)
    {
      _MISDetach(v15);
    }

    CFRelease(v9);
  }

LABEL_9:
  if (CFArrayGetCount(*(*(*(a1 + 32) + 8) + 24)) >= 1)
  {
    SCDynamicStoreSetNotificationKeys(*(*(a1 + 40) + 5512), *(*(*(a1 + 32) + 8) + 24), 0);
  }

  v6 = *(*(*(a1 + 32) + 8) + 24);
  if (v6)
  {
    CFRelease(v6);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  CFRelease(*(a1 + 40));
}

void sub_1000F08BC(uint64_t a1)
{
  if (*(*(a1 + 32) + 240))
  {
    sub_1001A6BD8();
  }

  else
  {
    v2 = *(a1 + 32);

    CFRelease(v2);
  }
}

void sub_1000F08F8(id a1)
{
  v1 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"Requesting PersonalHotspotControl extension to reload because someone might change MIS state from NETRB"];
  }

  objc_autoreleasePoolPop(v1);
  v2 = +[CHSControlService sharedInstance];

  [(CHSControlService *)v2 reloadControlsForExtension:@"com.apple.WiFiKit.PersonalHotspotControl" kind:@"PersonalHotspotControl" reason:@"Requesting PersonalHotspotControl extension to reload because MIS state might be changed from NETRB"];
}

void sub_1000F0978(uint64_t a1, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    sub_1001A6E10();
    return;
  }

  v4 = Count;
  v5 = CFArrayGetCount(*(a1 + 3672));
  v6 = CFArrayGetCount(*(a1 + 3680)) + v5;
  if (!v6)
  {
    sub_1001A6DA4();
    return;
  }

  v52 = CFArrayGetCount(theArray);
  if (v52)
  {
    v7 = CFArrayGetCount(*(a1 + 3672));
    v49 = CFArrayGetCount(*(a1 + 3680)) + v7;
    v8 = objc_autoreleasePoolPush();
    v9 = off_100298C40;
    if (off_100298C40)
    {
      v10 = CFArrayGetCount(*(a1 + 3672));
      [v9 WFLog:3 message:{"%s: hs20Accounts: enabled %ld, disabled %ld", "__WiFiDeviceManagerSetHS20HomeOperatorNetwork", v10, CFArrayGetCount(*(a1 + 3680))}];
    }

    objc_autoreleasePoolPop(v8);
    if (v49)
    {
      MutableCopy = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, *(a1 + 3672));
      if (CFArrayGetCount(*(a1 + 3680)))
      {
        v12 = *(a1 + 3680);
        v55.length = CFArrayGetCount(v12);
        v55.location = 0;
        CFArrayAppendArray(MutableCopy, v12, v55);
      }

      if (v52 >= 1)
      {
        for (i = 0; i != v52; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          if (ValueAtIndex)
          {
            sub_1000A11E8(ValueAtIndex, 0);
          }
        }
      }

      v46 = a1;
      v47 = v6;
      if (v49 >= 1)
      {
        v15 = 0;
        v48 = MutableCopy;
        do
        {
          v50 = v15;
          v51 = CFArrayGetValueAtIndex(MutableCopy, v15);
          if (v51)
          {
            v16 = sub_10000A540(v51, @"DomainName");
            if (v16)
            {
              v17 = v16;
              v18 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: Home Domain name %@", "__WiFiDeviceManagerSetHS20HomeOperatorNetwork", v17}];
              }

              objc_autoreleasePoolPop(v18);
              if (sub_10009FE08(v51))
              {
                if (v52 >= 1)
                {
                  for (j = 0; j != v52; ++j)
                  {
                    v20 = CFArrayGetValueAtIndex(theArray, j);
                    if (v20)
                    {
                      v21 = v20;
                      v22 = sub_1000A1260(v20);
                      if (v22)
                      {
                        Value = CFDictionaryGetValue(v22, @"ANQP_DOMAIN_NAME_LIST");
                        v24 = objc_autoreleasePoolPush();
                        if (Value)
                        {
                          if (off_100298C40)
                          {
                            [off_100298C40 WFLog:3 message:{"%s: Checking ANQP domain list against home domain %@", "__WiFiDeviceManagerSetHS20HomeOperatorNetwork", v17}];
                          }

                          objc_autoreleasePoolPop(v24);
                          v25 = CFArrayGetCount(Value);
                          if (v25 >= 1)
                          {
                            v26 = v25;
                            v27 = 0;
                            while (1)
                            {
                              v28 = CFArrayGetValueAtIndex(Value, v27);
                              v29 = objc_autoreleasePoolPush();
                              if (off_100298C40)
                              {
                                [off_100298C40 WFLog:3 message:{"%s: Comparing home domain %@ against ANQP domain result %@", "__WiFiDeviceManagerSetHS20HomeOperatorNetwork", v17, v28}];
                              }

                              objc_autoreleasePoolPop(v29);
                              if (v28)
                              {
                                if (CFStringCompare(v17, v28, 0) == kCFCompareEqualTo)
                                {
                                  sub_1000A11E8(v21, 1);
                                  sub_1000A118C(v21, 1);
                                  sub_10009D854(v21, v51);
                                  v24 = objc_autoreleasePoolPush();
                                  v31 = off_100298C40;
                                  if (off_100298C40)
                                  {
                                    v32 = sub_10000A540(v51, @"DomainName");
                                    [v31 WFLog:3 message:{"%s: found response from home operator %@, marking %@ provisioned", "__WiFiDeviceManagerSetHS20HomeOperatorNetwork", v32, sub_10000A878(v21)}];
                                  }

                                  goto LABEL_47;
                                }

                                v30 = objc_autoreleasePoolPush();
                                if (off_100298C40)
                                {
                                  [off_100298C40 WFLog:3 message:{"%s: home domain %@ and ANQP domain result %@ were determined to be different", "__WiFiDeviceManagerSetHS20HomeOperatorNetwork", v17, v28}];
                                }

                                objc_autoreleasePoolPop(v30);
                              }

                              if (v26 == ++v27)
                              {
                                goto LABEL_48;
                              }
                            }
                          }

                          continue;
                        }

                        if (off_100298C40)
                        {
                          [off_100298C40 WFLog:3 message:{"%s: ANQP domain list was NULL", "__WiFiDeviceManagerSetHS20HomeOperatorNetwork", v44, v45}];
                        }
                      }

                      else
                      {
                        v24 = objc_autoreleasePoolPush();
                        if (off_100298C40)
                        {
                          [off_100298C40 WFLog:3 message:{"%s: result from WiFiNetworkGetGasResponse() was NULL", "__WiFiDeviceManagerSetHS20HomeOperatorNetwork", v44, v45}];
                        }
                      }
                    }

                    else
                    {
                      v24 = objc_autoreleasePoolPush();
                      if (off_100298C40)
                      {
                        [off_100298C40 WFLog:3 message:{"%s: network ref from responses was NULL.", "__WiFiDeviceManagerSetHS20HomeOperatorNetwork", v44, v45}];
                      }
                    }

LABEL_47:
                    objc_autoreleasePoolPop(v24);
LABEL_48:
                    ;
                  }
                }
              }

              else
              {
                v33 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: provisioned HS2.0 account %@ has no credentials.", "__WiFiDeviceManagerSetHS20HomeOperatorNetwork", sub_10000A878(v51)}];
                }

                objc_autoreleasePoolPop(v33);
              }
            }
          }

          v15 = v50 + 1;
          MutableCopy = v48;
        }

        while (v50 + 1 != v49);
      }

      v6 = v47;
      a1 = v46;
      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }
    }

    else
    {
      sub_1001A6CCC();
    }
  }

  else
  {
    sub_1001A6D38();
  }

  v34 = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, *(a1 + 3672));
  if (CFArrayGetCount(*(a1 + 3680)))
  {
    v35 = *(a1 + 3680);
    v56.length = CFArrayGetCount(v35);
    v56.location = 0;
    CFArrayAppendArray(v34, v35, v56);
  }

  if (v4 < 1)
  {
LABEL_71:
    if (v34)
    {
      goto LABEL_76;
    }

    return;
  }

  v36 = 0;
  while (1)
  {
    v37 = CFArrayGetValueAtIndex(theArray, v36);
    if (v37)
    {
      v38 = v37;
      if (!sub_1000A11B4(v37) && v6 >= 1)
      {
        break;
      }
    }

LABEL_70:
    if (++v36 == v4)
    {
      goto LABEL_71;
    }
  }

  v39 = 0;
  while (1)
  {
    v40 = CFArrayGetValueAtIndex(v34, v39);
    if (!v40)
    {
      goto LABEL_67;
    }

    v41 = v40;
    if (!sub_10009FE08(v40))
    {
      break;
    }

    sub_100176A90();
    if (v42)
    {
      sub_1000A118C(v38, 1);
      sub_10009D854(v38, v41);
      goto LABEL_70;
    }

LABEL_67:
    if (v6 == ++v39)
    {
      goto LABEL_70;
    }
  }

  v43 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: provisioned HS2.0 account %@ has no credentials.", "__WiFiDeviceManagerFindMatchingHS20Account", sub_10000A878(v41)}];
  }

  objc_autoreleasePoolPop(v43);
  if (v34)
  {
LABEL_76:

    CFRelease(v34);
  }
}

void sub_1000F0F68(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary **a4)
{
  v7 = *a4;
  *(*a4 + 5501) = 0;
  if (a3)
  {
    sub_10018B7C0(v7, a2, 0, 0, 0);
    v8 = 0;
  }

  else
  {
    v8 = sub_1000078F4(a1, a2);
    if (v8)
    {
      v9 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, a4 + 4);
      if (v9)
      {
        v10 = v9;
        valuePtr = -1431655766;
        sub_10000AD34(v8, @"networkRole", v9);
        CFNumberGetValue(v10, kCFNumberSInt32Type, &valuePtr);
        if (valuePtr == 4)
        {
          v11 = a4[3];
          if (v11)
          {
            Value = CFDictionaryGetValue(a4[3], @"APPLE80211KEY_AWDL_INFO_ASSISTED_DISCOVERY_FOLLOW");
            if (Value)
            {
              sub_10000AD34(v8, @"APPLE80211KEY_AWDL_INFO_ASSISTED_DISCOVERY_FOLLOW", Value);
            }

            v13 = CFDictionaryGetValue(v11, @"AWDL_INFO_ASSISTED_DISCOVERY_METRIC");
            if (v13)
            {
              sub_10000AD34(v8, @"AWDL_INFO_ASSISTED_DISCOVERY_METRIC", v13);
              v14 = a4[6];
              if (v14)
              {
                if (CFStringCompare(v14, @"mobilewifitool", 0))
                {
                  Current = CFAbsoluteTimeGetCurrent();
                  v16 = CFDateCreate(kCFAllocatorDefault, Current);
                  sub_10000AD34(v8, @"lastJoined", v16);
                  if (v16)
                  {
                    CFRelease(v16);
                  }
                }
              }
            }
          }
        }

        CFRelease(v10);
      }

      CFSetAddValue(*(v7 + 3376), v8);
    }
  }

  v17 = a4[1];
  if (v17)
  {
    (v17)(v7, a2, a3, v8, 0, a4[5]);
  }

  v18 = a4[3];
  if (v18)
  {
    CFRelease(v18);
    a4[3] = 0;
  }

  v19 = a4[6];
  if (v19)
  {
    CFRelease(v19);
    a4[6] = 0;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  free(a4);
}

void sub_1000F1160(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *a4;
  v5 = a4[1];
  if (v5)
  {
    v5(*a4, a2, a3, 0, a4[3]);
  }

  v7 = a4[2];
  if (v7 && CFSetContainsValue(*(v6 + 3376), v7))
  {
    CFSetRemoveValue(*(v6 + 3376), a4[2]);
  }

  if (*(v6 + 5480))
  {
    v8 = objc_autoreleasePoolPush();
    sub_1000BD184(v6);
    objc_autoreleasePoolPop(v8);
  }

  v9 = a4[2];
  if (v9)
  {
    CFRelease(v9);
  }

  free(a4);
}

void sub_1000F1200(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 7320) = 0;
    if (*(a1 + 7333))
    {
      v2 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"DPS/DNS Symptoms HUD: clearing display and stopping displayTimer"];
      }

      objc_autoreleasePoolPop(v2);
      *(a1 + 7333) = 0;
      dispatch_source_set_timer(*(a1 + 7312), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      if (MGGetBoolAnswer())
      {
        v3 = *(a1 + 4616);
        if (v3)
        {
          v3(a1, 18, 0, *(a1 + 4624));
        }
      }
    }

    if (*(a1 + 7328))
    {
      v4 = *(a1 + 120);

      sub_10013F2CC(v4);
    }
  }

  else
  {
    sub_1001A6E7C();
  }
}

void sub_1000F12E0(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 7360) = 0u;
    if (*(a1 + 7384))
    {
      v2 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"SlowWiFi HUD: clearing display and stopping displayTimer"];
      }

      objc_autoreleasePoolPop(v2);
      *(a1 + 7384) = 0;
      dispatch_source_set_timer(*(a1 + 7352), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      if (MGGetBoolAnswer())
      {
        v3 = *(a1 + 4616);
        if (v3)
        {
          v4 = *(a1 + 4624);

          v3(a1, 17, 0, v4);
        }
      }
    }
  }

  else
  {
    sub_1001A6EE8();
  }
}

void sub_1000F13B4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 240))
  {
    v4 = *(a1 + 32);
    v3 = (a1 + 32);
    (*(v2 + 4776))(v2, *(*(v4 + 8) + 24), 0, 0, *(v2 + 4784));
    CFRelease(v3[1]);
    v5 = *v3;
  }

  else
  {
    CFRelease(v2);
    v6 = *(a1 + 32);
    v3 = (a1 + 32);
    v5 = v6;
  }

  v7 = *(v5[1] + 24);
  if (v7)
  {
    CFRelease(v7);
    *(*(*v3 + 1) + 24) = 0;
  }
}

id sub_1000F1434(uint64_t a1, const void *a2)
{
  v4 = sub_10000A540(a2, @"BSSID");
  result = sub_10000A878(a2);
  if (a2)
  {
    v6 = result;
    v7 = [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
    v8 = sub_100064CE8(*(a1 + 64));
    v9 = v8 != 0;
    v10 = sub_100009730(a2);
    v11 = sub_1000097F8(a1, a2, 0);
    v12 = v11;
    if (!v8 || v10 || v11 == 1 || (v7 & 0xFFFFFFFFFFFFFFFDLL) != 1)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = off_100298C40;
      if (off_100298C40)
      {
        v19 = v8 != 0;
        v16 = sub_10000F2A0(v12);
        [v15 WFLog:3 message:{"%s: not enabling adaptive roaming on %@ (forceApply:%u deviceSupport:%u EAP:%u env:%@ networkOfInterestType:%@)", "__WiFiDeviceManagerGetAdaptiveRoamParams", v6, 0, v19, v10, v16, sub_1000590E8(v7)}];
      }

      objc_autoreleasePoolPop(v14);
      v13 = 0;
    }

    else
    {
      [+[WiFiAnalyticsManager sharedWiFiAnalyticsManager](WiFiAnalyticsManager "sharedWiFiAnalyticsManager")];
      v13 = 1;
    }

    v17 = *(a1 + 7480);
    v18 = sub_100006F88(*(a1 + 64));
    v20[0] = v13;
    v20[1] = 0;
    v20[2] = v9;
    v20[3] = v10;
    v21 = -1431655766;
    v22 = v12;
    v23 = v7;
    v24 = 0;
    return [v17 setRoamingARCriteria:v20 forInterface:v18];
  }

  return result;
}

void sub_1000F15EC(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: error (%@) fetching network: %@", "__WiFiDeviceManagerFetchCurrentNetworkFrom3Bars_block_invoke", a3, *(*(*(a1 + 40) + 8) + 24)}];
    }

    objc_autoreleasePoolPop(v4);
    goto LABEL_77;
  }

  v5 = *(*(*(a1 + 32) + 8) + 24);
  v6 = *(*(*(a1 + 40) + 8) + 24);
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  if (!v5)
  {
    v42 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: manager is null", "__WiFiDeviceManagerIngest3BarsFetchForCurrentNetwork"}];
    }

    goto LABEL_94;
  }

  if (!v6)
  {
    v42 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: network is null", "__WiFiDeviceManagerIngest3BarsFetchForCurrentNetwork"}];
    }

    goto LABEL_94;
  }

  v47 = v5;
  if (![objc_msgSend(a2 "results")])
  {
    v42 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: no results from 3bars for network %@", "__WiFiDeviceManagerIngest3BarsFetchForCurrentNetwork", v6}];
    }

    goto LABEL_94;
  }

  v8 = sub_10000A540(v6, @"BSSID");
  if ([objc_msgSend(a2 "results")] < 2)
  {
    v9 = [objc_msgSend(objc_msgSend(a2 "results")];
  }

  else
  {
    v9 = [objc_msgSend(a2 "results")];
  }

  v10 = v9;
  if (!v9)
  {
    v42 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: fetchedNetwork is null", "__WiFiDeviceManagerIngest3BarsFetchForCurrentNetwork"}];
    }

    goto LABEL_94;
  }

  v11 = *(v47 + 240);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F2110;
  block[3] = &unk_10025EFD8;
  block[4] = &v56;
  block[5] = v47;
  dispatch_sync(v11, block);
  v12 = v57[3];
  if (!v12)
  {
    v42 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: currentNetwork is null", "__WiFiDeviceManagerIngest3BarsFetchForCurrentNetwork"}];
    }

    goto LABEL_94;
  }

  if (!CFEqual(v6, v12))
  {
    v42 = objc_autoreleasePoolPush();
    v43 = off_100298C40;
    if (off_100298C40)
    {
      v44 = sub_10000A878(v6);
      [v43 WFLog:4 message:{"%s: no longer connected to %@ (connected to %@)", "__WiFiDeviceManagerIngest3BarsFetchForCurrentNetwork", v44, sub_10000A878(v57[3])}];
    }

LABEL_94:
    objc_autoreleasePoolPop(v42);
    goto LABEL_74;
  }

  if ([v10 attributes])
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v13 = [v10 attributes];
    v14 = [v13 countByEnumeratingWithState:&v51 objects:v62 count:16];
    if (v14)
    {
      v15 = *v52;
      while (1)
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v52 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = [*(*(&v51 + 1) + 8 * i) intValue];
          if (v17 > 4)
          {
            switch(v17)
            {
              case 5:
                sub_10000AD34(v57[3], @"WiFiNetworkAttributeIsPotentiallyMoving", kCFBooleanTrue);
                v18 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:4 message:{"%s: '%@' isPotentiallyMoving", "__WiFiDeviceManagerIngest3BarsFetchForCurrentNetwork", sub_10000A878(v57[3])}];
                }

                break;
              case 6:
                sub_10000AD34(v57[3], @"WiFiNetworkAttributeIsPublic", kCFBooleanTrue);
                v18 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:4 message:{"%s: '%@' isPublic", "__WiFiDeviceManagerIngest3BarsFetchForCurrentNetwork", sub_10000A878(v57[3])}];
                }

                break;
              case 7:
                sub_10000AD34(v57[3], @"WiFiNetworkAttributeIsLowQuality", kCFBooleanTrue);
                v18 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:4 message:{"%s: '%@' isLowQuality", "__WiFiDeviceManagerIngest3BarsFetchForCurrentNetwork", sub_10000A878(v57[3])}];
                }

                break;
              default:
                continue;
            }
          }

          else
          {
            switch(v17)
            {
              case 1:
                sub_10000AD34(v57[3], @"WiFiNetworkAttributeIsPotentiallyCaptive", kCFBooleanTrue);
                v18 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:4 message:{"%s: '%@' isPotentiallyCaptive", "__WiFiDeviceManagerIngest3BarsFetchForCurrentNetwork", sub_10000A878(v57[3])}];
                }

                break;
              case 2:
                sub_10000AD34(v57[3], @"WiFiNetworkAttributeIsSuspicious", kCFBooleanTrue);
                v18 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:4 message:{"%s: '%@' isSuspicious", "__WiFiDeviceManagerIngest3BarsFetchForCurrentNetwork", sub_10000A878(v57[3])}];
                }

                break;
              case 4:
                sub_10000AD34(v57[3], @"WiFiNetworkAttributeIsTCPGood", kCFBooleanTrue);
                v18 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:4 message:{"%s: '%@' isTCPGood", "__WiFiDeviceManagerIngest3BarsFetchForCurrentNetwork", sub_10000A878(v57[3])}];
                }

                break;
              default:
                continue;
            }
          }

          objc_autoreleasePoolPop(v18);
        }

        v14 = [v13 countByEnumeratingWithState:&v51 objects:v62 count:16];
        if (!v14)
        {
          v19 = 1;
          goto LABEL_45;
        }
      }
    }

    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

LABEL_45:
  v20 = [v10 popularityScore];
  v21 = v20;
  if (v20)
  {
    sub_10000C614(v57[3], @"WiFiNetworkAttributePopularityScore", [v20 score]);
    if ([v21 score] >= 0x3E8)
    {
      sub_10000AD34(v57[3], @"WiFiNetworkAttributeHighPopularity", kCFBooleanTrue);
    }

    v19 = 1;
  }

  v22 = *(v47 + 240);
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_1000F2158;
  v49[3] = &unk_100261BD0;
  v50 = v19;
  v49[4] = &v56;
  v49[5] = v47;
  dispatch_sync(v22, v49);
  v23 = v57[3];
  if (MGGetBoolAnswer())
  {
    if (v23)
    {
      v24 = sub_10000B3A8(v47, v23, 1);
      v25 = v24;
      if (v24)
      {
        if (sub_1000A2B30(v24))
        {
LABEL_73:
          CFRelease(v25);
          goto LABEL_74;
        }

        v26 = sub_10001B368(v25);
        if (v26)
        {
          v27 = [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
          v28 = [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];

          v30 = v27 != 2 || v28 != 2;
        }

        else
        {
          v30 = 1;
        }

        if (*(v47 + 6680) <= 2u)
        {
          v32 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: network is in top 2 of usage", "__WiFiDeviceManagerPromptToChangeSSIDHarvestStatus"}];
          }

          goto LABEL_107;
        }

        v31 = sub_1000648B8(*(v47 + 64)) == 1;
        v32 = objc_autoreleasePoolPush();
        if (v31)
        {
          if (!v30)
          {
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: prompting for %@ (state %d)", "__WiFiDeviceManagerPromptToChangeSSIDHarvestStatus", v23, sub_1000A2B30(v23)}];
            }

            objc_autoreleasePoolPop(v32);
            v33 = sub_10000A878(v23);
            v34 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@ “%@”?", @"Allow Collection of ", v33);
            v35 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@", @"[Internal Only]\nThe WiFi team is collecting network names to help validate feature work.");
            responseFlags = 0;
            CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, v34, v35, @"Allow", @"Don't Allow", 0, &responseFlags);
            if ((responseFlags & 3) != 0)
            {
              v36 = 1;
            }

            else
            {
              v36 = 2;
            }

            sub_10000C614(v25, @"kWiFiNetworkSSIDHarvestStatusKey", v36);
            v37 = *(v47 + 240);
            v60[0] = _NSConcreteStackBlock;
            v60[1] = 3221225472;
            v60[2] = sub_1000F2188;
            v60[3] = &unk_10025EE08;
            v60[4] = v47;
            v60[5] = v25;
            dispatch_sync(v37, v60);
            if (v34)
            {
              CFRelease(v34);
            }

            if (v35)
            {
              CFRelease(v35);
            }

            goto LABEL_73;
          }

          if (!off_100298C40)
          {
            goto LABEL_107;
          }

          v46 = "%s: network NOI type is home or work";
        }

        else
        {
          if (!off_100298C40)
          {
LABEL_107:
            objc_autoreleasePoolPop(v32);
            goto LABEL_73;
          }

          v46 = "%s: association was not manual";
        }

        [off_100298C40 WFLog:3 message:{v46, "__WiFiDeviceManagerPromptToChangeSSIDHarvestStatus"}];
        goto LABEL_107;
      }

      v45 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: knownNetwork is null", "__WiFiDeviceManagerPromptToChangeSSIDHarvestStatus"}];
      }
    }

    else
    {
      v45 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: network is null", "__WiFiDeviceManagerPromptToChangeSSIDHarvestStatus"}];
      }
    }

    objc_autoreleasePoolPop(v45);
  }

LABEL_74:
  v38 = v57[3];
  if (v38)
  {
    CFRelease(v38);
    v57[3] = 0;
  }

  _Block_object_dispose(&v56, 8);
LABEL_77:
  v39 = a1;
  v40 = *(*(*(a1 + 40) + 8) + 24);
  if (v40)
  {
    CFRelease(v40);
    v39 = a1;
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v41 = *(*(*(v39 + 32) + 8) + 24);
  if (v41)
  {
    CFRelease(v41);
    v39 = a1;
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

const void *sub_1000F2110(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 64);
  v3 = sub_100006F88(v2);
  result = sub_1000078F4(v2, v3);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_1000F2158(uint64_t result)
{
  if (*(result + 48))
  {
    v1 = *(result + 40);
    v2 = *(v1 + 4584);
    if (v2)
    {
      return v2(*(result + 40), *(*(*(result + 32) + 8) + 24), *(v1 + 4592));
    }
  }

  return result;
}

uint64_t sub_1000F2188(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(result + 4584);
  if (v3)
  {
    return v3(result, *(a1 + 40), *(result + 4592));
  }

  return result;
}

void sub_1000F21A8(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = sub_100002B80;
  v9 = sub_100006788;
  v10 = objc_alloc_init(CWFLocalDeviceDiscovery);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F22AC;
  v4[3] = &unk_100261C20;
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[5] = &v5;
  v4[6] = v2;
  v4[4] = v3;
  [v6[5] setHandler:v4];
  [v6[5] activate];
  _Block_object_dispose(&v5, 8);
}

void sub_1000F2294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000F22AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(*(*(a1 + 40) + 8) + 40) invalidate];
  v6 = *(a1 + 48);
  v7 = *(v6 + 240);
  if (v7)
  {
    if (*(v6 + 248))
    {
      dispatch_group_enter(*(v6 + 248));
      v6 = *(a1 + 48);
      v7 = *(v6 + 240);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F2374;
    block[3] = &unk_100261BF8;
    v10 = v6;
    block[4] = a2;
    block[5] = a3;
    v9 = *(a1 + 32);
    dispatch_async(v7, block);
  }
}

void sub_1000F2374(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: valid=%@", "__WiFiDeviceManagerUpdateLocalNetworkDiscoveredDevices_block_invoke_3", a1[4]}];
  }

  objc_autoreleasePoolPop(v2);
  v3 = a1[8];
  v4 = a1[4];
  v5 = a1[5];
  v32 = a1;
  v6 = a1[6];
  context = objc_autoreleasePoolPush();
  v31 = sub_1000DE1B8(v3);
  if ([-[CFDictionaryRef networkName](v31 "networkName")])
  {
    if ([v6 discoveredDevices] && ((v7 = objc_msgSend(v6, "discoveredDevices"), objc_msgSend(v7, "objectForKeyedSubscript:", CWFNetworkProfilePropertyDiscoveredDevicesCountKey)) || (v8 = objc_msgSend(v6, "discoveredDevices"), objc_msgSend(v8, "objectForKeyedSubscript:", CWFNetworkProfilePropertyDiscoveredDevicesNamesKey))) && !objc_msgSend(v4, "count"))
    {
      sub_1001A6FD0(v6);
    }

    else
    {
      v9 = [v6 publicAttribute] == 1 || (objc_msgSend(v6, "isOpen") & 1) != 0 || (objc_msgSend(v6, "isPublicAirPlayNetwork") & 1) != 0 || (objc_msgSend(v6, "isPasspoint") & 1) != 0 || objc_msgSend(v6, "addReason") == 10 || objc_msgSend(v6, "addReason") == 17 || objc_msgSend(v6, "addReason") == 16;
      v10 = objc_alloc_init(NSMutableArray);
      v39[0] = 0;
      v39[1] = v39;
      v39[2] = 0x2020000000;
      v39[3] = 0;
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_1000F2BA0;
      v38[3] = &unk_100261C48;
      v38[4] = v10;
      v38[5] = v39;
      [v4 enumerateObjectsUsingBlock:v38];
      if ([v6 discoveredDevices])
      {
        v11 = [objc_msgSend(v6 "discoveredDevices")];
      }

      else
      {
        v11 = objc_alloc_init(NSMutableDictionary);
      }

      v12 = v11;
      if ([v10 count] == 0 || v9)
      {
        v13 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          if (v9)
          {
            v14 = "%s: skipping device names for sensitive network profile='%@'";
          }

          else
          {
            v14 = "%s: no device names discovered for profile='%@'";
          }

          [off_100298C40 WFLog:3 message:{v14, "__WiFiDeviceManagerUpdateNetworkProfileWithDiscoveredDevices", v6}];
        }

        objc_autoreleasePoolPop(v13);
      }

      else
      {
        [v12 setObject:v10 forKey:CWFNetworkProfilePropertyDiscoveredDevicesNamesKey];
      }

      if ([v4 count])
      {
        v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 count]);
        [v12 setObject:v15 forKey:CWFNetworkProfilePropertyDiscoveredDevicesCountKey];
      }

      v16 = +[NSDate date];
      [v12 setObject:v16 forKey:CWFNetworkProfilePropertyDiscoveredDevicesTimestampKey];
      [v6 setDiscoveredDevices:v12];
      v17 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: count='%lu' devices='%@' profile='%@'", "__WiFiDeviceManagerUpdateNetworkProfileWithDiscoveredDevices", objc_msgSend(v4, "count"), v10, v6, context}];
      }

      objc_autoreleasePoolPop(v17);
      v18 = sub_100022854(v6, 0);
      (*(v3 + 4584))(v3, v18, *(v3 + 4592));
      if (v10)
      {
        CFRelease(v10);
      }

      if (v12)
      {
        CFRelease(v12);
      }

      if (v18)
      {
        CFRelease(v18);
      }

      _Block_object_dispose(v39, 8);
    }

    if (&_AnalyticsSendEventLazy)
    {
      cf = objc_alloc_init(NSMutableDictionary);
      if (v5)
      {
        v40[0] = &off_100281848;
        v40[1] = &off_100281830;
        v41[0] = &off_100281878;
        v41[1] = &off_100281878;
        v40[2] = &off_100281890;
        v40[3] = &off_1002818A8;
        v41[2] = &off_100281878;
        v41[3] = &off_100281878;
        v19 = [+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary mutableCopy:v41];
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v20 = [v5 countByEnumeratingWithState:&v34 objects:v39 count:16];
        if (v20)
        {
          v21 = *v35;
          do
          {
            for (i = 0; i != v20; i = i + 1)
            {
              if (*v35 != v21)
              {
                objc_enumerationMutation(v5);
              }

              v23 = *(*(&v34 + 1) + 8 * i);
              if ([v19 objectForKeyedSubscript:{+[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", objc_msgSend(v23, "reason"))}])
              {
                [v19 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKeyedSubscript:{"numberWithUnsignedInteger:", objc_msgSend(objc_msgSend(v19, "objectForKeyedSubscript:", +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", objc_msgSend(v23, "reason"))), "integerValue") + 1), +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", objc_msgSend(v23, "reason"))}];
              }
            }

            v20 = [v5 countByEnumeratingWithState:&v34 objects:v39 count:16];
          }

          while (v20);
        }

        [cf setObject:objc_msgSend(v19 forKey:{"objectForKeyedSubscript:", &off_100281848), @"filteredServiceName"}];
        [cf setObject:objc_msgSend(v19 forKey:{"objectForKeyedSubscript:", &off_1002818A8), @"filteredLexical"}];
        [cf setObject:objc_msgSend(v19 forKey:{"objectForKeyedSubscript:", &off_100281890), @"filteredGenerated"}];
        [cf setObject:objc_msgSend(v19 forKey:{"objectForKeyedSubscript:", &off_100281830), @"filteredCharacters"}];
        if (v19)
        {
          CFRelease(v19);
        }
      }

      if (v4)
      {
        v24 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 count]);
      }

      else
      {
        v24 = &off_100281878;
      }

      [cf setObject:v24 forKey:@"totalCount"];
      if (v5)
      {
        v25 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 count]);
      }

      else
      {
        v25 = &off_100281878;
      }

      [cf setObject:v25 forKey:@"filteredCount"];
      [cf setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", objc_msgSend(v6, "isOpen")), @"open"}];
      [cf setObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:", objc_msgSend(v6, "publicAttribute")), @"public"}];
      v26 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: sending metric='%@'", "__WiFiDeviceManagerUpdateNetworkProfileWithDiscoveredDevices", cf}];
      }

      objc_autoreleasePoolPop(v26);
      AnalyticsSendEventLazy();
      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  else
  {
    sub_1001A6F54();
  }

  if (v31)
  {
  }

  objc_autoreleasePoolPop(context);
  v27 = v32;
  v28 = *(*(v32[7] + 8) + 40);
  if (v28)
  {
    CFRelease(v28);
    v27 = v32;
    *(*(v32[7] + 8) + 40) = 0;
  }

  v29 = v27[8];
  if (v29[31])
  {
    dispatch_group_leave(v29[31]);
    v29 = v27[8];
  }

  CFRelease(v29);
  CFRelease(v32[6]);
}

id sub_1000F2BA0(uint64_t a1, void *a2, _BYTE *a3)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 10)
  {
    *a3 = 1;
  }

  result = [*(a1 + 32) addObject:{objc_msgSend(a2, "name")}];
  ++*(*(*(a1 + 40) + 8) + 24);
  return result;
}

void sub_1000F2C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Couldn't send event (%@), error(%@) ", "__WiFiDeviceManagerSendCarConnectionTime_block_invoke", *(a1 + 32), a3}];
    }

    objc_autoreleasePoolPop(v5);
  }
}

void sub_1000F2C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Couldn't send event (%@), error(%@) ", "__WiFiDeviceManagerSendCarConnectionTime_block_invoke_2", *(a1 + 32), a3}];
    }

    objc_autoreleasePoolPop(v5);
  }
}

void sub_1000F2D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Couldn't send event (%@), error(%@) ", "__WiFiDeviceManagerSendCarConnectionTime_block_invoke_3", *(a1 + 32), a3}];
    }

    objc_autoreleasePoolPop(v5);
  }
}

double sub_1000F2DB4(uint64_t a1, const void *a2, const void *a3, const void *a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_100060BB0(*(a6 + 64));
  [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
  v12 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v13 = sub_1000AA864(*(a6 + 3336));
    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v37 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v12);
  if (*(a6 + 1120))
  {
    sub_1000D33C0(a6, a5, 0, 0);
  }

  if (a5)
  {
    sub_1000D23FC(a6, a3, 0);
  }

  else
  {
    if (sub_100009730(a3))
    {
      *(a6 + 3467) = 1;
    }

    sub_1000E1594(a6, a3, 0);
    if (a3)
    {
      if (sub_10001CF3C(a3) || sub_10009E148(a3))
      {
        *(a6 + 720) = CFAbsoluteTimeGetCurrent();
        Current = CFAbsoluteTimeGetCurrent();
        *(a6 + 968) = Current;
        v16 = (Current - *(a6 + 960)) * 1000.0;
        v17 = v16;
        *buf = v16;
        v18 = sub_100006F88(*(a6 + 64));
        v19 = sub_100007D90(a6, v18, 1);
        LODWORD(v37) = 0;
        if (v19)
        {
          v20 = v19;
          v21 = sub_100014000(v19);
          v22 = sub_100018030(v20);
          if (v21)
          {
            valuePtr = -21846;
            CFNumberGetValue(v21, kCFNumberSInt16Type, &valuePtr);
            v21 = valuePtr;
            LOWORD(v37) = valuePtr;
          }

          if (v22)
          {
            WORD1(v37) = v22;
            v22 = v22;
          }

          CFRelease(v20);
        }

        else
        {
          v22 = 0;
          v21 = 0;
        }

        v23 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: time4WayHSTaken %u ms, channel %u, band %u", "__WiFiDeviceManagerSubmitInfraConnectionMetrics", v17, v21, v22}];
        }

        objc_autoreleasePoolPop(v23);
        sub_100147EB0();
      }

      if (sub_10000A7CC(a3))
      {
        sub_1001A7050();
      }
    }
  }

  if (*(a6 + 3968))
  {
    if (*(a6 + 240))
    {
      if (a2)
      {
        CFRetain(a2);
      }

      if (a3)
      {
        CFRetain(a3);
      }

      if (a4)
      {
        CFRetain(a4);
      }

      CFRetain(a6);
      v24 = *(a6 + 240);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000F33A4;
      block[3] = &unk_10025F5B0;
      block[4] = a6;
      block[5] = a2;
      block[6] = a3;
      block[7] = a4;
      v34 = a5;
      dispatch_async(v24, block);
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: null queue.", "__WiFiDeviceManagerAssociationCallback"}];
      }

      objc_autoreleasePoolPop(v25);
    }
  }

  if (v11 == *(a6 + 3368))
  {
    if (a5)
    {
      if (*(a6 + 1256) == 1)
      {
        sub_100019814(a6, 59);
      }
    }

    else
    {
      *(a6 + 1240) = sub_100007D90(a6, a2, 1);
    }

    v29 = *(a6 + 1240);
    if (a3 && !v29)
    {
      v29 = CFRetain(a3);
      *(a6 + 1240) = v29;
    }

    *(a6 + 1248) = a4;
    *(a6 + 1232) = a5;
    v30 = *(a6 + 3336);
    if (v30 == 15 || v30 == 12)
    {
      sub_1000B6EBC(a6);
      v29 = *(a6 + 1240);
    }

    v31 = (a6 + 1232);
    if (v29)
    {
      CFRelease(v29);
    }

    result = 0.0;
    *v31 = 0u;
    v31[1] = 0u;
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"Ignoring old request.  CurrentCommand=%lld PendingCommand=%lld", v11, *(a6 + 3368)}];
    }

    objc_autoreleasePoolPop(v26);
    if (a3)
    {
      v27 = *(a6 + 3576);
      if (v27)
      {
        v38.length = CFArrayGetCount(*(a6 + 3576));
        v38.location = 0;
        if (CFArrayGetFirstIndexOfValue(v27, v38, a3) == -1 || sub_100009730(a3) && !sub_1000603B8(a1))
        {
          sub_1000B9DC8(a6, a2, 1012, "__WiFiDeviceManagerAssociationCallback", 17910);
        }
      }
    }

    if (_os_feature_enabled_impl())
    {
      sub_1000EAF00(a6, a3, a5, CWFManagerErrorDomain, @"Stale assoc command");
    }
  }

  return result;
}

void sub_1000F3330(uint64_t a1, void *a2)
{
  if (a2)
  {
    [*(*(a1 + 32) + 7480) setJoinEvent:1 withReason:*(a1 + 40) lastDisconnectReason:0 lastJoinFailure:0 andNetworkDetails:a2 forInterface:sub_100006F88(*(*(a1 + 32) + 64))];
  }
}

void sub_1000F33A4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 240))
  {
    (*(v2 + 3968))(v2, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(v2 + 3976));
    v2 = *(a1 + 32);
  }

  CFRelease(v2);
  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 56);
  if (v5)
  {

    CFRelease(v5);
  }
}

void sub_1000F342C(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: error %d reqInfo %@", "__WiFiDeviceManagerUserForcedAssociationCallback", a5, a4}];
  }

  objc_autoreleasePoolPop(v9);
  v10 = objc_autoreleasePoolPush();
  if (a1)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: enabling device manager", "__WiFiDeviceManagerUserForcedAssociationCallback"}];
    }

    objc_autoreleasePoolPop(v10);
    sub_1000329B4(a1);
    if (a3 && *(a1 + 6304))
    {
      if (!a5)
      {
        v11 = sub_10000A878(a3);
        v12 = sub_10000A878(*(a1 + 6304));
        if (CFStringCompare(v11, v12, 0) == kCFCompareEqualTo)
        {
          v18 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: finished forced association successfully", "__WiFiDeviceManagerUserForcedAssociationCallback"}];
          }

          objc_autoreleasePoolPop(v18);
          v14 = a1;
          v15 = a3;
          v17 = 0;
          goto LABEL_17;
        }
      }

      v13 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: failed forced association", "__WiFiDeviceManagerUserForcedAssociationCallback"}];
      }

      objc_autoreleasePoolPop(v13);
      v14 = a1;
      v15 = a3;
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: network is NULL", "__WiFiDeviceManagerUserForcedAssociationCallback"}];
      }

      objc_autoreleasePoolPop(v16);
      v14 = a1;
      v15 = 0;
    }

    v17 = 2;
LABEL_17:

    sub_1000D4A10(v14, v15, v17);
    return;
  }

  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager is NULL", "__WiFiDeviceManagerUserForcedAssociationCallback"}];
  }

  objc_autoreleasePoolPop(v10);
}

void sub_1000F362C(uint64_t a1, int a2)
{
  v4 = MRMediaRemoteCopyPlaybackStateDescription();
  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: state is %@", "__WiFiDeviceManagerNowPlayingStateDidChange_block_invoke", v4}];
  }

  objc_autoreleasePoolPop(v5);
  if (v4)
  {
    CFRelease(v4);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 240);
  if (v7)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F377C;
    block[3] = &unk_100260C48;
    block[4] = v6;
    v11 = a2;
    dispatch_async(v7, block);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null queue.", "__WiFiDeviceManagerNowPlayingStateDidChange_block_invoke"}];
    }

    objc_autoreleasePoolPop(v8);
    v9 = *(a1 + 32);

    CFRelease(v9);
  }
}

void sub_1000F377C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 240))
  {
    sub_1001A7084(a1, v2, (a1 + 32));
  }

  else
  {
    v3 = *(a1 + 32);

    CFRelease(v3);
  }
}

uint64_t sub_1000F37B8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (!a1)
  {
    sub_1001A781C();
    goto LABEL_29;
  }

  if (*(a1 + 6976) && *(a1 + 7056))
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Transition OK. Auto Hotspot Network recommendation", "__WiFiDeviceManagerIsStateSuitableForNetworkTransition"}];
    }

LABEL_28:
    objc_autoreleasePoolPop(v3);
    a1 = 1;
    goto LABEL_29;
  }

  if (!*(a1 + 3576))
  {
    sub_1001A77B0();
    goto LABEL_41;
  }

  if (*(a1 + 20) != 1)
  {
    sub_1001A71A8();
    goto LABEL_41;
  }

  if (!*(a1 + 3467))
  {
    sub_1001A7744();
    goto LABEL_41;
  }

  if (*(a1 + 3468))
  {
    sub_1001A7214();
    goto LABEL_41;
  }

  if (sub_100025AB8(a1) && sub_1000C9084(a1))
  {
    sub_1001A7280();
    goto LABEL_41;
  }

  if (*(a1 + 6704))
  {
    goto LABEL_13;
  }

  if (*(a1 + 6696) == 1)
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Transition ok when its within colocated scope", "__WiFiDeviceManagerIsStateSuitableForNetworkTransition"}];
    }

    goto LABEL_28;
  }

  v11 = sub_100009664(*(a1 + 64));
  v12 = sub_100007D90(a1, v11, 1);
  v13 = v12;
  if (v12)
  {
    if (!sub_10000A604(v12) && *(a1 + 3469))
    {
      goto LABEL_37;
    }

    CFRelease(v13);
  }

  else if (*(a1 + 3469))
  {
LABEL_37:
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: network switched by user", "__WiFiDeviceManagerIsStateSuitableForNetworkTransition"}];
    }

    objc_autoreleasePoolPop(v14);
    if (v13)
    {
      CFRelease(v13);
    }

    goto LABEL_41;
  }

  if (*(a1 + 176) != 3)
  {
    sub_1001A72EC();
    goto LABEL_41;
  }

LABEL_13:
  if (*(a1 + 3448) >= 5)
  {
    sub_1001A76D8();
    goto LABEL_41;
  }

  if (*(a1 + 5568))
  {
    sub_1001A7358();
    goto LABEL_41;
  }

  if (*(a1 + 3464))
  {
    sub_1001A73C4();
    goto LABEL_41;
  }

  if (*(a1 + 3465))
  {
    sub_1001A7430();
    goto LABEL_41;
  }

  if (*(a1 + 3466))
  {
    sub_1001A749C();
    goto LABEL_41;
  }

  if (*(a1 + 3470))
  {
    sub_1001A7508();
    goto LABEL_41;
  }

  if (*(a1 + 5570))
  {
    sub_1001A7574();
    goto LABEL_41;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v5 = *(a1 + 3456);
  if (v5 != 0.0)
  {
    v6 = Current - v5;
    if (v6 <= 30.0)
    {
      sub_1001A765C(v6);
      goto LABEL_41;
    }
  }

  v7 = CFAbsoluteTimeGetCurrent();
  v8 = *(a1 + 3472);
  a1 = 1;
  if (v8 != 0.0)
  {
    v9 = v7 - v8;
    if (v9 <= 10.0)
    {
      sub_1001A75E0(v9);
LABEL_41:
      a1 = 0;
    }
  }

LABEL_29:
  objc_autoreleasePoolPop(v2);
  return a1;
}

void sub_1000F3A78(uint64_t a1, const void *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1)
  {
    v5 = *(a1 + 64);
    v6 = sub_100006F88(v5);
    v7 = sub_1000078F4(v5, v6);
    v8 = objc_autoreleasePoolPush();
    v9 = off_100298C40;
    if (off_100298C40)
    {
      v10 = sub_10000A878(a2);
      [v9 WFLog:3 message:{"%s: topNetwork: %@, current: %@", "__WiFiDeviceManagerTransitionToNetwork", v10, sub_10000A878(v7)}];
    }

    objc_autoreleasePoolPop(v8);
    if (v7)
    {
      if (!sub_10000A878(v7))
      {
LABEL_10:
        CFRelease(v7);
        goto LABEL_14;
      }

      if (CFEqual(v7, a2))
      {
        v11 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: no need for transition...", "__WiFiDeviceManagerTransitionToNetwork"}];
        }

        objc_autoreleasePoolPop(v11);
        *(a1 + 3448) = 6;
        goto LABEL_10;
      }

      sub_100176200();
      v14 = v13;
      if (v13)
      {
        Count = CFDictionaryGetCount(v13);
      }

      else
      {
        Count = 0;
      }

      v16 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: channel count %ld", "__WiFiDeviceManagerTransitionToNetwork", Count}];
      }

      objc_autoreleasePoolPop(v16);
      if (Count)
      {
        __chkstk_darwin(v17);
        v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
        memset(v21, 170, v20);
        CFDictionaryGetKeysAndValues(v14, 0, v21);
        Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        v50 = 0;
        if (Mutable)
        {
          v50 = [[NSMutableArray alloc] initWithCapacity:2];
          if (Count >= 1)
          {
            v48 = v14;
            v49 = &v48;
            v23 = Count + 1;
            v24 = &v21[8 * Count - 8];
            do
            {
              if (CFArrayGetCount(Mutable) > 1)
              {
                break;
              }

              if (*v24)
              {
                Value = CFDictionaryGetValue(*v24, @"CHANNEL");
                if (Value)
                {
                  v26 = Value;
                  if (([v50 containsObject:Value] & 1) == 0)
                  {
                    [v50 addObject:v26];
                    CFArrayAppendValue(Mutable, *v24);
                  }
                }
              }

              --v23;
              --v24;
            }

            while (v23 > 1);
            v14 = v48;
          }
        }
      }

      else
      {
        v18 = sub_100014000(a2);
        v19 = sub_10000A540(a2, @"CHANNEL_FLAGS");
        if (!v18)
        {
          v49 = 0;
          v50 = 0;
LABEL_35:
          v27 = 1;
LABEL_42:
          if (!sub_10009ED84(a2))
          {
            sub_1001A7A18();
            v32 = v50;
LABEL_62:
            if (v32)
            {
              CFRelease(v32);
            }

            if ((v27 & 1) == 0)
            {
              CFRelease(v49);
            }

            if (v14)
            {
              CFRelease(v14);
            }

            goto LABEL_10;
          }

LABEL_43:
          v31 = objc_autoreleasePoolPush();
          v32 = v50;
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: mru channels: %@", "__WiFiDeviceManagerTransitionToNetwork", v50}];
          }

          objc_autoreleasePoolPop(v31);
          if (sub_10009ED84(a2))
          {
            v37 = *(a1 + 128);
            v38 = a2;
            v39 = 0;
          }

          else
          {
            v36 = sub_10001CB84(a2);
            v37 = *(a1 + 128);
            if (v36)
            {
              v38 = a2;
            }

            else
            {
              v38 = 0;
            }

            v39 = v49;
          }

          sub_10018C85C(v38, v39, v37, 110, 1, v33, v34, v35, v48, v49, v50, SHIDWORD(v50), v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, vars0, vars8);
          v41 = v40;
          if (v40)
          {
            if (sub_1000F37B8(a1))
            {
              ++*(a1 + 6136);
              v42 = malloc_type_malloc(0x28uLL, 0x10E0040573E0799uLL);
              if (v42)
              {
                v43 = v42;
                *v42 = a1;
                v42[1] = 0;
                v42[3] = 0;
                if (CFDictionaryContainsKey(v41, @"SSID_STR"))
                {
                  v44 = 1;
                }

                else
                {
                  v44 = CFDictionaryContainsKey(v41, @"SCAN_SSID_LIST") != 0;
                }

                v43[32] = v44;
                v45 = sub_100006F88(*(a1 + 64));
                v46 = sub_100025FF8(a1, v45, v41, 0, sub_1000F407C, v43, 0, 15);
                if (v46)
                {
                  sub_1001A7888(v43, v46);
                }

                else
                {
                  v47 = *(a1 + 3432);
                  if (v47)
                  {
                    CFRelease(v47);
                  }

                  *(a1 + 3432) = a2;
                  CFRetain(a2);
                }
              }

              else
              {
                sub_1001A78F8();
              }
            }

            else
            {
              sub_1001A7958();
            }

            CFRelease(v41);
          }

          else
          {
            sub_1001A79B8();
          }

          goto LABEL_62;
        }

        v28 = v19;
        v48 = v14;
        Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        v29 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v50 = 0;
        if (v29)
        {
          v49 = Mutable;
          if (Mutable)
          {
            v30 = v29;
            CFDictionaryAddValue(v29, @"CHANNEL", v18);
            v14 = v48;
            if (v28)
            {
              CFDictionaryAddValue(v30, @"CHANNEL_FLAGS", v28);
            }

            v50 = [[NSMutableArray alloc] initWithCapacity:1];
            [v50 addObject:v18];
            Mutable = v49;
            CFArrayAppendValue(v49, v30);
            CFRelease(v30);
            goto LABEL_41;
          }

          v14 = v48;
          Mutable = 0;
        }

        else
        {
          v14 = v48;
        }
      }

      if (!Mutable)
      {
        v49 = 0;
        goto LABEL_35;
      }

LABEL_41:
      v49 = Mutable;
      v27 = 0;
      if (CFArrayGetCount(Mutable))
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: invalid input", "__WiFiDeviceManagerTransitionToNetwork"}];
    }

    objc_autoreleasePoolPop(v12);
  }

LABEL_14:
  objc_autoreleasePoolPop(v4);
}

void sub_1000F407C(int a1, int a2, const __CFArray *a3, int a4, uint64_t a5, uint64_t *a6)
{
  v8 = *a6;
  free(a6);
  if (v8)
  {
    if (a5)
    {
      sub_1001A7A78(a5);
    }

    else if (a3 && CFArrayGetCount(a3))
    {
      sub_1001A7AE0();
    }

    else
    {
      sub_1001A7DC4();
    }
  }

  else
  {
    sub_1001A7E30();
  }
}

void sub_1000F40F4(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_autoreleasePoolPush();
  if (a1)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: network %@, error %d", "__WiFiDeviceManagerNetworkTransitionAssociationCallback", sub_10000A878(a3), a5}];
    }

    objc_autoreleasePoolPop(v8);
    *(a1 + 6696) = 0;
    v9 = *(a1 + 6688);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 6688) = 0;
    }

    sub_1000329B4(a1);
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: manager is NULL", "__WiFiDeviceManagerNetworkTransitionAssociationCallback"}];
    }

    objc_autoreleasePoolPop(v8);
  }
}

uint64_t sub_1000F4200()
{
  if (!qword_100298690)
  {
    qword_100298690 = _sl_dlopen();
  }

  return qword_100298690;
}

uint64_t sub_1000F42C4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100298690 = result;
  return result;
}

void *sub_1000F4330(uint64_t a1)
{
  v4 = 0;
  v2 = sub_1000F4200();
  if (!v2)
  {
    sub_1001A7E9C(&v4);
  }

  result = dlsym(v2, "EAPClientConfigurationCopyAndImport");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100298698 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1000F43B4(uint64_t *a1, uint64_t a2, CFDictionaryRef *a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: error %d reqInfo %@", "__WiFiDeviceManagerUserNotificationAssociationCallback", a5, a4}];
  }

  objc_autoreleasePoolPop(v9);
  v10 = objc_autoreleasePoolPush();
  if (!a1)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: manager is NULL", "__WiFiDeviceManagerUserNotificationAssociationCallback"}];
    }

    v17 = v10;
LABEL_30:

    objc_autoreleasePoolPop(v17);
    return;
  }

  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: enabling device manager", "__WiFiDeviceManagerUserNotificationAssociationCallback"}];
  }

  objc_autoreleasePoolPop(v10);
  sub_1000329B4(a1);
  if (!a3)
  {
    sub_1001A7F48();
    return;
  }

  if (a5)
  {
    v11 = sub_10009F2A4(a3);
    v12 = objc_autoreleasePoolPush();
    if (v11)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: failed user notification association for password-protected network, launching password ", "__WiFiDeviceManagerUserNotificationAssociationCallback"}];
      }

      objc_autoreleasePoolPop(v12);

      sub_1000EC328(0, a3);
    }

    else
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: failed user notification association", "__WiFiDeviceManagerUserNotificationAssociationCallback"}];
      }

      objc_autoreleasePoolPop(v12);
      v15 = sub_100006F88(a1[8]);
      sub_1000D62B4(a1, v15, 7, 0, a3, 0);

      sub_1000EC5CC(a1, @"userJoinAssociationFailed", a3);
    }

    return;
  }

  v13 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: finished user notification association successfully", "__WiFiDeviceManagerUserNotificationAssociationCallback"}];
  }

  objc_autoreleasePoolPop(v13);
  sub_1000EC5CC(a1, @"userJoinSuccess", a3);
  if (a1[579])
  {
    if (a1[30])
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v22 = 0;
      v14 = sub_10000C580(kCFAllocatorDefault, a3);
      v20[3] = v14;
      if (v14)
      {
        CFRetain(a1);
        sub_1001A7F04(a1 + 30, &v18);
      }

      _Block_object_dispose(&v19, 8);
      return;
    }

    v16 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null queue.", "__WiFiDeviceManagerUserNotificationAssociationCallback"}];
    }

    v17 = v16;
    goto LABEL_30;
  }
}

void sub_1000F46A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F46C0(uint64_t a1, uint64_t a2)
{
  if (a2 == 5)
  {
    return 3;
  }

  v2 = a2;
  if (a2 != 1)
  {
    if (a2)
    {
      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: Unexpected response type: %u", "__WiFiDeviceManagerHandleUserNotificationResponse_block_invoke", v2}];
      }

      objc_autoreleasePoolPop(v3);
      return 0;
    }

    else
    {
      return 2;
    }
  }

  return v2;
}

void sub_1000F4750(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2[30])
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Adding network '%@' to known network list", "__WiFiDeviceManagerUserNotificationAssociationCallback_block_invoke", sub_10000A878(*(*(*(a1 + 32) + 8) + 24))}];
    }

    objc_autoreleasePoolPop(v3);
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = (a1 + 32);
    (*(v4 + 4632))(v4, *(*(v5 + 8) + 24), *(v4 + 4640));
    CFRelease(v6[1]);
    v7 = *v6;
  }

  else
  {
    CFRelease(v2);
    v8 = *(a1 + 32);
    v6 = (a1 + 32);
    v7 = v8;
  }

  v9 = *(v7[1] + 24);
  if (v9)
  {
    CFRelease(v9);
    *(*(*v6 + 1) + 24) = 0;
  }
}

void sub_1000F4828(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"DPS Probe: Cancelling probe on all ACs"];
    }

    objc_autoreleasePoolPop(v2);
    v3 = 0;
    v4 = a1 + 7280;
    do
    {
      v5 = *(v4 + v3);
      if (v5)
      {
        sub_10013E2D4(*(a1 + 120), v5);
        v6 = *(v4 + v3);
        if (v6)
        {
          CFRelease(v6);
          *(v4 + v3) = 0;
        }
      }

      v3 += 8;
    }

    while (v3 != 32);
    *(a1 + 7332) = 0;
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: manager is NULL !", "__WiFiDeviceManagerCancelDpsProbing"}];
    }

    objc_autoreleasePoolPop(v2);
  }
}

void sub_1000F4914(uint64_t a1, uint64_t a2)
{
  v23 = 0;
  if (!a2)
  {
    sub_1001A80E0();
    return;
  }

  v24 = 0xAAAAAAAAAAAAAAAALL;
  valuePtr = 1;
  v4 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  if (!v4)
  {
    sub_1001A8080();
    return;
  }

  v5 = v4;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    sub_1001A8014(v5);
    return;
  }

  v7 = Mutable;
  v25 = 1300;
  v8 = CFNumberCreate(0, kCFNumberCFIndexType, &v25);
  if (!v8)
  {
    v22 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: probeSizeRef is NULL !", "__WiFiDeviceManagerTriggerDpsACProbe"}];
    }

    goto LABEL_34;
  }

  v9 = v8;
  CFArrayAppendValue(v7, v8);
  CFRelease(v9);
  v24 = 1;
  v10 = CFNumberCreate(0, kCFNumberCFIndexType, &v24);
  if (!v10)
  {
    v22 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: probeTimeoutSecsRef is NULL !", "__WiFiDeviceManagerTriggerDpsACProbe"}];
    }

LABEL_34:
    objc_autoreleasePoolPop(v22);
    CFRelease(v5);
    v21 = v7;
    goto LABEL_25;
  }

  v11 = v10;
  v12 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v13 = v12;
  if (v12)
  {
    CFDictionarySetValue(v12, @"kWiFiLqaMgrNumProbes", v5);
    CFDictionarySetValue(v13, @"kWiFiLqaMgrProbeSize", v7);
    CFDictionarySetValue(v13, @"kWiFiLqaMgrProbeTimeoutSecs", v11);
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        v23 = 700;
        v14 = sub_1000F4C90;
      }

      else
      {
        v23 = 800;
        v14 = sub_1000F4CA4;
      }
    }

    else if (a1)
    {
      v23 = 200;
      v14 = sub_1000F4C7C;
    }

    else
    {
      v23 = 0;
      v14 = sub_1000F4C68;
    }

    v15 = v14;
    v16 = CFNumberCreate(0, kCFNumberCFIndexType, &v23);
    if (v16)
    {
      CFDictionarySetValue(v13, @"kWiFiLqaMgrProbeTrafficClass", v16);
    }

    v17 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v18 = a2 + 7280;
    *(a2 + 7280 + 8 * a1) = v17;
    if (sub_100043F00(*(a2 + 120), v13, v17, v15, a2))
    {
      v19 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: failed to enqueue DPS probe for ac:%d", "__WiFiDeviceManagerTriggerDpsACProbe", a1, v23}];
      }

      objc_autoreleasePoolPop(v19);
      v20 = *(v18 + 8 * a1);
      if (v20)
      {
        CFRelease(v20);
        *(v18 + 8 * a1) = 0;
      }
    }
  }

  else
  {
    sub_1001A7FB4();
    v16 = 0;
  }

  CFRelease(v5);
  CFRelease(v11);
  if (v13)
  {
    CFRelease(v13);
  }

  CFRelease(v7);
  if (v16)
  {
    v21 = v16;
LABEL_25:
    CFRelease(v21);
  }
}

void sub_1000F4CB8(CFArrayRef theArray, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = 0xAAAAAAAAAAAAAAAALL;
  valuePtr = 0xAAAAAAAAAAAAAAAALL;
  if (a2)
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: diagnostic probe failed with error %ld", "__WiFiDeviceManagerUpdateProbeResults", a2}];
    }

LABEL_14:
    objc_autoreleasePoolPop(v7);
    goto LABEL_15;
  }

  if (!theArray || !CFArrayGetCount(theArray))
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: empty DPS probe results.", "__WiFiDeviceManagerUpdateProbeResults", v22}];
    }

    goto LABEL_14;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  v23 = 0;
  valuePtr = 0;
  Value = CFDictionaryGetValue(ValueAtIndex, @"kWiFiLqaMgrNumProbesSent");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberCFIndexType, &valuePtr);
  }

  v11 = CFDictionaryGetValue(ValueAtIndex, @"kWiFiLqaMgrNumProbesFail");
  if (v11)
  {
    CFNumberGetValue(v11, kCFNumberCFIndexType, &v23);
  }

  if (valuePtr)
  {
    v12 = (100 * v23) / valuePtr == 0;
    goto LABEL_16;
  }

LABEL_15:
  v12 = 0;
LABEL_16:
  Current = CFAbsoluteTimeGetCurrent();
  if (a3)
  {
    v14 = Current;
    v15 = *(a3 + 7280 + 8 * a4);
    if (v15)
    {
      CFRelease(v15);
      *(a3 + 7280 + 8 * a4) = 0;
    }

    if (!v12 && ((v16 = *(a3 + 7184), v16 == 0.0) || v16 + 10.0 >= v14))
    {
      sub_1000F4914(a4, a3);
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v18 = "fail";
        if (v12)
        {
          v18 = "success";
        }

        v19 = "<10s";
        if (*(a3 + 7184) + 10.0 < v14)
        {
          v19 = "timeout";
        }

        [off_100298C40 WFLog:3 message:{"DPS Probe: probeResult:%s ac:%u with %s", v18, a4, v19}];
      }

      objc_autoreleasePoolPop(v17);
      v20 = !v12;
      if (*(a3 + 7328))
      {
        v20 = 1;
      }

      if ((v20 & 1) == 0)
      {
        v21 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:"DPS HUD: clearing on probe success"];
        }

        objc_autoreleasePoolPop(v21);
        sub_1000F1200(a3);
      }

      sub_1000F4828(a3);
    }
  }

  else
  {
    sub_1001A814C();
  }
}

uint64_t sub_1000F4F10(_BYTE *a1)
{
  if (a1)
  {
    if (a1[3464])
    {
      v1 = (8 * (a1[5568] != 0)) | 4;
    }

    else
    {
      v1 = 8 * (a1[5568] != 0);
    }

    if (a1[5569])
    {
      ++v1;
    }

    if (a1[3466])
    {
      v1 |= 0x10uLL;
    }

    if (a1[3465])
    {
      v1 |= 2uLL;
    }

    if (a1[5570])
    {
      v1 |= 0x20uLL;
    }

    if (a1[5571])
    {
      v1 |= 0x40uLL;
    }

    if (a1[5572])
    {
      return v1 | 0x80;
    }

    else
    {
      return v1;
    }
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: CATS Invalid arguments\n", "__WiFiDeviceManagerCatsTimeSensitiveAppBitmap"}];
    }

    objc_autoreleasePoolPop(v3);
    return 0;
  }
}

id sub_1000F5004(uint64_t a1)
{
  v2 = +[NSDate date];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 7480);
  v5 = sub_100009664(v3);

  return [v4 addFaultEvent:36 forInterface:v5 at:v2];
}

void sub_1000F5060(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 240);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F50D4;
  v4[3] = &unk_10025F5F8;
  v4[4] = a2;
  v4[5] = v2;
  dispatch_async(v3, v4);
}

void sub_1000F50D4(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = sub_1000DE52C(*(a1 + 40), [v7 SSID]);
        if (v8 && [objc_msgSend(v7 "SSID")])
        {
          sub_1000F52D8(*(a1 + 40), [v7 SSID]);
          v9 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: Purging Known Network : [ %@ ] on removal of wallet pass", "WiFiDeviceManagerPurgeRemovedKnownNetworks_block_invoke_2", objc_msgSend(v7, "SSID")}];
          }

          objc_autoreleasePoolPop(v9);
          if ([v7 captiveToken])
          {
            if ([v7 captiveTokenAuthURL])
            {
              [v7 SSID];
              if (!CNPurgeCaptivePortalAuthenticationCredentials())
              {
                v10 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:4 message:{"WiFiDeviceManagerPurgeRemovedKnownNetworks_block_invoke_2", objc_msgSend(v7, "SSID")}];
                }

                objc_autoreleasePoolPop(v10);
              }
            }
          }

          goto LABEL_19;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:
}

void sub_1000F52D8(uint64_t a1, CFTypeRef cf)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (!a1)
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null manager.", "WiFiDeviceManagerWalletPassForgetNetwork"}];
    }

    goto LABEL_9;
  }

  if (!*(a1 + 64))
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null device.", "WiFiDeviceManagerWalletPassForgetNetwork"}];
    }

LABEL_9:
    objc_autoreleasePoolPop(v7);
    goto LABEL_4;
  }

  v3 = CFRetain(cf);
  v14[3] = v3;
  v4 = sub_100009664(*(a1 + 64));
  v5 = CFRetain(v4);
  v10[3] = v5;
  [*(a1 + 6720) removeAllDenyListEntriesWithNetworkName:v14[3]];
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F5480;
  block[3] = &unk_100260908;
  block[4] = &v9;
  block[5] = &v13;
  dispatch_async(global_queue, block);
LABEL_4:
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
}

void sub_1000F545C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1000F5480(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *(*(v2 + 8) + 24);
  IPConfigurationForgetNetwork();
  v5 = *(*(*(a1 + 32) + 8) + 24);
  if (v5)
  {
    CFRelease(v5);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6)
  {
    CFRelease(v6);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void sub_1000F54F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 240);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F5570;
  block[3] = &unk_1002609C0;
  block[5] = a2;
  block[6] = v3;
  block[4] = a3;
  dispatch_async(v4, block);
}

void sub_1000F5570(uint64_t a1)
{
  v2 = [objc_msgSend(*(*(a1 + 48) + 8936) "knownNetworks")];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v2;
  v21 = [v2 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v21)
  {
    v20 = *v31;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v30 + 1) + 8 * i);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v5 = *(a1 + 32);
        v6 = [v5 countByEnumeratingWithState:&v26 objects:v35 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v27;
          while (2)
          {
            for (j = 0; j != v7; j = j + 1)
            {
              if (*v27 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v26 + 1) + 8 * j);
              if ([objc_msgSend(v4 "networkName")])
              {
                v24 = 0u;
                v25 = 0u;
                v22 = 0u;
                v23 = 0u;
                v11 = *(a1 + 40);
                v12 = [v11 countByEnumeratingWithState:&v22 objects:v34 count:16];
                if (v12)
                {
                  v13 = v12;
                  v14 = *v23;
                  while (2)
                  {
                    for (k = 0; k != v13; k = k + 1)
                    {
                      if (*v23 != v14)
                      {
                        objc_enumerationMutation(v11);
                      }

                      v16 = *(*(&v22 + 1) + 8 * k);
                      if ([objc_msgSend(v4 "networkName")])
                      {
                        if ([v10 captiveToken])
                        {
                          if ([v10 captiveTokenAuthURL])
                          {
                            [v4 networkName];
                            if (!CNPurgeCaptivePortalAuthenticationCredentials())
                            {
                              v17 = objc_autoreleasePoolPush();
                              if (off_100298C40)
                              {
                                [off_100298C40 WFLog:4 message:{"WiFiDeviceManagerHandleChangedKnownNetworks_block_invoke_2", objc_msgSend(v4, "networkName")}];
                              }

                              objc_autoreleasePoolPop(v17);
                            }
                          }
                        }

                        if ([v16 captiveToken])
                        {
                          if ([v16 captiveTokenAuthURL])
                          {
                            [objc_msgSend(v16 "captiveToken")];
                            [v16 SSID];
                            [v16 captiveTokenAuthURL];
                            if (!CNSetCaptivePortalAuthenticationCredentials())
                            {
                              v18 = objc_autoreleasePoolPush();
                              if (off_100298C40)
                              {
                                [off_100298C40 WFLog:4 message:{"WiFiDeviceManagerHandleChangedKnownNetworks_block_invoke_2", objc_msgSend(v4, "networkName")}];
                              }

                              objc_autoreleasePoolPop(v18);
                            }
                          }
                        }

                        goto LABEL_36;
                      }
                    }

                    v13 = [v11 countByEnumeratingWithState:&v22 objects:v34 count:16];
                    if (v13)
                    {
                      continue;
                    }

                    break;
                  }
                }

                sub_1000F52D8(*(a1 + 48), [v10 SSID]);
                goto LABEL_36;
              }
            }

            v7 = [v5 countByEnumeratingWithState:&v26 objects:v35 count:16];
            if (v7)
            {
              continue;
            }

            break;
          }
        }

LABEL_36:
        ;
      }

      v21 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v21);
  }
}

void sub_1000F58F8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  if (*(v3 + 240) && *(v3 + 7168))
  {
    v5 = a2;
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: WFMeasure result: %@", "__WiFiDeviceManagerPerformThroughputMeasurement_block_invoke", a2}];
    }

    objc_autoreleasePoolPop(v6);
    CFRetain(*(a1 + 48));
    v7 = *(a1 + 40);
    v8 = *(*(v7 + 8) + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F5A88;
    block[3] = &unk_100261418;
    v9 = *(a1 + 48);
    block[6] = *(a1 + 32);
    block[7] = v9;
    block[4] = v5;
    block[5] = v7;
    dispatch_async(v8, block);
    CFRelease(*(a1 + 48));
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null queue/measurement handle", "__WiFiDeviceManagerPerformThroughputMeasurement_block_invoke"}];
    }

    objc_autoreleasePoolPop(v10);
    v11 = *(*(*(a1 + 32) + 8) + 24);
    if (v11)
    {
      CFRelease(v11);
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }

    v12 = *(*(*(a1 + 40) + 8) + 40);

    dispatch_release(v12);
  }
}

void sub_1000F5A88(uint64_t a1)
{
  dispatch_release(*(*(*(a1 + 40) + 8) + 40));
  v2 = *(a1 + 56);
  if (v2[30])
  {
    Current = CFAbsoluteTimeGetCurrent();
    v4 = CFDateCreate(kCFAllocatorDefault, Current);
    v5 = sub_10000A540(*(*(*(a1 + 48) + 8) + 24), @"lastTputMeasurementResults");
    if (v5)
    {
      MutableCopy = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, v5);
      if (CFArrayGetCount(MutableCopy) >= 4)
      {
        CFArrayRemoveValueAtIndex(MutableCopy, 0);
      }

      if (!MutableCopy)
      {
        goto LABEL_19;
      }
    }

    else
    {
      MutableCopy = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      if (!MutableCopy)
      {
LABEL_19:
        sub_10000AD34(*(*(*(a1 + 48) + 8) + 24), @"lastTputMeasurementDate", v4);
        v14 = *(a1 + 56);
        v15 = v14[573];
        if (v15)
        {
          v15(v14, *(*(*(a1 + 48) + 8) + 24), v14[574]);
          v14 = *(a1 + 56);
        }

        CFRelease(v14);
        if (v4)
        {
          CFRelease(v4);
        }

        v16 = *(*(*(a1 + 48) + 8) + 24);
        if (v16)
        {
          CFRelease(v16);
          *(*(*(a1 + 48) + 8) + 24) = 0;
        }

        return;
      }
    }

    if ([*(a1 + 32) downloadError])
    {
      v8 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: throughput measurement completed for %@, errored out (%@)", "__WiFiDeviceManagerPerformThroughputMeasurement_block_invoke_2", sub_10000A878(*(*(*(a1 + 48) + 8) + 24)), objc_msgSend(*(a1 + 32), "downloadError")}];
      }

      objc_autoreleasePoolPop(v8);
    }

    else
    {
      [*(a1 + 32) backhaulThroughput];
      v10 = v9;
      valuePtr = v9;
      v11 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: throughput measurement completed for %@, result %f Mbps", "__WiFiDeviceManagerPerformThroughputMeasurement_block_invoke_2", sub_10000A878(*(*(*(a1 + 48) + 8) + 24)), v10, valuePtr}];
      }

      objc_autoreleasePoolPop(v11);
      v12 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &valuePtr);
      if (v12)
      {
        v13 = v12;
        CFArrayAppendValue(MutableCopy, v12);
        sub_10000AD34(*(*(*(a1 + 48) + 8) + 24), @"lastTputMeasurementResults", MutableCopy);
        CFRelease(v13);
      }
    }

    CFRelease(MutableCopy);
    goto LABEL_19;
  }

  CFRelease(v2);
  v7 = *(*(*(a1 + 48) + 8) + 24);
  if (v7)
  {
    CFRelease(v7);
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

void sub_1000F5D30(uint64_t a1)
{
  v92 = -1431655766;
  v91 = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutex_lock(&stru_100297A58);
  if (*(*(a1 + 72) + 240))
  {
    v80 = sub_100013F70(*(*(*(a1 + 56) + 8) + 24));
    v76 = a1;
    v2 = [+[WiFiAnalyticsManager sharedWiFiAnalyticsManager](WiFiAnalyticsManager "sharedWiFiAnalyticsManager")];
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    obj = v2;
    v3 = [v2 countByEnumeratingWithState:&v87 objects:v94 count:16];
    if (v3)
    {
      v4 = v3;
      v78 = *v88;
      v5 = WADeviceAnalyticsGeoTagInfo[0];
      v7 = WADeviceAnalyticsGeoTagInfo[4];
      v6 = WADeviceAnalyticsGeoTagInfo[5];
      v8 = WADeviceAnalyticsGeoTagInfo[3];
      v9 = 0.0;
      v10 = 1.79769313e308;
      v11 = 0.0;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v88 != v78)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v87 + 1) + 8 * v12);
        v14 = [v13 objectForKey:v5];
        v15 = [v13 objectForKey:v6];
        v16 = [v13 objectForKey:v8];
        v17 = [v13 objectForKey:v7];
        if (!v80)
        {
          break;
        }

        v18 = v17;
        if ([v14 isEqualToString:?])
        {
          [v15 doubleValue];
          if (v19 < v10)
          {
            [v15 doubleValue];
            v10 = v20;
            [v16 doubleValue];
            v11 = v21;
            [v18 doubleValue];
            v9 = v22;
          }
        }

        if (v4 == ++v12)
        {
          v4 = [obj countByEnumeratingWithState:&v87 objects:v94 count:16];
          if (v4)
          {
            goto LABEL_4;
          }

          goto LABEL_15;
        }
      }
    }

    v9 = 0.0;
    v11 = 0.0;
LABEL_15:

    v79 = [+[WiFiAnalyticsManager sharedWiFiAnalyticsManager](WiFiAnalyticsManager "sharedWiFiAnalyticsManager")];
    v23 = sub_10000A540(*(*(*(v76 + 56) + 8) + 24), @"AP_MODE");
    v24 = sub_100014000(*(*(*(v76 + 56) + 8) + 24));
    v25 = sub_10000A540(*(*(*(v76 + 56) + 8) + 24), @"CHANNEL_FLAGS");
    v26 = sub_10000A540(*(*(*(v76 + 56) + 8) + 24), @"RSSI");
    if (v80)
    {
      v27 = [objc_msgSend(objc_msgSend(+[WiFiAnalyticsManager sharedWiFiAnalyticsManager](WiFiAnalyticsManager "sharedWiFiAnalyticsManager")];
    }

    else
    {
      v27 = 0;
    }

    v32 = [v23 integerValue];
    v33 = sub_1000A02C4(*(*(*(v76 + 56) + 8) + 24));
    LOBYTE(v75) = v27;
    v34 = +[WiFiUsageBssDetails bssWithIdentifier:apProfile:apMode:phyMode:channel:channelFlags:channelWidth:rssi:latitude:longitude:isEdgeBss:](WiFiUsageBssDetails, "bssWithIdentifier:apProfile:apMode:phyMode:channel:channelFlags:channelWidth:rssi:latitude:longitude:isEdgeBss:", v80, 0, v32, v33, [v24 integerValue], objc_msgSend(v25, "integerValue"), v11, v9, sub_1000365A0(*(*(*(v76 + 56) + 8) + 24)), objc_msgSend(v26, "integerValue"), v75);
    [v34 setHasAppleIE:{sub_10000A540(*(*(*(v76 + 56) + 8) + 24), @"APPLE_IE"}];
    [v34 setHasDomainName:{sub_10000A540(*(*(*(v76 + 56) + 8) + 24), @"DomainName"}];
    [v34 setHasNaiRealms:{sub_10000A540(*(*(*(v76 + 56) + 8) + 24), @"NaiRealmName"}];
    [v34 setHasRoamingOis:{sub_10000A540(*(*(*(v76 + 56) + 8) + 24), @"RoamingConsortiumOIs"}];
    v35 = sub_10000A540(*(*(*(v76 + 56) + 8) + 24), @"11U_INTERWORKING_IE");
    if (v35)
    {
      v36 = v35;
      [v34 setHasInterworkingIE:1];
      v37 = [v36 objectForKey:@"INTERWORKING_ACCESS_NETWORK_TYPE"];
      v38 = [v36 objectForKey:@"INTERWORKING_ACCESS_VENTURE_GRP"];
      v39 = [v36 objectForKey:@"INTERWORKING_ACCESS_VENTURE_TYPE"];
      if (v37)
      {
        [v34 setNetworkAccessCode:{objc_msgSend(v37, "integerValue")}];
      }

      if (v38)
      {
        [v34 setVenueGroup:{objc_msgSend(v38, "integerValue")}];
      }

      if (v39)
      {
        [v34 setVenueCode:{objc_msgSend(v39, "integerValue")}];
      }
    }

    if (sub_10000A540(*(*(*(v76 + 56) + 8) + 24), @"WPS_PROB_RESP_IE") || sub_10000A540(*(*(*(v76 + 56) + 8) + 24), @"WPS_BEACON_IE"))
    {
      [v34 setHasWpsIE:1];
      [v34 setModelName:sub_100177934(*(*(*(v76 + 56) + 8) + 24))];
      [v34 setModelNumber:sub_100177990(*(*(*(v76 + 56) + 8) + 24))];
      [v34 setManufacturerName:sub_1001778D8(*(*(*(v76 + 56) + 8) + 24))];
      [v34 setDeviceVersion:sub_1001779EC(*(*(*(v76 + 56) + 8) + 24))];
    }

    v40 = *(*(*(v76 + 56) + 8) + 24);
    if (v40 && sub_10000A7CC(v40))
    {
      v41 = *(v76 + 72);
      if (v41[1110])
      {
        [v34 setModelName:?];
        v41 = *(v76 + 72);
      }

      if (v41[1111])
      {
        [v34 setManufacturerName:?];
        v41 = *(v76 + 72);
      }

      if (v41[1112])
      {
        [v34 setDeviceVersion:?];
      }
    }

    v42 = [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
    v43 = [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
    v44 = [[WiFiUsageNetworkDetails alloc] initWithNetworkName:sub_10000A878(*(*(*(v76 + 56) + 8) + 24))];
    [v44 setConnectedBss:v34];
    [v44 setColocatedNetworkCount:v79];
    [v44 setSwitchedAwayCount:0];
    [v44 setSwitchedToCount:0];
    [v44 setNetworkScore:0];
    [v44 setIsKnown:sub_1000A0144(*(*(*(v76 + 56) + 8) + 24))];
    [v44 setIsOpen:sub_10009F418(*(*(*(v76 + 56) + 8) + 24)) == 0];
    [v44 setCaptiveStatus:sub_10009E7C8(*(*(*(v76 + 56) + 8) + 24))];
    [v44 setIsPublic:{sub_10000A540(*(*(*(v76 + 56) + 8) + 24), @"WiFiNetworkAttributeIsPublic"}];
    [v44 setIsHome:(v42 & 0xFFFFFFFFFFFFFFFDLL) == 1];
    [v44 setIsWork:v43 == 1];
    [v44 setIsInternal:sub_1000A2774(*(*(*(v76 + 56) + 8) + 24))];
    [v44 setIsManaged:sub_10009ED84(*(*(*(v76 + 56) + 8) + 24))];
    [v44 setIsCarrierBased:sub_1000A1E74(*(*(*(v76 + 56) + 8) + 24)) == 2];
    [v44 setIsCarPlay:sub_10000A7CC(*(*(*(v76 + 56) + 8) + 24)) != 0];
    v45 = sub_1000A1E74(*(*(*(v76 + 56) + 8) + 24)) == 1 || sub_1000A1E74(*(*(*(v76 + 56) + 8) + 24)) == 6;
    [v44 setIsAppBased:v45];
    [v44 setIsWalletBased:sub_1000A1E74(*(*(*(v76 + 56) + 8) + 24)) == 3];
    [v44 setIsPersonalHotspot:sub_10000A604(*(*(*(v76 + 56) + 8) + 24)) != 0];
    [v44 setIsInstantHotspot:{sub_10000A540(*(*(*(v76 + 56) + 8) + 24), @"WiFiInstantHotspotJoining"}];
    [v44 setIsAutoHotspot:{sub_10000A540(*(*(*(v76 + 56) + 8) + 24), @"WiFiAutoInstantHotspotJoining"}];
    [v44 setIsMoving:0];
    [v44 setIsWidelyDeployed:0];
    [v44 setIsAutoJoined:{sub_10000A540(*(*(*(v76 + 56) + 8) + 24), @"WiFiNetworkIsAutoJoined"}];
    [v44 setIsAdhoc:sub_10000C894(*(*(*(v76 + 56) + 8) + 24)) != 0];
    [v44 setIsHidden:sub_10001CBF8(*(*(*(v76 + 56) + 8) + 24))];
    [v44 setIsPasspoint:sub_10000AFE4(*(*(*(v76 + 56) + 8) + 24))];
    [v44 setIsMetered:sub_1000A1828(*(*(*(v76 + 56) + 8) + 24))];
    [v44 setHasWapi:sub_10000D970(*(*(*(v76 + 56) + 8) + 24))];
    v46 = sub_10009EB14(*(*(*(v76 + 56) + 8) + 24)) && !sub_10000A540(*(*(*(v76 + 56) + 8) + 24), @"RSN_IE") || sub_10009DB7C(*(*(*(v76 + 56) + 8) + 24));
    [v44 setHasWeakSecurity:v46];
    [v44 setHasWpa3:sub_10009E148(*(*(*(v76 + 56) + 8) + 24)) != 0];
    [v44 setHasWep:sub_10009DB7C(*(*(*(v76 + 56) + 8) + 24))];
    [v44 setHasEnterpriseSecurity:sub_100009730(*(*(*(v76 + 56) + 8) + 24))];
    [v44 setHasNoMap:sub_10009E6B8(*(*(*(v76 + 56) + 8) + 24))];
    [v44 setHasAmbiguousSsid:sub_10009E67C(*(*(*(v76 + 56) + 8) + 24))];
    [v44 setHasCustomNetworkSettings:*(v76 + 98)];
    [v44 setRequiresUsername:sub_100174B68(*(*(*(v76 + 56) + 8) + 24)) != 0];
    [v44 setRequiresPassword:sub_10009F2A4(*(*(*(v76 + 56) + 8) + 24))];
    [v44 setRequiresIdentity:sub_10009F370(*(*(*(v76 + 56) + 8) + 24)) != 0];
    [v44 setRequiresOtp:sub_100174C78(*(*(*(v76 + 56) + 8) + 24)) != 0];
    [v44 setCanExposeImsi:sub_1000A1F7C(*(*(*(v76 + 56) + 8) + 24))];
    [v44 setUsageRank:sub_1000A23AC(*(*(*(v76 + 56) + 8) + 24))];
    v47 = sub_10000A540(*(*(*(v76 + 56) + 8) + 24), @"WiFiManagerKnownNetworksEventType");
    if (v47)
    {
      v48 = v47;
      [v44 setAddedFromUI:{objc_msgSend(v47, "integerValue") == 1}];
      [v44 setAddedFromApp:{objc_msgSend(v48, "integerValue") == 8}];
      [v44 setAddedViaSync:{objc_msgSend(v48, "integerValue") == 3}];
      [v44 setAddedViaATJ:{objc_msgSend(v48, "integerValue") == 6}];
      [v44 setAddedViaRecommendation:{objc_msgSend(v48, "integerValue") == 14}];
      [v44 setAddedViaSharing:{objc_msgSend(v48, "integerValue") == 11}];
      [v44 setAddedViaGuessing:{objc_msgSend(v48, "integerValue") == 5}];
    }

    v49 = sub_10000A540(*(*(*(v76 + 56) + 8) + 24), @"lastTputMeasurementResults");
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v50 = [v49 countByEnumeratingWithState:&v83 objects:v93 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v84;
      do
      {
        for (i = 0; i != v51; i = i + 1)
        {
          if (*v84 != v52)
          {
            objc_enumerationMutation(v49);
          }

          [*(*(&v83 + 1) + 8 * i) doubleValue];
          [v44 addDownloadSpeed:?];
        }

        v51 = [v49 countByEnumeratingWithState:&v83 objects:v93 count:16];
      }

      while (v51);
    }

    v54 = !sub_10001CF90(*(*(*(v76 + 56) + 8) + 24)) && sub_1000A1F40(*(*(*(v76 + 56) + 8) + 24)) == 0;
    [v44 setAutoJoinDisabled:v54];
    [v44 setAutoLoginDisabled:sub_1000A1C9C(*(*(*(v76 + 56) + 8) + 24))];
    [v44 setLowDataModeEnabled:sub_1000A18CC(*(*(*(v76 + 56) + 8) + 24)) != 0];
    v55 = !sub_10001CF90(*(*(*(v76 + 56) + 8) + 24)) && sub_1000A1F40(*(*(*(v76 + 56) + 8) + 24)) != 0;
    [v44 setControlCenterDisabled:v55];
    [v44 setPrivateRelayEnabled:sub_10001D108(*(*(*(v76 + 56) + 8) + 24))];
    [v44 setPrivateRelayBlockedReason:sub_1000A2CC0(*(*(*(v76 + 56) + 8) + 24))];
    v82 = 0;
    v56 = sub_10000A540(*(*(*(v76 + 56) + 8) + 24), @"80211D_IE");
    if (v56)
    {
      v57 = [v56 objectForKey:@"IE_KEY_80211D_COUNTRY_CODE"];
      if (v57)
      {
        [v57 getBytes:&v82 maxLength:4 usedLength:0 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(v57, "length"), 0}];
        [v44 setAdvertisedCountryCode:v82];
      }
    }

    if (*(v76 + 88))
    {
      [v44 setAppliedCountryCode:?];
    }

    [v44 setBssEnvironment:{sub_100059008(*(v76 + 96), *(v76 + 92))}];
    [v44 setLocaleSource:*(v76 + 80)];
    [v44 setLastJoinDate:sub_10000DC20(*(*(*(v76 + 56) + 8) + 24))];
    if (sub_10000A154(*(*(v76 + 72) + 6872)))
    {
      v58 = [objc_msgSend(+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")] - 1;
      if (v58 <= 2)
      {
        [v44 setPrivateMacType:off_100262428[v58]];
      }

      [v44 setPrivateMacFeatureToggled:{objc_msgSend(*(v76 + 32), "privateMACAddressModeUserSetting") != 0}];
      [v44 setPrivateMacUnderClassification:{objc_msgSend(*(v76 + 32), "privateMACAddressEnabledForEvaluation")}];
      [v44 setPrivateMacDisabledByProfile:{objc_msgSend(*(v76 + 32), "privateMACAddressModeConfigurationProfileSetting") == 1}];
    }

    else
    {
      v65 = *(*(*(v76 + 64) + 8) + 24);
      if (v65)
      {
        sub_100147640(v65, &v91);
        v66 = HIDWORD(v91) > 2 ? @"UnknownAddr" : off_100262440[HIDWORD(v91)];
        [v44 setPrivateMacType:v66];
        [v44 setPrivateMacFeatureToggled:v92 == 1];
        [v44 setPrivateMacUnderClassification:BYTE1(v92) == 1];
        [v44 setPrivateMacDisabledByProfile:BYTE2(v92) == 1];
        v67 = *(*(*(v76 + 64) + 8) + 24);
        if (v67)
        {
          CFRelease(v67);
          *(*(*(v76 + 64) + 8) + 24) = 0;
        }
      }
    }

    [v44 setIsAtPrimaryHMHome:*(v76 + 99)];
    [v44 setIsAtNonPrimaryHMHome:*(v76 + 100)];
    v59 = sub_10000A540(*(*(*(v76 + 56) + 8) + 24), CWFCoreWiFiSpecificAttributesKey);
    if (v59)
    {
      v60 = v59;
      v61 = CWFNetworkProfilePropertyDisable6EModeKey;
      if ([v59 objectForKeyedSubscript:CWFNetworkProfilePropertyDisable6EModeKey])
      {
        v62 = [objc_msgSend(v60 objectForKeyedSubscript:{v61), "integerValue"}];
        if (v62 == 2)
        {
          v63 = @"off";
          goto LABEL_91;
        }

        if (v62 == 1)
        {
          v63 = @"auto";
          goto LABEL_91;
        }

        if (!v62)
        {
          v63 = @"none";
LABEL_91:
          v64 = v44;
          goto LABEL_92;
        }
      }
    }

    v64 = v44;
    v63 = 0;
LABEL_92:
    [v64 setDisable6eMode:v63];
    [v44 setIsStandalone6E:{objc_msgSend(*(v76 + 32), "isStandalone6G")}];
    if (sub_1000A1F04(*(*(*(v76 + 56) + 8) + 24)))
    {
      [v44 setCarrierPayloadIdentifier:sub_1000A126C(*(*(*(v76 + 56) + 8) + 24))];
      [v44 setIsCarrierPayloadIdentifierTelemetryApproved:sub_1001769DC(*(*(*(v76 + 56) + 8) + 24)) != 0];
      v68 = objc_autoreleasePoolPush();
      v69 = off_100298C40;
      if (off_100298C40)
      {
        v70 = sub_1000A1F04(*(*(*(v76 + 56) + 8) + 24));
        v71 = sub_1001769DC(*(*(*(v76 + 56) + 8) + 24));
        [v69 WFLog:3 message:{"%s: WiFiNetworkIsCarrierBundleBased %d TelemetryApproved %d PayloadIdentifier %@", "__WiFiDeviceManagerCreateNetworkDetailsForUsageMonitor_block_invoke", v70, v71, sub_1000A126C(*(*(*(v76 + 56) + 8) + 24))}];
      }

      objc_autoreleasePoolPop(v68);
    }

    v72 = sub_10000A540(*(*(*(v76 + 56) + 8) + 24), @"WiFiNetworkTDOverrideCount");
    if (v72)
    {
      v73 = v72;
      valuePtr = 0;
      CFNumberGetValue(v72, kCFNumberSInt32Type, &valuePtr);
      if (valuePtr >= 3)
      {
        [v44 setAssertiveTdDisabled:kCFBooleanTrue != 0];
      }

      CFRelease(v73);
    }

    v74 = *(*(*(v76 + 56) + 8) + 24);
    if (v74)
    {
      CFRelease(v74);
      *(*(*(v76 + 56) + 8) + 24) = 0;
    }

    (*(*(v76 + 48) + 16))();
    pthread_mutex_unlock(&stru_100297A58);
    CFRelease(*(v76 + 72));
    return;
  }

  v28 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null queue.", "__WiFiDeviceManagerCreateNetworkDetailsForUsageMonitor_block_invoke"}];
  }

  objc_autoreleasePoolPop(v28);

  v29 = *(*(*(a1 + 56) + 8) + 24);
  if (v29)
  {
    CFRelease(v29);
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  v30 = *(*(*(a1 + 64) + 8) + 24);
  if (v30)
  {
    CFRelease(v30);
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  pthread_mutex_unlock(&stru_100297A58);
  v31 = *(a1 + 72);

  CFRelease(v31);
}

void sub_1000F6F9C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = sub_1000648B8(*(*(a1 + 32) + 64)) != 1;
    [*(*(a1 + 32) + 7480) setJoinEvent:1 withReason:0 lastDisconnectReason:0 lastJoinFailure:0 andNetworkDetails:a2 forInterface:sub_100006F88(*(*(a1 + 32) + 64))];
    [*(*(a1 + 32) + 7480) setLinkEvent:1 isInvoluntary:v3 linkChangeReason:0 linkChangeSubreason:0 withNetworkDetails:a2 forInterface:*(a1 + 40)];
  }
}

uint64_t sub_1000F7050(uint64_t a1, int a2, uint64_t a3)
{
  if (!a1 || !a3)
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: CATS Register Client: Invalid arguments", "WifiDeviceManagerCatsRegisterClient", v12}];
    }

    goto LABEL_8;
  }

  v4 = *(a1 + 32);
  if (v4 >= 3)
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: CATS Register Client  Max %d clients registered ", "WifiDeviceManagerCatsRegisterClient", 3}];
    }

LABEL_8:
    v6 = 0xFFFFFFFFLL;
    goto LABEL_18;
  }

  v7 = 0;
  if (*(a1 + 32))
  {
    v8 = (a1 + 48);
    while (1)
    {
      v9 = *v8;
      v8 += 6;
      if (v9 == a2)
      {
        break;
      }

      if (v4 == ++v7)
      {
        LODWORD(v7) = *(a1 + 32);
        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    *(a1 + 32) = v4 + 1;
  }

  v10 = a1 + 40 + 24 * v7;
  *(v10 + 16) = a3;
  *(v10 + 8) = a2;
  *v10 = 0;
  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: CATS Register Client Type: %d nclients:%d", "WifiDeviceManagerCatsRegisterClient", *(v10 + 8), *(a1 + 32)}];
  }

  v6 = 0;
LABEL_18:
  objc_autoreleasePoolPop(v5);
  return v6;
}

void sub_1000F71BC(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = objc_autoreleasePoolPush();
  if (!a4)
  {
    v8 = 0;
    goto LABEL_25;
  }

  if (!v6)
  {
    sub_1001A4434();
LABEL_37:
    v8 = 0;
    goto LABEL_38;
  }

  if (!*(v6 + 8936))
  {
    sub_1001A8524();
    goto LABEL_37;
  }

  if (!a2)
  {
    sub_1001A84B0();
    goto LABEL_37;
  }

  if (![a2 matchingKnownNetworkProfile])
  {
    sub_1001A843C();
    goto LABEL_37;
  }

  v8 = sub_1001987AC(a2);
  if (sub_1000E0A04(v6, v8, 0))
  {
    sub_100190654(v6, v8, 0, 0, v9, v10, v11, v12, v23[0], v23[1], v24, v25, v26[0], v26[1], v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, vars0, vars8);
    if ([a2 RSSI] >= v13)
    {
      v14 = (v6 + 3560);
      if (sub_10000A604(*(v6 + 3560)) && sub_10000A604(v8) && sub_10009F648(*v14, v8))
      {
        v15 = sub_10000A540(*v14, @"WiFiInstantHotspotJoining") == kCFBooleanTrue;
        if (sub_10000A540(*v14, @"WiFiAutoInstantHotspotJoining") == kCFBooleanTrue)
        {
LABEL_13:
          v16 = sub_10000A540(*v14, @"lastDisconnectTimestampKey");
          if (v16)
          {
            v17 = v16;
            Current = CFAbsoluteTimeGetCurrent();
            if (Current - CFDateGetAbsoluteTime(v17) > 300.0)
            {
              sub_1001A81AC((v6 + 3560), v15, v17);
              goto LABEL_25;
            }
          }

          v19 = sub_10000A540(*v14, @"lastDisconnectReasonKey");
          if (v19)
          {
            if ((LODWORD(v23[0]) = 0, CFNumberGetValue(v19, kCFNumberIntType, v23), (LODWORD(v23[0]) - 1011) <= 0x17) && ((1 << (LOBYTE(v23[0]) + 13)) & 0x800101) != 0 || LODWORD(v23[0]) == 5)
            {
              sub_1001A8598(v23, (v6 + 3560), v15);
LABEL_25:
              v21 = 0;
              goto LABEL_26;
            }
          }

LABEL_16:
          v20 = sub_1001986B0(v6, v8);
          v21 = 0;
          v22 = 1;
          if (!v8)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }
      }

      else
      {
        v15 = 0;
      }

      if (!v15)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }

    sub_1001A8354();
  }

  else
  {
    sub_1001A83C8();
  }

LABEL_38:
  v21 = v23[0];
LABEL_26:
  if (*(v6 + 1120))
  {
    sub_1000D33C0(v6, 0, 0, v21);
  }

  v22 = 0;
  v20 = 0;
  if (v8)
  {
LABEL_17:
    CFRelease(v8);
  }

LABEL_18:
  if (a4)
  {
    (*(a4 + 16))(a4, v22, v20, v21);
  }

  objc_autoreleasePoolPop(v7);
}

void sub_1000F74E8(uint64_t a1, uint64_t a2, const __CFArray *a3, const __CFDictionary *a4, int a5, uint64_t *a6)
{
  v10 = objc_autoreleasePoolPush();
  if (a6)
  {
    v11 = *a6;
    v12 = objc_autoreleasePoolPush();
    if (!v11 || !*(v11 + 9040) || (v13 = *(v11 + 9048)) == 0)
    {
LABEL_40:
      objc_autoreleasePoolPop(v12);
      free(a6);
      goto LABEL_41;
    }

    v49 = v12;
    if (a4)
    {
      Value = CFDictionaryGetValue(a4, @"CompletedUsingCache");
      v13 = *(v11 + 9048);
    }

    else
    {
      Value = kCFBooleanFalse;
    }

    v15 = [v13 scanType];
    *v51 = v10;
    if (a5 || (v18 = +[NSMutableArray array], !a3))
    {
      v16 = 0;
    }

    else
    {
      v19 = v18;
      if (CFArrayGetCount(a3) >= 1)
      {
        v20 = 0;
        do
        {
          v21 = objc_autoreleasePoolPush();
          ValueAtIndex = CFArrayGetValueAtIndex(a3, v20);
          if (ValueAtIndex)
          {
            v23 = sub_10001A9BC(ValueAtIndex);
            if (v23)
            {
              [v19 addObject:v23];
            }
          }

          objc_autoreleasePoolPop(v21);
          ++v20;
        }

        while (CFArrayGetCount(a3) > v20);
      }

      v24 = *(v11 + 9048);
      v25 = CWFFilteredScanResults();
      v16 = v25;
      if (v15 == 3)
      {
        v47 = v25;
        goto LABEL_23;
      }

      sub_100192190(v11, a3);
    }

    v47 = v16;
    if (v15 != 3 && Value == kCFBooleanFalse)
    {
      *(v11 + 9024) += [objc_msgSend(*(v11 + 9048) "channels")];
      if (!*(v11 + 9180))
      {
        v17 = Value;
        *(v11 + 9180) = 1;
        goto LABEL_24;
      }
    }

LABEL_23:
    v17 = Value;
LABEL_24:
    if (*(v11 + 9024) >= 6uLL && *(v11 + 9032))
    {
      v26 = *(v11 + 64);
      v43 = [*(v11 + 9016) UUIDString];
      v27 = [NSString stringWithFormat:@"%@/%@"];
      sub_10001D70C(v26, 0, v27, 0, v28, v29, v30, v31, @"AutoJoin", v43, v45, v47, v49, v10, HIDWORD(v10), v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, vars0, vars8);
      v32 = *(v11 + 64);
      v44 = [*(v11 + 9016) UUIDString];
      v33 = [NSString stringWithFormat:@"%@/%@"];
      sub_10001D70C(v32, 9, v33, 0, v34, v35, v36, v37, @"AutoJoin", v44, v46, v48, v50, v52, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, vars0a, vars8a);
    }

    v38 = *(v11 + 9040);
    if (a5)
    {
      CWFErrorDescription();
      v39 = CWFErrorWithDescription();
    }

    else
    {
      v39 = 0;
    }

    v40 = 0;
    if (v15 == 3)
    {
      v12 = v49;
    }

    else
    {
      v12 = v49;
      if (v17 != kCFBooleanTrue)
      {
        v40 = [*(v11 + 9048) channels];
      }
    }

    (*(v38 + 16))(v38, v39, v47, v40);
    v41 = *(v11 + 9096);
    if (v41)
    {
      if (a5)
      {
        CWFErrorDescription();
        v42 = CWFErrorWithDescription();
      }

      else
      {
        v42 = 0;
      }

      [v41 notifyScanResult:v47 withError:v42];
    }

    _Block_release(*(v11 + 9040));
    *(v11 + 9040) = 0;

    *(v11 + 9048) = 0;
    v10 = *v51;
    goto LABEL_40;
  }

LABEL_41:

  objc_autoreleasePoolPop(v10);
}

void sub_1000F7850(uint64_t a1, uint64_t a2, const __CFArray *a3, const __CFDictionary *a4, int a5, uint64_t *a6)
{
  v10 = objc_autoreleasePoolPush();
  if (a6)
  {
    if (a3 && CFArrayGetCount(a3))
    {
      sub_1000F0978(*a6, a3);
    }

    v11 = *a6;
    v12 = objc_autoreleasePoolPush();
    if (!v11 || !*(v11 + 9056) || !*(v11 + 9064))
    {
      goto LABEL_26;
    }

    if (a4)
    {
      Value = CFDictionaryGetValue(a4, @"CompletedUsingCache");
      if (a5)
      {
LABEL_10:
        v14 = *(v11 + 9056);
        CWFErrorDescription();
        v15 = CWFErrorWithDescription();
        v16 = 0;
LABEL_22:
        if (Value == kCFBooleanTrue)
        {
          v24 = 0;
        }

        else
        {
          v24 = [*(v11 + 9064) scanResults];
        }

        (*(v14 + 16))(v14, v15, v16, v24);
        _Block_release(*(v11 + 9056));
        *(v11 + 9056) = 0;

        *(v11 + 9064) = 0;
LABEL_26:
        objc_autoreleasePoolPop(v12);
        free(a6);
        goto LABEL_27;
      }
    }

    else
    {
      Value = kCFBooleanFalse;
      if (a5)
      {
        goto LABEL_10;
      }
    }

    v17 = +[NSMutableArray array];
    if (a3)
    {
      v18 = v17;
      if (CFArrayGetCount(a3) >= 1)
      {
        v19 = 0;
        do
        {
          v20 = objc_autoreleasePoolPush();
          ValueAtIndex = CFArrayGetValueAtIndex(a3, v19);
          if (ValueAtIndex)
          {
            v22 = sub_10001A9BC(ValueAtIndex);
            if (v22)
            {
              [v18 addObject:v22];
            }
          }

          objc_autoreleasePoolPop(v20);
          ++v19;
        }

        while (CFArrayGetCount(a3) > v19);
      }

      v23 = *(v11 + 9064);
      v16 = CWFFilteredANQPResults();
    }

    else
    {
      v16 = 0;
    }

    v15 = 0;
    v14 = *(v11 + 9056);
    goto LABEL_22;
  }

LABEL_27:

  objc_autoreleasePoolPop(v10);
}

void sub_1000F7A60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = sub_1000657E8(a1);
  if (a5)
  {
    v11 = a5[1];
    if (v11)
    {
      v11(*a5, a2, v10, a3, a5[3]);
    }
  }

  if (CFArrayGetCount(v10))
  {
    v12 = [objc_msgSend(a4 objectForKeyedSubscript:{@"SENSING_PARAMS_SUBMIT_METRIC", "BOOLValue"}];
    if (_os_feature_enabled_impl())
    {
      v13 = MGGetBoolAnswer();
      v14 = v10 ? v12 : 0;
      if (v13 && v14)
      {
        v37 = a4;
        v15 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"Sensing %s: submitMetric: %d", "__WiFiDeviceManagerSensingSubmitReport", 1}];
        }

        objc_autoreleasePoolPop(v15);
        v33 = +[NSUserDefaults standardUserDefaults];
        v16 = [(NSUserDefaults *)v33 dictionaryForKey:@"WIFI_SENSING"];
        v17 = v16;
        if (v16)
        {
          [-[NSDictionary objectForKeyedSubscript:](v16 objectForKeyedSubscript:{@"SENSING_RESULTS_DATA_TIMESTAMP", "doubleValue"}];
          v19 = v18;
          v20 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"Sensing lastSensingSubmitTimestamp %lf", v19}];
          }

          objc_autoreleasePoolPop(v20);
        }

        v51 = 0;
        v52 = &v51;
        v53 = 0x3052000000;
        v54 = sub_100002B80;
        v55 = sub_100006788;
        v34 = a5;
        v35 = v9;
        v36 = a2;
        v56 = objc_alloc_init(NSMutableDictionary);
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        obj = v10;
        v21 = [v10 countByEnumeratingWithState:&v47 objects:v58 count:16];
        if (v21)
        {
          v39 = *v48;
          do
          {
            v22 = 0;
            v40 = v21;
            do
            {
              if (*v48 != v39)
              {
                objc_enumerationMutation(obj);
              }

              v23 = *(*(&v47 + 1) + 8 * v22);
              v43 = 0u;
              v44 = 0u;
              v45 = 0u;
              v46 = 0u;
              v24 = [&off_100282730 countByEnumeratingWithState:&v43 objects:v57 count:16];
              if (v24)
              {
                v25 = *v44;
                do
                {
                  for (i = 0; i != v24; i = i + 1)
                  {
                    if (*v44 != v25)
                    {
                      objc_enumerationMutation(&off_100282730);
                    }

                    v27 = *(*(&v43 + 1) + 8 * i);
                    v28 = [objc_msgSend(v23 objectForKeyedSubscript:{v27), "componentsSeparatedByString:", @":"}];
                    if ([v28 count] == 6)
                    {
                      [v23 setObject:objc_msgSend(v28 forKeyedSubscript:{"objectAtIndexedSubscript:", 5), v27}];
                    }

                    else
                    {
                      [v23 setObject:@"NA" forKeyedSubscript:v27];
                    }
                  }

                  v24 = [&off_100282730 countByEnumeratingWithState:&v43 objects:v57 count:16];
                }

                while (v24);
              }

              v22 = v22 + 1;
            }

            while (v22 != v40);
            v21 = [obj countByEnumeratingWithState:&v47 objects:v58 count:16];
          }

          while (v21);
        }

        v10 = obj;
        [v52[5] setObject:obj forKey:@"SENSING_RESULTS_DATA"];
        if ([v37 objectForKeyedSubscript:@"SENSING_PARAMS_ACTIVITY_LABELS"])
        {
          [v52[5] setObject:objc_msgSend(v37 forKey:{"objectForKeyedSubscript:", @"SENSING_PARAMS_ACTIVITY_LABELS", @"SENSING_PARAMS_ACTIVITY_LABELS"}];
        }

        if ([v37 objectForKeyedSubscript:@"SENSING_PARAMS_PLACE_LABELS"])
        {
          [v52[5] setObject:objc_msgSend(v37 forKey:{"objectForKeyedSubscript:", @"SENSING_PARAMS_PLACE_LABELS", @"SENSING_PARAMS_PLACE_LABELS"}];
        }

        if ([v37 objectForKeyedSubscript:@"SENSING_PARAMS_ACTIVITY_VALUE"])
        {
          [v52[5] setObject:objc_msgSend(v37 forKey:{"objectForKeyedSubscript:", @"SENSING_PARAMS_ACTIVITY_VALUE", @"SENSING_PARAMS_ACTIVITY_VALUE"}];
        }

        if ([v37 objectForKeyedSubscript:@"SENSING_PARAMS_COMMENT"])
        {
          [v52[5] setObject:objc_msgSend(v37 forKey:{"objectForKeyedSubscript:", @"SENSING_PARAMS_COMMENT", @"SENSING_PARAMS_COMMENT"}];
        }

        v41[0] = _NSConcreteStackBlock;
        v41[1] = 3221225472;
        v41[2] = sub_1000F8108;
        v41[3] = &unk_100261F50;
        v41[4] = &v51;
        v42 = 0;
        v9 = v35;
        a2 = v36;
        a5 = v34;
        a3 = a3;
        if ([OSALog createForSubmission:@"235" metadata:0 options:0 error:&v42 writing:v41])
        {
          v29 = [NSMutableDictionary dictionaryWithDictionary:v17];
          [(NSMutableDictionary *)v29 setObject:[NSNumber forKeyedSubscript:"numberWithDouble:" numberWithDouble:?], @"SENSING_RESULTS_DATA_TIMESTAMP"];
          [(NSUserDefaults *)v33 setObject:v29 forKey:@"WIFI_SENSING"];
          v30 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"Sensing submit - updating the last submitted timestamp %@", v29}];
          }
        }

        else
        {
          v30 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"WiFiSensing Failed to write 235 report: %@", objc_msgSend(v42, "localizedDescription")}];
          }
        }

        objc_autoreleasePoolPop(v30);
        v31 = v52[5];
        if (v31)
        {
          CFRelease(v31);
          v52[5] = 0;
        }

        _Block_object_dispose(&v51, 8);
      }
    }
  }

  if (a5)
  {
    v32 = a5[1];
    if (v32)
    {
      v32(*a5, a2, v10, a3, a5[3]);
    }

    CFRelease(a5[2]);
    free(a5);
  }

  sub_1000657C4(v9, 0);
  sub_1000657B4(v9);
  sub_100150ACC();
}

void sub_1000F8108(uint64_t a1, void *a2)
{
  v3 = 0;
  [a2 writeData:{+[NSJSONSerialization dataWithJSONObject:options:error:](NSJSONSerialization, "dataWithJSONObject:options:error:", *(*(*(a1 + 32) + 8) + 40), 0, &v3)}];
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"Sensing Finished submitting Record\n"];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000F819C(uint64_t a1)
{
  memset(__b, 170, sizeof(__b));
  v2 = read(*(a1 + 40), __b, 0x400uLL);
  if (v2 >= 1)
  {
    v3 = v2;
    v4 = 0;
    v5 = __b;
    while (1)
    {
      v6 = *&__b[v4];
      if (v4 + v6 > v3)
      {
        break;
      }

      if (v6 <= 0x2F)
      {
        v10 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: not enough bytes read for event data", "__WiFiDeviceManagerSetupKernelEventMonitor_block_invoke_2"}];
        }

        goto LABEL_17;
      }

      memset(__str, 170, sizeof(__str));
      snprintf(__str, 0x10uLL, "%s%u", v5 + 32, *(v5 + 7));
      v7 = [NSString stringWithCString:__str encoding:4];
      if (!v7)
      {
        v10 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: null ifName", "__WiFiDeviceManagerSetupKernelEventMonitor_block_invoke_2"}];
        }

        goto LABEL_17;
      }

      if (*(v5 + 5) == 1)
      {
        v8 = v7;
        v9 = sub_100009664(*(*(a1 + 32) + 64));
        if (CFEqual(v9, v8))
        {
          sub_1001988A0(*(a1 + 32));
        }
      }

      v4 += *&__b[v4];
      v5 = &__b[v4];
      if (v4 >= v3)
      {
        return;
      }
    }

    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: not enough bytes read", "__WiFiDeviceManagerSetupKernelEventMonitor_block_invoke_2"}];
    }

LABEL_17:
    objc_autoreleasePoolPop(v10);
  }
}

void sub_1000F838C(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v6 = *a6;
  if (*a6)
  {
    *(v6 + 3808) = 0;
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"[NWTRANSIT]: %s: network %@, error %d", "__WiFiDeviceManagerColocatedNetworkTransitionAssociationCallback", sub_10000A878(a3), a5}];
    }

    objc_autoreleasePoolPop(v9);
    v10 = sub_1000657F4(*(v6 + 64));
    if (a5 && v10)
    {
      ++dword_100298AA0;
      v11 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"[NWTRANSIT]: Transition Attempt Failed. Retry after %d time", 30}];
      }

      objc_autoreleasePoolPop(v11);
      if (dword_100298AA0 <= 3)
      {
        CFRetain(v6);
        v12 = *(v6 + 240);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000F8544;
        block[3] = &unk_10025EAD8;
        block[4] = v6;
        dispatch_async(v12, block);
      }
    }

    else
    {
      dword_100298AA0 = 0;
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: manager is NULL", "__WiFiDeviceManagerColocatedNetworkTransitionAssociationCallback"}];
    }

    objc_autoreleasePoolPop(v13);
  }
}

void sub_1000F8544(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[30])
  {
    v3 = v2[477];
    v4 = dispatch_time(0, 30000000000);
    dispatch_source_set_timer(v3, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
    v2 = *(a1 + 32);
  }

  CFRelease(v2);
}

uint64_t sub_1000F85B0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Dispatching join for =%@", *(a1 + 32)}];
  }

  objc_autoreleasePoolPop(v2);
  v3 = *(a1 + 40);
  v4 = sub_100006F88(*(v3 + 64));
  v5 = *(a1 + 32);

  return sub_1000C9DD4(v3, v4, v5, 0, 0, sub_1000DE734, 0, 1026);
}

void sub_1000F8658(uint64_t a1)
{
  v2 = +[NSDate date];
  [*(*(a1 + 32) + 7480) addFaultEvent:25 forInterface:sub_100009664(*(*(a1 + 32) + 64)) at:v2];
  v3 = WiFiUsageFaultReasonStringMap();

  sub_10014831C(v3, v2);
}

void sub_1000F86C8(uint64_t a1)
{
  v2 = +[NSDate date];
  [*(*(a1 + 32) + 7480) addFaultEvent:26 forInterface:sub_100009664(*(*(a1 + 32) + 64)) at:v2];
  v3 = WiFiUsageFaultReasonStringMap();

  sub_10014831C(v3, v2);
}

void sub_1000F8738(uint64_t a1)
{
  v2 = +[NSDate date];
  [*(*(a1 + 32) + 7480) addFaultEvent:30 forInterface:sub_100009664(*(*(a1 + 32) + 64)) at:v2];
  v3 = WiFiUsageFaultReasonStringMap();

  sub_10014831C(v3, v2);
}

void sub_1000F87A8(uint64_t a1)
{
  v2 = sub_100009664(*(*(a1 + 32) + 64));
  v3 = +[NSDate date];
  [*(*(a1 + 32) + 7480) addFaultEvent:31 forInterface:v2 at:v3];
  v4 = WiFiUsageFaultReasonStringMap();

  sub_10014831C(v4, v3);
}

void sub_1000F8824(uint64_t a1)
{
  v2 = sub_100009664(*(*(a1 + 32) + 64));
  v3 = +[NSDate date];
  [*(*(a1 + 32) + 7480) addFaultEvent:32 forInterface:v2 at:v3];
  v4 = WiFiUsageFaultReasonStringMap();

  sub_10014831C(v4, v3);
}

void sub_1000F88A0(uint64_t a1, uint64_t a2, const __CFArray *a3, int a4)
{
  v7 = objc_autoreleasePoolPush();
  if (a1)
  {
    if (*(a1 + 9096))
    {
      v8 = objc_alloc_init(NSMutableArray);
      if (a3 && CFArrayGetCount(a3) >= 1)
      {
        v9 = 0;
        do
        {
          v10 = objc_autoreleasePoolPush();
          ValueAtIndex = CFArrayGetValueAtIndex(a3, v9);
          if (ValueAtIndex)
          {
            v12 = sub_10001A9BC(ValueAtIndex);
            if (v12)
            {
              [v8 addObject:v12];
            }
          }

          objc_autoreleasePoolPop(v10);
          ++v9;
        }

        while (CFArrayGetCount(a3) > v9);
      }

      v13 = *(a1 + 9096);
      if (a4)
      {
        CWFErrorDescription();
        v14 = CWFErrorWithDescription();
      }

      else
      {
        v14 = 0;
      }

      [v13 notifyScanResult:v8 withError:v14];
    }

    else
    {
      sub_1001A8720();
    }
  }

  else
  {
    sub_10019D91C();
  }

  objc_autoreleasePoolPop(v7);
}

id sub_1000F89FC(void *a1, const char *a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);

  return [a1 dictionaryWithObjects:va1 forKeys:va count:1];
}

id sub_1000F8A30(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);

  return [a1 dictionaryWithObjects:va1 forKeys:va count:1];
}

id sub_1000F8A68()
{

  return [v0 WFLog:3 message:?];
}

void sub_1000F8A80(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint8_t buf)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, &buf, 0xCu);
}

id sub_1000F8A9C()
{
  v4 = *(v1 + 6720);

  return [v4 setNetworkDenyListInfo:v2 forScanResult:v0];
}

id sub_1000F8AD0(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{

  return [a1 dictionaryWithObjects:a2 forKeys:a4 count:1];
}

id sub_1000F8B50(uint64_t a1)
{
  v5 = *(v2 + 6824);

  return [v5 isEqualHotspotDevices:a1 compareTo:v1];
}

void sub_1000F8B9C(int a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, int a14, unsigned int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{

  sub_10001D70C(a1, 0, a3, 0, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

id sub_1000F8BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

WiFiSoftApStateMonitor *sub_1000F8BCC()
{

  return +[WiFiSoftApStateMonitor sharedInstance];
}

CFNumberRef sub_1000F8C80(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int valuePtr)
{
  valuePtr = a1;

  return CFNumberCreate(v22, kCFNumberIntType, &valuePtr);
}

CFIndex sub_1000F8CA0(CFIndex range)
{
  v5.length = range;
  v4 = *(v1 + 3624);
  v5.location = 0;

  return CFArrayGetFirstIndexOfValue(v4, v5, v2);
}

CFNumberRef sub_1000F8CC0@<X0>(__int16 a1@<W8>, uint64_t a2, int a3, __int16 a4, __int16 valuePtr)
{
  valuePtr = a1;

  return CFNumberCreate(v5, kCFNumberSInt16Type, &valuePtr);
}

CFNumberRef sub_1000F8CE0@<X0>(int a1@<W8>, uint64_t a2, int valuePtr)
{
  valuePtr = a1;

  return CFNumberCreate(v3, kCFNumberSInt32Type, &valuePtr);
}

id sub_1000F8D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return [v16 countByEnumeratingWithState:va objects:v17 - 224 count:16];
}

void sub_1000F8D20(int a1@<W8>)
{
  *v1 = a1;

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1000F8D38(const __CFNumber *a1)
{

  return CFNumberGetValue(a1, kCFNumberSInt32Type, (v1 - 20));
}

void sub_1000F8D50(int a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, int a14, unsigned int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{

  sub_10001D70C(a1, 9, a3, 0, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

void sub_1000F8D68(uint64_t a1, const void *a2)
{

  CFDictionarySetValue(v2, a2, v3);
}

id sub_1000F8F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{

  return [v37 countByEnumeratingWithState:&a21 objects:&a37 count:16];
}

uint64_t sub_1000F90F8()
{
  result = qword_100298AA8;
  if (!qword_100298AA8)
  {
    pthread_once(&stru_100297BC0, sub_1000F9140);
    return qword_100298AA8;
  }

  return result;
}

uint64_t sub_1000F9140()
{
  result = _CFRuntimeRegisterClass();
  qword_100298AA8 = result;
  return result;
}

char *sub_1000F9168(uint64_t a1, uint64_t a2)
{
  if (!&_EAPOLControlKeyCreate)
  {
    return 0;
  }

  if (!qword_100298AA8)
  {
    pthread_once(&stru_100297BC0, sub_1000F9140);
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = Instance;
  if (Instance)
  {
    *(Instance + 1) = 0u;
    *(Instance + 2) = 0u;
    *(Instance + 3) = 0u;
    *(Instance + 4) = 0u;
    *(Instance + 5) = 0u;
    *(Instance + 6) = 0u;
    *(Instance + 2) = a2;
    v5 = sub_100009664(a2);
    CFStringGetCString(v5, v4 + 24, 16, 0);
    v6 = EAPOLControlCopyStateAndStatus();
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: EAP: result=%d, eapState=%d, statusDict=%@", "WiFiDeviceEAPCreate", v6, *(v4 + 26), 0xAAAAAAAAAAAAAAAALL}];
    }

    objc_autoreleasePoolPop(v7);
    CFRelease(0xAAAAAAAAAAAAAAAALL);
  }

  return v4;
}

uint64_t sub_1000F9294(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    *(result + 56) = a2;
    *(result + 64) = a3;
  }

  return result;
}

void sub_1000F92A0(uint64_t a1, NSObject *a2)
{
  if (a1 && a2)
  {
    *(a1 + 48) = a2;
    v3 = *(a1 + 40);
    if (!v3)
    {
      v23 = 0u;
      memset(v24, 0, sizeof(v24));
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      *__str = 0u;
      context.version = 0;
      memset(&context.retain, 0, 24);
      context.info = a1;
      snprintf(__str, 0xFFuLL, "WiFiDeviceEAP:%p", *(a1 + 16));
      v5 = CFStringCreateWithCString(kCFAllocatorDefault, __str, 0);
      if (!v5)
      {
        return;
      }

      v6 = v5;
      *(a1 + 40) = SCDynamicStoreCreate(kCFAllocatorDefault, v5, sub_1000F9454, &context);
      CFRelease(v6);
      if (!*(a1 + 40))
      {
        return;
      }

      sub_1000F94E8(a1);
      v7 = *(a1 + 40);
      if (!SCDynamicStoreSetDisconnectCallBack())
      {
        v8 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:"Error subscribing to the dynamic store disconnect event."];
        }

        objc_autoreleasePoolPop(v8);
      }

      v3 = *(a1 + 40);
      a2 = *(a1 + 48);
    }

    if (!SCDynamicStoreSetDispatchQueue(v3, a2))
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:"Error setting dynamic store queue."];
      }

      objc_autoreleasePoolPop(v4);
    }
  }
}

void sub_1000F9454(int a1, CFArrayRef theArray, uint64_t a3)
{
  if (*(a3 + 96))
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v6 = Count;
      for (i = 0; i != v6; ++i)
      {
        if (CFArrayGetValueAtIndex(theArray, i))
        {
          v8 = EAPOLControlKeyCopyInterface();
          if (v8)
          {
            v9 = v8;
            sub_1000FA308(a3);
            CFRelease(v9);
          }
        }
      }
    }
  }
}

void sub_1000F94E8(uint64_t a1)
{
  values = EAPOLControlKeyCreate();
  v2 = CFArrayCreate(0, &values, 1, &kCFTypeArrayCallBacks);
  if (values)
  {
    CFRelease(values);
    values = 0;
  }

  SCDynamicStoreSetNotificationKeys(*(a1 + 40), v2, 0);
  if (v2)
  {
    CFRelease(v2);
  }
}

void sub_1000F9564(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    sub_1000F94E8(a2);
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:"Cannot reconnect to the dynamic store - info is NULL"];
    }

    objc_autoreleasePoolPop(v3);
  }
}

uint64_t sub_1000F95D4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 48))
    {
      result = SCDynamicStoreSetDispatchQueue(*(result + 40), 0);
      *(v1 + 48) = 0;
    }
  }

  return result;
}

uint64_t sub_1000F9614(void *a1, CFDictionaryRef *cf1, const void *a3)
{
  v3 = 4294963396;
  if (!a1 || !cf1)
  {
    return v3;
  }

  v7 = a1[9];
  if (!v7 || !CFEqual(cf1, v7) || *(a1 + 24) != 5)
  {
    v9 = sub_1001A957C(a1, cf1, a3);
    if (!v9)
    {
      v17 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: EAP: Could not find profile!", "WiFiDeviceEAPAssociate"}];
      }

      objc_autoreleasePoolPop(v17);
      return v3;
    }

    v10 = v9;
    sub_1000F9EF4(a1, v9);
    sub_1000F9F4C(a1, cf1);
    v11 = a1[11];
    if (v11)
    {
      CFRelease(v11);
    }

    a1[12] = 0;
    v12 = a1 + 12;
    a1[11] = 0;
    a1[13] = 0;
    v13 = dispatch_semaphore_create(0);
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000FA048;
    block[3] = &unk_100262460;
    block[5] = &v25;
    block[6] = a1 + 3;
    block[4] = v13;
    dispatch_async(global_queue, block);
    v15 = dispatch_time(0, 3000000000);
    if (dispatch_semaphore_wait(v13, v15))
    {
      v16 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:"Gave up waiting for EAPOLControlCopyStateAndStatus. Bailing"];
      }

      objc_autoreleasePoolPop(v16);
LABEL_16:
      *v12 = 0;
      v3 = 4294963394;
LABEL_34:
      dispatch_release(v13);
      CFRelease(v10);
      _Block_object_dispose(&v25, 8);
      return v3;
    }

    *(a1 + 26) = *(v26 + 6);
    v18 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: EAP control state: %d", "WiFiDeviceEAPAssociate", *(a1 + 26)}];
    }

    objc_autoreleasePoolPop(v18);
    v19 = *(a1 + 26);
    if (v19 == 3)
    {
      *v12 = 1;
      v23 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"WiFiDeviceEAPAssociate: EAPOLControl already stopping"];
      }

      objc_autoreleasePoolPop(v23);
    }

    else
    {
      if (v19)
      {
        *v12 = 1;
        v21 = EAPOLControlStop();
        v22 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"WiFiDeviceEAPAssociate: EAPOLControlStop result=%d", v21}];
        }
      }

      else
      {
        *(a1 + 24) = 2;
        v20 = a1[10];
        v21 = EAPOLControlStart();
        v22 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"WiFiDeviceEAPAssociate: EAPOLControlStart result=%d", v21}];
        }
      }

      objc_autoreleasePoolPop(v22);
      if (v21)
      {
        goto LABEL_16;
      }
    }

    v3 = 0;
    goto LABEL_34;
  }

  return sub_1000F9988(a1, cf1, a3);
}

void sub_1000F9970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F9988(uint64_t a1, CFDictionaryRef *cf1, const void *a3)
{
  v3 = 4294963396;
  if (!a1 || !cf1)
  {
    return v3;
  }

  v7 = *(a1 + 72);
  if (v7 && CFEqual(cf1, v7))
  {
    v9 = sub_1001A957C(a1, cf1, a3);
    if (!v9)
    {
      return v3;
    }

    v10 = v9;
    sub_1000F9EF4(a1, v9);
    EAPOLControlCopyStateAndStatus();
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: EAPOLControlCopyStateAndStatus() returned state %d", "WiFiDeviceEAPUpdate", *(a1 + 104)}];
    }

    objc_autoreleasePoolPop(v11);
    v12 = *(a1 + 104);
    if (v12 == 3)
    {
      goto LABEL_67;
    }

    if (v12 != 2)
    {
      if (v12)
      {
        *(a1 + 96) = 1;
        v14 = EAPOLControlStop();
        v15 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"WiFiDeviceEAPUpdate: EAPOLControlStop result=%d", v14}];
        }
      }

      else
      {
        *(a1 + 96) = 2;
        v13 = *(a1 + 80);
        v14 = EAPOLControlStart();
        v15 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"WiFiDeviceEAPUpdate: EAPOLControlStart result=%d", v14}];
        }
      }

      objc_autoreleasePoolPop(v15);
      goto LABEL_65;
    }

    v16 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Starting...", "__WiFiDeviceEAPCopyUserInput"}];
    }

    objc_autoreleasePoolPop(v16);
    if (*(a1 + 88) && (v17 = *(a1 + 80)) != 0)
    {
      Value = CFDictionaryGetValue(v17, @"EAPClientConfiguration");
      v19 = Value;
      if (Value && CFDictionaryGetCount(Value))
      {
        Count = CFArrayGetCount(*(a1 + 88));
        v21 = objc_autoreleasePoolPush();
        if (Count)
        {
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: required array count was %ld", "__WiFiDeviceEAPCopyUserInput", Count}];
          }

          objc_autoreleasePoolPop(v21);
          Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (Mutable)
          {
            v23 = Mutable;
            if (Count >= 1)
            {
              v24 = 0;
              v40 = Count;
              v41 = v19;
              do
              {
                ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 88), v24);
                v26 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: key value at index %ld is %@", "__WiFiDeviceEAPCopyUserInput", v24, ValueAtIndex}];
                }

                objc_autoreleasePoolPop(v26);
                if (ValueAtIndex)
                {
                  v27 = CFDictionaryGetValue(v19, ValueAtIndex);
                  if (v27)
                  {
                    v28 = v27;
                    v29 = objc_autoreleasePoolPush();
                    if (off_100298C40)
                    {
                      [off_100298C40 WFLog:3 message:{"%s: setting key-value pair in userInput for %@", "__WiFiDeviceEAPCopyUserInput", ValueAtIndex}];
                    }

                    objc_autoreleasePoolPop(v29);
                    CFDictionarySetValue(v23, ValueAtIndex, v28);
                    Count = v40;
                    v19 = v41;
                  }
                }

                ++v24;
              }

              while (Count != v24);
            }

            if (CFDictionaryGetCount(v23))
            {
LABEL_57:
              v34 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                v35 = "non-NULL";
                if (!v23)
                {
                  v35 = "NULL";
                }

                [off_100298C40 WFLog:3 message:{"%s: __WiFiDeviceEAPCopyUserInput() returned a %s userInput", "WiFiDeviceEAPUpdate", v35}];
              }

              objc_autoreleasePoolPop(v34);
              if (v23)
              {
                *(a1 + 96) = 4;
                v14 = EAPOLControlProvideUserInput();
                v36 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"WiFiDeviceEAPUpdate: EAPOLControlProvideUserInput result=%d", v14}];
                }

                objc_autoreleasePoolPop(v36);
                CFRelease(v23);
LABEL_65:
                if (v14)
                {
                  *(a1 + 96) = 0;
                  v3 = 4294963394;
LABEL_71:
                  CFRelease(v10);
                  return v3;
                }

LABEL_70:
                v3 = 0;
                goto LABEL_71;
              }

LABEL_67:
              *(a1 + 96) = 1;
              v37 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:"WiFiDeviceEAPUpdate: EAPOLControl already stopping"];
              }

              objc_autoreleasePoolPop(v37);
              goto LABEL_70;
            }

            v30 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: CFDictionaryGetCount() is zero for userInput", "__WiFiDeviceEAPCopyUserInput"}];
            }

            objc_autoreleasePoolPop(v30);
            CFRelease(v23);
LABEL_56:
            v23 = 0;
            goto LABEL_57;
          }

          v21 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: Could not create the userInput dictionary", "__WiFiDeviceEAPCopyUserInput", v38, v39}];
          }
        }

        else if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: required array count was %ld, returning NULL userInput", "__WiFiDeviceEAPCopyUserInput", 0, v39}];
        }
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          if (v19)
          {
            v33 = "non-NULL";
          }

          else
          {
            v33 = "null";
          }

          [off_100298C40 WFLog:3 message:{"%s: configuration (%s) was NULL or count was zero (%ld)", "__WiFiDeviceEAPCopyUserInput", v33, CFDictionaryGetCount(v19)}];
        }
      }
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v31 = "non-NULL";
        if (*(a1 + 88))
        {
          v32 = "non-NULL";
        }

        else
        {
          v32 = "null";
        }

        if (!*(a1 + 80))
        {
          v31 = "null";
        }

        [off_100298C40 WFLog:3 message:{"%s: required (%s) or profile (%s) was NULL, returning null userInput", "__WiFiDeviceEAPCopyUserInput", v32, v31}];
      }
    }

    objc_autoreleasePoolPop(v21);
    goto LABEL_56;
  }

  return sub_1000F9614(a1, cf1);
}

void sub_1000F9EF4(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 80) = cf;
  if (cf)
  {

    CFRetain(cf);
  }
}

void sub_1000F9F4C(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 72) = cf;
  if (cf)
  {

    CFRetain(cf);
  }
}

void sub_1000F9FA4(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 88);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 88) = cf;
  if (cf)
  {
    CFRetain(cf);
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: eapRef required set to:\n%@", "__WiFiDeviceEAPSetRequired", *(a1 + 88)}];
    }

    objc_autoreleasePoolPop(v5);
  }
}

intptr_t sub_1000FA048(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 40) + 8);
  EAPOLControlCopyStateAndStatus();
  return dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000FA0AC(uint64_t a1, const void *a2, int a3)
{
  if (a1)
  {
    sub_1000FA110(a1, a2, a3);
    if (!*(a1 + 96))
    {
      v4 = *(a1 + 72);
      if (v4)
      {
        CFRelease(v4);
      }

      *(a1 + 72) = 0;
      v5 = *(a1 + 80);
      if (v5)
      {
        CFRelease(v5);
      }

      *(a1 + 80) = 0;
      v6 = *(a1 + 88);
      if (v6)
      {
        CFRelease(v6);
      }

      *(a1 + 88) = 0;
    }
  }
}

void sub_1000FA110(uint64_t a1, CFTypeRef cf1, int a3)
{
  if (a1)
  {
    v4 = *(a1 + 72);
    if (v4)
    {
      if (!cf1 || CFEqual(cf1, v4))
      {
        if (a3)
        {
          v6 = *(a1 + 16);
          v7 = sub_100006F88(v6);
          sub_1000627E8(v6, v7, 0, 1012, "__WiFiDeviceEAPCancel", 994);
        }

        v8 = *(a1 + 96);
        if (v8)
        {
          if (v8 <= 4 && (v9 = *(a1 + 56)) != 0)
          {
            *(a1 + 96) = 0;
            v9(a1, 4294963391, 0, *(a1 + 64));
            if (*(a1 + 96))
            {
              return;
            }
          }

          else
          {
            *(a1 + 96) = 0;
          }
        }

        EAPOLControlCopyStateAndStatus();
        if ((*(a1 + 104) - 1) <= 1)
        {
          EAPOLControlStop();
          v10 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:"WiFiDeviceEAPCancel: EAPOLControlStop"];
          }

          objc_autoreleasePoolPop(v10);
        }
      }
    }
  }
}

void sub_1000FA238(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"Aborting EAP"];
    }

    objc_autoreleasePoolPop(v2);
    v3 = *(a1 + 72);
    if (v3)
    {

      sub_1000FA0AC(a1, v3, 1);
    }
  }
}

void sub_1000FA2B8(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    CFRelease(v2);
    a1[9] = 0;
  }

  v3 = a1[10];
  if (v3)
  {
    CFRelease(v3);
    a1[10] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
    a1[5] = 0;
  }
}

void sub_1000FA308(uint64_t a1)
{
  if (!*(a1 + 72))
  {
    *(a1 + 104) = 0;
    return;
  }

  EAPOLControlCopyStateAndStatus();
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: EAP: eapState=%d", "__WiFiDeviceEAPProcessCurrentState", 0}];
  }

  objc_autoreleasePoolPop(v3);
  if (*(a1 + 80))
  {
    if (*(a1 + 96) == 1)
    {
      *(a1 + 108) = 0;
      *(a1 + 100) = 0;
      *(a1 + 96) = 2;
      v4 = EAPOLControlStart();
      v5 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: EAPOLControlStart from Idle result=%d", "__WiFiDeviceEAPProcessIdleState", v4}];
      }

      objc_autoreleasePoolPop(v5);
      if (v4)
      {
        v6 = -369033216;
      }

      else
      {
        v6 = 0;
      }

      v7 = v6 | v4;
      if (!v7)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: EAPOLControl state went Idle while joining", "__WiFiDeviceEAPProcessIdleState"}];
      }

      objc_autoreleasePoolPop(v8);
      v7 = 4294963391;
    }

    sub_1000FAF20(a1, 0, v7, 0);
  }

LABEL_18:
  *(a1 + 104) = 0;
}

void sub_1000FAC60(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = objc_autoreleasePoolPush();
  if (a3)
  {
    if (off_100298C40)
    {
      v11 = sub_10000A878(a3);
      v12 = "failed";
      if (!a5)
      {
        v12 = "succeeded";
      }

      v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
LABEL_11:
        *buf = 136446210;
        v17 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
      }
    }
  }

  else if (off_100298C40)
  {
    v14 = "failed";
    if (!a5)
    {
      v14 = "succeeded";
    }

    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }
  }

  objc_autoreleasePoolPop(v10);
  if (a5)
  {
    if (*(a6 + 96) == 3)
    {
      sub_1000FAF20(a6, 0, a5, 0);
    }
  }

  else
  {
    sub_100150F30(a1);
    if (*(a6 + 96) == 3)
    {
      *(a6 + 96) = 4;
      v15 = sub_100009664(*(a6 + 16));
      sub_1000FA308(a6, v15);
    }
  }
}

void sub_1000FAF20(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(a1 + 96) = 0;
  switch(a3)
  {
    case 0:
LABEL_5:
      v7 = *(a1 + 56);
      if (v7)
      {
        v8 = *(a1 + 64);

        v7(a1, a3, a2, v8);
      }

      return;
    case 0xEA010014:
      return;
    case 0xEA010003:
      *(a1 + 96) = 5;
      goto LABEL_5;
  }

  sub_1000FA110(a1, 0, a4);
  v9 = *(a1 + 56);
  if (v9)
  {
    v9(a1, a3, a2, *(a1 + 64));
  }

  if (!*(a1 + 96))
  {
    v10 = *(a1 + 72);
    if (v10)
    {
      CFRelease(v10);
    }

    *(a1 + 72) = 0;
    v11 = *(a1 + 80);
    if (v11)
    {
      CFRelease(v11);
    }

    *(a1 + 80) = 0;
    v12 = *(a1 + 88);
    if (v12)
    {
      CFRelease(v12);
    }

    *(a1 + 88) = 0;
  }
}

void sub_1000FB23C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000EEE0(*(*(a1 + 32) + 8));
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000FB2C8;
  v5[3] = &unk_100261330;
  v5[4] = *(a1 + 32);
  v5[5] = a2;
  dispatch_async(v4, v5);
}

void sub_1000FB2C8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  sub_10007D6E8(*(*(a1 + 32) + 8), CWFPrivateMACAddressDeviceKeyKey, *(a1 + 40));

  objc_autoreleasePoolPop(v2);
}

void sub_1000FB31C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000EEE0(*(*(a1 + 32) + 8));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FB3B8;
  block[3] = &unk_100262558;
  block[4] = *(a1 + 32);
  block[5] = a2;
  block[6] = a3;
  dispatch_async(v6, block);
}

void sub_1000FB3B8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  sub_10007D6E8(*(*(a1 + 32) + 8), CWFPrivateMACAddressRotationKeyKey, *(a1 + 40));
  sub_10007D6E8(*(*(a1 + 32) + 8), CWFPrivateMACAddressRotationKeyTimestampKey, *(a1 + 48));

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1000FB428(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) __isActivityRegisteredWithType:13];
  v4 = *(a2 + 16);

  return v4(a2, v3 ^ 1);
}

void sub_1000FC510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000FC528(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1[4])
  {
    v3 = +[NSMutableDictionary dictionary];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [*(a1[5] + 48) allKeys];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [v3 setObject:objc_msgSend(objc_msgSend(*(a1[5] + 48) forKeyedSubscript:{"objectForKeyedSubscript:", *(*(&v9 + 1) + 8 * v8)), "objectForKeyedSubscript:", a1[4]), *(*(&v9 + 1) + 8 * v8)}];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    if ([v3 count])
    {
      *(*(a1[6] + 8) + 40) = [v3 copy];
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000FC70C(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1[4] && a1[5])
  {
    v3 = [*(a1[6] + 48) objectForKeyedSubscript:?];
    if (!v3)
    {
      v3 = +[NSMutableDictionary dictionary];
      [*(a1[6] + 48) setObject:v3 forKeyedSubscript:a1[5]];
    }

    [v3 setObject:a1[7] forKeyedSubscript:a1[4]];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000FCC78(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  if (!a4)
  {
    if (a5)
    {
      v7 = sub_100017C00(a5);
      if (v7)
      {
        v8 = v7;
        [*(a1 + 32) __setPeerAssistedDiscoveryNetwork:v7 interfaceName:*(a1 + 40) UUID:{objc_msgSend(*(a1 + 48), "UUID")}];
        CFRelease(v8);
      }
    }
  }

  if ([*(a1 + 56) response])
  {
    v9 = [*(a1 + 56) response];
    if (a4)
    {
      CWFErrorDescription();
      v10 = CWFErrorWithDescription();
    }

    else
    {
      v10 = 0;
    }

    v9[2](v9, v10, 0);
  }

  v11 = *(a1 + 56);
}

void sub_1000FCD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void, void, void, void, void, void))
{
  v12 = objc_autoreleasePoolPush();
  if (a6)
  {
    a6[2](a6, a1, a2, a3, a4, a5);
    _Block_release(a6);
  }

  objc_autoreleasePoolPop(v12);
}

void sub_1000FCFCC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    [*(a1 + 32) __setPeerAssistedDiscoveryNetwork:0 interfaceName:*(a1 + 40) UUID:{objc_msgSend(*(a1 + 48), "UUID")}];
  }

  if ([*(a1 + 56) response])
  {
    v6 = [*(a1 + 56) response];
    if (a4)
    {
      CWFErrorDescription();
      v7 = CWFErrorWithDescription();
    }

    else
    {
      v7 = 0;
    }

    v6[2](v6, v7, 0);
  }

  v8 = *(a1 + 56);
}

void sub_1000FD0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void, void, void, void))
{
  v10 = objc_autoreleasePoolPush();
  if (a5)
  {
    a5[2](a5, a1, a2, a3, a4);
    _Block_release(a5);
  }

  objc_autoreleasePoolPop(v10);
}

void sub_1000FD5DC(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v6 = objc_autoreleasePoolPush();
  if ([a4 response])
  {
    v7 = [a4 response];
    if (a3)
    {
      CWFErrorDescription();
      v8 = CWFErrorWithDescription();
    }

    else
    {
      v8 = 0;
    }

    v7[2](v7, v8, 0);
  }

  objc_autoreleasePoolPop(v6);
}

void sub_1000FDFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000FE004(uint64_t a1, void *a2)
{
  v3 = sub_100022854(a2, 0);
  if (v3)
  {
    v4 = v3;
    v5 = *(*(*(a1 + 32) + 8) + 24);
    if (!v5)
    {
      *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      v5 = *(*(*(a1 + 32) + 8) + 24);
    }

    CFArrayAppendValue(v5, v4);

    CFRelease(v4);
  }
}

void sub_1000FF7F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6)
{
  v12 = objc_autoreleasePoolPush();
  if (CWFGetOSLog())
  {
    v13 = CWFGetOSLog();
  }

  else
  {
    v13 = &_os_log_default;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v46 = 67109120;
    *&v46[4] = a6;
    LODWORD(v45) = 8;
    v44 = v46;
    _os_log_send_and_compose_impl();
  }

  if (a6)
  {
    v14 = [NSError errorWithDomain:CWFManagerErrorDomain code:a6 userInfo:a5];
    v15 = sub_10001A9BC(a4);
    v16 = sub_1000C4450(a2, a4);
    if (v16)
    {
      v17 = sub_10001B368(a4);
    }

    else
    {
      v17 = 0;
    }

    if (sub_10000A154(*(*(a1 + 48) + 8)))
    {
      if ([v15 privateMACAddress])
      {
        CWFErrorDescription();
        CWFErrorWithDescription();
        if (CWFPrivateMACAddressAllowFallbackForAssociationError())
        {
          if (!v17)
          {
            v17 = [objc_msgSend(*(a1 + 32) "scanResult")];
          }

          v20 = [(NSDictionary *)[(NSError *)v14 userInfo:v44] mutableCopy];
          v21 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [objc_msgSend(+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")]);
          [v20 setObject:v21 forKeyedSubscript:CWFPrivateMACAddressUserJoinFailureUIStateKey];
          v14 = [NSError errorWithDomain:[(NSError *)v14 domain] code:[(NSError *)v14 code] userInfo:v20];
        }
      }
    }

    if (!v16)
    {
      goto LABEL_62;
    }

LABEL_61:
    CFRelease(v16);
    goto LABEL_62;
  }

  if (![*(a1 + 32) rememberUponSuccessfulAssociation])
  {
    v14 = 0;
    goto LABEL_62;
  }

  v18 = [sub_10000A540(a4 @"WiFiManagerKnownNetworksEventType")];
  sub_1000A0170(a4, 1, +[NSDate date]);
  v16 = sub_1000C3F40(a2, a4);
  if (CWFGetOSLog())
  {
    v19 = CWFGetOSLog();
  }

  else
  {
    v19 = &_os_log_default;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v22 = sub_10000A878(v16);
    *v46 = 136315394;
    *&v46[4] = "[WiFiXPCManager __associate:XPCConnection:]_block_invoke";
    *&v46[12] = 2112;
    *&v46[14] = v22;
    LODWORD(v45) = 22;
    v44 = v46;
    _os_log_send_and_compose_impl();
  }

  if (v16)
  {
    if (sub_1000A158C(a4) == 2)
    {
      sub_100081EDC([+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")], a4, 1);
    }

    if (sub_10000A540(a4, @"WiFiNetworkNANServiceID"))
    {
      sub_100081EDC([+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")], a4, 1);
    }

    sub_100189AE8();
  }

  else
  {
    v23 = sub_1000102AC(a2, a3);
    if (v23)
    {
      v30 = v23;
      sub_100174EB4(a4, v23, v24, v25, v26, v27, v28, v29, v44, v45, *v46, *&v46[8], *&v46[16], v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
      CFRelease(v30);
    }

    if (_os_feature_enabled_impl())
    {
      v31 = sub_10001A904(a2);
      if (v31)
      {
        v32 = v31;
        [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
        [v32 coordinate];
        [v32 coordinate];
        [v32 horizontalAccuracy];
        [v32 timestamp];
        sub_100160178();
      }

      if (sub_1000C9DCC(a2))
      {
        Current = CFAbsoluteTimeGetCurrent();
        v34 = CFDateCreate(kCFAllocatorDefault, Current);
        if (v34)
        {
          v35 = v34;
          sub_100175658(a4, v34);
          CFRelease(v35);
        }
      }
    }

    if ([objc_msgSend(*(a1 + 32) knownNetworkProfile])
    {
      sub_1000A3840(a4, [objc_msgSend(*(a1 + 32) "knownNetworkProfile")]);
    }

    sub_100159BD0([+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")], a4, v18);
    v37 = 0;
    if (sub_10007B41C([+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")]))
    {
      sub_100189AE8();
      if (v36)
      {
        v37 = 1;
      }
    }

    sub_1000DD1BC(a2, a4, v37);
    sub_1000DE018(a2);
    v16 = CFRetain(a4);
    if (CWFGetOSLog())
    {
      v38 = CWFGetOSLog();
    }

    else
    {
      v38 = &_os_log_default;
    }

    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = sub_10000A878(v16);
      *v46 = 136315394;
      *&v46[4] = "[WiFiXPCManager __associate:XPCConnection:]_block_invoke";
      *&v46[12] = 2112;
      *&v46[14] = v39;
      LODWORD(v45) = 22;
      v44 = v46;
      _os_log_send_and_compose_impl();
    }
  }

  if (sub_10009F2A4(v16) || sub_10009ECF4(v16))
  {
    v40 = *(a1 + 40);
    if (v40)
    {
      sub_10009FBF4(v16, v40);
    }
  }

  else
  {
    if (CWFGetOSLog())
    {
      v41 = CWFGetOSLog();
    }

    else
    {
      v41 = &_os_log_default;
    }

    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      v42 = sub_10000A878(v16);
      *v46 = 136315650;
      *&v46[4] = "[WiFiXPCManager __associate:XPCConnection:]_block_invoke";
      *&v46[12] = 2112;
      *&v46[14] = v42;
      *&v46[22] = 2112;
      v47 = v16;
      LODWORD(v45) = 32;
      v44 = v46;
      _os_log_send_and_compose_impl();
    }

    sub_10009FCF4(v16);
  }

  v14 = 0;
  if (v16)
  {
    goto LABEL_61;
  }

LABEL_62:
  if ([*(a1 + 56) response])
  {
    v43 = [*(a1 + 56) response];
    v43[2](v43, v14, 0);
  }

  objc_autoreleasePoolPop(v12);
}

void sub_1000FFEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void, void, void, void, void, void))
{
  v12 = objc_autoreleasePoolPush();
  if (a6)
  {
    a6[2](a6, a1, a2, a3, a4, a5);
    _Block_release(a6);
  }

  objc_autoreleasePoolPop(v12);
}

void sub_100100BA0(uint64_t a1, uint64_t a2, const __CFArray *a3, int a4, void *a5)
{
  v8 = objc_autoreleasePoolPush();
  if (a4)
  {
    if ([a5 response])
    {
      v9 = [a5 response];
      CWFErrorDescription();
      v10 = CWFErrorWithDescription();
      v9[2](v9, v10, 0);
    }
  }

  else
  {
    v11 = +[NSMutableArray array];
    if (a3 && CFArrayGetCount(a3) >= 1)
    {
      v12 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a3, v12);
        if (ValueAtIndex)
        {
          v14 = sub_10001A9BC(ValueAtIndex);
          if (v14)
          {
            [v11 addObject:v14];
          }
        }

        ++v12;
      }

      while (CFArrayGetCount(a3) > v12);
    }

    v15 = [a5 info];
    [v15 objectForKeyedSubscript:CWFXPCANQPParamsKey];
    v16 = CWFFilteredANQPResults();
    v17 = +[NSMutableDictionary dictionary];
    [v17 setObject:v16 forKeyedSubscript:CWFXPCResultKey];
    if ([a5 response])
    {
      v18 = [a5 response];
      v18[2](v18, 0, v17);
    }
  }

  objc_autoreleasePoolPop(v8);
}

void sub_100101058(uint64_t a1, uint64_t a2, const __CFArray *a3, int a4, void *a5)
{
  v8 = objc_autoreleasePoolPush();
  if (a4)
  {
    if ([a5 response])
    {
      v9 = [a5 response];
      CWFErrorDescription();
      v10 = CWFErrorWithDescription();
      v9[2](v9, v10, 0);
    }
  }

  else
  {
    if (a3)
    {
      v11 = +[NSMutableArray array];
      if (CFArrayGetCount(a3) >= 1)
      {
        v26 = v8;
        v27 = a5;
        v12 = 0;
        v28 = a3;
        v29 = v11;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a3, v12);
          if (ValueAtIndex)
          {
            v14 = ValueAtIndex;
            v31 = v12;
            v15 = objc_alloc_init(CWFRangingResult);
            [v15 setMACAddress:{objc_msgSend(v14, "objectForKeyedSubscript:", @"STATION_MAC"}];
            [v15 setIdentifier:{objc_msgSend(v14, "objectForKeyedSubscript:", @"RANGING_TOKEN_ID"}];
            [objc_msgSend(v14 objectForKeyedSubscript:{@"RANGING_DISTANCE", "doubleValue"}];
            [v15 setDistance:?];
            [objc_msgSend(v14 objectForKeyedSubscript:{@"RANGING_SD", "doubleValue"}];
            [v15 setStandardDeviation:?];
            [v15 setStatus:{objc_msgSend(objc_msgSend(v14, "objectForKeyedSubscript:", @"RANGING_STATUS", "intValue")}];
            v30 = v15;
            [v15 setNumberOfValidMeasurements:{objc_msgSend(objc_msgSend(v14, "objectForKeyedSubscript:", @"RANGING_VALID_COUNT", "unsignedIntegerValue")}];
            v16 = +[NSMutableArray array];
            v17 = [v14 objectForKeyedSubscript:@"RANGING_RESULTS"];
            v32 = 0u;
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v18 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v33;
              do
              {
                v21 = 0;
                do
                {
                  if (*v33 != v20)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v22 = *(*(&v32 + 1) + 8 * v21);
                  v23 = objc_alloc_init(CWFRangingMeasurement);
                  [v23 setRoundTripTime:{objc_msgSend(objc_msgSend(v22, "objectForKeyedSubscript:", @"RANGING_RTT", "integerValue")}];
                  [v23 setRSSI:{objc_msgSend(objc_msgSend(v22, "objectForKeyedSubscript:", @"RANGING_RSSI", "integerValue")}];
                  [v23 setChannel:{objc_msgSend(objc_msgSend(v22, "objectForKeyedSubscript:", @"RANGING_CHANNEL", "unsignedIntegerValue")}];
                  [v23 setSNR:{objc_msgSend(objc_msgSend(v22, "objectForKeyedSubscript:", @"RANGING_SNR", "integerValue")}];
                  [v23 setCoreID:{objc_msgSend(objc_msgSend(v22, "objectForKeyedSubscript:", @"RANGING_CORE_ID", "unsignedIntegerValue")}];
                  [v16 addObject:v23];
                  v21 = v21 + 1;
                }

                while (v19 != v21);
                v19 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
              }

              while (v19);
            }

            [v30 setMeasurements:{v16, v26, v27}];
            v11 = v29;
            [v29 addObject:v30];
            a3 = v28;
            v12 = v31;
          }

          ++v12;
        }

        while (CFArrayGetCount(a3) > v12);
        v8 = v26;
        a5 = v27;
      }
    }

    else
    {
      v11 = 0;
    }

    v24 = [NSMutableDictionary dictionary:v26];
    [v24 setObject:v11 forKeyedSubscript:CWFXPCResultKey];
    if ([a5 response])
    {
      v25 = [a5 response];
      v25[2](v25, 0, v24);
    }
  }

  objc_autoreleasePoolPop(v8);
}

id sub_100101D30(uint64_t a1)
{
  result = [*(a1 + 32) response];
  if (result)
  {
    v3 = *([*(a1 + 32) response] + 2);

    return v3();
  }

  return result;
}

void sub_100102D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000EEE0(*(*(a1 + 32) + 8));
  v7 = qos_class_self();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100102DC8;
  block[3] = &unk_1002626E0;
  block[4] = *(a1 + 32);
  block[5] = a2;
  block[6] = a3;
  v8 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v7, 0, block);
  v9 = CFAutorelease(v8);
  dispatch_async(v6, v9);
}

void sub_100102DC8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __knownNetworkHasCustomNetworkSettings:*(a1 + 40)];
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, v3 ^ 1);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100102E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000EEE0(*(*(a1 + 32) + 8));
  v7 = qos_class_self();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100102EE8;
  block[3] = &unk_1002626E0;
  block[4] = *(a1 + 32);
  block[5] = a2;
  block[6] = a3;
  v8 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v7, 0, block);
  v9 = CFAutorelease(v8);
  dispatch_async(v6, v9);
}

void sub_100102EE8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) __knownNetworkHasCustomNetworkSettings:*(a1 + 40)];
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, v3 ^ 1);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100102F48(id a1, CWFEvent *a2)
{
  if (CWFGetOSLog())
  {
    v2 = CWFGetOSLog();
  }

  else
  {
    v2 = &_os_log_default;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }
}

void sub_100104118(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:*(a1 + 40)];
  if ([*(a1 + 48) array] != v3)
  {
    v4 = ![*(a1 + 48) array] || v3 == 0;
    if (v4 || ([objc_msgSend(*(a1 + 48) "array")] & 1) == 0)
    {
      [*(*(a1 + 32) + 56) setObject:objc_msgSend(*(a1 + 48) forKeyedSubscript:{"array"), *(a1 + 40)}];
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10010467C(uint64_t a1, uint64_t a2, void *a3, int a4, void *a5)
{
  v8 = objc_autoreleasePoolPush();
  if (a4)
  {
    if ([a5 response])
    {
      v9 = [a5 response];
      CWFErrorDescription();
      v10 = CWFErrorWithDescription();
      v9[2](v9, v10, 0);
    }
  }

  else
  {
    v11 = objc_alloc_init(CWFSensingResult);
    [v11 setData:{objc_msgSend(a3, "copy")}];
    v12 = +[NSMutableDictionary dictionary];
    [v12 setObject:v11 forKeyedSubscript:CWFXPCResultKey];
    if ([a5 response])
    {
      v13 = [a5 response];
      v13[2](v13, 0, v12);
    }
  }

  objc_autoreleasePoolPop(v8);
}

void sub_100104EB4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if ([*(a1 + 32) response])
  {
    v6 = [*(a1 + 32) response];
    if (a4)
    {
      CWFErrorDescription();
      v7 = CWFErrorWithDescription();
    }

    else
    {
      v7 = 0;
    }

    v6[2](v6, v7, 0);
  }

  v8 = *(a1 + 32);
}

void sub_1001050BC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if ([*(a1 + 32) response])
  {
    v6 = [*(a1 + 32) response];
    if (a4)
    {
      CWFErrorDescription();
      v7 = CWFErrorWithDescription();
    }

    else
    {
      v7 = 0;
    }

    v6[2](v6, v7, 0);
  }

  v8 = *(a1 + 32);
}

void sub_100105294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001052AC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 48) + 8) + 40) = [objc_msgSend(*(*(a1 + 32) + 56) objectForKeyedSubscript:{objc_msgSend(objc_msgSend(*(a1 + 40), "requestParameters"), "interfaceName")), "copy"}];

  objc_autoreleasePoolPop(v2);
}

void sub_100106288(uint64_t a1)
{
  if (CWFGetOSLog())
  {
    v2 = CWFGetOSLog();
  }

  else
  {
    v2 = &_os_log_default;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v13 = 138543618;
    v14 = v3;
    v15 = 1024;
    v16 = qos_class_self();
    LODWORD(v12) = 18;
    v11 = &v13;
    _os_log_send_and_compose_impl();
  }

  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) type];
  if (v5 > 173)
  {
    if (v5 <= 257)
    {
      switch(v5)
      {
        case 174:
          [*(a1 + 40) __setRangingIdentifier:*(a1 + 32)];
          break;
        case 177:
          [*(a1 + 40) __performAutoJoin:*(a1 + 32)];
          break;
        case 179:
          [*(a1 + 40) __getUserAutoJoinState:*(a1 + 32)];
          break;
        case 180:
          [*(a1 + 40) __setUserAutoJoinState:*(a1 + 32) XPCConnection:*(a1 + 48)];
          break;
        case 181:
        case 184:
        case 191:
        case 237:
          goto LABEL_13;
        case 182:
          [*(a1 + 40) __getAutoHotspotMode:*(a1 + 32)];
          break;
        case 183:
          [*(a1 + 40) __setAutoHotspotMode:*(a1 + 32)];
          break;
        case 188:
          [*(a1 + 40) __performSensing:*(a1 + 32)];
          break;
        case 189:
          [*(a1 + 40) __getUserSettings:*(a1 + 32)];
          break;
        case 190:
          [*(a1 + 40) __setUserSettings:*(a1 + 32)];
          break;
        case 197:
          [*(a1 + 40) __getCountryBandSupport:*(a1 + 32)];
          break;
        case 198:
          [*(a1 + 40) __addKnownBSS:*(a1 + 32)];
          break;
        case 199:
          [*(a1 + 40) __removeKnownBSS:*(a1 + 32)];
          break;
        case 200:
          [*(a1 + 40) __updateKnownBSS:*(a1 + 32)];
          break;
        case 201:
          [*(a1 + 40) __getPassword:*(a1 + 32) XPCConnection:*(a1 + 48)];
          break;
        case 202:
          [*(a1 + 40) __setPassword:*(a1 + 32)];
          break;
        case 218:
          [*(a1 + 40) __setBlockedBands:*(a1 + 32)];
          break;
        case 219:
          [*(a1 + 40) __updateSoftAPBand:*(a1 + 32) XPCConnection:*(a1 + 48)];
          break;
        case 220:
          [*(a1 + 40) __startHostAPMode:*(a1 + 32) XPCConnection:*(a1 + 48)];
          break;
        case 221:
          [*(a1 + 40) __stopHostAPMode:*(a1 + 32) XPCConnection:*(a1 + 48)];
          break;
        case 236:
          [*(a1 + 40) __getWiFiAssistOverrideReasons:*(a1 + 32)];
          break;
        case 238:
          [*(a1 + 40) __performNDD:*(a1 + 32) XPCConnection:*(a1 + 48)];
          break;
        case 243:
          [*(a1 + 40) __getBackgroundScanConfiguration:*(a1 + 32)];
          break;
        case 244:
          [*(a1 + 40) __setBackgroundScanConfiguration:*(a1 + 32)];
          break;
        case 245:
          [*(a1 + 40) __getAutoJoinDenyList:*(a1 + 32)];
          break;
        case 246:
          [*(a1 + 40) __setAutoJoinDenyList:*(a1 + 32)];
          break;
        case 247:
          [*(a1 + 40) __clearAutoJoinDenyList:*(a1 + 32)];
          break;
        case 249:
          [*(a1 + 40) __getNetworkSignatureForNetwork:*(a1 + 32)];
          break;
        default:
          goto LABEL_29;
      }

      goto LABEL_15;
    }

    switch(v5)
    {
      case 258:
        [*(a1 + 40) __getKnownNetworkProfilesInSameLan:*(a1 + 32)];
        goto LABEL_15;
      case 259:
        [*(a1 + 40) __getKnownNetworkProfilesWithNetworkSignature:*(a1 + 32)];
        goto LABEL_15;
      case 272:
        [*(a1 + 40) __updateMultipleKnownNetworks:*(a1 + 32) XPCConnection:*(a1 + 48)];
        goto LABEL_15;
    }

LABEL_29:
    if (CWFGetOSLog())
    {
      v7 = CWFGetOSLog();
    }

    else
    {
      v7 = &_os_log_default;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v13 = 138412290;
      v14 = v8;
      LODWORD(v12) = 12;
      v11 = &v13;
      _os_log_send_and_compose_impl();
    }

    if ([*(a1 + 32) response])
    {
      v9 = [*(a1 + 32) response];
      CWFErrorDescription();
      v10 = CWFErrorWithDescription();
      v9[2](v9, v10, 0);
    }

    goto LABEL_15;
  }

  if (v5 <= 35)
  {
    switch(v5)
    {
      case 6:
        [*(a1 + 40) __setPower:*(a1 + 32) XPCConnection:*(a1 + 48)];
        goto LABEL_15;
      case 23:
        [*(a1 + 40) __setCompanionCountryCode:*(a1 + 32)];
        goto LABEL_15;
      case 35:
        [*(a1 + 40) __getThermalIndex:*(a1 + 32)];
        goto LABEL_15;
    }

    goto LABEL_29;
  }

  switch(v5)
  {
    case '6':
      [*(a1 + 40) __getKnownNetworkProfiles:*(a1 + 32)];
      break;
    case '7':
    case '8':
    case 'F':
    case 'G':
    case 'H':
    case 'I':
    case 'J':
    case 'K':
    case 'L':
    case 'M':
    case 'N':
    case 'P':
    case 'Q':
    case 'R':
    case 'S':
    case 'T':
    case 'U':
    case 'V':
    case 'W':
    case 'X':
    case 'Y':
    case 'Z':
    case '[':
    case '\\':
    case ']':
    case '^':
    case 'b':
    case 'c':
    case 'j':
    case 'k':
    case 'm':
    case 'n':
      goto LABEL_29;
    case '9':
      [*(a1 + 40) __getCurrentScanResult:*(a1 + 32)];
      break;
    case ':':
      [*(a1 + 40) __getCurrentNetworkProfile:*(a1 + 32) XPCConnection:*(a1 + 48)];
      break;
    case ';':
      [*(a1 + 40) __addKnownNetworkProfile:*(a1 + 32)];
      break;
    case '<':
      [*(a1 + 40) __removeKnownNetworkProfile:*(a1 + 32)];
      break;
    case '=':
      [*(a1 + 40) __updateKnownNetworkProfile:*(a1 + 32) XPCConnection:*(a1 + 48)];
      break;
    case '>':
      [*(a1 + 40) __associate:*(a1 + 32) XPCConnection:*(a1 + 48)];
      break;
    case '?':
      [*(a1 + 40) __disassociate:*(a1 + 32) XPCConnection:*(a1 + 48)];
      break;
    case '@':
      [*(a1 + 40) __performScan:*(a1 + 32) XPCConnection:*(a1 + 48)];
      break;
    case 'A':
      [*(a1 + 40) __performANQP:*(a1 + 32)];
      break;
    case 'B':
      [*(a1 + 40) __startAWDLPeerAssistedDiscovery:*(a1 + 32) XPCConnection:*(a1 + 48)];
      break;
    case 'C':
      [*(a1 + 40) __stopAWDLPeerAssistedDiscovery:*(a1 + 32) XPCConnection:*(a1 + 48)];
      break;
    case 'D':
      [*(a1 + 40) __setRangeable:*(a1 + 32)];
      break;
    case 'E':
      [*(a1 + 40) __performRanging:*(a1 + 32)];
      break;
    case 'O':
    case '_':
    case 'a':
LABEL_13:
      if ([*(a1 + 32) response])
      {
        v6 = [*(a1 + 32) response];
        (*(v6 + 2))(v6, 0, 0);
      }

      break;
    case 'd':
    case 'e':
    case 'f':
    case 'g':
    case 'h':
    case 'i':
    case 'l':
    case 'o':
      [*(a1 + 40) __handleActivity:*(a1 + 32)];
      break;
    default:
      if (v5 == 36)
      {
        [*(a1 + 40) __setThermalIndex:*(a1 + 32)];
      }

      else
      {
        if (v5 != 145)
        {
          goto LABEL_29;
        }

        [*(a1 + 40) __getDeviceUUID:*(a1 + 32)];
      }

      break;
  }

LABEL_15:
  objc_autoreleasePoolPop(v4);
}

id sub_100106868(uint64_t a1)
{
  sub_10001EDD0(*(*(a1 + 32) + 8), [objc_msgSend(*(a1 + 40) "UUID")]);
  v2 = [*(a1 + 32) __peerAssistedDiscoveryNetworksForUUID:{objc_msgSend(*(a1 + 40), "UUID")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v2 allKeys];
  result = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = sub_10000AD2C(kCFAllocatorDefault, [v2 objectForKeyedSubscript:v8]);
        if (v9)
        {
          v10 = v9;
          v11 = [*(a1 + 32) __deviceManagerWithInterfaceName:v8];
          if (v11)
          {
            sub_1000CEA50(v11, v8, v10, 0, 0);
          }

          CFRelease(v10);
        }

        [*(a1 + 32) __setPeerAssistedDiscoveryNetwork:0 interfaceName:v8 UUID:{objc_msgSend(*(a1 + 40), "UUID")}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      result = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

void sub_100106A50(id a1)
{
  if (objc_opt_class())
  {
    qword_100298AC0 = objc_alloc_init(WiFiAppStateManager);
  }
}

void sub_100106AE4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    [a2 externalAppUnregistered:a5];
  }
}

void sub_100106ED8(uint64_t a1)
{
  (*(*(a1 + 32) + 120))(*(*(a1 + 32) + 112), *(*(*(a1 + 40) + 8) + 24));
  v2 = *(*(*(a1 + 40) + 8) + 24);
  if (v2)
  {
    CFRelease(v2);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void sub_100107610(uint64_t a1)
{
  -[WiFiUserInteractionMonitor setApplicationRunningState:foregroundState:andNetworkingState:forBundleId:](+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor, "sharedInstance"), "setApplicationRunningState:foregroundState:andNetworkingState:forBundleId:", *(a1 + 52), *(a1 + 53), [*(a1 + 32) _appUsesWiFiNetwork:*(a1 + 48)], *(*(*(a1 + 40) + 8) + 40));
  v2 = *(*(*(a1 + 40) + 8) + 40);
}

void sub_1001076AC(uint64_t a1)
{
  (*(*(a1 + 32) + 136))(*(*(a1 + 32) + 128), *(*(*(a1 + 40) + 8) + 24));
  v2 = *(*(*(a1 + 40) + 8) + 24);
  if (v2)
  {
    CFRelease(v2);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void sub_100107700(uint64_t a1)
{
  (*(*(a1 + 32) + 136))(*(*(a1 + 32) + 128), *(*(*(a1 + 40) + 8) + 24));
  v2 = *(*(*(a1 + 40) + 8) + 24);
  if (v2)
  {
    CFRelease(v2);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void sub_100107B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100107BA8(uint64_t a1)
{
  v2 = CFNumberCreate(0, kCFNumberIntType, (a1 + 40));
  (*(*(a1 + 32) + 96))(*(*(a1 + 32) + 88), v2);
  if (v2)
  {

    CFRelease(v2);
  }
}

void sub_100107C10(uint64_t a1)
{
  v2 = CFNumberCreate(0, kCFNumberIntType, (a1 + 40));
  (*(*(a1 + 32) + 96))(*(*(a1 + 32) + 88), v2);
  if (v2)
  {

    CFRelease(v2);
  }
}

void sub_100107C78(uint64_t a1)
{
  (*(*(a1 + 32) + 64))(*(*(a1 + 32) + 56), *(a1 + 48), *(*(*(a1 + 40) + 8) + 24));
  v2 = *(*(*(a1 + 40) + 8) + 24);
  if (v2)
  {
    CFRelease(v2);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

uint64_t sub_100108138(uint64_t a1)
{
  qword_100298AD0 = [[WiFiDriverTriggeredTTR alloc] initWithWiFiManagerwithStringRef:*(a1 + 32) withInterval:*(a1 + 40)];

  return _objc_release_x1();
}

void sub_100108850(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s _WiFiDriverTriggeredTTRHandler askToLaunchTapToRadarWithMessage result:%@, error:%@", "-[WiFiDriverTriggeredTTR WiFiDriverTriggeredTTRForReason:]_block_invoke", v11, v5}];
  }

  objc_autoreleasePoolPop(v6);
  v7 = [v5 userInfo];
  v8 = [v7 objectForKey:@"deviceNotInteractive"];

  if (v8)
  {
    v9 = [v5 userInfo];
    v10 = [v9 objectForKey:@"deviceNotInteractive"];
    *(*(*(a1 + 32) + 8) + 24) = [v10 BOOLValue];
  }
}

void sub_10010895C(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s WiFiDextCrashSoftError tapToRadarWithURL result:%@, error:%@", "-[WiFiDriverTriggeredTTR WiFiDriverTriggeredTTRForReason:]_block_invoke_2", v11, v5}];
  }

  objc_autoreleasePoolPop(v6);
  v7 = [v5 userInfo];
  v8 = [v7 objectForKey:@"deviceNotInteractive"];

  if (v8)
  {
    v9 = [v5 userInfo];
    v10 = [v9 objectForKey:@"deviceNotInteractive"];
    *(*(*(a1 + 32) + 8) + 24) = [v10 BOOLValue];
  }
}

void sub_100108DEC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "__WiFiWatchdogAsyncEventHandler";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: ENTER", buf, 0xCu);
  }

  if (a3)
  {
    v5 = *a3;
    if (*a3)
    {
      switch(v5)
      {
        case 3:
          memset(v15, 0, 111);
          *buf = 0u;
          __memcpy_chk();
          HIBYTE(v15[6]) = 10;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v8 = 136315394;
            v9 = "__WiFiWatchdogAsyncEventHandler";
            v10 = 2080;
            v11 = buf;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: Watchdog reason string %s\n", &v8, 0x16u);
          }

          [v4 handleWatchdog:buf];
          break;
        case 2:
          memset(&v15[13] + 1, 0, 31);
          *(&v15[12] + 1) = 0u;
          *(&v15[11] + 1) = 0u;
          *(&v15[10] + 1) = 0u;
          *(&v15[9] + 1) = 0u;
          *(&v15[8] + 1) = 0u;
          *(&v15[7] + 1) = 0u;
          memset(v15 + 1, 0, 112);
          v6 = *(a3 + 8);
          *buf = *(a3 + 16);
          LOBYTE(v15[0]) = 10;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v8 = 136315650;
            v9 = "__WiFiWatchdogAsyncEventHandler";
            v10 = 2080;
            v11 = buf;
            v12 = 2048;
            v13 = v6;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: cpuName %s crashID %llu", &v8, 0x20u);
          }

          v7 = [NSString stringWithCString:buf encoding:4];
          [v4 handleCrashNotificationWithID:v6 andCPUName:v7];

          break;
        case 1:
          [v4 handleWatchdogTriggered];
          break;
        default:
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_1001AAB9C(a3);
          }

          break;
      }
    }

    else
    {
      sub_1001AAC30();
    }
  }

  else
  {
    sub_1001AACCC();
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "__WiFiWatchdogAsyncEventHandler";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: LEAVE", buf, 0xCu);
  }
}

void sub_100109118(void *a1)
{
  v1 = a1;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "__WiFiWatchdogMonitorWatchdogTriggeredCallback";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: ENTER", &v2, 0xCu);
  }

  [v1 handleWatchdogTriggered];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "__WiFiWatchdogMonitorWatchdogTriggeredCallback";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: LEAVE", &v2, 0xCu);
  }
}

void sub_100109220(void *a1, io_iterator_t a2)
{
  v3 = a1;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "__WiFiWatchdogMonitorWatchdogCrashIDCallback";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: ENTER", buf, 0xCu);
  }

  v4 = IOIteratorNext(a2);
  if (v4)
  {
    v5 = v4;
    do
    {
      CFProperty = IORegistryEntryCreateCFProperty(v5, @"CrashIDNotification", kCFAllocatorDefault, 0);
      v7 = CFProperty;
      if (CFProperty)
      {
        v8 = [CFProperty objectForKeyedSubscript:@"assertId"];
        v9 = [v8 unsignedIntegerValue];
        v10 = [v7 objectForKeyedSubscript:@"cpu"];
        [v3 handleCrashNotificationWithID:v9 andCPUName:v10];
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v12 = "__WiFiWatchdogMonitorWatchdogCrashIDCallback";
        v13 = 2080;
        v14 = "assertId";
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: %s not found", buf, 0x16u);
      }

      IOObjectRelease(v5);

      v5 = IOIteratorNext(a2);
    }

    while (v5);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "__WiFiWatchdogMonitorWatchdogCrashIDCallback";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: LEAVE", buf, 0xCu);
  }
}

void sub_100109DB0(uint64_t a1)
{
  [*(a1 + 32) setWatchdogStartedTimestamp:0];
  v2 = *(a1 + 32);
  v3 = v2[5];
  if (v3)
  {
    munmap(v3, v2[6]);
    *(*(a1 + 32) + 40) = 0;
    *(*(a1 + 32) + 48) = 0;
    v2 = *(a1 + 32);
  }

  v4 = v2[4];
  v2[4] = 0;
}

uint64_t sub_10010A0D4()
{
  result = qword_100298AE0;
  if (!qword_100298AE0)
  {
    pthread_once(&stru_100297C90, sub_10010A11C);
    return qword_100298AE0;
  }

  return result;
}

uint64_t sub_10010A11C()
{
  result = _CFRuntimeRegisterClass();
  qword_100298AE0 = result;
  return result;
}

uint64_t sub_10010A144(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 32) = a2;
  *(result + 40) = a3;
  return result;
}

void sub_10010A14C(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = dispatch_time(0, 500000000);
    dispatch_source_set_timer(v2, v3, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  *(a1 + 72) = 1;
}

void sub_10010A1A0(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_source_set_timer(v2, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  *(a1 + 72) = 0;
}

void sub_10010A1DC(void *context, dispatch_queue_t queue, void (__cdecl *a3)(void *), void *a4)
{
  *(context + 6) = queue;
  v8 = *(context + 7);
  if (v8 || (v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue), (*(context + 7) = v8) != 0))
  {
    dispatch_set_context(v8, context);
    dispatch_source_set_event_handler_f(*(context + 7), sub_1001AB4E8);
    dispatch_activate(*(context + 7));
  }

  v9 = *(context + 8);
  if (v9 || (v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue), (*(context + 8) = v9) != 0))
  {
    dispatch_set_context(v9, a4);
    dispatch_source_set_event_handler_f(*(context + 8), a3);
    v10 = *(context + 8);

    dispatch_activate(v10);
  }
}

void sub_10010A2C4(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(a1 + 56));
    *(a1 + 56) = 0;
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    dispatch_source_cancel(v3);
    dispatch_release(*(a1 + 64));
    *(a1 + 64) = 0;
  }

  *(a1 + 48) = 0;
}

void sub_10010A318(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 80) = 0;
  }
}

WiFiSmartCoverStateObserver *sub_10010A5F4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  if (!a1)
  {
    sub_1001AB850();
LABEL_10:
    v8 = 0;
    goto LABEL_5;
  }

  if (!a3)
  {
    sub_1001AB7E4();
    goto LABEL_10;
  }

  v7 = objc_alloc_init(WiFiSmartCoverStateObserver);
  v8 = v7;
  if (v7)
  {
    [(WiFiSmartCoverStateObserver *)v7 setManager:a1];
    [(WiFiSmartCoverStateObserver *)v8 setSmartCoverStateChangeCb:a3];
    [(WiFiSmartCoverStateObserver *)v8 setQueue:v5];
    [(WiFiSmartCoverStateObserver *)v8 registerSmartCoverStateCallback];
  }

  else
  {
    sub_1001AB778();
  }

LABEL_5:
  objc_autoreleasePoolPop(v6);

  return v8;
}

uint64_t sub_10010A7C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100298AF0 = result;
  return result;
}

void sub_10010ADCC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10010ADE8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _kvsDidChangeWithKeys:v5 isExternal:a3];
}

void sub_10010B3BC(id a1)
{
  if (objc_opt_class())
  {
    qword_100298AF8 = [[WiFiManagerAnalytics alloc] _initPrivate];

    _objc_release_x1();
  }
}

void sub_10010B4D4(id a1, id a2, NSError *a3)
{
  v6 = a2;
  v4 = a3;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"Failed to register for WAGroupTypeWiFi with the WA daemon (wifianalyticsd). Error code: %ld. *** All message/metric submission is likely broken.", -[NSError code](v4, "code")}];
    }

    objc_autoreleasePoolPop(v5);
  }
}

void sub_10010B570(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"Failed to register for WAGroupTypeWiFi with the WA daemon (wifianalyticsd). Error code: %ld. *** All message/metric submission is likely broken.", objc_msgSend(v5, "code")}];
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    [*(a1 + 32) setHasRegisteredWithDaemon:1];
  }
}

void sub_10010B8D8(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = off_100298C40;
  if (v5)
  {
    if (off_100298C40)
    {
      v8 = [*(a1 + 32) key];
      [v7 WFLog:4 message:{"FAILED to submit datapath diagnostics message with key: %@. Error: %@", v8, v5}];
    }
  }

  else if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s Successfully submitted WiFiDiagnostics instance", "-[WiFiManagerAnalytics triggerDatapathDiagnosticsNoReply:]_block_invoke"}];
  }

  objc_autoreleasePoolPop(v6);
}

void sub_10010BA78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10010BA9C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([v5 code] == 9009)
  {
    [WeakRetained _register];
  }

  else if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:"FAILED to set Device Analytics config."];
    }

    objc_autoreleasePoolPop(v7);
  }
}

void sub_10010BC08(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"Failed to trigger perf study! Error: %@ -  %s", v5, "-[WiFiManagerAnalytics getDeviceAnalyticsConfigurationWithCompletion:]_block_invoke"}];
    }

LABEL_4:
    objc_autoreleasePoolPop(v6);
    v7 = 0;
    goto LABEL_7;
  }

  if (!v10)
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s result is nil", "-[WiFiManagerAnalytics getDeviceAnalyticsConfigurationWithCompletion:]_block_invoke", v9}];
    }

    goto LABEL_4;
  }

  v7 = [NSDictionary dictionaryWithDictionary:?];
LABEL_7:
  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v7);
  }
}

void sub_10010BDCC(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"Failed to trigger DeviceAnalyticsStore! Error: %@ -  %s", v5, "-[WiFiManagerAnalytics triggerDeviceAnalyticsStoreMigrationWithCompletion:]_block_invoke"}];
    }

    objc_autoreleasePoolPop(v6);
    if ([v5 code] == 9009)
    {
      [*(a1 + 32) _register];
    }

LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  if (!v12)
  {
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s result for triggerDeviceAnalyticsStoreMigration is nil", "-[WiFiManagerAnalytics triggerDeviceAnalyticsStoreMigrationWithCompletion:]_block_invoke"}];
    }

    objc_autoreleasePoolPop(v10);
    goto LABEL_15;
  }

  v7 = [v12 BOOLValue];
  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v9 = "NO";
    if (v7)
    {
      v9 = "YES";
    }

    [off_100298C40 WFLog:4 message:{"%s triggerDeviceAnalyticsStoreMigration success? %s", "-[WiFiManagerAnalytics triggerDeviceAnalyticsStoreMigrationWithCompletion:]_block_invoke", v9}];
  }

  objc_autoreleasePoolPop(v8);
LABEL_16:
  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v7);
  }
}

void sub_10010C118(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"standard reply produced a null message.. identifier: %u", *(a1 + 48)}];
    }

    objc_autoreleasePoolPop(v7);
  }

  if (*(a1 + 40))
  {
    v8 = [*(a1 + 32) serialQ];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10010C250;
    block[3] = &unk_100262AE0;
    v9 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v13 = v9;
    v11 = v5;
    v12 = v6;
    dispatch_async(v8, block);
  }

  else
  {
    sub_1001ABEC0(a1);
  }
}

void sub_10010C250(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = [objc_opt_class() instanceMethodSignatureForSelector:"_runReplyBlock:withMessage:andError:"];
  v5 = [NSInvocation invocationWithMethodSignature:v4];

  [v5 setSelector:"_runReplyBlock:withMessage:andError:"];
  [v5 setTarget:a1[4]];
  if (a1[7])
  {
    [v5 setArgument:a1 + 7 atIndex:2];
  }

  if (a1[5])
  {
    [v5 setArgument:a1 + 5 atIndex:3];
  }

  v6 = a1 + 6;
  if (a1[6])
  {
    [v5 setArgument:v6 atIndex:4];
  }

  [v5 retainArguments];
  v7 = *(a1[4] + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010C3CC;
  block[3] = &unk_10025E9B8;
  v11 = v5;
  v8 = v5;
  v9 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_BACKGROUND, 0, block);
  dispatch_sync(v7, v9);

  objc_autoreleasePoolPop(v2);
}

void sub_10010C3D4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 56);
  if (v3 <= 11075585)
  {
    if (v3 == 11075584)
    {
      [*(a1 + 32) _populateDPSNotificationMessage:*(a1 + 48) andReply:*(a1 + 40)];
      goto LABEL_15;
    }

    if (v3 == 11075585)
    {
      [*(a1 + 32) _populateDPSProbeResultMessage:*(a1 + 48) andReply:*(a1 + 40)];
      goto LABEL_15;
    }
  }

  else
  {
    switch(v3)
    {
      case 11075586:
        [*(a1 + 32) _populateDPSLinkStateChangeMessage:*(a1 + 48) andReply:*(a1 + 40)];
        goto LABEL_15;
      case 11075587:
        [*(a1 + 32) _populateDPSAPInfoMessage:*(a1 + 48) andReply:*(a1 + 40)];
        goto LABEL_15;
      case 11075588:
        [*(a1 + 32) _populateSlowWiFiNotificationMessage:*(a1 + 48) andReply:*(a1 + 40)];
        goto LABEL_15;
    }
  }

  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"[WiFiManagerAnalytics prepareMessageForSubmission] Unhandled message ID: %u", *(a1 + 56)}];
  }

  objc_autoreleasePoolPop(v4);
LABEL_15:

  objc_autoreleasePoolPop(v2);
}

void sub_10010C774(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: getNewMessageForKey DPSN message error: %@", "-[WiFiManagerAnalytics _populateDPSNotificationMessage:andReply:]_block_invoke", v6}];
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    BOOLean = 0;
    value = 0;
    if (CFDictionaryGetValueIfPresent(*(a1 + 40), @"symptom", &value))
    {
      if (value)
      {
        LODWORD(valuePtr[0]) = 0;
        CFNumberGetValue(value, kCFNumberSInt32Type, valuePtr);
        v8 = [v5 fieldForKey:@"DPSN_symptom"];
        [v8 setInt32Value:LODWORD(valuePtr[0])];
      }

      if (CFDictionaryGetValueIfPresent(*(a1 + 40), @"DPS_AC", &value) && value)
      {
        LODWORD(valuePtr[0]) = 0;
        CFNumberGetValue(value, kCFNumberSInt32Type, valuePtr);
        v9 = [v5 fieldForKey:@"DPSN_problemAC"];
        [v9 setUint32Value:LODWORD(valuePtr[0])];
      }

      if (CFDictionaryGetValueIfPresent(*(a1 + 40), @"DPS_CCA", &value) && value)
      {
        LODWORD(valuePtr[0]) = 0;
        CFNumberGetValue(value, kCFNumberSInt32Type, valuePtr);
        v10 = [v5 fieldForKey:@"DPSN_cca"];
        [v10 setUint32Value:LODWORD(valuePtr[0])];
      }

      if (CFDictionaryGetValueIfPresent(*(a1 + 40), @"DPS_TIMESTAMP", &value) && value)
      {
        valuePtr[0] = 0;
        CFNumberGetValue(value, kCFNumberLongLongType, valuePtr);
        v11 = [v5 fieldForKey:@"DPSN_timestamp"];
        [v11 setUint64Value:valuePtr[0]];
      }

      v12 = 0;
      valuePtr[0] = @"DPS_BE_TRID";
      valuePtr[1] = @"DPS_BK_TRID";
      valuePtr[2] = @"DPS_VI_TRID";
      valuePtr[3] = @"DPS_VO_TRID";
      v25[0] = @"DPSN_txBETrId";
      v25[1] = @"DPSN_txBKTrId";
      v25[2] = @"DPSN_txVITrId";
      v25[3] = @"DPSN_txVOTrId";
      do
      {
        v13 = valuePtr[v12];
        v14 = v25[v12];
        if (CFDictionaryGetValueIfPresent(*(a1 + 40), v13, &value))
        {
          v15 = value == 0;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          v22 = 0;
          CFNumberGetValue(value, kCFNumberSInt32Type, &v22);
          v16 = [v5 fieldForKey:v14];
          [v16 setUint32Value:v22];
        }

        ++v12;
      }

      while (v12 != 4);
      if (CFDictionaryGetValueIfPresent(*(a1 + 40), @"DPS_ISNAN_ENABLED", &BOOLean))
      {
        if (BOOLean)
        {
          v17 = CFBooleanGetValue(BOOLean);
          v18 = [v5 fieldForKey:@"DPSN_isNANEnabled"];
          [v18 setBoolValue:v17 != 0];
        }

        BOOLean = 0;
      }

      if (CFDictionaryGetValueIfPresent(*(a1 + 40), @"facetimeCallInProgress", &BOOLean) && BOOLean)
      {
        v19 = CFBooleanGetValue(BOOLean);
        v20 = [v5 fieldForKey:@"DPSN_facetimeCallInProgress"];
        [v20 setBoolValue:v19 != 0];
      }

      for (i = 3; i != -1; --i)
      {
      }
    }

    else
    {
      sub_1001ABFA0();
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10010CC08(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: getNewMessageForKey DPSAPS message error: %@", "-[WiFiManagerAnalytics _populateDPSProbeResultMessage:andReply:]_block_invoke", v5}];
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v7 = [v15 fieldForKey:@"DPSAPS_rttGatewayBE"];
    [v7 setUint32Value:**(a1 + 40)];

    v8 = [v15 fieldForKey:@"DPSAPS_rttGatewayBK"];
    [v8 setUint32Value:*(*(a1 + 40) + 4)];

    v9 = [v15 fieldForKey:@"DPSAPS_rttGatewayVO"];
    [v9 setUint32Value:*(*(a1 + 40) + 8)];

    v10 = [v15 fieldForKey:@"DPSAPS_rttGatewayVI"];
    [v10 setUint32Value:*(*(a1 + 40) + 12)];

    v11 = [v15 fieldForKey:@"DPSAPS_rttPrimaryDnsBE"];
    [v11 setUint32Value:0];

    v12 = [v15 fieldForKey:@"DPSAPS_rttPrimaryDnsBK"];
    [v12 setUint32Value:0];

    v13 = [v15 fieldForKey:@"DPSAPS_rttPrimaryDnsVO"];
    [v13 setUint32Value:0];

    v14 = [v15 fieldForKey:@"DPSAPS_rttPrimaryDnsVI"];
    [v14 setUint32Value:0];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10010CEB4(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: getNewMessageForKey WFAAWDWADAAD message error: %@", "-[WiFiManagerAnalytics _populateDPSLinkStateChangeMessage:andReply:]_block_invoke", v5}];
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v7 = [v14 fieldForKey:@"WFAAWDWADAAD_newBSSID"];
    [v7 setBoolValue:*(*(a1 + 40) + 1) != 0];

    v8 = [v14 fieldForKey:@"WFAAWDWADAAD_changedChannel"];
    [v8 setBoolValue:*(*(a1 + 40) + 2) != 0];

    v9 = [v14 fieldForKey:@"WFAAWDWADAAD_changedDNSPrimary"];
    [v9 setBoolValue:**(a1 + 40) != 0];

    v10 = [v14 fieldForKey:@"WFAAWDWADAAD_changedDNSSecondary"];
    [v10 setBoolValue:**(a1 + 40) != 0];

    v11 = [v14 fieldForKey:@"WFAAWDWADAAD_changedMAC"];
    [v11 setBoolValue:*(*(a1 + 40) + 3) != 0];

    v12 = [v14 fieldForKey:@"WFAAWDWADAAD_eventType"];
    [v12 setInt32Value:*(*(a1 + 40) + 8)];

    v13 = [v14 fieldForKey:@"WFAAWDWADAAD_additionalInfo"];
    [v13 setUint32Value:*(*(a1 + 40) + 12)];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10010D170(uint64_t a1, void *a2, void *a3)
{
  v22 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  if (v5)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: getNewMessageForKey WFAAWDWAAAPI message error: %@", "-[WiFiManagerAnalytics _populateDPSAPInfoMessage:andReply:]_block_invoke", v5}];
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"Got WFAAWDWAAAPI WAGroupTypeWiFiDatapathDiagnostics WAMessage"];
    }

    objc_autoreleasePoolPop(v6);
    Value = CFDictionaryGetValue(*(a1 + 40), @"ManufacturerElement");
    if (Value)
    {
      v8 = Value;
      v9 = [v22 fieldForKey:@"WFAAWDWAAAPI_manufacturerElement"];
      [v9 setStringValue:v8];
    }

    v10 = CFDictionaryGetValue(*(a1 + 40), @"ModelName");
    if (v10)
    {
      v11 = v10;
      v12 = [v22 fieldForKey:@"WFAAWDWAAAPI_modelName"];
      [v12 setStringValue:v11];
    }

    v13 = CFDictionaryGetValue(*(a1 + 40), @"ModelNumber");
    if (v13)
    {
      v14 = v13;
      v15 = [v22 fieldForKey:@"WFAAWDWAAAPI_modelNumber"];
      [v15 setStringValue:v14];
    }

    v16 = CFDictionaryGetValue(*(a1 + 40), @"DeviceNameElement");
    if (v16)
    {
      v17 = v16;
      v18 = [v22 fieldForKey:@"WFAAWDWAAAPI_deviceNameElement"];
      [v18 setStringValue:v17];
    }

    v19 = CFDictionaryGetValue(*(a1 + 40), @"DeviceNameData");
    if (v19)
    {
      v20 = v19;
      v21 = [v22 fieldForKey:@"WFAAWDWAAAPI_deviceNameData"];
      [v21 setStringValue:v20];
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10010D434(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: getNewMessageForKey WFAAWDSWFN message error: %@", "-[WiFiManagerAnalytics _populateSlowWiFiNotificationMessage:andReply:]_block_invoke", v6}];
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    BOOLean = 0;
    value = 0;
    if (CFDictionaryGetValueIfPresent(*(a1 + 40), @"SLOWWIFI_ACTION_STAGE", &value))
    {
      v8 = value == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      valuePtr = 0;
      CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr);
      v9 = [v5 fieldForKey:@"WFAAWDSWFN_actionField"];
      [v9 setUint32Value:valuePtr];
    }

    if (CFDictionaryGetValueIfPresent(*(a1 + 40), @"SLOWWIFI_ACTION_TYPE", &value) && value)
    {
      valuePtr = 0;
      CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr);
      v10 = [v5 fieldForKey:@"WFAAWDSWFN_recoveryAction"];
      [v10 setUint32Value:valuePtr];
    }

    if (CFDictionaryGetValueIfPresent(*(a1 + 40), @"SLOWWIFI_ACTION_REASON", &value) && value)
    {
      valuePtr = 0;
      CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr);
      v11 = [v5 fieldForKey:@"WFAAWDSWFN_recoveryReason"];
      [v11 setUint32Value:valuePtr];
    }

    if (CFDictionaryGetValueIfPresent(*(a1 + 40), @"SLOWWIFI_USER_INPUT", &value) && value)
    {
      valuePtr = 0;
      CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr);
      v12 = [v5 fieldForKey:@"WFAAWDSWFN_userInput"];
      [v12 setUint32Value:valuePtr];
    }

    if (CFDictionaryGetValueIfPresent(*(a1 + 40), @"facetimeCallInProgress", &BOOLean) && BOOLean)
    {
      v13 = CFBooleanGetValue(BOOLean);
      v14 = [v5 fieldForKey:@"WFAAWDSWFN_facetimeCallInProgress"];
      [v14 setBoolValue:v13 != 0];
    }
  }

  (*(*(a1 + 32) + 16))();
}

id sub_10010D744(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Enter", "WiFiMissingPasswordSoftErrorHandler"}];
  }

  objc_autoreleasePoolPop(v3);
  if (v2)
  {
    v4 = [v2 incrementCount];
  }

  v5 = [NSString stringWithFormat:@"Password for WiFi network '%@' is not in the keychain. If you did not recently delete or forget this network, please tap Yes to TTR and use Add Devices to collect data from *all* devices", sub_10000A878(v1)];
  v6 = [v2 askToLaunchTapToRadarWithMessage:v5 timeout:&stru_100262B98 completionHandler:60.0];
  if (v6)
  {
    v7 = [NSURL URLWithString:@"tap-to-radar://new?Title=WiFi%20Password%20Missing%20From%20Keychain&AutoDiagnostics=phone&Description=WiFi%20Password%20Missing%20From%20Keychain&ComponentID=621547&ComponentName=WiFi%20Connectivity&ComponentVersion=iOS&Classification=Serious%20Bug%20&ExtensionIdentifiers=com.apple.DiagnosticExtensions.WiFi"];
    v8 = [v2 tapToRadarWithURL:v7 completionHandler:&stru_100262BB8];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: User declined the TTR", "WiFiMissingPasswordSoftErrorHandler"}];
    }

    objc_autoreleasePoolPop(v9);
  }

  return v6;
}

void sub_10010D8A4(id a1, NSDictionary *a2, NSError *a3)
{
  v6 = a2;
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: askToLaunchTapToRadarWithMessage result:%@, error:%@", "WiFiMissingPasswordSoftErrorHandler_block_invoke", v6, v4}];
  }

  objc_autoreleasePoolPop(v5);
}

void sub_10010D938(id a1, NSDictionary *a2, NSError *a3)
{
  v6 = a2;
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: WiFiMissingPasswordSoftError tapToRadarWithURL result:%@, error:%@", "WiFiMissingPasswordSoftErrorHandler_block_invoke_2", v6, v4}];
  }

  objc_autoreleasePoolPop(v5);
}

uint64_t sub_10010DA48()
{
  result = qword_100298B08;
  if (!qword_100298B08)
  {
    pthread_once(&stru_100297D00, sub_10010DA90);
    return qword_100298B08;
  }

  return result;
}

uint64_t sub_10010DA90()
{
  result = _CFRuntimeRegisterClass();
  qword_100298B08 = result;
  return result;
}

BOOL sub_10010DAB8(uint64_t a1, CFTypeRef cf)
{
  v3 = CFRetain(cf);
  *(a1 + 16) = v3;
  return v3 != 0;
}

BOOL sub_10010DAEC(uint64_t a1, CFTypeRef cf)
{
  v3 = CFRetain(cf);
  *(a1 + 24) = v3;
  return v3 != 0;
}

BOOL sub_10010DB20(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  *(a1 + 32) = Current;
  return Current != 0.0;
}

uint64_t sub_10010DB58(uint64_t a1, uint64_t a2)
{
  result = CFEqual(*(a1 + 16), *(a2 + 16));
  if (result)
  {
    result = CFEqual(*(a1 + 24), *(a2 + 24));
    if (result)
    {
      return *(a1 + 32) == *(a2 + 32);
    }
  }

  return result;
}

void sub_10010DE64()
{
  sub_10010DEB4();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_10010E180, @"com.apple.language.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void sub_10010DEB4()
{
  v0 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, @"/System/Library/PrivateFrameworks/MobileWiFi.framework", kCFURLPOSIXPathStyle, 0);
  v1 = CFBundleCreate(kCFAllocatorDefault, v0);
  if (v0)
  {
    CFRelease(v0);
  }

  if (v1)
  {
    CFPreferencesSynchronize(@".GlobalPreferences", @"mobile", kCFPreferencesAnyHost);
    if (qword_100298B18)
    {
      CFRelease(qword_100298B18);
    }

    qword_100298B18 = v1;
    v2 = CFPreferencesCopyValue(@"AppleLanguages", @".GlobalPreferences", @"mobile", kCFPreferencesAnyHost);
    if (v2)
    {
      goto LABEL_10;
    }

    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"could not get apple languages array, assuming english\n"}];
    }

    objc_autoreleasePoolPop(v3);
    v2 = CFArrayCreate(kCFAllocatorDefault, &off_100262C50, 1, &kCFTypeArrayCallBacks);
    if (v2)
    {
LABEL_10:
      v4 = v2;
      v5 = CFBundleCopyBundleLocalizations(v1);
      if (!v5)
      {
        v10 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:"could not get localizations array from bundle\n"];
        }

        objc_autoreleasePoolPop(v10);
        v11 = v4;
LABEL_32:

        CFRelease(v11);
        return;
      }

      v6 = v5;
      v7 = CFBundleCopyLocalizationsForPreferences(v5, v4);
      v8 = v7;
      if (v7)
      {
        if (CFArrayGetCount(v7))
        {
          if (qword_100298B10)
          {
            CFRelease(qword_100298B10);
            qword_100298B10 = 0;
          }

          qword_100298B10 = CFArrayGetValueAtIndex(v8, 0);
          CFRetain(qword_100298B10);
          v9 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: preferred language='%@'", "WiFiLocalizationUpdatePreferredLanguage", qword_100298B10}];
          }

          goto LABEL_30;
        }

        v9 = objc_autoreleasePoolPush();
        v12 = off_100298C40;
        if (off_100298C40)
        {
          v13 = "no localizations for preferred languages\n";
          goto LABEL_29;
        }
      }

      else
      {
        v9 = objc_autoreleasePoolPush();
        v12 = off_100298C40;
        if (off_100298C40)
        {
          v13 = "could not get localizations for preferred languages\n";
LABEL_29:
          [v12 WFLog:3 message:{v13, v15, v16}];
        }
      }

LABEL_30:
      objc_autoreleasePoolPop(v9);
      CFRelease(v4);
      CFRelease(v6);
      if (!v8)
      {
        return;
      }

      v11 = v8;
      goto LABEL_32;
    }

    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"could not use english as default language\n"];
    }

    objc_autoreleasePoolPop(v14);
  }
}

void sub_10010E180()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"language changed - refresh preferred language"];
  }

  objc_autoreleasePoolPop(v0);

  sub_10010DEB4();
}

void sub_10010E1DC()
{
  if (qword_100298B10)
  {
    CFRelease(qword_100298B10);
    qword_100298B10 = 0;
  }

  if (qword_100298B18)
  {
    CFRelease(qword_100298B18);
    qword_100298B18 = 0;
  }
}

id sub_10010E234(uint64_t a1)
{
  if (qword_100298B10)
  {
    v2 = CFBundleCopyLocalizedStringForLocalization();
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: lang='%@' key='%@' value='%@'", "WiFiLocalizationGetLocalizedString", qword_100298B10, a1, v2}];
    }
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:"WiFiLocalizationGetLocalizedString"];
    }

    v2 = 0;
  }

  objc_autoreleasePoolPop(v3);

  return v2;
}

uint64_t sub_10010E31C()
{
  result = _CFRuntimeRegisterClass();
  qword_100298B20 = result;
  return result;
}

uint64_t sub_10010E34C(uint64_t a1, uint64_t a2, const __CFDictionary *a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  valuePtr = 6;
  v9 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCFIndexType, &valuePtr);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  if (!a3)
  {
    v35 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null intfDictionary.", "WiFiVirtualInterfaceCreateWithCompletion"}];
    }

    goto LABEL_33;
  }

  if (!a1)
  {
    v35 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null device.", "WiFiVirtualInterfaceCreateWithCompletion"}];
    }

    goto LABEL_33;
  }

  if (!qword_100298B20)
  {
    pthread_once(&stru_100297D70, sub_10010E31C);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    v35 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"Cannot create interface instance", v38}];
    }

LABEL_33:
    objc_autoreleasePoolPop(v35);
    goto LABEL_25;
  }

  v12 = Instance;
  Instance[1] = 0u;
  v13 = Instance + 1;
  Instance[13] = 0u;
  Instance[14] = 0u;
  Instance[11] = 0u;
  Instance[12] = 0u;
  Instance[9] = 0u;
  Instance[10] = 0u;
  Instance[7] = 0u;
  Instance[8] = 0u;
  Instance[5] = 0u;
  Instance[6] = 0u;
  Instance[3] = 0u;
  Instance[4] = 0u;
  Instance[2] = 0u;
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, a3);
  *(v13 + 2) = MutableCopy;
  if (!MutableCopy)
  {
    v32 = objc_autoreleasePoolPush();
    v33 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_24;
    }

    v34 = "Cannot create interface parameters dictionary copy";
    goto LABEL_23;
  }

  *(v12 + 24) = a1;
  *(v12 + 48) = a4;
  Value = CFDictionaryGetValue(MutableCopy, @"VIRT_IF_ROLE");
  if (!CFEqual(v10, Value))
  {
    v25 = *(v12 + 32);
    if (v25)
    {
      v26 = CFDictionaryGetValue(v25, @"VIRT_IF_NAME");
      *(v12 + 40) = v26;
      if (v26)
      {
        v27 = Apple80211Open();
        if (v27)
        {
          v36 = v27;
          v32 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"Cannot open 80211 device, err %d", v36}];
          }

          goto LABEL_24;
        }

        v28 = *(v12 + 16);
        v29 = *(v12 + 40);
        v30 = Apple80211BindToInterfaceWithParams();
        if (v30)
        {
          v37 = v30;
          v32 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"Cannot bind 80211 device, err %d", v37}];
          }

          goto LABEL_24;
        }

        v31 = sub_1001AC0C4(v12);
        *(v12 + 16) = v31;
        if (v31)
        {
          if (a5)
          {
            a5(a1, v12);
          }

          goto LABEL_10;
        }

        v32 = objc_autoreleasePoolPush();
        v33 = off_100298C40;
        if (!off_100298C40)
        {
          goto LABEL_24;
        }

        v34 = "Unable to start monitoring events";
        goto LABEL_23;
      }
    }

    else
    {
      *(v12 + 40) = 0;
    }

    v32 = objc_autoreleasePoolPush();
    v33 = off_100298C40;
    if (!off_100298C40)
    {
LABEL_24:
      objc_autoreleasePoolPop(v32);
      CFRelease(v10);
      v10 = v12;
LABEL_25:
      v12 = 0;
      goto LABEL_11;
    }

    v34 = "No virtual interface name returned.";
LABEL_23:
    [v33 WFLog:4 message:{v34, v38}];
    goto LABEL_24;
  }

  v16 = objc_alloc_init(WiFiVirtualInterfaceWeakWrapper);
  *(v12 + 216) = v16;
  [(WiFiVirtualInterfaceWeakWrapper *)v16 setVirtualInterface:v12];
  objc_initWeak(&location, *(v12 + 216));
  *(v12 + 200) = objc_alloc_init(AWDLServiceDiscoveryManager);
  *(v12 + 192) = objc_alloc_init(WiFiP2PAWDLStateMonitor);
  v17 = [WiFiP2PDNSServiceDiscoveryManager alloc];
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_10010EA70;
  v51[3] = &unk_100262C88;
  v51[4] = a4;
  objc_copyWeak(&v52, &location);
  *(v12 + 208) = [v17 initUsingWiFiAware:0 serviceCallback:v51];
  *(v12 + 184) = 0;
  v18 = *(v12 + 192);
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_10010EB9C;
  v49[3] = &unk_100262CD8;
  v49[4] = a4;
  objc_copyWeak(v50, &location);
  v50[1] = a5;
  [v18 setStateUpdatedHandler:v49];
  v19 = *(v12 + 192);
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10010ED9C;
  v47[3] = &unk_100262D00;
  v47[4] = a4;
  objc_copyWeak(&v48, &location);
  [v19 setStatisticsUpdatedHandler:v47];
  v20 = *(v12 + 192);
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_10010EEC4;
  v45[3] = &unk_100262D50;
  v45[4] = a4;
  objc_copyWeak(&v46, &location);
  [v20 setRealtimeModeUpdatedHandler:v45];
  v21 = *(v12 + 192);
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_10010F020;
  v43[3] = &unk_100262DA0;
  v43[4] = a4;
  objc_copyWeak(&v44, &location);
  [v21 setThreadCoexistenceEventHandler:v43];
  v22 = *(v12 + 192);
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_10010F128;
  v41[3] = &unk_100262DF0;
  v41[4] = a4;
  objc_copyWeak(&v42, &location);
  [v22 setSoftAPChannelChangedEventHandler:v41];
  v23 = *(v12 + 192);
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100034978;
  v39[3] = &unk_100262E40;
  v39[4] = a4;
  objc_copyWeak(&v40, &location);
  [v23 setChannelSequenceUpdatedEventHandler:v39];
  [*(v12 + 192) beginMonitoring];
  objc_destroyWeak(&v40);
  objc_destroyWeak(&v42);
  objc_destroyWeak(&v44);
  objc_destroyWeak(&v46);
  objc_destroyWeak(&v48);
  objc_destroyWeak(v50);
  objc_destroyWeak(&v52);
  objc_destroyWeak(&location);
LABEL_10:
  *(v12 + 232) = 0;
LABEL_11:
  CFRelease(v10);
  return v12;
}

void sub_10010E9C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v6 + 40));
  objc_destroyWeak((v5 + 40));
  objc_destroyWeak((v4 + 40));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v7 - 128));
  objc_destroyWeak((v7 - 120));
  _Unwind_Resume(a1);
}

void sub_10010EA70(uint64_t a1)
{
  v1 = *(a1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010EB00;
  block[3] = &unk_100262C60;
  objc_copyWeak(&v3, (a1 + 40));
  dispatch_async(v1, block);
  objc_destroyWeak(&v3);
}

void sub_10010EB00(uint64_t a1)
{
  v1 = [objc_loadWeak((a1 + 32)) virtualInterface];
  if (v1)
  {
    v2 = v1;
    cf = 0;
    v3 = sub_1001AC428(v1, &cf);
    v4 = v2[15];
    if (v4)
    {
      v5 = v3;
      v7 = v2[3];
      v6 = v2[4];
      if (v6)
      {
        Value = CFDictionaryGetValue(v6, @"VIRT_IF_NAME");
      }

      else
      {
        Value = 0;
      }

      v4(v7, Value, cf, v5, v2[16]);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void sub_10010EB9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010EC48;
  block[3] = &unk_100262CB0;
  objc_copyWeak(v7, (a1 + 40));
  v5 = *(a1 + 48);
  block[4] = v3;
  v7[1] = v5;
  dispatch_async(v4, block);
  objc_destroyWeak(v7);
}

void sub_10010EC48(uint64_t a1)
{
  v2 = [objc_loadWeak((a1 + 40)) virtualInterface];
  if (v2)
  {
    v3 = v2;
    v4 = v2[23];

    v5 = *(a1 + 32);
    *(v3 + 184) = v5;
    if (v5)
    {
      if (!v4)
      {
        CFDictionarySetValue(*(v3 + 32), @"VIRT_IF_NAME", [v5 interfaceName]);
        Value = *(v3 + 32);
        if (Value)
        {
          Value = CFDictionaryGetValue(Value, @"VIRT_IF_NAME");
        }

        *(v3 + 40) = Value;
        v8 = *(a1 + 48);
        if (v8)
        {
          v8(*(v3 + 24), v3);
        }

        sub_10014C12C(*(v3 + 24));
      }

      cf = 0;
      v9 = sub_1001AC428(v3, &cf);
      v10 = *(v3 + 104);
      if (v10)
      {
        v11 = v9;
        v13 = *(v3 + 24);
        v12 = *(v3 + 32);
        if (v12)
        {
          v14 = CFDictionaryGetValue(v12, @"VIRT_IF_NAME");
        }

        else
        {
          v14 = 0;
        }

        v10(v13, v14, cf, v11, *(v3 + 112));
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
  }
}

const void *sub_10010ED7C(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 32)) != 0)
  {
    return CFDictionaryGetValue(v1, @"VIRT_IF_NAME");
  }

  else
  {
    return 0;
  }
}

void sub_10010ED9C(uint64_t a1)
{
  v1 = *(a1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010EE2C;
  block[3] = &unk_100262C60;
  objc_copyWeak(&v3, (a1 + 40));
  dispatch_async(v1, block);
  objc_destroyWeak(&v3);
}

void sub_10010EE2C(uint64_t a1)
{
  v1 = [objc_loadWeak((a1 + 32)) virtualInterface];
  if (v1)
  {
    v2 = v1;
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: received APPLE80211_M_AWDL_STATISTICS event.", "__WiFiVirtualInterfaceProcessAwdlStatisticsEvent"}];
    }

    objc_autoreleasePoolPop(v3);
    v11 = v2[3];

    sub_10004FA0C(v11, v4, v5, v6, v7, v8, v9, v10);
  }
}

void sub_10010EEC4(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10010EF64;
  v4[3] = &unk_100262D28;
  objc_copyWeak(&v5, (a1 + 40));
  v6 = a2;
  dispatch_async(v3, v4);
  objc_destroyWeak(&v5);
}

void sub_10010EF64(uint64_t a1)
{
  v2 = [objc_loadWeak((a1 + 32)) virtualInterface];
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 40);
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: didStart %d", "__WiFiVirtualInterfaceProcessAWDLRealTimeModeEvent", v4}];
    }

    objc_autoreleasePoolPop(v5);
    v6 = v3[17];
    if (v6)
    {
      v7 = v3[3];
      v8 = v3[18];

      v6(v7, v4, v8);
    }
  }
}

void sub_10010F020(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10010F0C4;
  v5[3] = &unk_100262D78;
  objc_copyWeak(v6, (a1 + 40));
  v6[1] = v3;
  dispatch_async(v4, v5);
  objc_destroyWeak(v6);
}

void sub_10010F0C4(uint64_t a1)
{
  if ([objc_loadWeak((a1 + 32)) virtualInterface] && !*(a1 + 40))
  {
    sub_1001ACC3C();
  }

  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

void sub_10010F128(uint64_t a1, char a2, __int16 a3)
{
  v5 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10010F1D0;
  v6[3] = &unk_100262DC8;
  objc_copyWeak(&v7, (a1 + 40));
  v9 = a2;
  v8 = a3;
  dispatch_async(v5, v6);
  objc_destroyWeak(&v7);
}

void sub_10010F1D0(uint64_t a1)
{
  v2 = [objc_loadWeak((a1 + 32)) virtualInterface];
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  HIDWORD(v5) = *(a1 + 42);
  LOWORD(v6) = *(a1 + 40);
  if (v2)
  {
    v3 = v2;
    v4 = *(v2 + 4);
    if (v4)
    {
      CFDictionaryGetValue(v4, @"VIRT_IF_NAME");
    }

    sub_10010F244(v3, &v5);
  }
}

void sub_10010F244(void *a1, uint64_t a2)
{
  v3 = a1[19];
  if (v3)
  {
    v3(a1[3], *(a2 + 8), a1[20]);
  }

  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: received APPLE80211_M_SOFTAP_CH_CHANGED_EVENT(%u) event", "__WiFiVirtualInterfaceProcessSoftAPChannelChangedEvent", *(a2 + 8)}];
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_10010F2D4(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t sub_10010F2E0(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  if (!a1)
  {
    sub_1001ACD88();
    return 4294963396;
  }

  if (!cf)
  {
    sub_1001ACD1C();
    return 4294963396;
  }

  if (!a3)
  {
    sub_1001ACCB0();
    return 4294963396;
  }

  v5 = CFGetTypeID(cf);
  if (v5 == CFNumberGetTypeID() && *(a1 + 16))
  {
    valuePtr = 0;
    if (CFNumberGetValue(cf, kCFNumberIntType, &valuePtr))
    {
      for (i = 6; ; --i)
      {
        v7 = *(a1 + 16);
        result = Apple80211Set();
        if (result != -3905 && result != 61 && result != 16)
        {
          break;
        }

        if (!i)
        {
          break;
        }

        usleep(0x7A120u);
      }

      return result;
    }

    return 4294963396;
  }

  v10 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: unsupported key type for key %@", "WiFiVirtualInterfaceSetProperty", cf}];
  }

  objc_autoreleasePoolPop(v10);
  return 4294963393;
}

uint64_t sub_10010F400(uint64_t a1, int a2, uint64_t a3, CFNumberRef *a4)
{
  valuePtr = a2;
  if (*(a1 + 16))
  {
    for (i = 6; ; --i)
    {
      result = Apple80211CopyValue();
      if (result != -3905 && result != 61 && result != 16)
      {
        break;
      }

      if (!i)
      {
        break;
      }

      usleep(0x7A120u);
      v8 = *(a1 + 16);
    }
  }

  else if (a4)
  {
    v9 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    v10 = *(a1 + 24);
    v11 = sub_100006F88(v10);
    v12 = sub_100022108(v10, v11, v9);
    *a4 = v12;
    if (v9)
    {
      CFRelease(v9);
      v12 = *a4;
    }

    if (v12)
    {
      return 0;
    }

    else
    {
      return 4294963365;
    }
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_10010F4FC(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 4294963393;
  }

  for (i = 6; ; --i)
  {
    result = Apple80211GetInfoCopy();
    if (result != -3905 && result != 61 && result != 16)
    {
      break;
    }

    if (!i)
    {
      break;
    }

    usleep(0x7A120u);
    v4 = *(a1 + 16);
  }

  return result;
}

uint64_t sub_10010F574(uint64_t a1, unsigned int *a2)
{
  result = *(a1 + 184);
  if (result)
  {
    result = [result isEnabled];
    if (a2)
    {
      if (result)
      {
        *a2 = [*(a1 + 184) substate];
        v5 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: AWDL sync state is enabled with schedule state = %d", "WiFiVirtualInterfaceGetAwdlSyncState", *a2}];
        }

        objc_autoreleasePoolPop(v5);
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_10010F768(uint64_t a1, __CFDictionary **a2)
{
  if (a1 && (v4 = *(a1 + 32)) != 0)
  {
    Value = CFDictionaryGetValue(v4, @"VIRT_IF_ROLE");
    valuePtr = 0;
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
      if (valuePtr == 6)
      {
        sub_1001ACDF4(a1, a2, &v11);
        return v11;
      }
    }
  }

  else
  {
    valuePtr = 0;
  }

  for (i = 6; ; --i)
  {
    v8 = *(a1 + 16);
    result = Apple80211CopyCurrentNetwork();
    if (result != -3905 && result != 61 && result != 16)
    {
      break;
    }

    if (!i)
    {
      break;
    }

    usleep(0x7A120u);
  }

  return result;
}

uint64_t sub_10010F828(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 16))
  {
    for (i = 6; ; --i)
    {
      result = Apple80211GetPowerState();
      if (result != -3905 && result != 61 && result != 16)
      {
        break;
      }

      if (!i)
      {
        break;
      }

      usleep(0x7A120u);
      v6 = *(a1 + 16);
    }

    *a2 = -1431655766;
  }

  else
  {
    v7 = *(a1 + 24);
    v8 = sub_100006F88(v7);
    sub_100060E98(v7, v8);
    return 0;
  }

  return result;
}

void sub_10010F8D4(void *a1, uint64_t a2, __CFArray *a3, uint64_t a4)
{
  v9 = a1[9];
  v8 = a1[10];
  v10 = a1 + 9;
  v11 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Completed Apple80211ScanAsync on %@ (0x%x)", a2, a4}];
  }

  objc_autoreleasePoolPop(v11);
  if (a3)
  {
    v12 = CFGetTypeID(a3);
    if (v12 == CFArrayGetTypeID())
    {
      a3 = sub_10005894C(a3);
    }

    else
    {
      a3 = 0;
    }
  }

  *v10 = 0;
  v10[1] = 0;
  if (v9)
  {
    v9(a1[3], a2, a3, 0, a4, v8);
  }

  if (a3)
  {
    CFRelease(a3);
  }

  v13 = a1[3];

  sub_10002ECA0(v13);
}