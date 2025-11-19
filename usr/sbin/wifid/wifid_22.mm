const __CFNumber *sub_1001901C0(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null manager", "__WiFiDeviceManagerIsNetworkInMissingPasswordList"}];
    }

    goto LABEL_20;
  }

  if (!*(a1 + 3728))
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null networksMissingPassword", "__WiFiDeviceManagerIsNetworkInMissingPasswordList"}];
    }

    goto LABEL_20;
  }

  v4 = sub_10000A878(a2);
  if (!v4)
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null ssid", "__WiFiDeviceManagerIsNetworkInMissingPasswordList"}];
    }

LABEL_20:
    v10 = v11;
LABEL_11:
    objc_autoreleasePoolPop(v10);
    return 0;
  }

  v5 = v4;
  valuePtr = 0.0;
  result = CFDictionaryGetValue(*(a1 + 3728), v4);
  if (result)
  {
    CFNumberGetValue(result, kCFNumberDoubleType, &valuePtr);
    if (CFAbsoluteTimeGetCurrent() - valuePtr > 86400.0 || sub_10000A7CC(a2) && *(a1 + 5592) == 1)
    {
      v7 = sub_10000FC38();
      sub_1000E1594(v7, v8, 0);
      v9 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: unblacklisting network %@", "__WiFiDeviceManagerIsNetworkInMissingPasswordList", v5}];
      }

      v10 = v9;
      goto LABEL_11;
    }

    return 1;
  }

  return result;
}

uint64_t sub_10019057C(uint64_t a1, const void *a2)
{
  if (a1)
  {
    if (*(a1 + 168) != 2)
    {
      return 0;
    }

    sub_1000333E8(a2, @"RSSI");
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      sub_10000A878(a2);
      sub_100026290();
    }

    v4 = 1;
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null manager.", "__WiFiDeviceManagerIsRssiBasedUnblacklistingAllowed"}];
    }

    v4 = 0;
  }

  objc_autoreleasePoolPop(v3);
  return v4;
}

void sub_100190654(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int bytes, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_100011520();
  a25 = v26;
  a26 = v27;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = *(v34 + 128);
  v37 = sub_10000B3A8(v34, v32, 1);
  if (v37)
  {
    v38 = v37;
    v39 = sub_10001B368(v37);
    if (v39)
    {
      v41 = v39;
      v42 = [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
      v43 = [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];

      v40 = sub_100189234(v35, v38);
      if ((v42 & 0xFFFFFFFFFFFFFFFDLL) == 1 || v43 == 1)
      {
LABEL_10:
        v45 = 0;
        if (!v29)
        {
LABEL_12:
          if (!v31 || sub_100034EEC(v33, @"RSSI") >= v36)
          {
            goto LABEL_17;
          }

          if (*(v35 + 6224))
          {
            bytes = v45;
            a13 = sub_1000333E8(v33, @"RSSI");
            a14 = v40;
            v46 = CFDataCreate(kCFAllocatorDefault, &bytes, 12);
            if (v46)
            {
              v47 = v46;
              CFArrayAppendValue(*(v35 + 6224), v46);
              CFRelease(v47);
LABEL_17:
              CFRelease(v38);
              goto LABEL_18;
            }

            v50 = objc_autoreleasePoolPush();
            v51 = off_100298C40;
            if (off_100298C40)
            {
              v52 = "%s: null dataRef";
              goto LABEL_37;
            }
          }

          else
          {
            v50 = objc_autoreleasePoolPush();
            v51 = off_100298C40;
            if (off_100298C40)
            {
              v52 = "%s: null excludedDueToAJThresholdThisSession";
LABEL_37:
              [v51 WFLog:4 message:v52];
            }
          }

          objc_autoreleasePoolPop(v50);
          goto LABEL_17;
        }

LABEL_11:
        *v29 = v45;
        goto LABEL_12;
      }
    }

    else
    {
      v40 = sub_100189234(v35, v38);
    }

    if (*(v35 + 144) >= v40 || sub_10000A7CC(v38))
    {
      goto LABEL_10;
    }

    v48 = *(v35 + 3408);
    if (v48 == 4)
    {
      v45 = 1;
    }

    else
    {
      if (v48 != 6)
      {
        if (sub_10017764C(v33) || ([+[WiFiAnalyticsManager sharedWiFiAnalyticsManager](WiFiAnalyticsManager "sharedWiFiAnalyticsManager")] & 1) != 0)
        {
          v45 = 3;
        }

        else
        {
          if (!sub_1001775F0(v33) && ![+[WiFiAnalyticsManager sharedWiFiAnalyticsManager](WiFiAnalyticsManager "sharedWiFiAnalyticsManager")])
          {
            goto LABEL_10;
          }

          v45 = 4;
        }

        v49 = 132;
LABEL_28:
        v36 = *(v35 + v49);
        if (!v29)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      v45 = 2;
    }

    v49 = 140;
    goto LABEL_28;
  }

LABEL_18:
  sub_10001091C();
}

void sub_1001908AC()
{
  sub_10001131C();
  sub_1000C0CA0(*(v2 + 32));
  sub_1000BA134(*(v1 + 32));
  sub_10018FA04(*(v1 + 32));
  if (v0)
  {
    v3 = *(v0 + 16);

    v3(v0, 1);
  }
}

uint64_t sub_100190914(uint64_t a1, const void *a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      if (!*(a1 + 3576) || (CFArrayGetCount(*(a1 + 3576)), v5 = sub_10000836C(), FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v5, v12, a2), FirstIndexOfValue == -1) || !CFArrayGetValueAtIndex(*(a1 + 3576), FirstIndexOfValue) || (v7 = sub_100015EB8(), result = sub_1000097F8(v7, v8, 0), !result))
      {
        v9 = sub_100011580();

        return sub_1000097F8(v9, v10, 0);
      }
    }
  }

  return result;
}

void sub_1001909BC(uint64_t a1, int a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = kCFBooleanTrue;
    }

    else
    {
      v2 = kCFBooleanFalse;
    }

    sub_100006F88(*(a1 + 64));
    v3 = sub_100015EB8();
    sub_100006F94(v3, v4, 578, 0, v2);
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v6 = "Disabled";
      if (v2 == kCFBooleanTrue)
      {
        v6 = "Enabled";
      }

      [off_100298C40 WFLog:3 message:{"%s: %s low latency Tx mode", "__WiFiDeviceManagerSetTxModeLowLatency", v6}];
    }

    objc_autoreleasePoolPop(v5);
  }
}

uint64_t sub_100190A90()
{
  sub_100008C40();
  if (!sub_1000C7C74(v2) && !sub_1000612FC(*(v0 + 64)))
  {
    return 1;
  }

  v3 = sub_10000AA64(*(v0 + 3752), v1);
  if (!v3)
  {
    return 1;
  }

  if (!*(v0 + 3736))
  {
    return 1;
  }

  v4 = v3;
  v5 = sub_10000A540(v3, @"NetworkUsedForSWUpgrade");
  v6 = sub_10000A540(v4, @"PRIVATE_MAC_ADDRESS");
  if (!v6)
  {
    return 1;
  }

  Value = CFDictionaryGetValue(v6, @"PRIVATE_MAC_ADDRESS_TYPE");
  if (!Value)
  {
    return 1;
  }

  v8 = sub_10000AC54(Value) != 1 || v5 == 0;
  if (v8 || v5 != kCFBooleanTrue)
  {
    return 1;
  }

  v11 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(v4);
    sub_1000A9B58();
  }

  objc_autoreleasePoolPop(v11);
  v12 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(v1);
    sub_1000C7C74(v0);
    sub_1000612FC(*(v0 + 64));
    v13 = *(v0 + 3632);
    if (v13)
    {
      CFArrayGetCount(v13);
    }

    sub_100026290();
  }

  objc_autoreleasePoolPop(v12);
  return 0;
}

void sub_100190C0C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int valuePtr, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_100011520();
  a24 = v25;
  a25 = v26;
  v28 = v27;
  v30 = v29;
  v31 = objc_autoreleasePoolPush();
  if (v28)
  {
    if (off_100298C40)
    {
      v50 = *(v28 + 5264);
      [off_100298C40 WFLog:3 message:"%s: Channel %d  %d"];
    }

    objc_autoreleasePoolPop(v31);
    if (*(v28 + 5267))
    {
      v32 = *(v28 + 5264);
      if (v32 != v30)
      {
        v33 = v30 >= 0xF && v32 > 0xE;
        if (v33 || (v30 <= 0xD ? (v34 = v32 > 0xD) : (v34 = 1), !v34))
        {
          *(v28 + 5264) = v30;
          if (sub_1000F8BCC())
          {
            [objc_msgSend((v30 + 440) "sharedInstance")];
          }

          *(v28 + 5461) = *(v28 + 5308);
          CFSetAddValue(*(v28 + 5320), @"wifid");
          v35 = sub_10000D7B8();
          sub_10018A7CC(v35, v36);
          v37 = *(v28 + 64);
          sub_10014C5C0();
          sub_1000C7220(v28, 5);
          v38 = sub_1000C8F84(v28);
          if (v38)
          {
            v39 = v38;
            valuePtr = -1431655766;
            if (CFArrayGetCount(v38) >= 1)
            {
              do
              {
                v40 = sub_10001E7C0();
                ValueAtIndex = CFArrayGetValueAtIndex(v40, v41);
                if (ValueAtIndex)
                {
                  v43 = ValueAtIndex;
                  v44 = sub_10000A540(ValueAtIndex, @"networkRole");
                  if (v44)
                  {
                    CFNumberGetValue(v44, kCFNumberSInt32Type, &valuePtr);
                    if (valuePtr == 3)
                    {
                      a12 = *(v28 + 5264);
                      v45 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &a12);
                      if (!v45)
                      {
                        break;
                      }

                      v46 = v45;
                      CFSetRemoveValue(*(v28 + 3376), v43);
                      sub_10000AD34(v43, @"CHANNEL", v46);
                      CFSetAddValue(*(v28 + 3376), v43);
                      CFRelease(v46);
                    }
                  }
                }

                sub_100021D9C();
              }

              while (!v47);
            }

            CFRelease(v39);
          }
        }
      }
    }

    sub_10001091C();
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"%s: deviceManagerRef is Null!"];
    }

    sub_10001091C();

    objc_autoreleasePoolPop(v48);
  }
}

void sub_100190E38()
{
  sub_1000F8B6C();
  v1 = v0;
  v2 = objc_autoreleasePoolPush();
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_45;
  }

  if (!v1)
  {
    v43 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: WiFiDeviceManagerRef is NULL", "__WiFiDeviceManagerCheckForColocatedSSIDs"}];
    }

    goto LABEL_44;
  }

  v3 = *(v1 + 64);
  v4 = sub_10014FED8();
  if (!v4)
  {
    v43 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: CFArrayCreateMutable() returned NULL", "__WiFiDeviceManagerCheckForColocatedSSIDs"}];
    }

LABEL_44:
    objc_autoreleasePoolPop(v43);
LABEL_45:
    v6 = 0;
    v8 = 0;
    goto LABEL_39;
  }

  v5 = v4;
  v6 = sub_1000DD7BC(v4);
  if (v6)
  {
    v7 = sub_1000C5420(v1);
    if (v7)
    {
      v8 = v7;
      [objc_msgSend(*(v1 + 8936) "knownNetworks")];
      sub_1000305C4();
      v9 = CWFColocatedNetworksMatchingScanResult();
      v10 = &xpc_dictionary_set_uint64_ptr;
      v11 = [+[NSUserDefaults standardUserDefaults](NSUserDefaults objectForKey:"objectForKey:", @"UserDismissedColocatedSSIDTimestamps"];
      v19 = sub_1000F8D00(v11, v12, v13, v14, v15, v16, v17, v18, v45, v47, v49, v51, v53, v55, v57, v59);
      if (v19)
      {
        v20 = v19;
        v58 = v2;
        v60 = v1;
        v52 = v8;
        v54 = v5;
        v56 = v6;
        v21 = MEMORY[0];
LABEL_8:
        v22 = 0;
        while (1)
        {
          if (MEMORY[0] != v21)
          {
            objc_enumerationMutation(v9);
          }

          v23 = *(8 * v22);
          if (![objc_msgSend(v11 "allKeys")])
          {
            break;
          }

          v24 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: Colocated SSID candidate already dismissed by user (%@)", "__WiFiDeviceManagerCheckForColocatedSSIDs", v23}];
          }

          objc_autoreleasePoolPop(v24);
          if (v20 == ++v22)
          {
            v20 = sub_1000F8D00(v25, v26, v27, v28, v29, v30, v31, v32, v46, v48, v50, v52, v54, v56, v58, v60);
            if (v20)
            {
              goto LABEL_8;
            }

            v23 = 0;
            break;
          }
        }

        v6 = v56;
        v2 = v58;
        v8 = v52;
        v5 = v54;
        v1 = v60;
        v10 = &xpc_dictionary_set_uint64_ptr;
      }

      else
      {
        v23 = 0;
      }

      if (os_variant_has_internal_content())
      {
        v33 = [objc_msgSend(v10[367] "standardUserDefaults")];
        if (v33)
        {
          v34 = v33;
          sub_1000F8C08();
          v35 = [v6 countByEnumeratingWithState:? objects:? count:?];
          if (v35)
          {
            v36 = v35;
            v61 = v1;
            v37 = v8;
            v38 = MEMORY[0];
            while (2)
            {
              for (i = 0; i != v36; i = i + 1)
              {
                if (MEMORY[0] != v38)
                {
                  objc_enumerationMutation(v6);
                }

                v40 = *(8 * i);
                if ([objc_msgSend(v40 "networkName")])
                {
                  v41 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: [internal] Force matched SSID candidate %@", "__WiFiDeviceManagerCheckForColocatedSSIDs", v23}];
                  }

                  objc_autoreleasePoolPop(v41);
                  v23 = v40;
                  goto LABEL_33;
                }
              }

              sub_1000F8C08();
              v36 = [v6 countByEnumeratingWithState:? objects:? count:?];
              if (v36)
              {
                continue;
              }

              break;
            }

LABEL_33:
            v8 = v37;
            v1 = v61;
          }
        }
      }

      v42 = objc_autoreleasePoolPush();
      if (v23)
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Dispatching colocated SSID notification for %@", "__WiFiDeviceManagerCheckForColocatedSSIDs", v23}];
        }

        objc_autoreleasePoolPop(v42);
        [*(v1 + 6776) dispatchNotificationWithColocatedScanResult:v23 fromScanResult:v8];
      }

      else
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: No valid colocated SSID candidates", "__WiFiDeviceManagerCheckForColocatedSSIDs"}];
        }

        objc_autoreleasePoolPop(v42);
      }

      goto LABEL_38;
    }

    v44 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: __WiFiDeviceManagerCopyCurrentCoreWiFiScanResult() returned NULL", "__WiFiDeviceManagerCheckForColocatedSSIDs"}];
    }
  }

  else
  {
    v44 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: __WiFiDeviceManagerCreateCoreWiFiScanResultsFromNetworks() returned NULL", "__WiFiDeviceManagerCheckForColocatedSSIDs"}];
    }
  }

  objc_autoreleasePoolPop(v44);
  v8 = 0;
LABEL_38:
  CFRelease(v5);
LABEL_39:

  objc_autoreleasePoolPop(v2);
  sub_1000F8B84();
}

void sub_1001912B4(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, __int16 valuePtr, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a1)
  {
    sub_10000D798();
    a19 = v20;
    a20 = v22;
    v24 = v23;
    if (!*(v23 + 4168) || (v25 = v21, v26 = sub_100034FE4(), (Mutable = CFDictionaryCreateMutable(v26, v27, v28, v29)) == 0))
    {
LABEL_19:
      sub_1000084B8();
      return;
    }

    v31 = Mutable;
    if (v25)
    {
      valuePtr = 0;
      v32 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &valuePtr);
      if (v32)
      {
        v33 = v32;
        CFDictionaryAddValue(v31, @"HostApDisableHotspotAdvertiseReason", v32);
        CFRelease(v33);
      }

      v34 = objc_autoreleasePoolPush();
      v35 = off_100298C40;
      if (!off_100298C40)
      {
        goto LABEL_12;
      }

      v36 = "%s: HostAP Max Client Connected: Disable Hotspot Advertising\n";
    }

    else
    {
      v34 = objc_autoreleasePoolPush();
      v35 = off_100298C40;
      if (!off_100298C40)
      {
LABEL_12:
        objc_autoreleasePoolPop(v34);
        if (*(v24 + 5267))
        {
          v37 = kCFBooleanTrue;
        }

        else
        {
          v37 = kCFBooleanFalse;
        }

        CFDictionaryAddValue(v31, @"HostApEnabled", v37);
        if (v25)
        {
          v38 = kCFBooleanTrue;
        }

        else
        {
          v38 = kCFBooleanFalse;
        }

        CFDictionaryAddValue(v31, @"HostApDisableHotspotAdvertise", v38);
        v39 = *(v24 + 4168);
        v40 = *(v24 + 4176);
        v41 = sub_10000D818();
        v42(v41);
        CFRelease(v31);
        goto LABEL_19;
      }

      v36 = "%s: HostAP Max Client Allowed: Enable Hotspot Advertising\n";
    }

    [v35 WFLog:3 message:v36];
    goto LABEL_12;
  }
}

uint64_t sub_100191434(uint64_t a1)
{
  v1 = a1;
  v50 = 0;
  if (*(a1 + 3336) != 2)
  {
    v2 = *(a1 + 1168);
    if (v2)
    {
      CFRelease(v2);
      *(v1 + 1168) = 0;
    }

    *(v1 + 1192) = 0;
  }

  v3 = *(v1 + 1224);
  if (v3)
  {
    CFRelease(v3);
    *(v1 + 1224) = 0;
  }

  *(v1 + 1200) = 0;
  Count = CFArrayGetCount(*(v1 + 3600));
  v5 = sub_1000E63A0(v1, &v50);
  v6 = *(v1 + 176) != 3 && CFAbsoluteTimeGetCurrent() - *(v1 + 3352) > 30.0;
  if (*(v1 + 34))
  {
    v6 = 0;
  }

  if (!*(v1 + 32) || !*(v1 + 33))
  {
    v7 = 7;
    goto LABEL_15;
  }

  if (*(v1 + 35))
  {
    v7 = 9;
    goto LABEL_15;
  }

  if (*(v1 + 3336) != 2)
  {
    if (v5 | v6)
    {
      if (v50)
      {
        if (v5)
        {
          v7 = 5;
        }

        else
        {
          if (!v6)
          {
            goto LABEL_16;
          }

          v7 = 6;
        }

LABEL_15:
        *(v1 + 5692) = v7;
LABEL_16:
        *(v1 + 3360) = 0;
        v8 = 16;
        v9 = 1;
        goto LABEL_17;
      }
    }

    else
    {
      if (!*(v1 + 3360))
      {
        v9 = 0;
        *(v1 + 5692) = 3;
        ++*(v1 + 6184);
        v8 = 8;
        goto LABEL_17;
      }

      if (v50)
      {
        goto LABEL_16;
      }
    }

    v7 = 8;
    goto LABEL_15;
  }

  if (!*(v1 + 5680) || (v26 = CFArrayGetCount(*(v1 + 1168)), v27 = CFArrayGetCount(*(v1 + 3616)) + v26, v27 + CFArrayGetCount(*(v1 + 3608))))
  {
    *(v1 + 5692) = 4;
  }

  v9 = 0;
  ++*(v1 + 6180);
  *(v1 + 3360) = 0;
  v8 = 16;
LABEL_17:
  if (Count)
  {
    v10 = 110;
  }

  else
  {
    v10 = 0;
  }

  valuePtr = -1431655766;
  v11 = sub_1000083D0();
  Mutable = CFArrayCreateMutable(v11, v12, &kCFTypeArrayCallBacks);
  v14 = sub_1000083D0();
  v16 = CFArrayCreateMutable(v14, v15, &kCFTypeArrayCallBacks);
  v17 = v16;
  v18 = 0;
  if (Mutable && v16)
  {
    sub_100006F88(*(v1 + 64));
    v19 = sub_1000F8A18();
    v21 = sub_10001A6E4(v19, v20, v17);
    if (v21)
    {
      v24 = v21;
      v25 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"AJScan: Device return error %d for supported channels. Scanning ALL channels\n", v24}];
      }

      objc_autoreleasePoolPop(v25);
      v18 = 0;
    }

    else
    {
      v51 = 0;
      v22 = sub_1000E6A7C(v1, &v51);
      *(v1 + 6232) = v51;
      v23 = sub_1000E6D08(v1, &v51);
      v18 = v23;
      if (v22)
      {
        v28 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:"AJScan: Disallowing 2.4Ghz channels"];
        }

        objc_autoreleasePoolPop(v28);
        v8 = 16;
      }

      else if (v9)
      {
        if (!v23)
        {
          goto LABEL_54;
        }

        v8 = 8;
      }

      if (CFArrayGetCount(v17) < 1)
      {
        v18 = v8;
      }

      else
      {
        v49 = v1;
        v29 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v17, v29);
          if (ValueAtIndex)
          {
            Value = CFDictionaryGetValue(ValueAtIndex, @"SUP_CHANNEL");
            v32 = sub_1000950F8();
            v34 = CFDictionaryGetValue(v32, v33);
            if (Value)
            {
              v35 = v34;
              if (v34)
              {
                if (CFNumberGetValue(v34, kCFNumberSInt32Type, &valuePtr))
                {
                  if ((valuePtr & v8) != 0)
                  {
                    if (!v18 || (LODWORD(keys) = -1431655766, CFNumberGetValue(Value, kCFNumberSInt32Type, &keys), keys) && keys <= 0xE)
                    {
                      *&keys = @"CHANNEL";
                      *(&keys + 1) = @"CHANNEL_FLAGS";
                      values[0] = Value;
                      values[1] = v35;
                      v36 = CFDictionaryCreate(kCFAllocatorDefault, &keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                      if (v36)
                      {
                        v37 = v36;
                        CFArrayAppendValue(Mutable, v36);
                        CFRelease(v37);
                      }
                    }
                  }
                }
              }
            }
          }

          ++v29;
        }

        while (v29 < CFArrayGetCount(v17));
        v18 = v8;
        v1 = v49;
      }
    }
  }

LABEL_54:
  if (*(v1 + 5680))
  {
    v38 = " ";
    if (*(v1 + 3336) == 2)
    {
      v39 = CFArrayGetCount(*(v1 + 1168));
      v40 = CFArrayGetCount(*(v1 + 3616)) + v39;
      if (!(v40 + CFArrayGetCount(*(v1 + 3608))))
      {
        v38 = "- Fake ";
      }
    }
  }

  else
  {
    v38 = " ";
  }

  v41 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v42 = "ALL";
    if (v18 == 16)
    {
      v42 = "5Ghz";
    }

    if (v18 == 8)
    {
      v42 = "2.4Ghz";
    }

    v43 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v44 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
      LODWORD(keys) = 136446210;
      *(&keys + 4) = v44;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", &keys, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v41);
  if (v18 == 8)
  {
    v45 = 2;
    v46 = 4;
  }

  else if (v18 == 16)
  {
    v45 = 3;
    v46 = 5;
  }

  else
  {
    v45 = 4;
    v46 = 6;
  }

  v47 = sub_100191A78(v1, 0, Mutable, v10, v46);
  if (v47)
  {
    return sub_1000D7FA8(v1, v47);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v45;
}

uint64_t sub_100191A78(uint64_t a1, uint64_t a2, const __CFArray *a3, int a4, void *a5)
{
  sub_1000F8BE4();
  if (v9 && *(v5 + 3470) && CFArrayGetCount(a3) != 1)
  {
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"Multi channel scan attempt not permitted because AWDL real time mode is active"];
    }

    objc_autoreleasePoolPop(v10);
    return 4294963366;
  }

  v13 = sub_10001098C();
  sub_10018C85C(v13, v14, 0, a4, 1, v15, v16, v17, v74, v78, v81, SHIDWORD(v81), v83, SHIDWORD(v83), v86, v88, v89, v90, v91, v92, v93, v94, v95, v96, vars0, vars8);
  if (!v18)
  {
    return 4294963396;
  }

  v19 = v18;
  v20 = sub_10001A904(v5);
  v21 = objc_autoreleasePoolPush();
  if (!v20)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:"Location is Nil"];
    }

    objc_autoreleasePoolPop(v21);
    *(v5 + 6160) = 0u;
    *(v5 + 6144) = 0u;
    goto LABEL_16;
  }

  v22 = [v20 timestamp];
  if (v22)
  {
    [v22 timeIntervalSinceNow];
    *(v5 + 6168) = v23;
    objc_autoreleasePoolPop(v21);
    [v20 horizontalAccuracy];
    *(v5 + 6144) = v24;
    [v20 coordinate];
    *(v5 + 6152) = v25;
    [v20 coordinate];
    *(v5 + 6160) = v26;
    if (*(v5 + 6152) != 0.0)
    {
      ++*(v5 + 6176);
      goto LABEL_17;
    }

LABEL_16:
    ++*(v5 + 6178);
LABEL_17:
    Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
    if (Mutable)
    {
      v28 = Mutable;
      v29 = *(v5 + 5692);
      if (v29 <= 0xC)
      {
        v30 = off_100262260[v29];
      }

      if (*(v5 + 33) && *(v5 + 32))
      {
        v31 = @"Scan-{";
      }

      else
      {
        v31 = @"_Scan-{";
      }

      CFStringAppend(Mutable, v31);
      v32 = sub_10001EDAC();
      CFStringAppend(v32, v33);
      v34 = *(v5 + 5700);
      if (v34 <= 3)
      {
        v35 = off_1002622C8[v34];
        CFStringAppend(v28, @" ");
        v36 = sub_10001EDAC();
        CFStringAppend(v36, v37);
      }

      v38 = *(v5 + 5704);
      if (v38 > 2)
      {
        v75 = *(v5 + 5712);
        v42 = sub_1000083D0();
        CFStringAppendFormat(v42, v43, v44, v75);
      }

      else
      {
        v39 = off_1002622E8[v38];
        CFStringAppend(v28, @" ");
        v40 = sub_10001EDAC();
        CFStringAppend(v40, v41);
      }

      v45 = *(v5 + 192);
      if (v45 <= 0xE)
      {
        v46 = off_100262300[v45];
        CFStringAppend(v28, @" ");
        v47 = sub_10001EDAC();
        CFStringAppend(v47, v48);
      }

      CFStringAppend(v28, @"}  Expecting-[");
      v82 = *(v5 + 6188);
      v84 = *(v5 + 6192);
      v76 = *(v5 + 6200);
      v79 = *(v5 + 6196);
      v49 = sub_1000083D0();
      CFStringAppendFormat(v49, v50, v51, v76, v79, v82, v84);
      CFStringAppend(v28, @"] @ ");
      v52 = sub_100014038(*(v5 + 3408));
      v85 = *(v5 + 6144);
      v87 = *(v5 + 6168);
      v80 = *(v5 + 6152);
      v77 = v52;
      v53 = sub_1000083D0();
      CFStringAppendFormat(v53, v54, v55, v77, v80, v85, v87);
      v56 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"AJScan: %@", v28}];
      }

      objc_autoreleasePoolPop(v56);
      CFRelease(v28);
    }

    v57 = *(v5 + 5692);
    if (v57 <= 0xC)
    {
      *(v5 + 5696) = v57;
      ++*(v5 + 2 * v57 + 5936);
      ++*(v5 + 4 * v57 + 5988);
    }

    v58 = *(v5 + 5704);
    if (v58 <= 2)
    {
      ++*(v5 + 4 * v58 + 5732);
    }

    v59 = *(v5 + 5708);
    if (v59 <= 0x11)
    {
      ++*(v5 + 4 * v59 + 5744);
    }

    *(v5 + 5692) = 13;
    *(v5 + 5704) = 0x1200000003;
    if (!v20)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  v73 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: location timestamp is nil", "__WiFiDeviceManagerCollectAutoJoinMetrics"}];
  }

  objc_autoreleasePoolPop(v73);
  objc_autoreleasePoolPop(v21);
LABEL_41:
  CFRelease(v20);
LABEL_42:
  *(v5 + 192) = 18;
  v60 = sub_1000075BC();
  if (v60)
  {
    v61 = v60;
    [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
    *v61 = v5;
    v61[1] = 0;
    v61[3] = 0;
    if (CFDictionaryContainsKey(v19, @"SSID_STR"))
    {
      v62 = 1;
    }

    else
    {
      v62 = CFDictionaryContainsKey(v19, @"SCAN_SSID_LIST") != 0;
    }

    *(v61 + 32) = v62;
    sub_100006F88(*(v5 + 64));
    sub_10000D7D0();
    sub_100020100();
    v11 = sub_100025FF8(v63, v64, v65, v66, v67, v68, v69, a5);
    if (v11)
    {
      v72 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"Error initiating scan request: %d", v11}];
      }

      objc_autoreleasePoolPop(v72);
      free(v61);
    }
  }

  else
  {
    v70 = objc_autoreleasePoolPush();
    v71 = sub_1000F8AC4();
    if (v71)
    {
      [v71 WFLog:4 message:{"%s: null scanData", "__WiFiDeviceManagerScan"}];
    }

    objc_autoreleasePoolPop(a5);
    v11 = 4294963396;
  }

  CFRelease(v19);
  return v11;
}

void sub_100191FA0(uint64_t a1, CFArrayRef theArray)
{
  if (!theArray)
  {
    return;
  }

  if (a1)
  {
    if (*(a1 + 6120))
    {
      if (*(a1 + 6128))
      {
        if (CFArrayGetCount(theArray) >= 1)
        {
          v4 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, v4);
            v6 = sub_10000A878(ValueAtIndex);
            if (v6)
            {
              CFSetAddValue(*(a1 + 6120), v6);
            }

            ++v4;
          }

          while (v4 < CFArrayGetCount(theArray));
        }

        Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        v8 = sub_1000086AC();
        if (sub_1000D59D8(v8, v9, Mutable) && CFArrayGetCount(Mutable) >= 1)
        {
          v10 = 0;
          do
          {
            v11 = sub_10000FC38();
            v13 = CFArrayGetValueAtIndex(v11, v12);
            v14 = sub_10000A878(v13);
            if (v14)
            {
              CFSetAddValue(*(a1 + 6128), v14);
            }

            ++v10;
          }

          while (v10 < CFArrayGetCount(Mutable));
        }

        if (Mutable)
        {

          CFRelease(Mutable);
        }

        return;
      }

      v15 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: null knownSSIDsScannedThisSession.", "__WiFiDeviceManagerTrackScanResultsForAWDMetrics"}];
      }
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: null scannedSSIDsThisSession.", "__WiFiDeviceManagerTrackScanResultsForAWDMetrics"}];
      }
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null ajMetrics.", "__WiFiDeviceManagerTrackScanResultsForAWDMetrics"}];
    }
  }

  objc_autoreleasePoolPop(v15);
}

void sub_100192190(uint64_t a1, const __CFArray *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (!a1 || !*(a1 + 1160))
  {
    goto LABEL_63;
  }

  v5 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  Count = CFArrayGetCount(*(a1 + 1160));
  v54 = v4;
  if (!a2 || !CFArrayGetCount(a2) || CFArrayGetCount(a2) < 1)
  {
    v6 = 0;
    goto LABEL_51;
  }

  v6 = 0;
  v7 = 0;
  v55 = a2;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v7);
    v9 = sub_10000A878(ValueAtIndex);
    v10 = sub_10000A540(ValueAtIndex, @"BSSID");
    valuePtr = 0;
    value = ValueAtIndex;
    v11 = sub_10000A540(ValueAtIndex, @"TIMESTAMP");
    if (v11)
    {
      CFNumberGetValue(v11, kCFNumberSInt64Type, &valuePtr);
    }

    sub_10002A0FC();
    if (!v38 & v12)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = off_100298C40;
      if (off_100298C40)
      {
        [v9 redactedForWiFi];
        [sub_1000F8C4C() redactedForWiFi];
        sub_10000DB84();
        [v14 WFLog:2 message:{"%s: excluding old entry (ssid=%@, bssid=%@, age=%lums, max=%dms)", "__WiFiDeviceManagerUpdateCumulativeScanResults", v9, v15}];
      }

      objc_autoreleasePoolPop(v13);
      goto LABEL_48;
    }

    if (CFArrayGetCount(*(a1 + 1160)) < 1)
    {
      goto LABEL_45;
    }

    v56 = v7;
    v16 = 0;
    do
    {
      v17 = sub_1000F8BF0();
      v19 = CFArrayGetValueAtIndex(v17, v18);
      v20 = sub_10000A878(v19);
      v21 = sub_10000A540(v19, @"BSSID");
      v58 = 0;
      v22 = sub_10000A540(v19, @"TIMESTAMP");
      if (v22)
      {
        CFNumberGetValue(v22, kCFNumberSInt64Type, &v58);
      }

      if (v20 && v9)
      {
        if (!CFEqual(v20, v9))
        {
          goto LABEL_32;
        }
      }

      else if (v20 || v9)
      {
LABEL_32:
        sub_10002A0FC();
        if (!v38 & v12)
        {
          v32 = objc_autoreleasePoolPush();
          v33 = off_100298C40;
          if (off_100298C40)
          {
            v34 = [v20 redactedForWiFi];
            [v21 redactedForWiFi];
            sub_10000DB84();
            [v33 WFLog:2 message:{"%s: removing old existing entry (ssid=%@, bssid=%@, age=%lums, max=%dms)", "__WiFiDeviceManagerUpdateCumulativeScanResults", v34, v35}];
          }

          objc_autoreleasePoolPop(v32);
          v36 = sub_1000F8BF0();
          CFArrayRemoveValueAtIndex(v36, v37);
          --v16;
        }

        v31 = -1;
        goto LABEL_38;
      }

      if (!v21 || !v10 || !CFEqual(v21, v10))
      {
        goto LABEL_32;
      }

      if (valuePtr > v58)
      {
        v23 = objc_autoreleasePoolPush();
        v24 = off_100298C40;
        if (off_100298C40)
        {
          v25 = [v9 redactedForWiFi];
          [v10 redactedForWiFi];
          sub_10000DB84();
          [v24 WFLog:2 message:{"%s: replacing existing entry with new entry (ssid=%@, bssid=%@, age=%lums, max=%dms)", "__WiFiDeviceManagerUpdateCumulativeScanResults", v25, v26}];
        }

        objc_autoreleasePoolPop(v23);
        v27 = sub_1000F8BF0();
        CFArrayRemoveValueAtIndex(v27, v28);
        v29 = sub_1000F8BF0();
        CFArrayInsertValueAtIndex(v29, v30, value);
      }

      v31 = v16;
LABEL_38:
      if (v6 <= v16)
      {
        v6 = v16;
      }

      v38 = ++v16 < CFArrayGetCount(*(a1 + 1160)) && v31 == -1;
    }

    while (v38);
    a2 = v55;
    v7 = v56;
    if (v31 == -1)
    {
LABEL_45:
      v39 = objc_autoreleasePoolPush();
      v40 = off_100298C40;
      if (off_100298C40)
      {
        [v9 redactedForWiFi];
        [sub_1000F8C4C() redactedForWiFi];
        sub_10000DB84();
        [v40 WFLog:2 message:{"%s: adding new entry (ssid=%@, bssid=%@, age=%lums, max=%dms)", "__WiFiDeviceManagerUpdateCumulativeScanResults", v9, v41}];
      }

      objc_autoreleasePoolPop(v39);
      CFArrayAppendValue(*(a1 + 1160), value);
    }

LABEL_48:
    ++v7;
  }

  while (v7 < CFArrayGetCount(a2));
LABEL_51:
  while (v6 < CFArrayGetCount(*(a1 + 1160)))
  {
    v42 = CFArrayGetValueAtIndex(*(a1 + 1160), v6);
    v43 = sub_10000A878(v42);
    v44 = sub_10000A540(v42, @"BSSID");
    valuePtr = 0;
    v45 = sub_10000A540(v42, @"TIMESTAMP");
    if (v45)
    {
      CFNumberGetValue(v45, kCFNumberSInt64Type, &valuePtr);
    }

    if (v5 - valuePtr > 0xDF8475800)
    {
      v46 = objc_autoreleasePoolPush();
      v47 = off_100298C40;
      if (off_100298C40)
      {
        v48 = [v43 redactedForWiFi];
        [v44 redactedForWiFi];
        sub_10000DB84();
        [v47 WFLog:2 message:{"%s: removing (remaining) old existing entry (ssid=%@, bssid=%@, age=%lums, max=%dms)", "__WiFiDeviceManagerUpdateCumulativeScanResults", v48, v49}];
      }

      objc_autoreleasePoolPop(v46);
      CFArrayRemoveValueAtIndex(*(a1 + 1160), v6--);
    }

    ++v6;
  }

  v50 = CFArrayGetCount(*(a1 + 1160));
  v4 = v54;
  if (Count != v50)
  {
    v51 = v50;
    v52 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: oldCount=%lu, newCount=%lu", "__WiFiDeviceManagerUpdateCumulativeScanResults", Count, v51}];
    }

    objc_autoreleasePoolPop(v52);
  }

LABEL_63:
  objc_autoreleasePoolPop(v4);
}

void sub_1001926B0(uint64_t a1)
{
  if (*(a1 + 384))
  {
    if (*(a1 + 400))
    {
      if (*(a1 + 392) != 0.0)
      {
        valuePtr = CFAbsoluteTimeGetCurrent();
        v2 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &valuePtr);
        if (v2)
        {
          v3 = v2;
          CFArrayAppendValue(*(a1 + 384), v2);
          CFRelease(v3);
          v4 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            CFArrayGetCount(*(a1 + 384));
            v5 = *(a1 + 392);
            sub_1000F8A68();
          }

          objc_autoreleasePoolPop(v4);
        }
      }
    }
  }
}

void sub_100192784(uint64_t a1, const void *a2, __CFString *a3)
{
  if (a1 && a2)
  {
    if (sub_10001CDD8(a2))
    {
      v5 = sub_10000A540(a2, @"BSSID");
    }

    else
    {
      v5 = sub_10000A878(a2);
    }

    v12 = v5;
    v6 = sub_100008684();
    CFStringAppendFormat(v6, v7, v8, v12);
    if (sub_100009730(a2))
    {
      CFStringAppend(a3, @"(E)");
    }

    if (sub_10009DB7C(a2))
    {
      CFStringAppend(a3, @"(WEP)");
    }

    if (sub_10001CF3C(a2))
    {
      CFStringAppend(a3, @"(W)");
    }

    if (sub_10009E148(a2))
    {
      CFStringAppend(a3, @"(SAE)");
    }

    v9 = sub_100008684();

    CFStringAppendFormat(v9, v10, v11);
  }
}

void sub_100192890(uint64_t a1, const void *a2, __CFString *a3)
{
  if (a1 && a2)
  {
    if (sub_10001CDD8(a2))
    {
      v5 = @"*";
    }

    else
    {
      v5 = sub_10000A878(a2);
    }

    CFStringAppend(a3, v5);
    v6 = sub_100008684();
    CFStringAppendFormat(v6, v7, @"-");
    v31 = sub_10000A540(a2, @"BSSID");
    v8 = sub_100008684();
    CFStringAppendFormat(v8, v9, v10, v31);
    v11 = sub_100008684();
    CFStringAppendFormat(v11, v12, @"-");
    v32 = sub_100014000(a2);
    v13 = sub_100008684();
    CFStringAppendFormat(v13, v14, v15, v32);
    v33 = sub_100034EEC(a2, @"RSSI");
    v16 = sub_100008684();
    CFStringAppendFormat(v16, v17, v18, v33);
    v34 = sub_100034EEC(a2, @"AGE");
    v19 = sub_100008684();
    CFStringAppendFormat(v19, v20, v21, v34);
    if (sub_10000AFE4(a2))
    {
      v22 = sub_10009F864(a2);
      CFStringAppend(a3, @",");
      if (v22)
      {
        v23 = @" HS2.0-h";
      }

      else
      {
        v23 = @" HS2.0-r";
      }

      CFStringAppend(a3, v23);
    }

    v24 = sub_10000FC38();
    if (sub_1001933D4(v24, v25))
    {
      CFStringAppend(a3, @",");
      CFStringAppend(a3, @" HS");
    }

    v26 = sub_10000FC38();
    if (sub_100189D00(v26, v27))
    {
      CFStringAppend(a3, @",");
      CFStringAppend(a3, @" Cap");
    }

    if (sub_10000A7CC(a2))
    {
      CFStringAppend(a3, @",");
      CFStringAppend(a3, @" Car");
    }

    if (sub_10000C894(a2))
    {
      CFStringAppend(a3, @",");
      CFStringAppend(a3, @" Ad");
    }

    if (sub_100009730(a2))
    {
      CFStringAppend(a3, @",");
      CFStringAppend(a3, @" EAP");
    }

    if (sub_10009DB7C(a2))
    {
      CFStringAppend(a3, @",");
      CFStringAppend(a3, @" WEP");
    }

    if (sub_10001CF3C(a2))
    {
      CFStringAppend(a3, @",");
      CFStringAppend(a3, @" WPA");
    }

    if (sub_10009E148(a2))
    {
      CFStringAppend(a3, @",");
      CFStringAppend(a3, @" SAE");
    }

    v28 = sub_100008684();

    CFStringAppendFormat(v28, v29, v30);
  }
}

CFIndex sub_100192B7C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = &xpc_dictionary_set_uint64_ptr;
  v4 = &qword_1001CDFF8[1];
  if (off_100298C40)
  {
    v102 = [NSString stringWithFormat:@"%s: current state: %@ ", "__WiFiDeviceManagerPrepareCandidates", sub_1000AA864(*(a1 + 3336))];
    v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v97 = [(NSString *)v5 UTF8String];
      [[NSString stringWithFormat:?]];
      sub_1000F8B08();
      sub_1000F8A80(&_mh_execute_header, &_os_log_default, v6, "%{public}s", v7, v8, v9, v10, v97, v102, v105, *&v106, v107, v108, v109);
    }
  }

  objc_autoreleasePoolPop(v2);
  v11 = *(a1 + 1168);
  if (v11)
  {
    result = CFArrayGetCount(v11);
    if (!result)
    {
      return result;
    }

    v13 = result;
    v110.location = 0;
    v110.length = result;
    CFArraySortValues(*(a1 + 1168), v110, sub_1000EA500, a1);
    if (*(a1 + 3336) != 11)
    {
      v14 = *(a1 + 3560);
      if (v14)
      {
        if (!sub_1001933D4(a1, v14) && !sub_10000AFE4(*(a1 + 3560)))
        {
          v111.location = 0;
          v111.length = v13;
          FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(a1 + 1168), v111, *(a1 + 3560));
          if (FirstIndexOfValue != -1)
          {
            v75 = FirstIndexOfValue;
            ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 1168), FirstIndexOfValue);
            if (sub_10000A604(*(a1 + 3560)))
            {
              if (sub_10000A540(*(a1 + 3560), @"WiFiInstantHotspotJoining") == kCFBooleanTrue)
              {
                v79 = sub_10000D80C();
                sub_10000AD34(v79, v80, kCFBooleanTrue);
                v77 = 1;
              }

              else
              {
                v77 = 0;
              }

              if (sub_10000A540(*(a1 + 3560), @"WiFiAutoInstantHotspotJoining") == kCFBooleanTrue)
              {
                v81 = sub_10000D80C();
                sub_10000AD34(v81, v82, kCFBooleanTrue);
                v78 = 1;
              }

              else
              {
                v78 = 0;
              }
            }

            else
            {
              v78 = 0;
              v77 = 0;
            }

            CFRetain(ValueAtIndex);
            CFArrayRemoveValueAtIndex(*(a1 + 1168), v75);
            CFArrayInsertValueAtIndex(*(a1 + 1168), 0, ValueAtIndex);
            if (ValueAtIndex)
            {
              CFRelease(ValueAtIndex);
            }

            if (((v77 == 0) & ~v78) == 0)
            {
              v83 = sub_10000A540(*(a1 + 3560), @"lastDisconnectTimestampKey");
              if (v83)
              {
                v84 = v83;
                Current = CFAbsoluteTimeGetCurrent();
                if (Current - CFDateGetAbsoluteTime(v84) > 300.0)
                {
                  v86 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    v87 = sub_10000A878(*(a1 + 3560));
                    v88 = v77 ? "Instant" : "Auto instant";
                    v89 = CFAbsoluteTimeGetCurrent();
                    v106 = v89 - CFDateGetAbsoluteTime(v84);
                    v105 = v88;
                    v104 = [NSString stringWithFormat:@"%s Ignore Previous Hotspot %@ type(%s) disconnect time since linkDown %f", "__WiFiDeviceManagerPrepareCandidates", v87];
                    v90 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
                    {
                      v101 = [(NSString *)v90 UTF8String];
                      [[NSString stringWithFormat:?]];
                      sub_1000F8B08();
                      sub_1000F8A80(&_mh_execute_header, &_os_log_default, v91, "%{public}s", v92, v93, v94, v95, v101, v104, v88, *&v106, v107, v108, v109);
                    }
                  }

                  objc_autoreleasePoolPop(v86);
                  CFArrayRemoveValueAtIndex(*(a1 + 1168), 0);
                }
              }
            }
          }
        }
      }
    }

    Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
    if (!Mutable)
    {
      goto LABEL_15;
    }

    v16 = Mutable;
    v17 = *(a1 + 1168);
    if (!v17 || (Count = CFArrayGetCount(*(a1 + 1168)), v19 = Count - 1, Count < 1))
    {
LABEL_11:
      v20 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v103 = [v3[465] stringWithFormat:@"Attempting auto-join for networks in following order: %@", v16];
        v21 = [v3[465] stringWithFormat:@"%s", objc_msgSend(objc_msgSend(v3[465], "stringWithFormat:", @"{%@*} %@", @"AUTOJOIN", "UTF8String")];
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v22 = v3[465];
          v98 = [v21 UTF8String];
          [objc_msgSend(v22 stringWithFormat:@"[WiFiPolicy] %s", "UTF8String"];
          v23 = v4[72];
          sub_1000F8B08();
          sub_1000F8A80(&_mh_execute_header, &_os_log_default, v24, "%{public}s", v25, v26, v27, v28, v98, v103, v105, *&v106, v107, v108, v109);
        }
      }

      objc_autoreleasePoolPop(v20);
      CFRelease(v16);
LABEL_15:
      *(a1 + 1176) = 0u;
      return 1;
    }

    v29 = @"SAE";
    while (1)
    {
      v30 = CFArrayGetValueAtIndex(v17, 0);
      if (v30)
      {
        v32 = v30;
        if (sub_10001CDD8(v30))
        {
          sub_10000A540(v32, @"BSSID");
        }

        else
        {
          sub_10000A878(v32);
        }

        v33 = sub_100015EB8();
        CFStringAppend(v33, v34);
        if (sub_10000AFE4(v32))
        {
          v108 = a1;
          v55 = v29;
          v56 = v19;
          v57 = v3;
          v58 = v4;
          v59 = sub_10009F864(v32);
          CFStringAppend(v16, @"(");
          v31 = !v59;
          v4 = v58;
          v3 = v57;
          v19 = v56;
          v29 = v55;
          a1 = v108;
          if (v31)
          {
            v60 = @"HS2.0-r";
          }

          else
          {
            v60 = @"HS2.0-h";
          }

          CFStringAppend(v16, v60);
          v61 = sub_1000950F8();
          v63 = sub_1001933D4(v61, v62);
          v38 = @",";
          if (v63)
          {
LABEL_38:
            CFStringAppend(v16, v38);
            CFStringAppend(v16, @"HS");
          }

          v64 = sub_1000950F8();
          v66 = sub_100189D00(v64, v65);
          v42 = @",";
          if (v66)
          {
LABEL_40:
            CFStringAppend(v16, v42);
            CFStringAppend(v16, @"C");
          }

          v67 = sub_10000C894(v32);
          v44 = @",";
          if (v67)
          {
LABEL_42:
            CFStringAppend(v16, v44);
            CFStringAppend(v16, @"A");
          }

          v68 = sub_100009730(v32);
          v46 = @",";
          if (v68)
          {
LABEL_44:
            CFStringAppend(v16, v46);
            CFStringAppend(v16, @"EAP");
          }

          v69 = sub_10009DB7C(v32);
          v48 = @",";
          if (v69)
          {
LABEL_46:
            CFStringAppend(v16, v48);
            CFStringAppend(v16, @"WEP");
          }

          v70 = sub_10001CF3C(v32);
          v50 = @",";
          if (v70)
          {
LABEL_48:
            CFStringAppend(v16, v50);
            CFStringAppend(v16, @"W");
          }

          v71 = sub_10009E148(v32);
          v52 = @",";
          if (v71)
          {
LABEL_50:
            CFStringAppend(v16, v52);
            CFStringAppend(v16, v29);
          }

          v100 = sub_100014000(v32);
          v72 = sub_100011340();
          if (v19 <= 0)
          {
            CFStringAppendFormat(v72, v73, @", %@"), v100);
          }

          else
          {
            CFStringAppendFormat(v72, v73, @", %@, "), v100);
          }

          goto LABEL_19;
        }

        v35 = sub_1000950F8();
        v37 = sub_1001933D4(v35, v36);
        v38 = CFSTR("(");
        if (v37)
        {
          goto LABEL_38;
        }

        v39 = sub_1000950F8();
        v41 = sub_100189D00(v39, v40);
        v42 = CFSTR("(");
        if (v41)
        {
          goto LABEL_40;
        }

        v43 = sub_10000C894(v32);
        v44 = CFSTR("(");
        if (v43)
        {
          goto LABEL_42;
        }

        v45 = sub_100009730(v32);
        v46 = CFSTR("(");
        if (v45)
        {
          goto LABEL_44;
        }

        v47 = sub_10009DB7C(v32);
        v48 = CFSTR("(");
        if (v47)
        {
          goto LABEL_46;
        }

        v49 = sub_10001CF3C(v32);
        v50 = CFSTR("(");
        if (v49)
        {
          goto LABEL_48;
        }

        v51 = sub_10009E148(v32);
        v52 = CFSTR("(");
        if (v51)
        {
          goto LABEL_50;
        }

        v99 = sub_100014000(v32);
        v53 = sub_100011340();
        CFStringAppendFormat(v53, v54, @"(%@), ", v99);
      }

LABEL_19:
      sub_1000950C4();
      if (v31)
      {
        goto LABEL_11;
      }
    }
  }

  v96 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: no scan candidate network", "__WiFiDeviceManagerPrepareCandidates"}];
  }

  objc_autoreleasePoolPop(v96);
  return 0;
}

BOOL sub_1001933D4(uint64_t a1, _BOOL8 a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  if (sub_10000AFE4(a2))
  {
    return 0;
  }

  Count = CFArrayGetCount(*(a1 + 3624));
  if (!Count)
  {
    return 0;
  }

  v4 = sub_1000F8CA0(Count);
  if (v4 == -1)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 3624), v4);
  if (!ValueAtIndex)
  {
    return 0;
  }

  return sub_10000966C(ValueAtIndex);
}

void sub_100193574(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    sub_100095008();
    v6 = objc_autoreleasePoolPush();
    v7 = [*(v4 + 6720) enabled];
    objc_autoreleasePoolPop(v6);
    if (v7)
    {
      v8 = *(v4 + 3552);
      if (a3)
      {

        CFSetAddValue(v8, v3);
      }

      else
      {

        CFSetRemoveValue(v8, v3);
      }
    }
  }
}

void sub_100193620(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int __s1, __int16 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_10000FDC0();
  a26 = v27;
  a27 = v28;
  v30 = v29;
  v32 = v31;
  objc_autoreleasePoolPush();
  if (!sub_10006373C(*(v32 + 64)))
  {
    goto LABEL_25;
  }

  v33 = sub_10000A540(v30, @"JOIN_STATUS_SUBSTATE_INFO");
  if (v33)
  {
    v34 = v33;
    if ([v33 count])
    {
      v35 = 0;
      v55 = v30;
      do
      {
        v36 = [sub_10001153C() objectAtIndex:?];
        if (v36)
        {
          v37 = v36;
          v38 = [v36 objectForKey:@"JOIN_STATUS_SUBSTATE_FLAGS"];
          if (v38)
          {
            if ([v38 intValue])
            {
              v39 = [v37 objectForKey:@"BSSID"];
              if (v39)
              {
                v40 = v39;
                a15 = 0;
                __s1 = 0;
                if (memcmp(&__s1, [v39 bytes], 6uLL))
                {
                  v41 = ether_ntoa([v40 bytes]);
                  v42 = v41 ? [NSString stringWithUTF8String:v41]: 0;
                  v43 = sub_1000EB3B0(v37, v42);
                  if (v43)
                  {
                    v44 = v43;
                    if ([v43 count])
                    {
                      v45 = sub_10000C580(kCFAllocatorDefault, v30);
                      sub_10000AD34(v45, @"BSSID", v42);
                      v46 = sub_10001A9BC(v45);
                      if ([v44 count])
                      {
                        v47 = 0;
                        do
                        {
                          [v44 objectAtIndex:v47];
                          v48 = sub_10000757C();
                          v50 = sub_1000BE2EC(v48, 8, v49, v42, 2);
                          [*(v32 + 6720) setNetworkDenyListInfo:v50 forScanResult:v46];

                          ++v47;
                        }

                        while (v47 < [v44 count]);
                      }

                      v51 = *(v32 + 7480);
                      if (v51)
                      {
                        [v51 addFaultEvent:9 forInterface:sub_100006F88(*(v32 + 64))];
                      }

                      if (v45)
                      {
                        CFRelease(v45);
                      }

                      v30 = v55;
                    }
                  }
                }
              }
            }
          }
        }

        ++v35;
      }

      while (v35 < [v34 count]);
    }

LABEL_25:
    if (!v30)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v54 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"%s substatesArray for join status is nil"];
  }

  objc_autoreleasePoolPop(v54);
  if (v30)
  {
LABEL_26:
    sub_10000AD34(v30, @"JOIN_STATUS_SUBSTATE_INFO", 0);
  }

LABEL_27:
  sub_100008690();

  objc_autoreleasePoolPop(v52);
}

void sub_100193894()
{
  sub_100011520();
  sub_1000F8BE4();
  v2 = objc_autoreleasePoolPush();
  v3 = *(v0 + 3336);
  v4 = sub_1000A5008(v1);
  v5 = sub_10009A8E0(v1);
  if (v5)
  {
    v6 = v5;
    v7 = objc_autoreleasePoolPush();
    v8 = off_100298C40;
    if (off_100298C40)
    {
      sub_10000A878(v6);
      [v8 WFLog:3 message:"%s: responseType=%d ssid=%@"];
    }

    objc_autoreleasePoolPop(v7);
    switch(v4)
    {
      case 1:
        v9 = sub_1000A5324(v1, kCFUserNotificationTextFieldValuesKey);
        if (!v9)
        {
          break;
        }

        v10 = v9;
        TypeID = CFArrayGetTypeID();
        if (TypeID == CFGetTypeID(v10))
        {
          if (CFArrayGetCount(v10) <= 1)
          {
            if (CFArrayGetCount(v10) < 1)
            {
              goto LABEL_18;
            }

            v15 = sub_1000083D0();
          }

          else
          {
            v12 = sub_1000083D0();
            ValueAtIndex = CFArrayGetValueAtIndex(v12, v13);
            sub_10000AD34(v6, @"UserName", ValueAtIndex);
            v15 = v10;
            v16 = 1;
          }

          CFArrayGetValueAtIndex(v15, v16);
          v19 = sub_100015EB8();
        }

        else
        {
          v18 = CFStringGetTypeID();
          if (v18 != CFGetTypeID(v10))
          {
            goto LABEL_18;
          }

          v19 = sub_10000D80C();
        }

        sub_10009FBF4(v19, v20);
LABEL_18:
        v21 = sub_10000FC38();
        if (sub_1000D3D70(v21, v22, 1))
        {
          v23 = sub_10000FC38();
          sub_1000E3DB4(v23, v24, 0, v25);
        }

        break;
      case 2:
        v26 = sub_10000FC38();
        sub_100193574(v26, v27, 1);
        v28 = sub_10001A9BC(v6);
        sub_10000A540(v6, @"BSSID");
        v29 = sub_10000836C();
        v32 = sub_1000BE2EC(v29, v30, 0, v31, 3);
        [*(v0 + 6720) setNetworkDenyListInfo:v32 forScanResult:v28];

        goto LABEL_21;
      case 3:
LABEL_21:
        if (_os_feature_enabled_impl())
        {
          sub_10000FC38();
          sub_1000F8AB8();
          sub_1000EAF00(v33, v34, v35, v36, v37);
        }

        sub_1000E9864(v0);
        break;
      case 4:
        v17 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:"%s: opening settings to collect credentials"];
        }

        objc_autoreleasePoolPop(v17);
        sub_1000EC328(0, v6);
        break;
      default:
        break;
    }
  }

  objc_autoreleasePoolPop(v2);
  sub_10001091C();
}

void sub_100193B0C(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1)
  {
    if (a2)
    {
      if (*(a1 + 8968))
      {
        v5 = *(a1 + 8960);
        if (v5)
        {
          if ([*(a1 + 6824) isEqualHotspotDevicesName:v5 compareTo:a2])
          {
            (*(*(a1 + 8968) + 16))();
            _Block_release(*(a1 + 8968));
            *(a1 + 8968) = 0;
            CFRelease(*(a1 + 8960));
            *(a1 + 8960) = 0;
          }
        }
      }
    }
  }

  objc_autoreleasePoolPop(v4);
}

void sub_100193BAC()
{
  sub_100008C40();
  *(v2 + 7052) = v3;
  if (_os_feature_enabled_impl())
  {
    v4 = sub_1000086AC();
    sub_1000EC6C0(v4, v5, v6, v7, 0);
  }

  v8 = *(v0 + 6936);
  if (v8)
  {
    CFRelease(v8);
    *(v0 + 6936) = 0;
  }

  v9 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Dispatch Notification: Auto Hotspot Failure %d", *(v0 + 7052)}];
  }

  objc_autoreleasePoolPop(v9);
  if (!*(v0 + 7048) && *(v0 + 6884) == 1)
  {
    v10 = sub_10009D2E4(v1);
    if (v10)
    {
      v11 = v10;
      sub_100006F88(*(v0 + 64));
      v12 = sub_1000F8A18();
      sub_1000D62B4(v12, v13, 11, 0, v11, 0);
      CFRelease(v11);

      sub_1000EC5CC(v0, @"userJoinAssociationFailed", 0);
    }
  }
}

uint64_t sub_100193CE8(uint64_t a1, int a2, int a3)
{
  valuePtr = 0;
  if (a1)
  {
    if (a3)
    {
      v32 = *(a1 + 128);
      v33 = sub_1000083D0();
      sub_10018C85C(v33, v34, v35, 110, 1, v36, v37, v38, v44, v45, v46, valuePtr, values, SHIDWORD(values), v49, keys, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
      v21 = v39;
      sub_10002A0C4();
      Mutable = 0;
      if (v40)
      {
LABEL_7:
        v22 = sub_1000075BC();
        if (v22)
        {
          v23 = v22;
          *v22 = a1;
          v22[1] = 0;
          v22[3] = 0;
          if (CFDictionaryContainsKey(v21, @"SSID_STR"))
          {
            v24 = 1;
          }

          else
          {
            v24 = CFDictionaryContainsKey(v21, @"SCAN_SSID_LIST") != 0;
          }

          v23[32] = v24;
          sub_100006F88(*(a1 + 64));
          v27 = sub_10001153C();
          v26 = sub_100025FF8(v27, v28, v29, 0, v30, v23, 0, 18);
          if (v26)
          {
            v43 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"Error initiating scan request: %d", v26}];
            }

            objc_autoreleasePoolPop(v43);
            free(v23);
          }
        }

        else
        {
          v42 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s: null scanData", "__WiFiDeviceManagerAutoInstantHotspotJoin"}];
          }

          objc_autoreleasePoolPop(v42);
          v26 = 0;
        }

        CFRelease(v21);
        if (!v3)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    else
    {
      valuePtr = 130;
      v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
      if (!v7)
      {
        return 0;
      }

      v3 = v7;
      v8 = sub_10000836C();
      Mutable = CFArrayCreateMutable(v8, v9, v10);
      if (!Mutable)
      {
        v4 = 0;
        v26 = 0;
LABEL_16:
        CFRelease(v3);
LABEL_17:
        if (v4)
        {
          CFRelease(v4);
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

        return v26;
      }

      v12 = sub_10001EDAC();
      v14 = sub_10000A540(v12, v13);
      keys = @"CHANNEL";
      v51 = @"CHANNEL_FLAGS";
      values = v14;
      v49 = v3;
      v4 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v15 = sub_100021D58();
      CFArrayAppendValue(v15, v16);
      sub_10018C85C(a2, Mutable, *(a1 + 128), 110, 1, v17, v18, v19, v44, v45, v46, valuePtr, values, SHIDWORD(values), v49, keys, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
      if (v20)
      {
        v21 = v20;
        CFDictionarySetValue(v20, @"SCAN_LOW_LATENCY", kCFBooleanTrue);
        goto LABEL_7;
      }
    }

    v41 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: failed to create scan request", "__WiFiDeviceManagerAutoInstantHotspotJoin"}];
    }

    objc_autoreleasePoolPop(v41);
    v26 = 0;
    if (!v3)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v25 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager NULL", "__WiFiDeviceManagerAutoInstantHotspotJoin"}];
  }

  objc_autoreleasePoolPop(v25);
  return 4294963396;
}

void sub_100194030()
{
  sub_10000D798();
  v1 = v0;
  if ([objc_msgSend(*(v0 + 6832) "wapCfg")])
  {
    sub_1000084B8();
  }

  else
  {
    v5 = objc_alloc_init(NSMutableString);
    v2 = 16;
    do
    {
      arc4random_uniform(9u);
      [v5 appendString:{objc_msgSend(sub_10002A0A0(), "stringWithFormat:")}];
      --v2;
    }

    while (v2);
    [*(v1 + 6832) createWAPConfig:v5];
    *(v1 + 5440) = v5;
    if (sub_1000F8BCC())
    {
      [objc_msgSend(&@"DRIVER_AVAILABLE_JOIN_TIMEOUT_TARGET_CLASS_INFO".length "sharedInstance")];
    }

    sub_1000084B8();
  }
}

void sub_100194110(void *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v10 = *a6;
  v11 = sub_100060BB0(*(*a6 + 64));
  v12 = sub_10018A684(v10);
  free(a6);
  v13 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"MIS scan completed (%d) with current state: %d", a5, *(v10 + 5392)}];
  }

  objc_autoreleasePoolPop(v13);
  if (v11 == *(v10 + 5400))
  {
    if (!*(v10 + 5271) || *(v10 + 5269) && v12)
    {
      if (a1 && a3 && *(v10 + 5416))
      {
        v37 = 0;
        v36 = 0;
        Count = CFArrayGetCount(a3);
        if (Count >= 1)
        {
          a1 = Count;
          do
          {
            v15 = sub_10001E7C0();
            ValueAtIndex = CFArrayGetValueAtIndex(v15, v16);
            if (ValueAtIndex)
            {
              v18 = sub_10000A540(ValueAtIndex, @"CHANNEL");
              v38.location = 0;
              v38.length = 3;
              v19 = CFArrayBSearchValues(*(v10 + 5416), v38, v18, &_CFNumberCompare, 0);
              if (v19 <= 2)
              {
                ++*(&v36 + v19);
              }
            }

            sub_100021D9C();
          }

          while (!v20);
        }

        v21 = 0;
        LODWORD(v22) = 0;
        a3 = "%s: interfernce on channel %d = %d";
        do
        {
          if (sub_1000CEE58(v10, dword_100297BAC[v21]))
          {
            *(&v36 + v21) = 0xFFFF;
          }

          v23 = objc_autoreleasePoolPush();
          v24 = sub_10001E2C0();
          if (v24)
          {
            [v24 WFLog:3 message:{"%s: interfernce on channel %d = %d", "__FindLeastBusyChannelForMIS", dword_100297BAC[v21], *(&v36 + v21)}];
          }

          objc_autoreleasePoolPop(a1);
          if (*(&v36 + v22) > *(&v36 + v21))
          {
            LODWORD(v22) = v21;
          }

          ++v21;
        }

        while (v21 != 3);
      }

      else
      {
        v22 = 0;
        while (sub_1000CEE58(v10, dword_100297BAC[v22]))
        {
          if (++v22 == 3)
          {
            LODWORD(v22) = 0;
            break;
          }
        }

        v34 = objc_autoreleasePoolPush();
        v35 = sub_1000950EC();
        if (v35)
        {
          [v35 WFLog:3 message:{"Error: %s: Using default hostAp channel %d", "__FindLeastBusyChannelForMIS", dword_100297BAC[v22]}];
        }

        objc_autoreleasePoolPop(a3);
      }

      *(v10 + 5264) = dword_100297BAC[v22];
      if (sub_1000F8BCC())
      {
        [objc_msgSend(a3 + 440 "sharedInstance")];
      }

      v25 = objc_autoreleasePoolPush();
      v26 = sub_1000950EC();
      if (v26)
      {
        [v26 WFLog:3 message:{"Least Congested channel is %d", *(v10 + 5264)}];
      }

      objc_autoreleasePoolPop(a3);
      if (*(v10 + 5392) == 1)
      {
        sub_1000F8C64();

        sub_1000EE598();
        return;
      }
    }

    else
    {
      v32 = objc_autoreleasePoolPush();
      v33 = sub_1000950EC();
      if (v33)
      {
        [v33 WFLog:3 message:{"%s: Aborting MIS Start", "__WiFiDeviceManagerMISScanCallback"}];
      }

      objc_autoreleasePoolPop(a3);
      *(v10 + 5392) = 0;
      bzero(&v36, 0xB8uLL);
      HIDWORD(v36) = 7;
      sub_1000C67C8(v10, &v36);
    }

    sub_1000F8C64();
    return;
  }

  v28 = objc_autoreleasePoolPush();
  v29 = sub_1000950EC();
  if (v29)
  {
    [v29 WFLog:3 message:{"Ignorning old MIS Scan request.  CurrentCommand=%lld PendingCommand=%lld", v11, *(v10 + 5400)}];
  }

  sub_1000F8C64();

  objc_autoreleasePoolPop(v30);
}

void sub_1001944D4()
{
  sub_1000F8B6C();
  v1 = v0;
  v3 = v2;
  v70 = v4;
  v6 = v5;
  v7 = v5 + 4096;
  v8 = *(v5 + 64);
  [NSString stringWithFormat:@"%@"];
  v9 = sub_10001158C();
  sub_1000F8B9C(v9, v10, v11, v12, v13, v14, v15, v16, @"PHBringUp", v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84);
  v17 = sub_10018A684(v6);
  v18 = *(v7 + 1174);
  v19 = *(v7 + 1175);
  v20 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"_WiFiDeviceManagerStartMISCallback err=%d, network=%@ state=%d", v3, sub_10000A878(v1), *(v6 + 5392)}];
  }

  objc_autoreleasePoolPop(v20);
  if (*(v6 + 5392) == 2)
  {
    *(v6 + 5392) = 0;
    *(v7 + 1174) = 0;
    *(v7 + 1176) = 0;
    *(v7 + 1339) = 0;
    *(v7 + 1343) = 0;
    if (v3 || !v1)
    {
      v50 = objc_autoreleasePoolPush();
      v51 = sub_1000F8AF8();
      if (v51)
      {
        [v51 WFLog:4 message:"__WiFiDeviceManagerStartMISCallback start network failed"];
      }

      objc_autoreleasePoolPop(v3);
      v52 = sub_1000F8A4C();
      v55 = 14;
      goto LABEL_58;
    }

    if (!*(v6 + 4992))
    {
      v56 = objc_autoreleasePoolPush();
      v57 = sub_1000F8AF8();
      if (v57)
      {
        [v57 WFLog:4 message:"__WiFiDeviceManagerStartMISCallback: MIS Session is NULL"];
      }

      objc_autoreleasePoolPop(v3);
      v52 = sub_1000F8A4C();
      v55 = 9;
      goto LABEL_58;
    }

    if (!v17)
    {
      v58 = objc_autoreleasePoolPush();
      v59 = sub_1000F8AF8();
      if (v59)
      {
        [v59 WFLog:3 message:{"%s: Aborting MIS Start", "__WiFiDeviceManagerStartMISSessionCallback"}];
      }

      objc_autoreleasePoolPop(v3);
      v52 = sub_1000F8A4C();
      v55 = 4;
      goto LABEL_58;
    }

    if (!v19 && !v18)
    {
      if (!*(v7 + 1173) && !*(v6 + 5280))
      {
        v21 = objc_autoreleasePoolPush();
        v22 = sub_10006AD2C();
        if (v22)
        {
          [v22 WFLog:3 message:{"%s: Starting MIS idle timer", "__WiFiDeviceManagerStartMISSessionCallback"}];
        }

        objc_autoreleasePoolPop(v3);
        v23 = sub_1000F8B38();
        sub_1000C7220(v23, v24);
      }

      goto LABEL_23;
    }

    if (!v18)
    {
LABEL_23:
      bzero(buffer, 0x100uLL);
      v32 = *(v6 + 64);
      v33 = sub_100060E7C();
      CFStringGetCString(v33, buffer, 256, 0);
      v34 = objc_autoreleasePoolPush();
      v35 = sub_10006AD2C();
      if (v35)
      {
        [v35 WFLog:3 message:{"Attempting to start DHCP Service on %s", buffer}];
      }

      objc_autoreleasePoolPop(v3);
      if (_MISStartServiceDHCP)
      {
        v36 = _MISStartServiceDHCP(*(v6 + 4992), buffer, (v6 + 5000));
        if (!v36)
        {
          v37 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            v38 = *(v6 + 64);
            sub_100060E7C();
            sub_100026290();
          }

          objc_autoreleasePoolPop(v37);
          v39 = *(v6 + 5256);
          if (v39)
          {
            CFRelease(v39);
          }

          *(v6 + 5256) = v1;
          CFRetain(v1);
          if (!*(v6 + 5276))
          {
            v40 = *(v6 + 64);
            v41 = sub_100060E7C();
            v42 = IOPMAssertionCreateWithName(@"NoIdleSleepAssertion", 0xFFu, v41, (v6 + 5276));
            if (v42)
            {
              v43 = v42;
              v44 = objc_autoreleasePoolPush();
              v45 = sub_1000F8AC4();
              if (v45)
              {
                [v45 WFLog:4 message:{"Unable to prevent idle sleep during MIS Session, error=%d", v43}];
              }

              objc_autoreleasePoolPop(v1);
              *(v6 + 5276) = 0;
            }
          }

          v46 = objc_autoreleasePoolPush();
          v47 = sub_1000F8AC4();
          if (v47)
          {
            [v47 WFLog:3 message:"Started Internet Connection Sharing over WiFi"];
          }

          objc_autoreleasePoolPop(v1);
          v48 = *(v6 + 64);
          v49 = *(v7 + 1212);
          sub_10014C5C0();
          bzero(&v71, 0xB8uLL);
          v75 = sub_100058B68();
          LODWORD(v79) = *(v7 + 1168);
          v72 = 1;
          if (*(v7 + 1338))
          {
            v84 = sub_100058B68();
          }

          sub_1000C67C8(v6, &v71);
          v25 = sub_1000F8C58();
          v27 = 1;
          goto LABEL_41;
        }

        v60 = v36;
      }

      else
      {
        v60 = -1;
      }

      v61 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"Can't start DHCP service: %s", strerror(v60)}];
      }

      objc_autoreleasePoolPop(v61);
      v52 = sub_1000F8A4C();
      v55 = 20;
LABEL_58:
      sub_1001949D0(v52, v53, v54, v55);
      goto LABEL_42;
    }

    v28 = *(v6 + 64);
    v29 = *(v7 + 1212);
    sub_10014C5C0();
    v30 = objc_autoreleasePoolPush();
    v31 = sub_1000F8AC4();
    if (v31)
    {
      [v31 WFLog:3 message:{"%s: MIS successfully restarted.", "__WiFiDeviceManagerStartMISSessionCallback"}];
    }

    objc_autoreleasePoolPop(v1);
  }

  else
  {
    v1 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"Start MIS Session, unexpected state %d", *(v6 + 5392)}];
    }

    objc_autoreleasePoolPop(v1);
    if ((*(v7 + 3057) & 4) != 0)
    {
      v25 = sub_1000F8C58();
      v27 = 0;
LABEL_41:
      sub_1000BBAE0(v25, v26, v27);
    }
  }

LABEL_42:
  if (!*(v7 + 1171))
  {
    v62 = *(v6 + 5276);
    if (v62)
    {
      v63 = IOPMAssertionRelease(v62);
      if (v63)
      {
        v64 = v63;
        v65 = objc_autoreleasePoolPush();
        v66 = sub_1000F8AC4();
        if (v66)
        {
          [v66 WFLog:4 message:{"%s: MIS session start failed: release MIS PM Assertion, error=%d", "__WiFiDeviceManagerStartMISSessionCallbackWrapper", v64}];
        }

        objc_autoreleasePoolPop(v1);
      }

      *(v6 + 5276) = 0;
    }
  }

  sub_1000F8B84();
}

void sub_1001949D0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_100015E88();
  v8 = v7 + 4096;
  if (v9 != 14)
  {
    sub_100006F88(*(v4 + 64));
    sub_1000F8A18();
    sub_1000F8AB8();
    sub_1000CEA50(v10, v11, v12, v13, v14);
  }

  *(v8 + 1171) = 0;
  if (+[WiFiSoftApStateMonitor sharedInstance])
  {
    [+[WiFiSoftApStateMonitor sharedInstance](WiFiSoftApStateMonitor setMisEnabled:"setMisEnabled:", *(v8 + 1171) != 0];
  }

  if (*(v8 + 1338))
  {
    *(v8 + 1338) = 0;
  }

  sub_10018AC18();
  if (_MISDetach)
  {
    v15 = *(v4 + 4992);
    if (v15)
    {
      _MISDetach(v15);
    }
  }

  *(v4 + 4992) = 0;
  *(v4 + 192) = 13;
  v16 = sub_1000F8C58();
  sub_1000BBAE0(v16, v17, 0);
  if (_os_feature_enabled_impl())
  {
    sub_100019814(v4, 10);
  }

  else
  {
    [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
    v18 = sub_1000F8B38();
    sub_1000BD310(v18, v19, v20);
  }

  bzero(v21, 0xB8uLL);
  v22 = a4;
  sub_1000C67C8(v4, v21);
}

void sub_100194B10()
{
  sub_10000FDC0();
  sub_10001131C();
  v3 = sub_1000A4FF8(v2);
  v4 = sub_1000A5000(v1);
  v5 = sub_1000A5008(v1);
  v6 = objc_autoreleasePoolPush();
  v7 = off_100298C40;
  if (off_100298C40)
  {
    sub_1000AA864(*(v0 + 3336));
    sub_1000A5484(v5);
    [v7 WFLog:3 message:"%s: state=%@ type=%d responseType=%@ inputType=%d"];
  }

  objc_autoreleasePoolPop(v6);
  if (v4 == 2 || (!v3 ? (v8 = v5 == 4) : (v8 = 0), v8 ? (v9 = 0) : (v9 = 1), v3 == 13 || (v9 & 1) == 0))
  {
    if (v3)
    {
      switch(v3)
      {
        case 2:
          v14 = sub_1000086AC();
          sub_1000EBAD8(v14, v15);
          break;
        case 13:
          v10 = sub_1000086AC();
          sub_1000DE20C(v10, v11);
          break;
        case 1:
          sub_1000086AC();
          sub_100193894();
          break;
      }
    }

    else
    {
      v12 = sub_1000086AC();
      sub_1000EBEB0(v12, v13);
    }
  }

  v16 = *(v0 + 224);
  if (v16 == v1)
  {
    v17 = *(v0 + 3336);
    if (v17 == 17 || v17 == 14)
    {
      sub_100008690();

      sub_1000B6EBC(v19);
    }

    else
    {
      if (v1)
      {
        CFRelease(v16);
        *(v0 + 224) = 0;
      }

      sub_100008690();
    }
  }

  else
  {
    objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"%s: notification in callback is not pending"];
    }

    sub_100008690();

    objc_autoreleasePoolPop(v21);
  }
}

void sub_100194CC0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v12 = objc_autoreleasePoolPush();
  if (a3)
  {
    if (!v5)
    {
      sub_100003958(NSDictionary, v6, v7, v8, v9, v10, v11);
      v38 = [sub_100024F70() errorWithDomain:? code:? userInfo:?];
      goto LABEL_83;
    }

    if (*(v5 + 8936))
    {
      if (*(v5 + 3361) && (*(v5 + 6344) || *(v5 + 5576)) && *(v5 + 20) == 1 && !*(v5 + 256) && !*(v5 + 257))
      {
        v13 = !*(v5 + 5267) && !*(v5 + 5392) && *(v5 + 5409) == -*(v5 + 5408) && !sub_100025A5C(v5);
        v14 = *(v5 + 7152);
        if (*(v5 + 7152))
        {
          v14 = sub_1000C7464(v5, 1) != 0;
        }

        if ((v13 | v14))
        {
          sub_100006F88(*(v5 + 64));
          v15 = sub_10000D800();
          v23 = sub_1000078F4(v15, v16);
          if ((*(v5 + 5468) == 102 && (*(v5 + 5464) & 1) != 0 || *(v5 + 50)) && *(v5 + 5592) == 1 && !*(v5 + 37) && (a2 > 0x37 || ((1 << a2) & 0xD0000000000000) == 0) || *(v5 + 3470) && (a2 > 0x37 || ((1 << a2) & 0xD0012000000184) == 0) || sub_1000C905C(v5) || sub_100025988(v5))
          {
            goto LABEL_85;
          }

          if (!v23 || sub_10000A604(v23))
          {
LABEL_73:
            if (*(v5 + 5488))
            {
              v35 = *(v5 + 5480);
              if (!v35 || ([v35 isPowerResourceAvailable:0] & 1) != 0)
              {
                if (*(v5 + 3536) || (v36 = *(v5 + 3540), sub_1000F8C40(), !v44))
                {
                  if (!sub_10019004C(v5) && *(v5 + 9120))
                  {
                    v37 = *(v5 + 3520);
                    if (v37 < 1)
                    {
                      v38 = 0;
                      v5 = 1;
                      if (!v23)
                      {
LABEL_83:
                        v39 = sub_100021504();
                        v40(v39, v5, v38);
                        goto LABEL_84;
                      }

LABEL_82:
                      CFRelease(v23);
                      goto LABEL_83;
                    }

                    [NSString stringWithFormat:@"User join is in progress (count=%d)", v37];
                  }
                }
              }
            }

            else
            {
              [NSString stringWithFormat:@"Thermal index (%d) is below disabled threshold (%d)", 0, 0];
            }

LABEL_85:
            sub_100003958(NSDictionary, v17, v18, v19, v20, v21, v22);
            v38 = [sub_1000F89EC() errorWithDomain:? code:? userInfo:?];
            v5 = 0;
            if (!v23)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          }

          if ((a2 - 9 > 0x3B || ((1 << (a2 - 9)) & 0xC037802478E0001) == 0) && !CWFIsAutoJoinRetryTrigger())
          {
            goto LABEL_155;
          }

          v24 = objc_autoreleasePoolPush();
          if (a2 == 28 && *(v5 + 6976) && *(v5 + 7056))
          {
            v25 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: Transition OK. Auto Hotspot Network recommendation", "__WiFiDeviceManagerUnifiedAutoJoinIsStateSuitableForNetworkTransition"}];
            }

LABEL_71:
            objc_autoreleasePoolPop(v25);
            goto LABEL_72;
          }

          if (!*(v5 + 3576))
          {
            v34 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: no known networks", "__WiFiDeviceManagerUnifiedAutoJoinIsStateSuitableForNetworkTransition", v53}];
            }

            goto LABEL_153;
          }

          if (*(v5 + 20) != 1)
          {
            v34 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: wifi is off", "__WiFiDeviceManagerUnifiedAutoJoinIsStateSuitableForNetworkTransition", v53}];
            }

            goto LABEL_153;
          }

          if (!*(v5 + 3467))
          {
            v34 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: not associated", "__WiFiDeviceManagerUnifiedAutoJoinIsStateSuitableForNetworkTransition", v53}];
            }

            goto LABEL_153;
          }

          if (sub_100025AB8(v5) && sub_1000C9084(v5))
          {
            v34 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: Active Ranging Session", "__WiFiDeviceManagerUnifiedAutoJoinIsStateSuitableForNetworkTransition", v53}];
            }

            goto LABEL_153;
          }

          if (*(v5 + 6704))
          {
LABEL_45:
            if (a2 - 56 > 0xFFFFFFFFFFFFFFFBLL)
            {
LABEL_72:
              objc_autoreleasePoolPop(v24);
              goto LABEL_73;
            }

            if (*(v5 + 3464))
            {
              v34 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: voip on going", "__WiFiDeviceManagerUnifiedAutoJoinIsStateSuitableForNetworkTransition", v53}];
              }
            }

            else if (*(v5 + 3465))
            {
              v34 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: call on going", "__WiFiDeviceManagerUnifiedAutoJoinIsStateSuitableForNetworkTransition", v53}];
              }
            }

            else if (*(v5 + 3466))
            {
              v34 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: media playing", "__WiFiDeviceManagerUnifiedAutoJoinIsStateSuitableForNetworkTransition", v53}];
              }
            }

            else if (*(v5 + 3470))
            {
              v34 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: Awdl RealTime is active", "__WiFiDeviceManagerUnifiedAutoJoinIsStateSuitableForNetworkTransition", v53}];
              }
            }

            else
            {
              if (a2 == 32 || a2 == 47)
              {
                goto LABEL_72;
              }

              if (*(v5 + 3468))
              {
                v34 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: on a moving network", "__WiFiDeviceManagerUnifiedAutoJoinIsStateSuitableForNetworkTransition", v53}];
                }
              }

              else if (*(v5 + 5570))
              {
                v34 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: Airplay over Infra is active", "__WiFiDeviceManagerUnifiedAutoJoinIsStateSuitableForNetworkTransition", v53}];
                }
              }

              else if (*(v5 + 5568))
              {
                v34 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: in carplay", "__WiFiDeviceManagerUnifiedAutoJoinIsStateSuitableForNetworkTransition", v53}];
                }
              }

              else if (*(v5 + 3448) >= 5)
              {
                v34 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: already tried enough times", "__WiFiDeviceManagerUnifiedAutoJoinIsStateSuitableForNetworkTransition", v53}];
                }
              }

              else
              {
                Current = CFAbsoluteTimeGetCurrent();
                v27 = *(v5 + 3456);
                v28 = Current - v27;
                if (v27 != 0.0 && v28 <= 30.0)
                {
                  v55 = v28;
                  v34 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: timeSinceLastScan %f", "__WiFiDeviceManagerUnifiedAutoJoinIsStateSuitableForNetworkTransition", *&v55}];
                  }
                }

                else
                {
                  v30 = CFAbsoluteTimeGetCurrent();
                  v31 = *(v5 + 3472);
                  v32 = v30 - v31;
                  if (v31 == 0.0 || v32 > 10.0)
                  {
                    goto LABEL_72;
                  }

                  v54 = v32;
                  v34 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: timeSinceLinkUp %f", "__WiFiDeviceManagerUnifiedAutoJoinIsStateSuitableForNetworkTransition", *&v54}];
                  }
                }
              }
            }

            goto LABEL_153;
          }

          if (*(v5 + 6696) == 1)
          {
            v25 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: Transition ok when its within colocated scope", "__WiFiDeviceManagerUnifiedAutoJoinIsStateSuitableForNetworkTransition"}];
            }

            goto LABEL_71;
          }

          v41 = sub_100009664(*(v5 + 64));
          v42 = sub_100007D90(v5, v41, 1);
          v43 = v42;
          if (a2 - 32 > 0x24 || ((1 << (a2 - 32)) & 0x1800F08001) == 0)
          {
            if (v42 && sub_10000A604(v42))
            {
              goto LABEL_90;
            }

            if (*(v5 + 3469))
            {
              v51 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: network switched by user", "__WiFiDeviceManagerUnifiedAutoJoinIsStateSuitableForNetworkTransition"}];
              }

              objc_autoreleasePoolPop(v51);
              if (v43)
              {
                CFRelease(v43);
              }

              goto LABEL_154;
            }
          }

          if (!v43)
          {
LABEL_91:
            if (a2 - 69 > 0xFFFFFFFFFFFFFFFDLL || a2 == 47 || a2 == 32 || a2 == 45)
            {
              goto LABEL_45;
            }

            v44 = (a2 & 0xFFFFFFFFFFFFFFFCLL) == 0x34 || *(v5 + 176) == 3;
            if (v44)
            {
              goto LABEL_45;
            }

            v34 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: display is on", "__WiFiDeviceManagerUnifiedAutoJoinIsStateSuitableForNetworkTransition", v53}];
            }

LABEL_153:
            objc_autoreleasePoolPop(v34);
LABEL_154:
            objc_autoreleasePoolPop(v24);
LABEL_155:
            sub_100003958(NSDictionary, v45, v46, v47, v48, v49, v50);
            v38 = [sub_1000F89EC() errorWithDomain:? code:? userInfo:?];
            v5 = 0;
            goto LABEL_82;
          }

LABEL_90:
          CFRelease(v43);
          goto LABEL_91;
        }

        [NSString stringWithFormat:@"MIS is enabled (wifi_count=%d, bt_count=%d, block_scan=%d, mis_disc_state=%d)", *(v5 + 5408), *(v5 + 5409), *(v5 + 5376), *(v5 + 5269)];
      }

      sub_100003958(NSDictionary, v6, v7, v8, v9, v10, v11);
      v52 = sub_1000F89DC();
    }

    else
    {
      sub_100003958(NSDictionary, v6, v7, v8, v9, v10, v11);
      v52 = sub_100024F70();
    }

    v38 = [v52 errorWithDomain:? code:? userInfo:?];
    v5 = 0;
    goto LABEL_83;
  }

LABEL_84:
  objc_autoreleasePoolPop(v12);
}

void sub_10019598C()
{
  sub_1000951B4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = *(v6 + 32);
  v10 = objc_autoreleasePoolPush();
  if (v1)
  {
    if (v7 && v7[1117])
    {
      if (v5)
      {
        v11 = sub_10000836C();
        v13 = sub_100022854(v11, v12);
        if (v13)
        {
          v14 = v13;
          if (sub_1000E0A04(v7, v13, 1))
          {
            if (!v3)
            {
              goto LABEL_11;
            }

            v17 = sub_100022854([v3 matchingKnownNetworkProfile], 0);
            if (v17)
            {
              v3 = v17;
              if (sub_100164A3C(v7[859], v14))
              {
                v20 = v7[859];
                sub_100006F88(v7[8]);
                if (sub_100164B04(v20))
                {
LABEL_11:
                  v21 = sub_1001986B0(v7, v14);
                  CFRelease(v14);
                  v22 = 0;
                  v23 = 0;
                  v24 = 1;
                  if (!v3)
                  {
LABEL_13:
                    v25 = sub_100021504();
                    v26(v25, v24, v21, v23);
                    goto LABEL_14;
                  }

LABEL_12:
                  CFRelease(v3);
                  v23 = v22;
                  goto LABEL_13;
                }

                v28 = NSPOSIXErrorDomain;
              }

              else
              {
                v28 = NSPOSIXErrorDomain;
              }

              v22 = [NSError errorWithDomain:v28 code:1 userInfo:sub_1000F89FC(NSDictionary, v18, v19)];
              CFRelease(v14);
              v21 = 0;
              v24 = 0;
              goto LABEL_12;
            }
          }

          sub_1000F89FC(NSDictionary, v15, v16);
          v23 = [sub_1000F89EC() errorWithDomain:? code:? userInfo:?];
          CFRelease(v14);
LABEL_19:
          v21 = 0;
          v24 = 0;
          goto LABEL_13;
        }
      }

      sub_1000F89FC(NSDictionary, v8, v9);
      v27 = sub_1000F89DC();
    }

    else
    {
      sub_1000F89FC(NSDictionary, v8, v9);
      v27 = sub_100024F70();
    }

    v23 = [v27 errorWithDomain:? code:? userInfo:?];
    goto LABEL_19;
  }

LABEL_14:
  objc_autoreleasePoolPop(v10);
  sub_10001ED88();
}

void sub_100195D04()
{
  sub_1000F8B6C();
  v1 = v0;
  v3 = v2;
  v5 = *(v4 + 32);
  v6 = objc_autoreleasePoolPush();
  if (!v1)
  {
    goto LABEL_74;
  }

  if (!v5)
  {
    v100[0] = NSLocalizedDescriptionKey;
    v63 = @"No device manager configured";
LABEL_80:
    v103[0] = v63;
    [NSDictionary dictionaryWithObjects:v103 forKeys:v100 count:1];
    v64 = sub_1000F8B44();
LABEL_82:
    v65 = [v64 errorWithDomain:? code:? userInfo:?];
    v58 = 0;
    goto LABEL_87;
  }

  if (!*(v5 + 8936))
  {
    v100[0] = NSLocalizedDescriptionKey;
    v63 = @"No auto-join manager configured";
    goto LABEL_80;
  }

  if (!v3)
  {
    v100[0] = NSLocalizedDescriptionKey;
    v103[0] = @"No scan parameters specified";
    [NSDictionary dictionaryWithObjects:v103 forKeys:v100 count:1];
    v64 = sub_1000F8B44();
    goto LABEL_82;
  }

  v7 = *(v5 + 9040);
  v81 = v3;
  if (v7)
  {
    CWFErrorDescription();
    sub_1000305C4();
    CWFErrorWithDescription();
    sub_100021504();
    sub_10001ECA0();
    v8();
    _Block_release(*(v5 + 9040));
    *(v5 + 9040) = 0;
  }

  if (_os_feature_enabled_impl())
  {
    v9 = sub_10001D430(*(v5 + 6872));
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: prefer 6E enabled %d", "__WiFiDeviceManagerUnifiedAutoJoinScanForNetworks", v9 == 0}];
    }

    v7 = v9 == 0;
    objc_autoreleasePoolPop(v10);
    [*(v5 + 8936) setMaxCompatibilityEnabled:v7];
    v3 = v81;
  }

  *(v5 + 3915) = 0;
  *(v5 + 9040) = _Block_copy(v1);

  *(v5 + 9048) = [v3 copy];
  v79 = +[NSMutableDictionary dictionary];
  v95 = 0;
  v11 = sub_1000083D0();
  HIDWORD(v85) = sub_1000E6A7C(v11, v12);
  v13 = sub_1000E6D08(v5, &v95);
  if (*(v5 + 7152) && *(v5 + 5267) && *(v5 + 5264) >= 0xFu && (*(v5 + 7153) & 4) != 0)
  {
    v61 = objc_autoreleasePoolPush();
    v62 = sub_1000F8B2C();
    if (v62)
    {
      [v62 WFLog:4 message:"AJScan: Disallowing 6Ghz channels due to Active 5GHz MIS session"];
    }

    objc_autoreleasePoolPop(v7);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v74 = v6;
  v72 = v5;
  if ([v3 channels])
  {
    v15 = +[NSMutableArray array];
  }

  else
  {
    v15 = 0;
  }

  v76 = v1;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = [v3 channels];
  v16 = [obj countByEnumeratingWithState:&v91 objects:v103 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = *v92;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v92 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v91 + 1) + 8 * i);
        if ((!HIDWORD(v85) || ([*(*(&v91 + 1) + 8 * i) is2GHz] & 1) == 0) && (!v13 || (objc_msgSend(v21, "is5GHz") & 1) == 0) && ((v14 & 1) != 0 || (objc_msgSend(v21, "is6GHz") & 1) == 0))
        {
          if (!v18)
          {
            v18 = +[NSMutableArray array];
          }

          [v15 addObject:v21];
          v101[0] = @"CHANNEL";
          [v21 channel];
          v22 = [sub_10001158C() numberWithUnsignedInteger:?];
          v101[1] = @"CHANNEL_FLAGS";
          v102[0] = v22;
          v102[1] = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v21 flags]);
          [NSDictionary dictionaryWithObjects:v102 forKeys:v101 count:2];
          [sub_100029EF8() addObject:?];
        }
      }

      v17 = [obj countByEnumeratingWithState:&v91 objects:v103 count:16];
    }

    while (v17);
  }

  else
  {
    v18 = 0;
  }

  v23 = v5;
  [*(v5 + 9048) setChannels:v15];
  v6 = v74;
  if (![v18 count] && v95 == 5)
  {
    *(v5 + 3915) = 1;
    v24 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{" %s: ajScanRejectedInAWDLRealTime:%d ", "__WiFiDeviceManagerUnifiedAutoJoinScanForNetworks", *(v5 + 3915)}];
    }

    objc_autoreleasePoolPop(v24);
  }

  if ([v18 count])
  {
    [v79 setObject:v18 forKeyedSubscript:@"SCAN_CHANNELS"];
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v25 = [v81 SSIDList];
    v26 = [v25 countByEnumeratingWithState:&v87 objects:v100 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = 0;
      v29 = *v88;
      v1 = v76;
      do
      {
        for (j = 0; j != v27; j = j + 1)
        {
          if (*v88 != v29)
          {
            objc_enumerationMutation(v25);
          }

          v31 = *(*(&v87 + 1) + 8 * j);
          if (!v28)
          {
            v28 = +[NSMutableArray array];
          }

          v98 = @"SSID_STR";
          v99 = v31;
          [NSDictionary dictionaryWithObjects:&v99 forKeys:&v98 count:1];
          v32 = [sub_10001D1D0() addObject:?];
        }

        v27 = sub_1000F8BB4(v32, v33, &v87, v100);
      }

      while (v27);
    }

    else
    {
      v28 = 0;
      v1 = v76;
    }

    if ([v28 count])
    {
      v96 = @"SSID_STR";
      v97 = &stru_1002680F8;
      [NSDictionary dictionaryWithObjects:&v97 forKeys:&v96 count:1];
      [sub_10001D1D0() addObject:?];
    }

    v34 = v79;
    [v79 setObject:v28 forKeyedSubscript:@"SCAN_SSID_LIST"];
    [v79 setObject:objc_msgSend(v81 forKeyedSubscript:{"SSID"), @"SSID_STR"}];
    [v79 setObject:objc_msgSend(v81 forKeyedSubscript:{"BSSID"), @"BSSID"}];
    if ([v81 shortSSID])
    {
      [sub_1000F8A24() shortSSID];
      v35 = [sub_100021488() numberWithUnsignedInteger:?];
    }

    else
    {
      v35 = 0;
    }

    [v79 setObject:v35 forKeyedSubscript:@"SCAN_SHORT_SSID"];
    [sub_1000F8A24() scanType];
    [v79 setObject:objc_msgSend(sub_100021488() forKeyedSubscript:{"numberWithUnsignedInt:"), @"SCAN_TYPE"}];
    [sub_1000F8A24() BSSType];
    [v79 setObject:objc_msgSend(sub_100021488() forKeyedSubscript:{"numberWithUnsignedInt:"), @"SCAN_BSS_TYPE"}];
    [sub_1000F8A24() PHYMode];
    [v79 setObject:objc_msgSend(sub_100021488() forKeyedSubscript:{"numberWithUnsignedInt:"), @"SCAN_PHY_MODE"}];
    [sub_1000F8A24() restTime];
    [v79 setObject:objc_msgSend(sub_100021488() forKeyedSubscript:{"numberWithUnsignedInteger:"), @"SCAN_REST_TIME"}];
    [sub_1000F8A24() dwellTime];
    [v79 setObject:objc_msgSend(sub_100021488() forKeyedSubscript:{"numberWithUnsignedInteger:"), @"SCAN_DWELL_TIME"}];
    [sub_1000F8A24() mergeScanResults];
    [v79 setObject:objc_msgSend(sub_100021488() forKeyedSubscript:{"numberWithBool:"), @"SCAN_MERGE"}];
    if ([v81 numberOfScans])
    {
      [sub_1000F8A24() numberOfScans];
      v36 = [sub_100021488() numberWithUnsignedInteger:?];
    }

    else
    {
      v36 = &off_1002818D8;
    }

    [v79 setObject:v36 forKeyedSubscript:@"SCAN_NUM_SCANS"];
    if ([v81 acceptableCacheAge] == -1)
    {
      [v79 setObject:&__kCFBooleanTrue forKeyedSubscript:@"CacheOnly"];
      v37 = &off_1002818F0;
    }

    else
    {
      v37 = [@"SSID_STR" numberWithDouble:{objc_msgSend(sub_1000F8A24(), "acceptableCacheAge") / 1000.0}];
    }

    [v79 setObject:v37 forKeyedSubscript:@"SCAN_MAXAGE"];
    [sub_1000F8A24() scanFlags];
    [v79 setObject:objc_msgSend(sub_100021488() forKeyedSubscript:{"numberWithUnsignedInt:"), @"SCAN_FLAGS"}];
    if ([v81 scanType] != 3 && objc_msgSend(v81, "acceptableCacheAge") != -1)
    {
      v38 = *(v72 + 9024);
      if ([objc_msgSend(*(v72 + 9048) "channels")] + v38 >= 7)
      {
        v39 = *(v72 + 64);
        v68 = [*(v72 + 9016) UUIDString];
        [NSString stringWithFormat:@"%@/%@"];
        v40 = sub_100021488();
        sub_1000F8B9C(v40, v41, v42, v43, v44, v45, v46, v47, @"AutoJoin", v68, v70, v72, v74, v76, HIDWORD(v76), v79, v81, obj, v85, v87, *(&v87 + 1), v88, *(&v88 + 1), v89, *(&v89 + 1), v90, *(&v90 + 1));
        v48 = *(v23 + 64);
        v69 = [*(v23 + 9016) UUIDString];
        [NSString stringWithFormat:@"%@/%@"];
        v49 = sub_100021488();
        sub_1000F8D50(v49, v50, v51, v52, v53, v54, v55, v56, @"AutoJoin", v69, v71, v73, v75, v77, v78, v80, v82, obja, v86, v87, *(&v87 + 1), v88, *(&v88 + 1), v89, *(&v89 + 1), v90, *(&v90 + 1));
      }
    }

    v57 = sub_1000075BC();
    v58 = v57;
    if (v57)
    {
      *v57 = v23;
      v57[1] = 0;
      v57[3] = 0;
      if ([v28 count])
      {
        v59 = 21;
      }

      else
      {
        v59 = 20;
      }

      v60 = sub_100006F88(*(v23 + 64));
      if (!sub_100025FF8(v23, v60, v34, 10, sub_1000F74E8, v58, 0, v59))
      {
        goto LABEL_74;
      }

      sub_100021D58();
      CWFErrorDescription();
      sub_100021D58();
    }

    else
    {
      CWFErrorDescription();
      sub_100021488();
    }

    v65 = CWFErrorWithDescription();
  }

  else
  {
    CWFErrorDescription();
    sub_100021488();
    v65 = CWFErrorWithDescription();
    v58 = 0;
    v1 = v76;
  }

LABEL_87:
  if (v65)
  {
    if (v58)
    {
      free(v58);
    }

    v66 = v1[2];
    sub_10001ECA0();
    v67();
  }

LABEL_74:
  objc_autoreleasePoolPop(v6);
  sub_1000F8B84();
}

void sub_1001966E8(uint64_t a1, void *a2, const void *a3)
{
  v5 = *(a1 + 32);
  v6 = objc_autoreleasePoolPush();
  v7 = v6;
  if (!a3)
  {
    goto LABEL_22;
  }

  if (!v5)
  {
    *&v31 = NSLocalizedDescriptionKey;
    v25 = @"No device manager configured";
LABEL_25:
    v30[0] = v25;
    [NSDictionary dictionaryWithObjects:v30 forKeys:&v31 count:1];
    v26 = sub_100024F70();
    goto LABEL_27;
  }

  if (!*(v5 + 8936))
  {
    *&v31 = NSLocalizedDescriptionKey;
    v25 = @"No auto-join manager configured";
    goto LABEL_25;
  }

  if (a2)
  {
    v29 = v6;
    v8 = *(v5 + 9056);
    if (v8)
    {
      CWFErrorDescription();
      sub_10001158C();
      CWFErrorWithDescription();
      v9 = *(v8 + 16);
      sub_10001ECA0();
      v10();
      _Block_release(*(v5 + 9056));
      *(v5 + 9056) = 0;
    }

    *(v5 + 9056) = _Block_copy(a3);

    *(v5 + 9064) = [a2 copy];
    v11 = +[NSMutableDictionary dictionary];
    [v11 setObject:&off_100281878 forKeyedSubscript:@"GAS_PROTOCOL"];
    [v11 setObject:objc_msgSend(a2 forKeyedSubscript:{"ANQPElementIDList"), @"GAS_QUERY"}];
    v12 = +[NSMutableArray array];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v13 = [a2 scanResults];
    v14 = [v13 countByEnumeratingWithState:&v31 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v32;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(v13);
          }

          if ([*(*(&v31 + 1) + 8 * i) scanRecord])
          {
            [sub_10001158C() addObject:?];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v31 objects:v30 count:16];
      }

      while (v15);
    }

    v18 = sub_10005894C(v12);
    if (v18 && ((v19 = v18, [sub_10001153C() setObject:? forKeyedSubscript:?], objc_msgSend(a2, "acceptableCacheAge") == -1) ? (objc_msgSend(v11, "setObject:forKeyedSubscript:", &__kCFBooleanTrue, @"CacheOnly"), v20 = &off_1002818F0) : (v20 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", objc_msgSend(a2, "acceptableCacheAge") / 1000.0)), objc_msgSend(v11, "setObject:forKeyedSubscript:", v20, @"SCAN_MAXAGE"), CFRelease(v19), (v21 = malloc_type_malloc(0x18uLL, 0xA00402214FCE6uLL)) != 0))
    {
      v22 = v21;
      v21[1] = 0;
      v21[2] = 0;
      *v21 = v5;
      v23 = *(v5 + 64);
      v24 = sub_100006F88(v23);
      v7 = v29;
      if (!sub_1000635DC(v23, v24, v11, 10, sub_1000F7850, v22))
      {
        goto LABEL_22;
      }

      sub_10000DAB4();
      CWFErrorDescription();
      sub_10000DAB4();
      v27 = CWFErrorWithDescription();
    }

    else
    {
      CWFErrorDescription();
      sub_10000757C();
      v27 = CWFErrorWithDescription();
      v22 = 0;
      v7 = v29;
    }

    goto LABEL_31;
  }

  *&v31 = NSLocalizedDescriptionKey;
  v30[0] = @"No ANQP parameters specified";
  [NSDictionary dictionaryWithObjects:v30 forKeys:&v31 count:1];
  v26 = sub_1000F89DC();
LABEL_27:
  v27 = [v26 errorWithDomain:? code:? userInfo:?];
  v22 = 0;
LABEL_31:
  if (v27)
  {
    if (v22)
    {
      free(v22);
    }

    sub_1000F8AE8();
    sub_10001ECA0();
    v28();
  }

LABEL_22:
  objc_autoreleasePoolPop(v7);
}

void sub_10019712C()
{
  sub_1000951B4();
  v1 = v0;
  v3 = v2;
  v5 = *(v4 + 32);
  v8 = objc_autoreleasePoolPush();
  if (v1)
  {
    if (!v5 || !*(v5 + 8936))
    {
      sub_1000F89FC(NSDictionary, v6, v7);
      [sub_100024F70() errorWithDomain:? code:? userInfo:?];
      goto LABEL_25;
    }

    v9 = *(v5 + 6884);
    if (![+[WiFiUserInteractionMonitor isSetupCompleted] sharedInstance]
    {
      sub_1000F89FC(NSDictionary, v10, v11);
      v19 = sub_100024F70();
LABEL_42:
      [v19 errorWithDomain:? code:? userInfo:?];
      goto LABEL_25;
    }

    if (!*(v5 + 6884) || sub_100064A78(*(v5 + 64)) || *(v5 + 5267))
    {
LABEL_41:
      sub_1000F89FC(NSDictionary, v10, v11);
      v19 = sub_1000F89DC();
      goto LABEL_42;
    }

    if (*(v5 + 7104))
    {
      v24 = *(v5 + 7104);
      v20 = @"AutoHotspot disabled via flags (0x%X)";
    }

    else
    {
      if (sub_1000D7904(v5))
      {
        goto LABEL_17;
      }

      if ((_os_feature_enabled_impl() & 1) != 0 || CFAbsoluteTimeGetCurrent() - *(v5 + 7032) > 15.0)
      {
        v12 = *(v5 + 6880);
        if (_os_feature_enabled_impl())
        {
          if ([+[WiFiUserInteractionMonitor isPersonalHotspotRecommendationAllowed] sharedInstance]
          {
LABEL_17:
            if ([+[WiFiUserInteractionMonitor isAnyCallInProgress] sharedInstance]
            {
              goto LABEL_41;
            }

            v13 = *(v5 + 3336);
            if (v13 == 12 || (v13 - 17) <= 3 || *(v5 + 6976))
            {
              goto LABEL_41;
            }

            if (v3 == 68 || (v14 = *(v5 + 64), v15 = sub_100006F88(v14), (v16 = sub_1000078F4(v14, v15)) == 0))
            {
              if ((_os_feature_enabled_impl() & 1) != 0 || CFAbsoluteTimeGetCurrent() - *(v5 + 7024) > 180.0)
              {
                goto LABEL_25;
              }

              v20 = @"AutoHotspot triggered within %d seconds of previous browse attempt";
              goto LABEL_40;
            }

            v21 = v16;
            sub_10000A878(v16);
            [NSString stringWithFormat:@"Already associated to %@"];
            [NSError errorWithDomain:NSPOSIXErrorDomain code:37 userInfo:sub_1000F89FC(NSDictionary, v22, v23)];
            CFRelease(v21);
LABEL_25:
            v17 = sub_100021504();
            v18(v17);
            goto LABEL_26;
          }
        }

        else if (v12)
        {
          goto LABEL_17;
        }

        if (*(v5 + 6884) == 1)
        {
          goto LABEL_41;
        }

        goto LABEL_17;
      }

      v20 = @"AutoHotspot triggered within %d seconds of previous link down";
    }

LABEL_40:
    [NSString stringWithFormat:v20];
    goto LABEL_41;
  }

LABEL_26:
  objc_autoreleasePoolPop(v8);
  sub_10001ED88();
}

void sub_1001976D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v10 = objc_autoreleasePoolPush();
  if (a3)
  {
    if (!v5 || !*(v5 + 8936))
    {
      sub_1000F8A30(NSDictionary, v6, v7, v8, v9);
      v40 = sub_100024F70();
      goto LABEL_42;
    }

    if (!a2)
    {
      sub_1000F8A30(NSDictionary, v6, v7, v8, v9);
      v40 = sub_1000F89DC();
      goto LABEL_42;
    }

    Count = CFArrayGetCount(*(v5 + 6992));
    v12 = CFArrayGetCount(*(v5 + 7000));
    v13 = CFArrayGetCount(*(v5 + 7008));
    v14 = [*(v5 + 7016) count];
    if (Count >= 1)
    {
      v15 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v5 + 6992), v15);
        if (sub_1000F8B50(ValueAtIndex))
        {
          goto LABEL_41;
        }
      }

      while (Count != ++v15);
    }

    if (v14 >= 1)
    {
      for (i = v14 + 1; i >= 2; --i)
      {
        v22 = [*(v5 + 7016) objectAtIndexedSubscript:i - 2];
        if (v22 && (v23 = v22, [v22 hotspotDevice]) && (+[NSDate date](NSDate, "date"), objc_msgSend(v23, "lastNotifiedAt"), objc_msgSend(sub_100029EF8(), "timeIntervalSinceDate:"), v24 <= 1800.0))
        {
          if (sub_1000F8B50([v23 hotspotDevice]))
          {
            sub_1000F8A30(NSDictionary, v25, v26, v27, v28);
            [sub_1000F89DC() errorWithDomain:? code:? userInfo:?];
            goto LABEL_43;
          }
        }

        else
        {
          [*(v5 + 7016) removeObjectAtIndex:i - 2];
        }
      }
    }

    if (v12 >= 1)
    {
      v29 = 0;
      while (1)
      {
        v30 = CFArrayGetValueAtIndex(*(v5 + 7000), v29);
        if (sub_1000F8B50(v30))
        {
          break;
        }

        if (v12 == ++v29)
        {
          goto LABEL_23;
        }
      }

      v37 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Hotspot blacklisted: Peer declined \n", "__WiFiDeviceManagerUnifiedAutoJoinAllowHotspot"}];
      }

      goto LABEL_40;
    }

LABEL_23:
    if (v13)
    {
      v31 = [*(v5 + 6824) getHotspotDeviceName:a2];
      if (v13 >= 1)
      {
        v32 = v31;
        while (1)
        {
          v33 = CFArrayGetValueAtIndex(*(v5 + 7008), 0);
          if (v33)
          {
            v34 = v33;
            v35 = sub_10000A878(v33);
            if (CFEqual(v32, v35))
            {
              break;
            }
          }

          sub_1000950C4();
          if (v36)
          {
            goto LABEL_30;
          }
        }

        v38 = sub_10000A540(v34, @"lastDisconnectTimestampKey");
        if (!v38 || (v39 = v38, sub_10009EA74(v34)))
        {
          v37 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            v45 = "__WiFiDeviceManagerUnifiedAutoJoinAllowHotspot";
            v46 = sub_10000A878(v34);
            sub_100026290();
          }

LABEL_40:
          objc_autoreleasePoolPop(v37);
LABEL_41:
          sub_1000F8A30(NSDictionary, v17, v18, v19, v20, v45, v46);
          v40 = sub_1000F89DC();
LABEL_42:
          [v40 errorWithDomain:? code:? userInfo:?];
LABEL_43:
          v41 = sub_100021504();
          v42(v41);
          goto LABEL_44;
        }

        Current = CFAbsoluteTimeGetCurrent();
        if (Current - CFDateGetAbsoluteTime(v39) < 3600.0)
        {
          v44 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: Hotspot denylisted due to Deauth on %@\n", "__WiFiDeviceManagerUnifiedAutoJoinAllowHotspot", v39}];
          }

          objc_autoreleasePoolPop(v44);
          [NSString stringWithFormat:@"Hotspot deauthed/disconnected within past %d seconds", 3600];
          goto LABEL_41;
        }

        CFArrayRemoveValueAtIndex(*(v5 + 7008), 0);
      }
    }

LABEL_30:
    if ([*(v5 + 6824) isHotspotDeviceSupportADHS:a2])
    {
      goto LABEL_43;
    }

    goto LABEL_41;
  }

LABEL_44:
  objc_autoreleasePoolPop(v10);
}

void sub_100197C58()
{
  sub_100024B78();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = *(v8 + 32);
  v12 = objc_autoreleasePoolPush();
  if (v1)
  {
    if (!v9 || !*(v9 + 8936) || !*(v9 + 6824))
    {
      sub_1000F89FC(NSDictionary, v10, v11);
      if (![sub_100024F70() errorWithDomain:? code:? userInfo:?])
      {
        goto LABEL_15;
      }

      v14 = sub_10001143C();
      goto LABEL_10;
    }

    if (CFAbsoluteTimeGetCurrent() - *(v9 + 6928) <= v5 && [*(v9 + 6920) count])
    {
      v13 = [*(v9 + 6920) copy];
      v14 = sub_10001143C();
      v17 = 0;
LABEL_11:
      v16(v14, v17, v15);
      goto LABEL_15;
    }

    if (v3)
    {
      v14 = sub_10001143C();
      v17 = 0;
LABEL_10:
      v15 = 0;
      goto LABEL_11;
    }

    v18 = *(v9 + 8976);
    if (v18)
    {
      CWFErrorDescription();
      sub_10001158C();
      v19 = CWFErrorWithDescription();
      (*(v18 + 16))(v18, v19, 0);
      _Block_release(*(v9 + 8976));
    }

    *(v9 + 8976) = _Block_copy(v1);
    CFArrayRemoveAllValues(*(v9 + 6920));
    v20 = *(v9 + 6888);
    dispatch_time(0, 1000000000 * v7);
    sub_100015EB8();
    sub_10002CF5C();
    dispatch_source_set_timer(v21, v22, v23, v24);
    *(v9 + 3336) = 16;
    [*(v9 + 6824) startBrowsing];
    *(v9 + 7040) = CFAbsoluteTimeGetCurrent();
    ++*(v9 + 6236);
  }

LABEL_15:
  objc_autoreleasePoolPop(v12);
  sub_10006AD5C();
}

void sub_100197EA0()
{
  sub_100024B78();
  v1 = v0;
  v3 = v2;
  v5 = *(v4 + 32);
  v8 = objc_autoreleasePoolPush();
  if (!v1)
  {
    goto LABEL_10;
  }

  if (v5 && *(v5 + 8936))
  {
    if (!sub_100064A78(*(v5 + 64)) && !*(v5 + 5267) && v3)
    {
      v11 = *(v5 + 8968);
      if (v11)
      {
        _Block_release(v11);
      }

      *(v5 + 8968) = _Block_copy(v1);
      *(v5 + 8960) = v3;
      CFArrayRemoveAllValues(*(v5 + 6920));
      CFArrayAppendValue(*(v5 + 6920), v3);
      *(v5 + 6968) = 2;
      *(v5 + 6960) = 0x300000002;
      *(v5 + 7048) = 0;
      *(v5 + 3336) = sub_1000E596C(v5);
      goto LABEL_10;
    }

    sub_1000F89FC(NSDictionary, v9, v10);
    v12 = sub_1000F89DC();
  }

  else
  {
    sub_1000F89FC(NSDictionary, v6, v7);
    v12 = sub_100024F70();
  }

  if ([v12 errorWithDomain:? code:? userInfo:?])
  {
    v13 = sub_10001143C();
    v14(v13);
  }

LABEL_10:
  objc_autoreleasePoolPop(v8);
  sub_10006AD5C();
}

void sub_1001980D0(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = objc_autoreleasePoolPush();
  if (v7 && *(v7 + 8936))
  {
    v9 = *(v7 + 8984);
    *(v7 + 8984) = a4;
    *(v7 + 8992) = [a3 trigger];
    if (a4 != 1 || v9)
    {
      if (a4)
      {
        +[WiFiXPCManager sharedXPCManager];
        sub_100006F88(*(v7 + 64));
        [sub_10002D0C0() autoJoinUpdatedWithState:a4 interfaceName:?];
        if (a4 == 4)
        {
          [*(v7 + 6744) ingestScanResults:*(v7 + 1160) ofType:1 clientName:@"wifid" directed:0];
          v30 = sub_100011340();
          sub_1000D7FA8(v30, v31);
        }
      }

      else
      {
        v37 = [*(v7 + 8936) metric];
        [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
        if ([v37 result])
        {
          v38 = sub_1001987AC([v37 autoJoinedNetwork]);
          sub_1000ED650(v7, @"autoJoinSuccess", v38, v37);
          if (v38)
          {
            CFRelease(v38);
          }
        }

        else
        {
          if ([v37 error])
          {
            v39 = off_10025FC18;
          }

          else if ([v37 wasAlreadyAssociatedToNetwork])
          {
            v39 = off_10025FBF0;
          }

          else
          {
            v39 = off_10025FC08;
          }

          sub_1000ED650(v7, *v39, 0, v37);
        }

        if (_os_feature_enabled_impl())
        {
          v40 = 30.0;
        }

        else
        {
          v40 = 14.0;
        }

        v41 = [v37 autoJoinedNetwork];
        if (v41)
        {
          v42 = v41;
          if ([objc_msgSend(v41 "matchingKnownNetworkProfile")] == 8 && !objc_msgSend(objc_msgSend(v42, "matchingKnownNetworkProfile"), "lastJoinedBySystemAt"))
          {
            [objc_msgSend(v37 "endedAt")];
            v44 = v43;
            [objc_msgSend(v37 "startedAt")];
            if (v44 - v45 < v40)
            {
              v46 = sub_1000A2E44(v42);
              v47 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s Updating 6G standalone property after iCloud sync on %@", "__WiFiDeviceManagerUnifiedAutoJoinCheckForStandalone6G", v46}];
              }

              objc_autoreleasePoolPop(v47);
              sub_10000D80C();
              sub_100189AE8();
              if (v46)
              {
                CFRelease(v46);
              }
            }
          }
        }

        sub_100190E38();
        if (*(v7 + 3336) == 16)
        {
          v48 = sub_1000B6E20(v7, 0);
        }

        if (([a3 trigger] == 54 || objc_msgSend(a3, "trigger") == 55) && objc_msgSend(objc_msgSend(v37, "error"), "code"))
        {
          if ([objc_msgSend(v37 "error")] == 37)
          {
            v51 = objc_autoreleasePoolPush();
            v52 = sub_10006AD2C();
            if (v52)
            {
              [v52 WFLog:3 message:{"%s: SSID transition arbitrator is running, ignore duplicated steering request", "__WiFiDeviceManagerUnifiedAutoJoinStateChanged"}];
            }

            objc_autoreleasePoolPop(v37);
          }

          else
          {
            HIDWORD(v65) = 4;
            v53 = CFNumberCreate(0, kCFNumberIntType, &v65 + 4);
            v54 = CFNumberCreate(0, kCFNumberIntType, (v7 + 3900));
            sub_10001ECA0();
            sub_1000D5318(v55, v56, v57, v58, v53, v54);
            if (v53)
            {
              CFRelease(v53);
            }

            if (v54)
            {
              CFRelease(v54);
            }
          }
        }

        else
        {
          [*(v7 + 6744) ingestScanResults:*(v7 + 1160) ofType:1 clientName:@"wifid" directed:0];
          [objc_msgSend(v37 "error")];
          v49 = sub_100015EB8();
          sub_1000D7FA8(v49, v50);
        }

        [*(v7 + 3704) setScanResultsWithAutoJoinSessionCompletion:*(v7 + 1160) complete:1];
        v59 = sub_100011340();
        sub_100192190(v59, v60);
        if ([a3 trigger] == 39)
        {
          *(v7 + 6696) = 0;
        }
      }
    }

    else
    {
      v10 = *(v7 + 9016);
      if (v10)
      {
        v11 = *(v7 + 64);
        v61 = [v10 UUIDString];
        [NSString stringWithFormat:@"%@/%@"];
        v12 = sub_10001158C();
        sub_1000F8B9C(v12, v13, v14, v15, v16, v17, v18, v19, @"AutoJoin", v61, v63, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, vars0, vars8);
        v20 = *(v7 + 64);
        v62 = [*(v7 + 9016) UUIDString];
        [NSString stringWithFormat:@"%@/%@"];
        v21 = sub_10001158C();
        sub_1000F8D50(v21, v22, v23, v24, v25, v26, v27, v28, @"AutoJoin", v62, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, vars0, vars8);
        v29 = *(v7 + 9016);
      }

      else
      {
        v29 = 0;
      }

      *(v7 + 9024) = 0u;

      *(v7 + 9016) = [a2 copy];
      +[WiFiXPCManager sharedXPCManager];
      v32 = [sub_100010938() trigger];
      [a2 autoJoinStartedWithTrigger:v32 interfaceName:sub_100006F88(*(v7 + 64))];
      sub_10001ECA0();
      sub_1000ED650(v33, v34, v35, v36);
    }
  }

  objc_autoreleasePoolPop(v8);
}

void sub_10019859C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = objc_autoreleasePoolPush();
  v7 = 0;
  if (a2 && a3 && v5)
  {
    if (*(v5 + 8936) && *(v5 + 4584) && (v8 = sub_10000836C(), (v10 = sub_100022854(v8, v9)) != 0))
    {
      v11 = v10;
      v12 = sub_10001E7F0();
      v14 = sub_10000B3A8(v12, v13, 0);
      if (!v14)
      {
        v7 = 0;
LABEL_13:
        CFRelease(v11);
        goto LABEL_14;
      }

      v15 = v14;
      v7 = sub_10001B368(v14);
      if (v7 && (v16 = sub_1000F8AE8(), (v18 = v17(v16, v7)) != 0))
      {
        v19 = sub_100022854(v18, 0);
        if (v19)
        {
          (*(v5 + 4584))(v5, v19, *(v5 + 4592));
        }
      }

      else
      {
        v19 = 0;
      }

      CFRelease(v11);
      CFRelease(v15);
      v11 = v19;
      if (v19)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_14:

  objc_autoreleasePoolPop(v6);
}

BOOL sub_1001986B0(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = 0;
  if (a2 && *(a1 + 8936))
  {
    Mutable = *(a1 + 1168);
    if (!Mutable)
    {
      Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      *(a1 + 1168) = Mutable;
    }

    CFArrayRemoveAllValues(Mutable);
    CFArrayRemoveAllValues(*(a1 + 3608));
    CFArrayRemoveAllValues(*(a1 + 3616));
    [*(a1 + 3704) clearScanResultsForAutoJoinSessionReset];
    CFArrayAppendValue(*(a1 + 1168), a2);
    sub_1000E8A6C(a1);
    v3 = CFArrayGetCount(*(a1 + 3616)) > 0 || CFArrayGetCount(*(a1 + 3608)) > 0 || !CFArrayGetCount(*(a1 + 1168));
    CFArrayRemoveAllValues(*(a1 + 3608));
    CFArrayRemoveAllValues(*(a1 + 3616));
    [*(a1 + 3704) clearScanResultsForAutoJoinSessionReset];
    CFArrayRemoveAllValues(*(a1 + 1168));
  }

  return v3;
}

_WORD *sub_1001987AC(_WORD *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1)
  {
    v3 = [a1 matchingKnownNetworkProfile];
    if (!v3)
    {
      goto LABEL_9;
    }

    v4 = v3;
    a1 = [a1 scanRecord];
    if (!a1)
    {
      goto LABEL_8;
    }

    [v4 properties];
    v5 = sub_100015EB8();
    v7 = sub_100022854(v5, v6);
    if (!v7)
    {
LABEL_9:
      a1 = 0;
      goto LABEL_8;
    }

    v8 = v7;
    v9 = sub_100017C00(v7);
    if (v9)
    {
      v10 = v9;
      v11 = +[NSMutableDictionary dictionary];
      [v11 addEntriesFromDictionary:v10];
      [v11 addEntriesFromDictionary:a1];
      a1 = sub_10000AD2C(kCFAllocatorDefault, v11);
      sub_10009D854(a1, v8);
      CFRelease(v8);
      v8 = v10;
    }

    else
    {
      a1 = 0;
    }

    CFRelease(v8);
  }

LABEL_8:
  objc_autoreleasePoolPop(v2);
  return a1;
}

void sub_1001988A0(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  if (a1 && !*(a1 + 9120))
  {
    v2 = sub_100009664(*(a1 + 64));
    if (v2)
    {
      v3 = v2;
      v4 = socket(30, 2, 0);
      if ((v4 & 0x80000000) == 0)
      {
        v5 = v4;
        [v3 getCString:&v8 maxLength:16 encoding:4];
        if (!ioctl(v5, 0xC0206911uLL, &v8) && (v9 & 1) != 0)
        {
          *(a1 + 9120) = 1;
          sub_100189040(a1);
          v6 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: interface went up, starting auto-join", "__WiFiDeviceManagerUpdateInterfaceFlags"}];
          }

          objc_autoreleasePoolPop(v6);
          sub_100019814(a1, 0x26uLL);
        }

        close(v5);
      }
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: null ifName", "__WiFiDeviceManagerUpdateInterfaceFlags"}];
      }

      objc_autoreleasePoolPop(v7);
    }
  }
}

void sub_100198A84()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: failed to create slowWiFi.displayTimer", "WiFiDeviceManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100198AE4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: failed to create dps.displayTimer", "WiFiDeviceManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100198B44()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: failed to create bssBlacklist.expiryTimer", "WiFiDeviceManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100198BA4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: failed to create autoHotspotLockStateTimer", "WiFiDeviceManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100198C04()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: failed to create autoHotspotScanTimer", "WiFiDeviceManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100198C64()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: failed to create assocStateMonitor.timer", "WiFiDeviceManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100198CC4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: failed to create carPlayLpcStats.timer", "WiFiDeviceManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100198D24()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: failed to create carPlayPowerSaveDeferral.timer", "WiFiDeviceManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100198D84()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: failed to create carPlayLinkDownCtx.timer", "WiFiDeviceManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100198DE4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: failed to create carPlayHidEventCtx.timer", "WiFiDeviceManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100198E44()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: failed to create _24GHzInfraNetworkData.timer", "WiFiDeviceManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100198EA4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: failed to create priorityLinkSetupPhase.timer", "WiFiDeviceManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100198F04()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: failed to create mis.misBroadcastToHiddenTimer", "WiFiDeviceManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100198F64()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: failed to create mis.misIdleTimer", "WiFiDeviceManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100198FC4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: failed to create autoJoinDeferral.timer", "WiFiDeviceManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199030()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: failed to create retry.timer", "WiFiDeviceManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019909C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: failed to allocate CRSAppHistoryController", "__WiFiDeviceManagerDonateCarPlayLinkMetricsToCarEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001990FC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: CRSAppHistoryController is unavailable.", "__WiFiDeviceManagerDonateCarPlayLinkMetricsToCarEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019915C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: failed to allocate inAnalyticsValues", "__WiFiDeviceManagerDonateCarPlayLinkMetricsToCarEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001991BC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null awdlIfname.", "__WiFiDeviceManagerInitializeAwdlState"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199228()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: AWDL is not supported on the device.", "__WiFiDeviceManagerInitializeAwdlState"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199294()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, roamManager is NULL", "__WiFiDeviceManagerRoamScanStartEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199300()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, WiFiDeviceManagerRef is NULL", "__WiFiDeviceManagerRoamScanStartEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019936C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, roamManager is NULL", "__WiFiDeviceManagerRoamScanEndEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001993D8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, WiFiDeviceManagerRef is NULL", "__WiFiDeviceManagerRoamScanEndEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199444()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, roamManager is NULL", "__WiFiDeviceManagerRoamPrepEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001994F8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: resetTriggerInfo allocation failed!", "WiFiDeviceManagerResetChip"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199564()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager->device is NULL", "WiFiDeviceManagerResetChip"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001995D0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager is NULL", "WiFiDeviceManagerResetChip"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019963C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null queue.", "__WiFiDeviceManagerWiFiPrimaryInfCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001996A8(uint64_t *a1, void ***a2, uint64_t a3, const void *a4)
{
  v5 = sub_10000843C(a1, a2);
  sub_1000F8BFC(COERCE_DOUBLE(3221225472), v5, v6);
  v7[2] = sub_1000F13B4;
  v7[3] = &unk_10025EFD8;
  v7[4] = v9;
  v7[5] = v8;
  dispatch_async(v10, v7);
  _Block_object_dispose(a4, 8);
}

void sub_100199704(double a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: skipping update, interval since last update (%f)", "__WiFiDeviceManagerUpdateLocalNetworkDiscoveredDevices", *&a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100199774()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: nil profile", "__WiFiDeviceManagerUpdateLocalNetworkDiscoveredDevices"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001997D4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: network is null", "__WiFiDeviceManagerWiFiPrimaryInfCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199840()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is null", "__WiFiDeviceManagerWiFiPrimaryInfCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

BOOL sub_1001998AC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, BSSID is NULL", "__WiFiLQAMgrTrigDiscEventCallback"}];
  }

  objc_autoreleasePoolPop(v2);
  return a1 == 0;
}

void sub_100199918()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, Device IfName is NULL", "__WiFiLQAMgrTrigDiscEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199984()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, Device Manager is NULL", "__WiFiLQAMgrTrigDiscEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001999F0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, leakyAPStatsVersionRef is NULL", "__WiFiDeviceManagerLeakyAPEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199A5C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is NULL !", "__WiFiDeviceManagerLeakyAPEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199AC8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: LQA manager is NULL !", "__WiFiDeviceManagerActiveProbeQueryCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199B34()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is NULL !", "__WiFiDeviceManagerActiveProbeQueryCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199BA0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: deviceManagerRef is NULL!", "__WiFiDeviceManagerSymptomsEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199C0C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: txFailHistoryData is NULL!", "__WiFiDeviceManagerTxFailEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199C78()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: deviceManagerRef is NULL!", "__WiFiDeviceManagerTxFailEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199CE4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s dict for roam status is nil", "__WiFiDeviceManagerProcessRoamStatusSubState"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199D44()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, roamManager is NULL", "__WiFiDeviceManagerRoamStatusEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199DA4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: dict[%@] is NULL!", "__WiFiDeviceManagerRoamStatusEventCallback", @"ROAMEDEVENT_STATUS"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199E18()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: dict is NULL!", "__WiFiDeviceManagerRoamStatusEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199E84()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: device is NULL!", "__WiFiDeviceManagerRoamStatusEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199EF0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: deviceManagerRef is NULL!", "__WiFiDeviceManagerRoamStatusEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199F5C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null afMetric", "__WiFiDeviceManagerActionFrameEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100199FC8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: currentNetwork is NULL!", "__WiFiDeviceManagerActionFrameEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A034()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: deviceManagerRef is NULL!", "__WiFiDeviceManagerActionFrameEventCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A0A0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: AJMetrics is NULL!", "__WiFiDeviceManagerQueryAJMetricsCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A10C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: deviceManagerRef is NULL!", "__WiFiDeviceManagerQueryAJMetricsCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A178()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: LPHSMetrics is NULL!", "__WiFiDeviceManagerQueryLPHSMetricsCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A1E4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: deviceManagerRef is NULL!", "__WiFiDeviceManagerQueryLPHSMetricsCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A250()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, curNetwork is NULL", "__WiFiDeviceManagerHandleSlowWiFiEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A2B0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: SlowWiFi reason not found", "__WiFiDeviceManagerHandleSlowWiFiEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A310()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, SlowWiFi recovery not enabled", "__WiFiDeviceManagerHandleSlowWiFiEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A370()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, isRecoveryEnabled key not found", "__WiFiDeviceManagerHandleSlowWiFiEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A3D0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, isBadAP key not found", "__WiFiDeviceManagerHandleSlowWiFiEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A43C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, Device IfName is NULL", "__WiFiDeviceManagerHandleSlowWiFiEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A4A8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, Device Manager is NULL", "__WiFiDeviceManagerHandleSlowWiFiEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A514()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s Current network is NULL. Not handling the BSS pruned event", "__WiFiDeviceManagerHandleBssPrunedEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A580()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s Pruned event received when BssBlacklisting is not supported! Bailing", "__WiFiDeviceManagerHandleBssPrunedEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A5EC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s dict is NULL", "__WiFiDeviceManagerHandleBssPrunedEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A658()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s manager is NULL", "__WiFiDeviceManagerHandleBssPrunedEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A6C4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s manager is NULL", "__WiFiDeviceManagerHandleTrafficInfoEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A730()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s Status is not successful", "__WiFiDeviceManagerProcessBeaconCacheUpdatedEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A79C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s beaconScanCache alloc cache failed", "__WiFiDeviceManagerProcessBeaconCacheUpdatedEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A808()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s Not enough channels", "__WiFiDeviceManagerProcessBeaconCacheUpdatedEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A874()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s statusNum nil", "__WiFiDeviceManagerProcessBeaconCacheUpdatedEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A8E0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s chanNum nil", "__WiFiDeviceManagerProcessBeaconCacheUpdatedEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A94C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s currentNetwork nil", "__WiFiDeviceManagerProcessBeaconCacheUpdatedEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019A9B8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s eventData nil", "__WiFiDeviceManagerProcessBeaconCacheUpdatedEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019AA24()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s manager nil", "__WiFiDeviceManagerProcessBeaconCacheUpdatedEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019AA90()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null manager", "__WiFiDeviceManagerProcessSupportedChannelInfoChangedEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019AAFC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: outAccount is NULL!", "__WiFiDeviceManagerRequestForNextMatchingHS20AccountCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019AB68()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: inNetwork is NULL!", "__WiFiDeviceManagerRequestForNextMatchingHS20AccountCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019ABD4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager is NULL!", "__WiFiDeviceManagerRequestForNextMatchingHS20AccountCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019AC40()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: numRef is NULL", "__WiFiDeviceManagerRoamNotificationCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019ACA0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: bssidDataRef is NULL", "__WiFiDeviceManagerRoamNotificationCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019AD00()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: bssidInfo is NULL", "__WiFiDeviceManagerRoamNotificationCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019AD60()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is NULL", "__WiFiDeviceManagerRoamNotificationCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019ADCC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null manager", "__WiFiDeviceManagerConfigureForXCTests"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019AE38()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is NULL", "__WiFiDeviceManagerChipResetRequestedCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019AEA4(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: failed to get LPC stats", "__WiFiDeviceManagerGetLPCStats"}];
  }

  objc_autoreleasePoolPop(v2);

  free(a1);
}

void sub_10019AF1C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: failed to alloc string", "__WiFiDeviceManagerGetLPCStats"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019AF88()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: failed to alloc buf", "__WiFiDeviceManagerGetLPCStats"}];
  }

  objc_autoreleasePoolPop(v0);
}

double sub_10019AFF4()
{
  sub_10001131C();
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Device in Lock state over %d minutes but is being used", "__WiFiDeviceManagerAutoHotspotLockStateTimeoutCallback", *(v1 + 5448) / 0x3Cu}];
  }

  objc_autoreleasePoolPop(v2);
  v3 = *(v1 + 6896);
  dispatch_time(0, 1000000000 * *(v1 + 5448));
  sub_10000D800();
  sub_10002CF5C();
  dispatch_source_set_timer(v4, v5, v6, v7);
  Current = CFAbsoluteTimeGetCurrent();
  LODWORD(v9) = *(v1 + 5448);
  result = Current + v9;
  *v0 = result;
  return result;
}

void sub_10019B0A8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null device manager", "__WiFiDeviceManagerGetUserAutoJoin"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019B114(uint64_t a1, int a2)
{
  *(a1 + 6536) = a2;
  *(a1 + 6544) = [*(a1 + 6824) isFamilyHotspot:?];
  sub_100146CAC((a1 + 6536));
  sub_1000EC5CC(a1, @"userJoinAssociationFailed", 0);
}

void sub_10019B16C(id *a1)
{
  if (*a1)
  {

    *a1 = 0;
  }
}

void sub_10019B1A0(unsigned int *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s with state=%d not allowed with Unified Auto-Join", "__WiFiDeviceManagerStateMachineRun", *a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019B208(unsigned int *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"GAS Query failed with err=%d. Continuing...", *a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019B268()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"No GAS responses to filter"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019B2B4(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"No provisioned HS2.0 networks found"];
  }

  objc_autoreleasePoolPop(v2);
  CFRelease(a1);
}

void sub_10019B30C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"No suitable HS2.0 networks found"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019B358()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"No HS2.0 accounts"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019B3A4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"GAS Query returned response count=0. Continuing..."];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019B3F0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"GAS Query returned no responses. Continuing..."];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019B43C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null scan.candidates.networks", "__WiFiDeviceManagerProcessGasResponses"}];
  }

  objc_autoreleasePoolPop(v0);
}

id sub_10019B49C()
{
  result = off_100298C40;
  if (off_100298C40)
  {
    return [off_100298C40 WFLog:4 message:{"%s: null manager.", "__WiFiDeviceManagerDpsHUDTimerExpiryHandler"}];
  }

  return result;
}

id sub_10019B4E8()
{
  result = off_100298C40;
  if (off_100298C40)
  {
    return [off_100298C40 WFLog:4 message:{"%s: null manager.", "__WiFiDeviceManagerSlowWiFiHUDTimerExpiryHandler"}];
  }

  return result;
}

void sub_10019B534()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: kernel event monitor already initialized.", "__WiFiDeviceManagerSetupKernelEventMonitor"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019B594()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null manager->kernelEventSource", "__WiFiDeviceManagerSetupKernelEventMonitor"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019B5F4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v1 = __error();
    strerror(*v1);
    sub_100008328();
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019B65C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null misDict", "__WiFiDeviceManagerHotspotTransportTypeMetric"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019B6C8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null dynamicstoreref keys", "__WiFiDeviceManagerHotspotTransportTypeMetric"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019B734()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null dynamicstoreref", "__WiFiDeviceManagerHotspotTransportTypeMetric"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019B7A0()
{
  sub_10000D798();
  v1 = v0;
  v3 = v2;
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v5 = *v1;
    sub_100060E7C();
    sub_1000F8A68();
  }

  objc_autoreleasePoolPop(v4);
  if (v3)
  {
    _os_feature_enabled_impl();
  }

  sub_1000084B8();
}

void sub_10019B848()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: not now...", "__WiFiDeviceManagerAttemptNetworkTransition"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019B8B4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: no top network found", "__WiFiDeviceManagerAttemptNetworkTransition"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019B920()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: no rank sorted networks and not preferAutoJoinHomeNetwork", "__WiFiDeviceManagerAttemptNetworkTransition"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019B98C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s not allowed with Unified Auto-Join", "__WiFiDeviceManagerAttemptNetworkTransition"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019B9F8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager.", "__WiFiDeviceManagerHandleSiriTimedOutNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019BA64()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager.", "__WiFiDeviceManagerHandleApsdTimedOutNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019BAD0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager.", "__WiFiDeviceManagerHandleAirplayConnectionStallNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019BB3C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager.", "__WiFiDeviceManagerHandleAirplayBufferedAudioUnderrunNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019BBA8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager.", "__WiFiDeviceManagerHandleAirplayRealtimeAudioUnderrunNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019BC14()
{
  sub_10001131C();
  v4 = *(v3 + 64);
  if (v4)
  {
    sub_100006F88(v4);
    v5 = sub_100015EB8();
    v7 = sub_100007D90(v5, v6, 1);
    v1 = v7;
    if (v7 && (v9 = sub_10001A9BC(v7)) != 0)
    {
      v2 = sub_10001B368(v1);
      if (v2)
      {
        v8 = [v9 scanResultWithMatchingKnownNetworkProfile:v2];

        v9 = v8;
      }
    }

    else
    {
      v9 = 0;
      v2 = 0;
    }
  }

  else
  {
    v9 = 0;
    sub_10002A0C4();
  }

  objc_autoreleasePoolPop(v0);

  if (v1)
  {
    CFRelease(v1);
  }

  [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
}

void sub_10019BCFC(void *context)
{
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is null", "__WiFiDeviceManagerUpdateCoreWiFiAssociatedNetwork"}];
  }

  objc_autoreleasePoolPop(context);
}

void sub_10019BD64()
{
  sub_100024B78();
  v1 = v0;
  objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_1000A4FF8(*v1);
    sub_1000A5000(*v1);
    sub_10002D39C();
  }

  sub_10006AD5C();

  objc_autoreleasePoolPop(v2);
}

void sub_10019BDF4(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: not releasing ask to join notification %@", "WiFiDeviceManagerAbort", *a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019BE68()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Power modules not attached.", "__WiFiDeviceManagerReleasePowerResource"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019BED4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager.", "__WiFiDeviceManagerReleasePowerResource"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019BF40()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager is NULL!", "__WiFiDeviceManagerCreateDenyListInfo"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019BFAC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null networks", "WiFiDeviceManagerSetNetworks"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019C018()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Not CarPlay join\n", "__WiFiDeviceManagerSwitchMISChannelForCarPlayJoin"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019C078()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: 2.4 Ghz channel is available\n", "__WiFiDeviceManagerSwitchMISChannelForCarPlayJoin"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019C0D8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Channel (%d) is DFS channel\n", "__WiFiDeviceManagerSwitchMISChannelForCarPlayJoin", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019C13C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Channel (%d) is coex denylisted\n", "__WiFiDeviceManagerSwitchMISChannelForCarPlayJoin", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019C1A0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Failed to update softAP state, err %d", "__WiFiDeviceManagerUpdateSoftApState", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019C204()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s Failed to create dict", "__WiFiDeviceManagerSwitchMISChannel"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019C264(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Invalid channel (%d)\n", "__WiFiDeviceManagerSwitchMISChannelForCarPlayJoin", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019C2C8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Concurrent mode is not allowed\n", "__WiFiDeviceManagerSwitchMISChannelForCarPlayJoin"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019C328()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: 2.4 Ghz CarPlay network\n", "__WiFiDeviceManagerSwitchMISChannelForCarPlayJoin"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019C388()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: No channel inform\n", "__WiFiDeviceManagerSwitchMISChannelForCarPlayJoin"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019C3E8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Not CarPlay network\n", "__WiFiDeviceManagerSwitchMISChannelForCarPlayJoin"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019C448()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: failed to create disabledNetworks array", "WiFiDeviceManagerSetNetworks"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019C4B4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: failed to create hs20 array", "WiFiDeviceManagerSetNetworks"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019C520()
{
  sub_1000951B4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(v5);
    sub_1000A9B70();
  }

  objc_autoreleasePoolPop(v8);
  v9 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000AFE4(v5);
    *(v7 + 5592);
    sub_1000A9B70();
  }

  objc_autoreleasePoolPop(v9);
  if (!sub_10000AFE4(v5) || *(v7 + 5592) != 1)
  {
    v3 = 0;
  }

  *v1 = v3;
  sub_10001ED88();
}

void sub_10019C614()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: failed to create array", "WiFiDeviceManagerSetNetworks"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019C680()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: netif is NULL!!!", "__WiFiDeviceManagerSetInterfaceRank"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019C6EC(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: networkTypeNum is NULL", "__WiFiDeviceManagerUpdateDynamicStoreNetworkEntry"}];
  }

  objc_autoreleasePoolPop(v2);
  CFRelease(a1);
}

void sub_10019C758()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: newConfig is NULL", "__WiFiDeviceManagerUpdateDynamicStoreNetworkEntry"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019C7B8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: config is NULL.", "__WiFiDeviceManagerUpdateDynamicStoreNetworkEntry"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019C824()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: no matching known network", "__WiFiDeviceManagerUpdateDynamicStoreNetworkEntry"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019C890()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: dynamicStoreRef is NULL", "__WiFiDeviceManagerUpdateDynamicStoreNetworkEntry"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019C8FC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: netif is NULL", "__WiFiDeviceManagerUpdateDynamicStoreNetworkEntry"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019C968()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is NULL", "__WiFiDeviceManagerUpdateDynamicStoreNetworkEntry"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019C9D4()
{
  sub_1000F8B6C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = 0;
  do
  {
    v7 = sub_10000DAB4();
    ValueAtIndex = CFArrayGetValueAtIndex(v7, v8);
    if (ValueAtIndex)
    {
      v10 = ValueAtIndex;
      if (sub_10001CDD8(ValueAtIndex))
      {
        v11 = sub_10000A540(v10, @"BSSID");
        if (v11)
        {
          v12 = v11;
        }

        else
        {
          v12 = @"null-bssid!";
        }
      }

      else
      {
        v13 = sub_10000A878(v10);
        if (v13)
        {
          v12 = v13;
        }

        else
        {
          v12 = @"null-ssid!";
        }
      }

      CFStringAppend(v1, v12);
      v14 = sub_100008684();
      CFStringAppendFormat(v14, v15, @" ");
    }

    ++v6;
  }

  while (v3 != v6);
  if (v5)
  {
    v16 = sub_100008684();
    CFStringAppendFormat(v16, v17, v18);
  }

  sub_1000F8B84();
}

void sub_10019CAA8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: No Device", "WiFiDeviceManagerSetMacRandomisationFeature"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019CB14(unsigned int *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_1000AA864(*a1);
    sub_100008328();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019CB90()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: SSID is NULL!", "WiFiDeviceManagerProcessWoWBlacklistCommandsAndCopyResponse"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019CBF0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: triggerReason not present", "WiFiDeviceManagerProcessWoWBlacklistCommandsAndCopyResponse"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019CC5C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: kWiFiNetworkProblematicStateEntryReasonData fail", "__WiFiDeviceManagerCopyWoWDenyListProblemList"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019CCBC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: kWiFiNetworkProblematicStateEntryReason fail", "__WiFiDeviceManagerCopyWoWDenyListProblemList"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019CD1C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: kWiFiNetworkProblematicStateEntryTimestamp fail", "__WiFiDeviceManagerCopyWoWDenyListProblemList"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019CD7C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: problematicEntry fail", "__WiFiDeviceManagerCopyWoWDenyListProblemList"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019CDDC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: SSID is NULL!", "WiFiDeviceManagerProcessWoWBlacklistCommandsAndCopyResponse"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019CE48()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: numref is NULL!", "WiFiDeviceManagerProcessWoWBlacklistCommandsAndCopyResponse"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019CEB4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager is NULL!", "WiFiDeviceManagerProcessWoWBlacklistCommandsAndCopyResponse"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019CF20()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: networkDenyListTimestamps is NULL", "__WiFiDeviceManagerCopyWoWDenyListingHistory"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019CF80()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: networkDenyListedNetworks is NULL", "__WiFiDeviceManagerCopyWoWDenyListingHistory"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019CFEC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager is NULL!", "__WiFiDeviceManagerCopyWoWDenyListingHistory"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D058()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: denyListHistory is NULL", "__WiFiDeviceManagerCopyWoWDenyListingHistory"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D0C4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: numRef is NULL", "__WiFiDeviceManagerWoWBlacklistCopyThresholds"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D124(uint64_t a1, uint64_t a2, const void *a3)
{
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: keyStrRefBssid is NULL", "__WiFiDeviceManagerWoWBlacklistCopyThresholds"}];
  }

  objc_autoreleasePoolPop(v4);
  CFRelease(a3);
}

void sub_10019D190()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: keyStrRefSsid is NULL", "__WiFiDeviceManagerWoWBlacklistCopyThresholds"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D1F0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: perBSSIDInfo is NULL", "__WiFiDeviceManagerWoWBlacklistCopyThresholds"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D25C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: perSSIDInfo is NULL", "__WiFiDeviceManagerWoWBlacklistCopyThresholds"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D2C8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: response is NULL", "__WiFiDeviceManagerWoWBlacklistCopyThresholds"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D334()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager is NULL", "__WiFiDeviceManagerWoWBlacklistCopyThresholds"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D3A0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: network is NULL!", "__WiFiDeviceManagerCopyMatchingMergedNetwork"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D40C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager is NULL!", "__WiFiDeviceManagerCopyMatchingMergedNetwork"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D478()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null ifName.", "WiFiDeviceManagerSetCellularCarrierName"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D4E4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null carrierName.", "WiFiDeviceManagerSetCellularCarrierName"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D550()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null manager.", "WiFiDeviceManagerSetCellularCarrierName"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D5BC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null manager.", "WiFiDeviceManagerSetForegroundAppBundleId"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D628()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager is NULL", "WiFiDeviceManagerSetSoftAPNANCocurrencyPreferredBand"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D694()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: metric is null", "WiFiDeviceManagerSubmitMloPrefBandSwitchMetric"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D700()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: metric is null", "WiFiDeviceManagerSubmitObssMitTransitionMetric"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D76C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Not able to submit setup metric __WiFiDeviceManagerCopyCurrentCoreWiFiScanResult returned NULL", "WiFiDeviceManagerSubmitObssMitTransitionMetric"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D7D8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: metric is null", "WiFiDeviceManagerSubmitObssMitMetric"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D844()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Not able to submit setup metric __WiFiDeviceManagerCopyCurrentCoreWiFiScanResult returned NULL", "WiFiDeviceManagerSubmitObssMitMetric"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D8B0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: rssi is 0", "__WiFiDeviceManagerCheckLQAMgrAllowNetworkForAutoJoin"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D91C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"No valid manager ref"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019D974()
{
  sub_10000FDC0();
  v3 = v2;
  v5 = v4;
  sub_100008C40();
  v7 = sub_10000A540(v6, @"SSID");
  v8 = *(v1 + 3824);
  if (v7 != v8)
  {
    v9 = v7;
    if (v7 && v8)
    {
      if ([v7 isEqual:?])
      {
        goto LABEL_9;
      }

      v8 = *(v1 + 3824);
    }

    if (v8)
    {
      CFRelease(v8);
      *(v1 + 3824) = 0;
    }

    *(v1 + 3824) = [v9 copy];
    *(v1 + 3832) = 0;
  }

LABEL_9:
  v10 = *v3;
  v11 = sub_10014FED8();
  v12 = sub_100011580();
  v14 = sub_10000B3A8(v12, v13, 0);
  if (v14)
  {
    v15 = v14;
    if (v5 && CFArrayGetCount(v5) >= 1)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      do
      {
        v19 = objc_autoreleasePoolPush();
        v20 = sub_10001EDAC();
        ValueAtIndex = CFArrayGetValueAtIndex(v20, v21);
        v23 = sub_10001A9BC(ValueAtIndex);
        if ([v23 SSID] == *(v1 + 3824) || objc_msgSend(v23, "SSID") && *(v1 + 3824) && objc_msgSend(objc_msgSend(v23, "SSID"), "isEqual:", *(v1 + 3824)))
        {
          v24 = [objc_msgSend(v23 "channel")];
          v16 |= v24 == 3;
          v18 |= v24 != 3;
        }

        objc_autoreleasePoolPop(v19);
        ++v17;
      }

      while (v17 < CFArrayGetCount(v5));
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    if (v11 && CFArrayGetCount(v11) >= 1)
    {
      v25 = 0;
      v26 = 0;
      do
      {
        v27 = objc_autoreleasePoolPush();
        v28 = CFArrayGetValueAtIndex(v11, v26);
        v29 = sub_10001A9BC(v28);
        if ([v29 SSID] == *(v1 + 3824) || objc_msgSend(v29, "SSID") && *(v1 + 3824) && objc_msgSend(objc_msgSend(v29, "SSID"), "isEqual:", *(v1 + 3824)))
        {
          v30 = [objc_msgSend(v29 "channel")];
          v16 |= v30 == 3;
          v25 |= v30 != 3;
        }

        objc_autoreleasePoolPop(v27);
        ++v26;
      }

      while (v26 < CFArrayGetCount(v11));
    }

    else
    {
      v25 = 0;
    }

    v31 = v16 & ((v18 | v25) ^ 1);
    v32 = sub_10000DAB4();
    if ((v31 ^ (sub_10000A540(v32, v33) == kCFBooleanTrue)))
    {
      v34 = v31 & 1;
      ++*(v1 + 3832);
      v35 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v44 = *(v1 + 3832);
        [off_100298C40 WFLog:3 message:{"Tracking changed standalone6G (%d --> %d) for known network %@, counter=%d/%d"}];
      }

      objc_autoreleasePoolPop(v35);
      if (*(v1 + 3832) > 2u)
      {
        *(v1 + 3832) = 0;
        v36 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:"Updating standalone6G (%d --> %d) for known network %@"];
        }

        objc_autoreleasePoolPop(v36);
        [NSNumber numberWithBool:v34];
        v37 = sub_10000DAB4();
        sub_10000AD34(v37, v38, v39);
        v40 = sub_10001E7C0();
        sub_1000C5B3C(v40, v41);
      }
    }

    else
    {
      *(v1 + 3832) = 0;
    }

    CFRelease(v15);
  }

  CFRelease(v0);
  if (v11)
  {
    sub_100008690();

    CFRelease(v42);
  }

  else
  {
    sub_100008690();
  }
}

void sub_10019DCD0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null network", "__WiFiDeviceManagerUpdateNetworkAsync"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019DD3C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null queue", "__WiFiDeviceManagerUpdateNetworkAsync"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019DDA8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null updateNetwork callback", "__WiFiDeviceManagerUpdateNetworkAsync"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019DE14()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null manager", "__WiFiDeviceManagerUpdateNetworkAsync"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019DE80()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: new and current passwords are equal", "WiFiDeviceManagerSetMisPassword"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019DEEC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: values alloc failure", "__WiFiDeviceManagerCheckAndSubmitAPInfo"}];
  }

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_10019DF4C(char a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: keys alloc failure", "__WiFiDeviceManagerCheckAndSubmitAPInfo"}];
  }

  objc_autoreleasePoolPop(v2);
  return a1 & 1;
}

void sub_10019DFB4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"Error initiating scan request: %d", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019E01C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null scanData", "WiFiDeviceManagerClientScanCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019E088()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: network is NULL!", "__WiFiDeviceManagerIsNetworkAutoJoinDelayed"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019E0E8(unsigned __int16 *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_100014038(*a1);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019E158(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a1);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019E1C8(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a1);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019E238(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a1);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019E2A8(void *context, const void *a2)
{
  if (off_100298C40)
  {
    sub_10000A878(a2);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(context);
}

void sub_10019E308()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: not considering delayed auto-join due to MIS", "__WiFiDeviceManagerIsNetworkAutoJoinDelayed"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019E37C(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a1);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019E3F8(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a1);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019E468()
{
  +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"CFDictionaryRef soft_EAPClientConfigurationCopyAndImport(CFDictionaryRef)"];
  v0 = dlerror();
  [sub_1000F8B44() handleFailureInFunction:v0 file:? lineNumber:? description:?];
  __break(1u);
}

void sub_10019E4D4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: isEAP8021XAvailable() indicated the function doesn't exist. Soft link failed. EAP8021X deps missing.", "WiFiDeviceManagerFixAndIngestShareableNetworkIfNecessary"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019E540()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: user auto-join is disabled.", "__WiFiDeviceManagerDelayedAutoJoinNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019E5AC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null queue.", "__WiFiDeviceManagerClientAssociateCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019E60C(uint64_t *a1, void ***a2, uint64_t a3, const void *a4)
{
  v5 = sub_10000843C(a1, a2);
  sub_1000F8BFC(COERCE_DOUBLE(3221225472), v5, v6);
  *(v7 + 16) = sub_1000ED99C;
  *(v7 + 24) = &unk_100261A00;
  *(v7 + 32) = v9;
  *(v7 + 40) = v8;
  *(v7 + 48) = 0;
  dispatch_async(v10, v7);
  _Block_object_dispose(a4, 8);
}

void sub_10019E66C()
{
  sub_1000951B4();
  sub_100011560();
  v3 = v2;
  *(v2 + 6680) = sub_100189234(v2, v4);
  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(v1);
    v7 = *(v3 + 6680);
    sub_1000A9B58();
  }

  objc_autoreleasePoolPop(v5);
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(v1);
    sub_10000A878(*v0);
    sub_100026290();
  }

  objc_autoreleasePoolPop(v6);
  +[WADeviceAnalyticsClient sharedDeviceAnalyticsClient];
  sub_10000A878(v1);
  sub_10000A878(*v0);
  +[NSDate date];
  [sub_10002A0A0() updateNetwork:? switchedFrom:? at:?];
  sub_10001ED88();
}

void sub_10019E774(unsigned int *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: PM assertion already acquired with ID:%d", "__WiFiDeviceManagerAcquireWakeAssertionForAutoJoin", *a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019E7E8()
{
  sub_100094FF0();
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: bad args: manager %p network %p", "__WiFiDeviceManagerAcquireWakeAssertionForAutoJoin", v0, v1}];
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_10019E864(const void **a1, void *a2, uint64_t *a3)
{
  v5 = *a1;
  if (v5)
  {
    CFRelease(v5);
  }

  free(a2);
  v6 = *a3;
  sub_10001ECA0();

  return sub_10005B904(v7, v8, v9, v10);
}

void sub_10019E8C4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"MIGRATION:%s: SoftAP failed to start", "WiFiDeviceManagerStartWiFiDirectGroup"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019E924()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null hostAPDictionary", "WiFiDeviceManagerStartWiFiDirectGroup"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019E990()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null request", "WiFiDeviceManagerStartWiFiDirectGroup"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019E9FC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null startData", "WiFiDeviceManagerStartWiFiDirectGroup"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019EA68()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: unable to start AWDL due to concurrency.", "__WiFiDeviceManagerRequestAwdlBringup"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019EAD4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: error bringing up AWDL (=%d)", "WiFiDeviceManagerStartAwdl", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019EB44()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null queue.", "WiFiDeviceManagerStartAwdl"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019EBB0()
{
  sub_1000F8C20();
  v5 = *v4;
  if (v5)
  {
    CFRelease(v5);
    *v3 = 0;
  }

  if (*v2)
  {
    CFRelease(*v2);
    *v2 = 0;
  }

  if (*v1)
  {
    CFRelease(*v1);
    *v1 = 0;
  }

  free(v0);
}

void sub_10019EC1C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: unable to start AWDL due to concurrency.", "WiFiDeviceManagerStartAwdl"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019EC88(unsigned int *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: AWDL is already started in Assisted Discovery. Follow Mode not allowed. Refcount=%d", "WiFiDeviceManagerStartAwdl", *a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019ECFC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: unable to start AWDL in follow mode, VoIP Call Active.", "WiFiDeviceManagerStartAwdl"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019ED68(unsigned int *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: unable to start AWDL, thermal index (%d) is below disabled threshold (%d).", "WiFiDeviceManagerStartAwdl", *a1, 0}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019EDE0()
{
  sub_100011560();
  v3 = v2;
  ++*v2;
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: AWDL refCount is now [%d].", "WiFiDeviceManagerStartAwdl", *v3}];
  }

  objc_autoreleasePoolPop(v4);
  if (*v3 == 1)
  {
    v5 = *(v1 + 5504);
    if (v5)
    {
    }

    *(v1 + 5504) = sub_10000D83C("WiFiDeviceManagerStartAwdl");
  }

  *v0 = 0;
}

void sub_10019EE8C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null blacklistedChannels", "WiFiDeviceManagerIsChannelCoexBlacklisted"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019EEF8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null deviceManager", "WiFiDeviceManagerIsChannelCoexBlacklisted"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019EF64()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: invalid channel %d", "WiFiDeviceManagerIsChannelCoexBlacklisted", 0}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019EFD0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: No HS2.0 accounts", "__WiFiDeviceManagerFindMergeHS20Account"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019F03C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager", "__WiFiDeviceManagerFindMergeHS20Account"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019F0A8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: thermal index unchanged (%d).", "WiFiDeviceManagerSetThermalIndex", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019F118()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager.", "WiFiDeviceManagerSetThermalIndex"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019F30C(unsigned int *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s dictRef for %d is NULL", "__WiFiDeviceManagerDebugSimulateUCM", *a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019F374()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s request is NULL", "__WiFiDeviceManagerDebugSimulateUCM"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019F3D4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s manager is NULL", "__WiFiDeviceManagerDebugSimulateUCM"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019F434(unsigned int *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s dictRef for %d is NULL", "__WiFiDeviceManagerDebugSimulateBSP", *a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10019F49C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s request is NULL", "__WiFiDeviceManagerDebugSimulateBSP"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019F4FC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s manager is NULL", "__WiFiDeviceManagerDebugSimulateBSP"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019F55C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s request is NULL", "__WiFiDeviceManagerDebugPH"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019F5BC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s manager is NULL", "__WiFiDeviceManagerDebugPH"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019F61C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s kWiFiDebugCommandValueDict is NULL", "__WiFiDeviceManagerDebugSimulateWiFiAssistOverrideCondition"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019F67C(uint64_t a1, CFDictionaryRef theDict, int *a3)
{
  if (!a1)
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s manager is NULL", "__WiFiDeviceManagerDebugRoamMgr", v20}];
    }

    goto LABEL_8;
  }

  if (!theDict)
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s request is NULL", "__WiFiDeviceManagerDebugRoamMgr", v20}];
    }

    goto LABEL_8;
  }

  Value = CFDictionaryGetValue(theDict, @"DebugCommand");
  if (Value)
  {
    valuePtr = -1431655766;
    if (CFNumberGetValue(Value, kCFNumberIntType, &valuePtr))
    {
      v6 = valuePtr;
      v7 = objc_autoreleasePoolPush();
      if (v6)
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: Unknown debug command %d", "__WiFiDeviceManagerDebugRoamMgr", valuePtr}];
        }

LABEL_8:
        v8 = -3900;
LABEL_16:
        objc_autoreleasePoolPop(v7);
        goto LABEL_17;
      }

      v9 = +[WiFiRoamManager sharedWiFiRoamManager];
      if (v9)
      {
        v10 = v9;
        v11 = [(__CFDictionary *)theDict valueForKey:@"DebugCommandValueDict"];
        if (v11)
        {
          v12 = v11;
          [objc_msgSend(v11 valueForKey:{@"minLinkUpWaitSec", "doubleValue"}];
          v14 = v13;
          [objc_msgSend(v12 valueForKey:{@"minRetryWaitSec", "doubleValue"}];
          v16 = v15;
          [objc_msgSend(v12 valueForKey:{@"maxRetriesSec", "integerValue"}];
          [objc_msgSend(v12 valueForKey:{@"windowSizeSec", "doubleValue"}];
          v18 = v17;
          [v10 setParamMinRoamWaitTimeFromLinkUpInSec:v14];
          [v10 setParamMinRoamRetryWaitTime:v16];
          [sub_10001153C() setParamMaxRoamRetriesInWindow:?];
          [v10 setParamWindowSizeInSec:v18];
          v19 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [v10 paramMinRoamWaitTimeFromLinkUpInSec];
            [v10 paramMinRoamRetryWaitTime];
            [v10 paramMaxRoamRetriesInWindow];
            [v10 paramWindowSizeInSec];
            sub_1000A9B58();
          }

          v8 = 0;
          goto LABEL_15;
        }

        v19 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s kWiFiDebugCommandValueDict is NULL", "__WiFiDeviceManagerDebugRoamMgr"}];
        }
      }

      else
      {
        v19 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s WiFiRoamManager is NULL", "__WiFiDeviceManagerDebugRoamMgr"}];
        }
      }

      v8 = -3900;
LABEL_15:
      objc_autoreleasePoolPop(v19);
      goto LABEL_16;
    }
  }

  v8 = -3900;
LABEL_17:
  *a3 = v8;
}

void sub_10019F94C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s DebugCmdBTSCOEnable no value", "__WiFiDeviceManagerDebugAutoJoin"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019F9AC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s DebugCmdAutoJoinBTSCODisable no value", "__WiFiDeviceManagerDebugAutoJoin"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019FA0C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s DebugCmdBTA2DPEnable no value", "__WiFiDeviceManagerDebugAutoJoin"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019FA6C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s DebugCmdAutoJoinDrivingCarPlay no value", "__WiFiDeviceManagerDebugAutoJoin"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019FACC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s DebugCmdAutoJoinDrivingRssiThres valRef is NULL", "__WiFiDeviceManagerDebugAutoJoin"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019FB2C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s DebugCmdDisable24GhzAJScanDuringBTAndDriving no value", "__WiFiDeviceManagerDebugAutoJoin"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019FB8C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s request is NULL", "__WiFiDeviceManagerDebugAutoJoin"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019FBEC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s manager is NULL", "__WiFiDeviceManagerDebugAutoJoin"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10019FC4C()
{
  sub_100011560();
  Value = CFDictionaryGetValue(v1, @"DebugCommandValueDict");
  if (Value && sub_1000F8D38(Value))
  {
    *(v0 + 132) = 0;
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s Using Debug Value for AutoJoinUnreliableNwRssiThres = %d", "__WiFiDeviceManagerDebugAutoJoin", 0}];
    }

    v4 = 0;
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s DebugCmdAutoJoinUnreliableNwRssiThres valRef is NULL", "__WiFiDeviceManagerDebugAutoJoin"}];
    }

    v4 = -3900;
  }

  sub_1000F8D20(v4);
}

void sub_10019FD14()
{
  sub_100011560();
  Value = CFDictionaryGetValue(v1, @"DebugCommandValueDict");
  if (Value && sub_1000F8D38(Value))
  {
    *(v0 + 136) = 0;
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s Using Debug Value for AutoJoinPnoRssiThres = %d", "__WiFiDeviceManagerDebugAutoJoin", 0}];
    }

    v4 = 0;
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s DebugCmdAutoJoinPnoRssiThres valRef is NULL", "__WiFiDeviceManagerDebugAutoJoin"}];
    }

    v4 = -3900;
  }

  sub_1000F8D20(v4);
}

void sub_10019FDDC()
{
  sub_100011560();
  Value = CFDictionaryGetValue(v1, @"DebugCommandValueDict");
  if (Value && sub_1000F8D38(Value))
  {
    *(v0 + 140) = 0;
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s Using Debug Value for AutoJoinDrivingRssiThres = %d", "__WiFiDeviceManagerDebugAutoJoin", 0}];
    }

    v4 = 0;
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s DebugCmdAutoJoinDrivingRssiThres valRef is NULL", "__WiFiDeviceManagerDebugAutoJoin"}];
    }

    v4 = -3900;
  }

  sub_1000F8D20(v4);
}

void sub_10019FEA4()
{
  sub_100011560();
  Value = CFDictionaryGetValue(v1, @"DebugCommandValueDict");
  if (Value && sub_1000F8D38(Value))
  {
    *(v0 + 144) = 0;
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s Using Debug Value for DebugCmdTopNetworksRankLimit = %d", "__WiFiDeviceManagerDebugAutoJoin", 0}];
    }

    v4 = 0;
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s DebugCmdTopNetworksRankLimit valRef is NULL", "__WiFiDeviceManagerDebugAutoJoin"}];
    }

    v4 = -3900;
  }

  sub_1000F8D20(v4);
}

void sub_10019FF6C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null deviceManager", "WiFiDeviceManagerSetScanBackoffReport"}];
  }

  objc_autoreleasePoolPop(v0);
}

id sub_10019FFD8()
{
  result = off_100298C40;
  if (off_100298C40)
  {
    return [off_100298C40 WFLog:3 message:{"%s: NULL Device Manager!", "WiFiDeviceManagerSetWoWBlacklistThresholds"}];
  }

  return result;
}

void sub_1001A0024()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null wakeReason.", "__WiFiDeviceManagerSystemWokenForAutoUnlock"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A0090()
{
  sub_10001131C();
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: system is going to sleep. Tearing down hosted AWDL session.", "WiFiDeviceManagerSetSystemPMState"}];
  }

  objc_autoreleasePoolPop(v2);
  v3 = v0[688];
  if (v3)
  {
  }

  v0[688] = 0;
  v4 = *v1;

  CFSetApplyFunction(v4, &sub_1000D0774, v0);
}

void sub_1001A0134()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager.", "__WiFiDeviceManagerHostedAwdlSessionTearDownApplier"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A01A0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null appWiFiUsageState", "WiFiDeviceManagerSetAppNetworkUsageState"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A020C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null deviceManager", "WiFiDeviceManagerSetAppNetworkUsageState"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A0278()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null deviceManager", "WiFiDeviceManagerSetMotionState"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A02E4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: roamTriggerRssiRef create failed", "__WiFiDeviceManagerSetAppRoamPolicy"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A0344()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null deviceManager", "WiFiDeviceManagerSetSmartCoverState"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A03B0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null deviceManager", "WiFiDeviceManagerSetDeviceOrientation"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A041C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s - interface is NULL!", "__WiFiDeviceManagerTdConfirmedCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A0488()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s - Manager is NULL!", "__WiFiDeviceManagerTdConfirmedCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A04F4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager is NULL", "WiFiDeviceManagerSetNANOffHeadConnectionExpiry"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A0560()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: deviceManager is NULL!", "WiFiDeviceManagerGetNANOffHeadConnectionExpiry"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A070C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: link throughput measurement already started.", "__WiFiDeviceManagerPerformThroughputMeasurement"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A0778()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: PM assertion Network NULL.", "__WiFiDeviceManagerReleaseWakeAssertionForAutoJoin"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A07E4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: PM assertion not held.", "__WiFiDeviceManagerReleaseWakeAssertionForAutoJoin"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A0850(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: bad args: manager %p network %p", "__WiFiDeviceManagerReleaseWakeAssertionForAutoJoin", 0, a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A08C4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"Error: %s: policy dict has NULL values", "WiFiDeviceManagerSetAppPolicy"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A0930()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"Error: %s: device manager or policy dict is NULL", "WiFiDeviceManagerSetAppPolicy"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A099C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: numProbesRef is NULL !", "__WiFiDeviceManagerTriggerActiveProbe"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A09FC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is NULL !", "__WiFiDeviceManagerTriggerActiveProbe"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A0A68()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s; failed to create dictionary", "WiFiDeviceManagerSetDeviceInfo"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A0AC8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: iosVersion is NULL", "WiFiDeviceManagerSetDeviceInfo"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A0B34()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: productType is NULL", "WiFiDeviceManagerSetDeviceInfo"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A0BFC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"Error initiating association request: %d", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A0C58(const void **a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(*a1);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A0CD4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null scanData", "WiFiDeviceManagerUserForcedAssociation"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A0D40()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network.", "WiFiDeviceManagerUserForcedAssociation"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A0DAC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager.", "WiFiDeviceManagerUserForcedAssociation"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A0E18()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: network is NULL", "__WiFiDeviceManagerUserForcedAssociationScanCallback"}];
  }

  objc_autoreleasePoolPop(v0);
  v1 = sub_100008684();

  sub_1000D4A10(v1, v2, 1);
}

void sub_1001A0E94()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null scanData", "__WiFiDeviceManagerUserForcedAssociationScanCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A0F00(const void **a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(*a1);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A1098()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network.", "WiFiDeviceManagerAddNetworkScan"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A1104()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager.", "WiFiDeviceManagerAddNetworkScan"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A1170()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null scanData", "__WiFiDeviceManagerAddNetworkScanCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A11DC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: wifi is off", "WiFiDeviceManagerNoNetworksFoundNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A1248()
{
  sub_10001131C();
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: associated, not reporting no network soft-error", "WiFiDeviceManagerNoNetworksFoundNotification"}];
  }

  objc_autoreleasePoolPop(v2);
  objc_autoreleasePoolPop(v1);

  CFRelease(v0);
}

void sub_1001A12D0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: EAP is not idle, not reporting no network soft-error", "WiFiDeviceManagerNoNetworksFoundNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A133C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: no known networks at this location, not reporting no network soft-error", "WiFiDeviceManagerNoNetworksFoundNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A13A8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: deviceManager is NULL!", "WiFiDeviceManagerNoNetworksFoundNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A1414()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: bssidDataRef is NULL", "WiFiDeviceManagerSetRoam"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A1474()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: bssidStrRef is NULL", "WiFiDeviceManagerSetRoam"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A14E0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: bssidInfo allocation failed!", "WiFiDeviceManagerSetRoam"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A154C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager->device is NULL", "WiFiDeviceManagerSetRoam"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A15B8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager is NULL", "WiFiDeviceManagerSetRoam"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A1624()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager->device is NULL", "WiFiDeviceManagerTriggerCoreCapture"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A1690()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager is NULL", "WiFiDeviceManagerTriggerCoreCapture"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A16FC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: deviceManager is NULL!", "WiFiDeviceManagerGetCurrentRssi"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A1768()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: called with improper arguments!", "WiFiDeviceManagerFilterForKnownNetworksInScanResults"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A17D4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null device manager", "WiFiDeviceManagerSetUserAutoJoin"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A1840()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: deviceManager is NULL!", "__WiFiDeviceManagerUserAutoJoinPreferenceChangedNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A18AC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is nil", "WiFiDeviceManagerDispatchSimulatedJoinRecommendationNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

id sub_1001A1918(const void *a1, uint64_t a2)
{
  result = sub_10000A878(a1);
  v4 = *(a2 + 3336);
  if (result)
  {
    result = [*(a2 + 6776) dispatchNotificationWithRandomMAC:result];
  }

  *(a2 + 3336) = v4;
  return result;
}

void sub_1001A1954()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is nil", "WiFiDeviceManagerDispatchSimulatedRandomMACNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A19C0(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a1);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A1A3C(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a1);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A1AAC(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a1);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A1B1C(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a1);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A1B8C(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a1);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A1C08(const void *a1, const void *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a2);
    sub_1000F8A68();
  }

  objc_autoreleasePoolPop(v4);

  CFRelease(a1);
}

void sub_1001A1C90(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a1);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A1D0C(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a1);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A1D88(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a1);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A1E04(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a1);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A1E80()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s requires manager and interface name args", "WiFiDeviceManagerDestroyEAPTrustExceptionsForCurrentNetwork"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A1EEC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"Error: %s: device manager is NULL", "WiFiDeviceManagerLQMConfig"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A1F58()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"Error: %s: device manager is NULL", "WiFiDeviceManagerCoalesceUndispatchedLQMEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A1FC4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"Error: %s: dictCopy is NULL", "WiFiDeviceManagerCopyCoalescedUndispatchedLQMEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2030()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"Error: %s: device manager is NULL", "WiFiDeviceManagerCopyCoalescedUndispatchedLQMEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A209C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"Error: %s: device manager is NULL", "WiFiDeviceManagerResetCoalescedUndispatchedLQMEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2108()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt : NULL Manager", "WiFiDeviceManagerHandleChangedPowerBudgetValue"}];
  }

  objc_autoreleasePoolPop(v0);
  v1 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt : NULL Manager", "WiFiDeviceManagerHandleChangedPowerBudgetValue"}];
  }

  objc_autoreleasePoolPop(v1);
}

void sub_1001A21A8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: autoHotspotMode is not set", "WiFiDeviceManagerStartAutoInstantHotspotAssociation"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2214()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager is NULL", "WiFiDeviceManagerStartAutoInstantHotspotAssociation"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2280()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Pending Notification. Not queuing another.", "__WiFiDeviceManagerProcessAutoHotspotJoinRecommendedFromScanResults"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A22E0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: not interactive. Suppressing ATJ action", "__WiFiDeviceManagerDetermineNextAction"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2340()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: ask to join not allowed due to user interaction state", "__WiFiDeviceManagerDetermineAskToJoinActionFromScanResults"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A23A0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: ask to join action (%d) not allowed due to user interaction state", "__WiFiDeviceManagerDetermineAskToJoinActionFromScanResults", 0}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2400()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: scanResults is empty", "__WiFiDeviceManagerDetermineAskToJoinActionFromScanResults"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2460()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: scanResults is null", "__WiFiDeviceManagerDetermineAskToJoinActionFromScanResults"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A24C0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: ask-to-join is set to off", "__WiFiDeviceManagerDetermineAskToJoinActionFromScanResults"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2520()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"Not prompting ATJ"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A256C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: scan results do not qualify for ask to join", "__WiFiDeviceManagerDetermineNextAction"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A25CC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: ask-to-join is set to off", "__WiFiDeviceManagerDetermineNextAction"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A262C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Not prompting ATJ, due to user disabled auto join"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2678()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Not prompting ATJ, driving"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A26C4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Not prompting ATJ, still driving"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2710()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Not prompting ATJ, running"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A275C(unsigned int *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Not prompting ATJ, auto-join scan suppressed due to reason=%d", *a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A27BC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: not prompting ATJ action (%d), condition not fulfilled", "__WiFiDeviceManagerDetermineNextAction", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A2820(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a1);
    sub_1000F8A68();
  }

  objc_autoreleasePoolPop(v2);
  CFRelease(a1);
}

void sub_1001A2898(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: New Peer List alloc failed.", "WiFiDeviceManagerGetInterfaceDataUsage"}];
  }

  objc_autoreleasePoolPop(v2);

  CFRelease(a1);
}

void sub_1001A2910()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null ifUsageRef. Nothing to update.", "WiFiDeviceManagerGetInterfaceDataUsage"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A297C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null ifName.", "WiFiDeviceManagerGetInterfaceDataUsage"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A29E8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null mutableIfStatsArrayRef.", "WiFiDeviceManagerGetInterfaceDataUsage"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2A54()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null manager.", "WiFiDeviceManagerGetInterfaceDataUsage"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2AC0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null wifidevice manager", "WiFiDeviceManagerResetAvailabilityEngine"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2B2C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s couldn't convert record to network", "WiFiDeviceManagerProcessBssBlacklistCommandsAndCopyResponse"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2B8C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s - Couldn't perform BSS unblacklist", "WiFiDeviceManagerProcessBssBlacklistCommandsAndCopyResponse"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2BEC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s - Couldn't perform time triggered BSS unblacklist", "WiFiDeviceManagerProcessBssBlacklistCommandsAndCopyResponse"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2C4C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s - Couldn't find network to set blacklist condition", "WiFiDeviceManagerProcessBssBlacklistCommandsAndCopyResponse"}];
  }

  objc_autoreleasePoolPop(v0);
}

id sub_1001A2CAC()
{
  sub_10001131C();
  result = off_100298C40;
  if (off_100298C40)
  {
    result = [off_100298C40 WFLog:3 message:{"%s - Couldn't determine blacklist condition to set", "WiFiDeviceManagerProcessBssBlacklistCommandsAndCopyResponse"}];
  }

  *v0 = v1;
  return result;
}

void sub_1001A2D04()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: BssBlacklist not supported on this platform.. Bailing!", "WiFiDeviceManagerProcessBssBlacklistCommandsAndCopyResponse"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2D64()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s with no command", "WiFiDeviceManagerProcessBssBlacklistCommandsAndCopyResponse"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2DC4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: request is NULL!", "WiFiDeviceManagerProcessBssBlacklistCommandsAndCopyResponse"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2E30()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager is NULL!", "WiFiDeviceManagerProcessBssBlacklistCommandsAndCopyResponse"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2E9C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null manager", "WiFiDeviceManagerSetSymptomsCellOutrankRecommendation"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2F08()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s:cannot allocate regulatoryInfoRef", "__WiFiDeviceManagerSendBSPRegulatoryInfo"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2F68()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s cannot create countryCodeRef", "__WiFiDeviceManagerSendBSPRegulatoryInfo"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A2FC8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s manager is NULL", "WiFiDeviceManagerProcessBSPCommand"}];
  }

  objc_autoreleasePoolPop(v0);
}

id sub_1001A3034()
{
  sub_10001131C();
  v3 = sub_100025AB8(v2);
  v4 = sub_1000C905C(v1);
  v5 = *(v1 + 3470);
  v6 = sub_100025A5C(v1);
  return [v0 WFLog:3 message:{"Rejecting sensing: AWDLEnabled:%d AssistedDiscHostedNetwork:%d RealTimeMode:%d MISScanBlocked:%d AutoJoinBusy:%d\n", v3, v4, v5, v6, sub_100025B90(v1)}];
}

void sub_1001A3288(uint64_t a1)
{
  v2 = *(a1 + 3784);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 3784) = 0;
  }

  v3 = *(a1 + 3800);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 3800) = 0;
  }

  *(a1 + 3792) = 0;
}

void sub_1001A32CC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Beacon cache was empty", "WiFiDeviceManagerAttemptToShowColocatedJoinNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A3338()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: WiFiDeviceManagerRef is NULL", "WiFiDeviceManagerAttemptToShowColocatedJoinNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A33A4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: WiFiNetworkRef returned NULL", "WiFiDeviceManagerAttemptToShowColocatedJoinNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A3410()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Beacon cache was empty", "__WiFiDeviceManagerCopyDeviceScanCache"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A347C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: CFArrayCreateMutable() returned NULL", "__WiFiDeviceManagerCopyDeviceScanCache"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A34E8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: WiFiDeviceManagerRef is NULL", "__WiFiDeviceManagerCopyDeviceScanCache"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A3554()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"suppressing limited compatibility modal as setup is not complete"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A35AC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_1000591D8(0xDu);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A3620()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: failed to create additionalInformation", "__WiFiDeviceManagerShowColocatedJoinNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A3680()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: current network name is null", "__WiFiDeviceManagerShowColocatedJoinNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A36EC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: candidate manager is nil", "__WiFiDeviceManagerShowColocatedJoinNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A3758()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: current network is null", "__WiFiDeviceManagerShowColocatedJoinNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A37C4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null device manager", "__WiFiDeviceManagerShowColocatedJoinNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001A3830(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: scanning for %@", "WiFiDeviceManagerDispatchSimulatedColocatedJoinNotification", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001A391C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: device is not connected to a network", "WiFiDeviceManagerDispatchSimulatedColocatedJoinNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}