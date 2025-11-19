BOOL sub_1000E0A04(uint64_t a1, void *a2, const void *a3)
{
  v6 = objc_autoreleasePoolPush();
  if (!a2)
  {
    v7 = objc_autoreleasePoolPush();
    v10 = off_100298C40;
    if (off_100298C40)
    {
      v41 = a3;
      v9 = "%s: null network,  isFilteringAJCandidates %d";
LABEL_25:
      [v10 WFLog:3 message:{v9, "__WiFiDeviceManagerKnownNetworkSuitabilityCheck", v41, v42}];
      goto LABEL_26;
    }

    goto LABEL_26;
  }

  if (CFSetContainsValue(*(a1 + 3552), a2))
  {
    v7 = objc_autoreleasePoolPush();
    v8 = off_100298C40;
    if (off_100298C40)
    {
      v41 = sub_10000A878(a2);
      v42 = a3;
      v9 = "%s: user canceled network %@, isFilteringAJCandidates %d";
LABEL_24:
      v10 = v8;
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (&_CNForgetSSID && sub_10000A540(a2, kCNSIsWhitelistedCaptiveNetworkProperty) == kCFBooleanTrue)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = off_100298C40;
    if (off_100298C40)
    {
      v41 = sub_10000A878(a2);
      v9 = "%s: %@ auto-join disabled for potentially bypassing captive detection";
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  if (sub_100177324(a2))
  {
    v7 = objc_autoreleasePoolPush();
    v8 = off_100298C40;
    if (off_100298C40)
    {
      v41 = sub_10000A878(a2);
      v42 = a3;
      v9 = "%s: disabled until first user join network %@ isFilteringAJCandidates %d";
      goto LABEL_24;
    }

LABEL_26:
    objc_autoreleasePoolPop(v7);
    v11 = 0;
    goto LABEL_27;
  }

  if (sub_10017740C(a2))
  {
    v7 = objc_autoreleasePoolPush();
    v8 = off_100298C40;
    if (off_100298C40)
    {
      v41 = sub_10000A878(a2);
      v9 = "%s: disabled because %@ is an infrequently joined public network";
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  if (sub_100022834(a2))
  {
    v7 = objc_autoreleasePoolPush();
    v8 = off_100298C40;
    if (off_100298C40)
    {
      v41 = sub_10000A878(a2);
      v9 = "%s: accessory network (%@) is not suitable for autojoin";
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  if (a3)
  {
    if (sub_1001901C0(a1, a2))
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (sub_100177158(a2))
    {
      v7 = objc_autoreleasePoolPush();
      v8 = off_100298C40;
      if (off_100298C40)
      {
        v41 = sub_10000A878(a2);
        v42 = 0;
        v9 = "%s: disabled for Fully Loaded Network %@ isFilteringAJCandidates %d";
        goto LABEL_24;
      }

      goto LABEL_26;
    }

    if (sub_1001901C0(a1, a2))
    {
LABEL_31:
      v7 = objc_autoreleasePoolPush();
      v8 = off_100298C40;
      if (!off_100298C40)
      {
        goto LABEL_26;
      }

      v41 = sub_10000A878(a2);
      v42 = a3;
      v9 = "%s: disabled for missing password Network %@ isFilteringAJCandidates %d";
      goto LABEL_24;
    }

    if (sub_10009F2A4(a2) && !sub_100009730(a2) && !sub_100174C78(a2))
    {
      v49 = 0;
      v33 = sub_10009F954(a2, &v49 + 1, 0.1);
      if (v33)
      {
        if (HIBYTE(v49))
        {
          goto LABEL_36;
        }
      }

      else
      {
        v33 = sub_10009FB8C(a2, &v49, 0.1);
        if (!v33)
        {
          v39 = HIBYTE(v49) | v49;
          v7 = objc_autoreleasePoolPush();
          if (!v39)
          {
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"%s: No password found for %@, return as unsuitable", "__WiFiDeviceManagerKnownNetworkSuitabilityCheck", sub_10000A878(a2), v42}];
            }

            goto LABEL_26;
          }

          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s: Keychain fetch for %@ timed out, password presence unknown, ignoring", "__WiFiDeviceManagerKnownNetworkSuitabilityCheck", sub_10000A878(a2)}];
          }

          objc_autoreleasePoolPop(v7);
          goto LABEL_36;
        }

        if (v49)
        {
          goto LABEL_36;
        }
      }

      CFRelease(v33);
    }
  }

LABEL_36:
  v13 = sub_10001A9BC(a2);
  v47 = 0.0;
  v48 = 0;
  v14 = [*(a1 + 6720) isNetworkTemporarilyDenyListedForAutoJoin:v13];
  v15 = [*(a1 + 6720) isNetworkInDenyListedState:1 scanResult:v13];
  v16 = [*(a1 + 6720) isNetworkDenyListedForAutoJoinDueToTrigDisc:v13 RSSI:&v48 timestamp:&v47];
  if (a3)
  {
    v17 = v14;
  }

  else
  {
    v17 = v15 | v14;
  }

  v46 = v17;
  v18 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Network '%@', isFilteringAJCandidates %d, isSSIDTemporarilyDenylisted %d, isBSSIDDenylisted %d, isTDDenylisted %d", "__WiFiDeviceManagerKnownNetworkSuitabilityCheck", sub_10000A878(a2), a3, v14, v15, v16}];
  }

  objc_autoreleasePoolPop(v18);
  v19 = v46;
  v11 = ((v46 | v16) & 1) == 0;
  if (a3)
  {
    if ((v16 & 1) != 0 || sub_10019057C(a1, a2))
    {
      v20 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: disabled for non-TD, non-onDemand problematic Network %@ isFilteringAJCandidates %d", "__WiFiDeviceManagerKnownNetworkSuitabilityCheck", sub_10000A878(a2), 1}];
      }

      objc_autoreleasePoolPop(v20);
      v11 = 1;
    }
  }

  else
  {
    if (!(v16 & 1 | (((v15 | v14) & 1) == 0)))
    {
      v25 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Not considering problematic Network %@ isSSIDTemporarilyDenylisted %d isBSSIDDenylisted %d isFilteringAJCandidates %d isTDDenylisted %d", "__WiFiDeviceManagerKnownNetworkSuitabilityCheck", sub_10000A878(a2), v14, v15, 0, v16}];
      }

      goto LABEL_62;
    }

    if (v16)
    {
      if (sub_1000C59AC(a1, a2, v48, v47))
      {
        v11 = 1;
      }

      else
      {
        v11 = ((v46 | v16) & 1) == 0;
      }
    }

    if (sub_100190354(a1, a2))
    {
      v34 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"Use problematic network %@ for auto-join, as rssi improved", sub_10000A878(a2)}];
      }

      objc_autoreleasePoolPop(v34);
      v11 = 1;
    }

    v35 = sub_100006F88(*(a1 + 64));
    v36 = sub_100007D90(a1, v35, 1);
    if (v36)
    {
      v37 = v36;
      if (!sub_10000AFE4(v36) && CFEqual(v37, a2))
      {
        v38 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: skipping current network %@ as auto-join candidate", "__WiFiDeviceManagerKnownNetworkSuitabilityCheck", sub_10000A878(a2)}];
        }

        objc_autoreleasePoolPop(v38);
        v11 = 0;
      }

      CFRelease(v37);
    }

    v19 = v46;
  }

  v21 = _os_feature_enabled_impl();
  if (!a3 && ((v21 ^ 1 | v16 | v19) & 1) == 0)
  {
    v22 = *(a1 + 3560);
    if (v22 && CFEqual(v22, a2) && !sub_100064904(*(a1 + 64)) && ![+[WiFiUserInteractionMonitor isCellularDataUsable] sharedInstance]
    {
      v25 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: %@ previously disconnected network and no alternative network interface - ok to autojoin", "__WiFiDeviceManagerKnownNetworkSuitabilityCheck", sub_10000A878(a2)}];
      }

      goto LABEL_138;
    }

    if ([+[WiFiUserInteractionMonitor isPriorityNetwork:"isPriorityNetwork:"]
    {
      v23 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: current network %@ is a Priority Network", "__WiFiDeviceManagerKnownNetworkSuitabilityCheck", sub_10000A878(a2)}];
      }

      objc_autoreleasePoolPop(v23);
      if (![+[WiFiUserInteractionMonitor isRealTimeAppActive] sharedInstance]
      {
        v25 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Priority Network with no RT traffic - ok to autojoin", "__WiFiDeviceManagerKnownNetworkSuitabilityCheck", v40}];
        }

        goto LABEL_138;
      }

      v24 = sub_100034EEC(a2, @"RSSI");
      v25 = objc_autoreleasePoolPush();
      if (v24 >= -70)
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Priority Network with RT traffic and Favorable RSSI - ok to autojoin", "__WiFiDeviceManagerKnownNetworkSuitabilityCheck", v40}];
        }

LABEL_138:
        v11 = 1;
        goto LABEL_139;
      }

      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Priority Network with RT traffic and Unfavorable RSSI - defer autojoin", "__WiFiDeviceManagerKnownNetworkSuitabilityCheck", v40, v42, v43, v44, v45}];
      }
    }

    else if ([+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor isPublicNetwork:"isPublicNetwork:", a2]|| sub_1000A1F04(a2) && [+[WiFiUserInteractionMonitor isCellularDataUsable] sharedInstance]
    {
      if ([*(a1 + 9088) confidence] == 2)
      {
        [objc_msgSend(*(a1 + 9088) "settledDate")];
        v27 = v26;
        [objc_msgSend(*(a1 + 9088) "settledDate")];
        if (v27 < 0.0)
        {
          v28 = -v28;
        }

        if (v28 < 300.0 && ([+[WiFiUserInteractionMonitor isCarModeActive]|| (*(a1 + 3408) | 2) == 6 sharedInstance])
        {
          v25 = objc_autoreleasePoolPush();
          v29 = off_100298C40;
          if (off_100298C40)
          {
            [objc_msgSend(*(a1 + 9088) "settledDate")];
            v31 = v30;
            [objc_msgSend(*(a1 + 9088) "settledDate")];
            if (v31 < 0.0)
            {
              v32 = -v32;
            }

            [v29 WFLog:3 message:{"%s: Public, Carrier (no cellular), or Outdoor Network, High Confidence Settlement (%.3fs ago, timeout=%ds), Driving - defer autojoin", "__WiFiDeviceManagerKnownNetworkSuitabilityCheck", *&v32, 300, v43, v44, v45}];
          }
        }

        else if ([+[WiFiUserInteractionMonitor isLowQualityNetwork:"isLowQualityNetwork:"]
        {
          v25 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: Public, Carrier (no cellular), or Outdoor Network, High Confidence Settlement, Low Quality - defer autojoin", "__WiFiDeviceManagerKnownNetworkSuitabilityCheck", v40, v42, v43, v44, v45}];
          }
        }

        else
        {
          if (![+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor isRealTimeAppActive]|| ![+[WiFiUserInteractionMonitor isCellularInexpensive5G] sharedInstance]
          {
            v25 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: Public, Carrier (no cellular), or Outdoor Network, High Confidence Settlement, Ok Quality with no RT traffic or Expensive Cellular - ok to autojoin", "__WiFiDeviceManagerKnownNetworkSuitabilityCheck", v40}];
            }

            goto LABEL_138;
          }

          v25 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: Public, Carrier (no cellular), or Outdoor Network, High Confidence Settlement, Ok Quality with RT traffic and Inexpensive Cellular - defer autojoin", "__WiFiDeviceManagerKnownNetworkSuitabilityCheck", v40, v42, v43, v44, v45}];
          }
        }
      }

      else if ([+[WiFiUserInteractionMonitor isCarModeActive]|| (*(a1 + 3408) | 2) == 6 sharedInstance]
      {
        v25 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Public, Carrier (no cellular), or Outdoor Network, Low Confidence Settlement, Driving - defer autojoin", "__WiFiDeviceManagerKnownNetworkSuitabilityCheck", v40, v42, v43, v44, v45}];
        }
      }

      else if ([+[WiFiUserInteractionMonitor isLowQualityNetwork:"isLowQualityNetwork:"]
      {
        v25 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Public, Carrier (no cellular), or Outdoor Network, Low Confidence Settlement, Low Quality, Not Driving - defer autojoin", "__WiFiDeviceManagerKnownNetworkSuitabilityCheck", v40, v42, v43, v44, v45}];
        }
      }

      else
      {
        if (![+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor isRealTimeAppActive]|| ![+[WiFiUserInteractionMonitor isCellularInexpensive5G] sharedInstance]
        {
          v25 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: Public, Carrier (no cellular), or Outdoor Network, Low Confidence Settlement, Ok Quality, Not Driving with no RT traffic or Expensive Cellular - ok to autojoin", "__WiFiDeviceManagerKnownNetworkSuitabilityCheck", v40}];
          }

          goto LABEL_138;
        }

        v25 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Public, Carrier (no cellular), or Outdoor Network, Low Confidence Settlement, Ok Quality, Not Driving with RT traffic and Inexpensive Cellular - defer autojoin", "__WiFiDeviceManagerKnownNetworkSuitabilityCheck", v40, v42, v43, v44, v45}];
        }
      }
    }

    else
    {
      if (![+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor isRealTimeAppActive]|| ![+[WiFiUserInteractionMonitor isCellularInexpensive5G] sharedInstance]
      {
        v25 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Non-Public, Non-Carrier (or cellular available), Non-Outdoor Network, with RT traffic and Inexpensive Cellular - ok to autojoin", "__WiFiDeviceManagerKnownNetworkSuitabilityCheck", v40}];
        }

        goto LABEL_138;
      }

      v25 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Non-Public, Non-Carrier (or cellular available), Non-Outdoor Network, with RT traffic and Inexpensive Cellular - defer autojoin", "__WiFiDeviceManagerKnownNetworkSuitabilityCheck", v40, v42, v43, v44, v45}];
      }
    }

LABEL_62:
    v11 = 0;
LABEL_139:
    objc_autoreleasePoolPop(v25);
  }

  if (v13)
  {
  }

LABEL_27:
  objc_autoreleasePoolPop(v6);
  return v11;
}

void sub_1000E1594(uint64_t a1, const void *a2, int a3)
{
  if (a1)
  {
    if (a2)
    {
      if (*(a1 + 3728))
      {
        v5 = sub_10000A878(a2);
        if (v5)
        {
          v6 = v5;
          if (a3)
          {
            valuePtr = CFAbsoluteTimeGetCurrent();
            v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &valuePtr);
            if (v7)
            {
              v8 = v7;
              CFDictionaryAddValue(*(a1 + 3728), v6, v7);
              CFRelease(v8);
              v9 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: Added %@ at %f", "__WiFiDeviceManagerManageMissingPasswordList", v6, *&valuePtr}];
              }

              objc_autoreleasePoolPop(v9);
            }

            else
            {
              sub_1001A4500();
            }
          }

          else
          {
            v10 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: Remove %@, added at %@", "__WiFiDeviceManagerManageMissingPasswordList", v6, CFDictionaryGetValue(*(a1 + 3728), v6)}];
            }

            objc_autoreleasePoolPop(v10);
            v11 = *(a1 + 3728);

            CFDictionaryRemoveValue(v11, v6);
          }
        }

        else
        {
          sub_1001A4560();
        }
      }

      else
      {
        sub_1001A45CC();
      }
    }

    else
    {
      sub_1001A4638();
    }
  }

  else
  {
    sub_1001A46A4();
  }
}

void sub_1000E1714(uint64_t a1)
{
  if (!a1)
  {
    sub_1001A4710();
  }
}

void sub_1000E1738(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v8 = 0;
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 4600);
    if (v4)
    {
      v4(v3, &v8, &v9, *(v3 + 4608));
      v5 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s BatteryInfo. batterylevel:%u. externalPowerSupply:%u", "__WiFiDeviceManagerCreateNetworkDenyList_block_invoke", v8, v9}];
      }

      objc_autoreleasePoolPop(v5);
      v6 = 1;
      if (!a2)
      {
        return;
      }

LABEL_10:
      (*(a2 + 16))(a2, v6, v9 != 0, v8);
      return;
    }
  }

  v7 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s Callbacks not available ", "__WiFiDeviceManagerCreateNetworkDenyList_block_invoke"}];
  }

  objc_autoreleasePoolPop(v7);
  v6 = 0;
  if (a2)
  {
    goto LABEL_10;
  }
}

uint64_t sub_1000E1840(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(a2 + 16))(a2, 1, *(*(result + 32) + 176) == 1);
  }

  return result;
}

void sub_1000E186C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 240))
  {
    v4 = *(a1 + 32);
    v3 = (a1 + 32);
    (*(v2 + 4792))(v2, *(*(v4 + 8) + 24), @"FailureCountCurrent", kCFBooleanTrue, *(v2 + 4800));
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

void sub_1000E18F8(uint64_t a1)
{
  sub_1000158B8(*(*(a1 + 32) + 120), 0, 0);
  v2 = *(*(a1 + 32) + 5536);
  v3 = *(a1 + 48);
  SCNetworkInterfaceSetPrimaryRank();
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: setting interface rank %s for network %@", "__WiFiDeviceManagerSetInterfaceRank_block_invoke", "kSCNetworkServicePrimaryRankDefault", sub_10000A878(*(a1 + 40))}];
  }

  objc_autoreleasePoolPop(v4);
}

void sub_1000E19AC(void *a1)
{
  v2 = a1[6];
  if (*(v2 + 240))
  {
    v3 = a1 + 5;
    (*(v2 + 4088))(v2, *(*(a1[4] + 8) + 24), *(v2 + 4096), *(*(a1[5] + 8) + 24));
    v4 = a1[6];
    v5 = v4[555];
    if (v5)
    {
      v5(v4, a1[7], v4[556], 1, 0);
      v4 = a1[6];
    }

    CFRelease(v4);
    v6 = *(*(a1[4] + 8) + 24);
    if (v6)
    {
      CFRelease(v6);
      *(*(a1[4] + 8) + 24) = 0;
    }

    v7 = *(*(*v3 + 8) + 24);
    if (!v7)
    {
      return;
    }

LABEL_12:
    CFRelease(v7);
    *(*(*v3 + 8) + 24) = 0;
    return;
  }

  CFRelease(v2);
  v8 = *(*(a1[4] + 8) + 24);
  if (v8)
  {
    CFRelease(v8);
    *(*(a1[4] + 8) + 24) = 0;
  }

  v10 = a1[5];
  v9 = a1 + 5;
  v7 = *(*(v10 + 8) + 24);
  if (v7)
  {
    v3 = v9;
    goto LABEL_12;
  }
}

void sub_1000E1AA4(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (*(a1 + 948) != 1)
  {
    return;
  }

  v61 = v9;
  v62 = v8;
  v63 = v7;
  v64 = v6;
  v65 = v4;
  v66 = v5;
  v14 = sub_1000A02C4(a2);
  v15 = sub_1000365A0(a2);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  LODWORD(v50) = (CFAbsoluteTimeGetCurrent() - *(a1 + 744));
  LODWORD(v57) = a4;
  v16 = sub_100058CA4(a3);
  v17 = @"unknown";
  if (v16)
  {
    v17 = v16;
  }

  *(&v56 + 1) = v17;
  if ((v14 & 0x100) != 0)
  {
    v18 = @"11ax";
  }

  else if ((v14 & 0x80) != 0)
  {
    v18 = @"11ac";
  }

  else if ((v14 & 0x10) != 0)
  {
    v18 = @"11n";
  }

  else
  {
    v18 = @"legacy";
  }

  *(&v57 + 1) = v18;
  WORD5(v55) = v15;
  *v49 = @"Unknown";
  *&v49[8] = @"Unknown";
  *&v49[16] = @"Unknown";
  if (*(a1 + 8880))
  {
    *v49 = *(a1 + 8880);
    *&v49[8] = *(a1 + 8888);
  }

  *(&v50 + 4) = *(a1 + 752);
  v19 = *(a1 + 768);
  HIDWORD(v50) = *(a1 + 760);
  LODWORD(v51) = v19;
  DWORD1(v51) = *(a1 + 764);
  *(&v51 + 1) = *(a1 + 776);
  v20 = *(a1 + 784);
  LODWORD(v52) = *(a1 + 792);
  DWORD1(v52) = v20;
  *(&v52 + 1) = *(a1 + 800);
  v21 = *(a1 + 808);
  LODWORD(v53) = *(a1 + 816);
  DWORD1(v53) = v21;
  *(&v53 + 1) = *(a1 + 824);
  v22 = *(a1 + 832);
  LODWORD(v54) = *(a1 + 840);
  DWORD1(v54) = v22;
  *(&v54 + 1) = *(a1 + 848);
  v23 = *(a1 + 856);
  LODWORD(v55) = *(a1 + 864);
  DWORD1(v55) = v23;
  v24 = *(a1 + 872);
  if (*(a1 + 892))
  {
    v25 = 1;
  }

  else
  {
    v25 = 5;
  }

  HIDWORD(v55) = *(a1 + 872);
  LODWORD(v56) = v25;
  v26 = sub_100014000(a2);
  if (v26)
  {
    valuePtr = -21846;
    CFNumberGetValue(v26, kCFNumberSInt16Type, &valuePtr);
    v27 = valuePtr;
  }

  else
  {
    v27 = 0;
  }

  WORD4(v55) = v27;
  *(a1 + 1088) = 0;
  if (*(a1 + 1048) == 1 && *(a1 + 840) <= 60.0)
  {
    v28 = *(a1 + 760);
    if (v28)
    {
      v29 = 1.0 / v28;
      v30 = v29 * (8 * ((800 * (*(a1 + 952) * 0.95)) * 1.87));
      v31 = v30 / (1000 * v50);
      if ((v14 & 0x100) != 0)
      {
        if (v15 == 80 && v28 > 600500)
        {
          goto LABEL_44;
        }

        v34 = 20.0;
        if (v15 == 20)
        {
          v35 = 143400;
        }

        else
        {
          if (v15 != 40)
          {
            goto LABEL_45;
          }

          v35 = 286800;
        }
      }

      else
      {
        if ((v14 & 0x80) == 0)
        {
          if ((v14 & 0x10) == 0)
          {
            v32 = "N";
            v33 = "N";
LABEL_47:
            v45 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: LPC - valid %s, rssi %.1lf, txRateMax %d, totalTxFrames %llu, bitAirTime %.4lf (us), totalAirTime %.2lf (ms), txDutyCycle %.3lf (%%), phyMode %@, isMimo %s, duration %d (s), power reduction %.2lf (uAh), txoffset %d:%d:%d:%d (%%)", "__WiFiDeviceManagerSubmitCarPlayLinkQualityMetrics", v33, *(a1 + 840), *(a1 + 760), *(a1 + 952), v29 * 1000.0, *&v30, v31 * 100.0, *(&v57 + 1), v32, v50, *(a1 + 1088), *(a1 + 1064), *(a1 + 1068), *(a1 + 1072), *(a1 + 1076)}];
            }

            objc_autoreleasePoolPop(v45);
            goto LABEL_50;
          }

          if (v15 != 40 || v28 <= 150000)
          {
            v34 = 20.0;
            v32 = "N";
            if (v15 != 20 || v28 < 72201)
            {
LABEL_46:
              v36 = *(a1 + 1064);
              v37.i64[0] = SDWORD2(v36);
              v37.i64[1] = SHIDWORD(v36);
              v38 = vcvtq_f64_s64(v37);
              v37.i64[0] = v36;
              v37.i64[1] = SDWORD1(v36);
              v39 = vdupq_n_s64(0x4059000000000000uLL);
              v40 = vdivq_f64(vcvtq_f64_s64(v37), v39);
              v41 = vdivq_f64(v38, v39);
              v42 = vmulq_n_f64(xmmword_1001CE790, v34);
              v43 = vmulq_f64(v41, vmulq_n_f64(xmmword_1001CE7A0, v34));
              v44 = vmulq_f64(v40, v42);
              v43.f64[0] = v31 * (v44.f64[0] + 0.0 + v44.f64[1] + v43.f64[0] + v43.f64[1]) * 1000.0;
              *(a1 + 1088) = v43.f64[0];
              LOBYTE(v58) = 1;
              *(&v58 + 1) = *(a1 + 1056);
              v59 = *(a1 + 1064);
              *(&v60 + 1) = *&v43.f64[0];
              v33 = "Y";
              goto LABEL_47;
            }
          }

LABEL_44:
          v32 = "Y";
          v34 = 40.0;
          goto LABEL_46;
        }

        if (v15 == 80 && v28 > 433300)
        {
          goto LABEL_44;
        }

        v34 = 20.0;
        if (v15 == 20)
        {
          v35 = 86700;
        }

        else
        {
          if (v15 != 40)
          {
            goto LABEL_45;
          }

          v35 = 200000;
        }
      }

      if (v28 > v35)
      {
        goto LABEL_44;
      }

LABEL_45:
      v32 = "N";
      goto LABEL_46;
    }
  }

LABEL_50:
  v46 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v47 = v46;
    [off_100298C40 WFLog:3 message:{"%s: rssi(max:min:avg:last) %d:%d:%d:%d, snr %d:%d:%d:%d, cca %d:%d:%d:%d, txRate %d:%d:%d:%d, rxRate %d:%d:%d:%d, numberOfTxErrorEvents %u, channel %d, bandwidth %u, linkDuration %u, roamedCount %u, linkDownReason %@, linkDownSubReason %d, lqmInterval %u, vehicleModel %@, vehicleManufacturer %@, hardwareVersion %@, phyMode %@", "__WiFiDeviceManagerSubmitCarPlayLinkQualityMetrics", HIDWORD(v53), DWORD2(v53), v54, DWORD1(v54), HIDWORD(v52), DWORD2(v52), v53, DWORD1(v53), HIDWORD(v54), DWORD2(v54), v55, DWORD1(v55), HIDWORD(v50), DWORD2(v50), v51, DWORD1(v51), HIDWORD(v51), DWORD2(v51), v52, DWORD1(v52), HIDWORD(v55), SWORD4(v55), WORD5(v55), v50, DWORD1(v50), *(&v56 + 1), v57, v56, *v49, *&v49[16], *(&v57 + 1)}];
    v46 = v47;
  }

  objc_autoreleasePoolPop(v46);
  sub_100056824(v49);
}

void sub_1000E20D8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = sub_1000648B8(*(*(a1 + 32) + 64)) != 1;
    [*(*(a1 + 32) + 7480) setLinkEvent:1 isInvoluntary:v3 linkChangeReason:0 linkChangeSubreason:0 withNetworkDetails:a2 forInterface:sub_100006F88(*(*(a1 + 32) + 64))];
  }
}

void sub_1000E2164(uint64_t a1, const void *a2)
{
  if (!*(a1 + 7152))
  {
    return;
  }

  if (!a2)
  {
    v5 = 0;
    v7 = 0;
    v6 = *(a1 + 64);
LABEL_16:

    sub_10005BEDC(v6, 0, v5, v7);
    return;
  }

  if (sub_1000A1F04(a2))
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Network:%@ is carrier based", "WiFiDeviceManagerCanRecommendNetworkToHotspotClients", sub_10000A878(a2)}];
    }
  }

  else if (sub_10009ED84(a2))
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Network:%@ is profile based", "WiFiDeviceManagerCanRecommendNetworkToHotspotClients", sub_10000A878(a2)}];
    }
  }

  else if (sub_100009730(a2))
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Network:%@ is EAP", "WiFiDeviceManagerCanRecommendNetworkToHotspotClients", sub_10000A878(a2)}];
    }
  }

  else if (sub_10009E718(a2))
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Network:%@ is captive", "WiFiDeviceManagerCanRecommendNetworkToHotspotClients", sub_10000A878(a2)}];
    }
  }

  else if (sub_10001CBF8(a2))
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Network:%@ is hidden", "WiFiDeviceManagerCanRecommendNetworkToHotspotClients", sub_10000A878(a2)}];
    }
  }

  else if (sub_10000A7CC(a2))
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Network:%@ is CarPlay", "WiFiDeviceManagerCanRecommendNetworkToHotspotClients", sub_10000A878(a2)}];
    }
  }

  else
  {
    if (!sub_1001772D4(a2))
    {
      v4 = sub_100018030(a2);
      if (v4)
      {
        v5 = 1 << v4;
      }

      else
      {
        v5 = 0;
      }

      v6 = *(a1 + 64);
      v7 = sub_10000A878(a2);
      goto LABEL_16;
    }

    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Network:%@ is chargeable", "WiFiDeviceManagerCanRecommendNetworkToHotspotClients", sub_10000A878(a2)}];
    }
  }

  objc_autoreleasePoolPop(v8);
  v9 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Not recommending network: %@ to PH clients", "WiFiDeviceManagerUpdateNetworkInHotspotIE", sub_10000A878(a2)}];
  }

  objc_autoreleasePoolPop(v9);
}

void sub_1000E2464(uint64_t a1, void *a2)
{
  if (a2)
  {
    [*(*(a1 + 32) + 7480) setLinkEvent:0 isInvoluntary:*(a1 + 48) != 0 linkChangeReason:*(a1 + 40) linkChangeSubreason:*(a1 + 44) withNetworkDetails:a2 forInterface:sub_100006F88(*(*(a1 + 32) + 64))];
  }
}

void sub_1000E24F0(uint64_t a1)
{
  if (*(a1 + 120))
  {
    if (*(a1 + 5632))
    {
      v2 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"Ignore Pending Active Probe !"];
      }

      objc_autoreleasePoolPop(v2);
      sub_10013E2D4(*(a1 + 120), *(a1 + 5632));
      v3 = *(a1 + 5632);
      if (v3)
      {
        CFRelease(v3);
        *(a1 + 5632) = 0;
      }
    }
  }

  else
  {
    sub_1001A47E8();
  }
}

void sub_1000E2574(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 code];
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Error returned from addAnalyticsValues, err = %d\n", "__WiFiDeviceManagerDonateCarPlayLinkMetricsToCarEvent_block_invoke", v3}];
    }

    objc_autoreleasePoolPop(v4);
  }

  v5 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) invalidate];
  }

  v6 = *(a1 + 32);
}

void sub_1000E2620(int a1, uint64_t a2, CFDictionaryRef theDict, uint64_t a4, uint64_t a5)
{
  if (!theDict || !a5)
  {
    return;
  }

  Value = CFDictionaryGetValue(theDict, @"LINK_CHANGED_IS_AVAILABLE");
  if (!Value)
  {
    v14 = *(a5 + 4488);
    if (!v14)
    {
      return;
    }

LABEL_23:
    v19 = *(a5 + 4496);

    v14(a5, a2, v19, theDict);
    return;
  }

  v9 = Value;
  v10 = CFBooleanGetValue(Value);
  v11 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v12 = "TRUE";
    if (v10)
    {
      v13 = "TRUE";
    }

    else
    {
      v13 = "FALSE";
    }

    if (!*(a5 + 5501))
    {
      v12 = "FALSE";
    }

    [off_100298C40 WFLog:3 message:{"%s: AWDL availability changed to %s, pendingRequest %s", "__WiFiDeviceManagerAwdlAvailableCallback", v13, v12}];
  }

  objc_autoreleasePoolPop(v11);
  v14 = *(a5 + 4488);
  if (v14)
  {
    if (*(a5 + 5480))
    {
      v15 = objc_autoreleasePoolPush();
      MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
      if (MutableCopy)
      {
        v17 = MutableCopy;
        if (![*(a5 + 5480) isPowerResourceAvailable:1] || (v18 = kCFBooleanTrue, !CFEqual(v9, kCFBooleanTrue)))
        {
          v18 = kCFBooleanFalse;
        }

        CFDictionarySetValue(v17, @"LINK_CHANGED_IS_AVAILABLE", v18);
        objc_autoreleasePoolPop(v15);
        (*(a5 + 4488))(a5, a2, *(a5 + 4496), v17);

        CFRelease(v17);
        return;
      }

      objc_autoreleasePoolPop(v15);
      v14 = *(a5 + 4488);
    }

    goto LABEL_23;
  }
}

void sub_1000E2810(int a1, uint64_t a2, CFDictionaryRef theDict, uint64_t a4, uint64_t a5)
{
  if (theDict && a5)
  {
    Value = CFDictionaryGetValue(theDict, @"LINK_CHANGED_IS_LINKDOWN");
    if (Value)
    {
      v9 = CFEqual(Value, kCFBooleanTrue);
      v10 = *(a5 + 5496);
      if (v9)
      {
        if (v10)
        {
          v11 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: AWDL link-down received when refCount is %d", "__WiFiDeviceManagerAwdlLinkEventCallback", *(a5 + 5496)}];
          }

          objc_autoreleasePoolPop(v11);
          if (!*(a5 + 5501) && ([+[WiFiP2PAWDLState currentState](WiFiP2PAWDLState "currentState")] & 1) == 0)
          {
            v12 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: AWDL link-down tearing down all active AWDL sessions", "__WiFiDeviceManagerAwdlLinkEventCallback"}];
            }

            objc_autoreleasePoolPop(v12);
            sub_1000BCA70(a5, a2);
          }
        }
      }

      else if (v10)
      {
        kdebug_trace();
        v13 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: AWDL link up, refcount %d", "__WiFiDeviceManagerAwdlLinkEventCallback", *(a5 + 5496)}];
        }

        objc_autoreleasePoolPop(v13);
      }

      v14 = *(a5 + 7480);
      if (v14)
      {
        [v14 setAwdlState:v9 == 0 inMode:0];
      }
    }

    else
    {
      v9 = 1;
    }

    sub_1000BBAE0(a5, 2, v9 == 0);
    v15 = *(a5 + 4488);
    if (v15)
    {
      v15(a5, a2, *(a5 + 4496), theDict);
    }

    v16 = *(a5 + 4440);
    if (v16)
    {
      v16(a5, a2, *(a5 + 4448), 3, theDict);
    }

    if (v9 && *(a5 + 5500))
    {
      v17 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: hosted AWDL session is down. Triggering auto-join", "__WiFiDeviceManagerAwdlLinkEventCallback"}];
      }

      objc_autoreleasePoolPop(v17);
      if (_os_feature_enabled_impl())
      {
        sub_100019814(a5, 9uLL);
      }

      else
      {
        [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
        sub_1000BD310(a5, 0, "__WiFiDeviceManagerAwdlLinkEventCallback");
      }
    }

    *(a5 + 5500) = v9 == 0;
  }
}

void sub_1000E2AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (*(a3 + 3470) != a2)
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        valuePtr = *(a3 + 3470);
        v47 = a2;
        v40 = "__WiFiDeviceManagerAwdlRealTimeModeEventCallback";
        [off_100298C40 WFLog:3 message:{"%s: AwdlRealTime: Before %d, Now %d"}];
      }

      objc_autoreleasePoolPop(v6);
      *(a3 + 3470) = a2;
      -[WiFiUsageMonitor updateRealTimeCoex:type:reasons:](+[WiFiUsageMonitor sharedInstance](WiFiUsageMonitor, "sharedInstance"), "updateRealTimeCoex:type:reasons:", a2 != 0, 0, [objc_msgSend(objc_alloc_init(WiFiP2PAWDLStateMonitor) "copyActiveServiceUniqueIdentifiers")]);
      if (a2)
      {
        sub_1001A4840(a3);
      }

      sub_100048AFC(*(a3 + 120), *(a3 + 3470));
      if (+[WiFiRoamManager sharedWiFiRoamManager])
      {
        [+[WiFiRoamManager sharedWiFiRoamManager](WiFiRoamManager "sharedWiFiRoamManager")];
      }

      if (!sub_1000657F4(*(a3 + 64)) || sub_1000D34B4(a3))
      {
        if (!a2)
        {
          if (_os_feature_enabled_impl())
          {
            sub_100019814(a3, 0x39uLL);
          }

          else if (*(a3 + 3467))
          {
            sub_1000BBDEC(a3, 3);
          }

          else
          {
            sub_1000BD310(a3, 2, "__WiFiDeviceManagerAwdlRealTimeModeEventCallback");
          }
        }
      }

      else if (!a2 && CFAbsoluteTimeGetCurrent() - *(a3 + 3776) > 60.0)
      {
        sub_1000C9608(a3, 0);
        *(a3 + 3776) = CFAbsoluteTimeGetCurrent();
      }

      sub_1000BBAE0(a3, 2, a2);
      sub_10014C1C0(*(a3 + 64), v7, v8, v9, v10, v11, v12, v13, v40, valuePtr, v47, v50, v53, v56, v59, v62, v65, v68);
      v21 = sub_10018B398(a3, v14, v15, v16, v17, v18, v19, v20, v41, valuePtrb, valuePtr_4, v48, v51, v54, v57, v60, v63, v66, v69, vars0, vars8);
      if (v21)
      {
        v22 = v21;
        MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v21);
        CFRelease(v22);
        if (MutableCopy)
        {
          v24 = &kCFBooleanTrue;
          if (!a2)
          {
            v24 = &kCFBooleanFalse;
          }

          CFDictionarySetValue(MutableCopy, @"AWDL_REAL_TIME_MODE", *v24);
          v32 = *(a3 + 4488);
          if (v32)
          {
            sub_10014C1C0(*(a3 + 64), v25, v26, v27, v28, v29, v30, v31, v42, valuePtra, v49, v52, v55, v58, v61, v64, v67, v70);
            v32(a3, v33, *(a3 + 4496), MutableCopy);
          }

          CFRelease(MutableCopy);
        }
      }

      if (a2)
      {
        Current = CFAbsoluteTimeGetCurrent();
        v35 = CFDateCreate(kCFAllocatorDefault, Current);
        if (v35)
        {
          v36 = v35;
          v37 = sub_100006F88(*(a3 + 64));
          v38 = sub_100007D90(a3, v37, 1);
          if (v38)
          {
            v39 = v38;
            sub_100175658(v38, v36);
            sub_1000C5B3C(a3, v39);
            CFRelease(v39);
          }

          CFRelease(v36);
        }

        sub_100190E38();
      }
    }
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: NULL Device Manager !", "__WiFiDeviceManagerAwdlRealTimeModeEventCallback"}];
    }

    objc_autoreleasePoolPop(v5);
  }
}

void sub_1000E2E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 && a5)
  {
    if (*(a5 + 5496))
    {
      kdebug_trace();
      v8 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: peer list changed", "__WiFiDeviceManagerAwdlPeerPresenceCallback"}];
      }

      objc_autoreleasePoolPop(v8);
    }

    v9 = *(a5 + 4488);
    if (v9)
    {
      v10 = *(a5 + 4496);

      v9(a5, a2, v10, a3);
    }
  }
}

void sub_1000E2F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = *(a3 + 4808);
    v8 = objc_autoreleasePoolPush();
    if (v7)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: p2pThreadCoexEventDict:%@ ", "__WiFiDeviceManagerP2pThreadCoexEventCallback", a4}];
      }

      objc_autoreleasePoolPop(v8);
      v9 = *(a3 + 4808);
      v10 = *(a3 + 4816);

      v9(a3, a2, v10, a4);
    }

    else
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: p2pThreadCoex callback is NULL!", "__WiFiDeviceManagerP2pThreadCoexEventCallback"}];
      }

      objc_autoreleasePoolPop(v8);
    }
  }

  else
  {
    sub_1001A48A0();
  }
}

void sub_1000E3028(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = sub_1000648B8(*(*(a1 + 32) + 64)) != 1;
    [*(*(a1 + 32) + 7480) setLinkEvent:1 isInvoluntary:v3 linkChangeReason:0 linkChangeSubreason:0 withNetworkDetails:a2 forInterface:sub_100006F88(*(*(a1 + 32) + 64))];
  }
}

void sub_1000E30B4(NSObject **a1, const void *a2, int a3, int a4)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        sub_10000AD34(a2, @"TransitionDisabledFlags", [NSNumber numberWithUnsignedInt:?]);
        if (a4)
        {

          sub_1000C5B3C(a1, a2);
        }
      }
    }
  }
}

void sub_1000E335C(id a1)
{
  v1 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"Requesting PersonalHotspotControl extension to reload because SoftAP client arrives"];
  }

  objc_autoreleasePoolPop(v1);
  v2 = +[CHSControlService sharedInstance];

  [(CHSControlService *)v2 reloadControlsForExtension:@"com.apple.WiFiKit.PersonalHotspotControl" kind:@"PersonalHotspotControl" reason:@"Requesting PersonalHotspotControl extension to reload because personal hotspot client arrives"];
}

void sub_1000E33DC(id a1)
{
  v1 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"Requesting PersonalHotspotControl extension to reload because SoftAP client leaves"];
  }

  objc_autoreleasePoolPop(v1);
  v2 = +[CHSControlService sharedInstance];

  [(CHSControlService *)v2 reloadControlsForExtension:@"com.apple.WiFiKit.PersonalHotspotControl" kind:@"PersonalHotspotControl" reason:@"Requesting PersonalHotspotControl extension to reload because personal hotspot client leaves"];
}

uint64_t sub_1000E345C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 1168);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 1168) = 0;
  }

  v4 = *(a1 + 3432);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 3432) = 0;
  }

  v5 = *(a1 + 3424);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 3424) = 0;
  }

  v6 = *(a1 + 3440);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 3440) = 0;
  }

  *(a1 + 3360) = 0;
  *(a1 + 1192) = 0;
  v7 = *(a1 + 3344);
  if (v7)
  {
    CFArrayRemoveAllValues(v7);
  }

  *(a1 + 5692) = 0;
  v8 = sub_10001A904(a1);
  if (!v8)
  {
    goto LABEL_33;
  }

  v9 = v8;
  [WiFiLocationManager logLocation:v8 addPrefixString:@"__WiFiDeviceManagerScanPreviousNetworkChannel"];
  v10 = [WiFiLocationManager isLocationValid:v9 uptoSeconds:1 isHighAccuracy:60.0];
  v11 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: isValid %d", "__WiFiDeviceManagerScanPreviousNetworkChannel", v10 != 0}];
  }

  objc_autoreleasePoolPop(v11);
  if (!v10)
  {
    goto LABEL_32;
  }

  v12 = [+[WiFiAnalyticsManager sharedWiFiAnalyticsManager](WiFiAnalyticsManager "sharedWiFiAnalyticsManager")];
  v13 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: score sorted networks %@", "__WiFiDeviceManagerScanPreviousNetworkChannel", v12}];
  }

  objc_autoreleasePoolPop(v13);
  *(a1 + 3440) = v9;
  CFRetain(v9);
  CFRelease(v9);
  if (!v12)
  {
LABEL_33:
    if (*(a1 + 3560))
    {
      v19 = *(a1 + 3624);
      v68.length = CFArrayGetCount(v19);
      v68.location = 0;
      if (CFArrayGetFirstIndexOfValue(v19, v68, *(a1 + 3560)) != -1)
      {
        ValueAtIndex = *(a1 + 3560);
        if (ValueAtIndex)
        {
          v21 = 6;
          goto LABEL_39;
        }
      }
    }

    if (CFArrayGetCount(*(a1 + 3624)))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 3624), 0);
      v21 = 6;
      if (ValueAtIndex)
      {
        goto LABEL_39;
      }
    }

    else
    {
      ValueAtIndex = 0;
      LODWORD(v21) = 6;
    }

LABEL_62:
    v37 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"multi-stage auto-join: No previous network (%p)", ValueAtIndex}];
    }

    v38 = v37;
    goto LABEL_76;
  }

  if (!CFArrayGetCount(v12) || CFArrayGetCount(v12) < 1)
  {
    v9 = v12;
LABEL_32:
    CFRelease(v9);
    goto LABEL_33;
  }

  v61 = v2;
  v14 = 0;
  while (1)
  {
    v15 = CFArrayGetValueAtIndex(v12, v14);
    if (v15)
    {
      break;
    }

LABEL_29:
    if (CFArrayGetCount(v12) <= ++v14)
    {
      goto LABEL_30;
    }
  }

  v16 = v15;
  sub_1000E6914(a1, v15);
  if (!sub_1000E0A04(a1, v16, 0))
  {
    v18 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: top network %@ is not eligible for aj ", "__WiFiDeviceManagerScanPreviousNetworkChannel", sub_10000A878(v16)}];
    }

    goto LABEL_28;
  }

  v17 = sub_100177510(*(a1 + 3624), v16);
  if (v17 == -1)
  {
    v18 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: top network <%@> does not exist in filtered known networks list, onto the next one ", "__WiFiDeviceManagerScanPreviousNetworkChannel", sub_10000A878(v16)}];
    }

LABEL_28:
    objc_autoreleasePoolPop(v18);
    goto LABEL_29;
  }

  v58 = CFArrayGetValueAtIndex(*(a1 + 3624), v17);
  if (!v58)
  {
LABEL_30:
    v9 = v12;
    v2 = v61;
    goto LABEL_32;
  }

  ValueAtIndex = v58;
  *(a1 + 5692) = 11;
  v59 = objc_autoreleasePoolPush();
  v2 = v61;
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Enter location based AJ's 1st stage - top network %@", "__WiFiDeviceManagerScanPreviousNetworkChannel", ValueAtIndex}];
  }

  objc_autoreleasePoolPop(v59);
  *(a1 + 3432) = ValueAtIndex;
  CFRetain(ValueAtIndex);
  *(a1 + 3424) = v12;
  CFRetain(v12);
  CFRelease(v12);
  v21 = 7;
LABEL_39:
  if (!sub_1000E0A04(a1, ValueAtIndex, 0))
  {
    goto LABEL_62;
  }

  if (sub_10000A7CC(ValueAtIndex) && !*(a1 + 696))
  {
    *(a1 + 672) = 0;
    *(a1 + 680) = 1;
    *(a1 + 696) = 1;
  }

  v22 = sub_10000A540(ValueAtIndex, @"CHANNEL");
  if (!v22)
  {
    v39 = objc_autoreleasePoolPush();
    v40 = off_100298C40;
    if (!off_100298C40)
    {
LABEL_75:
      v38 = v39;
LABEL_76:
      objc_autoreleasePoolPop(v38);
      v44 = 4294963396;
      goto LABEL_77;
    }

    v41 = "multi-stage auto-join: No channel info";
LABEL_74:
    [v40 WFLog:3 message:v41];
    goto LABEL_75;
  }

  v23 = v22;
  v62 = v2;
  if (!sub_10000A7CC(ValueAtIndex))
  {
LABEL_55:
    v32 = sub_10000A540(ValueAtIndex, @"CHANNEL_FLAGS");
    if (v32)
    {
      v33 = v32;
      v30 = v23;
      goto LABEL_57;
    }

    v39 = objc_autoreleasePoolPush();
    v40 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_75;
    }

    v41 = "multi-stage auto-join: No channel flags info";
    goto LABEL_74;
  }

  *(a1 + 680) = 0;
  v24 = sub_1000333E8(ValueAtIndex, @"CHANNEL");
  LODWORD(valuePtr[0]) = v24;
  *(a1 + 676) = v24;
  if (v24 > 14 || (v25 = sub_10000A540(ValueAtIndex, @"networkKnownBSSListKey")) == 0 || (v26 = v25, CFArrayGetCount(v25) < 2) || CFArrayGetCount(v26) < 1)
  {
LABEL_54:
    v2 = v62;
    goto LABEL_55;
  }

  v27 = 0;
  while (1)
  {
    v28 = CFArrayGetValueAtIndex(v26, v27);
    Value = CFDictionaryGetValue(v28, @"CHANNEL");
    if (Value)
    {
      v30 = Value;
      CFNumberGetValue(Value, kCFNumberSInt32Type, valuePtr);
      if (SLODWORD(valuePtr[0]) >= 36)
      {
        v31 = CFDictionaryGetValue(v28, @"CHANNEL_FLAGS");
        if (v31)
        {
          break;
        }
      }
    }

    if (CFArrayGetCount(v26) <= ++v27)
    {
      goto LABEL_54;
    }
  }

  v33 = v31;
  *(a1 + 676) = valuePtr[0];
  *(a1 + 680) = 1;
  v60 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Re-directed to connect to chanenl %d", "__WiFiDeviceManagerScanPreviousNetworkChannel", LODWORD(valuePtr[0])}];
  }

  objc_autoreleasePoolPop(v60);
LABEL_57:
  v63 = 0;
  if (sub_1000E6A7C(a1, &v63))
  {
    v34 = sub_1000333E8(ValueAtIndex, @"CHANNEL");
    if ((v34 - 1) <= 0xD)
    {
      v35 = v34;
      v36 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Disallowing 2.4Ghz channel %d for %@", "__WiFiDeviceManagerScanPreviousNetworkChannel", v35, sub_10000A878(ValueAtIndex)}];
      }

      goto LABEL_71;
    }
  }

  v63 = 0;
  if (sub_1000E6D08(a1, &v63))
  {
    v42 = sub_1000333E8(ValueAtIndex, @"CHANNEL");
    if (v42 >= 15)
    {
      v43 = v42;
      v36 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Disallowing 5Ghz channel %d for %@", "__WiFiDeviceManagerScanPreviousNetworkChannel", v43, sub_10000A878(ValueAtIndex)}];
      }

LABEL_71:
      v2 = v62;
      objc_autoreleasePoolPop(v36);
      *(a1 + 6232) = v63;
      v44 = 4294963394;
LABEL_77:
      v45 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"multi-stage auto-join: Error scanning for previous network, err=%d", v44}];
      }

      objc_autoreleasePoolPop(v45);
      if (*(a1 + 5592) == 1 || *(a1 + 5576))
      {
        *(a1 + 3340) = v21;
        v46 = sub_1000E6DF0(a1);
      }

      else
      {
        v46 = sub_1000E6EB0(a1);
      }

      v21 = v46;
      goto LABEL_83;
    }
  }

  valuePtr[0] = @"CHANNEL";
  valuePtr[1] = @"CHANNEL_FLAGS";
  values[0] = v30;
  values[1] = v33;
  v48 = CFDictionaryCreate(kCFAllocatorDefault, valuePtr, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v48)
  {
LABEL_106:
    v44 = 4294963394;
    v2 = v62;
    goto LABEL_77;
  }

  v49 = v48;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    CFRelease(v49);
    goto LABEL_106;
  }

  v51 = Mutable;
  CFArrayAppendValue(Mutable, v49);
  sub_1000E1714(a1);
  v52 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v53 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v54 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
      *buf = 136446210;
      v65 = v54;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v52);
  if (*(a1 + 5592) == 1 || *(a1 + 5576))
  {
    v56 = objc_autoreleasePoolPush();
    v2 = v62;
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: CarPlay scan dewll time (%d), channel (%d), dual band (%d)", "__WiFiDeviceManagerScanPreviousNetworkChannel", 40, *(a1 + 676), *(a1 + 680)}];
    }

    objc_autoreleasePoolPop(v56);
    v55 = 40;
  }

  else
  {
    v55 = 110;
    v2 = v62;
  }

  v57 = sub_100191A78(a1, *(a1 + 3600), v51, v55, 0x19);
  if (v57)
  {
    v44 = v57;
    CFRelease(v49);
    CFRelease(v51);
    goto LABEL_77;
  }

  CFArrayAppendValue(*(a1 + 3344), v49);
  CFRelease(v49);
  CFRelease(v51);
  *(a1 + 3340) = v21;
LABEL_83:
  objc_autoreleasePoolPop(v2);
  return v21;
}

uint64_t sub_1000E3DB4(uint64_t a1, void *a2, const __CFDictionary *a3, uint64_t a4)
{
  context = objc_autoreleasePoolPush();
  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v122 = [NSString stringWithFormat:@"%s: current state: %@", "__WiFiDeviceManagerProcessAssociationResult", sub_1000AA864(*(a1 + 3336))];
    v121 = [+[NSString stringWithFormat:](NSString UTF8String:@"{%@*} %@"];
    v9 = [NSString stringWithFormat:@"%s"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v121 = [(NSString *)v9 UTF8String];
      LODWORD(buf) = 136446210;
      *(&buf + 4) = [[NSString stringWithFormat:?]];
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v8);
  v156[0] = 0.0;
  if (a3)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, a3);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v11 = MutableCopy;
  if (MutableCopy)
  {
    v12 = sub_1000AA864(*(a1 + 3336));
    CFDictionaryAddValue(v11, @"reason", v12);
  }

  if (!a4)
  {
    if (sub_100009730(a2))
    {
      v157 = 0;
      v156[1] = 0.0;
      *buffer = 0;
      v164 = 0;
      v13 = sub_100009664(*(a1 + 64));
      CFStringGetCString(v13, buffer, 16, 0);
      EAPOLControlCopyStateAndStatus();
    }

    v18 = objc_autoreleasePoolPush();
    v19 = off_100298C40;
    if (off_100298C40)
    {
      v121 = "__WiFiDeviceManagerProcessAssociationResult";
      v122 = sub_10000A878(a2);
      [v19 WFLog:3 message:{"%s: %@ not an EAP network and not checking AT notification code, or is EAP network and does not have AT notification code"}];
    }

    objc_autoreleasePoolPop(v18);
    v20 = sub_10000B3A8(a1, a2, 1);
    v21 = v20;
    if (v20)
    {
      v22 = sub_10000A540(v20, @"ALLOW_WPA2_PSK");
      if (v22)
      {
        sub_10000AD34(a2, @"ALLOW_WPA2_PSK", v22);
      }

      v23 = sub_10000A540(v21, @"ALLOW_OWE_TSN");
      if (v23)
      {
        sub_10000AD34(a2, @"ALLOW_OWE_TSN", v23);
      }

      sub_100174EB4(v21, a2, v23, v24, v25, v26, v27, v28, v121, v122, v123, v124, source, v127, v128, v130, value, cf, v139, v142, context, v146, v147, v148, v149, p_buf);
      v29 = sub_10000DC20(v21);
      if (v29)
      {
        sub_10000AD34(a2, @"prevJoined", v29);
      }

      if (_os_feature_enabled_impl())
      {
        v30 = sub_10001A904(a1);
        v31 = v30;
        if (v30)
        {
          v32 = *(a1 + 6872);
          [v30 coordinate];
          [v31 coordinate];
          [v31 horizontalAccuracy];
          [v31 timestamp];
          sub_100160178();
        }

        if (*(a1 + 3470))
        {
          Current = CFAbsoluteTimeGetCurrent();
          v34 = CFDateCreate(kCFAllocatorDefault, Current);
          if (v34)
          {
            sub_100175658(a2, v34);
            CFRelease(v34);
          }
        }
      }

      CFRelease(v21);
    }

    v35 = CFAbsoluteTimeGetCurrent();
    v36 = CFDateCreate(kCFAllocatorDefault, v35);
    if (v36)
    {
      sub_1000A0170(a2, 0, v36);
      v37 = objc_autoreleasePoolPush();
      v38 = off_100298C40;
      if (off_100298C40)
      {
        v122 = sub_10000A878(a2);
        v123 = v36;
        v121 = "__WiFiDeviceManagerProcessAssociationResult";
        [v38 WFLog:3 message:"%s: setting auto association date for %@ to %@"];
      }

      objc_autoreleasePoolPop(v37);
      CFRelease(v36);
    }

    if (a2)
    {
      v39 = sub_10001A9BC(a2);
      [*(a1 + 6720) isNetworkDenyListedForAutoJoinDueToTrigDisc:v39 RSSI:0 timestamp:v156];
      sub_10013D5D8(*(a1 + 120), v156[0]);

      sub_100193574(a1, a2, 0);
      v40 = sub_10001A9BC(a2);
      [*(a1 + 6720) removeNetworkDenyListInfoWithReason:1 forScanResult:v40];
      [*(a1 + 6720) removeNetworkDenyListInfoForTrigger:0 forNetwork:v40];
    }

    else
    {
      v41 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v121 = "__WiFiDeviceManagerProcessAssociationResult";
        [off_100298C40 WFLog:3 message:"%s: Failed to set blacklist last trigger disconnect"];
      }

      objc_autoreleasePoolPop(v41);
      sub_100193574(a1, 0, 0);
      v42 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v121 = "__WiFiDeviceManagerProcessAssociationResult";
        [off_100298C40 WFLog:3 message:"%s: Failed to clear blacklist trigger"];
      }

      objc_autoreleasePoolPop(v42);
    }

    if (*(a1 + 3468))
    {
      v43 = objc_autoreleasePoolPush();
      v44 = off_100298C40;
      if (off_100298C40)
      {
        v121 = "__WiFiDeviceManagerProcessAssociationResult";
        v122 = sub_10000A878(a2);
        [v44 WFLog:3 message:"%s: tagging network %@ as moving"];
      }

      objc_autoreleasePoolPop(v43);
      v45 = &kCFBooleanTrue;
    }

    else
    {
      v45 = &kCFBooleanFalse;
    }

    sub_10000AD34(a2, @"WiFiNetworkAttributeIsMoving", *v45);
    if (*(a1 + 3516))
    {
      v46 = a2 == 0;
    }

    else
    {
      v46 = 1;
    }

    if (!v46)
    {
      sub_10000AD34(a2, @"TransitionDisabledFlags", [NSNumber numberWithUnsignedInt:?]);
    }

    sub_1000BFC58(a1, a2);
    if (*(a1 + 3920))
    {
      if (*(a1 + 240))
      {
        *&buf = 0;
        *(&buf + 1) = &buf;
        v168 = 0x2020000000;
        v169 = 0;
        *&v158 = 0;
        *(&v158 + 1) = &v158;
        v159 = 0x2020000000;
        v160 = 0;
        if (a2)
        {
          v47 = CFRetain(a2);
          *(*(&buf + 1) + 24) = v47;
        }

        if (v11)
        {
          v48 = CFRetain(v11);
          *(*(&v158 + 1) + 24) = v48;
        }

        CFRetain(a1);
        v49 = *(a1 + 240);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000EB1B8;
        block[3] = &unk_1002619D8;
        block[4] = &buf;
        block[5] = &v158;
        block[6] = a1;
        v155 = 0;
        dispatch_async(v49, block);
        _Block_object_dispose(&v158, 8);
        _Block_object_dispose(&buf, 8);
      }

      else
      {
        sub_1001A4ACC();
      }
    }

    sub_1000BD374(a1, 2, "__WiFiDeviceManagerProcessAssociationResult");
    CFArrayRemoveAllValues(*(a1 + 3608));
    CFArrayRemoveAllValues(*(a1 + 3616));
    [*(a1 + 3704) clearScanResultsForAutoJoinSessionReset];
    sub_1000ED650(a1, @"autoJoinSuccess", a2, 0);
    if (_os_feature_enabled_impl())
    {
      v50 = sub_10000A878(a2);
      if (v50)
      {
        [*(a1 + 9008) removeObjectForKey:v50];
      }
    }

    if (_os_feature_enabled_impl())
    {
      sub_100193454(a1, a2, 0);
    }

    sub_100193620(a1, a2, v51, v52, v53, v54, v55, v56, v121, v122, v123, v124, source, v127, SWORD2(v127), v128, v130, value, cf, v139, v142, context, v146, v147, v148, v149, p_buf);
    if (v11)
    {
      CFRelease(v11);
    }

    *(a1 + 6680) = sub_100189234(a1, a2);
    sub_1000BBAE0(a1, 1, 1);
    sub_1000E2164(a1, a2);
    v57 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v58 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v59 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
        LODWORD(buf) = 136446210;
        *(&buf + 4) = v59;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v57);
    v14 = 0;
    goto LABEL_72;
  }

  v14 = *(a1 + 3336);
  if (a2)
  {
    HIDWORD(v128) = sub_100009730(a2);
    v15 = sub_10000B3A8(a1, a2, 1);
    v140 = v15;
    v16 = kCFBooleanFalse;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = a2;
    }
  }

  else
  {
    HIDWORD(v128) = 0;
    v140 = 0;
    v17 = 0;
    v16 = kCFBooleanFalse;
  }

  v143 = v17;
  v61 = sub_10000AA64(*(a1 + 3752), v17);
  cfa = v61;
  if (v61)
  {
    v62 = sub_10000A540(v61, @"PRIVATE_MAC_ADDRESS");
    if (v62 && (TypeID = CFDictionaryGetTypeID(), TypeID == CFGetTypeID(v62)))
    {
      v64 = CFDictionaryGetValue(v62, @"PRIVATE_MAC_ADDRESS_VALUE");
      v131 = sub_10000ABFC(v64);
    }

    else
    {
      v131 = 0;
    }

    v16 = sub_10000A540(cfa, @"MacAddressRandomisationTagMigratedNetwork");
  }

  else
  {
    v131 = 0;
    v62 = 0;
  }

  if (sub_10000A154(*(a1 + 6872)))
  {
    goto LABEL_82;
  }

  v65 = *(a1 + 3736);
  if (!*(a1 + 3736))
  {
    goto LABEL_83;
  }

  if (!v16 || v16 != kCFBooleanTrue)
  {
    v101 = cfa;
    if (cfa && v131)
    {
      v101 = cfa;
      if (!sub_10000C894(v143) && *(a1 + 4792))
      {
        if (*(a1 + 240))
        {
          *&v158 = 0;
          *(&v158 + 1) = &v158;
          v159 = 0x2020000000;
          v160 = 0;
          v102 = CFRetain(cfa);
          *(*(&v158 + 1) + 24) = v102;
          CFRetain(a1);
          v103 = *(a1 + 240);
          *&buf = _NSConcreteStackBlock;
          *(&buf + 1) = 3221225472;
          v168 = sub_1000EB9D4;
          v169 = &unk_10025EFD8;
          v170 = &v158;
          v171 = a1;
          dispatch_async(v103, &buf);
          _Block_object_dispose(&v158, 8);
        }

        else
        {
          v117 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            v121 = "__WiFiDeviceManagerProcessAssociationFailure";
            [off_100298C40 WFLog:4 message:"%s: null queue."];
          }

          objc_autoreleasePoolPop(v117);
          v101 = cfa;
        }
      }
    }

    else if (!cfa)
    {
      goto LABEL_82;
    }

    *(&v158 + 4) = 0xAAAAAAAAAAAAAAAALL;
    LODWORD(v158) = 5;
    sub_100147640(v101, &v158);
    sub_1001473EC(&v158);
    goto LABEL_82;
  }

  if (!v62)
  {
LABEL_82:
    v65 = 0;
LABEL_83:
    LODWORD(value) = 1;
    goto LABEL_84;
  }

  v80 = CFDictionaryGetTypeID();
  v81 = CFGetTypeID(v62);
  v65 = 0;
  LODWORD(value) = 1;
  if (v80 == v81 && v131)
  {
    v82 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v62);
    value = sub_100059228(1);
    CFDictionarySetValue(v82, @"PRIVATE_MAC_ADDRESS_TYPE", value);
    CFDictionarySetValue(v82, @"PRIVATE_MAC_ADDRESS_VALUE", *(a1 + 3760));
    sub_10000AD34(v143, @"PRIVATE_MAC_ADDRESS", v82);
    v83 = objc_autoreleasePoolPush();
    v84 = off_100298C40;
    if (off_100298C40)
    {
      v121 = "__WiFiDeviceManagerProcessAssociationFailure";
      v122 = sub_10000A878(v143);
      [v84 WFLog:3 message:"%s: WFMacRandomisation : Network <%@> falling back to physical Mac due to Assoc failure"];
    }

    objc_autoreleasePoolPop(v83);
    if (value)
    {
      CFRelease(value);
    }

    v85 = *(a1 + 4760);
    if (v85)
    {
      v85(a1, v143, *(a1 + 4768));
    }

    if (cfa)
    {
      *(&buf + 4) = 0xAAAAAAAAAAAAAAAALL;
      LODWORD(buf) = 2;
      sub_100147640(cfa, &buf);
      sub_1001473EC(&buf);
    }

    if (v82)
    {
      CFRelease(v82);
    }

    v86 = objc_autoreleasePoolPush();
    v87 = off_100298C40;
    if (off_100298C40)
    {
      v121 = sub_10000A878(v143);
      v122 = *(a1 + 1184);
      [v87 WFLog:3 message:"WFMacRandomisation : Changing mac address of <%@> from Private to HW to Retry. Current count is <%ld>"];
    }

    objc_autoreleasePoolPop(v86);
    v88 = *(a1 + 7480);
    if (v88)
    {
      [v88 addFaultEvent:11 forInterface:sub_100006F88(*(a1 + 64))];
    }

    LODWORD(value) = 0;
    v65 = 1;
  }

LABEL_84:
  cfb = v65;
  if (*(a1 + 7480))
  {
    *&v158 = _NSConcreteStackBlock;
    *(&v158 + 1) = 3221225472;
    v159 = sub_1000EBA60;
    v160 = &unk_100261670;
    v161 = a1;
    v162 = a4;
    sub_1000C4084(a1, v143, &v158);
  }

  if (sub_100009730(v140) && sub_10009ED84(v140))
  {
    sub_1000ED650(a1, @"autoJoinStatusEAPFromProfileFailedToJoin", 0, 0);
  }

  if (a4 >= 0xFFFFF0C5 && a4 != -100)
  {
    goto LABEL_96;
  }

  if (!v11 || (v72 = CFDictionaryGetValue(v11, @"reason"), CFStringCompare(@"Guessing 2ghz Network", v72, 0)))
  {
    if (v143)
    {
      v73 = objc_autoreleasePoolPush();
      v74 = sub_10001A9BC(v143);
      v75 = 7;
      if ((a4 + 369033216) < 0x15 || (a4 + 369032216) < 2)
      {
        goto LABEL_95;
      }

      if (a4 == -369032214)
      {
        v104 = [sub_10000A540(v143 @"JOIN:"intValue" EXTENDED:?STATUS")];
        if (v104 == 1031)
        {
LABEL_164:
          [*(a1 + 6720) setNetworkDenyListInfo:sub_1000BE2EC(a1 forScanResult:{12, -369032214, 0, 5), v74}];
          v105 = objc_alloc_init(NSDate);
          v127 = sub_10014A684(v105, 5, 0, 0);
          [(NSDate *)v127 timeIntervalSinceDate:v105];
          if (*(a1 + 7448))
          {
            source = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              v121 = "__WiFiDeviceManagerProcessAssociationFailure";
              [off_100298C40 WFLog:3 message:"%s: EAPATNotifBlacklist expiry timer already running"];
            }
          }

          else
          {
            v119 = v106;
            *(a1 + 7448) = 1;
            sourcea = *(a1 + 7456);
            v120 = dispatch_time(0, (v106 * 1000000000.0));
            dispatch_source_set_timer(sourcea, v120, 0xFFFFFFFFFFFFFFFFLL, 0);
            source = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              v122 = *&v119;
              v121 = "__WiFiDeviceManagerProcessAssociationFailure";
              [off_100298C40 WFLog:3 message:"%s: EAPATNotifBlacklist expiry timer set to fire in %f seconds from now"];
            }
          }

          objc_autoreleasePoolPop(source);
          if (v105)
          {
            CFRelease(v105);
          }

          if (v127)
          {
            CFRelease(v127);
          }

          goto LABEL_214;
        }

        if (v104 == 1026)
        {
          [*(a1 + 6720) setNetworkDenyListInfo:sub_1000BE2EC(a1 forScanResult:{11, -369032214, 0, 5), v74}];
          goto LABEL_164;
        }

        v118 = sub_10000A540(v143, @"BSSID");
        [*(a1 + 6720) setNetworkDenyListInfo:sub_1000BE2EC(a1 forScanResult:{7, -369032214, v118, 5), v74}];
      }

LABEL_214:
      v75 = 5;
LABEL_95:
      v76 = sub_10000A540(v143, @"BSSID");
      v77 = sub_1000BE2EC(a1, v75, a4, v76, 5);
      [*(a1 + 6720) setNetworkDenyListInfo:v77 forScanResult:v74];

      objc_autoreleasePoolPop(v73);
    }

LABEL_96:
    sub_100193620(a1, v143, v66, v67, v68, v69, v70, v71, v121, v122, v123, v124, source, v127, SWORD2(v127), v128, v131, value, cfb, v140, v143, context, v146, v147, v148, v149, p_buf);
    v78 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v79 = v144 ? sub_10000A878(v144) : @"Unknown";
      v89 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v90 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
        *v165 = 136446210;
        v166 = v90;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", v165, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v78);
    if (a4 > -3913)
    {
      if (a4 == -3912)
      {
        v97 = sub_100006F88(*(a1 + 64));
        v14 = sub_1000D62B4(a1, v97, 1, 1, v144, 0);
        v98 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: state %@", "__WiFiDeviceManagerProcessAssociationFailure", sub_1000AA864(*(a1 + 3336))}];
        }

        objc_autoreleasePoolPop(v98);
        goto LABEL_172;
      }

      v91 = v141;
      if (a4 == 82)
      {
        v14 = 0;
        goto LABEL_173;
      }

      if (a4 == -100)
      {
        if (sub_100174C78(v144))
        {
          v92 = 3;
        }

        else
        {
          v92 = 1;
        }

        v93 = sub_100006F88(*(a1 + 64));
        v14 = sub_1000D62B4(a1, v93, v92, 1, v144, 0);
        v94 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: state %@", "__WiFiDeviceManagerProcessAssociationFailure", sub_1000AA864(*(a1 + 3336))}];
        }

        objc_autoreleasePoolPop(v94);
        v91 = v141;
        if (v14 == 14)
        {
          sub_1000E1594(a1, v144, 1);
          v14 = 14;
LABEL_172:
          v91 = v141;
        }

LABEL_173:
        if ((valuea & 1) != 0 || *(a1 + 1184) > 1)
        {
          *(a1 + 1184) = 0;
LABEL_179:
          if (v91)
          {
            CFRelease(v91);
          }

          goto LABEL_181;
        }

LABEL_175:
        v111 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          objc_msgSend(off_100298C40, "WFLog:message:", 3, "Retrying (WFMacRandomisation : Attempting again for migration? <%d> autojoin association of %@ with retry count %ld", cfc, sub_10000A878(v144), *(a1 + 1184));
        }

        objc_autoreleasePoolPop(v111);
        *(a1 + 1176) = vaddq_s64(*(a1 + 1176), xmmword_1001CE7B0);
        v91 = v141;
        goto LABEL_179;
      }

LABEL_143:
      v99 = v129 ^ 1;
      if (a4 != -3905)
      {
        v99 = 1;
      }

      if ((v99 & 1) == 0)
      {
        v100 = *(a1 + 1168);
        if (v100)
        {
          if (CFArrayGetCount(v100))
          {
            v91 = v141;
            if (*(a1 + 1184) < 2uLL)
            {
              goto LABEL_175;
            }

            goto LABEL_173;
          }

          goto LABEL_172;
        }
      }

      goto LABEL_173;
    }

    v91 = v141;
    if (a4 != -369033215)
    {
      if (a4 != -369033213)
      {
        goto LABEL_143;
      }

      sub_1000ED650(a1, @"autoJoinEAPNeedsUserFix", 0, 0);
      if (!v11)
      {
        goto LABEL_172;
      }

      *(a1 + 1184) = -1;
      if (CFDictionaryGetValue(v11, @"TLSServerCertificateChain"))
      {
        v95 = sub_100006F88(*(a1 + 64));
        v96 = sub_1000D62B4(a1, v95, 2, 2, v144, v11);
LABEL_171:
        v14 = v96;
        goto LABEL_172;
      }

      v107 = CFDictionaryGetValue(v11, @"RequiredProperties");
      v108 = v107;
      if (!v107)
      {
        goto LABEL_172;
      }

      v172.length = CFArrayGetCount(v107);
      v172.location = 0;
      if (!CFArrayGetFirstIndexOfValue(v108, v172, @"UserName"))
      {
        v173.length = CFArrayGetCount(v108);
        v173.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v108, v173, @"UserPassword");
        v91 = v141;
        if (!FirstIndexOfValue)
        {
          goto LABEL_173;
        }
      }
    }

    v110 = sub_100006F88(*(a1 + 64));
    v96 = sub_1000D62B4(a1, v110, 3, 1, v144, 0);
    goto LABEL_171;
  }

  v14 = sub_10018DA2C(a1);
LABEL_181:
  if (*(a1 + 3920))
  {
    if (*(a1 + 240))
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v168 = 0x2020000000;
      v169 = 0;
      *&v158 = 0;
      *(&v158 + 1) = &v158;
      v159 = 0x2020000000;
      v160 = 0;
      if (a2)
      {
        v112 = CFRetain(a2);
        *(*(&buf + 1) + 24) = v112;
      }

      if (v11)
      {
        v113 = CFRetain(v11);
        *(*(&v158 + 1) + 24) = v113;
      }

      CFRetain(a1);
      v114 = *(a1 + 240);
      v146 = _NSConcreteStackBlock;
      v147 = 3221225472;
      v148 = sub_1000EB2B4;
      v149 = &unk_1002619D8;
      p_buf = &buf;
      v151 = &v158;
      v152 = a1;
      v153 = a4;
      dispatch_async(v114, &v146);
      _Block_object_dispose(&v158, 8);
      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v115 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: null queue.", "__WiFiDeviceManagerProcessAssociationResult"}];
      }

      objc_autoreleasePoolPop(v115);
    }
  }

  v116 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: error %d, state %d\n", "__WiFiDeviceManagerProcessAssociationResult", a4, v14}];
  }

  objc_autoreleasePoolPop(v116);
  if (_os_feature_enabled_impl())
  {
    if (v14 == 14)
    {
      v14 = 14;
    }

    else
    {
      sub_1000ED650(a1, @"autoJoinAssociationFailure", 0, 0);
      sub_1000EAF00(a1, a2, a4, CWFManagerErrorDomain, @"Association failed");
      v14 = 0;
    }
  }

  else
  {
    if (v14 == 12)
    {
      v14 = sub_1000E9864(a1);
    }

    if (v14 <= 5 && ((1 << v14) & 0x23) != 0)
    {
      sub_1000ED650(a1, @"autoJoinAssociationFailure", 0, 0);
    }
  }

  if (v11)
  {
    CFRelease(v11);
  }

LABEL_72:
  objc_autoreleasePoolPop(context);
  return v14;
}

uint64_t sub_1000E54AC(uint64_t a1)
{
  v2 = *(a1 + 3336);
  v3 = *(a1 + 224);
  if (!v3 || !sub_1000A5008(v3))
  {
    return v2;
  }

  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: notification %@ currentState %@", "__WiFiDeviceManagerProcessUserResponse", *(a1 + 224), sub_1000AA864(v2)}];
  }

  objc_autoreleasePoolPop(v4);
  *(a1 + 3336) = 12;
  v5 = *(a1 + 224);
  *(a1 + 224) = 0;
  v6 = sub_1000A4FF8(v5);
  if (v6 <= 4)
  {
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        v11 = sub_1000EBAD8(a1, v5);
        goto LABEL_48;
      }

      if (v6 != 3)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (!v6)
      {
        v11 = sub_1000EBEB0(a1, v5);
LABEL_48:
        v2 = v11;
        goto LABEL_49;
      }

      if (v6 != 1)
      {
        goto LABEL_39;
      }
    }

    sub_100193894();
    goto LABEL_48;
  }

  if (v6 == 5)
  {
    v2 = *(a1 + 3336);
    v12 = sub_1000A5008(v5);
    v9 = sub_10009A8E0(v5);
    v13 = objc_autoreleasePoolPush();
    v14 = off_100298C40;
    if (!v9)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: network is null", "__WiFiDeviceManagerProcessJoinRecommendationNotification"}];
      }

      objc_autoreleasePoolPop(v13);
      goto LABEL_49;
    }

    if (off_100298C40)
    {
      v15 = sub_10000A878(v9);
      [v14 WFLog:3 message:{"%s: network %@ ResponseType=%@", "__WiFiDeviceManagerProcessJoinRecommendationNotification", v15, sub_1000A5484(v12)}];
    }

    objc_autoreleasePoolPop(v13);
    if (v12 <= 2)
    {
      if (v12 == 1)
      {
        Current = CFAbsoluteTimeGetCurrent();
        v22 = CFDateCreate(kCFAllocatorDefault, Current);
        sub_10000AD34(v9, @"WiFiNetworkUserAcceptedRecommendationAt", v22);
        if (v22)
        {
          CFRelease(v22);
        }

        v23 = sub_1000D3D70(a1, v9, 1);
        if (!v23)
        {
          goto LABEL_49;
        }

LABEL_47:
        v11 = sub_1000E3DB4(a1, v9, 0, v23);
        goto LABEL_48;
      }

      if (v12 != 2)
      {
        goto LABEL_49;
      }

      sub_100193574(a1, v9, 1);
    }

    else if (v12 != 3)
    {
      if (v12 == 5)
      {
        v16 = CFAbsoluteTimeGetCurrent();
        v17 = CFDateCreate(kCFAllocatorDefault, v16);
        v18 = sub_10014A684(v17, 5, 0, 0);
        v19 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: user muted network, disabling network until %@", "__WiFiDeviceManagerProcessJoinRecommendationNotification", v18}];
        }

        objc_autoreleasePoolPop(v19);
        sub_1000A0060(v9, 0, @"JoinRecommendation");
        sub_10009FF90(v9, v18);
        sub_1000C5B3C(a1, v9);
        if (v17)
        {
          CFRelease(v17);
        }

        if (v18)
        {
          CFRelease(v18);
        }
      }

      goto LABEL_49;
    }

    goto LABEL_43;
  }

  if (v6 == 10)
  {
    v20 = sub_1000A5008(v5);
    v11 = sub_1000EC044(a1, v20);
    goto LABEL_48;
  }

  if (v6 != 12)
  {
LABEL_39:
    v2 = *(a1 + 3336);
    goto LABEL_49;
  }

  v2 = *(a1 + 3336);
  v7 = sub_1000A5008(v5);
  v8 = sub_10009A8E0(v5);
  if (v8)
  {
    if (v7 != 3)
    {
      if (v7 != 2)
      {
        if (v7 != 1)
        {
          goto LABEL_49;
        }

        v9 = v8;
        v10 = sub_100006F88(*(a1 + 64));
        sub_1000B9DC8(a1, v10, 1019, "__WiFiDeviceManagerProcessAutoHotspotJoinRecommendationNotification", 38012);
        if (sub_10009F418(v9))
        {
          sub_1000EC328(0, v9);
          goto LABEL_49;
        }

        v23 = sub_1000D3D70(a1, v9, 0);
        if (!v23)
        {
          sub_1000ED650(a1, @"autoJoinAssociating", v9, 0);
          if (*(a1 + 4632))
          {
            if (*(a1 + 240))
            {
              v27 = 0;
              v28 = &v27;
              v29 = 0x2020000000;
              v30 = 0;
              v25 = sub_10000C580(kCFAllocatorDefault, v9);
              v28[3] = v25;
              if (v25)
              {
                CFRetain(a1);
                sub_1001A4B2C((a1 + 240), &v26);
              }

              _Block_object_dispose(&v27, 8);
            }

            else
            {
              sub_1001A4BDC();
            }
          }

          v2 = 12;
          goto LABEL_49;
        }

        goto LABEL_47;
      }

      *(a1 + 7067) = 0;
    }

LABEL_43:
    v11 = sub_1000E9864(a1);
    goto LABEL_48;
  }

  sub_1001A4B70();
LABEL_49:
  if (v5)
  {
    CFRelease(v5);
  }

  return v2;
}

void sub_1000E5954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E596C(uint64_t a1)
{
  v2 = *(a1 + 3336);
  Count = CFArrayGetCount(*(a1 + 6920));
  v4 = CFArrayGetCount(*(a1 + 6992));
  v5 = CFArrayGetCount(*(a1 + 7000));
  v6 = CFArrayGetCount(*(a1 + 7008));
  v66 = Count;
  if (!Count)
  {
    sub_1000B6E20(a1, 0);
    ValueAtIndex = 0;
    goto LABEL_53;
  }

  v7 = v6;
  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: hotspot interface found device %@", "__WiFiDeviceManagerProcessScannedInstantHotspotDevices", *(a1 + 6920)}];
  }

  objc_autoreleasePoolPop(v8);
  if (v66 < 1)
  {
    ValueAtIndex = 0;
    goto LABEL_52;
  }

  v65 = v2;
  v9 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 6920), v9);
    if (v4 < 1)
    {
LABEL_10:
      v67 = 0;
    }

    else
    {
      v11 = 0;
      while (![*(a1 + 6824) isEqualHotspotDevices:CFArrayGetValueAtIndex(*(a1 + 6992) compareTo:{v11), ValueAtIndex}])
      {
        if (v4 == ++v11)
        {
          goto LABEL_10;
        }
      }

      v12 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Hotspot blacklisted: User cancelled \n", "__WiFiDeviceManagerProcessScannedInstantHotspotDevices"}];
      }

      objc_autoreleasePoolPop(v12);
      v67 = 1;
    }

    if (v5 < 1)
    {
LABEL_18:
      v14 = 0;
      if (!v7)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v13 = 0;
      while (![*(a1 + 6824) isEqualHotspotDevices:CFArrayGetValueAtIndex(*(a1 + 7000) compareTo:{v13), ValueAtIndex}])
      {
        if (v5 == ++v13)
        {
          goto LABEL_18;
        }
      }

      v15 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Hotspot blacklisted: Peer declined \n", "__WiFiDeviceManagerProcessScannedInstantHotspotDevices"}];
      }

      objc_autoreleasePoolPop(v15);
      v14 = 1;
      if (!v7)
      {
LABEL_29:
        v22 = 0;
        goto LABEL_35;
      }
    }

    v16 = [*(a1 + 6824) getHotspotDeviceName:ValueAtIndex];
    if (v7 < 1)
    {
      goto LABEL_29;
    }

    v17 = v16;
    v18 = 0;
    while (1)
    {
      v19 = CFArrayGetValueAtIndex(*(a1 + 7008), v18);
      if (v19)
      {
        v20 = v19;
        v21 = sub_10000A878(v19);
        if (CFEqual(v17, v21))
        {
          break;
        }
      }

      if (v7 == ++v18)
      {
        goto LABEL_28;
      }
    }

    v23 = sub_10000A540(v20, @"lastDisconnectTimestampKey");
    if (v23 && (v24 = v23, !sub_10009EA74(v20)))
    {
      Current = CFAbsoluteTimeGetCurrent();
      v28 = Current - CFDateGetAbsoluteTime(v24);
      v29 = objc_autoreleasePoolPush();
      if (v28 >= 3600.0)
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Remove Hotspot from Denylist\n", "__WiFiDeviceManagerProcessScannedInstantHotspotDevices"}];
        }

        objc_autoreleasePoolPop(v29);
        CFArrayRemoveValueAtIndex(*(a1 + 7008), v18);
LABEL_28:
        v22 = 0;
        goto LABEL_35;
      }

      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Hotspot denylisted due to Deauth on %@\n", "__WiFiDeviceManagerProcessScannedInstantHotspotDevices", v24}];
      }

      objc_autoreleasePoolPop(v29);
      v22 = 1;
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Hotspot %@ denylisted until user Join\n", "__WiFiDeviceManagerProcessScannedInstantHotspotDevices", sub_10000A878(v20)}];
      }

      objc_autoreleasePoolPop(v25);
      v22 = 1;
    }

LABEL_35:
    if (![*(a1 + 6824) isHotspotDeviceSupportADHS:ValueAtIndex])
    {
      v26 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: ADHS not Supported. Ignoring hotspot\n", "__WiFiDeviceManagerProcessScannedInstantHotspotDevices"}];
      }

      objc_autoreleasePoolPop(v26);
      goto LABEL_41;
    }

    if ((v67 | v14 | v22) != 1)
    {
      break;
    }

LABEL_41:
    if (++v9 == v66)
    {
      goto LABEL_52;
    }
  }

  v32 = *(a1 + 5452);
  v33 = CFArrayGetValueAtIndex(*(a1 + 6920), v9);
  *(a1 + 6984) = v33;
  v34 = [*(a1 + 6824) getHotspotDeviceName:v33];
  v35 = sub_10000A540(*(a1 + 3560), @"SSID_STR");
  if (*(a1 + 3560) && CFEqual(v34, v35))
  {
    v36 = *(a1 + 7112);
    v30 = v65;
    if (v36 && [v36 isEqualToString:v34])
    {
      v37 = sub_10001A904(a1);
      v38 = [WiFiLocationManager isLocationValid:v37 uptoSeconds:1 isHighAccuracy:900.0];
      v39 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: isLocValid %d", "__WiFiDeviceManagerProcessScannedInstantHotspotDevices", v38}];
      }

      objc_autoreleasePoolPop(v39);
      if (v38)
      {
        v40 = *(a1 + 7120);
        if (v40)
        {
          [v40 distanceFromLocation:v37];
          if (v41 <= 300.0)
          {
            v32 = *(a1 + 5456);
          }
        }
      }
    }

    if (sub_1000D7904(a1))
    {
      *(a1 + 7048) = 1;
    }

    v42 = 0;
    if (*(a1 + 6884) == 1)
    {
      if (v32)
      {
        v43 = sub_10000A540(*(a1 + 3560), @"lastDisconnectReasonKey");
        v44 = sub_10000A540(*(a1 + 3560), @"lastDisconnectTimestampKey");
        v42 = 0;
        if (v43)
        {
          v45 = v44;
          if (v44)
          {
            valuePtr = 0;
            CFNumberGetValue(v43, kCFNumberIntType, &valuePtr);
            if (valuePtr == 1034 && (v46 = CFAbsoluteTimeGetCurrent(), v46 - CFDateGetAbsoluteTime(v45) <= v32))
            {
              v60 = objc_autoreleasePoolPush();
              v61 = off_100298C40;
              if (off_100298C40)
              {
                v62 = CFAbsoluteTimeGetCurrent();
                [v61 WFLog:3 message:{"%s: Joining back voluntarily disconnected PH within %u minutes after disconnect, time since link down %.1f seconds", "__WiFiDeviceManagerProcessScannedInstantHotspotDevices", v32 / 0x3CuLL, v62 - CFDateGetAbsoluteTime(v45)}];
              }

              objc_autoreleasePoolPop(v60);
              v42 = 1;
            }

            else
            {
              v42 = 0;
            }
          }
        }
      }
    }
  }

  else
  {
    sub_1000D7904(a1);
    v42 = 0;
    v30 = v65;
  }

  if ([objc_msgSend(+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")] - 3 > 1)
  {
    if (*(a1 + 6884) == 1)
    {
      v48 = *(a1 + 7048) ? 1 : v42;
      if ((v48 & 1) == 0)
      {
        goto LABEL_92;
      }
    }

    v30 = sub_1000E61CC(a1, *(a1 + 6984));
  }

  else
  {
    if (CWFGetOSLog())
    {
      v47 = CWFGetOSLog();
    }

    else
    {
      v47 = &_os_log_default;
    }

    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      v68 = 0;
      LODWORD(v64) = 2;
      v63 = &v68;
      _os_log_send_and_compose_impl();
    }

LABEL_92:
    v49 = *(a1 + 7120);
    if (v49)
    {
      CFRelease(v49);
      *(a1 + 7120) = 0;
    }

    v50 = *(a1 + 7112);
    if (v50)
    {
      CFRelease(v50);
      *(a1 + 7112) = 0;
    }

    v51 = [*(a1 + 6824) getHotspotDeviceName:{*(a1 + 6984), v63, v64}];
    if (_os_feature_enabled_impl())
    {
      v52 = [*(a1 + 6776) dispatchNotificationWithAskToJoinHotspotRecommendation:v51];
      if (v52)
      {
        v53 = v52;
        v30 = *(a1 + 3336);
        v54 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Hotspot Recommendation notification failed: %d", "__WiFiDeviceManagerProcessScannedInstantHotspotDevices", v53}];
        }

        objc_autoreleasePoolPop(v54);
      }

      else
      {
        v30 = 14;
      }

      goto LABEL_109;
    }

    v55 = sub_10009D2E4(v51);
    if (v55)
    {
      v56 = v55;
      if (*(a1 + 3915))
      {
        v57 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Hotspot Recommendation notification skiped due to Band exclusion in AWDL realtime mode ", "__WiFiDeviceManagerProcessScannedInstantHotspotDevices"}];
        }

        objc_autoreleasePoolPop(v57);
      }

      else
      {
        v58 = sub_100006F88(*(a1 + 64));
        v30 = sub_1000D62B4(a1, v58, 10, 0, v56, 0);
      }

      CFRelease(v56);
LABEL_109:
      v59 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: State %d", "__WiFiDeviceManagerProcessScannedInstantHotspotDevices", v30}];
      }

      objc_autoreleasePoolPop(v59);
      if (v30 == 14)
      {
        *(a1 + 6788) = 1;
        return 17;
      }

LABEL_52:
      sub_1000B6E20(a1, 0);
LABEL_53:
      *(a1 + 6952) = 0;
      v30 = *(a1 + 6972);
    }
  }

  if (_os_feature_enabled_impl() && (v30 & 0xFFFFFFFD) != 0x11 && ValueAtIndex)
  {
    sub_1000EC6C0(a1, [*(a1 + 6824) getHotspotDeviceName:ValueAtIndex], 45, NSPOSIXErrorDomain, @"Failed to process candidate hotspot device");
  }

  return v30;
}

uint64_t sub_1000E61CC(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = sub_100002B80;
  v14 = sub_100006788;
  v15 = a2;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3052000000;
  v9[3] = sub_100002B80;
  v9[4] = sub_100006788;
  v9[5] = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3052000000;
  v8[3] = sub_100002B80;
  v8[4] = sub_100006788;
  v8[5] = 0;
  if (!*(a1 + 7088))
  {
    *(a1 + 3336) = 19;
    *(a1 + 7088) = 1;
    sub_1000EC5CC(a1, @"userJoinStarted", 0);
    v3 = v11[5];
    global_queue = dispatch_get_global_queue(0, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000EC8A4;
    v7[3] = &unk_10025F668;
    v7[4] = v8;
    v7[5] = &v10;
    v7[6] = v9;
    v7[7] = a1;
    dispatch_async(global_queue, v7);
  }

  v5 = *(a1 + 3336);
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v9, 8);
  _Block_object_dispose(&v10, 8);
  return v5;
}

void sub_1000E6370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E63A0(uint64_t a1, _BYTE *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (!a1)
  {
    v11 = objc_autoreleasePoolPush();
    v14 = 0.0;
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Manager is NULL!", "__WiFiDeviceManagerIsGeotagged5GhzNetworkPresent"}];
    }

    goto LABEL_65;
  }

  if (!a2)
  {
    v11 = objc_autoreleasePoolPush();
    v14 = 0.0;
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s:LeechLocation field is NULL!", "__WiFiDeviceManagerIsGeotagged5GhzNetworkPresent"}];
    }

    goto LABEL_65;
  }

  if (*(a1 + 5681))
  {
    *a2 = 1;
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s:Debug mode to not consider geotagged results is enabled!", "__WiFiDeviceManagerIsGeotagged5GhzNetworkPresent"}];
    }

    objc_autoreleasePoolPop(v5);
    v6 = 0;
    v7 = 0;
    LOBYTE(v8) = 0;
    v9 = 0.0;
    goto LABEL_7;
  }

  *(a1 + 6188) = 0u;
  *a2 = 0;
  v7 = sub_10001A904(a1);
  v11 = objc_autoreleasePoolPush();
  if (!v7)
  {
    v14 = 0.0;
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Location is NULL!", "__WiFiDeviceManagerIsGeotagged5GhzNetworkPresent"}];
    }

LABEL_65:
    v7 = 0;
LABEL_66:
    objc_autoreleasePoolPop(v11);
    v6 = 0;
    LOBYTE(v8) = 1;
    goto LABEL_55;
  }

  v12 = [v7 timestamp];
  if (!v12)
  {
    sub_1001A4C48();
    v14 = 0.0;
    goto LABEL_66;
  }

  [v12 timeIntervalSinceNow];
  v14 = v13;
  objc_autoreleasePoolPop(v11);
  if (v14 <= -120.0)
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: location is older than 120 secs", "__WiFiDeviceManagerIsGeotagged5GhzNetworkPresent"}];
    }

    goto LABEL_66;
  }

  v15 = [+[WiFiAnalyticsManager sharedWiFiAnalyticsManager](WiFiAnalyticsManager "sharedWiFiAnalyticsManager")];
  if (!v15)
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Failed in getting high band networks!", "__WiFiDeviceManagerIsGeotagged5GhzNetworkPresent"}];
    }

    goto LABEL_66;
  }

  v6 = v15;
  *a2 = 1;
  v16 = [v15 count];
  v9 = 0.0;
  if (v16 < 1)
  {
    LOBYTE(v8) = 0;
    goto LABEL_7;
  }

  v17 = v16;
  v36 = v4;
  v18 = 0;
  v8 = 0;
  do
  {
    v19 = [v6 objectAtIndexedSubscript:v18];
    if (!v19)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = off_100298C40;
      if (off_100298C40)
      {
        v28 = "Network NULL from network store!";
        goto LABEL_29;
      }

LABEL_30:
      objc_autoreleasePoolPop(v26);
      goto LABEL_39;
    }

    v20 = v19;
    v21 = sub_100177510(*(a1 + 3576), v19);
    if (v21 == -1 || (ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 3576), v21)) == 0)
    {
      v23 = sub_100177510(*(a1 + 3584), v20);
      if (v23 == -1)
      {
        ++*(a1 + 6200);
        v30 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"Considering %@ network from store not in known list!", sub_10000A878(v20)}];
        }

        v31 = v30;
LABEL_38:
        objc_autoreleasePoolPop(v31);
        v8 = 1;
        goto LABEL_39;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 3584), v23);
      if (!ValueAtIndex)
      {
        v26 = objc_autoreleasePoolPush();
        v27 = off_100298C40;
        if (off_100298C40)
        {
          v28 = "knownNetwork NULL!";
LABEL_29:
          [v27 WFLog:4 message:{v28, v35}];
        }

        goto LABEL_30;
      }
    }

    v24 = ValueAtIndex;
    if (sub_10000AFE4(ValueAtIndex))
    {
      v25 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"In proximity of Geotagged hotspot20 %@ - Ignoring!", sub_10000A878(v24)}];
      }

      objc_autoreleasePoolPop(v25);
      ++*(a1 + 6188);
      goto LABEL_39;
    }

    if (!sub_10000D9C8(v24))
    {
      if (sub_10000A7CC(v24))
      {
        v26 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"In proximity of Geotagged carplay nw %@ - Ignoring!", sub_10000A878(v24)}];
        }

        goto LABEL_30;
      }

      if (sub_10000A604(v24))
      {
        v26 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"In proximity of Geotagged PH %@ - Ignoring!", sub_10000A878(v24)}];
        }

        goto LABEL_30;
      }

      v32 = sub_10001CBF8(v24);
      v33 = (a1 + 5928);
      if (!v32)
      {
        v33 = (a1 + 6200);
      }

      ++*v33;
      v34 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"In proximity of Geotagged Network %@", sub_10000A878(v24)}];
      }

      v31 = v34;
      goto LABEL_38;
    }

    v29 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"In proximity of Geotagged hotspot %@ - Ignoring!", sub_10000A878(v24)}];
    }

    objc_autoreleasePoolPop(v29);
    ++*(a1 + 6192);
LABEL_39:
    ++v18;
  }

  while (v17 != v18);
  v4 = v36;
  if (v8)
  {
LABEL_55:
    if (v14 <= -0.001)
    {
      v9 = v14 * -1000.0;
    }

    else
    {
      v9 = 1.0;
    }
  }

LABEL_7:
  *(a1 + 6216) = v9;
  if (v6)
  {
  }

  if (v7)
  {
    CFRelease(v7);
  }

  objc_autoreleasePoolPop(v4);
  return v8;
}

void sub_1000E6914(uint64_t a1, void *a2)
{
  if (!sub_1000E0A04(a1, a2, 0))
  {
    v4 = objc_autoreleasePoolPush();
    v5 = sub_10001A9BC(a2);
    v6 = [*(a1 + 6720) reasonsForNetworkInDenyListedState:v5 state:1 timestamps:0 reasonData:0];
    if (v6)
    {
      v7 = v6;
      if ([v6 count])
      {
        sub_1001A4CB4(a1, v7);
      }

      if ([*(a1 + 6720) isNetworkDenyListedForAutoJoinDueToTrigDisc:v5 RSSI:0 timestamp:0])
      {
        v8 = sub_100034EEC(a2, @"RSSI");
        if (v8 > -96)
        {
          if (v8 > -91)
          {
            if (v8 > -86)
            {
              if (v8 > -81)
              {
                if (v8 > -76)
                {
                  v10 = *(a1 + 6204);
                  if (v8 > -71)
                  {
                    v9 = v10 | 0x40;
                  }

                  else
                  {
                    v9 = v10 | 0x20;
                  }
                }

                else
                {
                  v9 = *(a1 + 6204) | 0x10;
                }
              }

              else
              {
                v9 = *(a1 + 6204) | 8;
              }
            }

            else
            {
              v9 = *(a1 + 6204) | 4;
            }
          }

          else
          {
            v9 = *(a1 + 6204) | 2;
          }
        }

        else
        {
          v9 = *(a1 + 6204) | 1;
        }

        *(a1 + 6204) = v9;
      }
    }

    else
    {
      sub_1001A4D4C();
    }

    objc_autoreleasePoolPop(v4);
  }
}

uint64_t sub_1000E6A7C(uint64_t a1, _DWORD *a2)
{
  if (!a1)
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: NULL manager", "__WiFiDeviceManagerDisallow24GhzAJScans"}];
    }

    goto LABEL_22;
  }

  if (*(a1 + 48))
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: ajTestMode.isCarPlay is ON", "__WiFiDeviceManagerDisallow24GhzAJScans"}];
    }

    objc_autoreleasePoolPop(v4);
  }

  if (*(a1 + 49))
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: ajTestMode.isBTA2DP is ON", "__WiFiDeviceManagerDisallow24GhzAJScans"}];
    }

    objc_autoreleasePoolPop(v5);
  }

  if (*(a1 + 50))
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: ajTestMode.isBTSCO is ON", "__WiFiDeviceManagerDisallow24GhzAJScans"}];
    }

    objc_autoreleasePoolPop(v6);
  }

  if (a2)
  {
    *a2 = 0;
  }

  if (!*(a1 + 5568) && !*(a1 + 48))
  {
    if (*(a1 + 7152) && *(a1 + 5267) && *(a1 + 5264) <= 0xDu && (*(a1 + 7153) & 4) != 0)
    {
      if (a2)
      {
        *a2 = 4;
      }

      v7 = objc_autoreleasePoolPush();
      v10 = off_100298C40;
      if (!off_100298C40)
      {
        goto LABEL_53;
      }

      v11 = "AJScan: Disallowing 2.4Ghz channels due to Active MIS session";
    }

    else if (*(a1 + 36) && *(a1 + 3408) == 4 && *(a1 + 5592) != 1 && (*(a1 + 5468) == 102 && (*(a1 + 5464) & 2) != 0 || *(a1 + 49)))
    {
      if (a2)
      {
        *a2 = 1;
      }

      v7 = objc_autoreleasePoolPush();
      v10 = off_100298C40;
      if (!off_100298C40)
      {
        goto LABEL_53;
      }

      v11 = "AJScan: Disallowing 2.4Ghz channels due to BT-A2DP active while driving";
    }

    else
    {
      if (!*(a1 + 37) || (*(a1 + 5468) != 102 || (*(a1 + 5464) & 1) == 0) && !*(a1 + 50))
      {
        return 0;
      }

      if (a2)
      {
        *a2 = 2;
      }

      v7 = objc_autoreleasePoolPush();
      v10 = off_100298C40;
      if (!off_100298C40)
      {
        goto LABEL_53;
      }

      v11 = "AJScan: Disallowing 2.4Ghz channels due to BT-SCO active";
    }

    [v10 WFLog:4 message:v11];
LABEL_53:
    v8 = 1;
    goto LABEL_23;
  }

  if (a2)
  {
    *a2 = 3;
  }

  v7 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"AJScan: Disallowing 2.4Ghz channels due to CarPlay", v12}];
  }

LABEL_22:
  v8 = 0;
LABEL_23:
  objc_autoreleasePoolPop(v7);
  return v8;
}

uint64_t sub_1000E6D08(_BYTE *a1, _DWORD *a2)
{
  if (!a1)
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: NULL manager", "__WiFiDeviceManagerDisallow5GhzChannelAJScans"}];
    }

    v2 = 0;
    goto LABEL_16;
  }

  if (a2)
  {
    *a2 = 0;
  }

  if (a1[7152] && a1[5267] && a1[5264] >= 0xFu && (a1[7153] & 4) != 0 && (a1[1104] & 1) == 0)
  {
    if (a2)
    {
      *a2 = 4;
    }

    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:"AJScan: Disallowing 5Ghz channels due to Active 5GHz MIS session"];
    }

    v2 = 1;
LABEL_16:
    objc_autoreleasePoolPop(v4);
    return v2;
  }

  return 0;
}

uint64_t sub_1000E6DF0(_DWORD *a1)
{
  v2 = a1[835];
  if (v2 == 10)
  {
LABEL_9:

    return sub_1000E76B8(a1);
  }

  if (v2 == 6)
  {
    v3 = a1[168] + 1;
    a1[168] = v3;
    if (a1[174] == 1 && v3 <= 2)
    {

      return sub_1000E345C();
    }

    a1[168] = 0;
    a1[174] = 2;
    goto LABEL_9;
  }

  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Something went wrong. Should not come here.", "__WiFiDeviceManagerScheduleCarPlayRetry"}];
  }

  objc_autoreleasePoolPop(v6);
  return 1;
}

uint64_t sub_1000E6EB0(uint64_t a1)
{
  v2 = *(a1 + 1168);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 1168) = 0;
  }

  *(a1 + 1192) = 0;
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v4 = sub_1000AA864(*(a1 + 3340));
    v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v45 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v3);
  v6 = *(a1 + 3624);
  if (!v6)
  {
    v35 = objc_autoreleasePoolPush();
    v36 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_77;
    }

    v39 = "__WiFiDeviceManagerScanMRUNetworkChannels";
    v37 = "%s: NULL known filtered networks";
LABEL_72:
    v38 = 3;
LABEL_76:
    [v36 WFLog:v38 message:{v37, v39}];
    goto LABEL_77;
  }

  Count = CFArrayGetCount(v6);
  if (!Count)
  {
    v35 = objc_autoreleasePoolPush();
    v36 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_77;
    }

    v39 = "__WiFiDeviceManagerScanMRUNetworkChannels";
    v37 = "%s: No known filtered networks";
    goto LABEL_72;
  }

  v8 = Count;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    sub_1001A4DB8();
    v34 = 4294963394;
    goto LABEL_74;
  }

  v10 = Mutable;
  *(a1 + 5692) = 1;
  v40 = CFStringCreateMutable(kCFAllocatorDefault, 0);
  if (v8 < 1)
  {
    v12 = 8;
    goto LABEL_48;
  }

  v11 = 0;
  v12 = 8;
  while (1)
  {
    if (CFArrayGetCount(v10) > 3)
    {
      goto LABEL_48;
    }

    if (*(a1 + 3340) == 7)
    {
      *(a1 + 5692) = 12;
      ValueAtIndex = *(a1 + 3432);
      v12 = 9;
      if (!ValueAtIndex)
      {
        goto LABEL_48;
      }
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 3624), v11);
      if (!ValueAtIndex)
      {
        goto LABEL_45;
      }
    }

    sub_100176200();
    if (v14)
    {
      v15 = v14;
      v16 = CFDictionaryGetCount(v14);
      if (!v16)
      {
        CFRelease(v15);
        goto LABEL_45;
      }

      v17 = v16;
      v42 = &v40;
      __chkstk_darwin();
      v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      memset(v19, 170, v18);
      CFDictionaryGetKeysAndValues(v15, 0, v19);
      if (v17 >= 1)
      {
        v41 = 0;
        v20 = v17 + 1;
        v21 = &v19[8 * v17 - 8];
        do
        {
          if (CFArrayGetCount(v10) > 3)
          {
            break;
          }

          if (*v21)
          {
            Value = CFDictionaryGetValue(*v21, @"CHANNEL");
            v23 = CFDictionaryGetValue(*v21, @"CHANNEL_FLAGS");
            if (Value)
            {
              if (v23)
              {
                *buf = 0;
                if (sub_1000E6A7C(a1, buf))
                {
                  valuePtr = -1431655766;
                  CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
                  if (!valuePtr)
                  {
                    goto LABEL_41;
                  }

                  if (valuePtr <= 0xE)
                  {
                    v24 = objc_autoreleasePoolPush();
                    if (off_100298C40)
                    {
                      [off_100298C40 WFLog:3 message:{"%s: Disallowing 2.4Ghz MRU channel %d", "__WiFiDeviceManagerScanMRUNetworkChannels", valuePtr}];
                    }

LABEL_34:
                    objc_autoreleasePoolPop(v24);
                    *(a1 + 6232) = *buf;
                    goto LABEL_41;
                  }
                }

                *buf = 0;
                if (!sub_1000E6D08(a1, buf))
                {
                  goto LABEL_35;
                }

                valuePtr = -1431655766;
                CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
                if (valuePtr)
                {
                  if (valuePtr < 0xF)
                  {
LABEL_35:
                    if (sub_1000E7FE4(*(a1 + 3344), Value) != 1)
                    {
                      CFArrayAppendValue(v10, *v21);
                      CFArrayAppendValue(*(a1 + 3344), *v21);
                      if (v40)
                      {
                        if (!v41)
                        {
                          v25 = sub_10000A878(ValueAtIndex);
                          CFStringAppendFormat(v40, 0, @" %@ on channels: ", v25);
                        }

                        CFStringAppendFormat(v40, 0, @"%@ ", Value);
                      }

                      ++v41;
                    }

                    goto LABEL_41;
                  }

                  v24 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: Disallowing 5Ghz MRU channel %d", "__WiFiDeviceManagerScanMRUNetworkChannels", valuePtr}];
                  }

                  goto LABEL_34;
                }
              }
            }
          }

LABEL_41:
          --v20;
          --v21;
        }

        while (v20 > 1);
      }

      CFRelease(v15);
      if (*(a1 + 3340) == 7)
      {
        break;
      }
    }

LABEL_45:
    if (++v11 == v8)
    {
      goto LABEL_48;
    }
  }

  v29 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Top Networks MRU channels: %@", v40}];
  }

  objc_autoreleasePoolPop(v29);
LABEL_48:
  if (CFArrayGetCount(v10))
  {
    v30 = v40;
    if (v40)
    {
      v31 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v32 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v33 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
          *buf = 136446210;
          v45 = v33;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        }
      }

      objc_autoreleasePoolPop(v31);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v45 = "Active";
        v46 = 2112;
        v47 = v30;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "{AUTOJOIN, SCAN} Scanning(%s) for MRU Networks: %@", buf, 0x16u);
      }

      CFRelease(v30);
    }

    v34 = sub_100191A78(a1, *(a1 + 3600), v10, 0, 2);
    CFRelease(v10);
    if (!v34)
    {
      *(a1 + 3340) = v12;
      return v12;
    }

LABEL_74:
    v35 = objc_autoreleasePoolPush();
    v36 = off_100298C40;
    if (off_100298C40)
    {
      v39 = v34;
      v37 = "multi-stage auto-join: Error scanning for MRU Networks, err=%d";
      v38 = 4;
      goto LABEL_76;
    }

LABEL_77:
    objc_autoreleasePoolPop(v35);
    return sub_1000E8070(a1);
  }

  v26 = objc_autoreleasePoolPush();
  v27 = v40;
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: No MRU channels", "__WiFiDeviceManagerScanMRUNetworkChannels"}];
  }

  objc_autoreleasePoolPop(v26);
  if (v27)
  {
    CFRelease(v27);
  }

  CFRelease(v10);
  *(a1 + 3340) = v12;
  return sub_1000E8070(a1);
}

uint64_t sub_1000E76B8(uint64_t a1)
{
  v2 = *(a1 + 1168);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 1168) = 0;
  }

  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Couldn't allocate channelList", "__WiFiDeviceManagerScanCarPlayRemainingChannels"}];
    }

    objc_autoreleasePoolPop(v12);
    v13 = 4294963394;
LABEL_93:
    v42 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"CarPlay multi-stage auto-join: Error scanning remaining channels, err=%d", v13}];
    }

    objc_autoreleasePoolPop(v42);
    goto LABEL_96;
  }

  v4 = Mutable;
  *(a1 + 3340) = 10;
  v5 = *(a1 + 696);
  if (v5 == 4)
  {
    if (*(a1 + 680) == 1)
    {
      goto LABEL_27;
    }

LABEL_24:
    *(a1 + 696) = 0;
LABEL_42:
    CFRelease(v4);
    goto LABEL_43;
  }

  if (v5 == 3)
  {
    goto LABEL_24;
  }

  if (v5 != 2)
  {
    LODWORD(v10) = 0;
    goto LABEL_32;
  }

  v6 = *(a1 + 676);
  if (v6 < 36)
  {
    if (!v6)
    {
      LODWORD(v10) = 0;
      goto LABEL_30;
    }

LABEL_27:
    LODWORD(v10) = 0;
    v14 = 3;
LABEL_31:
    *(a1 + 696) = v14;
    goto LABEL_32;
  }

  v7 = *(a1 + 672);
  *(a1 + 672) = v7 + 1;
  if (v7 > 1)
  {
    LODWORD(v10) = 0;
    *(a1 + 672) = 0;
LABEL_30:
    v14 = 4;
    goto LABEL_31;
  }

  if ((v6 & 7) != 0)
  {
    v8 = 4;
  }

  else
  {
    v8 = -4;
  }

  if ((v6 & 7) == 5)
  {
    v9 = 4;
  }

  else
  {
    v9 = -4;
  }

  if (v6 < 0x91)
  {
    v9 = v8;
  }

  v10 = (v6 + v9);
  v11 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: CarPlay channel - orginal(%d) adjacent(%d)", "__WiFiDeviceManagerScanCarPlayRemainingChannels", *(a1 + 676), v10}];
  }

  objc_autoreleasePoolPop(v11);
LABEL_32:
  v15 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: CarPlay scan state %d", "__WiFiDeviceManagerScanCarPlayRemainingChannels", *(a1 + 696)}];
  }

  objc_autoreleasePoolPop(v15);
  v16 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!v16)
  {
    v22 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Couldn't allocate suppChannelList", "__WiFiDeviceManagerScanCarPlayRemainingChannels"}];
    }

    objc_autoreleasePoolPop(v22);
    goto LABEL_42;
  }

  v17 = v16;
  v18 = *(a1 + 64);
  v19 = sub_100006F88(v18);
  v20 = sub_10001A6E4(v18, v19, v17);
  if (v20)
  {
    v13 = v20;
    v21 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Couldn't get supported channels", "__WiFiDeviceManagerScanCarPlayRemainingChannels"}];
    }

    objc_autoreleasePoolPop(v21);
    goto LABEL_92;
  }

  v24 = CFStringCreateMutable(kCFAllocatorDefault, 0);
  v57 = 0;
  v25 = *(a1 + 696);
  if (v25 == 4)
  {
LABEL_48:
    if (sub_1000E6D08(a1, &v57))
    {
      v26 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Disallowing 5Ghz channel", "__WiFiDeviceManagerScanCarPlayRemainingChannels"}];
      }

      objc_autoreleasePoolPop(v26);
      sub_1000E1714(a1);
LABEL_56:
      v13 = 0;
      goto LABEL_90;
    }

    goto LABEL_57;
  }

  if (v25 != 3)
  {
    if (v25 != 2)
    {
      goto LABEL_57;
    }

    goto LABEL_48;
  }

  v27 = sub_1000E6A7C(a1, &v57);
  *(a1 + 6232) = v57;
  if (v27)
  {
    v28 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Disallowing 2Ghz channel", "__WiFiDeviceManagerScanCarPlayRemainingChannels"}];
    }

    objc_autoreleasePoolPop(v28);
    goto LABEL_56;
  }

LABEL_57:
  v55 = v10;
  if (CFArrayGetCount(v17) >= 1)
  {
    for (i = 0; i < CFArrayGetCount(v17); ++i)
    {
      valuePtr = -1431655766;
      ValueAtIndex = CFArrayGetValueAtIndex(v17, i);
      if (ValueAtIndex)
      {
        v31 = ValueAtIndex;
        Value = CFDictionaryGetValue(ValueAtIndex, @"SUP_CHANNEL");
        v33 = CFDictionaryGetValue(v31, @"SUP_CHANNEL_FLAGS");
        if (Value)
        {
          if (v33)
          {
            *&keys = @"CHANNEL";
            *(&keys + 1) = @"CHANNEL_FLAGS";
            values[0] = Value;
            values[1] = v33;
            v34 = CFDictionaryCreate(kCFAllocatorDefault, &keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            if (!v34)
            {
              v41 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:4 message:{"%s: Couldn't allocate channelEntry", "__WiFiDeviceManagerScanCarPlayRemainingChannels"}];
              }

              objc_autoreleasePoolPop(v41);
              v13 = 4294963394;
LABEL_90:
              if (v24)
              {
                goto LABEL_91;
              }

              goto LABEL_92;
            }

            v35 = v34;
            CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
            v36 = *(a1 + 696);
            if (v36 == 4)
            {
              if (valuePtr >= 36)
              {
                goto LABEL_76;
              }
            }

            else
            {
              if (v36 == 2)
              {
                if (v55 == valuePtr)
                {
                  if (v24)
                  {
                    CFStringAppendFormat(v24, 0, @"%@ ", Value);
                  }

                  CFArrayAppendValue(v4, v35);
                  break;
                }

                goto LABEL_79;
              }

              if (v36 == 3 && valuePtr <= 14)
              {
LABEL_76:
                if (v24)
                {
                  CFStringAppendFormat(v24, 0, @"%@ ", Value);
                }

                CFArrayAppendValue(v4, v35);
              }
            }

LABEL_79:
            CFRelease(v35);
            continue;
          }

          v37 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: Null channel flag", "__WiFiDeviceManagerScanCarPlayRemainingChannels"}];
          }
        }

        else
        {
          v37 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: Null channel number", "__WiFiDeviceManagerScanCarPlayRemainingChannels"}];
          }
        }

        objc_autoreleasePoolPop(v37);
      }
    }
  }

  v13 = sub_100191A78(a1, *(a1 + 3600), v4, 40, 0x18);
  if (v13 || !v24)
  {
    goto LABEL_90;
  }

  v38 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v39 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v40 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
      LODWORD(keys) = 136446210;
      *(&keys + 4) = v40;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", &keys, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v38);
  v13 = 0;
LABEL_91:
  CFRelease(v24);
LABEL_92:
  CFRelease(v17);
  CFRelease(v4);
  if (v13)
  {
    goto LABEL_93;
  }

LABEL_43:
  if (*(a1 + 696))
  {
    return 10;
  }

LABEL_96:
  *(a1 + 696) = 0;
  v43 = *(a1 + 688);
  v44 = 0.5;
  if (v43 == 0.0 || (v45 = v43 + v43, v44 = 4.0, v45 > 4.0))
  {
    v45 = v44;
  }

  *(a1 + 688) = v45;
  v46 = v45 - v45 * 0.1;
  v47 = v45 + v45 * 0.1;
  v48 = arc4random();
  v49 = v46 + (v48 + ((v48 / 0x7FFFFFFF) | ((v48 / 0x7FFFFFFF) << 31))) / 2147483650.0 * (v47 - v46);
  v50 = *(a1 + 320);
  v51 = dispatch_time(0, (v49 * 1000000000.0));
  dispatch_source_set_timer(v50, v51, 0xFFFFFFFFFFFFFFFFLL, 0);
  v52 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v53 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v54 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
      LODWORD(keys) = 136446210;
      *(&keys + 4) = v54;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", &keys, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v52);
  return 1;
}

uint64_t sub_1000E7FE4(const __CFArray *a1, const void *a2)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
    Value = CFDictionaryGetValue(ValueAtIndex, @"CHANNEL");
    if (CFEqual(a2, Value))
    {
      break;
    }

    if (v5 == ++v6)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1000E8070(uint64_t a1)
{
  v2 = *(a1 + 1168);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 1168) = 0;
  }

  *(a1 + 1192) = 0;
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v4 = sub_1000AA864(*(a1 + 3340));
    v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136446210;
      *(&buf + 4) = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v3);
  v6 = 10;
  if (*(a1 + 3340) == 9)
  {
    if (*(a1 + 3432))
    {
      v6 = 11;
    }

    else
    {
      v6 = 10;
    }
  }

  v37 = v6;
  *(a1 + 3340) = v6;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v8 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v9 = v8;
  if (Mutable)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    sub_1001A4E18();
    v32 = 4294963394;
    goto LABEL_50;
  }

  v11 = *(a1 + 64);
  v12 = sub_100006F88(v11);
  v13 = sub_10001A6E4(v11, v12, v9);
  if (v13)
  {
    v32 = v13;
    v36 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s :Device failed to return supported channels.", "__WiFiDeviceManagerScanRemainingChannels"}];
    }
  }

  else
  {
    if (CFArrayGetCount(v9))
    {
      theArray = Mutable;
      v14 = CFStringCreateMutable(kCFAllocatorDefault, 0);
      v40 = 0;
      v15 = sub_1000E6A7C(a1, &v40);
      *(a1 + 6232) = v40;
      v39 = sub_1000E6D08(a1, &v40);
      v16 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v17 = " in 5Ghz only.";
        if (!v15)
        {
          v17 = ".";
        }

        v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
          LODWORD(buf) = 136446210;
          *(&buf + 4) = v19;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu);
        }
      }

      objc_autoreleasePoolPop(v16);
      if (CFArrayGetCount(v9) >= 1)
      {
        for (i = 0; i < CFArrayGetCount(v9); ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v9, i);
          if (ValueAtIndex)
          {
            v22 = ValueAtIndex;
            Value = CFDictionaryGetValue(ValueAtIndex, @"SUP_CHANNEL");
            v24 = CFDictionaryGetValue(v22, @"SUP_CHANNEL_FLAGS");
            if (Value)
            {
              v25 = v24;
              if (v24)
              {
                if (sub_1000E7FE4(*(a1 + 3344), Value) != 1)
                {
                  if (!v15 || (LODWORD(buf) = 0, !CFNumberGetValue(v25, kCFNumberSInt32Type, &buf)) || (buf & 8) == 0)
                  {
                    if (!v39 || (LODWORD(buf) = -1431655766, CFNumberGetValue(Value, kCFNumberSInt32Type, &buf), buf) && buf <= 0xE)
                    {
                      *&buf = @"CHANNEL";
                      *(&buf + 1) = @"CHANNEL_FLAGS";
                      values[0] = Value;
                      values[1] = v25;
                      v26 = CFDictionaryCreate(kCFAllocatorDefault, &buf, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                      if (v26)
                      {
                        v27 = v26;
                        CFArrayAppendValue(theArray, v26);
                        CFArrayAppendValue(*(a1 + 3344), v27);
                        CFRelease(v27);
                        if (v14)
                        {
                          CFStringAppendFormat(v14, 0, @"%@ ", Value);
                        }
                      }
                    }
                  }
                }

                continue;
              }

              v28 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: Null channel flag", "__WiFiDeviceManagerScanRemainingChannels"}];
              }
            }

            else
            {
              v28 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: Null channel number", "__WiFiDeviceManagerScanRemainingChannels"}];
              }
            }

            objc_autoreleasePoolPop(v28);
          }
        }
      }

      sub_1000E1714(a1);
      Mutable = theArray;
      if (v14)
      {
        v29 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v30 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v31 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
            LODWORD(buf) = 136446210;
            *(&buf + 4) = v31;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v29);
      }

      if (!CFArrayGetCount(theArray))
      {
        v32 = 4294963394;
        if (!v14)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      }

      *(a1 + 5692) = 2;
      v32 = sub_100191A78(a1, *(a1 + 3600), theArray, 0, 3);
      if (v14)
      {
LABEL_49:
        CFRelease(v14);
      }

LABEL_50:
      v33 = 1;
      if (!v9)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    }

    v36 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Empty supported channels.", "__WiFiDeviceManagerScanRemainingChannels"}];
    }

    v32 = 0;
  }

  objc_autoreleasePoolPop(v36);
  v33 = 0;
LABEL_51:
  CFRelease(v9);
LABEL_52:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v32)
  {
    v34 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"multi-stage auto-join: Error scanning remaining channels, err=%d", v32}];
    }

    objc_autoreleasePoolPop(v34);
    return sub_1000D7FA8(a1, v32);
  }

  else
  {
    result = v37;
    if ((v33 & 1) == 0)
    {
      sub_1001A4E78();
      return buf;
    }
  }

  return result;
}

void sub_1000E8804(uint64_t a1, const __CFArray *a2)
{
  if (a2)
  {
    Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
    if (Mutable)
    {
      v5 = Mutable;
      Count = CFArrayGetCount(a2);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
          if (ValueAtIndex)
          {
            v9 = sub_10000A878(ValueAtIndex);
            if (i >= Count - 1)
            {
              CFStringAppend(v5, v9);
            }

            else
            {
              CFStringAppendFormat(v5, 0, @"%@, ", v9);
            }
          }
        }
      }

      v10 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v14 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        }
      }

      objc_autoreleasePoolPop(v10);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v12 = sub_1000AA864(*(a1 + 3336));
        *buf = 138412546;
        v14 = v12;
        v15 = 2112;
        v16 = v5;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "{AUTOJOIN, SCAN} %@ found: %@", buf, 0x16u);
      }

      CFRelease(v5);
    }

    else
    {
      sub_1001A4EF0();
    }
  }

  else
  {
    sub_1001A4F48();
  }
}

void sub_1000E8A6C(uint64_t a1)
{
  if (!a1)
  {
    sub_1001A50E4();
    return;
  }

  if (!*(a1 + 1168))
  {
    sub_1001A5078();
    return;
  }

  if (!*(a1 + 3616))
  {
    sub_1001A500C();
    return;
  }

  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  if (!Mutable)
  {
    sub_1001A4FA0();
    return;
  }

  v3 = Mutable;
  if (!CFArrayGetCount(*(a1 + 1168)))
  {
    goto LABEL_79;
  }

  Count = CFArrayGetCount(*(a1 + 3672));
  if (CFArrayGetCount(*(a1 + 1168)) < 1)
  {
    goto LABEL_79;
  }

  v4 = 0;
  v30 = 0;
  v5 = 0;
  v6 = 1;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 1168), v4);
    if (!ValueAtIndex)
    {
      goto LABEL_48;
    }

    v8 = ValueAtIndex;
    if (sub_10000A7CC(ValueAtIndex))
    {
      if (*(a1 + 5592) == 1)
      {
        goto LABEL_48;
      }
    }

    v9 = *(a1 + 3560);
    if (v9)
    {
      if (CFEqual(v9, v8) && !sub_100064904(*(a1 + 64)) && ![+[WiFiUserInteractionMonitor isCellularDataUsable] sharedInstance]
      {
        goto LABEL_48;
      }
    }

    if (sub_100177FFC(v8) && (sub_10000DA34(v8) || sub_10000A540(v8, @"WiFiNetworkAttributeIsPublic") == kCFBooleanTrue))
    {
      v10 = 0;
      v11 = 1;
    }

    else
    {
      v11 = 0;
      v10 = 1;
    }

    v12 = *(a1 + 3560);
    if (v12 && (!CFEqual(v12, v8) || sub_1000C58A4(a1, v8)))
    {
      v13 = *(a1 + 3560);
      if (v13)
      {
        if (CFEqual(v13, v8))
        {
          v14 = 1;
          if (Count < 1)
          {
            goto LABEL_56;
          }

          goto LABEL_26;
        }
      }
    }

    v19 = [*(a1 + 3704) canDeferNetwork:v8 withUsageRank:sub_100189234(a1 andMotionState:{v8), *(a1 + 3408)}];
    v30 += v19;
    if ((v19 & 1) == 0 && Count >= 1)
    {
      v14 = v19 ^ 1;
LABEL_26:
      if (sub_10000AFE4(v8))
      {
        CFArrayAppendValue(*(a1 + 3608), v8);
        v15 = 0;
        ++v30;
        goto LABEL_28;
      }

      goto LABEL_56;
    }

    v15 = 1;
    if (v19)
    {
      LOBYTE(v14) = 0;
      goto LABEL_28;
    }

    v14 = 1;
LABEL_56:
    if (sub_1001933D4(a1, v8))
    {
      v20 = *(a1 + 3616);
      v32.length = CFArrayGetCount(v20);
      v32.location = 0;
      if (CFArrayGetFirstIndexOfValue(v20, v32, v8) == -1)
      {
        CFArrayAppendValue(*(a1 + 3616), v8);
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: duplicate network %@ found, skipping.", "__WiFiDeviceManagerPrepareDeferredNetworkList", sub_10000A878(v8)}];
        }

        objc_autoreleasePoolPop(v21);
      }

      v16 = 0;
      ++v30;
      v15 = 1;
      goto LABEL_29;
    }

    if ((v11 | v14 ^ 1) == 1)
    {
      v30 += v11 & v14;
      v15 = 1;
LABEL_28:
      v16 = 1;
LABEL_29:
      v17 = sub_10000A878(v8);
      if (v6)
      {
        if (v17)
        {
          v18 = sub_10000A878(v8);
        }

        else
        {
          v18 = @"(null)";
        }

        CFStringAppend(v3, v18);
        if ((v15 & 1) == 0)
        {
LABEL_36:
          CFStringAppend(v3, @"(");
          CFStringAppend(v3, @"HS2.0");
          CFStringAppend(v3, @""));
        }
      }

      else
      {
        CFStringAppendFormat(v3, 0, @", %@", v17);
        if ((v15 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      if (v16)
      {
        if (v14)
        {
          goto LABEL_39;
        }

LABEL_43:
        CFStringAppend(v3, @"(");
        CFStringAppend(v3, @"time-defer");
        CFStringAppend(v3, @""));
        if ((v10 & 1) == 0)
        {
          goto LABEL_44;
        }

LABEL_40:
        if (!v5)
        {
          goto LABEL_45;
        }

LABEL_46:
        CFArrayAppendValue(v5, v8);
      }

      else
      {
        CFStringAppend(v3, @"(");
        CFStringAppend(v3, @"HS");
        CFStringAppend(v3, @""));
        if ((v14 & 1) == 0)
        {
          goto LABEL_43;
        }

LABEL_39:
        if (v10)
        {
          goto LABEL_40;
        }

LABEL_44:
        CFStringAppend(v3, @"(");
        CFStringAppend(v3, @"public");
        CFStringAppend(v3, @""));
        if (v5)
        {
          goto LABEL_46;
        }

LABEL_45:
        v5 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        if (v5)
        {
          goto LABEL_46;
        }
      }

      v6 = 0;
    }

LABEL_48:
    ++v4;
  }

  while (v4 < CFArrayGetCount(*(a1 + 1168)));
  v22 = v5 == 0;
  if (v5)
  {
    if (CFArrayGetCount(v5) >= 1)
    {
      v23 = 0;
      do
      {
        v24 = *(a1 + 1168);
        v25 = CFArrayGetCount(v24);
        v26 = CFArrayGetValueAtIndex(v5, v23);
        v33.location = 0;
        v33.length = v25;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v24, v33, v26);
        if (FirstIndexOfValue != -1)
        {
          CFArrayRemoveValueAtIndex(*(a1 + 1168), FirstIndexOfValue);
        }

        ++v23;
      }

      while (v23 < CFArrayGetCount(v5));
    }
  }

  else
  {
    v22 = 1;
  }

  if (v30 > 0)
  {
    v28 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"Deferring auto-join attempt for %@ ", v3}];
    }

    objc_autoreleasePoolPop(v28);
  }

  if (!v22)
  {
    CFRelease(v5);
  }

LABEL_79:

  CFRelease(v3);
}

void sub_1000E9010(uint64_t a1, const __CFArray *a2)
{
  if (!a1)
  {
    sub_1001A51BC();
    return;
  }

  if (!a2)
  {
    sub_1001A5150();
    return;
  }

  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  if (CFArrayGetCount(a2) < 1)
  {
    v27 = -1431655767;
    v26 = 1;
    if (!Mutable)
    {
      return;
    }

LABEL_32:
    if (!CFStringGetLength(Mutable))
    {
LABEL_44:
      CFRelease(Mutable);
      return;
    }

    v28 = objc_autoreleasePoolPush();
    if (v26)
    {
      if (!off_100298C40)
      {
        goto LABEL_43;
      }

      v29 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (!off_100298C40)
      {
        goto LABEL_43;
      }

      v30 = v27 > 3 ? 0 : off_100262378[v27];
      v29 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_43;
      }
    }

    v31 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
    LODWORD(buf) = 136446210;
    *(&buf + 4) = v31;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu);
LABEL_43:
    objc_autoreleasePoolPop(v28);
    goto LABEL_44;
  }

  v5 = 0;
  v6 = 0;
  v7 = -1431655766;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v5);
    if (ValueAtIndex)
    {
      v9 = ValueAtIndex;
      LODWORD(buf) = -1431655766;
      v10 = sub_1000333E8(ValueAtIndex, @"RSSI");
      sub_100190654(a1, v9, 1, &buf, v11, v12, v13, v14, v32, v33, v34, SHIDWORD(v34), v35, SHIDWORD(v35), buf, *(&buf + 1), v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
      v16 = v15;
      if ((buf - 1) < 2)
      {
        v7 = buf;
        v6 = 1;
      }

      if (*(a1 + 40) && *(a1 + 44))
      {
        v17 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v33 = *(a1 + 44);
          v34 = v10;
          v32 = "__WiFiDeviceManagerFilterCandidatesWithRssiThreshold";
          [off_100298C40 WFLog:4 message:"%s: Using Simulated RSSI Value(%d) instead of actual RSSI value(%d)"];
        }

        objc_autoreleasePoolPop(v17);
        LODWORD(v10) = *(a1 + 44);
      }

      if (v10 < v16)
      {
        if (Mutable)
        {
          v18 = buf;
          v19 = buf - 5;
          v20 = sub_10001CDD8(v9);
          if (v19 >= 0xFFFFFFFE)
          {
            if (v20)
            {
              v22 = sub_10000A540(v9, @"BSSID");
            }

            else
            {
              v22 = sub_10000A878(v9);
            }

            v23 = v22;
            v24 = sub_100034EEC(v9, @"RSSI");
            v25 = @"MovingNw";
            if (v18 == 4)
            {
              v25 = @"OmnipresentNw";
            }

            v33 = v24;
            v34 = v25;
            CFStringAppendFormat(Mutable, 0, @"%@(%ld {%@}), ", v23);
          }

          else
          {
            if (v20)
            {
              v21 = sub_10000A540(v9, @"BSSID");
            }

            else
            {
              v21 = sub_10000A878(v9);
            }

            v32 = v21;
            v33 = sub_100034EEC(v9, @"RSSI");
            CFStringAppendFormat(Mutable, 0, @"%@(%ld), ");
          }
        }

        CFArrayRemoveValueAtIndex(a2, v5--);
      }
    }

    ++v5;
  }

  while (v5 < CFArrayGetCount(a2));
  v26 = v6 == 0;
  v27 = v7 - 1;
  if (Mutable)
  {
    goto LABEL_32;
  }
}

void sub_1000E9494(const __CFArray *a1, int a2, CFTypeRef *a3)
{
  v34 = kCFAllocatorDefault;
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  if (!a1 || (Count = CFArrayGetCount(a1), v8 = Count - 1, Count < 1))
  {
    v12 = 0;
    goto LABEL_25;
  }

  v9 = Count;
  v33 = a3;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v10);
    if (ValueAtIndex)
    {
      v14 = ValueAtIndex;
      if (Mutable)
      {
        if (a2 && sub_10001CDD8(ValueAtIndex))
        {
          ++v12;
        }

        v15 = sub_10000A878(v14);
        if (v10 >= v8)
        {
          CFStringAppend(Mutable, v15);
        }

        else
        {
          CFStringAppendFormat(Mutable, 0, @"%@, ", v15);
        }
      }

      v16 = sub_10001CDD8(v14);
      if (a2)
      {
        if (v16)
        {
          v17 = sub_10000A540(v14, @"CHANNEL");
          if (v17)
          {
            v18 = v17;
            v19 = sub_10000A540(v14, @"CHANNEL_FLAGS");
            if (v19)
            {
              v20 = v19;
              if (v11 || (v11 = CFDictionaryCreateMutable(v34, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks)) != 0)
              {
                keys[0] = @"CHANNEL";
                keys[1] = @"CHANNEL_FLAGS";
                values[0] = v18;
                values[1] = v20;
                v21 = CFDictionaryCreate(v34, keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                if (v21)
                {
                  v22 = v21;
                  CFDictionarySetValue(v11, v18, v21);
                  CFRelease(v22);
                }
              }
            }
          }
        }
      }
    }

    ++v10;
  }

  while (v9 != v10);
  if (v11)
  {
    a3 = v33;
    if (CFDictionaryGetCount(v11))
    {
      goto LABEL_26;
    }

    CFRelease(v11);
LABEL_25:
    v11 = 0;
LABEL_26:
    if (!Mutable)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  a3 = v33;
  if (!Mutable)
  {
    goto LABEL_30;
  }

LABEL_27:
  v23 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Auto join scan found: %@", Mutable}];
  }

  objc_autoreleasePoolPop(v23);
  CFRelease(Mutable);
LABEL_30:
  if (v12)
  {
    if (v11)
    {
      v24 = CFDictionaryGetCount(v11);
      v25 = CFStringCreateMutable(v34, 0);
      if (v25)
      {
        v26 = v25;
        v34 = &v32;
        v27 = 8 * v24;
        __chkstk_darwin(v25);
        v28 = &v32 - ((8 * v24 + 15) & 0xFFFFFFFFFFFFFFF0);
        v33 = a3;
        if (v24)
        {
          memset(&v32 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), 170, 8 * v24);
        }

        else
        {
          v27 = 0;
        }

        bzero(v28, v27);
        CFDictionaryGetKeysAndValues(v11, 0, v28);
        if (v24 >= 1)
        {
          for (i = 0; i != v24; ++i)
          {
            Value = CFDictionaryGetValue(*&v28[8 * i], @"CHANNEL");
            if (Value)
            {
              if (i >= v24 - 1)
              {
                CFStringAppendFormat(v26, 0, @"%@", Value);
              }

              else
              {
                CFStringAppendFormat(v26, 0, @"%@, ", Value);
              }
            }
          }
        }

        v31 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"Auto join scan found %ld hidden networks on channels %@", v12, v26}];
        }

        objc_autoreleasePoolPop(v31);
        CFRelease(v26);
        a3 = v33;
      }
    }
  }

  if (a3)
  {
    if (*a3)
    {
      CFRelease(*a3);
    }

    *a3 = v11;
  }

  else if (v11)
  {
    CFRelease(v11);
  }
}

uint64_t sub_1000E9864(uint64_t a1)
{
  v2 = sub_1000C7464(a1, 1);
  if (!v2)
  {
    sub_1001A5290(a1);
    ValueAtIndex = 0;
    v51 = -3903;
    goto LABEL_101;
  }

  v3 = *(a1 + 1168);
  if (!v3)
  {
    goto LABEL_100;
  }

  v55 = v2;
  Count = CFArrayGetCount(v3);
  if (!Count || (v5 = Count, v6 = *(a1 + 1176), v6 >= Count))
  {
    ValueAtIndex = 0;
LABEL_96:
    sub_1001A5228(a1);
    v51 = 0;
    v2 = v55;
    goto LABEL_101;
  }

  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 1168), v6);
    v8 = objc_autoreleasePoolPush();
    if (!ValueAtIndex)
    {
      break;
    }

    if (off_100298C40)
    {
      v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
        *buf = 136446210;
        v57 = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v8);
    if ((!*(a1 + 24) || !sub_10005B850(*(a1 + 64)) || *(a1 + 28)) && sub_10001CDD8(ValueAtIndex))
    {
      v45 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"Autojoin candidate contains hidden ssid"];
      }

      objc_autoreleasePoolPop(v45);
      v46 = sub_10000A540(ValueAtIndex, @"CHANNEL");
      return sub_1000EA750(a1, v46);
    }

    ++*(a1 + 1176);
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: manager->joinRecommendationMode = %d", "__WiFiDeviceManagerProcessCandidates", *(a1 + 6656)}];
    }

    objc_autoreleasePoolPop(v11);
    v12 = *(a1 + 3336);
    if (*(a1 + 6656) && *(a1 + 108) == 2)
    {
      v13 = sub_1000A1F04(ValueAtIndex);
      if (sub_10000A540(ValueAtIndex, @"WiFiNetworkAttributeIsPublic") == kCFBooleanTrue)
      {
        v15 = 0;
      }

      else
      {
        v15 = [+[WiFiAnalyticsManager sharedWiFiAnalyticsManager](WiFiAnalyticsManager "sharedWiFiAnalyticsManager")] ^ 1;
      }

      if (*(a1 + 6656) == 255)
      {
        goto LABEL_41;
      }

      v16 = *(a1 + 112);
      if (!v16 || (v17 = sub_10000A878(ValueAtIndex), !CFEqual(v16, v17)))
      {
        if (v13)
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

        if (v19 != 1)
        {
          goto LABEL_30;
        }

        v25 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: %@ not a public/carrier network. Suppressing approve-to-join alert.", "__WiFiDeviceManagerShowApproveToJoinIfAppropriate", sub_10000A878(ValueAtIndex), v53, v54}];
        }

        goto LABEL_49;
      }

      v18 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: matching ATJ test network %@, bypass network type check.", "__WiFiDeviceManagerShowApproveToJoinIfAppropriate", *(a1 + 112)}];
      }

      objc_autoreleasePoolPop(v18);
LABEL_30:
      v20 = sub_10001A904(a1);
      if (v20)
      {
        v21 = v20;
        v22 = [+[WiFiAnalyticsManager sharedWiFiAnalyticsManager](WiFiAnalyticsManager "sharedWiFiAnalyticsManager")];
        if (v22 == 1)
        {
          v23 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: %@ is not at known location.", "__WiFiDeviceManagerShowApproveToJoinIfAppropriate", sub_10000A878(*(a1 + 3560))}];
          }

          objc_autoreleasePoolPop(v23);
        }

        v14 = sub_1000A0208(ValueAtIndex);
        if (v22 == 1)
        {
LABEL_41:
          if ([+[WiFiUserInteractionMonitor isNetworkingAppInForeground:v14]])
          {
            v26 = *(a1 + 3408);
            if (v26 <= 6 && ((1 << v26) & 0x58) != 0)
            {
              v25 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: Device in motion (%@). Suppressing approve-to-join alert.", "__WiFiDeviceManagerShowApproveToJoinIfAppropriate", sub_100014038(*(a1 + 3408))}];
              }

              goto LABEL_48;
            }

            v25 = objc_autoreleasePoolPush();
            v41 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"Dispatching auto join recommendation for %@", sub_10000A878(ValueAtIndex)}];
            }

            objc_autoreleasePoolPop(v41);
            v42 = sub_100006F88(*(a1 + 64));
            v12 = sub_1000D62B4(a1, v42, 5, 0, ValueAtIndex, 0);
          }

          else
          {
            v25 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: Not in networking app. Suppressing approve-to-join alert.", "__WiFiDeviceManagerShowApproveToJoinIfAppropriate", v52}];
            }

LABEL_48:
            v12 = 21;
          }

LABEL_49:
          objc_autoreleasePoolPop(v25);
          goto LABEL_50;
        }
      }

      else
      {
        v14 = sub_1000A0208(ValueAtIndex);
      }

      v24 = v14;
      v14 = *(a1 + 6816);
      if (v24 >= v14)
      {
        goto LABEL_41;
      }

      v25 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: %@ is within range of known location or last joined date. Suppressing approve-to-join alert. (isWithinRange %d, %f seconds)", "__WiFiDeviceManagerShowApproveToJoinIfAppropriate", sub_10000A878(ValueAtIndex), 1, *&v24}];
      }

      goto LABEL_49;
    }

LABEL_50:
    if (v12 == 21)
    {
      v40 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: not the right time to ask for approval to join for %@. Retrying next candidate.", "__WiFiDeviceManagerProcessCandidates", sub_10000A878(ValueAtIndex)}];
      }

      objc_autoreleasePoolPop(v40);
      goto LABEL_76;
    }

    if (v12 == 14)
    {
      v50 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: requesting approval to join. Waiting for user input for %@.", "__WiFiDeviceManagerProcessCandidates", sub_10000A878(ValueAtIndex)}];
      }

      objc_autoreleasePoolPop(v50);
      return 14;
    }

    if (*(a1 + 6976))
    {
      v27 = sub_100006F88(*(a1 + 64));
      v28 = sub_100007D90(a1, v27, 1);
      if (v28)
      {
        v29 = v28;
        v30 = sub_10000A878(v28);
        v31 = sub_10000A878(ValueAtIndex);
        LODWORD(v30) = CFEqual(v30, v31);
        CFRelease(v29);
        if (v30)
        {
          goto LABEL_76;
        }
      }

      v32 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Disconnect from Hotspot. Attempting network transition to %@!!", "__WiFiDeviceManagerProcessCandidates", sub_10000A878(ValueAtIndex)}];
      }

      objc_autoreleasePoolPop(v32);
      v33 = sub_100006F88(*(a1 + 64));
      sub_1000B9DC8(a1, v33, 1019, "__WiFiDeviceManagerProcessCandidates", 15882);
    }

    if (_os_feature_enabled_impl())
    {
      v34 = sub_100006F88(*(a1 + 64));
      v35 = sub_100007D90(a1, v34, 1);
      if (v35)
      {
        v36 = v35;
        v37 = sub_10000A540(ValueAtIndex, @"COLOCATED_NETWORK_SCOPE_ID");
        v38 = objc_autoreleasePoolPush();
        v39 = off_100298C40;
        if (v37)
        {
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: Link down will be debounced", "__WiFiDeviceManagerProcessCandidates"}];
          }

          objc_autoreleasePoolPop(v38);
        }

        else
        {
          if (off_100298C40)
          {
            v43 = sub_10000A878(v36);
            v53 = sub_10000A878(ValueAtIndex);
            [v39 WFLog:3 message:{"%s: Disconnect from '%@', attempting network transition to '%@'", "__WiFiDeviceManagerProcessCandidates", v43}];
          }

          objc_autoreleasePoolPop(v38);
          v44 = sub_100006F88(*(a1 + 64));
          sub_1000B9DC8(a1, v44, 1013, "__WiFiDeviceManagerProcessCandidates", 15895);
        }

        CFRelease(v36);
      }
    }

    if (!sub_1000E6D08(a1, 0) || (sub_100018030(ValueAtIndex) & 0xFFFFFFFE) != 2)
    {
      if (sub_1000E6D08(a1, 0) || sub_1000E6A7C(a1, 0))
      {
        sub_10000AD34(ValueAtIndex, @"FORCE_BSSID", kCFBooleanTrue);
        v48 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Forceing BSSID Join: %@\n", "__WiFiDeviceManagerProcessCandidates", sub_10000A540(ValueAtIndex, @"BSSID"}];
        }

        objc_autoreleasePoolPop(v48);
      }

      v49 = sub_1000D3D70(a1, ValueAtIndex, 0);
      if (v49)
      {
        return sub_1000E3DB4(a1, ValueAtIndex, 0, v49);
      }

      sub_1000ED650(a1, @"autoJoinAssociating", ValueAtIndex, 0);
      return 12;
    }

LABEL_76:
    v6 = *(a1 + 1176);
    if (v6 >= v5)
    {
      goto LABEL_96;
    }
  }

  v2 = v55;
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "__WiFiDeviceManagerProcessCandidates"}];
  }

  objc_autoreleasePoolPop(v8);
LABEL_100:
  ValueAtIndex = 0;
  v51 = 0;
LABEL_101:
  if (_os_feature_enabled_impl())
  {
    sub_1000EAF00(a1, ValueAtIndex, v51, CWFManagerErrorDomain, @"Failed to process join candidate");
    return 0;
  }

  else if (*(a1 + 24) && sub_10005B850(*(a1 + 64)) && !*(a1 + 28))
  {
    return sub_1000EB018(a1, v51);
  }

  else if (v2)
  {
    return sub_1000EA21C(a1);
  }

  else
  {
    return sub_1000D7FA8(a1, v51);
  }
}

uint64_t sub_1000EA21C(uint64_t a1)
{
  v2 = (a1 + 1168);
  v3 = *(a1 + 1168);
  if (v3)
  {
    CFRelease(v3);
    *v2 = 0;
  }

  if (CFArrayGetCount(*(a1 + 3384)))
  {
    v4 = *(a1 + 3608);
    if (v4)
    {
      if (CFArrayGetCount(v4))
      {
        valuePtr = 0;
        Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (Mutable)
        {
          v6 = Mutable;
          v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
          CFDictionaryAddValue(v6, @"GAS_PROTOCOL", v7);
          CFDictionaryAddValue(v6, @"GAS_QUERY", *(a1 + 3384));
          CFDictionaryAddValue(v6, @"GAS_NETWORKS", *(a1 + 3608));
          Count = CFArrayGetCount(*(a1 + 3608));
          v9 = CFStringCreateMutable(kCFAllocatorDefault, 0);
          if (Count >= 1)
          {
            for (i = 0; i != Count; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 3608), i);
              v12 = sub_10000A540(ValueAtIndex, @"BSSID");
              if (v12)
              {
                if (i >= Count - 1)
                {
                  CFStringAppend(v9, v12);
                }

                else
                {
                  CFStringAppendFormat(v9, 0, @"%@, ", v12);
                }
              }
            }
          }

          v13 = malloc_type_malloc(0x18uLL, 0xA00402214FCE6uLL);
          if (v13)
          {
            v14 = v13;
            *v13 = a1;
            v13[1] = sub_1000EB07C;
            v13[2] = a1;
            v15 = *(a1 + 64);
            v16 = sub_100006F88(v15);
            v17 = sub_1000635E4(v15, v16, v6, 0, sub_1000CF00C, v14, (a1 + 3368));
            if (v17)
            {
              free(v14);
            }
          }

          else
          {
            v17 = 4294963395;
          }

          CFRelease(v6);
          if (v7)
          {
            CFRelease(v7);
          }

          v18 = objc_autoreleasePoolPush();
          if (v17)
          {
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"Unable to send GAS query. Error %d", v17}];
            }

            objc_autoreleasePoolPop(v18);
            if (v9)
            {
              CFRelease(v9);
            }

            v19 = v17;
            return sub_1000D7FA8(a1, v19);
          }

          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: Sending GAS request to %@", "__WiFiDeviceManagerProcessDeferredNetworks", v9}];
          }

          objc_autoreleasePoolPop(v18);
          if (v9)
          {
            CFRelease(v9);
          }

          return 13;
        }
      }

      else
      {
        sub_1001A53E4();
      }
    }

    else
    {
      sub_1001A530C();
    }
  }

  else
  {
    sub_1001A5378();
  }

  if (sub_1001A543C(a1, v2, &v22))
  {
    v19 = 0;
    return sub_1000D7FA8(a1, v19);
  }

  return v22;
}

uint64_t sub_1000EA500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    goto LABEL_36;
  }

  if (a1 | a2)
  {
    v6 = -1;
  }

  else
  {
    v6 = 0;
  }

  if (a2)
  {
    result = 1;
  }

  else
  {
    result = v6;
  }

  if (!a1 || !a2)
  {
    return result;
  }

  Count = CFArrayGetCount(*(a3 + 3624));
  if (!Count)
  {
LABEL_36:
    v19 = a2;
    ValueAtIndex = a1;
LABEL_37:

    return sub_10009F690(ValueAtIndex, v19);
  }

  v9 = Count;
  if (*(a3 + 3336) != 11)
  {
    goto LABEL_26;
  }

  v10 = *(a3 + 3424);
  if (!v10 || !CFArrayGetCount(v10))
  {
    goto LABEL_26;
  }

  v11 = sub_100177510(*(a3 + 3424), a1);
  v12 = sub_100177510(*(a3 + 3424), a2);
  v13 = objc_autoreleasePoolPush();
  v14 = off_100298C40;
  if (off_100298C40)
  {
    v15 = sub_10000A878(a1);
    [v14 WFLog:3 message:{"%s: ranking: %@(%ld), %@(%ld)", "__WiFiDeviceManagerNetworkCompareAutoJoinPriority", v15, v11, sub_10000A878(a2), v12}];
  }

  objc_autoreleasePoolPop(v13);
  if (v11 != -1 && v12 != -1)
  {
    if (v11 > v12)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  result = v11 == -1 ? 1 : -1;
  if (v11 == -1 && v12 == -1)
  {
LABEL_26:
    v25.location = 0;
    v25.length = v9;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(a3 + 3624), v25, a1);
    ValueAtIndex = a1;
    if (FirstIndexOfValue != -1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a3 + 3624), FirstIndexOfValue);
    }

    v26.location = 0;
    v26.length = v9;
    v18 = CFArrayGetFirstIndexOfValue(*(a3 + 3624), v26, a2);
    v19 = a2;
    if (v18 != -1)
    {
      v19 = CFArrayGetValueAtIndex(*(a3 + 3624), v18);
    }

    if (*(a3 + 7056))
    {
      v20 = sub_10000A878(a1);
      v21 = sub_10000A878(*(a3 + 7056));
      if (CFEqual(v20, v21))
      {
        return -1;
      }

      v22 = sub_10000A878(a2);
      v23 = sub_10000A878(*(a3 + 7056));
      if (CFEqual(v22, v23))
      {
        return 1;
      }
    }

    goto LABEL_37;
  }

  return result;
}

uint64_t sub_1000EA750(uint64_t a1, const void *a2)
{
  Count = CFArrayGetCount(*(a1 + 3600));
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  v6 = *(a1 + 1168);
  if (!v6)
  {
LABEL_116:
    v54 = -3902;
    if (!Mutable)
    {
      return sub_1000D7FA8(a1, v54);
    }

    goto LABEL_111;
  }

  v7 = CFArrayGetCount(v6);
  if (!v7 || (v8 = *(a1 + 1176), v8 >= v7))
  {
    sub_1001A5540(a1);
    goto LABEL_116;
  }

  if (!*(a1 + 1208))
  {
    goto LABEL_76;
  }

  if (*(a1 + 1216) != a2)
  {
    *(a1 + 1216) = a2;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 1168), v8);
  if (!sub_10001CDD8(ValueAtIndex))
  {
LABEL_76:
    v33 = 12;
    v34 = 1;
    if (!Mutable)
    {
LABEL_78:
      if (!v34)
      {
        return v33;
      }

      v35 = CFArrayGetValueAtIndex(*(a1 + 1168), *(a1 + 1176));
      if (!v35 || sub_10001CDD8(v35))
      {
        ++*(a1 + 1176);
      }

      return sub_1000E9864(a1);
    }

LABEL_77:
    CFRelease(Mutable);
    goto LABEL_78;
  }

  if (*(a1 + 1200) >= Count)
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"Autojoin reset hidden index %ld, hiddenCount %ld", *(a1 + 1200), Count}];
    }

    objc_autoreleasePoolPop(v11);
    *(a1 + 1200) = 0;
    v10 = *(a1 + 1176) + 1;
    *(a1 + 1176) = v10;
  }

  else
  {
    v10 = *(a1 + 1176);
  }

  if (v10 < 1)
  {
    goto LABEL_18;
  }

  v12 = CFArrayGetValueAtIndex(*(a1 + 1168), v10 - 1);
  if (!v12)
  {
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"Previous Scan Candidate is Null!, index %ld", *(a1 + 1176)}];
    }

    objc_autoreleasePoolPop(v13);
LABEL_18:
    v12 = 0;
  }

  v14 = CFArrayGetCount(*(a1 + 1168));
  if (!v12 || *(a1 + 1200) || (v15 = v14, !sub_10001CBF8(v12)))
  {
LABEL_34:
    if (CFStringGetLength(Mutable))
    {
      v62.length = CFStringGetLength(Mutable);
      v62.location = 0;
      CFStringDelete(Mutable, v62);
    }

    v21 = CFArrayGetValueAtIndex(*(a1 + 1168), *(a1 + 1176));
    v22 = *(a1 + 1200);
    if (v22 < Count)
    {
      do
      {
        v23 = CFArrayGetValueAtIndex(*(a1 + 3600), v22);
        v24 = *(a1 + 1224);
        v63.length = CFArrayGetCount(v24);
        v63.location = 0;
        if (CFArrayGetFirstIndexOfValue(v24, v63, v23) == -1)
        {
          if (sub_10009F48C(v21, v23))
          {
            goto LABEL_43;
          }

          if (Mutable)
          {
            sub_100192784(a1, v23, Mutable);
          }
        }

        ++v22;
      }

      while (Count != v22);
      v22 = Count;
    }

LABEL_43:
    if (!CFStringGetLength(Mutable))
    {
LABEL_70:
      *(a1 + 1200) = v22;
      if (CFStringGetLength(Mutable))
      {
        v64.length = CFStringGetLength(Mutable);
        v64.location = 0;
        CFStringDelete(Mutable, v64);
      }

      v31 = *(a1 + 1200);
      if (v31 >= CFArrayGetCount(*(a1 + 3600)))
      {
        v32 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"Autojoin reset hidden index %ld, hiddenCount %ld as all directed networks scanned for matching security", *(a1 + 1200), Count}];
        }

        objc_autoreleasePoolPop(v32);
        *(a1 + 1200) = 0;
        goto LABEL_76;
      }

      values = CFDictionaryGetValue(*(a1 + 1208), a2);
      cf = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
      v37 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      v38 = CFDictionaryGetCount(*(a1 + 1208));
      v57 = CFArrayGetValueAtIndex(*(a1 + 3600), *(a1 + 1200));
      if (v38)
      {
        v39 = *(a1 + 1168);
        if (v39)
        {
          v40 = CFArrayGetCount(v39);
          if (v40 >= 1)
          {
            v41 = v40;
            for (i = 0; i != v41; ++i)
            {
              v43 = CFArrayGetValueAtIndex(*(a1 + 1168), i);
              if (v43)
              {
                v44 = v43;
                if (sub_10001CBF8(v43))
                {
                  if (sub_10009F48C(v57, v44))
                  {
                    v45 = sub_10000A540(v44, @"CHANNEL");
                    if (v45)
                    {
                      v46 = v45;
                      v47 = sub_10000A540(v44, @"CHANNEL_FLAGS");
                      if (v47)
                      {
                        v48 = v47;
                        if (CFArrayGetCount(v37) < 1)
                        {
LABEL_99:
                          keys[0] = @"CHANNEL";
                          keys[1] = @"CHANNEL_FLAGS";
                          v58[0] = v46;
                          v58[1] = v48;
                          v52 = CFDictionaryCreate(kCFAllocatorDefault, keys, v58, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                          if (v52)
                          {
                            v53 = v52;
                            CFArrayAppendValue(v37, v52);
                            CFRelease(v53);
                          }
                        }

                        else
                        {
                          v49 = 0;
                          while (1)
                          {
                            v50 = CFArrayGetValueAtIndex(v37, v49);
                            if (v50)
                            {
                              Value = CFDictionaryGetValue(v50, @"CHANNEL");
                              if (CFEqual(v46, Value))
                              {
                                break;
                              }
                            }

                            if (++v49 >= CFArrayGetCount(v37))
                            {
                              goto LABEL_99;
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
      }

      sub_1000E1714(a1);
      *(a1 + 5692) = 10;
      if (CFArrayGetCount(v37) < 1)
      {
        v55 = cf;
        v54 = sub_100191A78(a1, v57, cf, 0, 7);
      }

      else
      {
        v54 = sub_100191A78(a1, v57, v37, 0, 7);
        CFArrayAppendValue(*(a1 + 1224), v57);
        v55 = cf;
      }

      if (v55)
      {
        CFRelease(v55);
      }

      if (v37)
      {
        CFRelease(v37);
      }

      if (!v54)
      {
        v34 = 0;
        v33 = 5;
        if (!Mutable)
        {
          goto LABEL_78;
        }

        goto LABEL_77;
      }

      if (!Mutable)
      {
        return sub_1000D7FA8(a1, v54);
      }

LABEL_111:
      CFRelease(Mutable);
      return sub_1000D7FA8(a1, v54);
    }

    v25 = objc_autoreleasePoolPush();
    v26 = off_100298C40;
    if (!off_100298C40)
    {
LABEL_69:
      objc_autoreleasePoolPop(v25);
      goto LABEL_70;
    }

    if (v21)
    {
      if (sub_100009730(v21))
      {
        v27 = @"EAP";
LABEL_68:
        [v26 WFLog:3 message:{"Autojoin looking for %@ hidden network, so skipping - %@", v27, Mutable}];
        goto LABEL_69;
      }

      if (sub_10001CF3C(v21))
      {
        v27 = @"WPA";
        goto LABEL_68;
      }

      if (sub_10009DB7C(v21))
      {
        v27 = @"WEP";
        goto LABEL_68;
      }

      if (sub_10009E148(v21))
      {
        v27 = @"SAE";
        goto LABEL_68;
      }
    }

    v27 = @"OPEN";
    goto LABEL_68;
  }

  for (j = *(a1 + 1176); j < CFArrayGetCount(*(a1 + 1168)); ++j)
  {
    v17 = CFArrayGetValueAtIndex(*(a1 + 1168), *(a1 + 1176));
    if (!sub_10001CDD8(v17))
    {
      if (CFStringGetLength(Mutable))
      {
        v30 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"Autojoin is processing network %ld of %ld candidates, skipped candidate - %@", *(a1 + 1176) + 1, v15, Mutable}];
        }

        objc_autoreleasePoolPop(v30);
      }

      goto LABEL_76;
    }

    if (!sub_10009F48C(v17, v12))
    {
      break;
    }

    if (Mutable)
    {
      sub_100192784(a1, v17, Mutable);
    }

    ++*(a1 + 1176);
  }

  v18 = *(a1 + 1176);
  Length = CFStringGetLength(Mutable);
  if (v18 < v15)
  {
    if (Length)
    {
      v20 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"Autojoin is processing network %ld of %ld candidates, skipped candidates - %@", *(a1 + 1176) + 1, v15, Mutable}];
      }

      objc_autoreleasePoolPop(v20);
    }

    goto LABEL_34;
  }

  if (Length)
  {
    v28 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"Autojoin completed processing %ld candidates, skipped candidates - %@", *(a1 + 1176) + 1, Mutable}];
    }

    objc_autoreleasePoolPop(v28);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return sub_1000E9864(a1);
}

void sub_1000EAF00(uint64_t a1, uint64_t a2, uint64_t a3, CFErrorDomain a4, uint64_t a5)
{
  v10 = objc_autoreleasePoolPush();
  if (!a3)
  {
    a3 = 57;
  }

  if (!a4)
  {
    a4 = kCFErrorDomainPOSIX;
  }

  if (a5)
  {
    v14 = NSLocalizedDescriptionKey;
    v15 = a5;
    v13 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v11 = a4;
    v12 = a3;
  }

  else
  {
    v11 = a4;
    v12 = a3;
    v13 = 0;
  }

  sub_100193454(a1, a2, [NSError errorWithDomain:v11 code:v12 userInfo:v13]);
  objc_autoreleasePoolPop(v10);
}

uint64_t sub_1000EB018(_DWORD *a1, int a2)
{
  if (a1[1398] == 1 || *(a1 + 5576))
  {
    return sub_1000E6DF0(a1);
  }

  v3 = a1[835];
  if (v3 <= 0xB)
  {
    if (((1 << v3) & 0xC0) != 0)
    {
      return sub_1000E6EB0(a1);
    }

    if (((1 << v3) & 0x300) != 0)
    {
      return sub_1000E8070(a1);
    }

    if (((1 << v3) & 0xC00) != 0)
    {
      return sub_1000EA21C(a1);
    }
  }

  return sub_1000D7FA8(a1, a2);
}

void sub_1000EB07C(uint64_t a1, uint64_t a2, const __CFArray *a3, uint64_t a4)
{
  v7 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Auto join GAS query completed (%d) with current state: %@", a4, sub_1000AA864(*(a1 + 3336))}];
  }

  objc_autoreleasePoolPop(v7);
  v8 = sub_100060BB0(*(a1 + 64));
  if (v8 == *(a1 + 3368))
  {
    v9 = *(a1 + 3392);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 3392) = 0;
    }

    if (a3)
    {
      MutableCopy = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, a3);
    }

    else
    {
      MutableCopy = 0;
    }

    *(a1 + 3392) = MutableCopy;
    *(a1 + 3400) = a4;

    sub_1000B6EBC(a1);
  }

  else
  {
    v11 = v8;
    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"Ignorning old request.  CurrentCommand=%lld PendingCommand=%lld", v11, *(a1 + 3368)}];
    }

    objc_autoreleasePoolPop(v12);
  }
}

void sub_1000EB1B8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2[30])
  {
    v3 = v2[490];
    v4 = sub_100006F88(v2[8]);
    v5 = a1 + 40;
    v3(v2, v4, *(*(*(a1 + 32) + 8) + 24), *(*(*(a1 + 40) + 8) + 24), *(a1 + 56), *(*(a1 + 48) + 3928));
    CFRelease(*(a1 + 48));
    v6 = *(*(*(a1 + 32) + 8) + 24);
    if (v6)
    {
      CFRelease(v6);
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }

    v7 = *(*(*v5 + 8) + 24);
    if (!v7)
    {
      return;
    }

LABEL_10:
    CFRelease(v7);
    *(*(*v5 + 8) + 24) = 0;
    return;
  }

  CFRelease(*(a1 + 48));
  v8 = *(*(*(a1 + 32) + 8) + 24);
  if (v8)
  {
    CFRelease(v8);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  v10 = *(a1 + 40);
  v9 = a1 + 40;
  v7 = *(*(v10 + 8) + 24);
  if (v7)
  {
    v5 = v9;
    goto LABEL_10;
  }
}

void sub_1000EB2B4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2[30])
  {
    v3 = v2[490];
    v4 = sub_100006F88(v2[8]);
    v5 = a1 + 40;
    v3(v2, v4, *(*(*(a1 + 32) + 8) + 24), *(*(*(a1 + 40) + 8) + 24), *(a1 + 56), *(*(a1 + 48) + 3928));
    CFRelease(*(a1 + 48));
    v6 = *(*(*(a1 + 32) + 8) + 24);
    if (v6)
    {
      CFRelease(v6);
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }

    v7 = *(*(*v5 + 8) + 24);
    if (!v7)
    {
      return;
    }

LABEL_10:
    CFRelease(v7);
    *(*(*v5 + 8) + 24) = 0;
    return;
  }

  CFRelease(*(a1 + 48));
  v8 = *(*(*(a1 + 32) + 8) + 24);
  if (v8)
  {
    CFRelease(v8);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  v10 = *(a1 + 40);
  v9 = a1 + 40;
  v7 = *(*(v10 + 8) + 24);
  if (v7)
  {
    v5 = v9;
    goto LABEL_10;
  }
}

id sub_1000EB3B0(id a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (!a1)
  {
    sub_1001A5620();
    goto LABEL_46;
  }

  if (!a2)
  {
    sub_1001A55B4();
    a1 = 0;
    goto LABEL_46;
  }

  v5 = [a1 objectForKey:@"AUTHEVENT_STATUS"];
  v6 = [a1 objectForKey:@"AUTHEVENT_REASON"];
  v7 = [a1 objectForKey:@"ASSOCEVENT_STATUS"];
  v8 = [a1 objectForKey:@"ASSOCEVENT_REASON"];
  v22 = [a1 objectForKey:@"SETSSID_STATUS"];
  v21 = [a1 objectForKey:@"SETSSID_REASON"];
  v9 = [a1 objectForKey:@"SUPPLICANTEVENT_STATUS"];
  v10 = [a1 objectForKey:@"SUPPLICANTEVENT_REASON"];
  v11 = [a1 objectForKey:@"REASSOCEVENT_STATUS"];
  v23 = [a1 objectForKey:@"REASSOCEVENT_REASON"];
  a1 = 0;
  if (v5 && v6)
  {
    if (sub_1000EB93C([v5 intValue], objc_msgSend(v6, "intValue")))
    {
      v12 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s Auth Status/Reason for %@ BssBlacklist Eligible - Status:%d ieeeStatus:%d", "__CopyReasonsFromSubStatesForBssBlacklist", a2, objc_msgSend(v5, "intValue") & 0x1FF, objc_msgSend(v6, "intValue") & 0x1FF}];
      }

      objc_autoreleasePoolPop(v12);
      a1 = objc_alloc_init(NSMutableArray);
      [a1 addObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", objc_msgSend(v6, "intValue"))}];
    }

    else
    {
      a1 = 0;
    }
  }

  if (v7 && v8 && sub_1000EB93C([v7 intValue], objc_msgSend(v8, "intValue")))
  {
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s Assoc Status/Reason for %@ BssBlacklist Eligible - Status:%d ieeeStatus:%d", "__CopyReasonsFromSubStatesForBssBlacklist", a2, objc_msgSend(v7, "intValue") & 0x1FF, objc_msgSend(v8, "intValue") & 0x1FF}];
    }

    objc_autoreleasePoolPop(v13);
    if (!a1)
    {
      a1 = objc_alloc_init(NSMutableArray);
    }

    [a1 addObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", objc_msgSend(v8, "intValue"))}];
  }

  if (v11 && v23 && sub_1000EB93C([v11 intValue], objc_msgSend(v23, "intValue")))
  {
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s Reassoc Status/Reason for %@ BssBlacklist Eligible - Status:%d ieeeStatus:%d", "__CopyReasonsFromSubStatesForBssBlacklist", a2, objc_msgSend(v11, "intValue") & 0x1FF, objc_msgSend(v23, "intValue") & 0x1FF}];
    }

    objc_autoreleasePoolPop(v14);
    v15 = v21;
    if (!a1)
    {
      a1 = objc_alloc_init(NSMutableArray);
    }

    [a1 addObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", objc_msgSend(v23, "intValue"))}];
    if (!v22)
    {
      goto LABEL_35;
    }

    goto LABEL_28;
  }

  v15 = v21;
  if (v22)
  {
LABEL_28:
    if (v15 && sub_1000EB93C([v22 intValue], objc_msgSend(v15, "intValue")))
    {
      v16 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s SetSsid Status/Reason for %@ BssBlacklist Eligible - Status:%d ieeeStatus:%d", "__CopyReasonsFromSubStatesForBssBlacklist", a2, objc_msgSend(v22, "intValue") & 0x1FF, objc_msgSend(v15, "intValue") & 0x1FF}];
      }

      objc_autoreleasePoolPop(v16);
      if (!a1)
      {
        a1 = objc_alloc_init(NSMutableArray);
      }

      [a1 addObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", objc_msgSend(v15, "intValue"))}];
    }
  }

LABEL_35:
  if (v9 && v10)
  {
    if ((v17 = [v9 intValue], v18 = objc_msgSend(v10, "intValue"), v17 + 528350207 <= 7) && ((1 << (v17 - 1)) & 0x9F) != 0 || v17 == -528350133)
    {
      if (v18 + 528339945 >= 0xFFFFFFE9)
      {
        v19 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s Supplicant Event Status/Reason for %@ BssBlacklist Eligible - Status:%d ieeeStatus:%d", "__CopyReasonsFromSubStatesForBssBlacklist", a2, objc_msgSend(v9, "intValue") & 0x1FF, objc_msgSend(v10, "intValue") & 0x1FF}];
        }

        objc_autoreleasePoolPop(v19);
        if (!a1)
        {
          a1 = objc_alloc_init(NSMutableArray);
        }

        [a1 addObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", objc_msgSend(v10, "intValue"))}];
      }
    }
  }

LABEL_46:
  objc_autoreleasePoolPop(v4);
  return a1;
}

uint64_t sub_1000EB93C(int a1, int a2)
{
  if (((a1 + 528350207) > 7 || ((1 << (a1 - 1)) & 0x9F) == 0) && a1 != -528350133)
  {
    return 0;
  }

  result = 1;
  if (((a2 + 528347119) > 0x14 || ((1 << (a2 - 17)) & 0x172001) == 0) && ((a2 + 528347054) > 0x11 || ((1 << (a2 - 82)) & 0x20C03) == 0))
  {
    return 0;
  }

  return result;
}

void sub_1000EB9D4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 240))
  {
    v4 = *(a1 + 32);
    v3 = (a1 + 32);
    (*(v2 + 4792))(v2, *(*(v4 + 8) + 24), @"FailureCountCurrent", kCFBooleanTrue, *(v2 + 4800));
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

void sub_1000EBA60(uint64_t a1, void *a2)
{
  if (a2)
  {
    [*(*(a1 + 32) + 7480) setJoinEvent:0 withReason:1 lastDisconnectReason:0 lastJoinFailure:*(a1 + 40) andNetworkDetails:a2 forInterface:sub_100006F88(*(*(a1 + 32) + 64))];
  }
}

uint64_t sub_1000EBAD8(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 3336);
  v6 = sub_1000A5008(a2);
  v7 = sub_10009A8E0(a2);
  v8 = objc_autoreleasePoolPush();
  if (v7)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: ResponseType=%@", "__WiFiDeviceManagerProcessEAPTrustNotification", sub_1000A5484(v6)}];
    }

    objc_autoreleasePoolPop(v8);
    if (v6 <= 2)
    {
      if (v6 == 1)
      {
        goto LABEL_9;
      }

      if (v6 != 2)
      {
        goto LABEL_37;
      }

      sub_1001A59C0();
    }

    else if (v6 != 3)
    {
      if (v6 != 4)
      {
        goto LABEL_37;
      }

LABEL_9:
      v9 = sub_100009664(a2);
      if (!v9)
      {
        sub_1001A5944(v7);
        goto LABEL_37;
      }

      Value = CFDictionaryGetValue(v9, @"TLSServerCertificateChain");
      if (!Value)
      {
        sub_1001A58C8(v7);
        goto LABEL_37;
      }

      v11 = Value;
      v12 = sub_100017C00(v7);
      MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v12);
      if (v12)
      {
        CFRelease(v12);
      }

      v14 = CFDictionaryGetValue(MutableCopy, @"EnterpriseProfile");
      if (v14)
      {
        v15 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v14);
        v16 = v15;
        if (!v15)
        {
          sub_1001A57E0();
          goto LABEL_33;
        }

        v17 = CFDictionaryGetValue(v15, @"EAPClientConfiguration");
        if (!v17)
        {
          sub_1001A5764(v7);
          goto LABEL_33;
        }

        v18 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v17);
        if (!v18)
        {
          sub_1001A56F8();
          goto LABEL_33;
        }

        v19 = v18;
        CFDictionarySetValue(v18, @"TLSSaveTrustExceptions", kCFBooleanTrue);
        CFDictionarySetValue(v19, @"TLSUserTrustProceedCertificateChain", v11);
        CFDictionarySetValue(v16, @"EAPClientConfiguration", v19);
        CFRelease(v19);
        CFDictionarySetValue(MutableCopy, @"EnterpriseProfile", v16);
        CFRelease(v16);
        v20 = sub_10000AD2C(kCFAllocatorDefault, MutableCopy);
        if (v20)
        {
          v21 = v20;
          if (v6 == 4)
          {
            sub_1000EC328(1, v20);
            CFRelease(v21);
            v16 = 0;
            v5 = 14;
LABEL_33:
            if (MutableCopy)
            {
              CFRelease(MutableCopy);
            }

            if (v16)
            {
              CFRelease(v16);
            }

            goto LABEL_37;
          }

          v22 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: proceeding with joining %@", "__WiFiDeviceManagerProcessEAPTrustNotification", v21}];
          }

          objc_autoreleasePoolPop(v22);
          *(a1 + 1184) = 0;
          v23 = sub_1000D3D70(a1, v21, 1);
          if (!v23)
          {
            sub_1000ED650(a1, @"autoJoinAssociating", v21, 0);
            v16 = 0;
            v5 = 12;
            goto LABEL_33;
          }

          v5 = sub_1000E3DB4(a1, v21, 0, v23);
        }

        else
        {
          sub_1001A568C();
        }
      }

      else
      {
        sub_1001A584C(v7);
      }

      v16 = 0;
      goto LABEL_33;
    }

    if (sub_100009730(v7))
    {
      sub_100062654(*(a1 + 64), v7, 1);
    }

    if (_os_feature_enabled_impl())
    {
      sub_1000EAF00(a1, v7, 89, 0, 0);
    }

    v5 = sub_1000E9864(a1);
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: network is null", "__WiFiDeviceManagerProcessEAPTrustNotification"}];
    }

    objc_autoreleasePoolPop(v8);
  }

LABEL_37:
  objc_autoreleasePoolPop(v4);
  return v5;
}

const __CFArray *sub_1000EBEB0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 3336);
  v5 = sub_1000A5008(a2);
  if (v5 == 4)
  {
    sub_1000EC328(0, 0);
  }

  else if (v5 == 1)
  {
    v6 = sub_10009A8E0(a2);
    if (*(a1 + 3920))
    {
      if (*(a1 + 240))
      {
        v12 = 0;
        v13 = &v12;
        v14 = 0x2020000000;
        v15 = 0;
        if (v6)
        {
          v7 = CFRetain(v6);
          v13[3] = v7;
        }

        CFRetain(a1);
        v8 = *(a1 + 240);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000EC52C;
        block[3] = &unk_10025EFD8;
        block[4] = &v12;
        block[5] = a1;
        dispatch_async(v8, block);
        _Block_object_dispose(&v12, 8);
      }

      else
      {
        v10 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: null queue.", "__WiFiDeviceManagerProcessAskToJoinNotification"}];
        }

        objc_autoreleasePoolPop(v10);
      }
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  return sub_10018DA2C(a1);
}

void sub_1000EC02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000EC044(uint64_t a1, int a2)
{
  v4 = *(a1 + 3336);
  v5 = [*(a1 + 6824) getHotspotDeviceName:*(a1 + 6984)];
  switch(a2)
  {
    case 3:
      v13 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: User response System timeout", "__WiFiDeviceManagerProcessAskToJoinHotspotNotification"}];
      }

      objc_autoreleasePoolPop(v13);
      if (_os_feature_enabled_impl() && *(a1 + 6984))
      {
        v14 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Adding %@:[%@] to no response Hotspot List", "__WiFiDeviceManagerProcessAskToJoinHotspotNotification", v5, *(a1 + 6984)}];
        }

        objc_autoreleasePoolPop(v14);
        v15 = [[WiFiUserNotRespondedHotspotInfoType alloc] initWithHotspot:*(a1 + 6984)];
        [*(a1 + 7016) addObject:v15];
      }

      sub_1000B6E20(a1, 0);
      v4 = *(a1 + 6972);
      sub_1000EC5CC(a1, @"userJoinAborted", 0);
      if (!_os_feature_enabled_impl())
      {
        return v4;
      }

      v11 = NSPOSIXErrorDomain;
      v12 = @"System canceled hotspot notification";
LABEL_27:
      sub_1000EC6C0(a1, v5, 89, v11, v12);
      return v4;
    case 2:
      if (*(a1 + 6984))
      {
        v10 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Adding %@:[%@] to User Suppressed List until next link state change", "__WiFiDeviceManagerProcessAskToJoinHotspotNotification", v5, *(a1 + 6984)}];
        }

        objc_autoreleasePoolPop(v10);
        CFArrayAppendValue(*(a1 + 6992), *(a1 + 6984));
      }

      *(a1 + 6984) = 0;
      *(a1 + 6952) = 0;
      sub_1000B6E20(a1, 0);
      v4 = *(a1 + 6972);
      *(a1 + 6536) = -3909;
      sub_100146CAC((a1 + 6536));
      sub_1000EC5CC(a1, @"userJoinAborted", 0);
      if (!_os_feature_enabled_impl())
      {
        return v4;
      }

      v11 = NSPOSIXErrorDomain;
      v12 = @"User canceled hotspot notification";
      goto LABEL_27;
    case 1:
      v4 = sub_1000E61CC(a1, *(a1 + 6984));
      v6 = sub_10001A904(a1);
      v7 = v6;
      if (v6 && v5)
      {
        if ([WiFiLocationManager isLocationValid:v6 uptoSeconds:1 isHighAccuracy:900.0])
        {
          v8 = *(a1 + 7120);
          if (v8)
          {
            CFRelease(v8);
            *(a1 + 7120) = 0;
          }

          v9 = *(a1 + 7112);
          if (v9)
          {
            CFRelease(v9);
            *(a1 + 7112) = 0;
          }

          *(a1 + 7120) = v7;
          CFRetain(v7);
          *(a1 + 7112) = [v5 copy];
        }

        goto LABEL_29;
      }

      if (v6)
      {
LABEL_29:
        CFRelease(v7);
      }

      break;
  }

  return v4;
}

void sub_1000EC328(uint64_t a1, CFDictionaryRef *a2)
{
  if (!*off_100262398[a1])
  {
    sub_1001A5B98(a1);
    return;
  }

  v4 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"prefs:root=WIFI&path=%@", *off_100262398[a1]);
  if (!v4)
  {
    sub_1001A5B28(a1);
    return;
  }

  v5 = v4;
  v6 = CFURLCreateWithString(kCFAllocatorDefault, v4, 0);
  v7 = objc_autoreleasePoolPush();
  if (v6)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: launching settings with url %@", "__WiFiDeviceManagerOpenSettings", v6}];
    }

    objc_autoreleasePoolPop(v7);
    if (a2)
    {
      v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/%@", @"/var/mobile/Library/Caches/com.apple.wifi/", @"LastEnterpriseNetwork.plist");
      v9 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: archiving network to path %@", "__WiFiDeviceManagerOpenSettings", v8}];
      }

      objc_autoreleasePoolPop(v9);
      if (!sub_1000A20A8(a2, v8))
      {
        sub_1001A5A4C(v8);
        goto LABEL_11;
      }
    }

    else
    {
      sub_1001A5ABC();
      v8 = 0;
    }

    [+[LSApplicationWorkspace defaultWorkspace](LSApplicationWorkspace "defaultWorkspace")];
LABEL_11:
    CFRelease(v5);
    CFRelease(v6);
    if (!v8)
    {
      return;
    }

    v10 = v8;
    goto LABEL_13;
  }

  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: failed to create url for type %d", "__WiFiDeviceManagerOpenSettings", a1}];
  }

  objc_autoreleasePoolPop(v7);
  v10 = v5;
LABEL_13:

  CFRelease(v10);
}

void sub_1000EC52C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2[30])
  {
    v3 = v2[490];
    v4 = sub_100006F88(v2[8]);
    v6 = *(a1 + 32);
    v5 = (a1 + 32);
    v3(v2, v4, *(*(v6 + 8) + 24), 0, 0, *(v5[1] + 491));
    CFRelease(v5[1]);
    v7 = *v5;
  }

  else
  {
    CFRelease(*(a1 + 40));
    v8 = *(a1 + 32);
    v5 = (a1 + 32);
    v7 = v8;
  }

  v9 = *(v7[1] + 24);
  if (v9)
  {
    CFRelease(v9);
    *(*(*v5 + 1) + 24) = 0;
  }
}

void sub_1000EC5CC(uint64_t *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a1[517])
      {
        Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (Mutable)
        {
          v7 = Mutable;
          CFDictionarySetValue(Mutable, @"userJoinStatus", a2);
          if (a3)
          {
            CFDictionarySetValue(v7, @"userJoinNetwork", a3);
          }

          v8 = a1[517];
          v9 = sub_100006F88(a1[8]);
          v8(a1, v9, a1[518], v7);

          CFRelease(v7);
        }

        else
        {
          sub_1001A5C08();
        }
      }
    }

    else
    {
      sub_1001A5C74();
    }
  }

  else
  {
    sub_1001A5CE0();
  }
}

void sub_1000EC6C0(uint64_t a1, uint64_t a2, uint64_t a3, CFErrorDomain a4, uint64_t a5)
{
  v10 = objc_autoreleasePoolPush();
  if (!a4)
  {
    a4 = kCFErrorDomainPOSIX;
  }

  if (a5)
  {
    v14 = NSLocalizedDescriptionKey;
    v15 = a5;
    v13 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v11 = a4;
    v12 = a3;
  }

  else
  {
    v11 = a4;
    v12 = a3;
    v13 = 0;
  }

  [NSError errorWithDomain:v11 code:v12 userInfo:v13];
  sub_100193B0C(a1, a2);
  objc_autoreleasePoolPop(v10);
}

void sub_1000EC7CC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2[30])
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Adding network '%@' to known network list", "__WiFiDeviceManagerProcessAutoHotspotJoinRecommendationNotification_block_invoke", sub_10000A878(*(*(*(a1 + 32) + 8) + 24))}];
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

void sub_1000EC8A4(void *a1)
{
  *(*(a1[4] + 8) + 40) = [*(a1[7] + 6824) newHotspot:*(*(a1[5] + 8) + 40) error:*(a1[6] + 8) + 40];
  v2 = a1[7];
  v2[884] = *(*(a1[6] + 8) + 40);
  v2[885] = *(*(a1[4] + 8) + 40);
  v3 = v2[30];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EC97C;
  block[3] = &unk_10025EAD8;
  block[4] = v2;
  dispatch_sync(v3, block);
}

CFAbsoluteTime sub_1000EC97C(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v2 + 7088) = 0;
  if (*(v2 + 3336) == 19)
  {

    sub_1000B6EBC(v2);
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Received Enabled Hotspot Devices in state %d", "__WiFiDeviceManagerEnableRemoteHotspotDevice_block_invoke_2", *(*(a1 + 32) + 3336)}];
    }

    objc_autoreleasePoolPop(v4);
    v5 = *(a1 + 32);

    return sub_1000B6E20(v5, 0);
  }

  return result;
}

void sub_1000ECA38(int a1, int a2, const __CFArray *a3, int a4, int a5, uint64_t *a6)
{
  v6 = *a6;
  if (*(*a6 + 6936))
  {
    free(a6);
    v9 = sub_10000A540(*(v6 + 6936), @"SSID_STR");
    v10 = v9;
    if (v9)
    {
      CFRetain(v9);
    }

    if (a3 && CFArrayGetCount(a3))
    {
      v11 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Looking for autoInstantHotspot.hotspotAssocNetwork %@", "__WiFiDeviceManagerAutoInstantHotspotScanCallback", *(v6 + 6936)}];
      }

      objc_autoreleasePoolPop(v11);
      v12 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: found %ld networks", "__WiFiDeviceManagerAutoInstantHotspotScanCallback", CFArrayGetCount(a3)}];
      }

      objc_autoreleasePoolPop(v12);
      if (CFArrayGetCount(a3) < 1)
      {
LABEL_15:
        sub_1001A5E04(v6);
      }

      else
      {
        v13 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a3, v13);
          if (ValueAtIndex)
          {
            v15 = ValueAtIndex;
            if (sub_10009F648(*(v6 + 6936), ValueAtIndex))
            {
              break;
            }
          }

          if (CFArrayGetCount(a3) <= ++v13)
          {
            goto LABEL_15;
          }
        }

        v23 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: found the top network to match scanned network %@", "__WiFiDeviceManagerAutoInstantHotspotScanCallback", sub_10000A878(v15)}];
        }

        objc_autoreleasePoolPop(v23);
        sub_10009D854(v15, *(v6 + 6936));
        if ((_os_feature_enabled_impl() & 1) == 0)
        {
          sub_1000BCCD4(v6);
        }

        v24 = *(v6 + 6936);
        if (v24)
        {
          CFRelease(v24);
        }

        *(v6 + 6936) = 0;
        v25 = sub_10000C580(kCFAllocatorDefault, v15);
        *(v6 + 6936) = v25;
        sub_10000AD34(v25, @"WiFiAutoInstantHotspotJoining", kCFBooleanTrue);
        sub_10000AD34(*(v6 + 6936), @"WiFiInstantHotspotJoining", kCFBooleanFalse);
        v26 = sub_100006F88(*(v6 + 64));
        v27 = sub_1000C9DD4(v6, v26, *(v6 + 6936), 0, 0, sub_1000ECEF8, 0, 1018);
        if (v27)
        {
          sub_1001A5D4C(v27, v6);
        }

        else
        {
          sub_1000EC5CC(v6, @"userJoinAssociating", *(v6 + 6936));
        }
      }
    }

    else
    {
      Current = CFAbsoluteTimeGetCurrent();
      v17 = *(v6 + 7096);
      if (Current > v17 && Current - v17 < 20.0)
      {
        v19 = *(v6 + 7048);
        v20 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: no scan result. retry after 1 second", "__WiFiDeviceManagerAutoInstantHotspotScanCallback"}];
        }

        objc_autoreleasePoolPop(v20);
        v21 = dispatch_time(0, 1000000000);
        global_queue = dispatch_get_global_queue(0, 0);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000ECDC8;
        block[3] = &unk_100260D18;
        v29 = v19;
        block[4] = v6;
        block[5] = v10;
        dispatch_after(v21, global_queue, block);
      }

      else
      {
        sub_1001A5E98(v6, v10, a5);
      }
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }

  else
  {
    sub_1001A5F3C();
  }
}

void sub_1000ECDC8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[30])
  {
    CFRetain(v2);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000ECEBC;
    block[3] = &unk_100260D18;
    v5 = *(a1 + 48);
    dispatch_async(*(*(a1 + 32) + 240), block);
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null queue.", "__WiFiDeviceManagerAutoInstantHotspotScanCallback_block_invoke"}];
    }

    objc_autoreleasePoolPop(v3);
  }
}

void sub_1000ECEBC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[30])
  {
    sub_1001A5FA8();
  }

  else
  {

    CFRelease(v2);
  }
}

void sub_1000ECEF8(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (!a3)
    {
      sub_1001A6050();
      v9 = 0;
      goto LABEL_42;
    }

    v8 = sub_10000A540(*(a1 + 6936), @"SSID_STR");
    v9 = v8;
    if (v8)
    {
      CFRetain(v8);
    }

    if (!a5)
    {
      v17 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Hotspot Association to %@ Success.", "__WiFiDeviceManagerAutoInstantHotspotAssociationCallback", sub_10000A878(a3)}];
      }

      objc_autoreleasePoolPop(v17);
      *(a1 + 6976) = 1;
      *(a1 + 7067) = 1;
      Current = CFAbsoluteTimeGetCurrent();
      v19 = CFDateCreate(kCFAllocatorDefault, Current);
      if (v19)
      {
        v20 = v19;
        sub_1000A0170(a3, 0, v19);
        v21 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: setting auto association date for %@ to %@", "__WiFiDeviceManagerAutoInstantHotspotAssociationCallback", sub_10000A878(a3), v20}];
        }

        objc_autoreleasePoolPop(v21);
        CFRelease(v20);
      }

      sub_1000BFC58(a1, a3);
      sub_10000AD34(*(a1 + 3560), @"WiFiAutoInstantHotspotJoining", kCFBooleanTrue);
      sub_1000EC5CC(a1, @"userJoinSuccess", a3);
      if (_os_feature_enabled_impl())
      {
        sub_100193B0C(a1, v9);
      }

      v22 = *(a1 + 6936);
      if (v22)
      {
        CFRelease(v22);
        *(a1 + 6936) = 0;
      }

      *(a1 + 5576) = 1;
      v23 = *(a1 + 5584);
      v24 = dispatch_time(0, 10000000000);
      dispatch_source_set_timer(v23, v24, 0xFFFFFFFFFFFFFFFFLL, 0);
      *(a1 + 696) = 0;
      *(a1 + 688) = 0;
      *(a1 + 6545) = 1;
      if (*(a1 + 4632))
      {
        if (*(a1 + 240))
        {
          v29 = 0;
          v30 = &v29;
          v31 = 0x2020000000;
          v32 = 0;
          v25 = sub_10000C580(kCFAllocatorDefault, a3);
          v30[3] = v25;
          if (v25)
          {
            CFRetain(a1);
            v26 = *(a1 + 240);
            v28[0] = _NSConcreteStackBlock;
            v28[1] = 3221225472;
            v28[2] = sub_1000ED514;
            v28[3] = &unk_10025EFD8;
            v28[4] = &v29;
            v28[5] = a1;
            dispatch_async(v26, v28);
          }

          _Block_object_dispose(&v29, 8);
        }

        else
        {
          v27 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s: null queue.", "__WiFiDeviceManagerAutoInstantHotspotAssociationCallback"}];
          }

          objc_autoreleasePoolPop(v27);
        }
      }

LABEL_42:
      *(a1 + 6952) = 0;
      *(a1 + 3336) = *(a1 + 6972);
      sub_1000329B4(a1);
      if (!v9)
      {
        return;
      }

LABEL_14:
      CFRelease(v9);
      return;
    }

    v10 = CFAbsoluteTimeGetCurrent();
    v11 = *(a1 + 7096);
    v12 = objc_autoreleasePoolPush();
    if (v10 <= v11 || v10 - v11 >= 20.0)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Hotspot Association to %@ Failed. %d", "__WiFiDeviceManagerAutoInstantHotspotAssociationCallback", sub_10000A878(a3), a5}];
      }

      objc_autoreleasePoolPop(v12);
      sub_100193BAC();
      *(a1 + 6536) = a5;
      sub_100146CAC((a1 + 6536));
      goto LABEL_42;
    }

    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: retry Assoc after 1 second", "__WiFiDeviceManagerAutoInstantHotspotAssociationCallback"}];
    }

    objc_autoreleasePoolPop(v12);
    v14 = dispatch_time(0, 1000000000);
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000ED3EC;
    block[3] = &unk_10025EE08;
    block[4] = a1;
    block[5] = v9;
    dispatch_after(v14, global_queue, block);
    if (v9)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: manager is NULL", "__WiFiDeviceManagerAutoInstantHotspotAssociationCallback"}];
    }

    objc_autoreleasePoolPop(v16);
  }
}

void sub_1000ED3D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000ED3EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[30])
  {
    CFRetain(v2);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000ED4D8;
    block[3] = &unk_10025EE08;
    dispatch_async(*(*(a1 + 32) + 240), block);
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null queue.", "__WiFiDeviceManagerAutoInstantHotspotAssociationCallback_block_invoke"}];
    }

    objc_autoreleasePoolPop(v3);
  }
}

void sub_1000ED4D8(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (v2[30])
  {
    sub_1001A60BC(v2, v3);
  }

  else
  {

    CFRelease(v2);
  }
}

void sub_1000ED514(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2[30])
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Adding network '%@' to known network list", "__WiFiDeviceManagerAutoInstantHotspotAssociationCallback_block_invoke_3", sub_10000A878(*(*(*(a1 + 32) + 8) + 24))}];
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

void sub_1000ED5EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 240))
  {
    v4 = *(a1 + 40);
    v3 = (a1 + 40);
    (*(v2 + 4584))(v2, v4, *(v2 + 4592));
    CFRelease(*(v3 - 1));
  }

  else
  {
    CFRelease(v2);
    v3 = (a1 + 40);
  }

  v5 = *v3;

  CFRelease(v5);
}

void sub_1000ED650(uint64_t a1, CFTypeRef cf1, const void *a3, uint64_t a4)
{
  if (a1)
  {
    if (cf1)
    {
      if (*(a1 + 4120))
      {
        if (CFEqual(cf1, @"autoJoinNetworkNotFound"))
        {
          v8 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: auto-join failed with no network found. Unsuitable network count:%d", "__WiFiDeviceManagerPostAutoJoinNotificationWithMetric", *(a1 + 1192)}];
          }

          objc_autoreleasePoolPop(v8);
          if (!*(a1 + 1192))
          {
            *(a1 + 6977) = 1;
            if (sub_1000D7818(a1))
            {
              sub_1000D73A0(a1, 0);
            }
          }
        }

        Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (Mutable)
        {
          v10 = Mutable;
          CFDictionarySetValue(Mutable, @"autoJoinStatus", cf1);
          if (a3)
          {
            CFDictionarySetValue(v10, @"autoJoinNetwork", a3);
          }

          v11 = *(a1 + 4120);
          v12 = sub_100006F88(*(a1 + 64));
          v11(a1, v12, *(a1 + 4128), v10, a4);

          CFRelease(v10);
        }

        else
        {
          sub_1001A6174();
        }
      }
    }

    else
    {
      sub_1001A61E0();
    }
  }

  else
  {
    sub_1001A624C();
  }
}

WiFiSoftApStateMonitor *sub_1000ED7E8(uint64_t a1, char a2)
{
  *(a1 + 5437) = a2;
  result = +[WiFiSoftApStateMonitor sharedInstance];
  if (result)
  {
    v4 = +[WiFiSoftApStateMonitor sharedInstance];
    v5 = *(a1 + 5437) != 0;

    return [(WiFiSoftApStateMonitor *)v4 setMisNanPublisherActive:v5];
  }

  return result;
}

void sub_1000ED85C(uint64_t a1, void *a2)
{
  if (a2)
  {
    [*(*(a1 + 32) + 7480) setJoinEvent:0 withReason:0 lastDisconnectReason:0 lastJoinFailure:*(a1 + 40) andNetworkDetails:a2 forInterface:sub_100006F88(*(*(a1 + 32) + 64))];
  }
}

void sub_1000ED8D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 240))
  {
    (*(v2 + 3968))(v2, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(v2 + 3976));
    CFRelease(*(a1 + 32));
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

  else
  {
    CFRelease(v2);
    v6 = *(a1 + 40);
    if (v6)
    {
      CFRetain(v6);
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      CFRetain(v7);
    }

    v8 = *(a1 + 56);
    if (v8)
    {

      CFRetain(v8);
    }
  }
}

void sub_1000ED99C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2[30])
  {
    v3 = v2[490];
    v4 = sub_100006F88(v2[8]);
    v6 = *(a1 + 32);
    v5 = (a1 + 32);
    v3(v2, v4, *(*(v6 + 8) + 24), 0, *(v5 + 4), *(v5[1] + 3928));
    CFRelease(v5[1]);
    v7 = *v5;
  }

  else
  {
    CFRelease(*(a1 + 40));
    v8 = *(a1 + 32);
    v5 = (a1 + 32);
    v7 = v8;
  }

  v9 = *(*(v7 + 8) + 24);
  if (v9)
  {
    CFRelease(v9);
    *(*(*v5 + 8) + 24) = 0;
  }
}

void sub_1000EDA3C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 240))
  {
    v4 = *(a1 + 32);
    v3 = (a1 + 32);
    (*(v2 + 4792))(v2, *(*(v4 + 8) + 24), @"FailureCountCurrent", kCFBooleanTrue, *(v2 + 4800));
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

void sub_1000EDAC8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 240))
  {
    v4 = *(a1 + 32);
    v3 = (a1 + 32);
    (*(v2 + 4760))(v2, *(*(v4 + 8) + 24), *(v2 + 4768));
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

BOOL sub_1000EDB40(const __CFString *a1)
{
  if (a1)
  {
    return CFStringCompare(a1, @"RU", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"KG", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"AM", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"KZ", 0) == kCFCompareEqualTo;
  }

  else
  {
    sub_1001A62B8();
    return 0;
  }
}

void sub_1000EDBD8(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v8 = (a4 + 4096);
  v9 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s for stanum %d macAddress %@  and intf_name:%@\n", "__WiFiDeviceManagerNANPHSSTAArrivingCallback", a1, a2, a3}];
  }

  objc_autoreleasePoolPop(v9);
  v17 = *a2;
  v18 = a2[2];
  if (v8[1171])
  {
    v8[1312] = v8[1170] + v8[1169];
    if (!CFSetContainsValue(*(a4 + 5360), a2))
    {
      sub_1001A6324();
    }

    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"MIS STA NAN Link Associated: %d associated clients", v8[1170]}];
    }

    objc_autoreleasePoolPop(v10);
    if (a3)
    {
      v11 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s Create NAN relay interface for publisher", "__WiFiDeviceManagerNANPHSSTAArrivingCallback"}];
      }

      objc_autoreleasePoolPop(v11);
      sub_10005C3D0(*(a4 + 64), a3);
      v12 = CWFNetworkStackMACAddressWithInterfaceName();
      if (_os_feature_enabled_impl() && v12)
      {
        v13 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s NANSTA Associated: %@ thisDeviceMACAddress = %@", "void __WiFiDeviceManagerNANPHSSTAArrivingCallback(UInt8, NSString *, NSString *, void *)", a2, v12}];
        }

        objc_autoreleasePoolPop(v13);
        [+[CWFHotspotClientManager sharedInstance](CWFHotspotClientManager clientAssociated:"clientAssociated:thisDeviceMACAddress:" thisDeviceMACAddress:a2, v12];
      }
    }

    sub_1000C7220(a4, 0);
    *(a4 + 5384) = CFAbsoluteTimeGetCurrent() + 3.0;
    v8[1280] = 1;
    sub_1000D5F40(a4, 1, &v17, 0, 1);
    v14 = objc_autoreleasePoolPush();
    v15 = *(a4 + 7480);
    if (v15)
    {
      [v15 addSoftApClientEvent:1 identifier:a2 isAppleClient:sub_100058BB4(&v17) != 0 isInstantHotspot:0 isAutoHotspot:0 isHidden:v8[1212] != 0];
    }

    objc_autoreleasePoolPop(v14);
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: called while MIS is disabled", "__WiFiDeviceManagerNANPHSSTAArrivingCallback"}];
    }

    objc_autoreleasePoolPop(v16);
  }
}

void sub_1000EDE8C(uint64_t a1, const void *a2, const void *a3, void *a4)
{
  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{" %s for stanum %d macAddress %@ \n", "__WiFiDeviceManagerNANPHSSTALeavingCallback", a1, a2}];
  }

  objc_autoreleasePoolPop(v8);
  if (a4)
  {
    if (a4[30])
    {
      CFRetain(a4);
      if (a3)
      {
        CFRetain(a3);
      }

      if (a2)
      {
        CFRetain(a2);
      }

      v9 = a4[30];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000EE060;
      block[3] = &unk_100261B60;
      block[5] = a2;
      block[6] = a4;
      block[4] = a3;
      v11 = a1;
      dispatch_async(v9, block);
    }

    else
    {
      sub_1001A63E8();
    }
  }

  else
  {
    sub_1001A6450();
  }
}

void sub_1000EDFA8(char a1, char a2, NSObject **cf)
{
  if (cf)
  {
    if (cf[30])
    {
      CFRetain(cf);
      v6 = cf[30];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1000EE438;
      v7[3] = &unk_100260948;
      v7[4] = cf;
      v8 = a1;
      v9 = a2;
      dispatch_async(v6, v7);
    }

    else
    {
      sub_1001A64B8();
    }
  }

  else
  {
    sub_1001A6520();
  }
}

void sub_1000EE060(uint64_t a1)
{
  v3 = (a1 + 48);
  v2 = *(a1 + 48);
  if (*(v2 + 240))
  {
    v5 = (a1 + 40);
    v4 = *(a1 + 40);
    v6 = v4[2];
    v34 = *v4;
    v35 = v6;
    if (!*(v2 + 5267))
    {
      v12 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: called while MIS is disabled", "__WiFiDeviceManagerNANPHSSTALeavingCallback_block_invoke"}];
      }

      v13 = v12;
      goto LABEL_44;
    }

    v7 = *(a1 + 56);
    if (v7 == 255)
    {
      v14 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"MIS no traffic for long time. Tear down MIS"];
      }

      objc_autoreleasePoolPop(v14);
      v15 = *v3;
      v16 = *(*v3 + 5269);
      *(*v3 + 5266) = 0;
      CFSetRemoveAllValues(*(v15 + 5360));
      if (*(*v3 + 5267))
      {
        v17 = v16 == 0;
      }

      else
      {
        v17 = 0;
      }

      if (v17)
      {
        v18 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"MIS idle timer expired, disabling tethering"}];
        }

        objc_autoreleasePoolPop(v18);
        v33 = 0;
        v31 = 0u;
        v32 = 0u;
        v28 = 7;
        v30 = 0u;
        memset(v27, 0, sizeof(v27));
        DWORD2(v27[0]) = 7;
        v29 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@", @"Last Client Left");
        sub_1000C67C8(*v3, v27);
        sub_1000C6C3C(*v3);
      }
    }

    else
    {
      if (CFSetContainsValue(*(v2 + 5360), v4))
      {
        sub_1001A6588();
      }

      v8 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"MIS STA NAN Client Disassociated: %d associated clients", *(*v3 + 5266)}];
      }

      objc_autoreleasePoolPop(v8);
    }

    v19 = *v3 + 4096;
    v20 = *(*v3 + 5266);
    v21 = v20 + *(*v3 + 5265);
    *(*v3 + 5408) = v21;
    if (v7 != 255)
    {
      if (!v21 && !*(v19 + 1173))
      {
        v22 = objc_autoreleasePoolPush();
        v23 = 3;
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Starting MIS idle timer", "__WiFiDeviceManagerNANPHSSTALeavingCallback_block_invoke"}];
        }

        goto LABEL_40;
      }

      if (!v20)
      {
        v22 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:"NANPHS: All nan clients have left. Should start idle timer for nan publisher"];
        }

        v23 = 6;
LABEL_40:
        objc_autoreleasePoolPop(v22);
        sub_1000C7220(*v3, v23);
      }
    }

    sub_1000D5F40(*v3, 0, &v34, 0, 1);
    v24 = objc_autoreleasePoolPush();
    v25 = *(*v3 + 7480);
    if (v25)
    {
      [v25 addSoftApClientEvent:0 identifier:*v5 isAppleClient:sub_100058BB4(&v34) != 0 isInstantHotspot:0 isAutoHotspot:0 isHidden:*(*v3 + 5308) != 0];
    }

    v13 = v24;
LABEL_44:
    objc_autoreleasePoolPop(v13);
    CFRelease(*(a1 + 48));
    v26 = *(a1 + 32);
    if (v26)
    {
      CFRelease(v26);
    }

    if (*v5)
    {
      CFRelease(*v5);
    }

    return;
  }

  CFRelease(v2);
  v9 = *(a1 + 32);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"__WiFiDeviceManagerNANPHSSTALeavingCallback_block_invoke", 11073}];
  }

  objc_autoreleasePoolPop(v11);
}

void sub_1000EE438(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[30])
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    v14 = 0u;
    memset(v13, 0, sizeof(v13));
    v12 = 0u;
    memset(v11, 0, sizeof(v11));
    v3 = *(a1 + 40);
    if (v3 == 2)
    {
      v4 = &v14;
      v5 = &v14 + 8;
    }

    else
    {
      if (v3 != 1)
      {
        if (*(a1 + 40))
        {
LABEL_20:
          sub_1000C67C8(v2, v11);
          v10 = *(a1 + 32);

          CFRelease(v10);
          return;
        }

        v4 = (&v12 + 8);
        v5 = v13;
        v6 = *(a1 + 41);
        if (v6 >= 0xB)
        {
          v9 = @"Unknown";
          goto LABEL_19;
        }

        v7 = &off_1002623B0[v6];
        goto LABEL_16;
      }

      v4 = v15;
      v5 = v15 + 8;
    }

    LOBYTE(v6) = *(a1 + 41);
    if ((v6 - 1) >= 4u)
    {
      v9 = @"Success";
      goto LABEL_19;
    }

    v7 = &off_100262408[(v6 - 1)];
LABEL_16:
    v9 = *v7;
LABEL_19:
    *v5 = v9;
    *v4 = v6;
    goto LABEL_20;
  }

  CFRelease(v2);
  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"__WiFiDeviceManagerNANPHSPublisherMetricsCallback_block_invoke", 10857}];
  }

  objc_autoreleasePoolPop(v8);
}

void sub_1000EE598(uint64_t a1)
{
  v2 = (a1 + 4096);
  v3 = *(a1 + 5392);
  if (v3 == 1)
  {
    if (*(a1 + 5434))
    {
      if (!*(a1 + 5270))
      {
        v6 = 1;
        goto LABEL_12;
      }

LABEL_11:
      v6 = 0;
      v2[1340] = 1;
LABEL_12:
      if (*(a1 + 20) != 1)
      {
        v8 = objc_autoreleasePoolPush();
        v9 = off_100298C40;
        if (!off_100298C40)
        {
LABEL_20:
          objc_autoreleasePoolPop(v8);
LABEL_296:
          v3 = 0;
          goto LABEL_357;
        }

        v10 = "WiFi is Powered OFF, Unable to start tethering on wifi";
LABEL_19:
        [v9 WFLog:3 message:v10];
        goto LABEL_20;
      }

      if (*(a1 + 4992))
      {
        v7 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: Detected non-NULL misSession", "__WiFiDeviceManagerStartNANSession"}];
        }

        objc_autoreleasePoolPop(v7);
LABEL_80:
        v41 = *(a1 + 4992);
        if (!v41)
        {
          sub_1001A67AC();
          goto LABEL_376;
        }

        if (!_MISIsServiceAvailable || !_MISIsServiceAvailable(v41))
        {
          sub_1001A6754();
          goto LABEL_376;
        }

        v42 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:"MIS Preparing NAN Publish  Configuration Parameters"];
        }

        LOWORD(v195) = -21846;
        LODWORD(values[0]) = -1431655766;
        HIDWORD(v195) = -1431655766;
        objc_autoreleasePoolPop(v42);
        Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (Mutable)
        {
          if (CFSetGetCount(*(a1 + 5320)) > 0 || v2[1176])
          {
            CFDictionaryAddValue(Mutable, @"AP_MODE_FORCE_BI_100", kCFBooleanTrue);
          }

          LOWORD(v195) = 1;
          v44 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &v195);
          if (v44)
          {
            CFDictionaryAddValue(Mutable, @"AP_MODE_AUTH_LOWER", v44);
            CFRelease(v44);
            CFDictionaryAddValue(Mutable, @"SSID_STR", @"_AppleWi-FiInternetTetheringSSID_");
            v45 = sub_10000AD2C(kCFAllocatorDefault, Mutable);
            v44 = v45;
            if (v45)
            {
              v46 = sub_10002A1CC(v45);
              if (!v46)
              {
                goto LABEL_411;
              }

              [*(a1 + 6832) setPasswordForPHSOverNAN:v46];
              sub_1000C7640(a1);
              CFDictionaryAddValue(Mutable, @"AP_MODE_KEY", v46);
              v202 = 0u;
              v203 = 0u;
              v200 = 0u;
              v201 = 0u;
              v198 = 0u;
              v199 = 0u;
              *buffer = 0u;
              v197 = 0u;
              if (!CFStringGetCString(v46, buffer, 128, 0x8000100u))
              {
LABEL_411:
                v167 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:4 message:"Error preparing NAN Publish Configuration Parameters"];
                }

                objc_autoreleasePoolPop(v167);
                if (v46)
                {
                  CFRelease(v46);
                  if (!v44)
                  {
LABEL_415:
                    if (Mutable)
                    {
                      goto LABEL_419;
                    }

                    goto LABEL_376;
                  }
                }

                else if (!v44)
                {
                  goto LABEL_415;
                }

                CFRelease(v44);
                if (Mutable)
                {
LABEL_419:
                  CFRelease(Mutable);
                }

LABEL_376:
                v159 = *(a1 + 4992);
                if (v159)
                {
                  if (_MISDetach)
                  {
                    _MISDetach(v159);
                  }

                  *(a1 + 4992) = 0;
                }

                v2[1171] = 0;
                if (v2[1338])
                {
                  v2[1338] = 0;
                }

                if (_os_feature_enabled_impl() && [*(a1 + 6832) checkDeviceNanCapabilities])
                {
                  sub_1001A6878();
                }

                sub_10018AC18();
                v8 = objc_autoreleasePoolPush();
                v9 = off_100298C40;
                if (!off_100298C40)
                {
                  goto LABEL_20;
                }

                v10 = "Error on Starting NAN MIS session. Return to idle state";
                goto LABEL_19;
              }

              v47 = strlen(buffer);
              CFRelease(v46);
              CFRelease(v44);
              v48 = sub_1000D6ECC(a1);
              v49 = v47 == 64 || v48 == 0;
              if (v49)
              {
                v50 = 8;
              }

              else
              {
                v50 = 4104;
              }

              LOWORD(v195) = v50;
              v51 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: start hotspot using authtype 0x%X", "__WiFiDeviceManagerCreateNANStartRequest", v195}];
              }

              objc_autoreleasePoolPop(v51);
              v44 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &v195);
              if (v44)
              {
                CFDictionaryAddValue(Mutable, @"AP_MODE_AUTH_UPPER", v44);
                CFRelease(v44);
                v52 = (v195 & 0x1000) != 0 ? 10 : 6;
                LODWORD(values[0]) = v52;
                v44 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, values);
                if (v44)
                {
                  CFDictionaryAddValue(Mutable, @"AP_MODE_CYPHER_TYPE", v44);
                  CFRelease(v44);
                  LODWORD(values[0]) = v2[1168];
                  v44 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, values);
                  if (v44)
                  {
                    if (LODWORD(values[0]) < 0xF)
                    {
                      v53 = 10;
                    }

                    else
                    {
                      v53 = *(a1 + 5312) == 80 ? 1040 : 18;
                    }

                    HIDWORD(v195) = v53;
                    CFDictionaryAddValue(Mutable, @"CHANNEL", v44);
                    CFRelease(v44);
                    v44 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v195 + 4);
                    if (v44)
                    {
                      CFDictionaryAddValue(Mutable, @"CHANNEL_FLAGS", v44);
                      CFRelease(v44);
                      CFDictionaryRemoveValue(Mutable, @"SSID_STR");
                      v44 = sub_1000F03DC();
                      if (v44)
                      {
                        CFDictionaryAddValue(Mutable, @"SSID_STR", v44);
                        ExternalRepresentation = CFStringCreateExternalRepresentation(kCFAllocatorDefault, v44, 0x8000100u, 0);
                        if (ExternalRepresentation)
                        {
                          v55 = ExternalRepresentation;
                          CFDictionaryAddValue(Mutable, @"AP_MODE_SSID_BYTES", ExternalRepresentation);
                          CFRelease(v55);
                        }

                        CFRelease(v44);
                        Value = CFDictionaryGetValue(Mutable, @"SSID_STR");
                        if (Value)
                        {
                          v57 = Value;
                          v58 = objc_autoreleasePoolPush();
                          if (off_100298C40)
                          {
                            [off_100298C40 WFLog:3 message:{"MIS SSID: %@", v57}];
                          }

                          objc_autoreleasePoolPop(v58);
                          v59 = sub_100006F88(*(a1 + 64));
                          v60 = sub_100007D90(a1, v59, 1);
                          if (v60)
                          {
                            sub_1001A66AC();
                          }

                          else
                          {
                            sub_1000BCD2C(a1);
                          }

                          v2[1169] = 0;
                          v61 = objc_autoreleasePoolPush();
                          if (off_100298C40)
                          {
                            [off_100298C40 WFLog:3 message:{"%s misKeepNanPhsDuringMISStop %d misNanNumAssociatedClients %d", "__WiFiDeviceManagerStartNANSession", v2[1340], v2[1170]}];
                          }

                          objc_autoreleasePoolPop(v61);
                          if (!v2[1340])
                          {
                            v2[1170] = 0;
                            CFSetRemoveAllValues(*(a1 + 5360));
                          }

                          v2[1312] = 0;
                          if (_os_feature_enabled_impl() && [*(a1 + 6832) checkDeviceNanCapabilities])
                          {
                            sub_1001A666C();
                          }

                          v62 = sub_100006F88(*(a1 + 64));
                          v63 = sub_1000CD9C8(a1, v62, Mutable, sub_1001944D4, 0);
                          if (!v63)
                          {
                            sub_1000BBAE0(a1, 8, 1);
                            v2[1171] = 1;
                            if (+[WiFiSoftApStateMonitor sharedInstance])
                            {
                              [+[WiFiSoftApStateMonitor sharedInstance](WiFiSoftApStateMonitor setMisEnabled:"setMisEnabled:", v2[1171] != 0];
                            }
                          }

                          CFRelease(Mutable);
                          if (v60)
                          {
                            CFRelease(v60);
                          }

                          if (((v63 == 0) & ~v6) == 0)
                          {
                            goto LABEL_376;
                          }

LABEL_356:
                          v3 = 2;
                          goto LABEL_357;
                        }

                        goto LABEL_419;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          v44 = 0;
        }

        v46 = 0;
        goto LABEL_411;
      }

      if (_MISAttach)
      {
        v40 = _MISAttach((a1 + 4992));
        if (!v40)
        {
          v6 = 0;
          goto LABEL_80;
        }
      }

      else
      {
        v40 = -1;
      }

      sub_1001A6804(v40);
      goto LABEL_376;
    }

    if ([*(a1 + 6832) isNANPublisherStarted] && v2[1174])
    {
      goto LABEL_11;
    }

    if (*(a1 + 20) != 1)
    {
      v64 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"WiFi is Powered OFF, Unable to start tethering on wifi"}];
      }

      objc_autoreleasePoolPop(v64);
      v207 = 0;
      v205 = 0u;
      v206 = 0u;
      v203 = 0u;
      v204 = 0u;
      v201 = 0u;
      v202 = 0u;
      v199 = 0u;
      v200 = 0u;
      v197 = 0u;
      v198 = 0u;
      *buffer = 0u;
      *&buffer[4] = 8;
      goto LABEL_138;
    }

    v35 = *(a1 + 4992);
    v36 = &xpc_dictionary_set_uint64_ptr;
    if (v35)
    {
      if (!v2[1174])
      {
        sub_1001A68B8();
        v37 = 21;
LABEL_394:
        v160 = *(a1 + 64);
        v161 = [v36[465] stringWithFormat:@"%@", @"PHBringUp"];
        sub_10001D70C(v160, 0, v161, 0, v162, v163, v164, v165, v171, v172, v174, v176, v178, v180, HIDWORD(v180), v182, v184, v186, theArray, allocator, v191, valuePtr, v195, *buffer, *&buffer[8], v197, *(&v197 + 1));
        v166 = *(a1 + 4992);
        if (v166)
        {
          if (_MISDetach)
          {
            _MISDetach(v166);
          }

          *(a1 + 4992) = 0;
        }

        v2[1171] = 0;
        if (+[WiFiSoftApStateMonitor sharedInstance])
        {
          [+[WiFiSoftApStateMonitor sharedInstance](WiFiSoftApStateMonitor setMisEnabled:"setMisEnabled:", v2[1171] != 0];
        }

        if (v2[1338])
        {
          v2[1338] = 0;
        }

        if (_os_feature_enabled_impl() && [*(a1 + 6832) checkDeviceNanCapabilities])
        {
          sub_1001A6910();
        }

        sub_10018AC18();
        v207 = 0;
        v205 = 0u;
        v206 = 0u;
        v203 = 0u;
        v204 = 0u;
        v201 = 0u;
        v202 = 0u;
        v199 = 0u;
        v200 = 0u;
        v197 = 0u;
        v198 = 0u;
        *buffer = 0u;
        *&buffer[4] = v37;
LABEL_138:
        sub_1000C67C8(a1, buffer);
        goto LABEL_296;
      }

LABEL_267:
      if (!_MISIsServiceAvailable || !_MISIsServiceAvailable(v35))
      {
        sub_1001A6754();
        v37 = 11;
        goto LABEL_394;
      }

      v116 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"Preparing MIS Network Configuration Parameters"];
      }

      LOWORD(v195) = -21846;
      LODWORD(values[0]) = -1431655766;
      HIDWORD(v195) = -1431655766;
      objc_autoreleasePoolPop(v116);
      v117 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v117)
      {
        if (CFSetGetCount(*(a1 + 5320)) > 0 || v2[1176])
        {
          CFDictionaryAddValue(v117, @"AP_MODE_FORCE_BI_100", kCFBooleanTrue);
        }

        LOWORD(v195) = 1;
        v118 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &v195);
        if (v118)
        {
          CFDictionaryAddValue(v117, @"AP_MODE_AUTH_LOWER", v118);
          CFRelease(v118);
          CFDictionaryAddValue(v117, @"SSID_STR", @"_AppleWi-FiInternetTetheringSSID_");
          v119 = sub_10000AD2C(kCFAllocatorDefault, v117);
          v118 = v119;
          if (v119)
          {
            v120 = sub_10002A1CC(v119);
            if (v120)
            {
              CFDictionaryAddValue(v117, @"AP_MODE_KEY", v120);
              [*(a1 + 6832) setPasswordForPHSOverNAN:v120];
              v202 = 0u;
              v203 = 0u;
              v200 = 0u;
              v201 = 0u;
              v198 = 0u;
              v199 = 0u;
              *buffer = 0u;
              v197 = 0u;
              if (CFStringGetCString(v120, buffer, 128, 0x8000100u))
              {
                v121 = strlen(buffer);
                CFRelease(v120);
                CFRelease(v118);
                if (sub_1000D6ECC(a1) && !*(a1 + 7144))
                {
                  v122 = v2;
                  v123 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    v172 = *(a1 + 7144);
                    [off_100298C40 WFLog:3 message:{"%s: Both WPA2+WPA3 enabled, softapUserPreferredBand is: %d", "__WiFiDeviceManagerCreateMISStartRequest"}];
                  }

                  v125 = 0;
                  v124 = 4104;
                }

                else
                {
                  v122 = v2;
                  v123 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    v172 = *(a1 + 7144);
                    [off_100298C40 WFLog:3 message:{"%s: softapUserPreferredBand is: %d. Allowing WPA2 keying only", "__WiFiDeviceManagerCreateMISStartRequest"}];
                  }

                  v124 = 8;
                  v125 = 1;
                }

                objc_autoreleasePoolPop(v123);
                if (v121 == 64)
                {
                  v129 = v125;
                }

                else
                {
                  v129 = 1;
                }

                if (v129)
                {
                  v130 = v124;
                }

                else
                {
                  v130 = 8;
                }

                LOWORD(v195) = v130;
                v131 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  v172 = v195;
                  [off_100298C40 WFLog:3 message:{"%s: start hotspot using authtype 0x%X", "__WiFiDeviceManagerCreateMISStartRequest"}];
                }

                objc_autoreleasePoolPop(v131);
                v118 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &v195);
                v2 = v122;
                if (v118)
                {
                  CFDictionaryAddValue(v117, @"AP_MODE_AUTH_UPPER", v118);
                  CFRelease(v118);
                  if (v195)
                  {
                    v132 = 10;
                  }

                  else
                  {
                    v132 = 0;
                  }

                  LODWORD(values[0]) = v132;
                  v118 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, values);
                  if (v118)
                  {
                    CFDictionaryAddValue(v117, @"AP_MODE_CYPHER_TYPE", v118);
                    CFRelease(v118);
                    LODWORD(values[0]) = v122[1168];
                    v118 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, values);
                    if (v118)
                    {
                      if (LODWORD(values[0]) < 0xF)
                      {
                        v133 = 10;
                      }

                      else
                      {
                        v133 = *(a1 + 5312) == 80 ? 1040 : 18;
                      }

                      HIDWORD(v195) = v133;
                      CFDictionaryAddValue(v117, @"CHANNEL", v118);
                      CFRelease(v118);
                      v118 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v195 + 4);
                      if (v118)
                      {
                        CFDictionaryAddValue(v117, @"CHANNEL_FLAGS", v118);
                        CFRelease(v118);
                        CFDictionaryRemoveValue(v117, @"SSID_STR");
                        v118 = sub_1000F03DC();
                        if (v118)
                        {
                          CFDictionaryAddValue(v117, @"SSID_STR", v118);
                          v134 = CFStringCreateExternalRepresentation(kCFAllocatorDefault, v118, 0x8000100u, 0);
                          if (v134)
                          {
                            v135 = v134;
                            CFDictionaryAddValue(v117, @"AP_MODE_SSID_BYTES", v134);
                            CFRelease(v135);
                          }

                          CFRelease(v118);
                          v136 = CFDictionaryGetValue(v117, @"SSID_STR");
                          if (!v136)
                          {
                            CFRelease(v117);
                            v37 = 13;
                            v36 = &xpc_dictionary_set_uint64_ptr;
                            goto LABEL_394;
                          }

                          v137 = v136;
                          v138 = objc_autoreleasePoolPush();
                          if (off_100298C40)
                          {
                            [off_100298C40 WFLog:3 message:{"MIS SSID: %@", v137}];
                          }

                          objc_autoreleasePoolPop(v138);
                          v139 = sub_100006F88(*(a1 + 64));
                          v140 = sub_100007D90(a1, v139, 1);
                          if (v140)
                          {
                            if (sub_1000C7464(a1, 4))
                            {
                              v141 = v140;
                              if (!v122[1337])
                              {
                                goto LABEL_347;
                              }
                            }

                            v142 = objc_autoreleasePoolPush();
                            if (off_100298C40)
                            {
                              [off_100298C40 WFLog:3 message:{"Enabling MIS. Now disconnecting from %@", sub_10000A878(v140)}];
                            }

                            objc_autoreleasePoolPop(v142);
                            v143 = sub_100006F88(*(a1 + 64));
                            sub_1000B9DC8(a1, v143, 1007, "__WiFiDeviceManagerStartMISSession", 25057);
                          }

                          else
                          {
                            if (_os_feature_enabled_impl() && *(a1 + 8984) == 3 || *(a1 + 3520) >= 1)
                            {
                              v144 = objc_autoreleasePoolPush();
                              if (off_100298C40)
                              {
                                [off_100298C40 WFLog:3 message:{"%s: Abort ongoing join during the PH bringup", "__WiFiDeviceManagerStartMISSession"}];
                              }

                              objc_autoreleasePoolPop(v144);
                              v145 = sub_100006F88(*(a1 + 64));
                              sub_1000B9DC8(a1, v145, 1007, "__WiFiDeviceManagerStartMISSession", 25066);
                            }

                            sub_1000BCD2C(a1);
                          }

                          v141 = 0;
LABEL_347:
                          sub_1000E2164(a1, v141);
                          sub_10014EF78(*(a1 + 64));
                          v146 = *(a1 + 64);
                          v36 = &xpc_dictionary_set_uint64_ptr;
                          v147 = [NSString stringWithFormat:@"%@"];
                          sub_10001D70C(v146, 0, v147, 10, v148, v149, v150, v151, @"PHBringUp", v172, v174, v176, v178, v180, HIDWORD(v180), v182, v184, v186, theArray, allocator, v191, valuePtr, v195, *buffer, *&buffer[8], v197, *(&v197 + 1));
                          v122[1169] = 0;
                          v122[1312] = 0;
                          if (_os_feature_enabled_impl() && [*(a1 + 6832) checkDeviceNanCapabilities])
                          {
                            sub_1001A666C();
                          }

                          v152 = sub_100006F88(*(a1 + 64));
                          v153 = sub_1000CD9C8(a1, v152, v117, sub_1001944D4, 0);
                          if (!v153)
                          {
                            sub_1000BBAE0(a1, 4, 1);
                            v122[1171] = 1;
                            if (+[WiFiSoftApStateMonitor sharedInstance])
                            {
                              [+[WiFiSoftApStateMonitor sharedInstance](WiFiSoftApStateMonitor setMisEnabled:"setMisEnabled:", v122[1171] != 0];
                            }
                          }

                          CFRelease(v117);
                          if (v140)
                          {
                            CFRelease(v140);
                          }

                          if (!v153)
                          {
                            goto LABEL_356;
                          }

                          v37 = 0;
                          goto LABEL_394;
                        }
                      }
                    }

                    goto LABEL_431;
                  }

                  v120 = 0;
                }

                else
                {
                  v120 = 0;
                }
              }
            }

LABEL_434:
            v168 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:"Error preparing MIS Network Configuration Parameters"];
            }

            objc_autoreleasePoolPop(v168);
            v36 = &xpc_dictionary_set_uint64_ptr;
            if (v120)
            {
              CFRelease(v120);
              if (!v118)
              {
LABEL_438:
                if (!v117)
                {
LABEL_440:
                  v37 = 12;
                  goto LABEL_394;
                }

LABEL_439:
                CFRelease(v117);
                goto LABEL_440;
              }
            }

            else if (!v118)
            {
              goto LABEL_438;
            }

            CFRelease(v118);
            if (!v117)
            {
              goto LABEL_440;
            }

            goto LABEL_439;
          }
        }
      }

      else
      {
        v118 = 0;
      }

LABEL_431:
      v120 = 0;
      goto LABEL_434;
    }

    if (_MISAttach)
    {
      v115 = _MISAttach((a1 + 4992));
      if (!v115)
      {
        v35 = *(a1 + 4992);
        if (!v35)
        {
          sub_1001A67AC();
          v37 = 9;
          goto LABEL_394;
        }

        goto LABEL_267;
      }
    }

    else
    {
      v115 = -1;
    }

    sub_1001A6804(v115);
    v37 = 10;
    goto LABEL_394;
  }

  if (v3)
  {
    goto LABEL_358;
  }

  v4 = CFStringCreateMutable(kCFAllocatorDefault, 0);
  LODWORD(v195) = 0;
  valuePtr = 0;
  if (*(a1 + 20) != 1)
  {
    sub_1001A6AA4(a1);
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    if (!v4)
    {
      goto LABEL_288;
    }

    goto LABEL_287;
  }

  if (sub_100021394(*(a1 + 64)))
  {
    v5 = 0;
  }

  else
  {
    v5 = CFStringCompare(v4, @"XZ", 0) == kCFCompareEqualTo || CFStringCompare(v4, &stru_1002680F8, 0) == kCFCompareEqualTo || CFStringCompare(v4, @"JP", 0) == kCFCompareEqualTo || CFStringCompare(v4, @"TN", 0) == kCFCompareEqualTo || CFStringCompare(v4, @"YE", 0) == kCFCompareEqualTo;
  }

  HIDWORD(v186) = sub_1000EDB40(v4);
  v11 = 0;
  do
  {
    v19 = CFStringCompare(v4, off_100261A20[v11], 0);
    if (v19 == kCFCompareEqualTo)
    {
      break;
    }

    v49 = v11++ == 37;
  }

  while (!v49);
  v20 = *(a1 + 64);
  sub_10014C1C0(v20, v12, v13, v14, v15, v16, v17, v18, v169, v172, v174, v176, v178, v180, v182, v184, v186, theArray);
  LODWORD(v187) = sub_1000634F8(v20, v21, &valuePtr);
  if (v5)
  {
    v22 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v170 = "__WiFiDeviceManagerStartMISScan";
      [off_100298C40 WFLog:3 message:"%s: usage is regulatory restricted. Defaulting to 2.4GHz only"];
    }

    objc_autoreleasePoolPop(v22);
    goto LABEL_38;
  }

  if (v2[1336] || (Count = CFSetGetCount(*(a1 + 5320)), v24 = *(a1 + 7144), Count >= 1) && v24 == 1 || v24 != 2 && (!v2[3040] || !v2[3043]))
  {
LABEL_38:
    v25 = 0;
    goto LABEL_39;
  }

  v25 = 1;
LABEL_39:
  v26 = sub_100006F88(*(a1 + 64));
  v27 = sub_100007D90(a1, v26, 1);
  v28 = v27;
  if (v27)
  {
    v29 = sub_10000A540(v27, @"CHANNEL");
    v30 = sub_10000A540(v28, @"CHANNEL_FLAGS");
    if (v30)
    {
      CFNumberGetValue(v30, kCFNumberSInt32Type, &valuePtr + 4);
    }

    if (v29)
    {
      CFNumberGetValue(v29, kCFNumberSInt32Type, &v195);
    }

    HIDWORD(v185) = (HIDWORD(valuePtr) >> 3) & 1;
    if ((valuePtr & 0x800000000) != 0)
    {
      v31 = 0;
      LOBYTE(v32) = 0;
    }

    else if ((valuePtr & 0x1000000000) != 0)
    {
      LOBYTE(v32) = 0;
      v31 = 1;
    }

    else
    {
      v31 = 0;
      v32 = (HIDWORD(valuePtr) >> 13) & 1;
    }

    v33 = (valuePtr & 0x80000000000) == 0;
    v2[1337] = 0;
    theArraya = (v2 + 1337);
    if (!sub_1000C7464(a1, 4) || v2[1338] && !sub_1000C7464(a1, 8))
    {
      v2[1337] = 1;
      v34 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v170 = "__WiFiDeviceManagerStartMISScan";
        v173 = 25345;
        [off_100298C40 WFLog:3 message:"%s %u forceDisconnectInfra as PHS network going to be started"];
      }

LABEL_64:
      objc_autoreleasePoolPop(v34);
    }
  }

  else
  {
    v2[1337] = 0;
    theArraya = (v2 + 1337);
    if (_os_feature_enabled_impl() && *(a1 + 8984) == 3 || *(a1 + 3520) >= 1)
    {
      v33 = 1;
      v2[1337] = 1;
      v34 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v170 = "__WiFiDeviceManagerStartMISScan";
        [off_100298C40 WFLog:3 message:"%s: forceDisconnectInfra as infra join is in progress"];
      }

      LOBYTE(v32) = 0;
      v31 = 0;
      HIDWORD(v185) = 0;
      goto LABEL_64;
    }

    LOBYTE(v32) = 0;
    v31 = 0;
    HIDWORD(v185) = 0;
    v33 = 1;
  }

  v2[1168] = 0;
  if (+[WiFiSoftApStateMonitor sharedInstance])
  {
    [+[WiFiSoftApStateMonitor sharedInstance](WiFiSoftApStateMonitor setMisChannel:"setMisChannel:", v2[1168]];
  }

  v192 = v2;
  *(a1 + 5312) = 20;
  if (+[WiFiSoftApStateMonitor sharedInstance])
  {
    [+[WiFiSoftApStateMonitor sharedInstance](WiFiSoftApStateMonitor setMisBandWidth:"setMisBandWidth:", *(a1 + 5312)];
  }

  if (!v2[3056])
  {
    if (!v25 || *(a1 + 3470))
    {
      v39 = "2.4GHz";
      goto LABEL_209;
    }

    LODWORD(v185) = v31;
    v72 = 0;
    if (v19)
    {
      v73 = BYTE4(v187);
    }

    else
    {
      v73 = 1;
    }

    if (v187)
    {
      v74 = v19 == kCFCompareEqualTo;
    }

    else
    {
      v74 = 0;
    }

    v75 = 1;
    v39 = "5GHz";
    while (1)
    {
      v76 = v75;
      if (sub_10005F438(*(a1 + 64), dword_100297BB8[v72]))
      {
        v77 = dword_100297BB8[v72];
        if (v77 == 138)
        {
          if (v73)
          {
            goto LABEL_179;
          }
        }

        else if ((((v77 - 142) < 0x18) & v73) != 0)
        {
          goto LABEL_179;
        }

        if (sub_1000CEE58(a1, v77) == 0 || v74)
        {
          v2[1168] = dword_100297BB8[v72];
          v39 = "5GHz";
          v31 = v185;
          if (!+[WiFiSoftApStateMonitor sharedInstance])
          {
            goto LABEL_209;
          }

          goto LABEL_207;
        }
      }

LABEL_179:
      v75 = 0;
      v72 = 1;
      if ((v76 & 1) == 0)
      {
        v31 = v185;
        goto LABEL_209;
      }
    }
  }

  if (!v25)
  {
    goto LABEL_193;
  }

  LODWORD(v185) = v31;
  if (*(a1 + 3470))
  {
    v38 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: setting misBand to 2G due to AWDL RealTime", "__WiFiDeviceManagerStartMISScan"}];
    }

LABEL_142:
    objc_autoreleasePoolPop(v38);
    v65 = 1;
    goto LABEL_143;
  }

  if (*(a1 + 7148) == 1)
  {
    v38 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: setting misBand to 2G due to NAN Concurrency", "__WiFiDeviceManagerStartMISScan"}];
    }

    goto LABEL_142;
  }

  v82 = v31 ^ 1;
  if (!v28)
  {
    v82 = 1;
  }

  if (v82)
  {
    v128 = v32 ^ 1;
    if (!v28)
    {
      v128 = 1;
    }

    if (v128)
    {
      goto LABEL_303;
    }

    *theArraya = 1;
    v83 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v173 = 25382;
      [off_100298C40 WFLog:3 message:{"%s %u forceDisconnectInfra as connected to 6E ", "__WiFiDeviceManagerStartMISScan"}];
    }
  }

  else if (sub_10005F338(*(a1 + 64), v195) || sub_1000CEE58(a1, v195))
  {
    *theArraya = 1;
    v83 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v173 = 25372;
      [off_100298C40 WFLog:3 message:{"%s %u forceDisconnectInfra as its DFS Channel or Coex denylisted channel", "__WiFiDeviceManagerStartMISScan"}];
    }
  }

  else
  {
    if (v33)
    {
      v2[1168] = v195;
      if (+[WiFiSoftApStateMonitor sharedInstance])
      {
        [+[WiFiSoftApStateMonitor sharedInstance](WiFiSoftApStateMonitor setMisChannel:"setMisChannel:", v2[1168]];
      }

      goto LABEL_303;
    }

    *theArraya = 1;
    v83 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v173 = 25375;
      [off_100298C40 WFLog:3 message:{"%s %u forceDisconnectInfra as its associated bandwidth is > 80MHz", "__WiFiDeviceManagerStartMISScan"}];
    }
  }

  objc_autoreleasePoolPop(v83);
LABEL_303:
  v65 = 0;
LABEL_143:
  if (!*theArraya && v2[1168])
  {
    goto LABEL_192;
  }

  v66 = 0;
  if (v19)
  {
    v67 = BYTE4(v187);
  }

  else
  {
    v67 = 1;
  }

  if (v187)
  {
    v68 = v19 == kCFCompareEqualTo;
  }

  else
  {
    v68 = 0;
  }

  v69 = 1;
  while (1)
  {
    v70 = v69;
    if (!sub_10005F438(*(a1 + 64), dword_100297BB8[v66]))
    {
      goto LABEL_157;
    }

    v71 = dword_100297BB8[v66];
    if (v71 == 138)
    {
      break;
    }

    if ((((v71 - 142) < 0x18) & v67) == 0)
    {
      goto LABEL_156;
    }

LABEL_157:
    v69 = 0;
    v66 = 1;
    if ((v70 & 1) == 0)
    {
      goto LABEL_192;
    }
  }

  if (v67)
  {
    goto LABEL_157;
  }

LABEL_156:
  if (sub_1000CEE58(a1, v71) != 0 && !v68)
  {
    goto LABEL_157;
  }

  v2[1168] = dword_100297BB8[v66];
  if (+[WiFiSoftApStateMonitor sharedInstance])
  {
    [+[WiFiSoftApStateMonitor sharedInstance](WiFiSoftApStateMonitor setMisChannel:"setMisChannel:", v2[1168]];
  }

LABEL_192:
  v31 = v185;
  if (!v65)
  {
    v39 = "5GHz";
    goto LABEL_209;
  }

LABEL_193:
  if (!v28)
  {
    goto LABEL_200;
  }

  v84 = BYTE4(v185) ^ 1;
  if (*theArraya)
  {
    v84 = 1;
  }

  if (v84)
  {
LABEL_200:
    v85 = 0;
    while (!sub_10005F438(*(a1 + 64), dword_100297BAC[v85]))
    {
      if (++v85 == 3)
      {
        goto LABEL_206;
      }
    }

    v2[1168] = dword_100297BAC[v85];
    if (+[WiFiSoftApStateMonitor sharedInstance])
    {
      [+[WiFiSoftApStateMonitor sharedInstance](WiFiSoftApStateMonitor setMisChannel:"setMisChannel:", v2[1168]];
    }

LABEL_206:
    v2[1168] = dword_100297BAC[0];
    v39 = "2.4GHz";
    if (!+[WiFiSoftApStateMonitor sharedInstance])
    {
LABEL_209:
      if (v28)
      {
        goto LABEL_210;
      }

      goto LABEL_211;
    }

LABEL_207:
    [+[WiFiSoftApStateMonitor sharedInstance](WiFiSoftApStateMonitor setMisChannel:"setMisChannel:", v2[1168]];
    goto LABEL_209;
  }

  v2[1168] = v195;
  if (+[WiFiSoftApStateMonitor sharedInstance])
  {
    [+[WiFiSoftApStateMonitor sharedInstance](WiFiSoftApStateMonitor setMisChannel:"setMisChannel:", v2[1168]];
  }

  v39 = "2.4GHz";
LABEL_210:
  CFRelease(v28);
LABEL_211:
  v86 = v2[1168];
  if (v2[1168])
  {
    if (v86 < 0xF)
    {
      v87 = 20;
    }

    else if ((sub_10005F500(*(a1 + 64), v86) & 4) != 0)
    {
      v87 = 80;
    }

    else
    {
      v87 = 20;
    }

    *(a1 + 5312) = v87;
    if (+[WiFiSoftApStateMonitor sharedInstance])
    {
      [+[WiFiSoftApStateMonitor sharedInstance](WiFiSoftApStateMonitor setMisBandWidth:"setMisBandWidth:", *(a1 + 5312)];
    }

    *(a1 + 5392) = 1;
  }

  v88 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v89 = "YES";
    if ((v2[3057] & 2) != 0)
    {
      v90 = "YES";
    }

    else
    {
      v90 = "NO";
    }

    if (v2[3057])
    {
      v91 = "YES";
    }

    else
    {
      v91 = "NO";
    }

    v92 = "2.4GHz";
    if (v31)
    {
      v92 = "5GHz";
    }

    if (!v2[1337])
    {
      v89 = "NO";
    }

    v181 = v92;
    v183 = v89;
    v177 = v90;
    v179 = v91;
    v173 = v39;
    v175 = *(a1 + 5312);
    [off_100298C40 WFLog:3 message:{"MIS Channel Selection: MIS Ch = %d MIS Band = %s MIS BandWidth = %d AWDL state=%s Infra Connected %s Infra Band %s Should Disconnect Infra %s ", v2[1168]}];
  }

  objc_autoreleasePoolPop(v88);
  if (!*(a1 + 5392) || !v2[1168])
  {
    v93 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"Attempting MIS Scan"];
    }

    objc_autoreleasePoolPop(v93);
    HIDWORD(v195) = 0;
    if (!*(a1 + 5416))
    {
      sub_1001A699C();
      goto LABEL_259;
    }

    v94 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (!v94)
    {
LABEL_259:
      v79 = 0;
      goto LABEL_260;
    }

    v98 = v94;
    v99 = *(a1 + 64);
    v100 = sub_100006F88(v99);
    if (sub_10001A6E4(v99, v100, v98))
    {
      sub_1001A6950();
    }

    else
    {
      theArraya = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      if (theArraya)
      {
        if (CFArrayGetCount(v98) >= 1)
        {
          v101 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v98, v101);
            if (ValueAtIndex)
            {
              v103 = ValueAtIndex;
              v104 = CFDictionaryGetValue(ValueAtIndex, @"SUP_CHANNEL");
              v105 = CFDictionaryGetValue(v103, @"SUP_CHANNEL_FLAGS");
              if (v104)
              {
                v106 = v105;
                if (v105)
                {
                  v107 = *(a1 + 5416);
                  v209.length = CFArrayGetCount(v107);
                  v209.location = 0;
                  if (CFArrayContainsValue(v107, v209, v104))
                  {
                    CFNumberGetValue(v104, kCFNumberIntType, &v195 + 4);
                    if (sub_1000CEE58(a1, HIDWORD(v195)))
                    {
                      v108 = objc_autoreleasePoolPush();
                      if (off_100298C40)
                      {
                        v173 = HIDWORD(v195);
                        v170 = "__CreateMIS24GScanChanList";
                        [off_100298C40 WFLog:3 message:"%s: channel %d is blacklisted by coex manager"];
                      }

                      objc_autoreleasePoolPop(v108);
                    }

                    else
                    {
                      *buffer = @"CHANNEL";
                      *&buffer[8] = @"CHANNEL_FLAGS";
                      values[0] = v104;
                      values[1] = v106;
                      v109 = CFDictionaryCreate(kCFAllocatorDefault, buffer, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                      if (v109)
                      {
                        v110 = v109;
                        CFArrayAppendValue(theArraya, v109);
                        CFRelease(v110);
                      }
                    }
                  }
                }
              }
            }

            ++v101;
          }

          while (v101 < CFArrayGetCount(v98));
        }

        CFRelease(v98);
        v79 = theArraya;
        if (CFArrayGetCount(theArraya))
        {
LABEL_260:
          sub_10018C85C(0, v79, *(a1 + 128), 0, 1, v95, v96, v97, v170, v173, v175, SHIDWORD(v175), v177, SHIDWORD(v177), v179, v181, v183, v185, v187, theArraya, kCFAllocatorDefault, v192, valuePtr, v195, *buffer, *&buffer[8]);
          v81 = v112;
          v2 = v193;
          if (v112)
          {
            v113 = malloc_type_malloc(0x28uLL, 0x10E0040573E0799uLL);
            v78 = v113;
            if (v113)
            {
              *v113 = a1;
              v113[1] = 0;
              v113[3] = 0;
              if (CFDictionaryContainsKey(v81, @"SSID_STR"))
              {
                v114 = 1;
              }

              else
              {
                v114 = CFDictionaryContainsKey(v81, @"SCAN_SSID_LIST") != 0;
              }

              v78[32] = v114;
              v126 = sub_100006F88(*(a1 + 64));
              v127 = sub_100025FF8(a1, v126, v81, 0, sub_100194110, v78, (a1 + 5400), 19);
              if (!v127)
              {
                v80 = 1;
                if (!v4)
                {
LABEL_288:
                  if (v79)
                  {
                    CFRelease(v79);
                  }

                  if (v81)
                  {
                    CFRelease(v81);
                  }

                  if (v80)
                  {
                    v3 = 1;
                    goto LABEL_357;
                  }

                  if (v78)
                  {
                    free(v78);
                  }

                  goto LABEL_296;
                }

LABEL_287:
                CFRelease(v4);
                goto LABEL_288;
              }

              sub_1001A69E8(v127);
            }

            else
            {
              sub_1001A6A44();
            }
          }

          else
          {
            v78 = 0;
          }

          v80 = 0;
          if (!v4)
          {
            goto LABEL_288;
          }

          goto LABEL_287;
        }

        v111 = theArraya;
        goto LABEL_258;
      }
    }

    v111 = v98;
LABEL_258:
    CFRelease(v111);
    goto LABEL_259;
  }

  sub_1000EE598(a1);
  if (v4)
  {
    CFRelease(v4);
  }

  v3 = *(a1 + 5392);
LABEL_357:
  *(a1 + 5392) = v3;
LABEL_358:
  if (v2[1171])
  {
    v154 = 0;
  }

  else
  {
    v154 = v3 == 0;
  }

  if (v154)
  {
    v155 = *(a1 + 5276);
    if (v155)
    {
      v156 = IOPMAssertionRelease(v155);
      if (v156)
      {
        v157 = v156;
        v158 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: MIS session not active: release MIS PM Assertion, error=%d", "__WiFiDeviceManagerMISStateMachineRun", v157}];
        }

        objc_autoreleasePoolPop(v158);
      }

      *(a1 + 5276) = 0;
    }
  }
}