void sub_1000C15F8(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 3664);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 3664) = 0;
  }

  if (cf)
  {
    *(a1 + 3664) = CFRetain(cf);
  }
}

void sub_1000C163C(uint64_t a1, CFTypeRef cf, int a3)
{
  v6 = *(a1 + 328);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 328) = 0;
  }

  if (cf)
  {
    *(a1 + 328) = CFRetain(cf);
    *(a1 + 5700) = a3;

    sub_1000BD374(a1, 1, "WiFiDeviceManagerSetRetryIntervals");
  }
}

void sub_1000C16C0(uint64_t a1, uint64_t a2)
{
  *(a1 + 3736) = a2;
  v3 = *(a1 + 64);
  if (v3)
  {

    sub_100063C3C(v3, a2);
  }

  else
  {
    sub_10019CAA8();
  }
}

void sub_1000C16F4(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_9;
    }

    v7 = "%s: manager ref is null";
    goto LABEL_17;
  }

  if (!cf)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_9;
    }

    v7 = "%s: wifiAmbiguousSSIDs is null";
LABEL_17:
    v8 = 4;
    goto LABEL_8;
  }

  CFRetain(cf);
  v4 = *(a1 + 3768);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 3768) = cf;
  if (CFArrayGetCount(cf))
  {
    v5 = objc_autoreleasePoolPush();
    v6 = off_100298C40;
    if (!off_100298C40)
    {
LABEL_9:

      objc_autoreleasePoolPop(v5);
      return;
    }

    v9 = *(a1 + 3768);
    v7 = "%s: %@";
    v8 = 3;
LABEL_8:
    [v6 WFLog:v8 message:{v7, "WiFiDeviceManagerSetAmbiguousSSIDs", v9}];
    goto LABEL_9;
  }
}

void sub_1000C180C(uint64_t a1, int a2)
{
  if (*(a1 + 6656) != a2)
  {
    *(a1 + 6656) = a2;
    if (a2)
    {
      if (_os_feature_enabled_impl())
      {

        sub_100019814(a1, 0x11uLL);
      }

      else
      {
        [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];

        sub_1000BD310(a1, 2, "WiFiDeviceManagerSetJoinRecommendationMode");
      }
    }
  }
}

void sub_1000C18D0(uint64_t a1, int a2)
{
  if (a2 == 5)
  {
    sub_1000BDEA8(a1, 1u);
  }

  else
  {
    *(a1 + 160) = a2;
  }
}

void sub_1000C18E8(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:2 message:{"wake mode set to %d", a2}];
  }

  objc_autoreleasePoolPop(v4);
  *(a1 + 168) = a2;
}

id sub_1000C1954(uint64_t *a1, int a2, const void *a3)
{
  sub_1001ADB08(a1[12], a2);
  v6 = a1[14];
  if (v6)
  {
    CFRelease(v6);
    a1[14] = 0;
  }

  if (a3)
  {
    a1[14] = CFRetain(a3);
  }

  result = a1[847];
  if (result)
  {

    return [result enableTestMode:a2 != 0];
  }

  return result;
}

_BYTE *sub_1000C26AC(_BYTE *result, char a2, char a3, char a4)
{
  result[32] = a2;
  result[5680] = a3;
  result[35] = a4;
  return result;
}

void sub_1000C26C0(uint64_t a1, unsigned int a2)
{
  if (byte_100298C79)
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Lockdown Mode is enabled, ignoring set WiFiAskToJoinPreferenceType %ld", "WiFiDeviceManagerSetAskToJoinPreference", a2}];
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    *(a1 + 108) = a2;
    v4 = *(a1 + 96);
    v5 = a2 == 2;

    sub_1001ADA24(v4, v5);
  }
}

void sub_1000C2784(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: disable=%d", "WiFiDeviceManagerSetBlackListDisable", a2}];
  }

  objc_autoreleasePoolPop(v4);
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 6720);
  if (a2)
  {
    [v6 removeAllDenyListedItems];
    sub_1000BE0A8(a1);
    v6 = *(a1 + 6720);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  [v6 setEnabled:v7];

  objc_autoreleasePoolPop(v5);
}

id sub_1000C2838(uint64_t a1, int a2)
{
  result = *(a1 + 7480);
  if (result)
  {
    return [result setPrivacyRestrictionDisabled:a2 != 0];
  }

  return result;
}

void sub_1000C2850(CFMutableArrayRef *a1, const __CFArray *a2, int a3)
{
  CFArrayRemoveAllValues(a1[455]);
  if (a2 && CFArrayGetCount(a2))
  {
    v7.length = CFArrayGetCount(a2);
    v7.location = 0;
    CFArrayApplyFunction(a2, v7, sub_100189650, a1);
  }

  if (a3)
  {

    sub_1000C0CA0(a1);
  }
}

id sub_1000C28EC(uint64_t a1, unsigned int a2, unsigned int a3)
{
  *(a1 + 5464) = *(a1 + 5464) & 0xFFFFFFF3 | (4 * ((a3 >> 2) & 3));
  result = +[WiFiRoamManager sharedWiFiRoamManager];
  if (result)
  {
    v6 = +[WiFiRoamManager sharedWiFiRoamManager];
    v7 = *(a1 + 5464);

    return [v6 setBTState:v7 type:a2];
  }

  return result;
}

void sub_1000C2968(uint64_t a1, CFDictionaryRef theDict)
{
  valuePtr = 0;
  Value = CFDictionaryGetValue(theDict, @"MWS_BT_CONNECTION_REPORT_ACL_A2DP");
  CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  v29 = 0;
  v5 = CFDictionaryGetValue(theDict, @"MWS_BT_CONNECTION_REPORT_ESCO");
  CFNumberGetValue(v5, kCFNumberIntType, &v29);
  v28 = 0;
  v6 = CFDictionaryGetValue(theDict, @"MWS_BT_CONNECTION_REPORT_HID");
  CFNumberGetValue(v6, kCFNumberIntType, &v28);
  HIDWORD(v27) = 0;
  v7 = CFDictionaryGetValue(theDict, @"MWS_BT_CONNECTION_REPORT_2G_AoS_UNI");
  CFNumberGetValue(v7, kCFNumberIntType, &v27 + 4);
  LODWORD(v27) = 0;
  v8 = CFDictionaryGetValue(theDict, @"MWS_BT_CONNECTION_REPORT_5G_AoS_UNI");
  CFNumberGetValue(v8, kCFNumberIntType, &v27);
  HIDWORD(v26) = 0;
  v9 = CFDictionaryGetValue(theDict, @"MWS_BT_CONNECTION_REPORT_2G_AoS_BI");
  CFNumberGetValue(v9, kCFNumberIntType, &v26 + 4);
  LODWORD(v26) = 0;
  v10 = CFDictionaryGetValue(theDict, @"MWS_BT_CONNECTION_REPORT_5G_AoS_BI");
  CFNumberGetValue(v10, kCFNumberIntType, &v26);
  v11 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: A2DP: %d eSCO: %d HID: %d 2GHz AoS Uni: %d 5GHz AoS Uni: %d 2GHz AoS Bi: %d 5GHz AoS Bi: %d ", "WiFiDeviceManagerSetBluetoothConnectionsReport", valuePtr, v29, v28, HIDWORD(v27), v27, HIDWORD(v26), v26}];
  }

  objc_autoreleasePoolPop(v11);
  v12 = *(a1 + 5464);
  v13 = (v12 & 2) != valuePtr;
  if (valuePtr)
  {
    v14 = 0;
  }

  else
  {
    v14 = (v12 & 2) != 0;
  }

  if (valuePtr)
  {
    v15 = (v12 & 2) != valuePtr;
  }

  else
  {
    v15 = 0;
  }

  v16 = HIDWORD(v27) + v29;
  v17 = -HIDWORD(v26);
  if ((HIDWORD(v27) + v29 + HIDWORD(v26) != 0) != (v12 & 1))
  {
    v14 |= v16 == v17;
    v15 |= v16 != v17;
    v13 = 1;
  }

  v18 = v12 & 0xFFFFFFFC | (2 * (valuePtr != 0));
  if (v16 != v17)
  {
    ++v18;
  }

  *(a1 + 5464) = v18;
  *(a1 + 5472) = v28 != 0;
  *(a1 + 5468) = 102;
  if (v13)
  {
    v19 = *(a1 + 64);
    v20 = sub_100006F88(v19);
    sub_1000610F8(v19, v20, 0x66u, *(a1 + 5464));
  }

  if (+[WiFiRoamManager sharedWiFiRoamManager])
  {
    [+[WiFiRoamManager sharedWiFiRoamManager](WiFiRoamManager "sharedWiFiRoamManager")];
  }

  *(a1 + 192) = 2;
  if (v14)
  {
    if (_os_feature_enabled_impl())
    {
      sub_100019814(a1, 0x18uLL);
    }

    else
    {
      [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
      sub_1000BD310(a1, 1, "WiFiDeviceManagerSetBluetoothConnectionsReport");
    }
  }

  v21 = *(a1 + 7480);
  if (v21)
  {
    LOBYTE(v25) = (v27 | v26) != 0;
    [v21 setBluetoothState:*(a1 + 5464) != 0 connectedDeviceCount:v28 inA2dp:valuePtr != 0 inSco:v29 != 0 inUniAoS:v27 != 0 inBiAoS:v26 != 0 btAudioBand:v25];
  }

  if (v15)
  {
    v22 = sub_100006F88(*(a1 + 64));
    v23 = *(a1 + 4424);
    if (v23)
    {
      v23(a1, v22, *(a1 + 4432));
      v24 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"Signal WiFi to Reset 24GHz M1M4 Handshake Count to Zero"];
      }

      objc_autoreleasePoolPop(v24);
    }
  }
}

__CFArray *sub_1000C2CD8(uint64_t a1, const __CFDictionary *a2)
{
  v4 = objc_autoreleasePoolPush();
  valuePtr = 0;
  v87 = 0.0;
  v85 = 0;
  if (!a1)
  {
    sub_10019CEB4();
    goto LABEL_46;
  }

  v5 = objc_autoreleasePoolPush();
  if (!a2)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: request is NULL!", "WiFiDeviceManagerProcessWoWBlacklistCommandsAndCopyResponse"}];
    }

    goto LABEL_45;
  }

  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Processing Request:%@", "WiFiDeviceManagerProcessWoWBlacklistCommandsAndCopyResponse", a2}];
  }

  objc_autoreleasePoolPop(v5);
  Value = CFDictionaryGetValue(a2, @"AddTrigger");
  if (!Value)
  {
    v28 = CFDictionaryGetValue(a2, @"ConfigThreshold");
    if (v28)
    {
      v29 = v28;
      v30 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Processing WiFiDeviceManagerProcessWoWBlacklistCommand: ConfigThreshold", "WiFiDeviceManagerProcessWoWBlacklistCommandsAndCopyResponse"}];
      }

      objc_autoreleasePoolPop(v30);
      v31 = CFDictionaryGetValue(v29, @"triggerReason");
      if (!v31)
      {
        goto LABEL_98;
      }

      CFNumberGetValue(v31, kCFNumberSInt32Type, &valuePtr + 4);
      v32 = CFDictionaryGetValue(v29, @"perBSSIDThresh");
      if (v32)
      {
        CFNumberGetValue(v32, kCFNumberSInt32Type, &valuePtr);
        [*(a1 + 6720) setDenyListingThresholds:SHIDWORD(valuePtr) value:valuePtr forSSIDThresholds:0];
      }

      else
      {
        v38 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: perBSSIDThresh not present", "WiFiDeviceManagerProcessWoWBlacklistCommandsAndCopyResponse"}];
        }

        objc_autoreleasePoolPop(v38);
      }

      v39 = CFDictionaryGetValue(v29, @"perSSIDThresh");
      if (v39)
      {
        CFNumberGetValue(v39, kCFNumberSInt32Type, &v85);
        [*(a1 + 6720) setDenyListingThresholds:SHIDWORD(valuePtr) value:v85 forSSIDThresholds:1];
        goto LABEL_46;
      }

      v5 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: perSSIDThresh not present", "WiFiDeviceManagerProcessWoWBlacklistCommandsAndCopyResponse"}];
      }

LABEL_45:
      objc_autoreleasePoolPop(v5);
      goto LABEL_46;
    }

    if (CFDictionaryContainsKey(a2, @"copyWoWBlacklistedNetworks"))
    {
      v33 = objc_autoreleasePoolPush();
      v34 = [*(a1 + 6720) denyListedNetworkSSIDs:3];
      v35 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: wowBlacklistedNetworksSsidList: %@", "__WiFiDeviceManagerWoWBlacklistCopyBlacklistedNetworksString", v34}];
      }

      objc_autoreleasePoolPop(v35);
      Copy = CFStringCreateCopy(kCFAllocatorDefault, v34);
      objc_autoreleasePoolPop(v33);
      v36 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: blacklist:%@", "WiFiDeviceManagerProcessWoWBlacklistCommandsAndCopyResponse", Copy}];
      }

      v37 = v36;
      goto LABEL_78;
    }

    v40 = CFDictionaryGetValue(a2, @"copyWoWBlacklistedNetworkProblemList");
    if (!v40)
    {
      if (CFDictionaryContainsKey(a2, @"copyBlacklistHistoryDump"))
      {
        v68 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Processing WiFiDeviceManagerProcessWoWBlacklistCommand: copyBlacklistHistoryDump", "WiFiDeviceManagerProcessWoWBlacklistCommandsAndCopyResponse"}];
        }

        objc_autoreleasePoolPop(v68);
        [*(a1 + 6720) removeExpiredDenyListedState:3];
        v69 = sub_1000C36C4(a1);
      }

      else
      {
        v70 = CFDictionaryGetValue(a2, @"configTimeout");
        if (v70)
        {
          v71 = v70;
          v72 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: Processing WiFiDeviceManagerProcessWoWBlacklistCommand: configTimeout:%@", "WiFiDeviceManagerProcessWoWBlacklistCommandsAndCopyResponse", v71}];
          }

          objc_autoreleasePoolPop(v72);
          v73 = CFDictionaryGetValue(v71, @"timeoutValue");
          if (v73)
          {
            if (CFNumberGetValue(v73, kCFNumberDoubleType, &v87))
            {
              [*(a1 + 6720) setDenyListedStateExpiryIntervalInSec:3 state:v87];
            }
          }

          else
          {
            sub_10019CE48();
          }

          goto LABEL_46;
        }

        if (!CFDictionaryContainsKey(a2, @"copyWoWBlacklistThreshold"))
        {
LABEL_46:
          Copy = 0;
          goto LABEL_79;
        }

        v74 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Processing WiFiDeviceManagerProcessWoWBlacklistCommand: copyWoWBlacklistThreshold", "WiFiDeviceManagerProcessWoWBlacklistCommandsAndCopyResponse"}];
        }

        objc_autoreleasePoolPop(v74);
        v69 = sub_1000C3B8C(a1);
      }

      Copy = v69;
      goto LABEL_79;
    }

    v41 = v40;
    v42 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Processing WiFiDeviceManagerProcessWoWBlacklistCommand: copyWoWBlacklistedNetworkProblemList", "WiFiDeviceManagerProcessWoWBlacklistCommandsAndCopyResponse"}];
    }

    objc_autoreleasePoolPop(v42);
    cf1 = CFDictionaryGetValue(v41, @"SSID_STR");
    if (!cf1)
    {
      sub_10019CDDC();
      goto LABEL_46;
    }

    v43 = objc_autoreleasePoolPush();
    Copy = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (Copy)
    {
      contexta = [*(a1 + 6720) networksInDenyListedState:3];
      if (contexta)
      {
        v44 = objc_alloc_init(NSMutableArray);
        if (v44)
        {
          v45 = v44;
          v46 = objc_alloc_init(NSMutableArray);
          if (v46)
          {
            v47 = v46;
            v48 = contexta;
            if ([contexta count])
            {
              v79 = v43;
              v84 = v4;
              v49 = 0;
              do
              {
                v50 = [v48 objectAtIndex:v49];
                v51 = sub_1000A2E44(v50);
                v52 = sub_10000A878(v51);
                if (CFEqual(cf1, v52))
                {
                  v53 = [*(a1 + 6720) reasonsForNetworkInDenyListedState:v50 state:3 timestamps:v45 reasonData:v47];
                  if (v53)
                  {
                    v54 = v53;
                    v55 = [v53 count];
                    if (v55 == [v45 count])
                    {
                      v56 = [v54 count];
                      if (v56 == [v47 count])
                      {
                        if ([v54 count])
                        {
                          v57 = 0;
                          do
                          {
                            Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                            if (Mutable)
                            {
                              v59 = Mutable;
                              [objc_msgSend(v45 objectAtIndex:{v57), "doubleValue"}];
                              v90 = v60;
                              v61 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &v90);
                              if (v61)
                              {
                                v62 = v61;
                                CFDictionaryAddValue(v59, @"problematicStateEntryTimestamp", v61);
                                CFRelease(v62);
                                v89 = [objc_msgSend(v54 objectAtIndex:{v57), "unsignedIntegerValue"}];
                                v63 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v89);
                                if (v63)
                                {
                                  v64 = v63;
                                  CFDictionaryAddValue(v59, @"problematicStateEntryReason", v63);
                                  CFRelease(v64);
                                  v88 = [objc_msgSend(v47 objectAtIndex:{v57), "integerValue"}];
                                  v65 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v88);
                                  if (v65)
                                  {
                                    v66 = v65;
                                    CFDictionaryAddValue(v59, @"problematicStateEntryReasonData", v65);
                                    CFRelease(v66);
                                    CFArrayAppendValue(Copy, v59);
                                  }

                                  else
                                  {
                                    sub_10019CC5C();
                                  }
                                }

                                else
                                {
                                  sub_10019CCBC();
                                }
                              }

                              else
                              {
                                sub_10019CD1C();
                              }

                              CFRelease(v59);
                            }

                            else
                            {
                              sub_10019CD7C();
                            }

                            ++v57;
                          }

                          while (v57 < [v54 count]);
                        }
                      }
                    }
                  }
                }

                [v47 removeAllObjects];
                [v45 removeAllObjects];
                ++v49;
                v48 = contexta;
              }

              while (v49 < [contexta count]);
              v4 = v84;
              v43 = v79;
            }

            goto LABEL_77;
          }

          v75 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s: networkDenyListReasonDataList is NULL", "__WiFiDeviceManagerCopyWoWDenyListProblemList"}];
          }

LABEL_111:
          objc_autoreleasePoolPop(v75);
          v47 = 0;
LABEL_77:

          v37 = v43;
LABEL_78:
          objc_autoreleasePoolPop(v37);
          goto LABEL_79;
        }

        v75 = objc_autoreleasePoolPush();
        v76 = off_100298C40;
        if (off_100298C40)
        {
          v77 = "%s: networkDenyListTimestampList is NULL";
          v78 = 4;
          goto LABEL_109;
        }

LABEL_110:
        v45 = 0;
        goto LABEL_111;
      }

      v75 = objc_autoreleasePoolPush();
      v76 = off_100298C40;
      if (!off_100298C40)
      {
        goto LABEL_110;
      }

      v77 = "%s: networkDenyListTimestamps is NULL";
    }

    else
    {
      v75 = objc_autoreleasePoolPush();
      v76 = off_100298C40;
      if (!off_100298C40)
      {
        goto LABEL_110;
      }

      v77 = "%s: problematicState is NULL!";
    }

    v78 = 3;
LABEL_109:
    [v76 WFLog:v78 message:{v77, "__WiFiDeviceManagerCopyWoWDenyListProblemList"}];
    goto LABEL_110;
  }

  v7 = Value;
  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Processing WiFiDeviceManagerProcessWoWBlacklistCommand: AddTrigger", "WiFiDeviceManagerProcessWoWBlacklistCommandsAndCopyResponse"}];
  }

  objc_autoreleasePoolPop(v8);
  v9 = CFDictionaryGetValue(v7, @"triggerReason");
  if (!v9)
  {
LABEL_98:
    sub_10019CBF0();
    goto LABEL_46;
  }

  CFNumberGetValue(v9, kCFNumberSInt32Type, &valuePtr + 4);
  v10 = CFDictionaryGetValue(v7, @"SSID_STR");
  if (!v10)
  {
    sub_10019CB90();
    goto LABEL_46;
  }

  v11 = v10;
  v83 = v4;
  v12 = CFDictionaryGetValue(v7, @"BSSID");
  v13 = HIDWORD(valuePtr);
  context = objc_autoreleasePoolPush();
  if (CFArrayGetCount(*(a1 + 3576)) < 1)
  {
    goto LABEL_18;
  }

  v14 = 0;
  v15 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 3576), v14);
    v17 = sub_10000A878(ValueAtIndex);
    if (CFEqual(v17, v11))
    {
      v18 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Processing WiFiDeviceManagerProcessWoWBlacklistCommand: AddTrigger", "__WiFiDeviceManagerWoWBlacklistingTestAddTrigger"}];
      }

      objc_autoreleasePoolPop(v18);
      v19 = sub_10001A9BC(ValueAtIndex);
      v20 = sub_1000BE2EC(a1, v13, 0, v12, 3);
      [*(a1 + 6720) setNetworkDenyListInfo:v20 forScanResult:v19];

      v15 = 1;
    }

    ++v14;
  }

  while (CFArrayGetCount(*(a1 + 3576)) > v14);
  if (!v15)
  {
LABEL_18:
    if (CFArrayGetCount(*(a1 + 3584)) >= 1)
    {
      v21 = 0;
      do
      {
        v22 = CFArrayGetValueAtIndex(*(a1 + 3584), v21);
        v23 = sub_10000A878(v22);
        if (CFEqual(v23, v11))
        {
          v24 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: Processing WiFiDeviceManagerProcessWoWBlacklistCommand: AddTrigger", "__WiFiDeviceManagerWoWBlacklistingTestAddTrigger"}];
          }

          objc_autoreleasePoolPop(v24);
          v25 = sub_10001A9BC(v22);
          v26 = sub_1000BE2EC(a1, v13, 0, v12, 3);
          [*(a1 + 6720) setNetworkDenyListInfo:v26 forScanResult:v25];
        }

        ++v21;
      }

      while (CFArrayGetCount(*(a1 + 3584)) > v21);
    }
  }

  objc_autoreleasePoolPop(context);
  Copy = 0;
  v4 = v83;
LABEL_79:
  objc_autoreleasePoolPop(v4);
  return Copy;
}

__CFArray *sub_1000C36C4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    if (a1)
    {
      v4 = [*(a1 + 6720) networksInDenyListedStateHistory:3];
      if (v4)
      {
        v5 = v4;
        context = v2;
        if ([v4 count])
        {
          v6 = 0;
          v40 = Mutable;
          v42 = a1;
          v43 = v5;
          while (1)
          {
            valuePtr = 0;
            v7 = [v5 objectAtIndex:v6];
            v8 = sub_1000A2E44(v7);
            v9 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            if (!v9)
            {
              v36 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:4 message:{"%s: results is NULL", "__WiFiDeviceManagerCopyWoWDenyListingHistory"}];
              }

              objc_autoreleasePoolPop(v36);
              goto LABEL_46;
            }

            v10 = v9;
            v11 = sub_10000C580(kCFAllocatorDefault, v8);
            v12 = sub_10000B3A8(a1, v11, 1);
            v13 = v12;
            if (!v11 || !v12)
            {
              v37 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:4 message:{"%s: mergedNetwork is NULL", "__WiFiDeviceManagerCopyWoWDenyListingHistory"}];
              }

              objc_autoreleasePoolPop(v37);
              if (!v13)
              {
                goto LABEL_44;
              }

              goto LABEL_43;
            }

            v14 = sub_10009ED84(v12);
            v15 = sub_100009730(v13);
            v16 = sub_10000A878(v11);
            CFDictionaryAddValue(v10, @"SSID_STR", v16);
            LOBYTE(valuePtr) = sub_10009F418(v8);
            valuePtr = valuePtr;
            v17 = sub_1000A158C(v8) << 8;
            if (!v15 || !v14)
            {
              v19 = 0;
            }

            else
            {
              v19 = 0x10000;
            }

            valuePtr |= v17 | v19;
            v20 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
            if (v20)
            {
              v21 = v20;
              CFDictionaryAddValue(v10, @"wowBlacklistedNetworkFlags", v20);
              CFRelease(v21);
            }

            v22 = objc_alloc_init(NSMutableArray);
            if (!v22)
            {
              sub_10019CF20();
              v5 = v43;
LABEL_43:
              CFRelease(v13);
              goto LABEL_44;
            }

            v23 = v22;
            v24 = [*(a1 + 6720) denyListedReasonHistoryForNetwork:v7 state:3 timestamps:v22 reasonData:0];
            if (!v24)
            {
              goto LABEL_34;
            }

            v25 = v24;
            v26 = [v24 count];
            if (v26 != [v23 count])
            {
              goto LABEL_34;
            }

            v27 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
            if (v27)
            {
              break;
            }

            v38 = objc_autoreleasePoolPush();
            v5 = v43;
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"%s: denyListingHistoryRecord is NULL", "__WiFiDeviceManagerCopyWoWDenyListingHistory"}];
            }

            objc_autoreleasePoolPop(v38);
            a1 = v42;
LABEL_35:
            CFRelease(v23);
            if (v13)
            {
              goto LABEL_43;
            }

LABEL_44:
            if (v11)
            {
              CFRelease(v11);
            }

LABEL_46:
            if (++v6 >= [v5 count])
            {
              goto LABEL_52;
            }
          }

          v28 = v27;
          if ([v25 count])
          {
            v29 = 0;
            do
            {
              v30 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
              if (v30)
              {
                v31 = v30;
                v45 = [objc_msgSend(v25 objectAtIndex:{v29), "intValue"}];
                v32 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v45);
                CFDictionaryAddValue(v31, @"wowBlacklistingReason", v32);
                if (v32)
                {
                  CFRelease(v32);
                }

                [objc_msgSend(v23 objectAtIndex:{v29), "doubleValue"}];
                v44 = v33;
                v34 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &v44);
                CFDictionaryAddValue(v31, @"wowBlacklistingTimeStamp", v34);
                if (v34)
                {
                  CFRelease(v34);
                }

                CFArrayAppendValue(v28, v31);
                CFRelease(v31);
              }

              else
              {
                v35 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:4 message:{"%s: results is NULL", "__WiFiDeviceManagerCopyWoWDenyListingHistory"}];
                }

                objc_autoreleasePoolPop(v35);
              }

              ++v29;
            }

            while (v29 < [v25 count]);
          }

          CFDictionaryAddValue(v10, @"wowBlackListingHistory", v28);
          CFRelease(v28);
          Mutable = v40;
          a1 = v42;
LABEL_34:
          CFArrayAppendValue(Mutable, v10);
          CFRelease(v10);
          v5 = v43;
          goto LABEL_35;
        }

LABEL_52:
        CFArrayGetCount(Mutable);
        v2 = context;
      }

      else
      {
        sub_10019CF80();
      }
    }

    else
    {
      sub_10019CFEC();
    }
  }

  else
  {
    sub_10019D058();
  }

  objc_autoreleasePoolPop(v2);
  return Mutable;
}

CFMutableArrayRef sub_1000C3B8C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (!a1)
  {
    sub_10019D334();
    v4 = 0;
    v6 = 0;
    Mutable = 0;
    goto LABEL_18;
  }

  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    sub_10019D2C8();
    v4 = 0;
LABEL_33:
    v6 = 0;
    goto LABEL_18;
  }

  v4 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v4)
  {
    sub_10019D25C();
    goto LABEL_33;
  }

  v5 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v5)
  {
    sub_10019D1F0();
    goto LABEL_33;
  }

  v6 = v5;
  v25 = v2;
  theArray = Mutable;
  v7 = 0;
  while (1)
  {
    valuePtr = [objc_msgSend(objc_msgSend(*(a1 + 6720) "SSIDThresholds")];
    v28 = [objc_msgSend(objc_msgSend(*(a1 + 6720) "BSSIDThresholds")];
    v8 = CWFStringFromDenyListAddReason();
    v9 = CFStringCreateMutable(kCFAllocatorDefault, 0);
    if (!v9)
    {
      sub_10019D190();
      goto LABEL_28;
    }

    v10 = v9;
    v11 = CFStringCreateMutable(kCFAllocatorDefault, 0);
    if (!v11)
    {
      break;
    }

    v12 = v11;
    CFStringAppend(v10, @"PerSSID ");
    CFStringAppend(v10, v8);
    v13 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCharType, &valuePtr);
    if (!v13 || (v14 = v13, CFDictionaryAddValue(v4, v10, v13), CFRelease(v14), CFStringAppend(v12, @"PerBSSID "), CFStringAppend(v12, v8), (v15 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCharType, &v28)) == 0))
    {
      v24 = objc_autoreleasePoolPush();
      Mutable = theArray;
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: numRef is NULL", "__WiFiDeviceManagerWoWBlacklistCopyThresholds"}];
      }

      objc_autoreleasePoolPop(v24);
      CFRelease(v10);
      CFRelease(v12);
      goto LABEL_17;
    }

    v16 = v15;
    CFDictionaryAddValue(v6, v12, v15);
    CFRelease(v16);
    CFRelease(v10);
    CFRelease(v12);
    if (++v7 == 10)
    {
      Mutable = theArray;
      CFArrayAppendValue(theArray, v4);
      CFArrayAppendValue(theArray, v6);
      [*(a1 + 6720) wowDenyListExpiry];
      v27 = v17;
      v18 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &v27);
      if (v18)
      {
        v19 = v18;
        v20 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (v20)
        {
          v21 = v20;
          CFDictionarySetValue(v20, @"unBlacklistingTimeoutInSec", v19);
          CFArrayAppendValue(theArray, v21);
          CFRelease(v21);
        }

        CFRelease(v19);
        v22 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: response:%@", "__WiFiDeviceManagerWoWBlacklistCopyThresholds", theArray}];
        }

        objc_autoreleasePoolPop(v22);
      }

      else
      {
        sub_10019D0C4();
      }

LABEL_17:
      v2 = v25;
      goto LABEL_18;
    }
  }

  sub_10019D124(&v28, &valuePtr, v10);
LABEL_28:
  v2 = v25;
  Mutable = theArray;
LABEL_18:
  CFRelease(@"PerSSID ");
  CFRelease(@"PerBSSID ");
  if (v4)
  {
    CFRelease(v4);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  objc_autoreleasePoolPop(v2);
  return Mutable;
}

void sub_1000C3F50(uint64_t a1, const void *a2)
{
  v4 = *(a1 + 3696);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 3696) = 0;
  }

  if (a2)
  {
    v5 = sub_10000B3A8(a1, a2, 1);
    *(a1 + 3696) = v5;
    if (!v5)
    {
      *(a1 + 3696) = CFRetain(a2);
    }
  }
}

void sub_1000C3FAC(uint64_t a1, const void **a2)
{
  if (a2 && *(a1 + 7480))
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000C43EC;
    v3[3] = &unk_100261628;
    v3[4] = a1;
    sub_1000C4084(a1, a2, v3);
  }

  else
  {
    v2 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s Error notifying UsageMonitor", "WiFiDeviceManagerProcessKnownNetworkRemoval"}];
    }

    objc_autoreleasePoolPop(v2);
  }
}

void sub_1000C4084(uint64_t a1, const void **a2, uint64_t a3)
{
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v31 = 0;
  if (!a1)
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null manager", "__WiFiDeviceManagerCreateNetworkDetailsForUsageMonitor"}];
    }

    objc_autoreleasePoolPop(v6);
  }

  if (!a2)
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null network", "__WiFiDeviceManagerCreateNetworkDetailsForUsageMonitor"}];
    }

    objc_autoreleasePoolPop(v7);
  }

  if (a3)
  {
    if (a1 && a2 && !byte_100298C78)
    {
      v8 = sub_10000C580(kCFAllocatorDefault, a2);
      v37[3] = v8;
      v9 = sub_10000AA64(*(a1 + 3752), a2);
      if (v9)
      {
        v10 = sub_10000C580(kCFAllocatorDefault, v9);
        v33[3] = v10;
      }

      v11 = *(a1 + 3664);
      if (v11)
      {
        v12 = sub_10000A878(a2);
        v13 = CFDictionaryGetValue(v11, v12) != 0;
      }

      else
      {
        v13 = 0;
      }

      v15 = sub_10001A904(a1);
      *buffer = 0;
      v16 = *(a1 + 7464);
      if (v16)
      {
        v40.length = CFStringGetLength(*(a1 + 7464));
        v40.location = 0;
        CFStringGetBytes(v16, v40, 0x8000100u, 0, 0, buffer, 4, 0);
      }

      v17 = sub_1000097F8(a1, v37[3], &v31);
      v18 = *(a1 + 7472);
      v19 = *(a1 + 7488);
      if (v19)
      {
        v20 = [v19 isAtPrimaryHomeLocation];
        v21 = [*(a1 + 7488) isAtNonPrimaryHomeLocation];
      }

      else
      {
        v20 = 0;
        v21 = 0;
      }

      v22 = sub_1000DE1B8(a1);
      CFRetain(a1);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000F5D30;
      block[3] = &unk_100261D00;
      block[8] = &v32;
      block[9] = a1;
      block[4] = v22;
      block[5] = v15;
      v27 = v13;
      v26 = v17;
      v24 = *buffer;
      v25 = v31;
      block[10] = v18;
      v28 = v20;
      v29 = v21;
      block[6] = a3;
      block[7] = &v36;
      dispatch_async(qword_100298C50, block);
    }

    else
    {
      (*(a3 + 16))(a3, 0);
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null callbackBlock", "__WiFiDeviceManagerCreateNetworkDetailsForUsageMonitor"}];
    }

    objc_autoreleasePoolPop(v14);
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);
}

void sub_1000C43AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1000C43EC(uint64_t a1, void *a2)
{
  if (a2)
  {
    [*(*(a1 + 32) + 7480) setForgetNetworkEvent:a2 forInterface:sub_100006F88(*(*(a1 + 32) + 64))];
  }
}

void sub_1000C4458(void *a1, const void *a2, CFTypeRef cf)
{
  if (a1)
  {
    if (cf)
    {
      if (a2)
      {
        v6 = a1[782];
        if (v6)
        {
          CFRelease(v6);
          a1[782] = 0;
        }

        v7 = a1[783];
        if (v7)
        {
          CFRelease(v7);
          a1[783] = 0;
        }

        a1[782] = CFRetain(cf);
        a1[783] = CFRetain(a2);
        v8 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: cellular (%@) carrier name updated to %@", "WiFiDeviceManagerSetCellularCarrierName", a2, cf}];
        }

        objc_autoreleasePoolPop(v8);
        v9 = a1[935];
        if (v9 && a1[783])
        {

          [v9 setSecondaryInterfaceName:?];
        }
      }

      else
      {
        sub_10019D478();
      }
    }

    else
    {
      sub_10019D4E4();
    }
  }

  else
  {
    sub_10019D550();
  }
}

void sub_1000C455C(uint64_t a1, int a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1)
  {
    if (off_100298C40)
    {
      v5 = "is 5G";
      if (!a2)
      {
        v5 = "is Not 5G";
      }

      [off_100298C40 WFLog:3 message:{"%s: cellular Type %s \n", "WiFiDeviceManagerSetCellularRadioType5G", v5}];
    }

    objc_autoreleasePoolPop(v4);
    *(a1 + 7139) = a2;
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null manager.", "WiFiDeviceManagerSetCellularRadioType5G"}];
    }

    objc_autoreleasePoolPop(v4);
  }
}

void sub_1000C4638(uint64_t a1, int a2)
{
  if (a1)
  {
    v4 = a1 + 4096;
    *(a1 + 7148) = a2;
    v5 = objc_autoreleasePoolPush();
    v6 = off_100298C40;
    if (off_100298C40)
    {
      if (a2 == 2)
      {
        v7 = "5GHz";
      }

      else
      {
        v7 = "2.4GHz";
      }

      v8 = *(v4 + 1168);
      Count = CFSetGetCount(*(a1 + 5336));
      v10 = CFSetGetCount(*(a1 + 5344));
      v11 = CFSetGetCount(*(a1 + 5352));
      [v6 WFLog:3 message:{"%s:NAN Concurrency SoftAP Preferred Band update to %s while misChannel=%d and Clients connected (Broadcast:%ld, Hidden:%ld Other Hidden %ld NanLink %ld)\n", "WiFiDeviceManagerSetSoftAPNANCocurrencyPreferredBand", v7, v8, Count, v10, v11, CFSetGetCount(*(a1 + 5360))}];
    }

    objc_autoreleasePoolPop(v5);
    if (a2 != 2 && *(v4 + 1168) >= 0xFu && *(v4 + 1171))
    {
      v12 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s:Restart legacy softAP to move to %s\n", "WiFiDeviceManagerSetSoftAPNANCocurrencyPreferredBand", "2.4GHz"}];
      }

      objc_autoreleasePoolPop(v12);

      sub_1000C47C0(a1, 0);
    }
  }

  else
  {
    sub_10019D628();
  }
}

uint64_t sub_1000C47C0(uint64_t a1, int a2)
{
  result = sub_10018A684(a1);
  if (result && *(a1 + 5267))
  {
    *(a1 + 5271) = 1;
    if (CFSetGetCount(*(a1 + 5320)) > 0 || CFSetGetCount(*(a1 + 5336)) >= 1)
    {
      *(a1 + 5272) = 1;
    }

    *(a1 + 5435) = a2;
    if ([*(a1 + 6832) isNANPublisherStarted] == 1)
    {
      *(a1 + 5435) = a2 != 0;
      *(a1 + 5436) = a2 == 0;
    }

    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Stopping MIS misRestartNanPhs=%d misKeepNanPhsDuringMISStop=%d", "WiFiDeviceManagerRestartSoftAP", *(a1 + 5435), *(a1 + 5436)}];
    }

    objc_autoreleasePoolPop(v5);

    return sub_1000C6C3C(a1);
  }

  return result;
}

void sub_1000C48CC(uint64_t a1, int a2)
{
  v4 = *(a1 + 7144);
  *(a1 + 7144) = a2 != 0;
  if (+[WiFiSoftApStateMonitor sharedInstance])
  {
    [+[WiFiSoftApStateMonitor sharedInstance](WiFiSoftApStateMonitor setUserPreferredBand:"setUserPreferredBand:", *(a1 + 7144)];
  }

  v5 = *(a1 + 7144);
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v5 = *(a1 + 5267);
    if (*(a1 + 5267))
    {
      if (CFSetGetCount(*(a1 + 5336)) > 0 || CFSetGetCount(*(a1 + 5344)) > 0 || CFSetGetCount(*(a1 + 5352)) > 0 || CFSetGetCount(*(a1 + 5360)) > 0)
      {
        v7 = objc_autoreleasePoolPush();
        v8 = off_100298C40;
        if (off_100298C40)
        {
          if (a2)
          {
            v9 = "2.4GHz";
          }

          else
          {
            v9 = "Default";
          }

          Count = CFSetGetCount(*(a1 + 5336));
          v11 = CFSetGetCount(*(a1 + 5344));
          v12 = CFSetGetCount(*(a1 + 5352));
          [v8 WFLog:3 message:{"%s:User SoftAP Preferred Changed to %s while Clients connected (Broadcast:%ld, Hidden:%ld Other Hidden %ld NanLink %ld)\n", "WiFiDeviceManagerSetSoftAPUserPreferredBand", v9, Count, v11, v12, CFSetGetCount(*(a1 + 5360))}];
        }

        objc_autoreleasePoolPop(v7);
        return;
      }

      v5 = *(a1 + 7144);
    }
  }

  if (v5 != v4)
  {
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v14 = "2.4GHz";
      if (!a2)
      {
        v14 = "Default";
      }

      [off_100298C40 WFLog:3 message:{"%s:User SoftAP Preferred Band %s\n", "WiFiDeviceManagerSetSoftAPUserPreferredBand", v14}];
    }

    objc_autoreleasePoolPop(v13);

    sub_1000C47C0(a1, 0);
  }
}

CFMutableArrayRef sub_1000C4AE4(uint64_t a1)
{
  v1 = a1;
  v45 = 0;
  valuePtr[0] = 0;
  v2 = *(a1 + 5360);
  if (v2)
  {
    if (!CFSetGetCount(v2))
    {
      v37 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s No NAN clients to check data usage.", "WiFiManagerCopyNanClientDataUsage"}];
      }

      objc_autoreleasePoolPop(v37);
      return 0;
    }

    v2 = *(v1 + 5360);
  }

  Count = CFSetGetCount(v2);
  v40 = &v40;
  v4 = __chkstk_darwin(Count);
  v6 = (&v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v4)
  {
    memset(&v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), 170, v5);
  }

  CFSetGetValues(*(v1 + 5360), v6);
  if (CFSetGetCount(*(v1 + 5360)) < 1)
  {
    return 0;
  }

  v7 = 0;
  v44 = 0;
  v8 = 0;
  v9 = &off_100298C40;
  v10 = &kCFTypeDictionaryKeyCallBacks;
  v11 = &kCFTypeDictionaryValueCallBacks;
  v41 = @"DataUsageInterfacePeerLastBytes";
  v42 = @"DataUsageInterfacePeerAddr";
  v43 = v1;
  while (1)
  {
    v12 = objc_autoreleasePoolPush();
    if (*v9)
    {
      [*v9 WFLog:3 message:{"%s NAN sta MAC:%@ ", "WiFiManagerCopyNanClientDataUsage", v6[v7]}];
    }

    objc_autoreleasePoolPop(v12);
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, v10, v11);
    v14 = [v6[v7] UTF8String];
    if (!Mutable)
    {
      break;
    }

    if (!v14)
    {
      v39 = objc_autoreleasePoolPush();
      if (*v9)
      {
        [*v9 WFLog:3 message:{"%s:Failed to get NAN Station Mac addr", "WiFiManagerCopyNanClientDataUsage"}];
      }

      goto LABEL_41;
    }

    v15 = CFStringCreateWithCString(kCFAllocatorDefault, v14, 0x8000100u);
    if (v15)
    {
      v23 = v15;
      CFDictionarySetValue(Mutable, @"STATION_MAC", v15);
      CFRelease(v23);
    }

    sub_10014E034(*(v1 + 64), v16, v17, v18, v19, v20, v21, v22, v40, v41, v42, v43, v44, v45, valuePtr[0], valuePtr[1], valuePtr[2], valuePtr[3]);
    if (v24)
    {
      v8 = sub_10010F400(v24, 79, 0, Mutable);
    }

    if (!v8)
    {
      if (!v44)
      {
        v44 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        if (!v44)
        {
          v39 = objc_autoreleasePoolPush();
          if (*v9)
          {
            [*v9 WFLog:3 message:{"%s: peerlist alloc failed.", "WiFiManagerCopyNanClientDataUsage"}];
          }

          v44 = 0;
          goto LABEL_41;
        }
      }

      v25 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, v10, v11);
      if (!v25)
      {
        v39 = objc_autoreleasePoolPush();
        if (*v9)
        {
          [*v9 WFLog:3 message:{"%s: peerRef alloc failed.", "WiFiManagerCopyNanClientDataUsage"}];
        }

        goto LABEL_41;
      }

      v26 = v25;
      v27 = v8;
      v28 = v6;
      v29 = v11;
      v30 = v10;
      Value = CFDictionaryGetValue(Mutable, @"STATION_MAC");
      CFDictionarySetValue(v26, v42, Value);
      v45 = 0;
      valuePtr[0] = 0;
      v32 = CFDictionaryGetValue(Mutable, @"STA_RXBYTES");
      if (v32)
      {
        CFNumberGetValue(v32, kCFNumberSInt32Type, valuePtr + 4);
      }

      v33 = v9;
      v34 = CFDictionaryGetValue(Mutable, @"STA_TXBYTES");
      if (v34)
      {
        CFNumberGetValue(v34, kCFNumberSInt32Type, valuePtr);
      }

      v45 = (LODWORD(valuePtr[0]) + HIDWORD(valuePtr[0]));
      v35 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &v45);
      if (v35)
      {
        v36 = v35;
        CFDictionarySetValue(v26, v41, v35);
        CFRelease(v36);
      }

      CFArrayAppendValue(v44, v26);
      CFRelease(v26);
      v9 = v33;
      v10 = v30;
      v11 = v29;
      v6 = v28;
      v8 = v27;
      v1 = v43;
    }

    CFRelease(Mutable);
    if (++v7 >= CFSetGetCount(*(v1 + 5360)))
    {
      return v44;
    }
  }

  v39 = objc_autoreleasePoolPush();
  if (*v9)
  {
    [*v9 WFLog:3 message:{"%s: staDict alloc failed.", "WiFiManagerCopyNanClientDataUsage"}];
  }

LABEL_41:
  objc_autoreleasePoolPop(v39);
  return v44;
}

void sub_1000C4F40(uint64_t a1, uint64_t a2)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    sub_10019D694();
    return;
  }

  v5 = Mutable;
  v6 = *(a1 + 1) >> 14;
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      goto LABEL_9;
    }

    v7 = @"5";
  }

  else if (v6)
  {
    v7 = @"6";
  }

  else
  {
    v7 = @"2";
  }

  CFDictionarySetValue(Mutable, @"band_before", v7);
LABEL_9:
  v8 = *(a2 + 1) >> 14;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      goto LABEL_16;
    }

    v9 = @"5";
  }

  else if (v8)
  {
    v9 = @"6";
  }

  else
  {
    v9 = @"2";
  }

  CFDictionarySetValue(v5, @"band_after", v9);
LABEL_16:
  if (*(a1 + 9) >= 0xA2u)
  {
    v10 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, (a1 + 9));
    if (v10)
    {
      v11 = v10;
      CFDictionarySetValue(v5, @"rssi_before", v10);
      CFRelease(v11);
    }
  }

  if (*(a2 + 9) >= 0xA2u)
  {
    v12 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, (a2 + 9));
    if (v12)
    {
      v13 = v12;
      CFDictionarySetValue(v5, @"rssi_after", v12);
      CFRelease(v13);
    }
  }

  if ((*(a1 + 32) - 1) < 0x257FFF)
  {
    v14 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, (a1 + 32));
    if (v14)
    {
      v15 = v14;
      CFDictionarySetValue(v5, @"txrate_before", v14);
      CFRelease(v15);
    }
  }

  if ((*(a2 + 32) - 1) < 0x257FFF)
  {
    v16 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, (a2 + 32));
    if (v16)
    {
      v17 = v16;
      CFDictionarySetValue(v5, @"txrate_after", v16);
      CFRelease(v17);
    }
  }

  v19 = *(a1 + 36);
  v18 = (a1 + 36);
  if ((v19 - 1) < 0x257FFF)
  {
    v20 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, v18);
    if (v20)
    {
      v21 = v20;
      CFDictionarySetValue(v5, @"rxrate_before", v20);
      CFRelease(v21);
    }
  }

  v23 = *(a2 + 36);
  v22 = (a2 + 36);
  if ((v23 - 1) < 0x257FFF)
  {
    v24 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, v22);
    if (v24)
    {
      v25 = v24;
      CFDictionarySetValue(v5, @"rxrate_after", v24);
      CFRelease(v25);
    }
  }

  sub_100057634(@"com.apple.wifi.mloSwitch", v5);

  CFRelease(v5);
}

void sub_1000C5210(unsigned __int8 *a1, uint64_t a2)
{
  valuePtr = 0;
  v4 = sub_1000C5420(a1);
  if (v4)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v6 = Mutable;
      v7 = [objc_msgSend(v4 "channel")] - 1;
      if (v7 <= 2)
      {
        CFDictionarySetValue(v6, @"band", off_100262070[v7]);
      }

      v8 = *(a2 + 2);
      if (v8 <= 3)
      {
        CFDictionarySetValue(v6, @"channelWidth", off_100262088[v8]);
      }

      v9 = *(a2 + 3);
      if (v9 <= 3)
      {
        CFDictionarySetValue(v6, @"recommended_channelWidth", off_100262088[v9]);
      }

      v10 = *(a2 + 3) - *(a2 + 2);
      if ((v10 + 3) <= 6u)
      {
        CFDictionarySetValue(v6, @"recommended_channelWidthPerc", off_1002620A8[(v10 + 3)]);
      }

      if ((a1[3914] + 3) <= 6u)
      {
        CFDictionarySetValue(v6, @"previous_recommended_channelWidthOverCurrent", off_1002620A8[(a1[3914] + 3)]);
      }

      v11 = a1[3912];
      if (v11 <= 3)
      {
        CFDictionarySetValue(v6, @"previous_recommended_channelWidth", off_100262088[v11]);
      }

      v12 = *(a2 + 20);
      v13 = a1[3913];
      v14 = v12 >= v13;
      v15 = v12 - v13;
      if (v15 != 0 && v14)
      {
        valuePtr = v15;
        v16 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
        if (v16)
        {
          v17 = v16;
          CFDictionarySetValue(v6, @"recommendationDuration", v16);
          CFRelease(v17);
        }
      }

      a1[3912] = *(a2 + 3);
      a1[3913] = *(a2 + 20);
      a1[3914] = v10;
      sub_100057634(@"com.apple.wifi.obssMitigation.transitionStats", v6);
      CFRelease(v6);
    }

    else
    {
      sub_10019D700();
    }
  }

  else
  {
    sub_10019D76C();
  }
}

id sub_1000C5420(uint64_t a1)
{
  v2 = sub_100009664(*(a1 + 64));
  result = sub_100007D90(a1, v2, 1);
  if (result)
  {
    v4 = result;
    v5 = sub_10001A9BC(result);
    CFRelease(v4);
    return v5;
  }

  return result;
}

void sub_1000C5474(uint64_t a1, uint64_t a2)
{
  v43 = sub_100048140(*(a1 + 120));
  v42 = -127;
  v41 = 0;
  v40 = 0;
  v4 = sub_1000C5420(a1);
  if (v4)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v6 = Mutable;
      v7 = [objc_msgSend(v4 "channel")] - 1;
      if (v7 <= 2)
      {
        CFDictionarySetValue(v6, @"band", off_100262070[v7]);
      }

      v8 = *(a2 + 2);
      if (v8 <= 3)
      {
        CFDictionarySetValue(v6, @"channelWidth", off_100262088[v8]);
      }

      v9 = *(a2 + 3);
      if (v9 <= 3)
      {
        CFDictionarySetValue(v6, @"recommended_channelWidth", off_100262088[v9]);
      }

      if ((*(a2 + 3) - *(a2 + 2) + 3) <= 6u)
      {
        CFDictionarySetValue(v6, @"recommended_channelWidthOverCurrent", off_1002620A8[(*(a2 + 3) - *(a2 + 2) + 3)]);
      }

      v10 = *(a2 + 12);
      if (v10)
      {
        valuePtr = 100 * *(a2 + 8) / v10;
        v11 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
        if (v11)
        {
          v12 = v11;
          CFDictionarySetValue(v6, @"rxBadFCSOverRxFrames", v11);
          CFRelease(v12);
        }

        v38 = (100 * *(a2 + 4)) / *(a2 + 12);
        v13 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v38);
        if (v13)
        {
          v14 = v13;
          CFDictionarySetValue(v6, @"rxBadPLCPOverRxFrames", v13);
          CFRelease(v14);
        }
      }

      v15 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, (a2 + 12));
      if (v15)
      {
        v16 = v15;
        CFDictionarySetValue(v6, @"rxFrames", v15);
        CFRelease(v16);
      }

      v17 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, (a2 + 16));
      if (v17)
      {
        v18 = v17;
        CFDictionarySetValue(v6, @"rxPER", v17);
        CFRelease(v18);
      }

      v19 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v43);
      if (v19)
      {
        v20 = v19;
        CFDictionarySetValue(v6, @"p95_txLatency", v19);
        CFRelease(v20);
      }

      v21 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, (a2 + 40));
      if (v21)
      {
        v22 = v21;
        CFDictionarySetValue(v6, @"rssi_core0", v21);
        CFRelease(v22);
      }

      v23 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, (a2 + 41));
      if (v23)
      {
        v24 = v23;
        CFDictionarySetValue(v6, @"rssi_core1", v23);
        CFRelease(v24);
      }

      v25 = 0;
      v26 = a2 + 24;
      v27 = -127;
      do
      {
        v28 = *(v26 + v25);
        v29 = v27;
        if (v28 > v27)
        {
          v29 = *(v26 + v25);
        }

        if (v28 < 0)
        {
          v27 = v29;
        }

        ++v25;
      }

      while (v25 != 8);
      v42 = v27;
      v30 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, &v42);
      if (v30)
      {
        v31 = v30;
        CFDictionarySetValue(v6, @"strongestNonPrimaryChannelEnergy", v30);
        CFRelease(v31);
      }

      v41 = v42 - *(a2 + 40);
      v32 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, &v41);
      if (v32)
      {
        v33 = v32;
        CFDictionarySetValue(v6, @"diffStrongestNonPrimaryChannelEnergySOI", v32);
        CFRelease(v33);
      }

      v34 = 0;
      v35 = 0;
      do
      {
        if (*(v26 + v34) == v42)
        {
          v35 += 20;
        }

        ++v34;
      }

      while (v34 != 8);
      v40 = v35;
      v36 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v40);
      if (v36)
      {
        v37 = v36;
        CFDictionarySetValue(v6, @"channelWidthWithMaxEnergy", v36);
        CFRelease(v37);
      }

      sub_100057634(@"com.apple.wifi.obssMitigation.stats", v6);
      CFRelease(v6);
    }

    else
    {
      sub_10019D7D8();
    }
  }

  else
  {
    sub_10019D844();
  }
}

uint64_t sub_1000C58A4(uint64_t a1, const void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v9 = 0.0;
  v10 = 0;
  v5 = sub_10001A9BC(a2);
  v6 = 1;
  if ([*(a1 + 6720) isNetworkInDenyListedState:1 scanResult:v5])
  {
    if ([*(a1 + 6720) isNetworkDenyListedForAutoJoinDueToTrigDisc:v5 RSSI:&v10 timestamp:&v9] && !sub_1000C59AC(a1, a2, v10, v9))
    {
      v8 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Trigger disconnected %@ is not suitable", "WiFiDeviceManagerKnownNetworkSuitableAfterTriggerDisconnect", sub_10000A878(a2)}];
      }

      objc_autoreleasePoolPop(v8);
      v6 = 0;
      if (v5)
      {
        goto LABEL_6;
      }

      goto LABEL_7;
    }

    v6 = 1;
  }

  if (v5)
  {
LABEL_6:
  }

LABEL_7:
  objc_autoreleasePoolPop(v4);
  return v6;
}

uint64_t sub_1000C59AC(uint64_t a1, const void *a2, int a3, double a4)
{
  [+[NSDate date](NSDate timeIntervalSince1970];
  if (!a1)
  {
    sub_10019D91C();
    return 0;
  }

  v9 = v8;
  v10 = sub_1000333E8(a2, @"RSSI");
  if (!v10)
  {
    sub_10019D8B0();
    return 0;
  }

  v11 = v10;
  v12 = sub_100048460(*(a1 + 120), a2, a3, a4);
  v13 = sub_10004837C(*(a1 + 120), a2, a3, a4);
  v14 = *(a1 + 9096);
  if (v11 >= -80 && v14 && !v12)
  {
    [*(a1 + 9096) startCellularDataUsageAccountingDelayedAJ:(a4 - v9 + 300.0) withMaxRSSI:-80 forNetwork:sub_10001A9BC(a2)];
    if (v13)
    {
      [*(a1 + 9096) notifyAJDelayedOnlyDueToJITTD];
    }

    return 0;
  }

  if (v14 && v12 == 1)
  {
    [v14 stopAccounting];
  }

  return v12;
}

void sub_1000C5ADC(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = sub_100006F88(v1);
  if (sub_1000078F4(v1, v2))
  {
    sub_10019D974();
  }
}

void sub_1000C5B3C(NSObject **cf, const void *a2)
{
  if (cf)
  {
    if (cf[573])
    {
      if (cf[30])
      {
        if (a2)
        {
          CFRetain(cf);
          CFRetain(a2);
          v4 = cf[30];
          v5[0] = _NSConcreteStackBlock;
          v5[1] = 3221225472;
          v5[2] = sub_1000ED5EC;
          v5[3] = &unk_10025EE08;
          v5[4] = cf;
          v5[5] = a2;
          dispatch_async(v4, v5);
        }

        else
        {
          sub_10019DCD0();
        }
      }

      else
      {
        sub_10019DD3C();
      }
    }

    else
    {
      sub_10019DDA8();
    }
  }

  else
  {
    sub_10019DE14();
  }
}

void sub_1000C5C04(uint64_t a1, const void **a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000C5C70;
  v2[3] = &unk_100261628;
  v2[4] = a1;
  sub_1000C4084(a1, a2, v2);
}

void sub_1000C5C70(uint64_t a1, void *a2)
{
  if (a2)
  {
    [*(*(a1 + 32) + 7480) updateCurrentNetworkDetails:a2];
  }
}

void sub_1000C5CBC(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_100006F88(*(a1 + 64));
    v3 = sub_100007D90(a1, v2, 1);
    v4 = *(a1 + 64);
    if (v3)
    {
      v6 = v3;
      v7 = sub_100190A90();
      sub_10006155C(v4, v7);

      CFRelease(v6);
    }

    else
    {
      v5 = *(a1 + 64);

      sub_10006155C(v5, 0);
    }
  }
}

uint64_t sub_1000C5D70(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Resetting MIS state.", "WiFiDeviceManagerResetMISState"}];
  }

  objc_autoreleasePoolPop(v2);
  v3 = sub_100006F88(*(a1 + 64));

  return sub_1000C5E00(a1, v3, 0, 0, 0);
}

uint64_t sub_1000C5E00(uint64_t a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v10 = malloc_type_malloc(0x20uLL, 0xA004088793A40uLL);
  *v10 = a1;
  v10[1] = a4;
  v10[3] = a5;
  if (a3)
  {
    v11 = CFRetain(a3);
  }

  else
  {
    v11 = 0;
  }

  v10[2] = v11;
  v12 = sub_10005BA14(*(a1 + 64), a2, sub_1000CE2F4, v10);
  if (v12)
  {
    v13 = v12;
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"Unable to stop network (%d). deviceManager=%p", v13, a1}];
    }

    objc_autoreleasePoolPop(v14);
    free(v10);
  }

  return 0;
}

void sub_1000C5EEC(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (*(a1 + 5267) == a2)
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v5 = "enabled";
      if (!a2)
      {
        v5 = "disabled";
      }

      [off_100298C40 WFLog:3 message:{"MIS is already %s", v5}];
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    if (a2)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Force MIS Service enable", "WiFiDeviceManagerSetMISState"}];
      }

      objc_autoreleasePoolPop(v8);

      sub_1000C60E0(a1, a2, 0, 0, a3);
    }

    else
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Force MIS Service disable", "WiFiDeviceManagerSetMISState"}];
      }

      objc_autoreleasePoolPop(v8);
      v15 = 0;
      v13 = 0u;
      v14 = 0u;
      v10 = 1;
      v12 = 0u;
      memset(v9, 0, sizeof(v9));
      DWORD2(v9[0]) = 1;
      v11 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@", @"MIS Disabled");
      sub_1000C67C8(a1, v9);
      sub_1000C60E0(a1, 0, 0, 0, a3);

      sub_1000C6C3C(a1);
    }
  }
}

void sub_1000C60E0(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int *a5)
{
  if (a2)
  {
    v56 = 0;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    LODWORD(v45) = *a5;
    sub_1000C67C8(a1, &v45);
  }

  if (!sub_100060108(*(a1 + 64)))
  {
    if (*a5 != 5)
    {
      v56 = 0;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v45 = 0u;
      DWORD1(v45) = 3;
      sub_1000C67C8(a1, &v45);
    }

    return;
  }

  v10 = a1 + 4096;
  if (!(a3 | a2) && ((v11 = *(a1 + 5320)) != 0 && CFSetGetCount(v11) || (v12 = *(a1 + 5328)) != 0 && CFSetGetCount(v12)))
  {
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      if (*(v10 + 1173))
      {
        v14 = "enabled";
      }

      else
      {
        v14 = "disabled";
      }

      [off_100298C40 WFLog:3 message:{"MIS Discovery %s by more clients", v14}];
    }

    v15 = v13;
LABEL_15:

    objc_autoreleasePoolPop(v15);
    return;
  }

  if (a2 && *(a1 + 5267) && !*(a1 + 5432) && (a4 || CFSetGetCount(*(a1 + 5320)) >= 1 && *(a1 + 7144) == 1))
  {
    v16 = *(a1 + 5264);
    v17 = objc_autoreleasePoolPush();
    v18 = off_100298C40;
    if (v16 > 0xD)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"MIS Discovery %s Force 2.4Ghz", "enabled"}];
      }

      v21 = 1;
      goto LABEL_35;
    }

    if (off_100298C40)
    {
      v19 = "MIS Already enabled in 2.4GHz";
LABEL_33:
      [v18 WFLog:3 message:{v19, v44}];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = off_100298C40;
    if (off_100298C40)
    {
      v20 = "disabled";
      if (a2)
      {
        v20 = "enabled";
      }

      v44 = v20;
      v19 = "MIS Discovery %s";
      goto LABEL_33;
    }
  }

  v21 = 0;
LABEL_35:
  objc_autoreleasePoolPop(v17);
  v22 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    if (*(a1 + 7136))
    {
      v23 = "Support";
    }

    else
    {
      v23 = "Not Support";
    }

    v24 = "is 5G";
    if (!*(a1 + 7139))
    {
      v24 = "is not 5G";
    }

    v25 = *(a1 + 7144);
    v26 = "5GHz";
    if (v25 == 1)
    {
      v26 = "2.4GHz";
    }

    if (v25)
    {
      v27 = v26;
    }

    else
    {
      v27 = "Default";
    }

    if (a4)
    {
      v28 = "2.4GHz";
    }

    else
    {
      v28 = "Default";
    }

    [off_100298C40 WFLog:3 message:{"MIS WiFi %s 5GHz SoftAP, Cellular Radio %s, User Preferred %s Band, Client Req %s\n", v23, v24, v27, v28}];
  }

  objc_autoreleasePoolPop(v22);
  if (a2)
  {
    sub_1000C7220(a1, 0);
  }

  v29 = sub_10018A684(a1);
  *(a1 + 5269) = a2;
  *(a1 + 5432) = a4;
  *(a1 + 5434) = *a5 == 8;
  v30 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s misRestart %d misEnabled %d enable %d manager->mis.misEnabled %d numClients %d misIsNANPHS %d bringUpMethod %d\n", "WiFiDeviceManagerSetMISDiscoveryState", v21, v29, a2, *(a1 + 5267), (*(a1 + 5266) + *(a1 + 5265)), *(a1 + 5434), *a5}];
  }

  objc_autoreleasePoolPop(v30);
  if (_os_feature_enabled_impl() && a2 && *(a1 + 6856) != -536870272 && v29 && *(a1 + 5267) && *a5 == 8)
  {
    v31 = sub_100006F88(*(a1 + 64));
    v32 = sub_100007D90(a1, v31, 1);
    if (v32)
    {
      v33 = v32;
      if (!sub_1000C7464(a1, 8) || *(a1 + 5433))
      {
        v34 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"Enabling MIS. Now disconnecting from %@", sub_10000A878(v33)}];
        }

        objc_autoreleasePoolPop(v34);
        v35 = sub_100006F88(*(a1 + 64));
        sub_1000B9DC8(a1, v35, 1007, "WiFiDeviceManagerSetMISDiscoveryState", 19640);
        *(a1 + 5438) = 1;
      }
    }

    else
    {
      sub_1000BCD2C(a1);
      if ([*(a1 + 6832) isNANPublisherStarted])
      {
        v41 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s Publisher Already Started Do not set SoftAP CSA", "WiFiDeviceManagerSetMISDiscoveryState"}];
        }

        objc_autoreleasePoolPop(v41);
      }

      else
      {
        sub_10005C040(*(a1 + 64));
      }

      sub_1000C7640(a1);
    }

    *(a1 + 5434) = 1;
    return;
  }

  if (v21)
  {
    sub_1000C47C0(a1, 0);
    goto LABEL_88;
  }

  v36 = *(a1 + 5267);
  if (a2 && v29)
  {
    v37 = *a5;
    if (*(a1 + 5267))
    {
      if (v37 != 8)
      {
        v36 = 1;
        goto LABEL_80;
      }
    }

    else if (v37 != 8)
    {
LABEL_87:
      sub_1000C7790(a1);
      goto LABEL_88;
    }

    if (!*(a1 + 5434))
    {
      *(a1 + 5434) = 1;
    }

    goto LABEL_87;
  }

  if (a2 || !*(a1 + 5267))
  {
LABEL_80:
    if (a2 && v36 && *(a1 + 5308))
    {
      sub_10005BC40(*(a1 + 64), 1);
    }

    goto LABEL_88;
  }

  if (*(a1 + 5266) != -*(a1 + 5265))
  {
LABEL_88:
    if (*(a1 + 4184))
    {
      sub_10018A7CC(a1, 1);
      v38 = *(a1 + 4184);
      v39 = *(a1 + 4192);
      v40 = *(a1 + 5269);

      v38(a1, v39, v40);
    }

    return;
  }

  if (a3)
  {
    if (*(a1 + 5270))
    {
      *(a1 + 5270) = 0;
      sub_1000C7220(a1, 0);
    }

    v56 = 0;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    DWORD2(v45) = 1;
    LODWORD(v52) = 1;
    *(&v52 + 1) = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@", @"MIS Disabled");
    sub_1000C67C8(a1, &v45);
    sub_1000C6C3C(a1);
    goto LABEL_88;
  }

  v42 = *(a1 + 5280);
  v43 = objc_autoreleasePoolPush();
  if (v42)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: MIS idle timer already running, timer state :%d", "WiFiDeviceManagerSetMISDiscoveryState", *(a1 + 5280)}];
    }

    v15 = v43;
    goto LABEL_15;
  }

  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Starting MIS idle timer", "WiFiDeviceManagerSetMISDiscoveryState"}];
  }

  objc_autoreleasePoolPop(v43);

  sub_1000C7220(a1, 2);
}

void sub_1000C67C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 != 0.0)
  {
    *(a1 + 6368) = v4;
    sub_10018CCAC(a1, 1);
  }

  if (*a2)
  {
    if (!*(a1 + 6352))
    {
      *(a1 + 6352) = *a2;
    }

    sub_10018CCAC(a1, 1);
  }

  v5 = *(a2 + 4);
  if (v5)
  {
    *(a1 + 6356) = v5;
  }

  v6 = *(a2 + 24);
  if (v6 != 0.0)
  {
    *(a1 + 6376) = v6;
    sub_10018CCAC(a1, 1);
  }

  if (*(a2 + 4) >= 2u)
  {
    sub_10018CCAC(a1, 0);
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  if (*(a2 + 160))
  {
    *(a1 + 6512) = *(a2 + 160);
  }

  v8 = *(a2 + 8);
  if (v8)
  {
    if (*(a1 + 6356) == 1)
    {
      *(a1 + 6360) = v8;
      *(a1 + 6384) = sub_100058B68();
      if (*(a1 + 6448) != 0.0)
      {
        *(a1 + 6456) = sub_100058B68();
      }

      v7 = 1;
    }

    sub_10018CCAC(a1, 0);
  }

  *(a1 + 6420) = 0;
  v9 = *(a1 + 5256);
  if (v9)
  {
    valuePtr = 0;
    v10 = sub_10000A540(v9, @"AP_MODE_AUTH_UPPER");
    v11 = v10;
    if (v10 && CFNumberGetValue(v10, kCFNumberSInt16Type, &valuePtr))
    {
      v12 = (valuePtr >> 5) & 0x80 | (valuePtr >> 2) & 2;
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"Faield to get SoftAP upper AUTH (numRef is NULL %d)", v11 == 0}];
      }

      objc_autoreleasePoolPop(v13);
      v12 = 0;
    }

    *(a1 + 6420) = v12;
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"SoftAP has no network record"];
    }

    objc_autoreleasePoolPop(v14);
  }

  if (*(a2 + 72))
  {
    *(a1 + 6424) = *(a2 + 72);
    sub_10018CCAC(a1, 1);
  }

  v15 = *(a2 + 80);
  if (v15)
  {
    v30 = *(a1 + 6432);
    if (v30)
    {
      CFRelease(v30);
      *(a1 + 6432) = 0;
      v15 = *(a2 + 80);
    }

    *(a1 + 6432) = v15;
    sub_10018CCAC(a1, 1);
  }

  if (*(a2 + 88))
  {
    *(a1 + 6440) = *(a2 + 88);
    sub_10018CCAC(a1, 1);
  }

  v16 = *(a2 + 96);
  if (v16 != 0.0)
  {
    *(a1 + 6448) = v16;
    sub_10018CCAC(a1, 1);
  }

  v17 = *(a2 + 104);
  if (v17 != 0.0)
  {
    *(a1 + 6456) = v17;
    sub_10018CCAC(a1, 1);
  }

  v18 = *(a2 + 112);
  if (v18)
  {
    *(a1 + 6464) = v18;
  }

  v19 = *(a2 + 120);
  if (v19)
  {
    v20 = *(a1 + 6472);
    if (v20)
    {
      CFRelease(v20);
      *(a1 + 6472) = 0;
      v19 = *(a2 + 120);
    }

    *(a1 + 6472) = v19;
  }

  if (*(a2 + 128))
  {
    *(a1 + 6480) = *(a2 + 128);
  }

  if (*(a2 + 144))
  {
    *(a1 + 6496) = *(a2 + 144);
  }

  v21 = *(a2 + 136);
  if (v21)
  {
    v22 = *(a1 + 6488);
    if (v22)
    {
      CFRelease(v22);
      *(a1 + 6488) = 0;
      v21 = *(a2 + 136);
    }

    *(a1 + 6488) = v21;
  }

  v23 = *(a2 + 152);
  if (v23)
  {
    v24 = *(a1 + 6504);
    if (v24)
    {
      CFRelease(v24);
      *(a1 + 6504) = 0;
      v23 = *(a2 + 152);
    }

    *(a1 + 6504) = v23;
  }

  if (*(a2 + 160))
  {
    *(a1 + 6512) = *(a2 + 160);
  }

  v25 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: PHSessionMetric: method=%d end=%d teardown=%d, misStart=%f softAPUp=%f sessionEnd=%f, appleDeviceConnectionCount=%d(%x) nonAppleDeviceConnectionCount=%d deviceDisconnectCount=%d, lpmDuration=%llu, channel=%d, securityTypes 0x%XnanPhPublisherFailureReason %d, nanPhNanStationCount %d, nanPhNanStartSessionTime %f nanPhNanSessionEndTime %f discoveryDisabledTime:%f", "WiFiDeviceManagerRecordPHMetricStats", *(a1 + 6352), *(a1 + 6356), *(a1 + 6360), *(a1 + 6368), *(a1 + 6376), *(a1 + 6384), *(a1 + 6392), *(a1 + 6394), *(a1 + 6396), *(a1 + 6398), *(a1 + 6400), *(a1 + 6408), *(a1 + 6420), *(a1 + 6424), *(a1 + 6440), *(a1 + 6448), *(a1 + 6456), *(a1 + 6520)}];
  }

  objc_autoreleasePoolPop(v25);
  if (v7)
  {
    if (*(a1 + 5264))
    {
      *(a1 + 6408) = *(a1 + 5264);
    }

    v26 = *(a1 + 7128);
    if (v26)
    {
      Value = CFDictionaryGetValue(v26, @"SOFTAP_LOWPOWER_STATS_LOWPOWER_STATE_DURATION");
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberSInt64Type, (a1 + 6400));
      }
    }

    v28 = *(a1 + 6416);
    v29 = objc_autoreleasePoolPush();
    if (v28)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: PHSessionMetric: submission already pending.", "WiFiDeviceManagerRecordPHMetricStats"}];
      }

      objc_autoreleasePoolPop(v29);
    }

    else
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: PHSessionMetric: submission triggered.", "WiFiDeviceManagerRecordPHMetricStats"}];
      }

      objc_autoreleasePoolPop(v29);
      sub_100146724((a1 + 6352));
    }
  }
}

WiFiSoftApStateMonitor *sub_1000C71AC(uint64_t a1, char a2)
{
  *(a1 + 5267) = a2;
  result = +[WiFiSoftApStateMonitor sharedInstance];
  if (result)
  {
    v4 = +[WiFiSoftApStateMonitor sharedInstance];
    v5 = *(a1 + 5267) != 0;

    return [(WiFiSoftApStateMonitor *)v4 setMisEnabled:v5];
  }

  return result;
}

void sub_1000C7220(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 - 1;
  v5 = 90.0;
  if ((a2 - 1) >= 2)
  {
    if (a2 == 4)
    {
      return;
    }

    if (a2 != 3 && a2 != 6)
    {
      if (a2 == 5)
      {
        v5 = 120.0;
      }

      else
      {
        v5 = 315360000.0;
      }
    }
  }

  if (!sub_10018A684(a1) || v2 || *(a1 + 5280) != 5)
  {
    if (v4 > 4)
    {
LABEL_25:
      if (v2 != 5 && *(a1 + 5280) == 5)
      {
        sub_10018A9A0(a1, 0, 0, 0, @"wifid");
      }

      *(a1 + 5280) = v2;
      v14 = *(a1 + 5288);
      v15 = dispatch_time(0, (v5 * 1000000000.0));
      dispatch_source_set_timer(v14, v15, 0xFFFFFFFFFFFFFFFFLL, 0);
      *(a1 + 5296) = v5 + CFAbsoluteTimeGetCurrent();
      return;
    }

    v6 = *(a1 + 5280);
    if (!v6 || (v7 = *(a1 + 5296), Current = CFAbsoluteTimeGetCurrent(), v6 = *(a1 + 5280), v5 > v7 - Current) || v2 == 3 && v6 == 4)
    {
      v9 = v6 == 5;
      v10 = (v2 & 6) == 2;
      v11 = v10 && v9;
      if (v10 && v9)
      {
        v2 = 5;
      }

      else
      {
        v2 = v2;
      }

      v12 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v13 = " ";
        if (v11)
        {
          v13 = "Extending";
        }

        [off_100298C40 WFLog:3 message:{"Starting MIS Timer. %s state (%d) timeout (%.1f)", v13, v2, *&v5}];
      }

      objc_autoreleasePoolPop(v12);
      goto LABEL_25;
    }

    v16 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"MIS Timer Already Running. current state (%d) current timeout (%.1f) requested state (%d) requested timeout (%.1f) ", *(a1 + 5280), *(a1 + 5296), v2, *&v5}];
    }

    objc_autoreleasePoolPop(v16);
  }
}

uint64_t sub_1000C7464(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 4096;
  v3 = *(a1 + 7153);
  if ((v3 & a2) != 0)
  {
    return 1;
  }

  if (!*(a1 + 7152))
  {
    v4 = v3 == 0;
    if (a2 == 1)
    {
      if (v3 != 2)
      {
        goto LABEL_37;
      }
    }

    else if (a2 != 2 || v3 != 1)
    {
      goto LABEL_37;
    }

LABEL_31:
    v4 = 1;
    goto LABEL_37;
  }

  v7 = sub_100006F88(*(a1 + 64));
  v8 = sub_100007D90(a1, v7, 1);
  if (v8)
  {
    *(v2 + 3057) |= 1u;
    CFRelease(v8);
  }

  v9 = *(v2 + 3057);
  if (v9 <= 3)
  {
    if (*(v2 + 3057))
    {
      v11 = a2 == 4 || a2 == 1;
      if (v9 != 2)
      {
        v11 = 0;
      }

      if (v9 == 1)
      {
        v4 = ((a2 - 2) & 0xFFFFFFFD) == 0;
      }

      else
      {
        v4 = v11;
      }

      goto LABEL_37;
    }

    goto LABEL_31;
  }

  if (*(v2 + 3057) > 7u)
  {
    if (v9 == 8)
    {
      v12 = ((a2 - 2) & 0xFFFFFFFD) == 0;
LABEL_34:
      v4 = v12;
      goto LABEL_37;
    }

    v4 = 0;
    if (v9 == 12)
    {
LABEL_29:
      v12 = a2 == 2;
      goto LABEL_34;
    }
  }

  else
  {
    if (v9 != 4)
    {
      v4 = 0;
      if (v9 != 5)
      {
        goto LABEL_37;
      }

      goto LABEL_29;
    }

    v4 = (a2 - 1) < 2;
  }

LABEL_37:
  v13 = objc_autoreleasePoolPush();
  v14 = off_100298C40;
  if (off_100298C40)
  {
    v15 = *(v2 + 3056);
    v16 = sub_100058F60(*(v2 + 3057));
    v17 = *(v2 + 3057);
    v18 = sub_100058F60(a2);
    v19 = "Not Allowed";
    if (v4)
    {
      v19 = "OK";
    }

    [v14 WFLog:3 message:{"%s: isSupported: %d current state: %@(%d) request: %@(%d) status: %s", "WiFiDeviceManagerIsOpModeAllowed", v15, v16, v17, v18, a2, v19}];
  }

  objc_autoreleasePoolPop(v13);
  return v4;
}

char *sub_1000C7640(uint64_t a1)
{
  result = [*(a1 + 6832) isNANPublisherStarted];
  if (!result)
  {
    sub_100194030();
    [*(a1 + 6832) registerStaArriveCallback:sub_1000EDBD8 withContext:a1];
    [*(a1 + 6832) registerStaLeaveCallback:sub_1000EDE8C withContext:a1];
    [*(a1 + 6832) registerPublisherMetricCallback:sub_1000EDFA8 withContext:a1];
    v3 = MGCopyAnswer();
    if (v3)
    {
      v4 = v3;
      [*(a1 + 6832) setDeviceNameForPHSOverNAN:v3];
      CFRelease(v4);
    }

    [*(a1 + 6832) setDataPathSecCfgForPHSOverNAN:1];
    [*(a1 + 6832) startPublisherForPHSOverNAN];
    *(a1 + 5437) = 1;
    if (+[WiFiSoftApStateMonitor sharedInstance])
    {
      [+[WiFiSoftApStateMonitor sharedInstance](WiFiSoftApStateMonitor setMisNanPublisherActive:"setMisNanPublisherActive:", *(a1 + 5437) != 0];
    }

    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"MIS Preparing NAN interface info"];
    }

    objc_autoreleasePoolPop(v5);
    result = sub_1000BBAE0(a1, 8, 1);
    *(a1 + 5437) = 1;
  }

  return result;
}

void sub_1000C7790(uint64_t a1)
{
  v2 = (a1 + 4096);
  if (*(a1 + 5267) == 1 && !*(a1 + 5270) && !*(a1 + 5271) && !*(a1 + 5434))
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"MIS is already enabled"];
    }

    v4 = v6;
    goto LABEL_9;
  }

  if (*(a1 + 5392))
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"MIS start in pending, current state: %d", *(a1 + 5392)}];
    }

    v4 = v3;
LABEL_9:

    objc_autoreleasePoolPop(v4);
    return;
  }

  if (sub_10018A684(a1))
  {
    v2[1365] = 0;
    if (v2[1174] && v2[1168])
    {
      v5 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"MIS in recovery. Using previously selected channel."];
      }

      objc_autoreleasePoolPop(v5);
      *(a1 + 5392) = 1;
    }

    else if (v2[1175])
    {
      if (v2[1339] == 1)
      {
        v2[1338] = 1;
      }

      if (v2[1343] && v2[1168])
      {
        v7 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"MIS in recovery from dext/wifid crash. Using previously selected channel: %u", v2[1168]}];
        }

        objc_autoreleasePoolPop(v7);
        *(a1 + 5392) = 1;
      }

      v2[1365] = v2[1212];
      v8 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"MIS is Restarting. misIsNANPHS %d wasMisHiddenBeforeRestart:%u", v2[1338], v2[1365]}];
      }

      objc_autoreleasePoolPop(v8);
    }

    else if (!v2[1173])
    {
      v16 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"Skip enabling MIS. Not on Internet Tethering screen."];
      }

      objc_autoreleasePoolPop(v16);
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v17 = 0u;
      v15 = 5;
LABEL_45:
      DWORD1(v17) = v15;
      sub_1000C67C8(a1, &v17);
      return;
    }

    if (*(a1 + 5276) || (v10 = *(a1 + 64), v11 = sub_100060E7C(), v12 = IOPMAssertionCreateWithName(@"NoIdleSleepAssertion", 0xFFu, v11, (a1 + 5276)), !v12))
    {
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v17 = 0u;
      *&v18 = sub_100058B68();
      sub_1000C67C8(a1, &v17);
      sub_1000EE598(a1);
      return;
    }

    v13 = v12;
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Unable to prevent idle sleep during MIS start, error=%d", "__WiFiDeviceManagerStartMIS", v13}];
    }

    objc_autoreleasePoolPop(v14);
    *(a1 + 5276) = 0;
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    v15 = 19;
    goto LABEL_45;
  }

  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  DWORD1(v17) = 4;
  sub_1000C67C8(a1, &v17);
  v9 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"User disabled MIS"];
  }

  objc_autoreleasePoolPop(v9);
}

void sub_1000C7B34(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  v5 = sub_10014C450(v4);
  v6 = sub_100006F94(v4, v5, 508, 0, a2);
  if (v6)
  {
    v7 = v6;
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"Unable to set MIS max STA (err = %d) deviceManager=%p\n", v7, a1}];
    }

    objc_autoreleasePoolPop(v8);
  }
}

uint64_t sub_1000C7BE8(uint64_t a1, int a2)
{
  v4 = *(a1 + 64);
  v5 = sub_100006F88(v4);
  v6 = &kCFBooleanFalse;
  if (!a2)
  {
    v6 = &kCFBooleanTrue;
  }

  sub_100006F94(v4, v5, 511, 0, *v6);
  v7 = *(a1 + 120);

  return sub_10013D5B8(v7, a2);
}

uint64_t sub_1000C7C74(uint64_t a1)
{
  result = sub_100029A74(*(a1 + 64));
  if (result)
  {
    return sub_1000612F4(*(a1 + 64)) != 0;
  }

  return result;
}

void sub_1000C7CBC(uint64_t a1, int a2, int a3, int a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = off_100298C40;
  if (off_100298C40)
  {
    v10 = sub_100029A74(*(a1 + 64));
    v11 = "YES";
    if (!v10)
    {
      v11 = "NO";
    }

    v12 = "enable";
    if (a2)
    {
      v13 = "enable";
    }

    else
    {
      v13 = "disable";
    }

    if (!a3)
    {
      v12 = "disable";
    }

    v14 = "enabled";
    if (!a4)
    {
      v14 = "disabled";
    }

    [v9 WFLog:3 message:{"WoW Capable = %s, Attempting to %s WoW and %s LPAS with WoW on Captive %s", v11, v13, v12, v14}];
  }

  objc_autoreleasePoolPop(v8);
  if (!*(a1 + 3467))
  {
    if (a2)
    {
      if (*(a1 + 7176) != a2)
      {
        sub_10000D33C(a1, 3);
        if (*(a1 + 20) == 1)
        {
          *(a1 + 192) = 17;
          sub_1000BD310(a1, 0, "WiFiDeviceManagerSetWoWState");
        }
      }
    }
  }

  *(a1 + 7176) = a2;
  *(a1 + 7177) = a3;
  *(a1 + 7178) = a4;
  sub_1000C7E3C(a1, a2, a3, a4, 0);
  if (!a4)
  {

    sub_100189430(a1);
  }
}

id sub_1000C7E3C(uint64_t a1, int a2, int a3, int a4, int a5)
{
  result = sub_100029A74(*(a1 + 64));
  if (result)
  {
    keys[0] = @"IO80211InterfaceEnableWoW";
    keys[1] = @"IO80211InterfaceEnableLowPwrAssocMode";
    keys[2] = @"IO80211InterfaceEnableWoWOnCaptive";
    keys[3] = @"IO80211InterfaceNetworkWoWDenyListed";
    v11 = kCFBooleanTrue;
    if (a2)
    {
      v12 = kCFBooleanTrue;
    }

    else
    {
      v12 = kCFBooleanFalse;
    }

    if (a3)
    {
      v13 = kCFBooleanTrue;
    }

    else
    {
      v13 = kCFBooleanFalse;
    }

    values[0] = v12;
    values[1] = v13;
    if (a4)
    {
      v14 = kCFBooleanTrue;
    }

    else
    {
      v14 = kCFBooleanFalse;
    }

    if (!a5)
    {
      v11 = kCFBooleanFalse;
    }

    values[2] = v14;
    values[3] = v11;
    result = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 4, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (result)
    {
      v15 = result;
      sub_10006580C(*(a1 + 64), a2, a3);
      v16 = *(a1 + 64);
      v17 = sub_100006F88(v16);
      sub_100006F94(v16, v17, 496, 0, v15);
      CFRelease(v15);
      sub_1000C5CBC(a1);
      return [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
    }
  }

  return result;
}

uint64_t sub_1000C7FC0(uint64_t result)
{
  if (result)
  {
    return sub_10005B850(*(result + 64));
  }

  return result;
}

uint64_t sub_1000C8018(uint64_t a1, const void *a2, char a3)
{
  if (sub_10014E5C0(*(a1 + 64), a2))
  {
    return 0;
  }

  v7 = *(a1 + 7464);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 7464) = 0;
  }

  if (a2)
  {
    v8 = CFRetain(a2);
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 7464) = v8;
  *(a1 + 7472) = a3;
  v9 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s : country code (%@), source (%d)\n", "WiFiDeviceManagerSetLocale", *(a1 + 7464), *(a1 + 7472)}];
  }

  objc_autoreleasePoolPop(v9);
  v10 = sub_100009664(*(a1 + 64));
  v6 = 1;
  v11 = sub_100007D90(a1, v10, 1);
  if (v11)
  {
    v12 = v11;
    if (sub_10000A7CC(v11))
    {
      sub_10018ADC8(a1, v12, 1);
    }

    CFRelease(v12);
  }

  return v6;
}

uint64_t sub_1000C8128(uint64_t a1, const __CFString *a2)
{
  v4 = sub_10018AF1C(a1);
  if (!v4)
  {
    v16 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: error creating network struct", "WiFiDeviceManagerSetMisPassword"}];
    }

    objc_autoreleasePoolPop(v16);
    return 0;
  }

  v5 = v4;
  if (!a2 || !CFStringGetLength(a2))
  {
    CFRelease(v5);
    return 0;
  }

  v6 = sub_10002A1CC(v5);
  v7 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v8 = "already";
    if (!v6)
    {
      v8 = "not";
    }

    [off_100298C40 WFLog:3 message:{"%s: MIS password is %s present", "WiFiDeviceManagerSetMisPassword", v8}];
  }

  objc_autoreleasePoolPop(v7);
  if (v6 && CFStringGetLength(v6))
  {
    if (CFStringCompare(a2, v6, 0))
    {
      v9 = sub_10009FBF4(v5, a2);
      if (!v9)
      {
        v10 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: failed setting MIS password with one already present. Try removing and attempt again...", "WiFiDeviceManagerSetMisPassword"}];
        }

        objc_autoreleasePoolPop(v10);
        sub_10009FCF4(v5);
        sub_10009FDBC(v5);
        v9 = sub_10009FBF4(v5, a2);
        if (!v9)
        {
          v11 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:"Error saving password in keychain"];
          }

          objc_autoreleasePoolPop(v11);
          CFRelease(v5);
          v12 = 0;
          goto LABEL_26;
        }
      }

      v12 = v9;
      if (sub_10018A684(a1) && *(a1 + 5267))
      {
        v18 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Stopping MIS", "WiFiDeviceManagerSetMisPassword"}];
        }

        objc_autoreleasePoolPop(v18);
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
        v21 = 4;
        v23 = 0u;
        memset(v20, 0, sizeof(v20));
        DWORD2(v20[0]) = 4;
        v22 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@", @"Password Change");
        sub_1000C67C8(a1, v20);
        sub_1000C6C3C(a1);
      }
    }

    else
    {
      sub_10019DE80();
      v12 = 1;
    }

    goto LABEL_39;
  }

  v13 = sub_10009FBF4(v5, a2);
  if (v13)
  {
    goto LABEL_32;
  }

  v14 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: failed setting new MIS password. Try removing any existing item and attempt again...", "WiFiDeviceManagerSetMisPassword"}];
  }

  objc_autoreleasePoolPop(v14);
  sub_10009FCF4(v5);
  sub_10009FDBC(v5);
  v13 = sub_10009FBF4(v5, a2);
  if (v13)
  {
LABEL_32:
    v12 = v13;
LABEL_39:
    if (sub_10018A684(a1) && !*(a1 + 5267))
    {
      v19 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Starting MIS", "WiFiDeviceManagerSetMisPassword"}];
      }

      objc_autoreleasePoolPop(v19);
      sub_1000C7790(a1);
    }

    goto LABEL_25;
  }

  v15 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"Error saving new password in keychain"];
  }

  objc_autoreleasePoolPop(v15);
  v12 = 0;
LABEL_25:
  CFRelease(v5);
  if (v6)
  {
LABEL_26:
    CFRelease(v6);
  }

  return v12;
}

id sub_1000C84F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 4040);
  if (v3)
  {
    v3(a1, a2, *(a1 + 4048));
  }

  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Device powering %s", sub_100058B44(*(a1 + 20))}];
  }

  objc_autoreleasePoolPop(v4);
  sub_1000BCD2C(a1);
  sub_10000D33C(a1, 1);
  if (*(a1 + 20) == 1)
  {
    sub_1000D35C8(a1);
    *(a1 + 192) = 3;
    if (_os_feature_enabled_impl())
    {
      sub_100019814(a1, 8uLL);
    }

    else
    {
      [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
      sub_1000BD310(a1, 2, "__WiFiDeviceManagerUpdatePower");
    }

    sub_1000C0CA0(a1);
    v5 = *(a1 + 64);
    v6 = sub_100006F88(v5);
    sub_1000610F8(v5, v6, *(a1 + 5468), *(a1 + 5464));
  }

  result = _os_feature_enabled_impl();
  if (result)
  {

    return sub_1000085EC(a1);
  }

  return result;
}

void sub_1000C8674(uint64_t a1, int a2, uint64_t a3)
{
  v6 = (a1 + 4096);
  Current = CFAbsoluteTimeGetCurrent();
  v8 = *(a1 + 7192);
  v9 = v8 != 0.0;
  if (v8 + 120.0 <= Current)
  {
    v9 = 0;
  }

  if (!a2 && v9)
  {
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: DPS event detected while already in monitoring period. Ignoring...", "__WiFiDeviceManagerEvaluateDpsStateChange"}];
    }

LABEL_7:
    objc_autoreleasePoolPop(v10);
    v11 = 0;
    goto LABEL_8;
  }

  if (!a2)
  {
    LOBYTE(v9) = 1;
  }

  if (!v9)
  {
    v12 = 0;
    v11 = 0;
    v13 = a2 != 6;
    goto LABEL_16;
  }

  v14 = *(a1 + 64);
  v15 = sub_100006F88(v14);
  v16 = sub_1000078F4(v14, v15);
  v11 = v16;
  if (v16)
  {
    v17 = sub_10000A878(v16);
    v18 = sub_100013F70(v11);
    v19 = sub_10009DFC8(v11);
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v17 = 0;
  }

  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        v58 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"ControlCenterToggled: state:%d", a3}];
        }

        objc_autoreleasePoolPop(v58);
        if (!v6[3128])
        {
          v59 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: link state changed while monitoring DPS", "__WiFiDeviceManagerEvaluateDpsStateChange"}];
          }

          objc_autoreleasePoolPop(v59);
          v6[3128] = 1;
          if (!v6[3129])
          {
            v12 = 1;
            v6[3130] = 1;
            sub_100055348(*(a1 + 64), 0, 2u, 0);
            goto LABEL_9;
          }
        }

LABEL_8:
        v12 = 1;
LABEL_9:
        v13 = 1;
LABEL_16:
        v61 = v13;
        goto LABEL_17;
      }

      if (!v6[3128])
      {
        v6[3128] = 1;
      }

      if (v6[3129])
      {
        goto LABEL_8;
      }

      v38 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: power state changed while monitoring DPS.. State:%d", "__WiFiDeviceManagerEvaluateDpsStateChange", a3}];
      }

      objc_autoreleasePoolPop(v38);
      v6[3129] = 1;
      if (v6[3130])
      {
        goto LABEL_8;
      }

      v39 = *(a1 + 64);
      v40 = 2;
LABEL_138:
      sub_100055348(v39, 0, v40, 0);
      goto LABEL_8;
    }

    v49 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: initiating DPS probing and monitoring period", "__WiFiDeviceManagerEvaluateDpsStateChange"}];
    }

    objc_autoreleasePoolPop(v49);
    v50 = *(a1 + 7480);
    if (v50)
    {
      [v50 addFaultEvent:6 forInterface:sub_100009664(*(a1 + 64))];
    }

    if (!v11)
    {
      v10 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: DPS received while not connected. Not proceeding.", "__WiFiDeviceManagerEvaluateDpsStateChange"}];
      }

      goto LABEL_7;
    }

    *(a1 + 7192) = Current;
    v45 = (a1 + 7224);
    v6[3238] = 0;
LABEL_99:
    *(v45 + 2) = 0;
    *v45 = 0;
    v51 = *(a1 + 7200);
    if (v51)
    {
      CFRelease(v51);
      *(a1 + 7200) = 0;
    }

    v52 = *(a1 + 7208);
    if (v52)
    {
      CFRelease(v52);
      *(a1 + 7208) = 0;
    }

    v53 = *(a1 + 7216);
    if (v53)
    {
      CFRelease(v53);
      *(a1 + 7216) = 0;
    }

    if (v17)
    {
      *(a1 + 7200) = CFRetain(v17);
    }

    if (v18)
    {
      *(a1 + 7208) = CFRetain(v18);
    }

    if (v19)
    {
      *(a1 + 7216) = CFRetain(v19);
    }

    v12 = 1;
    if (v6[3236])
    {
      goto LABEL_9;
    }

    v54 = CFAbsoluteTimeGetCurrent();
    v6[3236] = 1;
    *(a1 + 7184) = v54;
    v55 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"DPS Probe: Starting probe on all ACs"];
    }

    objc_autoreleasePoolPop(v55);
    v56 = 0;
    do
    {
      sub_1000F4914(v56, a1);
      v56 = (v56 + 1);
    }

    while (v56 != 4);
    if (!a1)
    {
      v57 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: null manager.", "__WiFiDeviceManagerCheckAndSubmitAPInfo"}];
      }

      objc_autoreleasePoolPop(v57);
      goto LABEL_86;
    }

    goto LABEL_8;
  }

  if ((a2 - 4) < 2)
  {
    v41 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"Event IP/roam state changed: info:%d", a3}];
    }

    objc_autoreleasePoolPop(v41);
    if (!v11)
    {
      v10 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: no connected network while in DPS monitoring period.", "__WiFiDeviceManagerEvaluateDpsStateChange"}];
      }

      goto LABEL_7;
    }

    v42 = *(a1 + 7200);
    if (v42 && v17 && !CFEqual(v42, v17))
    {
      v6[3131] = 1;
    }

    v43 = *(a1 + 7208);
    if (v43 && v18 && !CFEqual(v43, v18))
    {
      v6[3132] = 1;
    }

    v44 = *(a1 + 7216);
    if (v44 && v19 && !CFEqual(v44, v19))
    {
      v6[3133] = 1;
    }

    LOBYTE(v62) = v6[3131];
    *(&v62 + 1) = *(v6 + 1566);
    v45 = v6 + 3128;
    BYTE3(v62) = v6[3128];
    v46 = v6[3129];
    DWORD1(v62) = -1431655766;
    *(&v62 + 1) = __PAIR64__(a3, a2);
    BYTE4(v62) = v46;
    sub_10005633C(&v62);
    goto LABEL_99;
  }

  if (a2 == 3)
  {
    if (v6[3129])
    {
      if (!v11)
      {
        goto LABEL_8;
      }
    }

    else if (!v11 || !v6[3128])
    {
      goto LABEL_8;
    }

    v39 = *(a1 + 64);
    v40 = 3;
    goto LABEL_138;
  }

  if (v6[3128])
  {
    goto LABEL_8;
  }

  v60 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: link went down while monitoring DPS.. reason:%d", "__WiFiDeviceManagerEvaluateDpsStateChange", a3}];
  }

  objc_autoreleasePoolPop(v60);
  v6[3128] = 1;
  *(&v63 + 4) = 0x6AAAAAAAALL;
  LOBYTE(v63) = v6[3131];
  *(&v63 + 1) = *(v6 + 1566);
  v12 = 1;
  BYTE3(v63) = 1;
  BYTE4(v63) = v6[3129];
  HIDWORD(v63) = a3;
  sub_10005633C(&v63);
  v61 = 0;
LABEL_17:
  v20 = *(a1 + 7336);
  if (v20)
  {
    Count = CFDictionaryGetCount(v20);
  }

  else
  {
    Count = 0;
  }

  v22 = v6;
  v23 = sub_1000654C0(*(a1 + 64));
  if (!v23)
  {
    v27 = 0;
    v29 = 0;
    goto LABEL_36;
  }

  v24 = v23;
  v25 = CFDictionaryGetCount(v23);
  v26 = 0;
  v27 = 0;
  if (!v25)
  {
    v29 = 0;
LABEL_39:
    if (!v12)
    {
      goto LABEL_78;
    }

LABEL_40:
    v36 = *(a1 + 7336);
    if (v36 && CFDictionaryGetCount(v36) && ((v22[3238] != 0) & ~v26) == 0)
    {
      v22[3238] = 1;
      v37 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"Sending AccessPointInfo update to WA: %@", *(a1 + 7336)}];
      }

      objc_autoreleasePoolPop(v37);
      sub_10005658C(*(a1 + 7336));
    }

LABEL_78:
    if (!v27)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

  v28 = v25;
  v29 = 0;
  if (v25 < Count)
  {
    goto LABEL_39;
  }

  if (!Count)
  {
    v27 = 0;
    v29 = 0;
    goto LABEL_77;
  }

  v30 = malloc_type_malloc(8 * v25, 0x6004044C4A2DFuLL);
  if (!v30)
  {
    if (sub_10019DF4C(v61))
    {
      goto LABEL_86;
    }

    goto LABEL_83;
  }

  v27 = v30;
  bzero(v30, 8 * v28);
  v31 = malloc_type_malloc(8 * v28, 0x6004044C4A2DFuLL);
  v29 = v31;
  if (v31)
  {
    bzero(v31, 8 * v28);
    CFDictionaryGetKeysAndValues(v24, v27, v29);
    if (v28 >= 1)
    {
      v32 = 0;
      while (1)
      {
        Value = CFDictionaryGetValue(v24, v27[v32]);
        v34 = CFDictionaryGetValue(*(a1 + 7336), v27[v32]);
        v35 = !Value || v34 == 0;
        if (v35 || CFStringCompare(Value, v34, 0))
        {
          break;
        }

        if (v28 == ++v32)
        {
          goto LABEL_36;
        }
      }

      v47 = *(a1 + 7336);
      if (v47)
      {
        CFRelease(v47);
        *(a1 + 7336) = 0;
      }

LABEL_77:
      *(a1 + 7336) = CFDictionaryCreateCopy(kCFAllocatorDefault, v24);
      v26 = 1;
      if (!v12)
      {
        goto LABEL_78;
      }

      goto LABEL_40;
    }

LABEL_36:
    v26 = 0;
    if (!v12)
    {
      goto LABEL_78;
    }

    goto LABEL_40;
  }

  sub_10019DEEC();
LABEL_79:
  free(v27);
LABEL_80:
  if (v29)
  {
    free(v29);
  }

  if ((v61 & 1) == 0)
  {
LABEL_83:
    v48 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"DPS/DNS Symptoms: DPS Probe: cancelling DPS probe & clearing HUD because of link down"];
    }

    objc_autoreleasePoolPop(v48);
    sub_1000F1200(a1);
    sub_1000F4828(a1);
  }

LABEL_86:
  if (v11)
  {
    CFRelease(v11);
  }
}

__CFDictionary *sub_1000C8ED8(uint64_t a1, uint64_t a2)
{
  v3 = sub_100007D90(a1, a2, 1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v6 = sub_10000A9D0(v4);
    CFDictionarySetValue(Mutable, @"RoamKnownBSS", v6);
    CFDictionarySetValue(Mutable, @"RoamEvents", *(a1 + 280));
  }

  return Mutable;
}

CFArrayRef sub_1000C8F84(uint64_t a1)
{
  result = CFSetGetCount(*(a1 + 3376));
  if (result)
  {
    v3 = result;
    __chkstk_darwin(result);
    v5 = &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    memset(v5, 170, v4);
    CFSetGetValues(*(a1 + 3376), v5);
    return CFArrayCreate(kCFAllocatorDefault, v5, v3, &kCFTypeArrayCallBacks);
  }

  return result;
}

id sub_1000C90B4(uint64_t a1)
{
  v2 = -[NSString copy]([+[NSUUID UUID](NSUUID UUIDString], "copy");
  *(a1 + 3904) = v2;
  v3 = *(a1 + 8936);

  return [v3 setColocatedScopeID:v2];
}

uint64_t sub_1000C910C(uint64_t a1, const void *a2, int a3)
{
  v6 = sub_100006F88(*(a1 + 64));
  v7 = sub_1000078F4(*(a1 + 64), v6);
  if (v7)
  {
    v8 = v7;
    v9 = sub_10000A878(v7);
    if (sub_1000657F4(*(a1 + 64)))
    {
      valuePtr = 0;
      v10 = *(a1 + 3784);
      if (v10)
      {
        Count = CFArrayGetCount(v10);
      }

      else
      {
        Count = 0;
      }

      v15 = sub_10000A540(v8, @"CHANNEL_FLAGS");
      if (v15)
      {
        CFNumberGetValue(v15, kCFNumberIntType, &valuePtr + 4);
      }

      if (a3 != 1)
      {
        if ((valuePtr & 0x200000000000) == 0)
        {
          if (Count >= 1)
          {
            v24 = 0;
            v25 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 3784), v24);
              if (ValueAtIndex)
              {
                v27 = ValueAtIndex;
                v28 = sub_10000A878(ValueAtIndex);
                v29 = sub_10000A540(v27, @"CHANNEL_FLAGS");
                if (v29)
                {
                  CFNumberGetValue(v29, kCFNumberIntType, &valuePtr);
                  if (CFEqual(v9, a2))
                  {
                    if ((valuePtr & 0x2000) != 0)
                    {
                      if (CFEqual(v9, v28))
                      {
                        v14 = objc_autoreleasePoolPush();
                        if (off_100298C40)
                        {
                          [off_100298C40 WFLog:3 message:{"%s: same ssid is found with 6E enabled, do same ssid roaming", "WiFiDeviceManagerNetworkTransitionAction"}];
                        }

                        goto LABEL_60;
                      }

                      if ((valuePtr & 0x2000) != 0 && !CFEqual(v9, v28))
                      {
                        v25 = 1;
                      }
                    }
                  }

                  else if ((valuePtr & 0x2000) != 0 && CFEqual(a2, v28))
                  {
                    v25 = 1;
                  }
                }
              }

              ++v24;
            }

            while (Count != v24);
            if (!v25)
            {
              goto LABEL_57;
            }

            v23 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: different ssid is found with 6E enabled, do ssid transition", "WiFiDeviceManagerNetworkTransitionAction"}];
            }

            goto LABEL_48;
          }

LABEL_57:
          if (CFEqual(v9, a2))
          {
            v14 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: no matching network in colocated cache with 6E enabled, do same ssid roaming", "WiFiDeviceManagerNetworkTransitionAction"}];
            }

            goto LABEL_60;
          }
        }

LABEL_56:
        v12 = 0;
        goto LABEL_61;
      }

      if (CFEqual(v9, a2))
      {
        if ((valuePtr & 0x200000000000) != 0 && Count >= 1)
        {
          v16 = 0;
          for (i = 0; i != Count; ++i)
          {
            v18 = CFArrayGetValueAtIndex(*(a1 + 3784), i);
            if (v18)
            {
              v19 = v18;
              if (CFEqual(v9, a2))
              {
                v20 = sub_10000A540(v19, @"CHANNEL_FLAGS");
                if (v20)
                {
                  CFNumberGetValue(v20, kCFNumberIntType, &valuePtr);
                  v21 = sub_10000A878(v19);
                  v22 = valuePtr;
                  if ((valuePtr & 0x2000) == 0)
                  {
                    if (CFEqual(v9, v21))
                    {
                      v14 = objc_autoreleasePoolPush();
                      if (off_100298C40)
                      {
                        [off_100298C40 WFLog:3 message:{"%s: same ssid is found with 6E disabled, do same ssid roaming", "WiFiDeviceManagerNetworkTransitionAction"}];
                      }

                      goto LABEL_60;
                    }

                    v22 = valuePtr;
                  }

                  if ((v22 & 0x2000) == 0 && !CFEqual(v9, v21))
                  {
                    v16 = 1;
                  }
                }
              }
            }
          }

          if (!v16)
          {
            goto LABEL_51;
          }

          v23 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: different ssid is found with 6E disabled, do ssid transition", "WiFiDeviceManagerNetworkTransitionAction"}];
          }

LABEL_48:
          objc_autoreleasePoolPop(v23);
          v12 = 2;
LABEL_61:
          CFRelease(v8);
          return v12;
        }

LABEL_51:
        v14 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: no matched network in colocated cache with 6E disabled, do same ssid roaming", "WiFiDeviceManagerNetworkTransitionAction"}];
        }

LABEL_60:
        objc_autoreleasePoolPop(v14);
        v12 = 1;
        goto LABEL_61;
      }

      v14 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: current ssid doesn't match requested network ssid with 6E disabled, no action", "WiFiDeviceManagerNetworkTransitionAction"}];
      }
    }

    else
    {
      v13 = CFEqual(v9, a2);
      v14 = objc_autoreleasePoolPush();
      if (v13)
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: SSID transition is not supported, do same ssid roaming", "WiFiDeviceManagerNetworkTransitionAction"}];
        }

        goto LABEL_60;
      }

      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: SSID transition is not supported, no action", "WiFiDeviceManagerNetworkTransitionAction"}];
      }
    }

    objc_autoreleasePoolPop(v14);
    goto LABEL_56;
  }

  return 0;
}

void sub_1000C9564(uint64_t a1, const void *a2, const void *a3, unsigned int a4)
{
  v7 = sub_1000C910C(a1, a3, a4);
  if (v7 == 1)
  {
    v8 = *(a1 + 64);

    sub_100062ADC(v8, a2, a4);
  }

  else if (v7 == 2)
  {

    sub_1000C9608(a1, a4 == 1);
  }
}

void sub_1000C9608(uint64_t a1, int a2)
{
  valuePtr = 0;
  if (sub_1000657F4(*(a1 + 64)))
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v5 = "2.4Gh/5Gh";
      if (!a2)
      {
        v5 = "6Gh";
      }

      [off_100298C40 WFLog:3 message:{"[NWTRANSIT]: Initiate Colocated Network Transition. Transitioning to %s Colocated Network", v5}];
    }

    objc_autoreleasePoolPop(v4);
    v6 = sub_100006F88(*(a1 + 64));
    v7 = sub_1000078F4(*(a1 + 64), v6);
    v8 = sub_10000A540(v7, @"CHANNEL_FLAGS");
    if (v8)
    {
      CFNumberGetValue(v8, kCFNumberIntType, &valuePtr);
    }

    v9 = *(a1 + 3784);
    if (v9)
    {
      Count = CFArrayGetCount(v9);
    }

    else
    {
      Count = 0;
    }

    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"[NWTRANSIT]: Num Colocated Networks %ld", Count}];
    }

    objc_autoreleasePoolPop(v11);
    v12 = valuePtr;
    if (!a2)
    {
      if ((valuePtr & 0x18) != 0 && Count >= 1)
      {
        v18 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 3784), v18);
          if (ValueAtIndex)
          {
            v15 = ValueAtIndex;
            v20 = sub_10000A540(ValueAtIndex, @"CHANNEL_FLAGS");
            if (v20)
            {
              CFNumberGetValue(v20, kCFNumberIntType, &valuePtr + 4);
              if ((valuePtr & 0x200000000000) != 0)
              {
                break;
              }
            }
          }

          if (Count == ++v18)
          {
            v12 = valuePtr;
            goto LABEL_32;
          }
        }

        v24 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"[NWTRANSIT]:Associated to 2.4Gh/5Gh. Top 6Gh Colocated Network for Transition = %@", v15}];
        }
      }

      else
      {
LABEL_32:
        if ((v12 & 8) == 0 || Count < 1)
        {
          return;
        }

        v21 = 0;
        while (1)
        {
          v22 = CFArrayGetValueAtIndex(*(a1 + 3784), v21);
          if (v22)
          {
            v15 = v22;
            v23 = sub_10000A540(v22, @"CHANNEL_FLAGS");
            if (v23)
            {
              CFNumberGetValue(v23, kCFNumberIntType, &valuePtr + 4);
              if ((valuePtr & 0x1000000000) != 0)
              {
                break;
              }
            }
          }

          if (Count == ++v21)
          {
            return;
          }
        }

        v24 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"[NWTRANSIT]:Associated to 2.4Gh. Top 5Gh Colocated Network for Transition = %@", v15}];
        }
      }

      objc_autoreleasePoolPop(v24);
LABEL_45:
      sub_1000DCA30(a1, v15);
      return;
    }

    if ((valuePtr & 0x2000) != 0 && Count >= 1)
    {
      v13 = 0;
      while (1)
      {
        v14 = CFArrayGetValueAtIndex(*(a1 + 3784), v13);
        if (v14)
        {
          v15 = v14;
          v16 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"[NWTRANSIT]: Associated to 6Gh. Top Colocated Network for Transition = %@", v15}];
          }

          objc_autoreleasePoolPop(v16);
          v17 = sub_10000A540(v15, @"CHANNEL_FLAGS");
          if (v17)
          {
            CFNumberGetValue(v17, kCFNumberIntType, &valuePtr + 4);
            if ((valuePtr & 0x1000000000) != 0)
            {
              break;
            }
          }
        }

        if (Count == ++v13)
        {
          return;
        }
      }

      goto LABEL_45;
    }
  }
}

void sub_1000C98C8(uint64_t a1, void *a2)
{
  if (a2)
  {
    [*(a1 + 32) setJoinEvent:0 withReason:0 lastDisconnectReason:*(a1 + 48) lastJoinFailure:0 andNetworkDetails:a2 forInterface:*(a1 + 40)];

    v4 = *(a1 + 40);
  }
}

void sub_1000C992C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 240))
  {
    v4 = *(a1 + 32);
    v3 = (a1 + 32);
    (*(v2 + 3920))(v2, *(*(v4 + 8) + 24), 0, 0, 0, *(v2 + 3928));
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

void *sub_1000C99B0(void *result, int a2, CFTypeRef cf, int a4, int a5, int a6, int a7)
{
  v11 = result;
  if (cf)
  {
    v13 = result[485];
    if (v13)
    {
      CFRelease(v13);
      v11[485] = 0;
    }

    result = CFRetain(cf);
    v11[485] = result;
  }

  *(v11 + 972) = a4;
  *(v11 + 974) = a6;
  *(v11 + 973) = a5;
  *(v11 + 975) = a7;
  return result;
}

void sub_1000C9A24(uint64_t a1)
{
  v2 = sub_100006F88(*(a1 + 64));

  sub_1000B9DC8(a1, v2, 1001, "WiFiDeviceManagerDisassociateAll", 21307);
}

void sub_1000C9A74(uint64_t *a1, const void *a2, uint64_t a3)
{
  v6 = sub_100007D90(a1, a2, 1);
  v7 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: network=%@ reason=%@(%d)", "WiFiDeviceManagerCancelAssociation", v6, sub_100058CA4(a3), a3}];
  }

  objc_autoreleasePoolPop(v7);
  if (a1[935])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000C9BB4;
    v8[3] = &unk_100261670;
    v8[4] = a1;
    v9 = a3;
    sub_1000C4084(a1, v6, v8);
  }

  sub_1000627E8(a1[8], a2, 0, a3, "WiFiDeviceManagerCancelAssociation", 21337);
  sub_10013E4AC(a1[15], 0, 1, 0, a3);
  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_1000C9BB4(uint64_t a1, void *a2)
{
  if (a2)
  {
    [*(*(a1 + 32) + 7480) setJoinEvent:0 withReason:0 lastDisconnectReason:*(a1 + 40) lastJoinFailure:0 andNetworkDetails:a2 forInterface:sub_100006F88(*(*(a1 + 32) + 64))];
  }
}

uint64_t sub_1000C9C2C(_BYTE *a1, const void *a2, int a3)
{
  v5 = sub_100025864(a1, a2);
  if (sub_1000258E0(a1))
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Will not queue NDD request - sensitive action on", "WiFiDeviceManagerIsNDDAllowed", v8, v9}];
    }

LABEL_13:
    objc_autoreleasePoolPop(v6);
    return 0;
  }

  if (sub_100025AB8(a1) && (sub_1000C905C(a1) != 0 || !v5) || a1[3470] != 0 && !v5 && a3)
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Will not queue NDD request - hosting AWDL session", "WiFiDeviceManagerIsNDDAllowed", v8, v9}];
    }

    goto LABEL_13;
  }

  if (sub_100025A5C(a1) && !v5)
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Will not queue NDD request - MIS discovery state %d MIS Scan Blocked = %d", "WiFiDeviceManagerIsNDDAllowed", a1[5269], a1[5376]}];
    }

    goto LABEL_13;
  }

  if (sub_100025B90(a1) != 0 && !v5)
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Will not queue NDD request - autojoin is busy", "WiFiDeviceManagerIsNDDAllowed", v8, v9}];
    }

    goto LABEL_13;
  }

  return 1;
}

uint64_t sub_1000C9DD4(uint64_t a1, const void *a2, void *a3, uint64_t a4, const __CFString *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v17 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: failed to join %@, null manager", "WiFiDeviceManagerAssociateAsync", sub_10000A878(a3)}];
    }

    objc_autoreleasePoolPop(v17);
    return 4294963396;
  }

  v9 = a8;
  HIDWORD(v194) = a8 != 1018;
  sub_1000CBBE4(a3);
  dword_100298C90 = 0;
  v187 = a4;
  if (v9 > 1012)
  {
    if (v9 == 1016)
    {
      v14 = 0;
      v189 = 0;
      v15 = 0;
      dword_100298C90 = 0x800000;
      v16 = 4;
      goto LABEL_30;
    }

    if (v9 == 1013)
    {
      v14 = 0;
      v189 = 0;
      v15 = 0;
      dword_100298C90 = 0x20000;
      v16 = 9;
      goto LABEL_30;
    }
  }

  else
  {
    if (v9 == 1008)
    {
      dword_100298C90 = 0x80000;
      v14 = 1;
      if (CFStringCompare(a5, @"Preferences", 1uLL))
      {
        if (CFStringCompare(a5, @"homed", 1uLL))
        {
          if (CFStringCompare(a5, @"SpringBoard", 1uLL))
          {
            v15 = 1;
            if (CFStringCompare(a5, @"WiFiPickerExtens", 1uLL))
            {
              if (CFStringCompare(a5, @"HPSetup", 1uLL) && CFStringCompare(a5, @"Setup", 1uLL))
              {
                v19 = CFStringCompare(a5, @"sharingd", 1uLL);
                v14 = 0;
                v189 = 0;
                v15 = 0;
                v16 = 8;
                if (v19 == kCFCompareEqualTo)
                {
                  v16 = 14;
                }
              }

              else
              {
                v14 = 0;
                v189 = 0;
                v15 = 0;
                v16 = 13;
              }
            }

            else
            {
              v14 = 0;
              v189 = 0;
              v16 = 3;
            }
          }

          else
          {
            v189 = 1;
            v14 = 0;
            v15 = 0;
            v16 = 7;
          }
        }

        else
        {
          v14 = 0;
          v189 = 0;
          v15 = 0;
          v16 = 6;
        }
      }

      else
      {
        v189 = 0;
        v15 = 0;
        v16 = 2;
      }

      goto LABEL_30;
    }

    if (v9 == 1011)
    {
      v14 = 0;
      v189 = 0;
      v15 = 0;
      dword_100298C90 = 0x40000;
      v16 = 5;
      goto LABEL_30;
    }
  }

  if (v9 != 1018)
  {
    v14 = 0;
    v189 = 0;
    v15 = 0;
    v182 = 0;
    dword_100298C90 = 0x100000;
    goto LABEL_31;
  }

  v14 = 0;
  v189 = 0;
  v15 = 0;
  dword_100298C90 = 0x400000;
  v16 = 10;
LABEL_30:
  v182 = v16;
LABEL_31:
  v191 = v14;
  context = v15;
  if (sub_10000A604(a3) && (v9 == 1035 || v9 == 1008))
  {
    sub_10000AD34(a3, @"WiFiAutoInstantHotspotJoining", kCFBooleanFalse);
  }

  v201 = v9;
  if (!a3)
  {
    goto LABEL_59;
  }

  v20 = *(a1 + 5656);
  if (!v20)
  {
    goto LABEL_59;
  }

  Count = CFArrayGetCount(v20);
  if (!Count)
  {
    goto LABEL_59;
  }

  v22 = Count;
  v23 = sub_10000A540(a3, @"PolicyUUID");
  if (v22 < 1)
  {
    v32 = 0;
    goto LABEL_52;
  }

  v24 = v23;
  v25 = a5;
  v26 = a2;
  v27 = 0;
  v28 = 1;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 5656), v27);
    if (!ValueAtIndex)
    {
      goto LABEL_46;
    }

    v30 = ValueAtIndex;
    if (sub_1000418B0(ValueAtIndex) != 1)
    {
      goto LABEL_46;
    }

    if (!v24)
    {
      v28 = 0;
      goto LABEL_51;
    }

    v31 = sub_100041838(v30);
    if (CFStringCompare(v24, v31, 0) == kCFCompareEqualTo && !sub_1000A1F04(a3))
    {
      break;
    }

    v28 = 0;
LABEL_46:
    if (v22 == ++v27)
    {
      goto LABEL_51;
    }
  }

  v28 = 1;
LABEL_51:
  v32 = v28 == 0;
  a2 = v26;
  a5 = v25;
LABEL_52:
  v33 = objc_autoreleasePoolPush();
  v34 = off_100298C40;
  if (off_100298C40)
  {
    v35 = sub_10000A878(a3);
    v36 = "";
    if (v32)
    {
      v36 = "NOT ";
    }

    v168 = v36;
    [v34 WFLog:3 message:{"%s: network %@ is %scompliant with the active policies!", "__WiFiDeviceManagerIsNetworkPolicyCompliant", v35}];
  }

  objc_autoreleasePoolPop(v33);
  if (v32)
  {
    if (*(a1 + 240))
    {
      CFRetain(a2);
      CFRetain(a1);
      v37 = *(a1 + 240);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000CBE04;
      block[3] = &unk_100261690;
      block[4] = a1;
      block[5] = a2;
      block[6] = a6;
      block[7] = a7;
      dispatch_async(v37, block);
    }

    else
    {
      v47 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: null queue.", "WiFiDeviceManagerAssociateAsync"}];
      }

      objc_autoreleasePoolPop(v47);
    }

    return 4294963366;
  }

LABEL_59:
  v178 = a5;
  if ((v191 | v189) == 1)
  {
    *&v209 = 0;
    [+[NSDate date](NSDate timeIntervalSince1970];
    v39 = v38;
    LODWORD(valuePtr) = 1;
    if (_os_feature_enabled_impl())
    {
      if (sub_1000DFFFC(a1, a3, &v209, 0))
      {
        if (v39 - *&v209 <= 30.0)
        {
          v40 = sub_10000B3A8(a1, a3, 0);
          if (v40)
          {
            v41 = v40;
            v42 = sub_10000A540(v40, @"WiFiNetworkTDOverrideCount");
            if (v42 && (CFNumberGetValue(v42, kCFNumberSInt32Type, &valuePtr), valuePtr >= 3))
            {
              v43 = objc_autoreleasePoolPush();
              v44 = off_100298C40;
              if (off_100298C40)
              {
                v45 = sub_10000A878(a3);
                v168 = valuePtr;
                [v44 WFLog:3 message:{"%s: Assertive TD policies are disabled for this network %@ : %d", "__WiFiDeviceManagerUpdateTDOverrideCount", v45}];
              }

              objc_autoreleasePoolPop(v43);
              v46 = kCFAllocatorDefault;
            }

            else
            {
              v48 = sub_10000A540(v41, @"WiFiNetworkTDOverrideTimestamp");
              if (v48)
              {
                v49 = v48;
                Current = CFAbsoluteTimeGetCurrent();
                v51 = Current - CFDateGetAbsoluteTime(v49);
                if (v51 >= 864000.0)
                {
                  v53 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: More than 10 days since last override, current count %u is reset", "__WiFiDeviceManagerUpdateTDOverrideCount", valuePtr}];
                  }

                  objc_autoreleasePoolPop(v53);
                  LODWORD(valuePtr) = 1;
                }

                else
                {
                  LODWORD(valuePtr) = valuePtr + 1;
                  v52 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    v168 = valuePtr;
                    [off_100298C40 WFLog:3 message:{"%s: %f days since last override, incremented TD override count %u", "__WiFiDeviceManagerUpdateTDOverrideCount", v51 / 86400.0}];
                  }

                  objc_autoreleasePoolPop(v52);
                }
              }

              v46 = kCFAllocatorDefault;
              v54 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
              sub_10000AD34(v41, @"WiFiNetworkTDOverrideCount", v54);
              CFRelease(v54);
            }

            v55 = CFAbsoluteTimeGetCurrent();
            v56 = CFDateCreate(v46, v55);
            sub_10000AD34(v41, @"WiFiNetworkTDOverrideTimestamp", v56);
            CFRelease(v56);
            sub_1000C5B3C(a1, v41);
            v57 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              v168 = valuePtr;
              [off_100298C40 WFLog:3 message:{"%s: Associating to a TD'd network, time since TD %f override count %d", "__WiFiDeviceManagerUpdateTDOverrideCount", v39 - *&v209}];
            }

            objc_autoreleasePoolPop(v57);
            CFRelease(v41);
          }
        }
      }
    }
  }

  v58 = objc_autoreleasePoolPush();
  v59 = sub_10001A9BC(a3);
  if ([*(a1 + 6720) isNetworkInDenyListedState:1 scanResult:v59])
  {
    v60 = [*(a1 + 6720) reasonsForNetworkInDenyListedState:v59 state:1 timestamps:0 reasonData:0];
    if (v60)
    {
      v61 = v60;
      if ([v60 count])
      {
        v62 = [objc_msgSend(v61 objectAtIndex:{0), "unsignedIntegerValue"}];
        dword_100298C90 |= v62;
        ++*(a1 + 6092);
        v63 = v182;
        if (v191 | v189 | context)
        {
          v63 = 11;
        }

        v182 = v63;
      }
    }
  }

  objc_autoreleasePoolPop(v58);
  v64 = sub_100007D90(a1, a2, 1);
  v65 = objc_autoreleasePoolPush();
  v66 = off_100298C40;
  if (off_100298C40)
  {
    if (v64)
    {
      v67 = sub_10000A878(v64);
    }

    else
    {
      v67 = 0;
    }

    v68 = sub_10000A878(a3);
    v170 = sub_100058CA4(v201);
    v172 = v201;
    v168 = v68;
    v9 = v201;
    [v66 WFLog:3 message:{"%s: current %@, assoc %@, reason %@(%d)", "WiFiDeviceManagerAssociateAsync", v67}];
  }

  objc_autoreleasePoolPop(v65);
  if (*(a1 + 3336) != 14)
  {
    v69 = _os_feature_enabled_impl();
    if (v9 != 1018 || (v69 & 1) == 0)
    {
      sub_1000BCD2C(a1);
    }
  }

  v70 = (a1 + 4096);
  if (!v64 || !*(a1 + 3513))
  {
    if (v64)
    {
      goto LABEL_108;
    }

    v78 = (a1 + 4096);
    v79 = 0;
    v80 = v9 == 1008;
    goto LABEL_147;
  }

  v71 = sub_10000A878(v64);
  v72 = sub_10000A878(a3);
  if (CFEqual(v71, v72))
  {
    v73 = sub_10000A540(a3, @"JOINING_FROM_UI");
    if (v9 == 1008 || v73 == kCFBooleanTrue)
    {
      *&v209 = 0;
      *(&v209 + 1) = &v209;
      *&v210 = 0x2020000000;
      if (a2)
      {
        v74 = CFRetain(a2);
      }

      else
      {
        v74 = 0;
      }

      *(&v210 + 1) = v74;
      valuePtr = 0;
      p_valuePtr = &valuePtr;
      v226 = 0x2020000000;
      v227 = CFRetain(v64);
      v85 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: user preferred cellular-outranked WiFi: %@", "WiFiDeviceManagerAssociateAsync", sub_10000A878(a3)}];
      }

      objc_autoreleasePoolPop(v85);
      [*(a1 + 7480) addFaultEvent:20 forInterface:a2];
      sub_100065678(*(a1 + 64), *(*(&v209 + 1) + 24), 1);
      if (*(a1 + 240))
      {
        CFRetain(a1);
        if (a2)
        {
          CFRetain(a2);
        }

        v86 = *(a1 + 240);
        v223[0] = _NSConcreteStackBlock;
        v223[1] = 3221225472;
        v223[2] = sub_1000CBE74;
        v223[3] = &unk_1002616B8;
        v223[4] = &valuePtr;
        v223[5] = &v209;
        v223[6] = a1;
        v223[7] = a6;
        v223[8] = a7;
        dispatch_async(v86, v223);
      }

      else
      {
        v87 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: null queue.", "WiFiDeviceManagerAssociateAsync"}];
        }

        objc_autoreleasePoolPop(v87);
      }

      v88 = p_valuePtr[3];
      if (v88 && *(*(&v209 + 1) + 24) && *(a1 + 4152))
      {
        sub_10000AD34(v88, @"WiFiNetworkIsAutoJoined", kCFBooleanFalse);
        sub_1000A0170(p_valuePtr[3], 1, +[NSDate date]);
        if (*(a1 + 240))
        {
          CFRetain(a1);
          CFRetain(p_valuePtr[3]);
          v89 = *(*(&v209 + 1) + 24);
          if (v89)
          {
            CFRetain(v89);
          }

          v90 = *(a1 + 240);
          v222[0] = _NSConcreteStackBlock;
          v222[1] = 3221225472;
          v222[2] = sub_1000CBF0C;
          v222[3] = &unk_1002616E0;
          v222[6] = a1;
          v222[4] = &valuePtr;
          v222[5] = &v209;
          dispatch_async(v90, v222);
        }

        else
        {
          v125 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s: null queue.", "WiFiDeviceManagerAssociateAsync"}];
          }

          objc_autoreleasePoolPop(v125);
        }
      }

      v126 = p_valuePtr[3];
      if (v126)
      {
        CFRelease(v126);
      }

      v127 = *(*(&v209 + 1) + 24);
      if (v127)
      {
        CFRelease(v127);
      }

      _Block_object_dispose(&valuePtr, 8);
      _Block_object_dispose(&v209, 8);
      return 0;
    }
  }

LABEL_108:
  v75 = sub_10000A878(v64);
  v76 = sub_10000A878(a3);
  if (!CFEqual(v75, v76) || !sub_100009730(a3) && !sub_10000A7CC(a3))
  {
    v78 = (a1 + 4096);
    v79 = 0;
    v80 = v9 == 1008;
    if (v9 == 1008 || v9 == 1011)
    {
      v82 = sub_10000A878(v64);
      v83 = sub_10000A878(a3);
      if (CFEqual(v82, v83))
      {
        v79 = 0;
      }

      else
      {
        v91 = sub_100060E90(*(a1 + 64));
        v189 = sub_1000333E8(a3, @"RSSI");
        v92 = objc_autoreleasePoolPush();
        v93 = off_100298C40;
        if (off_100298C40)
        {
          context = v92;
          v176 = sub_10000A878(a3);
          v170 = sub_10000A878(v64);
          v172 = v91;
          v168 = v189;
          [v93 WFLog:3 message:{"%s: user switching to %@(%d), leaving %@(%d) ", "WiFiDeviceManagerAssociateAsync", v176}];
          v92 = context;
        }

        objc_autoreleasePoolPop(v92);
        v79 = v91 > *(a1 + 128);
      }
    }

LABEL_147:
    v94 = v9 == 1035 || v80;
    v70 = v78;
    if (a3 && v94 && v78[1171] && v78[1170] == -v78[1169])
    {
      LODWORD(valuePtr) = 0;
      v95 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: MIS state is enabled. Force-disabling before association type (%d).", "WiFiDeviceManagerAssociateAsync", v9}];
      }

      objc_autoreleasePoolPop(v95);
      v220 = 0;
      v218 = 0u;
      v219 = 0u;
      v216 = 0u;
      v217 = 0u;
      v214 = 0u;
      v215 = 0u;
      v212 = 0u;
      v213 = 0u;
      v210 = 0u;
      v211 = 0u;
      v209 = 0u;
      DWORD2(v209) = 6;
      LODWORD(v216) = 6;
      *(&v216 + 1) = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@", @"Network Transition");
      sub_1000C67C8(a1, &v209);
      sub_1000C60E0(a1, 0, 1, 0, &valuePtr);
    }

    if (*(a1 + 7480))
    {
      v207[0] = _NSConcreteStackBlock;
      v207[1] = 3221225472;
      v207[2] = sub_1000CC07C;
      v207[3] = &unk_100261670;
      v207[4] = a1;
      v208 = v9;
      sub_1000C4084(a1, v64, v207);
    }

    goto LABEL_159;
  }

  if (sub_10000A7CC(v64) && sub_10000A540(a3, @"JOINING_FROM_UI"))
  {
    if (*(a1 + 240))
    {
      *&v209 = 0;
      *(&v209 + 1) = &v209;
      *&v210 = 0x2020000000;
      if (a2)
      {
        v77 = CFRetain(a2);
      }

      else
      {
        v77 = 0;
      }

      *(&v210 + 1) = v77;
      valuePtr = 0;
      p_valuePtr = &valuePtr;
      v226 = 0x2020000000;
      v227 = CFRetain(v64);
      CFRetain(a1);
      v121 = *(a1 + 240);
      v221[0] = _NSConcreteStackBlock;
      v221[1] = 3221225472;
      v221[2] = sub_1000CBFA0;
      v221[3] = &unk_1002616B8;
      v221[4] = &valuePtr;
      v221[5] = &v209;
      v221[6] = a1;
      v221[7] = a6;
      v221[8] = a7;
      dispatch_async(v121, v221);
      _Block_object_dispose(&valuePtr, 8);
      _Block_object_dispose(&v209, 8);
    }

    else
    {
      v111 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: null queue.", "WiFiDeviceManagerAssociateAsync"}];
      }

      objc_autoreleasePoolPop(v111);
    }

    sub_1000BFD00(a1, 0, 0, 0);
    v122 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: joining from UI. Setting interface rank kSCNetworkServicePrimaryRankDefault", "WiFiDeviceManagerAssociateAsync"}];
    }

    objc_autoreleasePoolPop(v122);
    sub_1000C007C(a1, v64);
    return 0;
  }

  v84 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Same SSID %@ and EAP network. Skip disassociation.", sub_10000A878(v64)}];
  }

  objc_autoreleasePoolPop(v84);
  v79 = 0;
LABEL_159:
  if (v9 != 1018)
  {
    ++*(a1 + 3520);
    v96 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: did increment user join counter (%d)", "WiFiDeviceManagerAssociateAsync", *(a1 + 3520)}];
    }

    objc_autoreleasePoolPop(v96);
  }

  if (!v64)
  {
    v99 = a3 != 0;
    goto LABEL_168;
  }

  sub_100062664(*(a1 + 64), v9);
  if (a3)
  {
    v97 = sub_10000A878(v64);
    v98 = sub_10000A878(a3);
    if (!CFEqual(v97, v98) && *(a1 + 4792))
    {
      if (*(a1 + 240))
      {
        *&v209 = 0;
        *(&v209 + 1) = &v209;
        v210 = 0x2020000000uLL;
        valuePtr = 0;
        p_valuePtr = &valuePtr;
        v226 = 0x2020000000;
        v108 = CFAbsoluteTimeGetCurrent();
        v227 = CFDateCreate(kCFAllocatorDefault, v108);
        v109 = CFRetain(v64);
        *(*(&v209 + 1) + 24) = v109;
        CFRetain(a1);
        v110 = *(a1 + 240);
        v206[0] = _NSConcreteStackBlock;
        v206[1] = 3221225472;
        v206[2] = sub_1000CC0F4;
        v206[3] = &unk_1002616E0;
        v206[4] = &v209;
        v206[5] = &valuePtr;
        v206[6] = a1;
        dispatch_async(v110, v206);
        _Block_object_dispose(&valuePtr, 8);
        _Block_object_dispose(&v209, 8);
      }

      else
      {
        v123 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: null queue.", "WiFiDeviceManagerAssociateAsync"}];
        }

        objc_autoreleasePoolPop(v123);
      }
    }

    v99 = 1;
LABEL_168:
    LODWORD(v189) = v99;
  }

  else
  {
    LODWORD(v189) = 0;
  }

  v100 = malloc_type_malloc(0x38uLL, 0x10E00402A548A24uLL);
  *(v100 + 24) = 0u;
  *(v100 + 40) = 0u;
  *v100 = a1;
  *(v100 + 1) = a6;
  *(v100 + 2) = a7;
  *(v100 + 8) = v9;
  *(v100 + 9) = HIDWORD(v194);
  if (v79)
  {
    *(v100 + 3) = v64;
    CFRetain(v64);
  }

  v101 = *(a1 + 3936);
  if (v101)
  {
    v101(a1, a2, a3, 0, 0, *(a1 + 3944));
  }

  sub_1000C0314(a1);
  v184 = a2;
  v192 = v70;
  if (a3)
  {
    v102 = objc_autoreleasePoolPush();
    if (v178)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Association client is %@", "__WiFiDeviceManagerIsNetworkAutoJoinDelayed", v178}];
      }

      objc_autoreleasePoolPop(v102);
      if (CFStringCompare(v178, @"Preferences", 0) == kCFCompareEqualTo)
      {
        if (!v70[1171] && !*(a1 + 5392) && v70[1313] == -v70[1312] || v70[3056] && sub_1000C7464(a1, 1))
        {
          v103 = CFAbsoluteTimeGetCurrent();
          if (v103 - *(a1 + 3480) >= 10.0 && v103 - *(a1 + 3504) >= 30.0)
          {
            v104 = *(a1 + 3408);
            if (v104 <= 6 && ((1 << v104) & 0x58) != 0)
            {
              sub_10019E0E8((a1 + 3408));
            }

            else
            {
              v229.length = CFArrayGetCount(*(a1 + 3576));
              v229.location = 0;
              FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(a1 + 3576), v229, a3);
              if (FirstIndexOfValue != -1)
              {
                v106 = FirstIndexOfValue;
                v107 = (a1 + 3576);
                goto LABEL_199;
              }

              v230.length = CFArrayGetCount(*(a1 + 3584));
              v230.location = 0;
              v112 = CFArrayGetFirstIndexOfValue(*(a1 + 3584), v230, a3);
              if (v112 != -1)
              {
                v106 = v112;
                v107 = (a1 + 3584);
LABEL_199:
                v113 = CFArrayGetValueAtIndex(*v107, v106);
                if (v113)
                {
                  v114 = v113;
                  sub_10000C5C0(v113, a3);
                  if (sub_10001CF90(v114))
                  {
                    if (sub_10000A604(v114) || !sub_10009E83C(v114) || sub_10000A540(v114, @"HotspotDeviceIdentifier"))
                    {
                      sub_10019E158(v114);
                    }

                    else if (sub_10001CBF8(v114))
                    {
                      sub_10019E1C8(v114);
                    }

                    else if (sub_10000D9C8(v114))
                    {
                      sub_10019E238(v114);
                    }

                    else
                    {
                      v115 = sub_1000E0A04(a1, v114, 0);
                      v116 = objc_autoreleasePoolPush();
                      v117 = v116;
                      if (v115)
                      {
                        v118 = sub_10001A9BC(a3);
                        if ([*(a1 + 6720) isNetworkDenyListedForAutoJoinDueToTrigDisc:v118 RSSI:0 timestamp:0])
                        {
                          v119 = objc_autoreleasePoolPush();
                          if (off_100298C40)
                          {
                            [off_100298C40 WFLog:3 message:{"%s: joining weak/trigger-disconnected network at %d, not considering for slow auto-join", "__WiFiDeviceManagerIsNetworkAutoJoinDelayed", sub_100034EEC(a3, @"RSSI"}];
                          }

                          goto LABEL_213;
                        }

                        if ([*(a1 + 3704) canDeferNetwork:v114 withUsageRank:sub_1000A23AC(v114) andMotionState:*(a1 + 3408)])
                        {
                          a6 = v117;
                          v119 = objc_autoreleasePoolPush();
                          if (off_100298C40)
                          {
                            [off_100298C40 WFLog:3 message:{"%s: not considering deferrable network %@ for delayed auto-join", "__WiFiDeviceManagerIsNetworkAutoJoinDelayed", sub_10000A878(v114)}];
                          }

LABEL_213:
                          objc_autoreleasePoolPop(v119);
                          v120 = 1;
                        }

                        else
                        {
                          v120 = 0;
                        }

                        objc_autoreleasePoolPop(v117);

                        if (!v64 && (v120 & 1) == 0)
                        {
                          dword_100298C90 |= 0x200000u;
                          if (*(a1 + 240))
                          {
                            CFRetain(a1);
                            v124 = *(a1 + 240);
                            v205[0] = _NSConcreteStackBlock;
                            v205[1] = 3221225472;
                            v205[2] = sub_1000CC1D4;
                            v205[3] = &unk_10025EAD8;
                            v205[4] = a1;
                            dispatch_async(v124, v205);
                          }

                          else
                          {
                            v128 = objc_autoreleasePoolPush();
                            if (off_100298C40)
                            {
                              [off_100298C40 WFLog:4 message:{"%s: null queue.", "WiFiDeviceManagerAssociateAsync"}];
                            }

                            objc_autoreleasePoolPop(v128);
                          }

                          v129 = *(a1 + 7480);
                          if (v129)
                          {
                            [v129 addFaultEvent:12 forInterface:sub_100009664(*(a1 + 64))];
                          }
                        }
                      }

                      else
                      {
                        sub_10019E2A8(v116, v114);
                      }
                    }
                  }

                  else
                  {
                    sub_10019E368();
                  }
                }
              }
            }
          }
        }

        else
        {
          sub_10019E308();
        }
      }
    }

    else
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: client is NULL!", "__WiFiDeviceManagerIsNetworkAutoJoinDelayed"}];
      }

      objc_autoreleasePoolPop(v102);
    }
  }

  else
  {
    sub_10019E088();
  }

  *(a1 + 3516) = 0;
  v130 = sub_10000A540(a3, @"TransitionDisabledFlags");
  if (v130)
  {
    CFNumberGetValue(v130, kCFNumberSInt32Type, (a1 + 3516));
  }

  v131 = sub_10001B368(a3);
  v132 = sub_10001A904(a1);
  if (CWFKnownNetworkAssociatedDuringAWDLRealTimeMode())
  {
    v133 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Applying APPLE80211_ASSOC_F_PREFER_NON_6GHZ because AWDL real time mode was recently active while associated to this known network (%@)", "WiFiDeviceManagerAssociateAsync", v131}];
    }

    objc_autoreleasePoolPop(v133);
    v134 = sub_100034EEC(a3, @"ASSOC_FLAGS");
    sub_10000C614(a3, @"ASSOC_FLAGS", v134 & 0xFFFEFFFF | 0x10000);
  }

  if (_os_feature_enabled_impl())
  {
    if (sub_10000A9DC(*(a1 + 64)))
    {
      v135 = sub_100034EEC(a3, @"ASSOC_FLAGS");
      if ((v135 & 0x100000) == 0)
      {
        v136 = *(a1 + 64);
        v137 = sub_10014FED8();
        if (v189 && CWFScanResultHas6GHzOnlyBSS())
        {
          v138 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: Applying APPLE80211_ASSOC_F_6GHZ_ONLY because network has 6GHz-only BSS (%@)", "WiFiDeviceManagerAssociateAsync", a3}];
          }

          objc_autoreleasePoolPop(v138);
          sub_10000C614(a3, @"ASSOC_FLAGS", v135 & 0xFFEFFFFF | 0x100000);
          v139 = sub_10001B368(a3);
          [v139 setWas6GHzOnlyAt:{+[NSDate date](NSDate, "date")}];
          v140 = sub_100022854(v139, 0);
          sub_10000AD34(v140, @"Standalone", 0);
          if (v140)
          {
            sub_10009D854(a3, v140);
            CFRelease(v140);
          }
        }

        else if ([v131 wasRecently6GHzOnlyOnAnyDevice])
        {
          v141 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: Applying APPLE80211_ASSOC_F_6GHZ_ONLY because known network was recently determined to be 6GHz-only (%@)", "WiFiDeviceManagerAssociateAsync", a3}];
          }

          objc_autoreleasePoolPop(v141);
          sub_10000C614(a3, @"ASSOC_FLAGS", v135 & 0xFFEFFFFF | 0x100000);
        }

        if (v137)
        {
          CFRelease(v137);
        }
      }
    }
  }

  if (sub_1000612C4(*(a1 + 64)) && sub_10009EBA0(a3))
  {
    v142 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Applying APPLE80211_ASSOC_F_BEACON_PROTECTION because network is capable (%@)", "WiFiDeviceManagerAssociateAsync", a3}];
    }

    objc_autoreleasePoolPop(v142);
    v143 = sub_100034EEC(a3, @"ASSOC_FLAGS");
    sub_10000C614(a3, @"ASSOC_FLAGS", v143 & 0xFFFF7FFF | 0x8000);
  }

  if (sub_1000612E8(*(a1 + 64)))
  {
    v144 = sub_10009EBD4(a3);
    v145 = objc_autoreleasePoolPush();
    if (v144)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Applying APPLE80211_ASSOC_F_SAE_PK because network is capable (%@)", "WiFiDeviceManagerAssociateAsync", a3}];
      }

      objc_autoreleasePoolPop(v145);
      v146 = sub_100034EEC(a3, @"ASSOC_FLAGS");
      sub_10000C614(a3, @"ASSOC_FLAGS", v146 & 0xFFFBFFFF | 0x40000);
      v147 = sub_100034EEC(a3, @"WSEC_FLAGS");
      v148 = sub_10009EBE4(a3);
      v145 = objc_autoreleasePoolPush();
      if (v148)
      {
        v149 = v147 | 0x20000;
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Applying APPLE80211_ASSOC_F_SAE_PK_RESTRICT mode network is capable (%@)", "WiFiDeviceManagerAssociateAsync", a3}];
        }
      }

      else
      {
        v149 = v147 | 0x10000;
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Applying APPLE80211_ASSOC_F_SAE_PK_ENABLE because network is capable (%@)", "WiFiDeviceManagerAssociateAsync", a3}];
        }
      }
    }

    else
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Applying APPLE80211_ASSOC_F_SAE_PK_DISABLE mode network is incapable (%@)", "WiFiDeviceManagerAssociateAsync", a3}];
      }

      v149 = 0;
    }

    objc_autoreleasePoolPop(v145);
    sub_10000C614(a3, @"WSEC_FLAGS", v149);
  }

  if (sub_1000612DC(*(a1 + 64)) && sub_100174A1C(a3))
  {
    v150 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Applying APPLE80211_ASSOC_F_OCV because network is capable (%@)", "WiFiDeviceManagerAssociateAsync", a3}];
    }

    objc_autoreleasePoolPop(v150);
    v151 = sub_100034EEC(a3, @"ASSOC_FLAGS");
    sub_10000C614(a3, @"ASSOC_FLAGS", v151 & 0xFFFDFFFF | 0x20000);
  }

  *(a1 + 3504) = CFAbsoluteTimeGetCurrent();
  [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
  if (v192[1171] || v192[1313] != -v192[1312])
  {
    *(a1 + 6412) = 1;
  }

  if (sub_10000A540(a3, @"COLOCATED_NETWORK_SCOPE_ID"))
  {
    v152 = 1;
  }

  else
  {
    sub_1000C90B4(a1);
    sub_10000AD34(a3, @"COLOCATED_NETWORK_SCOPE_ID", *(a1 + 3904));
    v152 = 0;
  }

  v100[48] = v152;
  sub_1000CC2F4(a1, a3);
  v153 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Join with colocated scopeID (%@), network (%@)", sub_10000A540(a3, @"COLOCATED_NETWORK_SCOPE_ID", a3}];
  }

  objc_autoreleasePoolPop(v153);
  v154 = *(a1 + 64);
  v155 = [NSString stringWithFormat:@"%@/%p"];
  sub_10001D70C(v154, 0, v155, 10, v156, v157, v158, v159, @"UserJoin", v100, v168, v170, v172, v174, HIDWORD(v174), v176, v178, context, v182, v184, v187, v189, v192, v194, a6, (v100 + 24), v201);
  v18 = sub_100061A24(*(a1 + 64), v185, a3, v188, sub_1000CC4F0, v100, SHIDWORD(v195));
  if (v18)
  {
    v160 = *(a1 + 64);
    v161 = [NSString stringWithFormat:@"%@/%p"];
    sub_10001D70C(v160, 0, v161, 0, v162, v163, v164, v165, @"UserJoin", v100, v169, v171, v173, v175, HIDWORD(v175), v177, v179, contexta, v183, v185, v188, v190, v193, v195, v197, v199, v202);
    if (v203 != 1018)
    {
      --*(a1 + 3520);
      v166 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: did decrement user join counter (%d)", "WiFiDeviceManagerAssociateAsync", *(a1 + 3520)}];
      }

      objc_autoreleasePoolPop(v166);
    }

    [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
    if (*v200)
    {
      CFRelease(*v200);
      *v200 = 0;
    }

    free(v100);
  }

  else
  {
    sub_1000CD0F8(a1, a3);
    sub_1000BBAE0(a1, 1, 1);
    if (*(a1 + 7480))
    {
      v204[0] = _NSConcreteStackBlock;
      v204[1] = 3221225472;
      v204[2] = sub_1000CD390;
      v204[3] = &unk_100261720;
      v204[4] = a1;
      v204[5] = v183;
      sub_1000C4084(a1, a3, v204);
    }
  }

  if (v64)
  {
    CFRelease(v64);
  }

  return v18;
}

void sub_1000CBBA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose((v51 - 200), 8);
  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CBBE4(const void *a1)
{
  result = sub_100009730(a1);
  if (!result)
  {
    return result;
  }

  result = sub_10000A540(a1, @"ShareableEAPConfig");
  if (!result)
  {
    return result;
  }

  if (sub_10000A540(a1, @"ShareableEAPTrustExceptions"))
  {
    sub_10000A878(a1);
    EAPTLSSetTrustExceptionBindings();
  }

  else
  {
    sub_10019E37C(a1);
  }

  if (!sub_1000F4200())
  {
    sub_10019E4D4();
    return 0;
  }

  v3 = sub_10000A540(a1, @"ShareableEAPConfig");
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v4 = off_100298698;
  v13 = off_100298698;
  if (!off_100298698)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000F4330;
    v9[3] = &unk_1002608E0;
    v9[4] = &v10;
    sub_1000F4330(v9);
    v4 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v4)
  {
    sub_10019E468();
  }

  v5 = v4(v3);
  if (!v5)
  {
    sub_10019E3F8(a1);
    return 0;
  }

  v6 = v5;
  Default = CFAllocatorGetDefault();
  MutableCopy = CFDictionaryCreateMutableCopy(Default, 0, v6);
  CFDictionarySetValue(MutableCopy, @"EAPClientConfiguration", v6);
  CFDictionarySetValue(MutableCopy, @"EnableUserInterface", kCFBooleanFalse);
  sub_10000AD34(a1, @"EnterpriseProfile", MutableCopy);
  sub_10000AD34(a1, @"ShareableEAPConfig", 0);
  sub_10000AD34(a1, @"ShareableEAPTrustExceptions", 0);
  CFRelease(v6);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return 1;
}

void sub_1000CBDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000CBE04(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[30])
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 56);
    (*(a1 + 48))();
    v2 = *(a1 + 32);
  }

  CFRelease(v2);
  v5 = *(a1 + 40);
  if (v5)
  {

    CFRelease(v5);
  }
}

void sub_1000CBE74(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2[30])
  {
    v3 = *(*(*(a1 + 40) + 8) + 24);
    v4 = *(*(*(a1 + 32) + 8) + 24);
    v5 = *(a1 + 64);
    (*(a1 + 56))();
    v2 = *(a1 + 48);
  }

  CFRelease(v2);
  v6 = *(*(*(a1 + 32) + 8) + 24);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(*(*(a1 + 40) + 8) + 24);
  if (v7)
  {

    CFRelease(v7);
  }
}

void sub_1000CBF0C(void *a1)
{
  v2 = a1[6];
  if (*(v2 + 240))
  {
    (*(v2 + 4152))(v2, *(*(a1[5] + 8) + 24), *(v2 + 4160), *(*(a1[4] + 8) + 24));
    v2 = a1[6];
  }

  CFRelease(v2);
  v3 = *(*(a1[4] + 8) + 24);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(*(a1[5] + 8) + 24);
  if (v4)
  {

    CFRelease(v4);
  }
}

void sub_1000CBFA0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2[30])
  {
    v3 = a1 + 40;
    v4 = *(*(*(a1 + 40) + 8) + 24);
    v5 = *(*(*(a1 + 32) + 8) + 24);
    v6 = *(a1 + 64);
    (*(a1 + 56))();
    CFRetain(*(a1 + 48));
    v7 = *(*(*(a1 + 32) + 8) + 24);
    if (v7)
    {
      CFRelease(v7);
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }

    v8 = *(*(*v3 + 8) + 24);
    if (!v8)
    {
      return;
    }

LABEL_10:
    CFRelease(v8);
    *(*(*v3 + 8) + 24) = 0;
    return;
  }

  CFRelease(v2);
  v9 = *(*(*(a1 + 32) + 8) + 24);
  if (v9)
  {
    CFRelease(v9);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  v11 = *(a1 + 40);
  v10 = a1 + 40;
  v8 = *(*(v11 + 8) + 24);
  if (v8)
  {
    v3 = v10;
    goto LABEL_10;
  }
}

void sub_1000CC07C(uint64_t a1, void *a2)
{
  if (a2)
  {
    [*(*(a1 + 32) + 7480) setJoinEvent:0 withReason:0 lastDisconnectReason:*(a1 + 40) lastJoinFailure:0 andNetworkDetails:a2 forInterface:sub_100006F88(*(*(a1 + 32) + 64))];
  }
}

void sub_1000CC0F4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(v2 + 240))
  {
    v3 = a1 + 40;
    (*(v2 + 4792))(v2, *(*(*(a1 + 32) + 8) + 24), @"LinkDownTimestamp", *(*(*(a1 + 40) + 8) + 24), *(v2 + 4800));
    CFRelease(*(a1 + 48));
    v4 = *(*(*(a1 + 32) + 8) + 24);
    if (v4)
    {
      CFRelease(v4);
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }

    v5 = *(*(*v3 + 8) + 24);
    if (!v5)
    {
      return;
    }

LABEL_10:
    CFRelease(v5);
    *(*(*v3 + 8) + 24) = 0;
    return;
  }

  CFRelease(v2);
  v6 = *(*(*(a1 + 32) + 8) + 24);
  if (v6)
  {
    CFRelease(v6);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  v8 = *(a1 + 40);
  v7 = a1 + 40;
  v5 = *(*(v8 + 8) + 24);
  if (v5)
  {
    v3 = v7;
    goto LABEL_10;
  }
}

void sub_1000CC1D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 240))
  {
    if (*(v1 + 6344))
    {
      v3 = *(v1 + 4616);
      v4 = objc_autoreleasePoolPush();
      if (v3)
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: __WiFiDeviceManagerDelayedAutoJoinNotification", "__WiFiDeviceManagerDelayedAutoJoinNotification"}];
        }

        objc_autoreleasePoolPop(v4);
        (*(v1 + 4616))(v1, 3, 0, *(v1 + 4624));
      }

      else
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: softErrorManagerService callback is NULL!", "__WiFiDeviceManagerDelayedAutoJoinNotification"}];
        }

        objc_autoreleasePoolPop(v4);
      }
    }

    else
    {
      sub_10019E540();
    }

    v5 = *(a1 + 32);
  }

  else
  {
    v5 = *(a1 + 32);
  }

  CFRelease(v5);
}

NSDictionary *__cdecl sub_1000CC2C8(id a1, id a2)
{
  v2 = sub_100017C00(a2);

  return v2;
}

void sub_1000CC2F4(uint64_t a1, const void *a2)
{
  v4 = sub_1000657F4(*(a1 + 64));
  if (a2 && v4)
  {
    v5 = sub_10000A540(a2, @"COLOCATED_NETWORK_SCOPE_ID");
    if (v5)
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"[NWTRANSIT]: %s: Assign ScopeID for %@", "__WiFiDeviceManagerAssignColocatedGroupScopeID", sub_10000A878(a2)}];
      }

      objc_autoreleasePoolPop(v6);
    }

    v7 = *(a1 + 3784);
    if (v7)
    {
      Count = CFArrayGetCount(v7);
    }

    else
    {
      Count = 0;
    }

    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"[NWTRANSIT]: %s: Colocated Network Count = %ld ", "__WiFiDeviceManagerAssignColocatedGroupScopeID", Count}];
    }

    objc_autoreleasePoolPop(v9);
    if (v5 || (v10 = *(a1 + 3800)) == 0)
    {
      if (!v5)
      {
        v11 = [+[NSUUID UUID](NSUUID UUIDString];
        if (!v11)
        {
          return;
        }

        v5 = v11;
        sub_10000AD34(a2, @"COLOCATED_NETWORK_SCOPE_ID", v11);
        v12 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"[NWTRANSIT]: %s: Configured ColocatedScopeId for %@ - '%@'", "__WiFiDeviceManagerAssignColocatedGroupScopeID", sub_10000A878(a2), v5}];
        }

        objc_autoreleasePoolPop(v12);
        *(a1 + 3800) = [[NSString alloc] initWithString:v5];
      }
    }

    else
    {
      sub_10000AD34(a2, @"COLOCATED_NETWORK_SCOPE_ID", *(a1 + 3800));
      v5 = v10;
    }

    if (*(a1 + 3792) == 1 && sub_1000DD064(a1, a2) && Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 3784), i);
        if (ValueAtIndex)
        {
          sub_10000AD34(ValueAtIndex, @"COLOCATED_NETWORK_SCOPE_ID", v5);
        }
      }
    }
  }
}

void sub_1000CC4F0(uint64_t a1, __CFString *a2, void *a3, const void *a4, uint64_t a5, unsigned int *a6)
{
  context = objc_autoreleasePoolPush();
  v11 = *a6;
  if (a6[9] == 1)
  {
    --*(v11 + 3520);
    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: did decrement user join counter (%d)", "__WiFiDeviceManagerClientAssociateCallback", *(v11 + 3520)}];
    }

    objc_autoreleasePoolPop(v12);
  }

  v13 = *(v11 + 64);
  v14 = [NSString stringWithFormat:@"%@/%p", @"UserJoin"];
  sub_10001D70C(v13, 0, v14, 0, v15, v16, v17, v18, v91, a6, v94, v96, cf, value, HIDWORD(value), context, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
  v19 = &OBJC_IVAR___WiFiUserInteractionMonitorNetworkAgent_active;
  [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
  if (!a5)
  {
    v20 = a3 != 0;
    if (!a3)
    {
LABEL_78:
      sub_1000BBAE0(v11, 1, 1);
      sub_1000E2164(v11, a3);
      goto LABEL_79;
    }

    LODWORD(valuea) = 1;
    v27 = sub_10001A9BC(a3);
    [*(v11 + 6720) removeNetworkDenyListInfoWithReason:1 forScanResult:v27];
    [*(v11 + 6720) removeNetworkDenyListInfoForTrigger:0 forNetwork:v27];

    sub_100193574(v11, a3, 0);
    v28 = objc_autoreleasePoolPush();
    v29 = off_100298C40;
    if (off_100298C40)
    {
      v93 = sub_10000A878(a3);
      v95 = a6[8];
      v92 = "__WiFiDeviceManagerClientAssociateCallback";
      [v29 WFLog:3 message:{"%s: joined %@, reason type %d"}];
    }

    objc_autoreleasePoolPop(v28);
    sub_1000E1594(v11, a3, 0);
    if (_os_feature_enabled_impl())
    {
      v30 = sub_10000A878(a3);
      if (v30)
      {
        [*(v11 + 9008) removeObjectForKey:v30];
      }
    }

    v31 = *(v11 + 3488);
    if (v31)
    {
      CFRelease(v31);
      *(v11 + 3488) = 0;
    }

    v33 = (a6 + 6);
    v32 = *(a6 + 3);
    if (v32)
    {
      CFRetain(v32);
      *(v11 + 3469) = 1;
      *(v11 + 3488) = *v33;
      *(v11 + 3448) = -1;
      if (_os_feature_enabled_impl())
      {
        v97 = a4;
        v34 = *v33;
        if (*v33)
        {
          v35 = sub_10000A540(a3, @"addedAt");
          v36 = sub_10000A540(v34, @"addedAt");
          if (v35)
          {
            if (v36 && *(v11 + 4584))
            {
              v37 = sub_100176938(a3);
              v38 = sub_10000A878(a3);
              if (v37)
              {
                v93 = v37;
                v39 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"'%@' (%@)", v38);
              }

              else
              {
                v39 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"'%@'", v38);
              }

              cfa = v39;
              if (v39)
              {
                v40 = sub_100176938(v34);
                v41 = sub_10000A878(v34);
                if (v40)
                {
                  v42 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"'%@' (%@)", v41, v40);
                }

                else
                {
                  v42 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"'%@'", v41, v93);
                }

                v43 = v42;
                if (v42)
                {
                  Current = CFAbsoluteTimeGetCurrent();
                  v45 = CFDateCreate(kCFAllocatorDefault, Current);
                  if (v45)
                  {
                    v46 = v45;
                    v47 = objc_autoreleasePoolPush();
                    if (off_100298C40)
                    {
                      v93 = cfa;
                      v95 = v43;
                      v92 = "__WiFiDeviceManagerUpdateNetworkUserPriority";
                      [off_100298C40 WFLog:3 message:"%s: setting user-defined network priority %@ as more-preferred than previous network %@"];
                    }

                    objc_autoreleasePoolPop(v47);
                    sub_100178268(v34, a3, v46);
                    sub_1000C5B3C(v11, v34);
                    CFRelease(v46);
                  }

                  CFRelease(cfa);
                }

                else
                {
                  v43 = cfa;
                }

                CFRelease(v43);
              }
            }
          }
        }

        v48 = sub_10000A878(*v33);
        a4 = v97;
        v19 = &OBJC_IVAR___WiFiUserInteractionMonitorNetworkAgent_active;
        if (v48)
        {
          [*(v11 + 9008) removeObjectForKey:v48];
        }
      }
    }

    v49 = CFAbsoluteTimeGetCurrent();
    v50 = CFDateCreate(kCFAllocatorDefault, v49);
    if (v50 && a6[8] != 1035)
    {
      sub_1000A0170(a3, 1, v50);
    }

    if (!_os_feature_enabled_impl())
    {
      goto LABEL_48;
    }

    v51 = sub_10001A904(v11);
    if (v51)
    {
      v52 = v51;
      cfa = a2;
      v53 = a4;
      v54 = *(v11 + 6872);
      [v51 coordinate];
      [v52 coordinate];
      [v52 horizontalAccuracy];
      [v52 timestamp];
      a4 = v53;
      sub_100160178();
    }

    v19 = &OBJC_IVAR___WiFiUserInteractionMonitorNetworkAgent_active;
    if (v50 && *(v11 + 3470))
    {
      sub_100175658(a3, v50);
    }

    else
    {
LABEL_48:
      if (!v50)
      {
LABEL_50:
        if (*(v11 + 3468))
        {
          v56 = objc_autoreleasePoolPush();
          v57 = off_100298C40;
          if (off_100298C40)
          {
            v92 = "__WiFiDeviceManagerClientAssociateCallback";
            v93 = sub_10000A878(a3);
            [v57 WFLog:3 message:"%s: tagging network %@ as moving"];
          }

          objc_autoreleasePoolPop(v56);
          v55 = &kCFBooleanTrue;
          v19 = &OBJC_IVAR___WiFiUserInteractionMonitorNetworkAgent_active;
        }

        else
        {
          v55 = &kCFBooleanFalse;
        }

        sub_10000AD34(a3, @"WiFiNetworkAttributeIsMoving", *v55);
        sub_1000E30B4(v11, a3, *(v11 + 3516), 0);
        v58 = sub_100007D90(v11, a2, 1);
        if (v58)
        {
          v59 = v58;
          if (*(v11 + 3516))
          {
            sub_10000AD34(v58, @"TransitionDisabledFlags", [NSNumber numberWithUnsignedInt:?]);
          }

          sub_1000BFC58(v11, v59);
          sub_100174EB4(a3, v59, v60, v61, v62, v63, v64, v65, v92, v93, v95, v97, cfa, valuea, contexta, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
          CFRelease(v59);
        }

        else
        {
          sub_1000BFC58(v11, a3);
        }

        v66 = a6[8];
        if (v66 == 1011 || v66 == 1008)
        {
          *(v11 + 3469) = 1;
        }

        if (*(v11 + 3968))
        {
          if (*(v11 + 240))
          {
            if (a2)
            {
              CFRetain(a2);
            }

            CFRetain(a3);
            if (a4)
            {
              CFRetain(a4);
            }

            CFRetain(v11);
            v68 = *(v11 + 240);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1000ED8D4;
            block[3] = &unk_10025F5B0;
            block[4] = v11;
            block[5] = a2;
            block[6] = a3;
            block[7] = a4;
            v128 = 0;
            dispatch_async(v68, block);
          }

          else
          {
            v67 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              v92 = "__WiFiDeviceManagerClientAssociateCallback";
              [off_100298C40 WFLog:4 message:"%s: null queue."];
            }

            objc_autoreleasePoolPop(v67);
          }
        }

        if (*(v11 + 3920))
        {
          if (*(v11 + 240))
          {
            v123 = 0;
            v124 = &v123;
            v125 = 0x2020000000;
            v126 = 0;
            v69 = CFRetain(a3);
            v124[3] = v69;
            CFRetain(v11);
            sub_10019E60C((v11 + 240), &v122, v11, &v123);
          }

          else
          {
            sub_10019E5AC();
          }
        }

        sub_10019E66C();
        v20 = valuea;
        goto LABEL_78;
      }
    }

    CFRelease(v50);
    goto LABEL_50;
  }

  if (*(v11 + 7480))
  {
    v129[0] = _NSConcreteStackBlock;
    v129[1] = 3221225472;
    v129[2] = sub_1000ED85C;
    v129[3] = &unk_100261670;
    v129[4] = v11;
    v130 = a5;
    sub_1000C4084(v11, a3, v129);
  }

  v20 = a3 != 0;
  sub_1000D23FC(v11, a3, 0);
  sub_1000BBAE0(v11, 1, 0);
LABEL_79:
  sub_100193620(v11, a3, v21, v22, v23, v24, v25, v26, v92, v93, v95, v97, cfa, valuea, SWORD2(valuea), contexta, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
  v70 = sub_10000AA64(*(v11 + 3752), a3);
  if (a5 == -3924)
  {
    goto LABEL_104;
  }

  v71 = v70;
  if (sub_10000C894(a3) || !v71)
  {
    if (!v71)
    {
      goto LABEL_104;
    }
  }

  else
  {
    v72 = sub_10000A540(v71, @"PRIVATE_MAC_ADDRESS");
    if (v72)
    {
      v73 = v72;
      TypeID = CFDictionaryGetTypeID();
      v75 = TypeID == CFGetTypeID(v73);
      v19 = &OBJC_IVAR___WiFiUserInteractionMonitorNetworkAgent_active;
      if (v75)
      {
        v76 = CFDictionaryGetValue(v73, @"PRIVATE_MAC_ADDRESS_VALUE");
        v77 = sub_10000ABFC(v76);
        if (a5)
        {
          if (v77)
          {
            v78 = a4;
            v79 = sub_100034EEC(v71, @"FailureCountCurrent");
            v80 = sub_100034EEC(v71, @"FailureCountThresholdCurrent");
            if (*(v11 + 4792))
            {
              if (*(v11 + 240))
              {
                v118 = 0;
                v119 = &v118;
                v120 = 0x2020000000;
                v121 = 0;
                if (v20)
                {
                  v89 = CFRetain(a3);
                  v119[3] = v89;
                }

                CFRetain(v11);
                v90 = *(v11 + 240);
                v112 = _NSConcreteStackBlock;
                v113 = 3221225472;
                v114 = sub_1000EDA3C;
                v115 = &unk_10025EFD8;
                v116 = &v118;
                v117 = v11;
                dispatch_async(v90, &v112);
                _Block_object_dispose(&v118, 8);
              }

              else
              {
                v81 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  valueb = v81;
                  [off_100298C40 WFLog:4 message:{"%s: null queue.", "__WiFiDeviceManagerClientAssociateCallback"}];
                  v81 = valueb;
                }

                objc_autoreleasePoolPop(v81);
              }
            }

            v75 = v80 - v79 == 1;
            a4 = v78;
            v19 = &OBJC_IVAR___WiFiUserInteractionMonitorNetworkAgent_active;
            if (v75)
            {
              sub_10000AD34(a3, @"FailureThresholdMet", kCFBooleanTrue);
            }
          }
        }
      }
    }
  }

  if (a5)
  {
    v82 = sub_10000A540(v71, @"MacAddressRandomisationTagMigratedNetwork");
    if (v82)
    {
      if (v82 == kCFBooleanTrue && *(v11 + 4760))
      {
        if (*(v11 + 240))
        {
          v118 = 0;
          v119 = &v118;
          v120 = 0x2020000000;
          v121 = 0;
          if (v20)
          {
            v84 = CFRetain(a3);
            v119[3] = v84;
          }

          CFRetain(v11);
          v85 = *(v11 + 240);
          v106 = _NSConcreteStackBlock;
          v107 = 3221225472;
          v108 = sub_1000EDAC8;
          v109 = &unk_10025EFD8;
          v110 = &v118;
          v111 = v11;
          dispatch_async(v85, &v106);
          _Block_object_dispose(&v118, 8);
        }

        else
        {
          v83 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s: null queue.", "__WiFiDeviceManagerClientAssociateCallback"}];
          }

          objc_autoreleasePoolPop(v83);
        }
      }
    }
  }

LABEL_104:
  v86 = *(a6 + 1);
  if (v86)
  {
    v86(v11, a2, a3, a4, a5, *(a6 + 2));
  }

  if (a5 && *(v11 + 3336) != 14)
  {
    *(v11 + 192) = 7;
    if (_os_feature_enabled_impl())
    {
      if (*(a6 + 48) == 1)
      {
        v87 = 59;
      }

      else
      {
        v87 = 3;
      }

      sub_100019814(v11, v87);
    }

    else
    {
      [objc_msgSend(v19 + 770 "sharedXPCManager")];
      sub_1000BD310(v11, 2, "__WiFiDeviceManagerClientAssociateCallback");
    }
  }

  sub_100190E38();
  v88 = *(a6 + 3);
  if (v88)
  {
    CFRelease(v88);
    *(a6 + 3) = 0;
  }

  free(a6);
  objc_autoreleasePoolPop(contextb);
}

void sub_1000CD0F8(uint64_t a1, const void *a2)
{
  if (!a1 || !a2)
  {
    sub_10019E7E8();
    return;
  }

  if (*(a1 + 6660))
  {
    sub_10019E774((a1 + 6660));
    return;
  }

  v4 = sub_10000A540(a2, @"lastDisconnectReasonKey");
  v5 = sub_10000A540(a2, @"lastDisconnectTimestampKey");
  if (v4 && (v6 = v5) != 0 && (valuePtr = 0, CFNumberGetValue(v4, kCFNumberIntType, &valuePtr), valuePtr == 3) && (v7 = CFAbsoluteTimeGetCurrent(), v7 - CFDateGetAbsoluteTime(v6) <= 10.0))
  {
    v10 = objc_autoreleasePoolPush();
    v11 = off_100298C40;
    if (off_100298C40)
    {
      v12 = sub_10000A878(a2);
      Current = CFAbsoluteTimeGetCurrent();
      [v11 WFLog:3 message:{"%s: Joining back watchdogged network %@ after disconnect, time since link down %.1f seconds", "__WiFiDeviceManagerAcquireWakeAssertionForAutoJoin", v12, Current - CFDateGetAbsoluteTime(v6)}];
    }

    v9 = v10;
  }

  else
  {
    if (!sub_10008AD80(*(a1 + 6872)) || *(a1 + 72) != 3 || !sub_100009730(a2))
    {
      if (!sub_10009ED84(a2) || !sub_100009730(a2) && !sub_10009F2A4(a2))
      {
        return;
      }

      goto LABEL_22;
    }

    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: platform requires autojoin PM assertion for EAP", "__WiFiDeviceManagerAcquireWakeAssertionForAutoJoin"}];
    }

    v9 = v8;
  }

  objc_autoreleasePoolPop(v9);
LABEL_22:
  v14 = IOPMAssertionCreateWithName(@"NoIdleSleepAssertion", 0xFFu, @"com.apple.wifi-autojoin", (a1 + 6660));
  if (v14)
  {
    v15 = v14;
    v16 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: unable to prevent idle sleep during autojoin, error=%d", "__WiFiDeviceManagerAcquireWakeAssertionForAutoJoin", v15}];
    }

    objc_autoreleasePoolPop(v16);
    *(a1 + 6660) = 0;
    *(a1 + 6664) = 0;
  }

  else
  {
    *(a1 + 6664) = CFAbsoluteTimeGetCurrent();
    *(a1 + 6672) = CFRetain(a2);
  }

  v17 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: wake assertion held for network %@ current timestamp:%f", "__WiFiDeviceManagerAcquireWakeAssertionForAutoJoin", sub_10000A878(a2), *(a1 + 6664)}];
  }

  objc_autoreleasePoolPop(v17);
}

void sub_1000CD390(uint64_t a1, void *a2)
{
  if (a2)
  {
    [*(*(a1 + 32) + 7480) setJoinEvent:1 withReason:*(a1 + 40) lastDisconnectReason:0 lastJoinFailure:0 andNetworkDetails:a2 forInterface:sub_100006F88(*(*(a1 + 32) + 64))];
  }
}

uint64_t sub_1000CD404(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [[WiFiFindAndJoinRequest alloc] initWithNetworkName:sub_10000A878(a3)];
  if (!v12)
  {
    return 4294963395;
  }

  v13 = v12;
  [(WiFiFindAndJoinRequest *)v12 setPassword:a4];
  [(WiFiFindAndJoinRequest *)v13 setChannelNumber:sub_100034EEC(a3, @"CHANNEL")];
  [(WiFiFindAndJoinRequest *)v13 setTimeout:60.0];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000CD538;
  v16[3] = &unk_100261748;
  v16[6] = a5;
  v16[7] = a1;
  v16[4] = v13;
  v16[5] = a2;
  v16[8] = a6;
  if (a1)
  {
    v14 = *(a1 + 240);
  }

  else
  {
    v14 = 0;
  }

  if ([(WiFiFindAndJoinRequest *)v13 runAsynchronouslyOnQueue:v14 onInterface:a2 withReply:v16])
  {
    return 0;
  }

  else
  {
    return 4294963396;
  }
}

void sub_1000CD538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (a3)
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: error: %@", "WiFiDeviceManagerFindAndJoinRequestAsync_block_invoke", v3}];
    }

    objc_autoreleasePoolPop(v5);
    v6 = [v3 domain];
    if ([v6 isEqualToString:CWFManagerErrorDomain])
    {
      v3 = [v3 code];
    }

    else
    {
      v3 = 4294963353;
    }
  }

  if ([*(a1 + 32) joinedNetwork])
  {
    v7 = sub_1000A2E44([*(a1 + 32) joinedNetwork]);
  }

  else
  {
    v7 = 0;
  }

  (*(a1 + 48))(*(a1 + 56), *(a1 + 40), v7, 0, v3, *(a1 + 64));
  if (v7)
  {

    CFRelease(v7);
  }
}

uint64_t sub_1000CD644(uint64_t result)
{
  if (result)
  {
    return *(result + 240);
  }

  return result;
}

uint64_t sub_1000CD650(uint64_t a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v10 = malloc_type_malloc(0x38uLL, 0x10E0040400D9003uLL);
  if (!v10)
  {
    return 4294963395;
  }

  v11 = v10;
  sub_1000BCD2C(a1);
  *(a1 + 256) = 1;
  *v11 = a1;
  *(v11 + 8) = a4;
  *(v11 + 40) = a5;
  *(v11 + 24) = CFRetain(a3);
  *(v11 + 32) = 1;
  v13 = *(a1 + 64);
  v12 = (a1 + 64);
  v14 = sub_10005B85C(v13, a2, a3, sub_1000CD730, v11);
  if (v14)
  {
    sub_10019E864((v11 + 24), v11, v12);
  }

  return v14;
}

void sub_1000CD730(uint64_t a1, const void *a2, uint64_t a3, const void **a4)
{
  v7 = *a4;
  v8 = sub_10000AD2C(kCFAllocatorDefault, a4[3]);
  if (v8)
  {
    v9 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, a4 + 4);
    if (v9)
    {
      v10 = v9;
      sub_10000AD34(v8, @"networkRole", v9);
      CFRelease(v10);
    }

    if (!a3)
    {
      CFSetAddValue(*(v7 + 3376), v8);
      goto LABEL_8;
    }
  }

  else if (!a3)
  {
    goto LABEL_8;
  }

  sub_1000CD848(v7, a2, v8, 0, 0);
LABEL_8:
  v11 = a4[1];
  if (v11)
  {
    v11(v7, a2, a3, v8, 0, a4[5]);
  }

  v12 = a4[3];
  if (v12)
  {
    CFRelease(v12);
    a4[3] = 0;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  free(a4);
}

uint64_t sub_1000CD848(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = malloc_type_malloc(0x20uLL, 0xA004088793A40uLL);
  *(a1 + 256) = 0;
  *v10 = a1;
  v10[1] = a4;
  v10[2] = a3;
  v10[3] = a5;
  v11 = sub_10005B904(*(a1 + 64), a2, sub_1000CD970, v10);
  if (v11)
  {
    v12 = v11;
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"Unable to stop network (%d). deviceManager=%p", v12, a1}];
    }

    objc_autoreleasePoolPop(v13);
  }

  *(a1 + 192) = 8;
  if (_os_feature_enabled_impl())
  {
    sub_100019814(a1, 11);
  }

  else
  {
    [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
    sub_1000BD310(a1, 2, "WiFiDeviceManagerStopAdHocNetwork");
  }

  return 0;
}

void sub_1000CD970(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *a4;
  v5 = a4[1];
  if (v5)
  {
    v5(*a4, a2, a3, 0, a4[3]);
  }

  CFSetRemoveValue(*(v6 + 3376), a4[2]);

  free(a4);
}

uint64_t sub_1000CD9C8(uint64_t a1, const void *a2, const __CFDictionary *a3, uint64_t a4, uint64_t a5)
{
  v10 = malloc_type_malloc(0x38uLL, 0x10E0040400D9003uLL);
  if (!v10)
  {
    sub_10019E9FC();
    return 4294963395;
  }

  if (!a3)
  {
    sub_10019E990();
    return 4294963396;
  }

  v11 = v10;
  *v10 = a1;
  v10[1] = a4;
  v10[5] = a5;
  *(v10 + 8) = 3;
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, a3);
  if (!MutableCopy)
  {
    sub_10019E924();
    return 4294963394;
  }

  v13 = MutableCopy;
  v11[3] = CFRetain(MutableCopy);
  Value = CFDictionaryGetValue(a3, @"AP_MODE_MOVETOIOS_MIGRATION");
  if (!Value || Value != kCFBooleanTrue)
  {
    goto LABEL_66;
  }

  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  LODWORD(v88[0]) = 0;
  valuePtr[0] = 0;
  v90 = 0;
  v16 = 0;
  if (!sub_100021394(*(a1 + 64)))
  {
    v16 = CFStringCompare(Mutable, @"XZ", 0) == kCFCompareEqualTo || CFStringCompare(Mutable, &stru_1002680F8, 0) == kCFCompareEqualTo || CFStringCompare(Mutable, @"JP", 0) == kCFCompareEqualTo || CFStringCompare(Mutable, @"TN", 0) == kCFCompareEqualTo || CFStringCompare(Mutable, @"YE", 0) == kCFCompareEqualTo;
  }

  v87 = a2;
  LODWORD(v80) = sub_1000EDB40(Mutable);
  v17 = 0;
  do
  {
    v25 = CFStringCompare(Mutable, off_100261A20[v17], 0);
    if (v25 == kCFCompareEqualTo)
    {
      break;
    }
  }

  while (v17++ != 37);
  v27 = *(a1 + 64);
  sub_10014C1C0(v27, v18, v19, v20, v21, v22, v23, v24, v72, v73, v74, v75, v76, v77, v78, v79, v80, v83);
  v29 = sub_1000634F8(v27, v28, &v90);
  v30 = sub_100006F88(*(a1 + 64));
  v31 = sub_100007D90(a1, v30, 1);
  v32 = v31;
  v86 = v13;
  v84 = a3;
  if (v31)
  {
    v33 = v16;
    v34 = sub_10000A540(v31, @"CHANNEL");
    v35 = sub_10000A540(v32, @"CHANNEL_FLAGS");
    if (v35)
    {
      CFNumberGetValue(v35, kCFNumberSInt32Type, valuePtr + 4);
    }

    if (v34)
    {
      CFNumberGetValue(v34, kCFNumberSInt32Type, v88);
    }

    v85 = (HIDWORD(valuePtr[0]) >> 3) & 1;
    if ((valuePtr[0] & 0x800000000) != 0)
    {
      v36 = 0;
      v37 = 0;
      v16 = v33;
    }

    else
    {
      v16 = v33;
      if ((valuePtr[0] & 0x1000000000) != 0)
      {
        v37 = 0;
        v36 = 1;
      }

      else
      {
        v36 = 0;
        v37 = (HIDWORD(valuePtr[0]) >> 13) & 1;
      }
    }

    if (sub_1000611F8(*(a1 + 64)))
    {
      v38 = (HIDWORD(valuePtr[0]) >> 11) & 1;
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v36 = 0;
    v37 = 0;
    v38 = 0;
    LOBYTE(v85) = 0;
  }

  if (v37 | v16 | v38)
  {
    goto LABEL_37;
  }

  v39 = v36 ^ 1;
  if (!v32)
  {
    v39 = 1;
  }

  if ((v39 & 1) == 0 && sub_10005F338(*(a1 + 64), v88[0]) || *(a1 + 3470))
  {
LABEL_37:
    v82 = v16;
    v40 = objc_autoreleasePoolPush();
    v41 = off_100298C40;
    if (off_100298C40)
    {
      v42 = sub_1000611F8(*(a1 + 64));
      v43 = v36 ^ 1;
      if (!v32)
      {
        v43 = 1;
      }

      v44 = (v43 & 1) == 0 && sub_10005F338(*(a1 + 64), v88[0]) != 0;
      [v41 WFLog:3 message:{"MIGRATION: %s Starting SoftAp on 2.4GHz (RegulatoryRestricted: %d, Infra6G: %d, InfraBWHigherThan80MHz:%d, isChip160MHzCapable:%d, Infra5G_DFS:%d AWDLRealTimeMode:%d)", "__WiFiDeviceManagerSelectPHChannel", v82, v37, v38, v42, v44, *(a1 + 3470)}];
    }

    objc_autoreleasePoolPop(v40);
    v45 = v85;
    if (!v32)
    {
      v45 = 0;
    }

    if (v45)
    {
      v46 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, v88);
      v47 = objc_autoreleasePoolPush();
      v13 = v86;
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"MIGRATION: Selecting 2.4G infra channel :%d ", LODWORD(v88[0])}];
      }
    }

    else
    {
      v48 = &dword_100297BAC;
      v49 = 3;
      v13 = v86;
      while (!sub_10005F438(*(a1 + 64), *v48))
      {
        ++v48;
        if (!--v49)
        {
          goto LABEL_52;
        }
      }

      v46 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, v48);
      v47 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"MIGRATION: Selecting 2G  channel :%d\n", *v48}];
      }
    }

    objc_autoreleasePoolPop(v47);
    if (v46)
    {
      CFDictionarySetValue(v13, @"CHANNEL", v46);
      CFRelease(v46);
      LODWORD(valuePtr[0]) = 10;
      goto LABEL_58;
    }

    goto LABEL_52;
  }

  LODWORD(valuePtr[0]) = 16;
  if ((sub_10005F500(*(a1 + 64), v88[0]) & 4) != 0)
  {
    v60 = 1024;
  }

  else
  {
    v60 = 2;
  }

  LODWORD(valuePtr[0]) |= v60;
  if (v29)
  {
    v61 = 0;
  }

  else
  {
    v61 = v36;
  }

  if (v61)
  {
    v62 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"MIGRATION: Selecting 5G infra channel :%d ", LODWORD(v88[0])}];
    }

    v63 = v88;
    v13 = v86;
    goto LABEL_85;
  }

  v66 = 0;
  if (v25)
  {
    v67 = v81;
  }

  else
  {
    v67 = 1;
  }

  v68 = 1;
  v13 = v86;
  while (1)
  {
    v69 = v68;
    v63 = &dword_100297BB8[v66];
    if (!sub_10005F438(*(a1 + 64), *v63))
    {
      goto LABEL_98;
    }

    v70 = *v63;
    if (v70 != 138)
    {
      break;
    }

    if ((v67 & 1) == 0)
    {
      goto LABEL_96;
    }

LABEL_98:
    v68 = 0;
    v66 = 1;
    if ((v69 & 1) == 0)
    {
      goto LABEL_52;
    }
  }

  if ((((v70 - 142) < 0x18) & v67) != 0)
  {
    goto LABEL_98;
  }

LABEL_96:
  v71 = sub_1000CEE58(a1, v70);
  if (v25 && v71)
  {
    goto LABEL_98;
  }

  v62 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"MIGRATION: Selecting 5G  channel :%d  AwdlActive: %d", *v63, v29}];
  }

LABEL_85:
  objc_autoreleasePoolPop(v62);
  v64 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, v63);
  if (!v64)
  {
    goto LABEL_52;
  }

  v65 = v64;
  CFDictionarySetValue(v13, @"CHANNEL", v64);
  CFRelease(v65);
LABEL_58:
  v52 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, valuePtr);
  if (!v52)
  {
LABEL_52:
    v50 = 0;
    v51 = 0;
    a2 = v87;
    if (Mutable)
    {
      goto LABEL_62;
    }

    goto LABEL_63;
  }

  v53 = v52;
  CFDictionarySetValue(v13, @"CHANNEL_FLAGS", v52);
  a2 = v87;
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v50 = 1;
  Mutable = v53;
LABEL_62:
  CFRelease(Mutable);
  v51 = v50;
LABEL_63:
  v54 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"MIGRATION:%s: END print request  dictionary %@ and hostAPDict: %@", "WiFiDeviceManagerStartWiFiDirectGroup", v84, v13}];
  }

  objc_autoreleasePoolPop(v54);
  if (v51)
  {
LABEL_66:
    v55 = sub_10005B96C(*(a1 + 64), a2, v13, sub_1000CE168, v11);
    if (v55)
    {
      v56 = v55;
      v89 = 0;
      memset(v88, 0, sizeof(v88));
      DWORD1(v88[0]) = 15;
      sub_1000C67C8(a1, v88);
      v57 = v11[3];
      if (v57)
      {
        CFRelease(v57);
      }

      free(v11);
    }

    else
    {
      v58 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: aborting ongoing auto-join on network start", "WiFiDeviceManagerStartWiFiDirectGroup"}];
      }

      objc_autoreleasePoolPop(v58);
      sub_1000BCD2C(a1);
      v56 = 0;
    }
  }

  else
  {
    sub_10019E8C4();
    v56 = 4294963394;
  }

  CFRelease(v13);
  return v56;
}

void sub_1000CE168(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  v7 = *a4;
  v8 = sub_10000AD2C(kCFAllocatorDefault, a4[3]);
  if (!v8)
  {
    if (!a3)
    {
      goto LABEL_8;
    }

LABEL_7:
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    DWORD1(v14[0]) = 16;
    sub_1000C67C8(v7, v14);
    goto LABEL_11;
  }

  v9 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, a4 + 4);
  if (v9)
  {
    v10 = v9;
    sub_10000AD34(v8, @"networkRole", v9);
    CFRelease(v10);
  }

  if (a3)
  {
    goto LABEL_7;
  }

  CFSetAddValue(*(v7 + 3376), v8);
LABEL_8:
  v11 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: aborting ongoing auto-join on network start", "__WiFiDeviceManagerClientStartWiFiDirectGroupCallback"}];
  }

  objc_autoreleasePoolPop(v11);
  sub_1000BCD2C(v7);
LABEL_11:
  v12 = a4[1];
  if (v12)
  {
    v12(v7, a2, a3, v8, 0, a4[5]);
  }

  v13 = a4[3];
  if (v13)
  {
    CFRelease(v13);
    a4[3] = 0;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  free(a4);
}

void sub_1000CE2F4(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *a4;
  v5 = a4[1];
  if (v5)
  {
    v5(*a4, a2, a3, 0, a4[3]);
  }

  v7 = a4[2];
  if (v7)
  {
    if (CFSetContainsValue(*(v6 + 3376), v7))
    {
      CFSetRemoveValue(*(v6 + 3376), a4[2]);
    }

    v8 = a4[2];
    if (v8)
    {
      CFRelease(v8);
    }
  }

  free(a4);
}

uint64_t sub_1000CE36C(uint64_t a1, const void *a2, int a3, const void *a4, uint64_t a5, uint64_t a6, const void *a7)
{
  if (a3 == 1)
  {
    return sub_1000CD650(a1, a2, a4, a5, a6);
  }

  if ((a3 & 0xFFFFFFFE) == 2)
  {
    return sub_1000CD9C8(a1, a2, a4, a5, a6);
  }

  if (a3 == 4)
  {
    return sub_1000CE3C4(a1, a2, a4, a5, a6, a7);
  }

  return 4294963396;
}

uint64_t sub_1000CE3C4(uint64_t a1, const void *a2, const __CFDictionary *a3, uint64_t a4, uint64_t a5, const void *a6)
{
  if (!a1)
  {
    return 4294963396;
  }

  if (!sub_1000C7464(a1, 2))
  {
    sub_10019EC1C();
    return 82;
  }

  if (!sub_10014E1FC(*(a1 + 64), a2))
  {
    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v44 = "WiFiDeviceManagerStartAwdl";
      [off_100298C40 WFLog:4 message:"%s: AWDL bringup requested while link state is down."];
    }

    objc_autoreleasePoolPop(v12);
  }

  if (!*(a1 + 5488))
  {
    sub_10019ED68((a1 + 5488));
    return 4294963366;
  }

  if (*(a1 + 3464) && CFDictionaryGetValue(a3, @"APPLE80211KEY_AWDL_INFO_ASSISTED_DISCOVERY_FOLLOW"))
  {
    sub_10019ECFC();
    return 4294963366;
  }

  if (!*(a1 + 5480))
  {
LABEL_27:
    v21 = sub_1000634F8(*(a1 + 64), a2, 0);
    v22 = v21;
    if (a3)
    {
      if (*(a1 + 5496))
      {
        if (v21)
        {
          if (CFDictionaryGetValue(a3, @"AWDL_INFO_ASSISTED_DISCOVERY_METRIC"))
          {
            if (!sub_1000C905C(a1))
            {
              if (sub_1000C9084(a1))
              {
                sub_10018BA54(a1, 2, v23, v24, v25, v26, v27, v28, v44, v45, SHIDWORD(v45), block, v47, v48, v49, v50, v51, v52, v53, v54, v55);
                if (v29)
                {
                  v30 = v29;
                  if (sub_10018B7C0(a1, a2, v29, 0, 0))
                  {
                    CFRelease(v30);
                    v31 = objc_autoreleasePoolPush();
                    if (off_100298C40)
                    {
                      [off_100298C40 WFLog:3 message:{"%s: Error trying to stop AWDL in Follow Mode.", "WiFiDeviceManagerStartAwdl"}];
                    }
                  }

                  else
                  {
                    CFSetRemoveValue(*(a1 + 3376), v30);
                    v31 = objc_autoreleasePoolPush();
                    if (off_100298C40)
                    {
                      [off_100298C40 WFLog:3 message:{"%s: AWDL in Follow Mode. Exit Follow Mode", "WiFiDeviceManagerStartAwdl"}];
                    }
                  }

                  objc_autoreleasePoolPop(v31);
                }
              }
            }
          }
        }
      }
    }

    if (!*(a1 + 5496) || !v22)
    {
      if (sub_1000C7464(a1, 2))
      {
        if (!sub_10014E1FC(*(a1 + 64), a2))
        {
          v33 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s: AWDL bringup requested while link state is down.", "__WiFiDeviceManagerRequestAwdlBringup"}];
          }

          objc_autoreleasePoolPop(v33);
        }

        v34 = malloc_type_malloc(0x38uLL, 0x10E0040400D9003uLL);
        if (v34)
        {
          v35 = v34;
          *v34 = a1;
          v34[1] = a4;
          v34[5] = a5;
          if (a3)
          {
            v36 = CFRetain(a3);
          }

          else
          {
            v36 = 0;
          }

          *(v35 + 24) = v36;
          *(v35 + 32) = 4;
          if (a6)
          {
            v38 = CFRetain(a6);
          }

          else
          {
            v38 = 0;
          }

          *(v35 + 48) = v38;
          v39 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: hosting AWDL session. Aborting auto-join", "__WiFiDeviceManagerRequestAwdlBringup"}];
          }

          objc_autoreleasePoolPop(v39);
          sub_1000BCD2C(a1);
          sub_10014EF78(*(a1 + 64));
          v40 = sub_10005C48C(*(a1 + 64), a2, a3, sub_1000F0F68, v35, a6);
          if (!v40)
          {
            *(a1 + 5501) = 1;
            sub_1000BBAE0(a1, 2, 1);
LABEL_70:
            sub_10019EDE0();
            return v54;
          }

          v19 = v40;
          v41 = *(v35 + 24);
          if (v41)
          {
            CFRelease(v41);
            *(v35 + 24) = 0;
          }

          v42 = *(v35 + 48);
          if (v42)
          {
            CFRelease(v42);
          }

          free(v35);
          v43 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: error bringing up AWDL session. Re-enabling auto-join", "__WiFiDeviceManagerRequestAwdlBringup"}];
          }

          objc_autoreleasePoolPop(v43);
          *(a1 + 192) = 10;
          if (_os_feature_enabled_impl())
          {
            sub_100019814(a1, 9uLL);
          }

          else
          {
            [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
            sub_1000BD310(a1, 2, "__WiFiDeviceManagerRequestAwdlBringup");
          }
        }

        else
        {
          v19 = 4294963395;
        }
      }

      else
      {
        sub_10019EA68();
        v19 = 82;
      }

      sub_10019EAD4(v19);
      return v19;
    }

    if (!a3 || !CFDictionaryGetValue(a3, @"APPLE80211KEY_AWDL_INFO_ASSISTED_DISCOVERY_FOLLOW") || !sub_1000C905C(a1))
    {
      v32 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: AWDL is already started. Refcount=%d. Invoking client network started callback.", "WiFiDeviceManagerStartAwdl", *(a1 + 5496)}];
      }

      objc_autoreleasePoolPop(v32);
      if (*(a1 + 240))
      {
        v54 = 0;
        v55 = &v54;
        v56 = 0x2020000000;
        v57 = CFRetain(a2);
        CFRetain(a1);
        v37 = *(a1 + 240);
        block = _NSConcreteStackBlock;
        v47 = 3221225472;
        v48 = sub_1000CECCC;
        v49 = &unk_100260B38;
        v50 = &v54;
        v51 = a1;
        v52 = a4;
        v53 = a5;
        dispatch_async(v37, &block);
        _Block_object_dispose(&v54, 8);
      }

      else
      {
        sub_10019EB44();
      }

      goto LABEL_70;
    }

    sub_10019EC88((a1 + 5496));
    return 4294963366;
  }

  v13 = objc_autoreleasePoolPush();
  if ([*(a1 + 5480) isPowerResourceAvailable:1])
  {
    objc_autoreleasePoolPop(v13);
    goto LABEL_27;
  }

  v14 = malloc_type_malloc(0x38uLL, 0x10E0040400D9003uLL);
  if (v14)
  {
    v15 = v14;
    *v14 = a1;
    v14[1] = a4;
    v14[5] = a5;
    v14[2] = CFRetain(a2);
    if (a3)
    {
      v16 = CFRetain(a3);
    }

    else
    {
      v16 = 0;
    }

    v15[3] = v16;
    *(v15 + 8) = 4;
    if (a6)
    {
      v17 = CFRetain(a6);
    }

    else
    {
      v17 = 0;
    }

    v15[6] = v17;
    v18 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt :  Power module is attached - checking for resource availability before starting AWDL.", "WiFiDeviceManagerStartAwdl"}];
    }

    objc_autoreleasePoolPop(v18);
    v19 = [*(a1 + 5480) requestPowerResource:1 withDetails:v15];
    objc_autoreleasePoolPop(v13);
    if (v19)
    {
      sub_10019EBB0();
    }
  }

  else
  {
    objc_autoreleasePoolPop(v13);
    return 4294963395;
  }

  return v19;
}

void sub_1000CEA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CEA50(uint64_t a1, const void *a2, void *value, uint64_t a4, uint64_t a5)
{
  if (!value)
  {
    return 4294963396;
  }

  if (!CFSetContainsValue(*(a1 + 3376), value))
  {
    return 4294963396;
  }

  v10 = CFSetGetValue(*(a1 + 3376), value);
  v11 = sub_10000A540(v10, @"networkRole");
  if (!v11)
  {
    return 4294963394;
  }

  valuePtr = -1431655766;
  CFNumberGetValue(v11, kCFNumberSInt32Type, &valuePtr);
  if (valuePtr == 1)
  {
    sub_1000CD848(a1, a2, v10, a4, a5);
    return 0;
  }

  if ((valuePtr & 0xFFFFFFFE) == 2)
  {
    sub_1000C5E00(a1, a2, v10, a4, a5);
    return 0;
  }

  if (valuePtr == 4)
  {
    return sub_10018B7C0(a1, a2, v10, a4, a5);
  }

  else
  {
    return 4294963396;
  }
}

uint64_t sub_1000CEB74(uint64_t a1, CFArrayRef theArray)
{
  v2 = 0;
  if (a1 && theArray)
  {
    if (CFArrayGetCount(theArray) < 1)
    {
      return 0;
    }

    else
    {
      v5 = 0;
      v2 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v5);
        if (ValueAtIndex)
        {
          v7 = ValueAtIndex;
          v15 = sub_100034EEC(ValueAtIndex, @"networkRole");
          v16 = *(a1 + 64);
          if (v15 == 4)
          {
            sub_10014C1C0(v16, v8, v9, v10, v11, v12, v13, v14, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
            v2 = sub_1000CEA50(a1, v17, v7, 0, 0);
          }

          else
          {
            v18 = sub_100006F88(v16);
            v2 = sub_1000CEA50(a1, v18, v7, 0, 0);
            if (!v2)
            {
              if ((v15 & 0xFFFFFFFFFFFFFFFELL) == 2)
              {
                *(a1 + 5267) = 0;
                if (+[WiFiSoftApStateMonitor sharedInstance])
                {
                  [+[WiFiSoftApStateMonitor sharedInstance](WiFiSoftApStateMonitor setMisEnabled:"setMisEnabled:", *(a1 + 5267) != 0];
                }

                sub_1000BBAE0(a1, 4, 0);
              }

              v2 = 0;
            }
          }
        }

        ++v5;
      }

      while (v5 < CFArrayGetCount(theArray));
    }
  }

  return v2;
}

void sub_1000CECCC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2[30])
  {
    v3 = sub_1000078F4(v2[8], *(*(*(a1 + 32) + 8) + 24));
    valuePtr = 4;
    if (v3)
    {
      v4 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
      if (v4)
      {
        v5 = v4;
        sub_10000AD34(v3, @"networkRole", v4);
        CFRelease(v5);
      }
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      if (v3)
      {
        v7 = 0;
      }

      else
      {
        v7 = 4294963395;
      }

      v6(*(a1 + 40), *(*(*(a1 + 32) + 8) + 24), v7, v3, 0, *(a1 + 56));
    }

    CFRelease(*(a1 + 40));
    v8 = *(*(*(a1 + 32) + 8) + 24);
    if (v8)
    {
      CFRelease(v8);
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }

    if (v3)
    {
      CFRelease(v3);
    }
  }

  else
  {
    CFRelease(v2);
    v9 = *(*(*(a1 + 32) + 8) + 24);
    if (v9)
    {
      CFRelease(v9);
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }
  }
}

void sub_1000CEDF8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[30])
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 64);
    v5 = *(a1 + 56);
    (*(a1 + 40))();
    v2 = *(a1 + 32);
  }

  CFRelease(v2);
}

uint64_t sub_1000CEE58(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    sub_10019EF64();
    return 0;
  }

  if (!a1)
  {
    sub_10019EEF8();
    return 0;
  }

  v3 = *(a1 + 56);
  if (!v3)
  {
    sub_10019EE8C();
    return 0;
  }

  value = 0;
  valuePtr = 0;
  if (CFArrayGetCount(v3) < 1)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), v5);
    if (ValueAtIndex)
    {
      CFDictionaryGetValueIfPresent(ValueAtIndex, @"MWS_Channel_Number", &value);
      if (value)
      {
        CFNumberGetValue(value, kCFNumberIntType, &valuePtr);
        if (valuePtr == a2)
        {
          break;
        }
      }
    }

    if (CFArrayGetCount(*(a1 + 56)) <= ++v5)
    {
      return 0;
    }
  }

  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: channel %d is a deny-listed coex channel", "WiFiDeviceManagerIsChannelCoexBlacklisted", a2}];
  }

  objc_autoreleasePoolPop(v8);
  return 1;
}

uint64_t sub_1000CEF6C(uint64_t a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v10 = malloc_type_malloc(0x18uLL, 0xA00402214FCE6uLL);
  *v10 = a1;
  v10[1] = a4;
  v10[2] = a5;
  v11 = sub_1000635DC(*(a1 + 64), a2, a3, 0, sub_1000CF00C, v10);
  if (v11)
  {
    free(v10);
  }

  return v11;
}

void sub_1000CF00C(int a1, uint64_t a2, CFArrayRef theArray, int a4, uint64_t a5, uint64_t *a6)
{
  v10 = *a6;
  if (theArray && CFArrayGetCount(theArray))
  {
    sub_1000F0978(v10, theArray);
  }

  v11 = a6[1];
  if (v11)
  {
    v11(v10, a2, theArray, a5, a6[2]);
  }

  free(a6);
}

void sub_1000CF09C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    Count = CFArrayGetCount(*(a1 + 3672));
    v5 = CFArrayGetCount(*(a1 + 3680)) + Count;
    if (v5)
    {
      MutableCopy = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, *(a1 + 3672));
      if (CFArrayGetCount(*(a1 + 3680)))
      {
        v7 = *(a1 + 3680);
        v14.length = CFArrayGetCount(v7);
        v14.location = 0;
        CFArrayAppendArray(MutableCopy, v7, v14);
      }

      if (!a2 || sub_1000A11B4(a2) || v5 < 1)
      {
LABEL_17:
        if (MutableCopy)
        {
LABEL_18:

          CFRelease(MutableCopy);
        }
      }

      else
      {
        v8 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, v8);
          if (ValueAtIndex)
          {
            v10 = ValueAtIndex;
            if (!sub_10009FE08(ValueAtIndex))
            {
              v12 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: provisioned HS2.0 account %@ has no credentials.", "__WiFiDeviceManagerFindMergeHS20Account", sub_10000A878(v10)}];
              }

              objc_autoreleasePoolPop(v12);
              goto LABEL_17;
            }

            sub_100176A90();
            if (v11)
            {
              break;
            }
          }

          if (v5 == ++v8)
          {
            goto LABEL_17;
          }
        }

        sub_1000A118C(a2, 1);
        sub_10009D854(a2, v10);
        if (MutableCopy)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      sub_10019EFD0();
    }
  }

  else
  {
    sub_10019F03C();
  }
}

uint64_t sub_1000CF254(uint64_t a1, const void *a2, const __CFArray *a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = malloc_type_malloc(0x18uLL, 0xA00402214FCE6uLL);
  if (CFArrayGetCount(a3) >= 1)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a3, v13);
      if (ValueAtIndex)
      {
        Value = CFDictionaryGetValue(ValueAtIndex, @"APPLE80211KEY_AWDL_INFO_ASSISTED_DISCOVERY_FOLLOW");
        if (Value)
        {
          valuePtr = -86;
          CFNumberGetValue(Value, kCFNumberSInt8Type, &valuePtr);
          if (valuePtr)
          {
            v14 = 1;
          }
        }
      }

      ++v13;
    }

    while (CFArrayGetCount(a3) > v13);
    if (*(a1 + 3464) && v14)
    {
      v17 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: unable to start Ranging in follow mode, VoIP Call Active.", "WiFiDeviceManagerRangingStartAsync"}];
      }

      objc_autoreleasePoolPop(v17);
      goto LABEL_15;
    }

    if (v14 && sub_1000C905C(a1))
    {
LABEL_15:
      v18 = 4294963366;
LABEL_17:
      free(v12);
      return v18;
    }
  }

  *v12 = a1;
  v12[1] = a4;
  v12[2] = a5;
  v18 = sub_10014EA30(*(a1 + 64), a2, a3, sub_1000CF444, v12, a6);
  if (v18)
  {
    goto LABEL_17;
  }

  if (a3 && *(a1 + 7480))
  {
    if (CFArrayGetCount(a3))
    {
      v20 = [-[__CFArray objectAtIndex:](a3 objectAtIndex:{0), "objectForKey:", @"RANGING_NUM_MEASUREMENTS"}];
      v21 = *(a1 + 7480);
      if (v20)
      {
        v22 = [v20 unsignedIntegerValue];
      }

      else
      {
        v22 = 0;
      }

      [v21 rangingStartedWithNumMeasurements:v22];
    }

    return 0;
  }

  return v18;
}

void sub_1000CF444(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5[1];
  if (v6)
  {
    v6(*a5, a2, a3, a4, a5[2]);
  }

  free(a5);
}

uint64_t sub_1000CF6D4(uint64_t result, uint64_t a2)
{
  if (*(result + 4488))
  {
    return sub_10019F184(result, a2, result + 4488);
  }

  return result;
}

uint64_t sub_1000CF704(uint64_t a1, uint64_t a2, CFDictionaryRef theDict, CFMutableDictionaryRef *a4)
{
  valuePtr = -1431655766;
  Value = CFDictionaryGetValue(theDict, @"DebugModule");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
    switch(valuePtr)
    {
      case 3:
        if (!a1)
        {
          sub_10019FBEC();
          goto LABEL_158;
        }

        if (!theDict)
        {
          sub_10019FB8C();
          goto LABEL_158;
        }

        v9 = CFDictionaryGetValue(theDict, @"DebugCommand");
        if (!v9)
        {
          goto LABEL_158;
        }

        v62 = -1431655766;
        CFNumberGetValue(v9, kCFNumberIntType, &v62);
        switch(v62)
        {
          case 0u:
            v10 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:"Dumping Auto-Join Stats"];
            }

            objc_autoreleasePoolPop(v10);
            MutableCopy = sub_1000291D4(a1);
            goto LABEL_48;
          case 1u:
            v58 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:"Reset Auto-Join Stats"];
            }

            objc_autoreleasePoolPop(v58);
            bzero((a1 + 5688), 0x230uLL);
            return 0;
          case 4u:
            *(a1 + 34) = 0;
            v47 = objc_autoreleasePoolPush();
            v48 = off_100298C40;
            if (!off_100298C40)
            {
              goto LABEL_129;
            }

            v49 = "Enabled Periodic 5Ghz Scan";
            goto LABEL_128;
          case 5u:
            *(a1 + 34) = 1;
            v47 = objc_autoreleasePoolPush();
            v48 = off_100298C40;
            if (!off_100298C40)
            {
              goto LABEL_129;
            }

            v49 = "Disabled Periodic 5Ghz Scan";
            goto LABEL_128;
          case 6u:
            *(a1 + 5681) = 0;
            v47 = objc_autoreleasePoolPush();
            v48 = off_100298C40;
            if (!off_100298C40)
            {
              goto LABEL_129;
            }

            v49 = "Considering geotags for 5Ghz Scan";
            goto LABEL_128;
          case 7u:
            *(a1 + 5681) = 1;
            v47 = objc_autoreleasePoolPush();
            v48 = off_100298C40;
            if (!off_100298C40)
            {
              goto LABEL_129;
            }

            v49 = "Not considering geotags for 5Ghz Scan";
LABEL_128:
            [v48 WFLog:3 message:v49];
LABEL_129:
            v57 = v47;
            goto LABEL_130;
          case 8u:
            sub_10019FC4C();
            return v63;
          case 9u:
            sub_10019FD14();
            return v63;
          case 0xAu:
            sub_10019FDDC();
            return v63;
          case 0xBu:
            if (CFDictionaryContainsValue(theDict, @"DebugCommandValueDict"))
            {
              sub_10019FB2C();
              goto LABEL_158;
            }

            *(a1 + 36) = CFDictionaryGetValue(theDict, @"DebugCommandValueDict") == kCFBooleanTrue;
            v44 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              if (*(a1 + 36))
              {
                v56 = "Disabled";
              }

              else
              {
                v56 = "Enabled";
              }

              [off_100298C40 WFLog:3 message:{"%s Using Debug Value for 24GhzAJScanDuringBTAndDriving: 2.4Ghz AJ Scans %s", "__WiFiDeviceManagerDebugAutoJoin", v56}];
            }

            goto LABEL_125;
          case 0xCu:
            v63 = 0;
            v50 = CFDictionaryGetValue(theDict, @"DebugCommandValueDict");
            if (!v50)
            {
              sub_10019FACC();
              goto LABEL_158;
            }

            v51 = CFNumberGetValue(v50, kCFNumberSInt32Type, &v63);
            v52 = objc_autoreleasePoolPush();
            if (v51)
            {
              if (off_100298C40)
              {
                v53 = "YES";
                if (!v63)
                {
                  v53 = "NO";
                }

                [off_100298C40 WFLog:3 message:{"%s Using Debug Value for AutoJoinSimulateScanRSSI: Simulating:%s RSSI:%d", "__WiFiDeviceManagerDebugAutoJoin", v53, v63}];
              }

              objc_autoreleasePoolPop(v52);
              v13 = 0;
              if (v63)
              {
                *(a1 + 44) = v63;
                *(a1 + 40) = 1;
              }

              else
              {
                *(a1 + 44) = 0;
                *(a1 + 40) = 0;
              }

              return v13;
            }

            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"%s DebugCmdAutoJoinDrivingRssiThres valRef is NULL", "__WiFiDeviceManagerDebugAutoJoin"}];
            }

            v32 = v52;
            goto LABEL_60;
          case 0xDu:
            if (CFDictionaryContainsValue(theDict, @"DebugCommandValueDict"))
            {
              sub_10019FA6C();
              goto LABEL_158;
            }

            *(a1 + 48) = CFDictionaryGetValue(theDict, @"DebugCommandValueDict") == kCFBooleanTrue;
            v44 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              if (*(a1 + 48))
              {
                v54 = "On";
              }

              else
              {
                v54 = "Off";
              }

              [off_100298C40 WFLog:3 message:{"%s Using Debug Value for DebugCmdAutoJoinDrivingCarPlay: Carplay is %s", "__WiFiDeviceManagerDebugAutoJoin", v54}];
            }

            goto LABEL_125;
          case 0xEu:
            if (CFDictionaryContainsValue(theDict, @"DebugCommandValueDict"))
            {
              sub_10019FA0C();
              goto LABEL_158;
            }

            *(a1 + 49) = CFDictionaryGetValue(theDict, @"DebugCommandValueDict") == kCFBooleanTrue;
            v44 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              if (*(a1 + 49))
              {
                v55 = "On";
              }

              else
              {
                v55 = "Off";
              }

              [off_100298C40 WFLog:3 message:{"%s Using Debug Value for DebugCmdBTA2DPEnable: BTA2DP is %s", "__WiFiDeviceManagerDebugAutoJoin", v55}];
            }

            goto LABEL_125;
          case 0xFu:
            if (CFDictionaryContainsValue(theDict, @"DebugCommandValueDict"))
            {
              sub_10019F9AC();
              goto LABEL_158;
            }

            *(a1 + 37) = CFDictionaryGetValue(theDict, @"DebugCommandValueDict") == kCFBooleanTrue;
            v44 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              if (*(a1 + 37))
              {
                v45 = "Enabled";
              }

              else
              {
                v45 = "Disabled";
              }

              [off_100298C40 WFLog:3 message:{"%s Using Debug Value for DebugCmdAutoJoinBTSCODisable: AJ Scans for BTSCO %s", "__WiFiDeviceManagerDebugAutoJoin", v45}];
            }

            goto LABEL_125;
          case 0x10u:
            if (CFDictionaryContainsValue(theDict, @"DebugCommandValueDict"))
            {
              sub_10019F94C();
              goto LABEL_158;
            }

            *(a1 + 50) = CFDictionaryGetValue(theDict, @"DebugCommandValueDict") == kCFBooleanTrue;
            v44 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              if (*(a1 + 50))
              {
                v46 = "On";
              }

              else
              {
                v46 = "Off";
              }

              [off_100298C40 WFLog:3 message:{"%s Using Debug Value for DebugCmdBTSCOEnable: BTSCO is %s", "__WiFiDeviceManagerDebugAutoJoin", v46}];
            }

LABEL_125:
            v57 = v44;
LABEL_130:
            objc_autoreleasePoolPop(v57);
            break;
          case 0x11u:
            sub_10019FEA4();
            return v63;
          default:
            v29 = objc_autoreleasePoolPush();
            v30 = off_100298C40;
            if (!off_100298C40)
            {
              goto LABEL_59;
            }

            v31 = v62;
            goto LABEL_58;
        }

        return 0;
      case 5:
        sub_10019F67C(a1, theDict, &v63);
        return v63;
      case 6:
        if (!a1)
        {
          v20 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s manager is NULL", "__WiFiDeviceManagerDebugSimulateWiFiAssistOverrideCondition", v60}];
          }

          goto LABEL_31;
        }

        if (!theDict)
        {
          v20 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s request is NULL", "__WiFiDeviceManagerDebugSimulateWiFiAssistOverrideCondition", v60}];
          }

          goto LABEL_31;
        }

        v18 = CFDictionaryGetValue(theDict, @"DebugCommand");
        if (v18)
        {
          v63 = -1431655766;
          if (CFNumberGetValue(v18, kCFNumberIntType, &v63))
          {
            v19 = v63;
            v20 = objc_autoreleasePoolPush();
            if (v19)
            {
              if (off_100298C40)
              {
                [off_100298C40 WFLog:4 message:{"%s: Unknown debug command %d", "__WiFiDeviceManagerDebugSimulateWiFiAssistOverrideCondition", v63}];
              }
            }

            else
            {
              v38 = [(__CFDictionary *)theDict valueForKey:@"DebugCommandValueDict"];
              if (v38)
              {
                v39 = v38;
                v40 = [objc_msgSend(v38 valueForKey:{@"movingNetwork", "intValue"}];
                v41 = [objc_msgSend(v39 valueForKey:{@"edgeBssWalkout", "intValue"}];
                v42 = [objc_msgSend(v39 valueForKey:{@"badRepNetwork", "intValue"}];
                *(a1 + 54) = v42 != 0;
                *(a1 + 52) = v40 != 0;
                *(a1 + 53) = v41 != 0;
                v43 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: Simulating wifi-assist conditions badReputationNetwork:%d  movingNetwork:%d edgeBssWalkOut: %d", "__WiFiDeviceManagerDebugSimulateWiFiAssistOverrideCondition", *(a1 + 54), *(a1 + 52), *(a1 + 53)}];
                }

                objc_autoreleasePoolPop(v43);
                if (v42 || v40 || v41)
                {
                  v13 = 0;
                  *(a1 + 55) = 1;
                }

                else
                {
                  v13 = 0;
                  *(a1 + 55) = 0;
                }

                goto LABEL_80;
              }

              sub_10019F61C();
            }

LABEL_31:
            v13 = 4294963396;
LABEL_80:
            objc_autoreleasePoolPop(v20);
            return v13;
          }
        }

LABEL_158:
        v13 = 4294963396;
        break;
      case 8:
        if (!a1)
        {
          sub_10019F5BC();
          goto LABEL_158;
        }

        if (!theDict)
        {
          sub_10019F55C();
          goto LABEL_158;
        }

        v22 = CFDictionaryGetValue(theDict, @"DebugCommand");
        if (!v22)
        {
          goto LABEL_158;
        }

        v63 = -1431655766;
        CFNumberGetValue(v22, kCFNumberIntType, &v63);
        if (v63 != 1)
        {
          goto LABEL_56;
        }

        v23 = *(a1 + 7128);
        if (v23)
        {
          MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v23);
        }

        else
        {
          MutableCopy = 0;
        }

LABEL_48:
        v13 = 0;
        *a4 = MutableCopy;
        return v13;
      case 10:
        sub_1000C8674(a1, 0, 0);
        return 0;
      case 13:
        if (!a4)
        {
          goto LABEL_158;
        }

        v24 = *(a1 + 7480);
        if (!v24)
        {
          return 4294963393;
        }

        v25 = [v24 summaryForInterface:a2];
        goto LABEL_47;
      case 15:
        if (!a4)
        {
          goto LABEL_158;
        }

        v26 = *(a1 + 7480);
        if (!v26)
        {
          return 4294963393;
        }

        v25 = [v26 lastBssSessionInfoForInterface:a2];
LABEL_47:
        MutableCopy = [v25 copy];
        goto LABEL_48;
      case 16:
        if (a1 && (v17 = *(a1 + 4616)) != 0)
        {
          v17(a1, 16, a2, *(a1 + 4624));
        }

        else
        {
          sub_1000D79C8(a1, -1);
        }

        return 0;
      case 17:
        if (!a1)
        {
          sub_10019F4FC();
          goto LABEL_158;
        }

        if (!theDict)
        {
          sub_10019F49C();
          goto LABEL_158;
        }

        v27 = CFDictionaryGetValue(theDict, @"DebugCommand");
        if (!v27)
        {
          goto LABEL_158;
        }

        v63 = -1431655766;
        CFNumberGetValue(v27, kCFNumberIntType, &v63);
        v28 = CFDictionaryGetValue(theDict, @"DebugCommandValueDict");
        if (!v28)
        {
          sub_10019F434(&v63);
          goto LABEL_158;
        }

        if (v63 > 0xE)
        {
          goto LABEL_56;
        }

        if (((1 << v63) & 0x703F) != 0)
        {
          sub_1000B16DC(v28, a2, a1, v28);
        }

        else
        {
          v35 = CFDictionaryGetValue(v28, @"BSP_CommandParams");
          v36 = *(a1 + 64);
          v37 = sub_100006F88(v36);
          sub_10001EA10(v36, v37, @"BSP_CommandParams", v35);
        }

        return 0;
      case 19:
        if (!a4)
        {
          goto LABEL_158;
        }

        if (!+[WiFiUserInteractionMonitor sharedInstance])
        {
          return 4294963393;
        }

        v34 = objc_alloc_init(NSMutableDictionary);
        [v34 setObject:-[WiFiUserInteractionMonitor description](+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor forKeyedSubscript:{"sharedInstance"), "description"), @"description"}];
        v13 = 0;
        *a4 = v34;
        return v13;
      case 20:
        if (!a1)
        {
          sub_10019F3D4();
          goto LABEL_158;
        }

        if (!theDict)
        {
          sub_10019F374();
          goto LABEL_158;
        }

        v14 = CFDictionaryGetValue(theDict, @"DebugCommand");
        if (!v14)
        {
          goto LABEL_158;
        }

        v63 = -1431655766;
        CFNumberGetValue(v14, kCFNumberIntType, &v63);
        v15 = CFDictionaryGetValue(theDict, @"DebugCommandValueDict");
        if (!v15)
        {
          sub_10019F30C(&v63);
          goto LABEL_158;
        }

        if (v63)
        {
LABEL_56:
          v29 = objc_autoreleasePoolPush();
          v30 = off_100298C40;
          if (off_100298C40)
          {
            v31 = v63;
LABEL_58:
            [v30 WFLog:4 message:{"Unknown debug command %d", v31}];
          }

LABEL_59:
          v32 = v29;
LABEL_60:
          objc_autoreleasePoolPop(v32);
          goto LABEL_158;
        }

        v16 = *(a1 + 4856);
        if (v16)
        {
          v16(a1, a2, *(a1 + 4864), v15);
        }

        return 0;
      case 21:
        v21 = *(a1 + 7480);
        if (!v21)
        {
          return 4294963393;
        }

        [v21 resetDeviceSessionforInterface:a2];
        return 0;
      case 22:
        if (a1)
        {
          v33 = CFDictionaryGetValue(theDict, @"DebugCommandValueDict");
          if (v33)
          {
            v63 = -1431655766;
            if (CFNumberGetValue(v33, kCFNumberIntType, &v63))
            {
              [*(a1 + 7480) updateLinkTestInterval:v63];
            }
          }
        }

        return 0;
      case 24:
        if ([*(a1 + 7480) submitBeaconInfoToCAForInterface:a2])
        {
          return 0;
        }

        else
        {
          return 4294963393;
        }

      default:
        goto LABEL_10;
    }
  }

  else
  {
LABEL_10:
    sub_10014F140(*(a1 + 64), a2, theDict, a4);
    return v12;
  }

  return v13;
}

void sub_1000D02D0(uint64_t a1, CFDictionaryRef theDict, int a3)
{
  v6 = a1 + 4096;
  valuePtr = 0;
  Value = CFDictionaryGetValue(theDict, @"BGSCAN_CACHE");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr + 4);
    *(v6 + 1432) = BYTE4(valuePtr);
  }

  v8 = CFDictionaryGetValue(theDict, @"BGSCAN_CACHE_WSB_ROLLOVER");
  if (v8)
  {
    CFNumberGetValue(v8, kCFNumberIntType, &valuePtr);
    *(v6 + 1434) = valuePtr;
  }

  v9 = CFDictionaryGetValue(theDict, @"SCAN_CHANNELS");
  if (!v9)
  {
    v13 = 0;
    Mutable = 0;
    if (!a3)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v10 = v9;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v12 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v13 = v12;
  if (Mutable)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    goto LABEL_17;
  }

  v15 = *(a1 + 64);
  v16 = sub_100006F88(v15);
  if (sub_10001A6E4(v15, v16, Mutable))
  {
    goto LABEL_11;
  }

  if (CFArrayGetCount(Mutable) >= 1)
  {
    v18 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v18);
      if (ValueAtIndex)
      {
        v20 = CFDictionaryGetValue(ValueAtIndex, @"SUP_CHANNEL");
        CFArrayAppendValue(v13, v20);
      }

      ++v18;
    }

    while (CFArrayGetCount(Mutable) > v18);
  }

  Count = CFArrayGetCount(v10);
  if (Count < 1)
  {
LABEL_11:
    v17 = *(a1 + 5520);
    if (v17)
    {
      CFRelease(v17);
      *(a1 + 5520) = 0;
    }

    *(a1 + 5520) = CFRetain(v10);
    if (!a3)
    {
LABEL_17:
      if (!Mutable)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

LABEL_16:
    sub_1000C0CA0(a1);
    goto LABEL_17;
  }

  v22 = Count;
  v23 = 0;
  while (1)
  {
    v24 = CFArrayGetValueAtIndex(v10, v23);
    v25 = CFDictionaryGetValue(v24, @"CHANNEL");
    v28.length = CFArrayGetCount(v13);
    v28.location = 0;
    if (!CFArrayContainsValue(v13, v28, v25))
    {
      break;
    }

    if (v22 == ++v23)
    {
      goto LABEL_11;
    }
  }

  v26 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Client sent Invalid channel %s %@", "WiFiDeviceManagerSetBGScanCacheState", v25}];
  }

  objc_autoreleasePoolPop(v26);
  if (Mutable)
  {
LABEL_18:
    CFRelease(Mutable);
  }

LABEL_19:
  if (v13)
  {
    CFRelease(v13);
  }
}

void sub_1000D0548(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    v3 = *(a1 + 64);
    v4 = sub_100006F88(v3);

    sub_10006140C(v3, v4, a2);
  }

  else
  {
    sub_10019FF6C();
  }
}

uint64_t sub_1000D05A4(uint64_t a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    return 4294963396;
  }

  v3 = sub_10013F648(*(a1 + 120), a2);
  v4 = sub_10004879C(*(a1 + 120));
  [*(a1 + 7480) setTdLogic_badRssiThreshold:v4 goodRssiThreshold:v5];
  return v3;
}

uint64_t sub_1000D05F8(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  if (a1)
  {
    if (a2)
    {
      *(a1 + 6280) = *(a2 + 5);
      sub_10006121C(*(a1 + 64), &v6);
      *(a2 + 6) &= v6;
    }

    return sub_100043C30(*(a1 + 120), a2);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: NULL Device Manager !", "WiFiDeviceManagerSetLQAConfig"}];
    }

    objc_autoreleasePoolPop(v5);
    return 4294963396;
  }
}

uint64_t sub_1000D06A8(uint64_t a1, int a2)
{
  if (a1)
  {
    v3 = *(a1 + 120);

    return sub_100043D30(v3, a2);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: NULL Device Manager !", "WiFiDeviceManagerSetRNFState"}];
    }

    objc_autoreleasePoolPop(v5);
    return 4294963396;
  }
}

void sub_1000D0724(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1)
  {
    [*(a1 + 6720) setDefaultDenyListThresholds];
  }

  else
  {
    sub_10019FFD8();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000D07C8(uint64_t a1, int a2)
{
  v3 = *(a1 + 360);
  v4 = v3 & 0xFFFFFFFE;
  if (a2)
  {
    ++v4;
  }

  *(a1 + 360) = v4;
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (v5)
  {
    if (!v4)
    {
      dispatch_source_set_timer(*(a1 + 368), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"Auto-join deferral canceled."];
      }

      objc_autoreleasePoolPop(v6);
      if (v3)
      {
        *(a1 + 192) = 12;
        if (_os_feature_enabled_impl())
        {

          sub_100019814(a1, 0xEuLL);
        }

        else
        {
          [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];

          sub_1000BD310(a1, 2, "__WiFiDeviceManagerSetAutoJoinDeferral");
        }
      }
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = v7;
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"Auto-join will be deferred for 2 seconds."];
    }

    objc_autoreleasePoolPop(v8);
    v9 = *(a1 + 368);
    v10 = dispatch_time(0, 2000000000);
    dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
    *(a1 + 376) = CFAbsoluteTimeGetCurrent();
  }
}