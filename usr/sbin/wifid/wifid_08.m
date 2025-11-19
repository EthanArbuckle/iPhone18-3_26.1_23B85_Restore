void sub_10008D4E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3;
  if (*(a5 + 1872))
  {
    *(a5 + 1904) = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100090488;
    v7[3] = &unk_10025F5F8;
    v7[4] = v6;
    v7[5] = a5;
    dispatch_async(qword_100298C50, v7);
  }
}

void sub_10008D57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (a5)
  {
    if ((*(a6 + 2600) & 1) == 0)
    {
      return;
    }

    v7 = (a6 + 2600);
    goto LABEL_14;
  }

  v8 = *(a6 + 2504);
  if (v8)
  {
    context[0] = a6;
    context[1] = a1;
    context[2] = v8;
    CFSetApplyFunction(*(a6 + 144), sub_100090330, context);
    kdebug_trace();
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Dispatching client link up event.", "__WiFiManagerJoinDoneCallback"}];
    }

    objc_autoreleasePoolPop(v9);
  }

  if (*(a6 + 2600))
  {
    v7 = (a6 + 2600);
    if (*(a6 + 2585) == 1)
    {
      v10 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Debounce succeeded.", "__WiFiManagerJoinDoneCallback"}];
      }

      objc_autoreleasePoolPop(v10);
      *(a6 + 2568) = CFAbsoluteTimeGetCurrent();
      if (*(a6 + 2586) == 1)
      {
        v11 = *(a6 + 2592);
        v12 = dispatch_time(0, 3000000000);
        dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0);
      }

      goto LABEL_15;
    }

LABEL_14:
    *(a6 + 2585) = 0;
LABEL_15:
    if (*(a6 + 2585) != 1 || (*(a6 + 2586) & 1) == 0)
    {
      sub_1000904DC(a6);
    }

    *v7 = 0;
  }
}

void sub_10008D720(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  v4[1] = a1;
  LOBYTE(v4[0]) = a3;
  CFSetApplyFunction(*(a4 + 144), sub_100090AD4, v4);
}

void sub_10008D764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    if (a4)
    {
      context[0] = a3;
      context[1] = a1;
      context[2] = a4;
      CFSetApplyFunction(*(a3 + 144), sub_100090AE4, context);
    }
  }
}

void sub_10008D7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    if (a4)
    {
      context[0] = a3;
      context[1] = a1;
      context[2] = a4;
      CFSetApplyFunction(*(a3 + 144), sub_100090B08, context);
    }
  }
}

void sub_10008D7FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 && *(a3 + 2600) == 1)
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Debounce failed", "__WiFiManagerLinkDownDebounceFailedCallback"}];
    }

    objc_autoreleasePoolPop(v4);
    *(a3 + 2585) = 0;
    sub_1000904DC(a3);
    *(a3 + 2600) = 0;
  }
}

void sub_10008D888(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  context[1] = a1;
  v6 = -1431655766;
  context[0] = a3;
  v5 = a4;
  CFSetApplyFunction(*(a3 + 144), sub_100090B2C, context);
}

void sub_10008D8D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(a3 + 881) = a4;
  context[1] = a1;
  v5 = 0xAAAAAAAAAAAAAAAALL;
  context[0] = a3;
  LOBYTE(v5) = a4;
  CFSetApplyFunction(*(a3 + 144), sub_100092094, context);
}

void sub_10008D91C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 884) + 1;
  *(a3 + 884) = v3;
  context[1] = a1;
  v6 = -1431655766;
  context[0] = a3;
  v5 = v3;
  CFSetApplyFunction(*(a3 + 144), sub_100090BC4, context);
}

void sub_10008D970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 884) = 0;
  context[1] = a1;
  context[2] = 0xAAAAAAAA00000000;
  context[0] = a3;
  CFSetApplyFunction(*(a3 + 144), sub_100090BC4, context);
}

void sub_10008D9BC(uint64_t a1, const void *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = objc_autoreleasePoolPush();
    if (a2)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: association to recommened network %@", "__WiFiManagerRecommendedNetworkAssociationCallback", sub_10000A878(a2)}];
      }

      objc_autoreleasePoolPop(v5);

      sub_100159BD0(a3, a2, 0xE);
    }

    else
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: network is null", "__WiFiManagerRecommendedNetworkAssociationCallback"}];
      }

      objc_autoreleasePoolPop(v5);
    }
  }

  else
  {
    sub_100172200();
  }
}

void sub_10008DAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a1;
  v3[1] = a3;
  CFSetApplyFunction(*(a2 + 144), sub_100090C78, v3);
}

void sub_10008DAFC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a3)
  {
    v5[0] = a1;
    v5[1] = a2;
    if (a4)
    {
      v4 = sub_100090CD8;
    }

    else
    {
      v4 = sub_100090CE4;
    }

    CFSetApplyFunction(*(a3 + 144), v4, v5);
  }
}

void sub_10008DB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  context[0] = a1;
  context[1] = a2;
  context[2] = a4;
  CFSetApplyFunction(*(a3 + 144), sub_100090CF0, context);
}

void sub_10008DB9C(const void *a1, uint64_t a2, CFDictionaryRef theDict, uint64_t a4)
{
  Value = CFDictionaryGetValue(theDict, @"DRIVER_AVAILABLE");
  v9 = CFDictionaryGetValue(theDict, @"DRIVER_AVAILABLE_KEY_SUBREASON_STRING");
  v10 = *(a4 + 760);
  if (v10)
  {
    v11 = v9;
    if (CFEqual(Value, v10))
    {
      if (!v11 || CFStringCompare(@"Driver Booted", v11, 1uLL))
      {
        v12 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: driver availability: %@ hasn't changed, bail out\n", "__WiFiManagerDispatchDeviceAvailable", Value}];
        }

        objc_autoreleasePoolPop(v12);
        return;
      }
    }
  }

  v13 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: driver availability: %@, previously: %@\n", "__WiFiManagerDispatchDeviceAvailable", Value, *(a4 + 760)}];
  }

  objc_autoreleasePoolPop(v13);
  *(a4 + 760) = Value;
  if (!CFEqual(Value, kCFBooleanTrue))
  {
    v22 = CFDictionaryGetValue(theDict, @"DRIVER_AVAILABLE_REASON_STRING");
    if (CFStringCompare(@"Watchdog", v22, 1uLL))
    {
      v23 = CFDictionaryGetValue(theDict, @"DRIVER_AVAILABLE_REASON_STRING");
      if (CFStringCompare(@"DextCrashed", v23, 1uLL) == kCFCompareEqualTo && *(a4 + 2440) == 1)
      {
        v24 = sub_1000C3F38(a1);
        if (v24)
        {
          v25 = v24;
          if (sub_10000A7CC(v24))
          {
            sub_10008FF38(a4, a1, v25);
          }
        }
      }
    }

    else
    {
      sub_1001722E8();
    }

    goto LABEL_39;
  }

  if (sub_10007809C(a4))
  {
    sub_100158290(a4);
  }

  v14 = CFDictionaryGetValue(theDict, @"DRIVER_AVAILABLE_REASON_STRING");
  if (CFStringCompare(@"Initializing", v14, 1uLL) == kCFCompareEqualTo)
  {
    sub_10017226C(a4);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100090E48;
  block[3] = &unk_10025EAD8;
  block[4] = a4;
  dispatch_async(qword_100298C50, block);
  sub_1000191F8(a4, *(a4 + 1824), 10, a1);
  v15 = CFDictionaryGetValue(theDict, @"DRIVER_AVAILABLE_REASON_STRING");
  if (CFStringCompare(@"DextCrashed", v15, 1uLL) == kCFCompareEqualTo || (v16 = CFDictionaryGetValue(theDict, @"DRIVER_AVAILABLE_REASON_STRING"), CFStringHasPrefix(v16, @"FullChipReset")))
  {
    v17 = *(a4 + 200);
    if (v17)
    {
      v18 = [v17 getLocaleCountryCode];
      v19 = [*(a4 + 200) getLocaleSource];
      if (*(a4 + 2236) && v18)
      {
        v20 = sub_1000C8018(a1, v18, v19);
        v21 = objc_autoreleasePoolPush();
        if (v20)
        {
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s WiFiCC : Successfully Reapplied country : [%@] after DextCrashed", "__WiFiManagerDispatchDeviceAvailable", v18}];
          }

          objc_autoreleasePoolPop(v21);
          goto LABEL_39;
        }

        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s WiFiCC : Could not apply : [%@] after DextCrashed. Determining locale...", "__WiFiManagerDispatchDeviceAvailable", v18}];
        }

        v27 = v21;
      }

      else
      {
        v26 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s WiFiCC : Dext Crashed. Locale not available. Determining fresh locale...", "__WiFiManagerDispatchDeviceAvailable"}];
        }

        v27 = v26;
      }

      objc_autoreleasePoolPop(v27);
      [*(a4 + 200) determineAndSetLocale:0];
    }
  }

LABEL_39:
  context[0] = a1;
  context[1] = theDict;
  CFSetApplyFunction(*(a4 + 144), sub_100090E58, context);
  v28 = *(a4 + 1888);
  if (v28)
  {
    [v28 handleEvent:55 withData:theDict interface:a2];
  }
}

void sub_10008DFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[0] = a1;
  v4[1] = a3;
  CFSetApplyFunction(*(a4 + 144), sub_100090E74, v4);
}

void sub_10008DFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[0] = a1;
  v4[1] = a3;
  CFSetApplyFunction(*(a4 + 144), sub_100090E90, v4);
}

void sub_10008E02C(uint64_t a1, uint64_t a2, const void **a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  if (a8)
  {
    kdebug_trace();
    v15 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: <%@> [%@] isMainIf? %d, isIPV4Routable <%d>, is IPV6Routable <%d>", "__WiFiManagerIPv4Callback", a2, a3, a4, a5, a6}];
    }

    objc_autoreleasePoolPop(v15);
    if (a4)
    {
      if (a6 | a5)
      {
        if (!a3)
        {
          v16 = 0;
LABEL_8:
          v17 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: Sending link up status to Gizmo", "__WiFiManagerIPv4Callback"}];
          }

          objc_autoreleasePoolPop(v17);
          sub_100125FF4(*(a8 + 1536), v16);
          return;
        }

        v18 = sub_100072D44(a8);
        v19 = sub_10016350C(v18, a3);
        if (v19)
        {
          v16 = v19;
        }

        else
        {
          v16 = a3;
        }

        v20 = sub_1001640E4(a8, a3);
        v21 = v20;
        if (v20)
        {
          v22 = sub_10000A540(v20, @"MacAddressRandomisationTagMigratedNetwork");
          v23 = sub_10000A540(v21, @"PRIVATE_MAC_ADDRESS");
          if (v23)
          {
            Value = CFDictionaryGetValue(v23, @"PRIVATE_MAC_ADDRESS_VALUE");
            v25 = sub_10000ABFC(Value) != 0;
LABEL_20:
            if (a5 && (a7 || sub_10000A7CC(v16)))
            {
              if (v21 && (!v22 || v22 != kCFBooleanTrue || !v25 || sub_10009E718(v16) || sub_10009E770(v16)) && !sub_10007DC04(a8, v16, 6))
              {
                v26 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"Unable to add assoc done network (%@) to Private Mac network List", sub_10000A878(a3)}];
                }

                objc_autoreleasePoolPop(v26);
              }
            }

            else if (v22 && v22 == kCFBooleanTrue && v25)
            {
              sub_1001724E4(a3, a8, v21);
            }

            goto LABEL_8;
          }
        }

        else
        {
          v22 = 0;
        }

        v25 = 0;
        goto LABEL_20;
      }
    }
  }
}

void sub_10008E2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  context[0] = a1;
  context[1] = a2;
  context[2] = a3;
  CFSetApplyFunction(*(a4 + 144), sub_100090EAC, context);
}

void sub_10008E2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = sub_10000C580(kCFAllocatorDefault, a2);
  }

  else
  {
    v4 = 0;
  }

  sub_1000A2BC8(v4);
  sub_100081EDC(a3, v4, 1);
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t sub_10008E360(uint64_t result, _DWORD *a2, _BYTE *a3, uint64_t a4)
{
  if (result)
  {
    if (a4)
    {
      *a2 = *(a4 + 976);
      *a3 = *(a4 + 322);
    }
  }

  return result;
}

void sub_10008E37C(void *a1, int a2, const void *a3, uint64_t a4)
{
  if (!a4)
  {
    sub_10017262C();
    return;
  }

  if (!a1)
  {
    sub_1001725C0();
    return;
  }

  if (a2 == 18)
  {
    if (sub_1000D8C94(a1) && ![*(a4 + 1128) containsObject:@"wlan.dnsfailure.hud.enable=1"])
    {
      return;
    }

    v8 = *(a4 + 1840);
  }

  else
  {
    if (a2 != 17)
    {
      if (a2 == 16)
      {
        [*(a4 + 1832) incrementCount];
        [*(a4 + 1832) submitABCReportWithReason:0];
        [*(a4 + 1832) submitMetric];

        sub_1000D79C8(a1, -1);
      }

      else
      {
        v9 = *(a4 + 1824);
        if (v9)
        {

          sub_1000191F8(a1, v9, a2, a3);
        }

        else
        {
          sub_100172554();
        }
      }

      return;
    }

    v8 = *(a4 + 1832);
  }

  [v8 updateHUDWithMessage:a3];
}

void sub_10008E4A8(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4)
{
  v80 = 0;
  v81[0] = 0;
  v78 = 0;
  v79 = -1;
  v77 = 0;
  v75 = 0;
  v76 = 0;
  v74 = 0;
  value = 0;
  valuePtr = 0;
  number = 0;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Processing __WiFiManagerBssSteerCallback for ifName:%@", "__WiFiManagerBssSteerCallback", a2}];
  }

  objc_autoreleasePoolPop(v8);
  if (CFDictionaryGetValueIfPresent(a4, @"P2P_BSS_STEERING_REQUEST_TYPE", &value))
  {
    CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr);
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Steering Request type:%u!", "__WiFiManagerBssSteerCallback", valuePtr}];
    }

    objc_autoreleasePoolPop(v9);
  }

  if (!value)
  {
    sub_100172880();
    return;
  }

  v66 = a2;
  v10 = sub_1000102AC(a1, a2);
  v11 = v10;
  if (v10)
  {
    v12 = sub_10001A9BC(v10);
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_msgSend(v12 "channel")];
  if (!CFDictionaryGetValueIfPresent(a4, @"BSSID", &v80))
  {
    v80 = 0;
  }

  if (!CFDictionaryGetValueIfPresent(a4, @"SSID_STR", v81))
  {
    v81[0] = 0;
  }

  v14 = sub_10001B368(v11);
  v15 = 1;
  if (v11 && v81[0] && sub_10000A878(v11))
  {
    v16 = sub_10000A878(v11);
    v15 = CFStringCompare(v16, v81[0], 0) != kCFCompareEqualTo;
  }

  if (CFDictionaryGetValueIfPresent(a4, @"CHANNEL_FLAGS", &v76))
  {
    if (v76)
    {
      CFNumberGetValue(v76, kCFNumberIntType, &v75 + 4);
    }
  }

  else
  {
    v76 = 0;
  }

  if (CFDictionaryGetValueIfPresent(a4, @"CHANNEL", &v78))
  {
    if (v78)
    {
      CFNumberGetValue(v78, kCFNumberSInt32Type, &v77);
      v17 = v78;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
    v78 = 0;
  }

  v18 = [WiFiUsagePrivacyFilter bandFromFlags:v76 OrChannel:v17];
  if (v76)
  {
    v19 = HIDWORD(v75) == 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = v19;
  if (CFDictionaryGetValueIfPresent(a4, @"BAND_PREFERENCE", &number))
  {
    if (number)
    {
      CFNumberGetValue(number, kCFNumberSInt32Type, &v70);
      if (v70 - 1 >= 3)
      {
        v18 = v18;
      }

      else
      {
        v18 = v70 - 1;
      }
    }
  }

  else
  {
    number = 0;
  }

  if (CFDictionaryGetValueIfPresent(a4, @"ROAM_FLAGS", &v69))
  {
    if (v69)
    {
      CFNumberGetValue(v69, kCFNumberSInt32Type, &v68);
    }
  }

  else
  {
    v69 = 0;
  }

  if (valuePtr >= 2)
  {
    if (valuePtr == 2)
    {
      v27 = v12;
      v28 = +[WiFiUsageMonitor sharedInstance];
      if (v77)
      {
        v29 = v78 == 0;
      }

      else
      {
        v29 = 1;
      }

      if (v29)
      {
        v30 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v30 = v77;
      }

      v31 = v81[0];
      v65 = a1;
      if (v80)
      {
        if (CFStringCompare(@"ff:ff:ff:ff:ff:ff", v80, 0))
        {
          v32 = v80;
        }

        else
        {
          v32 = 0;
        }
      }

      else
      {
        v32 = 0;
      }

      v21 = v14;
      LOWORD(v60) = [v14 isStandalone6G];
      [(WiFiUsageMonitor *)v28 setSteeringRequest:2 preferredChannel:v30 preferredBand:v18 preferredSSID:v31 targetSSIDDiffersFromCurrent:v15 preferredBSS:v32 ssidIsSplit:v60 transitionCandidates:?];
      v52 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Current Network ssid is :%@", "__WiFiManagerBssSteerCallback", sub_10000A878(v11)}];
      }

      objc_autoreleasePoolPop(v52);
      v12 = v27;
      if (v11)
      {
        sub_1000B9DC8(v65, v66, 1017, "__WiFiManagerBssSteerCallback", 9830);
      }

      v35 = 0;
      v49 = 0;
      v53 = 0;
      goto LABEL_124;
    }

    goto LABEL_153;
  }

  v61 = v13;
  v63 = a3;
  v64 = a1;
  v21 = v14;
  v62 = v12;
  v22 = +[WiFiUsageMonitor sharedInstance];
  if (v77)
  {
    v23 = v78 == 0;
  }

  else
  {
    v23 = 1;
  }

  if (v23)
  {
    v24 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v24 = v77;
  }

  v25 = v81[0];
  if (v80)
  {
    if (CFStringCompare(@"ff:ff:ff:ff:ff:ff", v80, 0))
    {
      v26 = v80;
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  LOWORD(v60) = [v21 isStandalone6G];
  [(WiFiUsageMonitor *)v22 setSteeringRequest:v20 preferredChannel:v24 preferredBand:v18 preferredSSID:v25 targetSSIDDiffersFromCurrent:v15 preferredBSS:v26 ssidIsSplit:v60 transitionCandidates:?];
  v33 = sub_100072D44(v63);
  if (v33)
  {
    v34 = v33;
    v12 = v62;
    if (!v81[0])
    {
      v38 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Ssid not present in the dictionary! - doing Roam\n", "__WiFiManagerBssSteerCallback"}];
      }

      v35 = 0;
      goto LABEL_79;
    }

    v35 = sub_10009D2E4(v81[0]);
    v36 = objc_autoreleasePoolPush();
    if (v35)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Current Network ssid is :%@", "__WiFiManagerBssSteerCallback", sub_10000A878(v11)}];
      }

      objc_autoreleasePoolPop(v36);
      if (!v11)
      {
        v40 = 0;
        v39 = 0;
LABEL_82:
        v41 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v42 = "doFullJoin";
          if (v40)
          {
            v42 = "doRoam";
          }

          [off_100298C40 WFLog:3 message:{"%s:%d %s !\n", "__WiFiManagerBssSteerCallback", 9714, v42}];
        }

        objc_autoreleasePoolPop(v41);
        if (v40)
        {
          if (v39)
          {
            v43 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: Try any Roam candidate", "__WiFiManagerBssSteerCallback"}];
            }

            objc_autoreleasePoolPop(v43);
            v44 = 0;
            v14 = v21;
          }

          else
          {
            v44 = CFDictionaryGetValue(a4, @"BSSID");
            v14 = v21;
            if (!v44)
            {
              sub_100172698();
              goto LABEL_154;
            }
          }

          if (v78)
          {
            if (number)
            {
              v45 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: Band Preference :%u!", "__WiFiManagerBssSteerCallback", v70}];
              }

              objc_autoreleasePoolPop(v45);
            }

            v46 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s:%d Calling for Roam", "__WiFiManagerBssSteerCallback", 9775}];
            }

            objc_autoreleasePoolPop(v46);
            v76 = CFDictionaryGetValue(a4, @"CHANNEL_FLAGS");
            v47 = CFDictionaryGetValue(a4, @"CHANNEL");
            if (!v76)
            {
              v49 = 0;
              if (!v47)
              {
                goto LABEL_113;
              }

              goto LABEL_112;
            }

            CFNumberGetValue(v76, kCFNumberIntType, &v75 + 4);
            if ((v75 & 0x800000000) != 0)
            {
              v48 = 1;
            }

            else
            {
              if ((v75 & 0x1000000000) == 0)
              {
                goto LABEL_107;
              }

              v48 = 2;
            }

            v74 = v48;
LABEL_107:
            if ((v75 & 0x200000000000) != 0)
            {
              v74 = 3;
            }

            v49 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCharType, &v74);
            v50 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: WiFiRoam : Band for roam : %d", "__WiFiManagerBssSteerCallback", v74}];
            }

            objc_autoreleasePoolPop(v50);
            if (!v47)
            {
              goto LABEL_113;
            }

LABEL_112:
            CFNumberGetValue(v47, kCFNumberSInt32Type, &v75);
LABEL_113:
            sub_1000C99B0(v64, v66, v44, v75, SHIDWORD(v75), v70, v68);
            v51 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s:Cached steering request bssid (%@), channel (%u), band (%d), channel flags(0x%x), roam flags(0x%x)", "__WiFiManagerBssSteerCallback", v44, v75, v70, HIDWORD(v75), v68}];
            }

            objc_autoreleasePoolPop(v51);
            if (_os_feature_enabled_impl() && v61 == 3)
            {
              if (v74 == 2)
              {
                v59 = 55;
              }

              else
              {
                v59 = 54;
              }

              sub_1000197A4(v63, v59);
            }

            else
            {
              sub_1000D5318(v64, v44, v78, v49, number, v69);
            }

            goto LABEL_155;
          }

          sub_1001727C0();
LABEL_154:
          v49 = 0;
LABEL_155:
          v53 = 0;
          goto LABEL_156;
        }

        sub_10015C418();
        if (v79 == -1)
        {
          sub_100172758(v81);
        }

        else
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v34, v79);
          v55 = objc_autoreleasePoolPush();
          if (ValueAtIndex)
          {
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"known network ssid: %@: \n", sub_10000A878(ValueAtIndex)}];
            }

            objc_autoreleasePoolPop(v55);
            if (v11)
            {
              sub_1000B9DC8(v64, v66, 1017, "__WiFiManagerBssSteerCallback", 9728);
            }

            v53 = sub_10000C580(kCFAllocatorDefault, ValueAtIndex);
            v12 = v62;
            if (v53)
            {
              v56 = CFDictionaryGetValue(a4, @"BSSID");
              if (v56)
              {
                v57 = v56;
                if (v78)
                {
                  sub_10000AD34(v53, @"CHANNEL", v78);
                }

                sub_10000AD34(v53, @"BSSID", v57);
                sub_10000AD34(v53, @"FORCE_BSSID", kCFBooleanTrue);
                if (sub_10000A540(v53, @"BSSID"))
                {
                  sub_10009D854(v53, ValueAtIndex);
                  v58 = objc_autoreleasePoolPush();
                  v14 = v21;
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: found matching network in scan results, proceeding with association", "__WiFiManagerBssSteerCallback"}];
                  }

                  objc_autoreleasePoolPop(v58);
                  context[0] = v63;
                  context[1] = 0xAAAAAAAA00000058;
                  context[3] = 0;
                  context[4] = 0;
                  context[2] = v53;
                  CFSetApplyFunction(*(v63 + 112), sub_100003B88, context);
                  v49 = 0;
                  goto LABEL_156;
                }
              }

              else
              {
                sub_100172698();
              }
            }

            else
            {
              sub_1001726F8();
            }

            v49 = 0;
            goto LABEL_124;
          }

          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: %@ does not  exist in the Known Network List", "__WiFiManagerBssSteerCallback", v81[0]}];
          }

          objc_autoreleasePoolPop(v55);
        }

        goto LABEL_148;
      }

      v37 = sub_10009F564(v11, v35);
      v38 = objc_autoreleasePoolPush();
      if (!v37)
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Different network from current - attempting Roam !\n", "__WiFiManagerBssSteerCallback"}];
        }

        v39 = 1;
        goto LABEL_80;
      }

      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Same network as current - doing Roam !\n", "__WiFiManagerBssSteerCallback"}];
      }

LABEL_79:
      v39 = 0;
LABEL_80:
      objc_autoreleasePoolPop(v38);
      v40 = 1;
      goto LABEL_82;
    }

    v14 = v21;
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Failed in creating the network!", "__WiFiManagerBssSteerCallback"}];
    }

    objc_autoreleasePoolPop(v36);
LABEL_153:
    v35 = 0;
    goto LABEL_154;
  }

  sub_100172820();
  v35 = 0;
LABEL_148:
  v49 = 0;
  v53 = 0;
  v12 = v62;
LABEL_124:
  v14 = v21;
LABEL_156:
  if (v12)
  {
    CFRelease(v12);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  if (v14)
  {
    CFRelease(v14);
  }
}

void sub_10008F00C(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (a5)
  {
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: type: %d response: %d network: %@", "__WiFiManagerUserNotificationResponseCallback", a3, a4, a2}];
    }

    objc_autoreleasePoolPop(v9);
    if (a3 != 1)
    {
      v10 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: no blacklisting for notification of type %d response %d", "__WiFiManagerUserNotificationResponseCallback", a3, a4}];
      }

      goto LABEL_8;
    }

    if (a4 == 5)
    {
      v10 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: not blacklisting system cancelled recommendation", "__WiFiManagerUserNotificationResponseCallback"}];
      }

LABEL_8:
      objc_autoreleasePoolPop(v10);
      goto LABEL_12;
    }

    if (a2)
    {
      v11 = CFRetain(a2);
      v17[3] = v11;
    }

    v12 = *(a5 + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10016A00C;
    block[3] = &unk_100260B38;
    block[4] = &v16;
    block[5] = a2;
    block[6] = a5;
    v14 = 1;
    v15 = a4;
    dispatch_async(v12, block);
  }

LABEL_12:
  _Block_object_dispose(&v16, 8);
}

void sub_10008F1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, CFIndex a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (a2 && a3)
  {
    if (a4)
    {
      sub_10015CFDC(a5, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
    }
  }
}

void sub_10008F1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    if (a1)
    {
      v8 = objc_autoreleasePoolPush();
      if (a4)
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: p2pThreadCoexEvent intf :%@", "__WiFiManagerP2pThreadCoexEventCallback", a2}];
        }

        objc_autoreleasePoolPop(v8);
        context[0] = a3;
        context[1] = a1;
        context[2] = a4;
        v9 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: p2pThreadCoexEvent deviceManager :%p", "__WiFiManagerDispatchClientP2pThreadCoexEvent", a1}];
        }

        objc_autoreleasePoolPop(v9);
        CFSetApplyFunction(*(a3 + 144), sub_100090EC4, context);
      }

      else
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: p2pThreadCoexEvent data is NULL!", "__WiFiManagerP2pThreadCoexEventCallback"}];
        }

        objc_autoreleasePoolPop(v8);
      }
    }

    else
    {
      sub_1001728E0();
    }
  }

  else
  {
    sub_10017294C();
  }
}

void sub_10008F31C(int a1, int a2, CFArrayRef theArray, uint64_t a4)
{
  CFArrayGetCount(theArray);
  if (!a4)
  {
    sub_100172B20();
    return;
  }

  v6 = *(a4 + 2664);
  if (v6)
  {
    CFRelease(v6);
    *(a4 + 2664) = 0;
  }

  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    *(a4 + 2664) = 0;
    *(a4 + 2672) = 0;
    return;
  }

  v8 = Mutable;
  v64 = a4;
  v9 = sub_100072D44(a4);
  if (v9)
  {
    v10 = v9;
    Count = CFArrayGetCount(v9);
    v12 = CFArrayGetCount(theArray);
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"[NWTRANSIT]: %s: Colocated Network Count = %ld ", "__WiFiManagerCreateColocatedNetworkGroup", v12}];
    }

    objc_autoreleasePoolPop(v13);
    if (v12 >= 1)
    {
      for (i = 0; i != v12; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        if (ValueAtIndex)
        {
          Value = CFDictionaryGetValue(ValueAtIndex, @"SSID_STR");
          if (!Value)
          {
            sub_1001729B8();
            goto LABEL_24;
          }

          if (Count >= 1)
          {
            v17 = Value;
            for (j = 0; j != Count; ++j)
            {
              v19 = CFArrayGetValueAtIndex(v10, j);
              v20 = sub_10000A540(v19, @"SSID_STR");
              if (v20 && CFStringCompare(v20, v17, 0) == kCFCompareEqualTo)
              {
                CFArrayAppendValue(v8, v19);
              }
            }
          }
        }
      }
    }

    v21 = CFArrayGetCount(v8);
    if (v21 >= 1)
    {
      v22 = v21;
      for (k = 0; k != v22; ++k)
      {
        v24 = CFArrayGetValueAtIndex(v8, k);
        v25 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"[NWTRANSIT]: Colocated Network %@ ", v24}];
        }

        objc_autoreleasePoolPop(v25);
      }
    }
  }

LABEL_24:
  v26 = v64;
  *(v64 + 333) = v8;
  v27 = sub_100021720(v64);
  v28 = v27;
  if (v27)
  {
    v29 = sub_10000A540(v27, @"PRIVATE_MAC_ADDRESS");
    if (v29)
    {
      v30 = v29;
      TypeID = CFDictionaryGetTypeID();
      if (TypeID == CFGetTypeID(v30))
      {
        CFDictionaryGetValue(v30, @"PRIVATE_MAC_ADDRESS_TYPE");
      }
    }

    v32 = sub_10000A540(v28, @"WiFiNetworkRouterMac");
    v33 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"Router MAC Address: %@", v32}];
    }

    objc_autoreleasePoolPop(v33);
    v34 = sub_10000A540(v28, @"WiFiNetworkRouterIP");
    v35 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"Router IP Address: %@", v34}];
    }

    objc_autoreleasePoolPop(v35);
  }

  v36 = sub_100072D44(v64);
  if (!v36)
  {
    goto LABEL_78;
  }

  v37 = v36;
  v38 = CFArrayGetCount(v36);
  v39 = CFArrayGetCount(v8);
  v40 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"[NWTRANSIT]: %s: Run Colocated Networks against Private Filters. ColocatedNetwork Count = %ld ", "__WiFiManagerColocatedCachePrivacyFilters", v39}];
  }

  objc_autoreleasePoolPop(v40);
  if (!v39)
  {
    goto LABEL_78;
  }

  if (v39 < 1)
  {
LABEL_84:
    sub_100172A24();
    return;
  }

  v41 = 0;
  while (1)
  {
    v42 = CFArrayGetValueAtIndex(v8, v41);
    if (!v42)
    {
      goto LABEL_71;
    }

    if (v38 < 1)
    {
      goto LABEL_73;
    }

    v43 = 0;
    while (1)
    {
      v44 = CFArrayGetValueAtIndex(v37, v43);
      if (sub_10009F648(v42, v44))
      {
        break;
      }

      if (v38 == ++v43)
      {
        goto LABEL_73;
      }
    }

    if (!v44)
    {
LABEL_73:
      v48 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"[NWTRANSIT]: Network %@ is not present in Known Network list", v42}];
      }

      goto LABEL_77;
    }

    v45 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"[NWTRANSIT]: Network %@ is present in Known Network list", v42}];
    }

    objc_autoreleasePoolPop(v45);
    v46 = sub_10009EB80(v44);
    v47 = (v46 | sub_10009E148(v44));
    v48 = objc_autoreleasePoolPush();
    if (!v47)
    {
      break;
    }

    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"[NWTRANSIT]: Network %@ is Secure", v42}];
    }

    objc_autoreleasePoolPop(v48);
    v49 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"[NWTRANSIT]: Network %@ has same Subnet", v42}];
    }

    objc_autoreleasePoolPop(v49);
    v50 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"[NWTRANSIT]: Network %@ has same Auto-Join Policy", v42}];
    }

    objc_autoreleasePoolPop(v50);
    v51 = sub_1001640E4(v64, v28);
    if (v51)
    {
      v52 = sub_10000A540(v51, @"PRIVATE_MAC_ADDRESS");
    }

    else
    {
      v52 = 0;
    }

    v53 = sub_1001640E4(v64, v44);
    if (!v52 || !v53)
    {
      v60 = sub_10000A540(v53, @"PRIVATE_MAC_ADDRESS");
      if (v60)
      {
        v61 = v60;
        v62 = CFDictionaryGetTypeID();
        if (v62 == CFGetTypeID(v61))
        {
          CFDictionaryGetValue(v61, @"PRIVATE_MAC_ADDRESS_TYPE");
        }
      }

      v48 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"[NWTRANSIT]: Network %@ has same Privacy Policy", v42}];
      }

      goto LABEL_77;
    }

    v63 = v52;
    v54 = sub_10000A540(v53, @"PRIVATE_MAC_ADDRESS");
    v55 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"[NWTRANSIT]: Colocated Network Private Mac Dictionary %@", v54}];
    }

    objc_autoreleasePoolPop(v55);
    v56 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"[NWTRANSIT]: Current Network Private Mac Dictionary %@", v63}];
    }

    objc_autoreleasePoolPop(v56);
    if (v54)
    {
      v57 = CFDictionaryGetTypeID();
      if (v57 == CFGetTypeID(v54))
      {
        if (CFDictionaryGetValue(v54, @"PRIVATE_MAC_ADDRESS_TYPE"))
        {
          sub_10000AD34(v44, @"PRIVATE_MAC_ADDRESS", v63);
        }
      }
    }

    v58 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"[NWTRANSIT]: Network %@ has same Privacy Policy", v42}];
    }

    objc_autoreleasePoolPop(v58);
LABEL_71:
    if (++v41 == v39)
    {
      goto LABEL_84;
    }
  }

  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"[NWTRANSIT]: Network %@ is Not Secure", v42}];
  }

LABEL_77:
  objc_autoreleasePoolPop(v48);
  v26 = v64;
LABEL_78:
  *(v26 + 2672) = 0;
  v59 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"[NWTRANSIT]: Colocated Group is not valid"];
  }

  objc_autoreleasePoolPop(v59);
}

void sub_10008FA54(uint64_t a1, uint64_t a2)
{
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  if (a2)
  {
    if ((sub_100172B8C(a2, Mutable) & 1) != 0 && !Mutable)
    {
      return;
    }
  }

  else
  {
    sub_100172CCC();
    if (!Mutable)
    {
      return;
    }
  }

  CFRelease(Mutable);
}

void sub_10008FAE0(int a1, int a2, CFDictionaryRef theDict, uint64_t a4)
{
  if (a4)
  {
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"P2P_CC_COUNTRY");
      if (Value)
      {
        v6 = Value;
        v7 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"Country from Peer : [%@]", v6}];
        }

        objc_autoreleasePoolPop(v7);
        v8 = *(a4 + 200);
        if (v8)
        {

          [v8 updatePeerCountryCode:v6];
        }
      }
    }
  }

  else
  {
    sub_100172D38();
  }
}

void sub_10008FB98(uint64_t a1, int *a2, int a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  if (a6)
  {
    v6 = *(a6 + 1888);
    if (v6)
    {
      if (a3 == 238)
      {
        v8 = [NSNumber numberWithInteger:*a2];
        v9 = v6;
        v10 = 238;
      }

      else
      {
        if (a3 != 239)
        {
          return;
        }

        v8 = [NSData dataWithBytes:a2 length:a5];
        v9 = v6;
        v10 = 239;
      }

      [v9 handleEvent:v10 withData:v8 interface:a4];
    }
  }
}

uint64_t sub_10008FC34(uint64_t a1)
{
  result = sub_100119028(*(a1 + 32) + 1896, 0);
  *(*(a1 + 32) + 1904) = result;
  return result;
}

void sub_10008FC74(uint64_t a1, uint64_t a2, int a3)
{
  valuePtr = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v7 = Mutable;
    v8 = &kCFBooleanTrue;
    if (!a3)
    {
      v8 = &kCFBooleanFalse;
    }

    CFDictionarySetValue(Mutable, @"BT_SCAN_INTERVAL_RELAX_ENABLE", *v8);
    v9 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
    if (v9)
    {
      v10 = v9;
      CFDictionarySetValue(v7, @"BT_SCAN_INTERVAL_RELAX_REASON", v9);
      CFRelease(v10);
      context[0] = a1;
      context[1] = a2;
      context[2] = v7;
      CFSetApplyFunction(*(a1 + 144), sub_100090298, context);
      CFRelease(v7);
    }

    else
    {
      CFRelease(v7);
      v12 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: Could not allocate reasonRef", "__WiFiManagerDispatchClientBTScanIntervalRelaxEvent"}];
      }

      objc_autoreleasePoolPop(v12);
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Could not allocate BTScanIntervalRelax", "__WiFiManagerDispatchClientBTScanIntervalRelaxEvent"}];
    }

    objc_autoreleasePoolPop(v11);
  }
}

void sub_10008FE08(uint64_t a1, int a2)
{
  if (*(a1 + 1648) != a2)
  {
    v4 = &kCFBooleanTrue;
    if (!a2)
    {
      v4 = &kCFBooleanFalse;
    }

    keys[0] = @"appPolicyUUID";
    keys[1] = @"appPolicyState";
    v5 = *v4;
    values[0] = @"CARPLAY_UUID";
    values[1] = v5;
    v6 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v6)
    {
      v7 = v6;
      v8[0] = a1;
      v8[1] = 0xAAAAAAAA00000041;
      v8[2] = v6;
      v8[3] = 1;
      v8[4] = 0;
      CFSetApplyFunction(*(a1 + 112), sub_100003B88, v8);
      CFRelease(v7);
    }

    *(a1 + 1648) = a2 != 0;
  }
}

void sub_10008FF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1000A14BC(a3))
  {
    sub_10008FC74(a1, a2, 0);
  }

  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Lost link to Carplay network. Reset Carplay mode.", "__WiFiManagerResetCarPlayMode"}];
  }

  objc_autoreleasePoolPop(v5);
  sub_100085E20(a1, 0, 0);

  sub_10008FE08(a1, 0);
}

void sub_10008FFE4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1)
  {
    v3 = *(a1 + 1752);
    v4 = objc_autoreleasePoolPush();
    if (v3)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: stop monitoring application state for %@", "__WiFiManagerStopMonitoringSessionBasedApplication", *(a1 + 1760)}];
      }

      objc_autoreleasePoolPop(v4);
      v5 = *(a1 + 2168);
      if (v5)
      {
        [v5 invalidate];
      }

      if (*(a1 + 1712))
      {
        v7 = *(a1 + 1752);
        v8 = sub_10000A878(v7);
        v9 = [v8 stringByAppendingString:sub_1000A1D68(v7)];
        v6 = objc_autoreleasePoolPush();
        if ([*(a1 + 1712) objectForKey:v9])
        {
          v11 = [*(a1 + 1712) mutableCopy];
          [v11 removeObjectForKey:v9];
          sub_10007393C(a1, @"SessionBasedNetworkList", v11, 0);
          sub_100087A6C(a1, v11);
        }

        else
        {
          v10 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: sessionBasedNetworkList not found", "__WiFiManagerRemoveSessionBasedNetwork"}];
          }

          objc_autoreleasePoolPop(v10);
        }
      }

      else
      {
        v6 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: sessionBasedNetworkList is NULL", "__WiFiManagerRemoveSessionBasedNetwork"}];
        }
      }

      objc_autoreleasePoolPop(v6);
      v12 = sub_10015BCD0(a1, *(a1 + 1752), 0);
      v13 = objc_autoreleasePoolPush();
      if (v12)
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: %@ is existing network, leaving password", "__WiFiManagerStopMonitoringSessionBasedApplication", sub_10000A878(*(a1 + 1752))}];
        }

        objc_autoreleasePoolPop(v13);
      }

      else
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: removing password for %@", "__WiFiManagerStopMonitoringSessionBasedApplication", sub_10000A878(*(a1 + 1752))}];
        }

        objc_autoreleasePoolPop(v13);
        sub_10009FCF4(*(a1 + 1752));
      }

      v14 = *(a1 + 2168);
      if (v14)
      {
        CFRelease(v14);
        *(a1 + 2168) = 0;
      }

      v15 = *(a1 + 1752);
      if (v15)
      {
        CFRelease(v15);
        *(a1 + 1752) = 0;
      }

      v16 = *(a1 + 1760);
      if (v16)
      {
        CFRelease(v16);
        *(a1 + 1760) = 0;
      }

      [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
    }

    else
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: session based network is null", "__WiFiManagerStopMonitoringSessionBasedApplication"}];
      }

      objc_autoreleasePoolPop(v4);
    }
  }

  else
  {
    sub_100172DA4();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100090298(uint64_t a1, void *a2)
{
  if (a2 && *a2 && a2[1])
  {
    v3 = a2[2];
    v4 = a2[1];

    sub_10005A114(a1, v4, v3);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Invalid arguments", "__WiFiManagerDispatchBTScanIntervalRelaxEvent"}];
    }

    objc_autoreleasePoolPop(v5);
  }
}

void sub_100090330(uint64_t a1, uint64_t a2)
{
  if (a2 && *(a2 + 8))
  {
    if (*a2)
    {
      sub_100059FB8(a1, *(a2 + 8), *(a2 + 16));
    }
  }
}

void sub_100090354(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1384);
  WiFiCloudSyncEngineCheckKeychainSyncState();
  v3 = *(*(a1 + 32) + 1384);

  CFRelease(v3);
}

void sub_100090398(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*a2)
    {
      sub_100059FC4(a1, *a2, *(a2 + 8));
    }
  }
}

void sub_1000903B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*a2)
    {
      sub_100059FD0(a1, *a2, *(a2 + 8));
    }
  }
}

void sub_1000903D0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*a2)
    {
      sub_100059FDC(a1, *a2, *(a2 + 8));
    }
  }
}

void sub_1000903EC(id a1)
{
  v1 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"Requesting PersonalHotspotControl extension to reload"];
  }

  objc_autoreleasePoolPop(v1);
  v2 = +[CHSControlService sharedInstance];

  [(CHSControlService *)v2 reloadControlsForExtension:@"com.apple.WiFiKit.PersonalHotspotControl" kind:@"PersonalHotspotControl" reason:@"wifi manager set MIS state request PH widget to reload"];
}

void sub_10009046C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*a2)
    {
      sub_10005A068(a1, *a2, *(a2 + 8));
    }
  }
}

void sub_100090488(uint64_t a1)
{
  *(*(a1 + 40) + 2080) = [*(*(a1 + 40) + 1872) WiFiDriverTriggeredTTRHandler:*(a1 + 32)];
  v2 = *(a1 + 32);
}

void sub_1000904DC(uint64_t a1)
{
  v2 = *(a1 + 2585);
  if (v2 == 1)
  {
    v3 = ((*(a1 + 2568) - *(a1 + 2560)) * 1000.0);
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
  }

  LODWORD(v4) = *(a1 + 2584);
  v5 = *(a1 + 2586);
  v6 = *(a1 + 2576);
  v7 = *(a1 + 2580);
  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    if (v5)
    {
      v9 = "yes";
    }

    else
    {
      v9 = "no";
    }

    if (v2)
    {
      v10 = "yes";
    }

    else
    {
      v10 = "no";
    }

    v11 = v4 == 0;
    v12 = v4;
    v4 = v3;
    if (v11)
    {
      v13 = "no";
    }

    else
    {
      v13 = "yes";
    }

    v14 = v13;
    v3 = v4;
    LOBYTE(v4) = v12;
    [off_100298C40 WFLog:3 message:{"%s: duration %u ms, session up ? %s, debounce succeeded ? %s, debounce timed out ? %s, reason %@(%d), subReason %d", "__WiFiManagerSubmitCarPlayLinkDownSuppressionMetrics", v3, v9, v10, v14, sub_100058CA4(v6), v6, v7}];
  }

  objc_autoreleasePoolPop(v8);
  v21 = -86;
  v15[1] = -1431655766;
  v15[0] = v3;
  v16 = sub_100058CA4(v6);
  v17 = v7;
  v18 = v4;
  v19 = v2;
  v20 = v5;
  v22 = @"Unknown";
  *&v23 = @"Unknown";
  *(&v23 + 1) = @"Unknown";
  if (*(a1 + 2608))
  {
    v22 = *(a1 + 2608);
    v23 = *(a1 + 2616);
  }

  sub_100056E3C(v15);
}

void sub_100090654(uint64_t a1, void *a2)
{
  v4 = sub_1000A4FF8(a1);
  if (v4 != 5)
  {
    if (v4)
    {
      return;
    }

    v5 = sub_1000A5008(a1);
    if (v5 & 0xFFFFFFFE) == 2 && (byte_1002985C0)
    {
      v6 = &dword_1002985A4;
    }

    else
    {
      if (v5 != 1)
      {
LABEL_11:
        byte_1002985C0 = 0;
        v8 = sub_1000A5008(a1);
        if (v8 == 2)
        {
          a2[106] = 1;
        }

        else if (v8 == 1)
        {
          if (sub_10009A8E0(a1))
          {
            sub_100172E10();
          }

          else
          {
            v9 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:"Received Ask to join response accepted but network object is NULL"];
            }

            objc_autoreleasePoolPop(v9);
          }
        }

        v10 = a2[24];
        if (v10)
        {
          CFRelease(v10);
          a2[24] = 0;
        }

        return;
      }

      v6 = &dword_1002985A8;
    }

    ++*v6;
    goto LABEL_11;
  }

  if (sub_1000A5008(a1) == 2)
  {
    v7 = a2[4];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100169F24;
    block[3] = &unk_10025EAD8;
    block[4] = a2;
    dispatch_async(v7, block);
  }
}

uint64_t sub_1000907C0(uint64_t a1, uint64_t a2)
{
  result = sub_100059770(a1, *(a2 + 8));
  if (!result)
  {
    *a2 = 0;
  }

  return result;
}

void sub_1000907F0(CFTypeRef cf, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (!*(a2 + 24) || (v5 = sub_100029EA4(cf), LODWORD(valuePtr[0]) = -1431655766, CFNumberGetValue(*(a2 + 24), kCFNumberIntType, valuePtr), LODWORD(valuePtr[0]) != v5))
  {
    if (*(v4 + 32))
    {
      valuePtr[0] = 0;
      valuePtr[1] = valuePtr;
      valuePtr[2] = 0x2020000000;
      valuePtr[3] = CFRetain(cf);
      v11[0] = 0;
      v11[1] = v11;
      v11[2] = 0x2020000000;
      v11[3] = CFRetain(*(a2 + 32));
      v10[0] = 0;
      v10[1] = v10;
      v10[2] = 0x2020000000;
      v10[3] = CFRetain(*(a2 + 8));
      v9[0] = 0;
      v9[1] = v9;
      v9[2] = 0x2020000000;
      v9[3] = CFRetain(*(a2 + 16));
      v6 = *(v4 + 32);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100090A04;
      block[3] = &unk_100260B10;
      block[4] = valuePtr;
      block[5] = v11;
      block[6] = v10;
      block[7] = v9;
      dispatch_async(v6, block);
      _Block_object_dispose(v9, 8);
      _Block_object_dispose(v10, 8);
      _Block_object_dispose(v11, 8);
      _Block_object_dispose(valuePtr, 8);
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: queue not yet setup. Invoking callback directly.", "__WiFiManagerDispatchScanCacheUpdateEvent"}];
      }

      objc_autoreleasePoolPop(v7);
      sub_100059FF4(cf, *(a2 + 32), *(a2 + 8), *(a2 + 16));
    }
  }
}

void sub_1000909C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100090A04(void *a1)
{
  sub_100059FF4(*(*(a1[4] + 8) + 24), *(*(a1[5] + 8) + 24), *(*(a1[6] + 8) + 24), *(*(a1[7] + 8) + 24));
  v2 = *(*(a1[4] + 8) + 24);
  if (v2)
  {
    CFRelease(v2);
    *(*(a1[4] + 8) + 24) = 0;
  }

  v3 = *(*(a1[5] + 8) + 24);
  if (v3)
  {
    CFRelease(v3);
    *(*(a1[5] + 8) + 24) = 0;
  }

  v4 = *(*(a1[6] + 8) + 24);
  if (v4)
  {
    CFRelease(v4);
    *(*(a1[6] + 8) + 24) = 0;
  }

  v5 = *(*(a1[7] + 8) + 24);
  if (v5)
  {
    CFRelease(v5);
    *(*(a1[7] + 8) + 24) = 0;
  }
}

void sub_100090AE4(uint64_t a1, uint64_t a2)
{
  if (a2 && *a2)
  {
    if (*(a2 + 8))
    {
      sub_10005A0FC(a1, *(a2 + 8), *(a2 + 16));
    }
  }
}

void sub_100090B08(uint64_t a1, uint64_t a2)
{
  if (a2 && *a2)
  {
    if (*(a2 + 8))
    {
      sub_10005A108(a1, *(a2 + 8), *(a2 + 16));
    }
  }
}

void sub_100090B2C(uint64_t a1, uint64_t a2)
{
  if (a2 && *a2 && *(a2 + 8))
  {
    v3 = *(a2 + 16);
    v4 = *(a2 + 8);

    sub_10005A1F8(a1, v4, v3);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Invalid arguments", "__WiFiManagerDispatchCarPlayNetworkTypeChangeEvent"}];
    }

    objc_autoreleasePoolPop(v5);
  }
}

void sub_100090BC4(uint64_t a1, uint64_t a2)
{
  if (a2 && *a2 && *(a2 + 8))
  {
    v3 = *(a2 + 16);
    v4 = *(a2 + 8);

    sub_10005A144(a1, v4, v3);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Invalid arguments", "__WiFiManagerDispatchM1M4Handshake24GHzCountEvent"}];
    }

    objc_autoreleasePoolPop(v5);
  }
}

void sub_100090C5C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*a2)
    {
      sub_10005A2AC(a1, *a2, *(a2 + 8));
    }
  }
}

void sub_100090C78(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*a2)
    {
      sub_10005A364(a1, *a2, *(a2 + 8));
    }
  }
}

id sub_100090C94(uint64_t a1)
{
  [*(*(a1 + 40) + 1856) incrementCount];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 1856);

  return [v3 updateHUDWithMessage:v2];
}

void sub_100090CF0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      Value = CFDictionaryGetValue(*(a2 + 16), @"WiFiHostApStateIdentifier");
      if (!Value || !CFEqual(Value, kCFBooleanTrue))
      {
        v6 = CFDictionaryGetValue(v4, @"LINK_CHANGED_IS_LINKDOWN");
        if (v6)
        {
          if (CFEqual(v6, kCFBooleanTrue))
          {
            v7 = sub_100059668(a1);
            if (v7)
            {
              v8 = v7;
              if (CFArrayGetCount(v7) >= 1)
              {
                v9 = 0;
                while (1)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v8, v9);
                  if (ValueAtIndex)
                  {
                    if (sub_100034EEC(ValueAtIndex, @"networkRole") == 4)
                    {
                      break;
                    }
                  }

                  if (++v9 >= CFArrayGetCount(v8))
                  {
                    goto LABEL_17;
                  }
                }

                MutableCopy = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, v8);
                if (MutableCopy)
                {
                  v12 = MutableCopy;
                  CFArrayRemoveValueAtIndex(MutableCopy, v9);
                  sub_1000596F0(a1, v12);
                  CFRelease(v12);
                }

                else
                {
                  sub_1000596F0(a1, 0);
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_17:
  v13 = *a2;
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);

  sub_10014B1AC(a1, v13, v14, v15);
}

void sub_100090E58(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*a2)
    {
      sub_10005A2B8(a1, *a2, *(a2 + 8));
    }
  }
}

void sub_100090E74(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*a2)
    {
      sub_10005A340(a1, *a2, *(a2 + 8));
    }
  }
}

void sub_100090E90(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*a2)
    {
      sub_10005A34C(a1, *a2, *(a2 + 8));
    }
  }
}

void sub_100090EC4(uint64_t a1, void *a2)
{
  if (a2 && *a2 && a2[1])
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: p2pThreadCoexEvent client :%p", "__WiFiManagerDispatchP2pThreadCoexEvent", a1}];
    }

    objc_autoreleasePoolPop(v4);
    v5 = a2[1];
    v6 = a2[2];

    sub_10005A370(a1, v5, v6);
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Invalid arguments", "__WiFiManagerDispatchP2pThreadCoexEvent"}];
    }

    objc_autoreleasePoolPop(v7);
  }
}

id sub_100090FC0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isMemberOfClass:objc_opt_class()];
  if (a2 && result)
  {
    result = [objc_msgSend(a2 "name")];
    if (result)
    {
      *(*(*(a1 + 32) + 8) + 24) = a3;
      *a4 = 1;
    }
  }

  return result;
}

id sub_10009103C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isMemberOfClass:objc_opt_class()];
  if (a2 && result)
  {
    result = [objc_msgSend(a2 "name")];
    if (result)
    {
      *(*(*(a1 + 40) + 8) + 24) = a3;
      *a4 = 1;
    }
  }

  return result;
}

void sub_1000910B8(uint64_t a1)
{
  if (*(*(a1 + 32) + 32))
  {
    v13 = 0;
    v14 = 0;
    v11 = 0;
    v12 = 0;
    v10 = kCTRegistrationStatusUnknown;
    v9 = 0;
    v8 = 0;
    [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor ctServerConnection];
    _CTServerConnectionGetCellularDataSettings();
    [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor ctServerConnection];
    _CTServerConnectionCopyDataStatus();
    [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor ctServerConnection];
    _CTServerConnectionGetRegistrationStatus();
    [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor ctServerConnection];
    _CTServerConnectionCopyProviderNameUsingCarrierBundle();
    [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor ctServerConnection];
    _CTServerConnectionGetRadioAccessTechnology();
    v2 = *(a1 + 32);
    if (*(v2 + 136) == 1)
    {
      [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor ctServerConnection];
      _CTServerConnectionCopyPacketContextInterfaceNameByServiceType();
      v2 = *(a1 + 32);
      v3 = v12;
    }

    else
    {
      v3 = 0;
    }

    v4 = *(v2 + 32);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10009126C;
    v5[3] = &unk_100260BE8;
    v6 = v8;
    v7 = v9;
    v5[4] = v3;
    v5[5] = v2;
    v5[6] = v11;
    v5[7] = v14;
    v5[8] = v10;
    v5[9] = v13;
    dispatch_sync(v4, v5);
    if (v14)
    {
      CFRelease(v14);
      v14 = 0;
    }

    if (v13)
    {
      CFRelease(v13);
      v13 = 0;
    }

    if (v12)
    {
      CFRelease(v12);
    }
  }
}

void sub_10009126C(uint64_t a1)
{
  if (*(a1 + 80))
  {
    if (*(a1 + 81))
    {
      v2 = *(a1 + 82) != 0;
    }

    else
    {
      v2 = 1;
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    if (*(*(a1 + 40) + 1320))
    {
      CFRelease(*(*(a1 + 40) + 1320));
      *(*(a1 + 40) + 1320) = 0;
      v3 = *(a1 + 32);
    }

    *(*(a1 + 40) + 1320) = CFRetain(v3);
    if (*(*(a1 + 40) + 1320))
    {
      [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor setCellularInterfaceName:"setCellularInterfaceName:", *(*(a1 + 40) + 1320)];
    }
  }

  if (CFStringCompare(*(a1 + 48), kCTRegistrationRadioAccessTechnologyNR, 0) == kCFCompareEqualTo)
  {
    v4 = *(a1 + 40);
    if (*(v4 + 1360) != 1)
    {
      *(v4 + 1360) = 1;
      context = v4;
      v50 = 0xAAAAAAAA00000075;
      v51 = 0;
      v52 = 1;
      v53 = 0;
      CFSetApplyFunction(*(v4 + 112), sub_100003B88, &context);
    }
  }

  v5 = *(a1 + 56);
  if (!v5)
  {
    v8 = 1;
    v9 = 1;
    v10 = 1;
    goto LABEL_42;
  }

  Value = CFDictionaryGetValue(v5, kCTRegistrationDataIndicator);
  v7 = CFDictionaryGetValue(*(a1 + 56), kCTRegistrationDataStatus);
  if (!v7)
  {
    v8 = 1;
    if (!Value)
    {
      goto LABEL_23;
    }

LABEL_20:
    v11 = *(*(a1 + 40) + 1368);
    if (v11)
    {
      CFRelease(v11);
      *(*(a1 + 40) + 1368) = 0;
    }

    *(*(a1 + 40) + 1368) = CFStringCreateCopy(kCFAllocatorDefault, Value);
    goto LABEL_23;
  }

  v8 = CFEqual(v7, kCTRegistrationDataStatusAttachedAndActive) == 0;
  if (Value)
  {
    goto LABEL_20;
  }

LABEL_23:
  if (CFStringCompare(Value, kCTRegistrationDataIndicatorNone, 0) && CFStringCompare(Value, kCTRegistrationDataIndicator2G, 0) && CFStringCompare(Value, kCTRegistrationDataIndicator2_5G, 0))
  {
    v12 = 0;
    v13 = 1;
    v14 = "High bw cellular data available, so WiFi would disconnect under low signal quality";
  }

  else
  {
    v13 = 0;
    v12 = 1;
    v14 = "Low bw cellular data available, so WiFi would stay connected under low signal quality";
  }

  if (CFStringCompare(Value, kCTRegistrationDataIndicator3G, 0) == kCFCompareEqualTo || CFStringCompare(Value, kCTRegistrationDataIndicator3_5G, 0) == kCFCompareEqualTo || CFStringCompare(Value, kCTRegistrationDataIndicator3_75G, 0) == kCFCompareEqualTo)
  {
    v13 = 0;
  }

  v9 = CFStringCompare(Value, kCTRegistrationDataIndicator5G, 0) && CFStringCompare(Value, kCTRegistrationDataIndicator5G_Plus, 0) && CFStringCompare(Value, kCTRegistrationDataIndicator5G_Uwb, 0);
  v15 = *(a1 + 40);
  if (*(v15 + 1312) != v12)
  {
    v16 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:v14];
    }

    objc_autoreleasePoolPop(v16);
    v17 = *(a1 + 40);
    *(v17 + 1312) = v12;
    context = v17;
    v50 = 0xAAAAAAAA00000027;
    v51 = 0;
    v52 = 1;
    v53 = 0;
    CFSetApplyFunction(*(v17 + 112), sub_100003B88, &context);
    v15 = *(a1 + 40);
  }

  [*(v15 + 2656) setCellularDataStatus:*(v15 + 1368) inAirplaneMode:sub_100091D60() != 0];
  v10 = v13 == 0;
LABEL_42:
  v18 = *(a1 + 64);
  v19 = kCTRegistrationStatusRegisteredRoaming;
  if (v18 == kCTRegistrationStatusRegisteredRoaming)
  {
    v20 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: cellular in roaming mode.", "__WiFiManagerCellularDataRegistrationCallback_block_invoke_2"}];
    }

    objc_autoreleasePoolPop(v20);
  }

  v21 = *(a1 + 72);
  if (v21)
  {
    v22 = *(*(a1 + 40) + 1352);
    if (v22)
    {
      if (CFEqual(v22, v21))
      {
        goto LABEL_52;
      }

      v23 = *(*(a1 + 40) + 1352);
      if (v23)
      {
        CFRelease(v23);
        *(*(a1 + 40) + 1352) = 0;
      }
    }

    *(*(a1 + 40) + 1352) = CFRetain(*(a1 + 72));
    context = *(a1 + 40);
    v50 = 0xAAAAAAAA00000065;
    v51 = 0;
    v52 = 1;
    v53 = 0;
    CFSetApplyFunction(*(context + 112), sub_100003B88, &context);
  }

LABEL_52:
  v24 = *(*(a1 + 40) + 1344);
  if (v24)
  {
    v25 = CFSetContainsValue(v24, @"WiFiCellularDataStatusNoLTE");
    if (v10)
    {
      if (!v25)
      {
        v26 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: lost LTE status.", "__WiFiManagerCellularDataRegistrationCallback_block_invoke_2"}];
        }

        objc_autoreleasePoolPop(v26);
        CFSetAddValue(*(*(a1 + 40) + 1344), @"WiFiCellularDataStatusNoLTE");
        if (_os_feature_enabled_impl())
        {
          sub_1000084DC(*(a1 + 40));
        }

LABEL_77:
        v31 = 1;
        goto LABEL_79;
      }
    }

    else if (v25)
    {
      v30 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: gained LTE status.", "__WiFiManagerCellularDataRegistrationCallback_block_invoke_2"}];
      }

      objc_autoreleasePoolPop(v30);
      CFSetRemoveValue(*(*(a1 + 40) + 1344), @"WiFiCellularDataStatusNoLTE");
      goto LABEL_77;
    }

    v31 = 0;
LABEL_79:
    v32 = CFSetContainsValue(*(*(a1 + 40) + 1344), @"WiFiCellularDataStatus5GAvailable");
    if (v9)
    {
      if (!v32)
      {
        goto LABEL_89;
      }

      v33 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: lost Cellular 5G status.", "__WiFiManagerCellularDataRegistrationCallback_block_invoke_2"}];
      }

      objc_autoreleasePoolPop(v33);
      CFSetRemoveValue(*(*(a1 + 40) + 1344), @"WiFiCellularDataStatus5GAvailable");
    }

    else
    {
      if (v32)
      {
        goto LABEL_89;
      }

      v34 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: gained Cellular 5G status.", "__WiFiManagerCellularDataRegistrationCallback_block_invoke_2"}];
      }

      objc_autoreleasePoolPop(v34);
      CFSetAddValue(*(*(a1 + 40) + 1344), @"WiFiCellularDataStatus5GAvailable");
    }

    v31 = 1;
LABEL_89:
    v35 = CFSetContainsValue(*(*(a1 + 40) + 1344), @"WiFiCellularDataStatusRoaming");
    if (v18 == v19)
    {
      if (v35)
      {
        goto LABEL_99;
      }

      v37 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: gained roaming status.", "__WiFiManagerCellularDataRegistrationCallback_block_invoke_2"}];
      }

      objc_autoreleasePoolPop(v37);
      CFSetAddValue(*(*(a1 + 40) + 1344), @"WiFiCellularDataStatusRoaming");
    }

    else
    {
      if (!v35)
      {
        goto LABEL_99;
      }

      v36 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: lost roaming status.", "__WiFiManagerCellularDataRegistrationCallback_block_invoke_2"}];
      }

      objc_autoreleasePoolPop(v36);
      CFSetRemoveValue(*(*(a1 + 40) + 1344), @"WiFiCellularDataStatusRoaming");
    }

    v31 = 1;
LABEL_99:
    v38 = CFSetContainsValue(*(*(a1 + 40) + 1344), @"WiFiCellularDataStatusDisabledByUser");
    if (v2)
    {
      if (!v38)
      {
        v39 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: gained cellular data disabled by user status.", "__WiFiManagerCellularDataRegistrationCallback_block_invoke_2"}];
        }

        objc_autoreleasePoolPop(v39);
        CFSetAddValue(*(*(a1 + 40) + 1344), @"WiFiCellularDataStatusDisabledByUser");
LABEL_108:
        v31 = 1;
      }
    }

    else if (v38)
    {
      v40 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: lost cellular data disabled by user status.", "__WiFiManagerCellularDataRegistrationCallback_block_invoke_2"}];
      }

      objc_autoreleasePoolPop(v40);
      CFSetRemoveValue(*(*(a1 + 40) + 1344), @"WiFiCellularDataStatusDisabledByUser");
      goto LABEL_108;
    }

    v41 = CFSetContainsValue(*(*(a1 + 40) + 1344), @"WiFiCellularDataStatusAttachedAndActive");
    if (v8)
    {
      if (v41)
      {
        v42 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: lost cellular data attached and active status.", "__WiFiManagerCellularDataRegistrationCallback_block_invoke_2"}];
        }

        objc_autoreleasePoolPop(v42);
        CFSetRemoveValue(*(*(a1 + 40) + 1344), @"WiFiCellularDataStatusAttachedAndActive");
        goto LABEL_128;
      }

LABEL_115:
      if (!v31)
      {
        return;
      }

      goto LABEL_128;
    }

    if (v41)
    {
      goto LABEL_115;
    }

    v46 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: gained cellular data attached and active status.", "__WiFiManagerCellularDataRegistrationCallback_block_invoke_2"}];
    }

    objc_autoreleasePoolPop(v46);
    v45 = *(*(a1 + 40) + 1344);
    goto LABEL_127;
  }

  *(*(a1 + 40) + 1344) = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  if (v10)
  {
    v27 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Initialized with No LTE status.", "__WiFiManagerCellularDataRegistrationCallback_block_invoke_2"}];
    }

    objc_autoreleasePoolPop(v27);
    CFSetAddValue(*(*(a1 + 40) + 1344), @"WiFiCellularDataStatusNoLTE");
  }

  if (!v9)
  {
    v28 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Initialized with 5G status.", "__WiFiManagerCellularDataRegistrationCallback_block_invoke_2"}];
    }

    objc_autoreleasePoolPop(v28);
    CFSetAddValue(*(*(a1 + 40) + 1344), @"WiFiCellularDataStatus5GAvailable");
  }

  if (v18 == v19)
  {
    v43 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Initialized with roaming status.", "__WiFiManagerCellularDataRegistrationCallback_block_invoke_2"}];
    }

    objc_autoreleasePoolPop(v43);
    CFSetAddValue(*(*(a1 + 40) + 1344), @"WiFiCellularDataStatusRoaming");
    if (v2)
    {
LABEL_69:
      v29 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Initialized with cellular data disabled by user.", "__WiFiManagerCellularDataRegistrationCallback_block_invoke_2"}];
      }

      objc_autoreleasePoolPop(v29);
      CFSetAddValue(*(*(a1 + 40) + 1344), @"WiFiCellularDataStatusDisabledByUser");
      if (v8)
      {
        goto LABEL_128;
      }

      goto LABEL_121;
    }
  }

  else if (v2)
  {
    goto LABEL_69;
  }

  if (!v8)
  {
LABEL_121:
    v44 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Initialized with cellular data attached and active.", "__WiFiManagerCellularDataRegistrationCallback_block_invoke_2"}];
    }

    objc_autoreleasePoolPop(v44);
    v45 = *(*(a1 + 40) + 1344);
LABEL_127:
    CFSetAddValue(v45, @"WiFiCellularDataStatusAttachedAndActive");
  }

LABEL_128:
  v47 = !v9 || !v10;
  if (!*(a1 + 56))
  {
    v47 = 0;
  }

  v48 = v47;
  [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor setCellularDataStatusMap:"setCellularDataStatusMap:", *(*(a1 + 40) + 1344)];
  context = *(a1 + 40);
  v50 = 0xAAAAAAAA0000008ALL;
  v51 = &v48;
  v52 = 1;
  v53 = 0;
  CFSetApplyFunction(*(context + 112), sub_100003B88, &context);
}

uint64_t sub_100091D60()
{
  v0 = CFPreferencesCopyAppValue(@"AirplaneModeEnabled", @"com.apple.preferences.network");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 == CFBooleanGetTypeID())
  {
    v3 = CFEqual(v1, kCFBooleanTrue);
  }

  else
  {
    v3 = 0;
  }

  CFRelease(v1);
  return v3;
}

void sub_100091DE0(id a1, char *a2, void *a3)
{
  v3 = *a2;
  v4 = *(a2 + 1);
  v5 = *(a2 + 3);
  *(a3 + 1983) = *(a2 + 2);
  *(a3 + 1999) = v5;
  *(a3 + 1951) = v3;
  *(a3 + 1967) = v4;
  v6 = *(a2 + 4);
  v7 = *(a2 + 5);
  v8 = *(a2 + 7);
  *(a3 + 2047) = *(a2 + 6);
  *(a3 + 2063) = v8;
  *(a3 + 2015) = v6;
  *(a3 + 2031) = v7;
}

void sub_100091E08(void *a1, int a2)
{
  v4 = sub_100018E90(a1, @"LoggingFileEnabled", byte_100298C38);
  if (v4)
  {
    v5 = kCFBooleanTrue;
  }

  else
  {
    v5 = kCFBooleanFalse;
  }

  sub_10007393C(a1, @"LoggingFileEnabled", v5, a2);
  v6 = sub_100018E90(a1, @"LoggingFileClassC", byte_100298C39);
  if (v6)
  {
    v7 = kCFBooleanTrue;
  }

  else
  {
    v7 = kCFBooleanFalse;
  }

  sub_10007393C(a1, @"LoggingFileClassC", v7, a2);
  v8[0] = sub_10001769C(a1, @"LoggingLoggerFile");
  v8[1] = sub_10001769C(a1, @"LoggingLoggerSize");
  v8[2] = sub_10001769C(a1, @"LoggingLoggerLevel");
  v8[3] = sub_10001769C(a1, @"LoggingLoggerLifeSpan");
  v8[4] = sub_10001769C(a1, @"LoggingLoggerPrivacy");
  sub_10006B9BC(a1, v4, v6, v8);
}

CFStringRef sub_100091F6C(int a1)
{
  result = 0;
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        return result;
      }

      v3 = &kSCValNetAirPortJoinModePreferred;
    }

    else
    {
      v3 = &kSCValNetAirPortJoinModeAutomatic;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v3 = &kSCValNetAirPortJoinModeRecent;
        break;
      case 3:
        v3 = &kSCValNetAirPortJoinModeStrongest;
        break;
      case 4:
        v3 = &kSCValNetAirPortJoinModeRanked;
        break;
      default:
        return result;
    }
  }

  return *v3;
}

uint64_t sub_100091FE0(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: setting airplane mode stickiness preference to %d", "__WiFiManagerSetAirplaneModeStickinessUserPreference", a2}];
  }

  objc_autoreleasePoolPop(v4);
  v5 = &kCFBooleanTrue;
  if (!a2)
  {
    v5 = &kCFBooleanFalse;
  }

  v6 = *v5;

  return sub_10007393C(a1, @"KeepWiFiPoweredAirplaneMode", v6, 0);
}

void sub_100092094(uint64_t a1, uint64_t a2)
{
  if (a2 && *a2 && *(a2 + 8))
  {
    v3 = *(a2 + 16);
    v4 = *(a2 + 8);

    sub_10005A120(a1, v4, v3);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Invalid arguments", "__WiFiManagerDispatch24GHzNetworkInCriticalStateEvent"}];
    }

    objc_autoreleasePoolPop(v5);
  }
}

void sub_10009212C(int a1, int a2, int a3, int a4, uint64_t a5, NSObject **cf)
{
  if (a5)
  {
    sub_100173350(a5);
  }

  else if (cf)
  {
    v10 = CFGetTypeID(cf);
    v11 = qword_100298570;
    if (!qword_100298570)
    {
      pthread_once(&stru_100297890, sub_10006F794);
      v11 = qword_100298570;
    }

    if (v10 == v11)
    {
      v12 = cf[4];
      if (v12)
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000925B0;
        block[3] = &unk_10025EEE8;
        v14 = a3;
        v15 = a4;
        block[4] = cf;
        v16 = a2;
        v17 = 0;
        dispatch_async(v12, block);
      }

      else
      {
        sub_10017342C();
      }
    }

    else
    {
      sub_1001733C0();
    }
  }

  else
  {
    sub_100173498();
  }
}

void sub_10009223C(int a1, int a2, uint64_t a3, NSObject **cf)
{
  if (a3)
  {
    sub_100173504(a3);
    return;
  }

  if (!cf)
  {
    sub_10017364C();
    return;
  }

  v6 = CFGetTypeID(cf);
  v7 = qword_100298570;
  if (!qword_100298570)
  {
    pthread_once(&stru_100297890, sub_10006F794);
    v7 = qword_100298570;
  }

  if (v6 != v7)
  {
    sub_100173574();
    return;
  }

  v8 = cf[4];
  if (!v8)
  {
    sub_1001735E0();
    return;
  }

  if (a2)
  {
    if (a2 == 7)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10009271C;
      v16[3] = &unk_10025EAD8;
      v16[4] = cf;
      v9 = v16;
    }

    else
    {
      if (a2 != 6)
      {
        return;
      }

      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000926A8;
      v17[3] = &unk_10025EAD8;
      v17[4] = cf;
      v9 = v17;
    }

    goto LABEL_17;
  }

  v15 = -1431655766;
  Power = BTLocalDeviceGetPower();
  if (!Power)
  {
    v8 = cf[4];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100092790;
    block[3] = &unk_100260C48;
    block[4] = cf;
    v14 = v15;
    v9 = block;
LABEL_17:
    dispatch_async(v8, v9);
    return;
  }

  v11 = Power;
  v12 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"Failed to obtain Bluetooth Local Device power state.  result=0x%X", v11}];
  }

  objc_autoreleasePoolPop(v12);
}

void *sub_100092454(void *result)
{
  *(result[4] + 1024) = result[5];
  *(result[4] + 1032) = result[6];
  *(result[4] + 1044) = 0;
  return result;
}

void sub_100092474(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v2 + 1044) = 0;
  sub_100092538(v2, 102, 0);
  *(*(a1 + 32) + 1024) = 0;
  *(*(a1 + 32) + 1032) = 0;
  if (*(a1 + 40) == 2)
  {
    v3 = *(a1 + 32);
    v4 = BTSessionAttachWithQueue();
    if (v4)
    {
      v5 = v4;
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"Unable to attach to Mobile Bluetooth result=0x%X", v5, sub_100078848}];
      }

      objc_autoreleasePoolPop(v6);
    }
  }
}

void sub_100092538(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 1052) != a2 || *(a1 + 1048) != a3)
  {
    context[5] = v3;
    context[6] = v4;
    *(a1 + 1052) = a2;
    *(a1 + 1048) = a3;
    context[0] = a1;
    context[1] = 0xAAAAAAAA0000000CLL;
    context[2] = 0;
    context[3] = 1;
    context[4] = 0;
    CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
  }
}

void sub_1000925B0(uint64_t a1)
{
  if (!*(a1 + 40))
  {
    v2 = *(a1 + 44);
    if (v2 == 11)
    {
      if (*(a1 + 52) && *(a1 + 48) != -1)
      {
        return;
      }

      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"Bluetooth Paging Stopped."];
      }

      objc_autoreleasePoolPop(v6);
      v4 = *(a1 + 32);
      v5 = *(v4 + 1044) & 0xFFFFFFF7;
    }

    else
    {
      if (v2 || *(a1 + 48) != -1)
      {
        return;
      }

      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"Bluetooth Paging Started."];
      }

      objc_autoreleasePoolPop(v3);
      v4 = *(a1 + 32);
      v5 = *(v4 + 1044) | 8;
    }

    *(v4 + 1044) = v5;

    sub_100092538(v4, 102, v5);
  }
}

void sub_1000926A8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"Bluetooth Inquiry Started."];
  }

  objc_autoreleasePoolPop(v2);
  v3 = *(a1 + 32);
  v4 = *(v3 + 1044) | 4;
  *(v3 + 1044) = v4;

  sub_100092538(v3, 102, v4);
}

void sub_10009271C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"Bluetooth Inquiry Stopped."];
  }

  objc_autoreleasePoolPop(v2);
  v3 = *(a1 + 32);
  v4 = *(v3 + 1044) & 0xFFFFFFFB;
  *(v3 + 1044) = v4;

  sub_100092538(v3, 102, v4);
}

void sub_1000927AC(uint64_t a1)
{
  v2 = *(a1 + 192);
  if (v2)
  {
    if (sub_1000A4FF8(v2) == 5)
    {
      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: pending notification is join recommendation stopping abort", "__WiFiManagerAbortNotifications"}];
      }

      objc_autoreleasePoolPop(v3);
    }

    else
    {
      sub_1000A5044(*(a1 + 192));
      v4 = *(a1 + 192);
      if (v4)
      {
        CFRelease(v4);
        *(a1 + 192) = 0;
      }
    }
  }
}

void sub_100092858(uint64_t a1, char a2)
{
  v3 = a2;
  v2[0] = a1;
  v2[1] = 0xAAAAAAAA0000005BLL;
  v2[3] = 0;
  v2[4] = 0;
  v2[2] = &v3;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, v2);
}

void sub_1000928CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[1376])
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Starting cloud sync engine after exceeding %ds waiting for auto-join attempt", "__WiFiManagerLockStateUpdate_block_invoke", 30}];
    }

    objc_autoreleasePoolPop(v3);
    v4 = *(a1 + 32);
    *(v4 + 1376) = 1;
    v5 = *(v4 + 1384);
    WiFiCloudSyncEngineScheduleWithQueue();
    CFRetain(*(*(a1 + 32) + 1384));
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000929CC;
    block[3] = &unk_10025EAD8;
    block[4] = *(a1 + 32);
    dispatch_async(qword_100298C58, block);
    v2 = *(a1 + 32);
  }

  CFRelease(v2);
}

void sub_1000929CC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1384);
  WiFiCloudSyncEngineCheckKeychainSyncState();
  v3 = *(*(a1 + 32) + 1384);

  CFRelease(v3);
}

void sub_100092A10(id a1, BOOL a2)
{
  if (a2)
  {
    v2 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s retrying to init deviceAnalyticsClient", "__WiFiManagerLockStateUpdate_block_invoke_3"}];
    }

    objc_autoreleasePoolPop(v2);
    v3 = +[WiFiAnalyticsManager sharedWiFiAnalyticsManager];

    [v3 deviceAnalyticsClient];
  }
}

void sub_100092A94(__CFDictionary *a1, CFDictionaryRef theDict)
{
  if (a1 && theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    v5 = 8 * Count;
    v6 = (8 * Count + 15) & 0xFFFFFFFFFFFFFFF0;
    v7 = (&values - v6);
    if ((__chkstk_darwin)())
    {
      v8 = memset(&values - v6, 170, v5);
      __chkstk_darwin(v8);
      v9 = (&values - v6);
      memset(v9, 170, v5);
      CFDictionaryGetKeysAndValues(theDict, v7, v9);
      if (Count >= 1)
      {
        do
        {
          if (!CFDictionaryContainsKey(a1, *v7))
          {
            CFDictionaryAddValue(a1, *v7, *v9);
          }

          ++v9;
          ++v7;
          --Count;
        }

        while (Count);
      }
    }

    else
    {
      CFDictionaryGetKeysAndValues(theDict, (&values - v6), &values);
    }
  }
}

void sub_100092BF4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = sub_10008925C(*(a1 + 40));
    if (v4)
    {
      v26 = v2;
      v25 = v4;
      v24 = [[NSMutableDictionary alloc] initWithDictionary:v4];
      v5 = [[NSMutableDictionary alloc] initWithDictionary:{objc_msgSend(v24, "objectForKey:")}];
      v6 = [v5 allKeys];
      if ([v6 count])
      {
        v7 = 0;
        v31 = kDeviceMACAddressKey;
        v35 = kDeviceRapportEffectiveIdentifierKey;
        v30 = kDeviceNameKey;
        v29 = kDeviceProductMarketingNameKey;
        v28 = kDeviceProductColorKey;
        v27 = kDeviceProductTypeKey;
        v32 = v6;
        v33 = v5;
        do
        {
          v34 = [v6 objectAtIndexedSubscript:v7];
          v8 = [v5 objectForKeyedSubscript:?];
          v9 = [v8 mutableCopy];
          v10 = [v8 objectForKeyedSubscript:@"DataUsageMACAddresses"];
          v11 = [v8 objectForKeyedSubscript:@"DataUsageRapportPeerID"];
          v12 = [v3 objectForKeyedSubscript:v31];
          v13 = [v12 lowercaseString];
          v14 = [v12 uppercaseString];
          v15 = [v12 unpaddedMACAddress];
          v16 = [v3 objectForKeyedSubscript:v35];
          if (([v10 containsObject:v13] & 1) != 0 || (objc_msgSend(v10, "containsObject:", v14) & 1) != 0 || (objc_msgSend(v10, "containsObject:", v15) & 1) != 0 || objc_msgSend(v11, "isEqualToString:", v16))
          {
            v17 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s:Found existing device matching deviceMACAddress %@. Adding to PHClients now...", "__WiFiManagerHandleDeviceDiscovered_block_invoke", v12}];
            }

            objc_autoreleasePoolPop(v17);
            [v9 setObject:objc_msgSend(v3 forKeyedSubscript:{"objectForKeyedSubscript:", v35), @"DataUsageRapportPeerID"}];
            [v9 setObject:objc_msgSend(v3 forKeyedSubscript:{"objectForKeyedSubscript:", v30), @"DataUsageInterfacePeerDisplayName"}];
            [v9 setObject:objc_msgSend(v3 forKeyedSubscript:{"objectForKeyedSubscript:", v29), @"DataUsageProductMarketingName"}];
            [v9 setObject:objc_msgSend(v3 forKeyedSubscript:{"objectForKeyedSubscript:", v28), @"DataUsageProductColor"}];
            [v9 setObject:objc_msgSend(v3 forKeyedSubscript:{"objectForKeyedSubscript:", v27), @"DataUsageProductType"}];
            if (([v10 containsObject:v12] & 1) == 0)
            {
              v18 = [[NSMutableArray alloc] initWithArray:v10];
              if ([v18 count] >= 3)
              {
                [v18 removeObjectAtIndex:0];
              }

              [v18 addObject:v12];
              v19 = [v18 copy];
              [v9 setObject:v19 forKeyedSubscript:@"DataUsageMACAddresses"];
            }

            v20 = [v9 copy];
            v5 = v33;
            [v33 setObject:v20 forKeyedSubscript:v34];
          }

          else
          {
            v21 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"__WiFiManagerHandleDeviceDiscovered_block_invoke", v12, v3}];
            }

            objc_autoreleasePoolPop(v21);
            v5 = v33;
          }

          ++v7;
          v6 = v32;
        }

        while (v7 < [v32 count]);
      }

      v22 = [v5 copy];
      [v24 setObject:v22 forKeyedSubscript:@"PHClients"];
      v23 = [v24 copy];
      [+[NSUserDefaults standardUserDefaults](NSUserDefaults setObject:"setObject:forKey:" forKey:v23, @"InterfaceDataUsageV1"];

      v2 = v26;
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100093068(uint64_t a1, uint64_t a2)
{
  v2 = *(qword_100298598 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10016A400;
  v3[3] = &unk_10025EE08;
  v3[4] = a2;
  v3[5] = qword_100298598;
  dispatch_async(v2, v3);
}

void sub_1000930E0(void *a1, const void *a2)
{
  if (a1)
  {
    v4 = sub_10000A878(a2);
    v5 = [v4 stringByAppendingString:sub_1000A1D68(a2)];
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_new();
    [v7 setObject:+[NSDate date](NSDate forKeyedSubscript:{"date"), @"timestamp"}];
    [v7 setObject:sub_1000A1D68(a2) forKeyedSubscript:@"bundleID"];
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Add item:%@ at sessionKey:%@", "__WiFiManagerAddSessionBasedNetwork", v7, v5}];
    }

    objc_autoreleasePoolPop(v8);
    v9 = a1[214];
    if (v9)
    {
      v10 = [v9 mutableCopy];
    }

    else
    {
      v10 = objc_opt_new();
    }

    v11 = v10;
    [v11 setObject:v7 forKeyedSubscript:v5];
    sub_10007393C(a1, @"SessionBasedNetworkList", v11, 0);
    sub_100087A6C(a1, v11);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: manager ref is null", "__WiFiManagerAddSessionBasedNetwork"}];
    }
  }

  objc_autoreleasePoolPop(v6);
}

void sub_100093284()
{
  if (qword_100298598)
  {
    v0 = *(qword_100298598 + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10016A74C;
    block[3] = &unk_10025EAD8;
    block[4] = qword_100298598;
    dispatch_async(v0, block);
  }

  else
  {
    v1 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: unable to get manager", "__WiFiManagerForcedAssociationFailureUserNotificationCallback"}];
    }

    objc_autoreleasePoolPop(v1);
  }
}

void sub_100093360(uint64_t a1)
{
  if (*(a1 + 32))
  {
    CNForgetSSID();
    v2 = *(a1 + 32);

    CFRelease(v2);
  }
}

void sub_1000933AC(uint64_t a1, CFMutableStringRef theString)
{
  if (a1)
  {
    CFStringAppend(theString, @" Pwr");
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 0x800000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  CFStringAppend(theString, @" Lnk");
  if ((a1 & 0x800000) == 0)
  {
LABEL_4:
    if ((a1 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_35:
  CFStringAppend(theString, @" AuJo");
  if ((a1 & 4) == 0)
  {
LABEL_5:
    if ((a1 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_36:
  CFStringAppend(theString, @" Att");
  if ((a1 & 8) == 0)
  {
LABEL_6:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_38;
  }

LABEL_37:
  CFStringAppend(theString, @" Rmv");
  if ((a1 & 0x10) == 0)
  {
LABEL_7:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_39;
  }

LABEL_38:
  CFStringAppend(theString, @" Prf");
  if ((a1 & 0x20) == 0)
  {
LABEL_8:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

LABEL_39:
  CFStringAppend(theString, @" Not");
  if ((a1 & 0x40) == 0)
  {
LABEL_9:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_41;
  }

LABEL_40:
  CFStringAppend(theString, @" ScCu");
  if ((a1 & 0x80) == 0)
  {
LABEL_10:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_42;
  }

LABEL_41:
  CFStringAppend(theString, @" ScUpFu");
  if ((a1 & 0x100) == 0)
  {
LABEL_11:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_43;
  }

LABEL_42:
  CFStringAppend(theString, @" ScUpTr");
  if ((a1 & 0x400) == 0)
  {
LABEL_12:
    if ((a1 & 0x8000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_44;
  }

LABEL_43:
  CFStringAppend(theString, @" Bss");
  if ((a1 & 0x8000) == 0)
  {
LABEL_13:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_45;
  }

LABEL_44:
  CFStringAppend(theString, @" DiagSta");
  if ((a1 & 0x800) == 0)
  {
LABEL_14:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_46;
  }

LABEL_45:
  CFStringAppend(theString, @" ResSc");
  if ((a1 & 0x1000) == 0)
  {
LABEL_15:
    if ((a1 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_47;
  }

LABEL_46:
  CFStringAppend(theString, @" bgS");
  if ((a1 & 0x2000) == 0)
  {
LABEL_16:
    if ((a1 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_48;
  }

LABEL_47:
  CFStringAppend(theString, @" WowEn");
  if ((a1 & 0x4000) == 0)
  {
LABEL_17:
    if ((a1 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_49;
  }

LABEL_48:
  CFStringAppend(theString, @" LQM");
  if ((a1 & 0x80000000) == 0)
  {
LABEL_18:
    if ((a1 & 0x40000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_49:
  CFStringAppend(theString, @" WeightAvgLQM");
  if ((a1 & 0x40000000000) == 0)
  {
LABEL_19:
    if ((a1 & 0x80000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_51;
  }

LABEL_50:
  CFStringAppend(theString, @" BTCoexStats");
  if ((a1 & 0x80000000000) == 0)
  {
LABEL_20:
    if ((a1 & 0x200000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

LABEL_51:
  CFStringAppend(theString, @" BSPEvent");
  if ((a1 & 0x200000000000) == 0)
  {
LABEL_21:
    if ((a1 & 0x1000000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_53;
  }

LABEL_52:
  CFStringAppend(theString, @" UCMEvent");
  if ((a1 & 0x1000000000) == 0)
  {
LABEL_22:
    if ((a1 & 0x10000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_54;
  }

LABEL_53:
  CFStringAppend(theString, @" AsrSession");
  if ((a1 & 0x10000000000) == 0)
  {
LABEL_23:
    if ((a1 & 0x800000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_55;
  }

LABEL_54:
  CFStringAppend(theString, @" CatsStateChange");
  if ((a1 & 0x800000000) == 0)
  {
LABEL_24:
    if ((a1 & 0x4000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_56;
  }

LABEL_55:
  CFStringAppend(theString, @" BTScanIntervalRelax");
  if ((a1 & 0x4000000000) == 0)
  {
LABEL_25:
    if ((a1 & 0x8000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_57;
  }

LABEL_56:
  CFStringAppend(theString, @" 24GHzNetworkStateChange");
  if ((a1 & 0x8000000000) == 0)
  {
LABEL_26:
    if ((a1 & 0x2000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_58;
  }

LABEL_57:
  CFStringAppend(theString, @" M1M4Handshake24GHzCount");
  if ((a1 & 0x2000000000) == 0)
  {
LABEL_27:
    if ((a1 & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_59;
  }

LABEL_58:
  CFStringAppend(theString, @" CarPlayNetworkTypeChange");
  if ((a1 & 0x10000) == 0)
  {
LABEL_28:
    if ((a1 & 0x20000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_60;
  }

LABEL_59:
  CFStringAppend(theString, @" Rst");
  if ((a1 & 0x20000) == 0)
  {
LABEL_29:
    if ((a1 & 0x40000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_61;
  }

LABEL_60:
  CFStringAppend(theString, @" VrtA");
  if ((a1 & 0x40000) == 0)
  {
LABEL_30:
    if ((a1 & 0x20000000000) == 0)
    {
      goto LABEL_31;
    }

LABEL_62:
    CFStringAppend(theString, @" P2pThreadCoexEvent");
    if ((a1 & 0x400000000000) == 0)
    {
      return;
    }

    goto LABEL_63;
  }

LABEL_61:
  CFStringAppend(theString, @" VrtR");
  if ((a1 & 0x20000000000) != 0)
  {
    goto LABEL_62;
  }

LABEL_31:
  if ((a1 & 0x400000000000) == 0)
  {
    return;
  }

LABEL_63:

  CFStringAppend(theString, @" TDConfirmed");
}

intptr_t sub_1000936CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s Device Analytics Store File:%@", "__WiFiManagerDeviceAnalyticsTestParamsAndCopyResponse_block_invoke", a2}];
    }

    objc_autoreleasePoolPop(v4);
    *(*(*(a1 + 40) + 8) + 24) = [[NSString alloc] initWithString:a2];
  }

  v5 = *(a1 + 32);

  return dispatch_semaphore_signal(v5);
}

intptr_t sub_100093774(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = [[NSDictionary alloc] initWithDictionary:a2];
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Updated configuration with %s", "__WiFiManagerDeviceAnalyticsTestParamsAndCopyResponse_block_invoke_2", -[NSString UTF8String](+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@", a2), "UTF8String")}];
    }

    objc_autoreleasePoolPop(v4);
  }

  v5 = *(a1 + 32);

  return dispatch_semaphore_signal(v5);
}

void sub_100093840(uint64_t a1, void *a2, void *a3)
{
  v6 = [a3 objectForKeyedSubscript:@"DiscoveryRequestedAt"];
  v7 = [*(*(a1 + 32) + 1304) containsObject:a2];
  if (v6)
  {
    v8 = v7;
    [+[NSDate date](NSDate timeIntervalSinceDate:"timeIntervalSinceDate:", v6];
    if (v9 >= 180.0)
    {
      v10 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Detected a stale MIS discovery enable request from client: %@ isAllowlisted:%u", "__WiFiManagerHandleStaleDiscoveryRequests_block_invoke", a2, v8}];
      }

      objc_autoreleasePoolPop(v10);
      if (v8)
      {
        v11 = [a3 objectForKeyedSubscript:@"BringUpMethod"];
        if (v11)
        {
          v12 = [v11 unsignedIntValue];
        }

        else
        {
          v12 = 0;
        }

        [*(*(a1 + 32) + 1296) removeObjectForKey:a2];
        v13 = *(a1 + 32);
        v15[0] = 0xAAAAAAAAAA00AA00;
        v15[1] = a2;
        BYTE1(v15[0]) = [a2 isEqualToString:@"sharingd"];
        context[0] = v13;
        context[1] = 0xAAAAAAAA00000022;
        context[2] = v15;
        context[3] = 1;
        context[4] = 0;
        CFSetApplyFunction(*(v13 + 112), sub_100003B88, context);
        sub_10007BCF4(*(a1 + 32), v12, 0, 0, 0);
      }
    }
  }
}

void sub_1000939C4(uint64_t a1)
{
  state64 = 0;
  notify_get_state(*(*(a1 + 32) + 1512), &state64);
  v2 = *(a1 + 32);
  *(v2 + 1520) = state64;
  v3 = *(v2 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100093A60;
  v4[3] = &unk_10025EAD8;
  v4[4] = v2;
  dispatch_async(v3, v4);
}

void sub_100093A60(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v3 = *(*(a1 + 32) + 1520);
    [off_100298C40 WFLog:3 message:{"%s: Device Orientation updated to %@", "__WiFiManagerSetupOrientationNotification_block_invoke_2", BSDeviceOrientationDescription()}];
  }

  objc_autoreleasePoolPop(v2);
  context[0] = *(a1 + 32);
  context[1] = 0xAAAAAAAA00000092;
  context[2] = 0;
  context[3] = 1;
  context[4] = 0;
  CFSetApplyFunction(*(context[0] + 112), sub_100003B88, context);
}

void sub_100093B2C(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if (*(v1 + 2176))
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: user auto join disabled location update received", "__WiFiManagerLocationManagerCallback_block_invoke"}];
    }

    objc_autoreleasePoolPop(v3);
    v4 = *v2;
    v5 = objc_autoreleasePoolPush();
    if (v4)
    {
      if (*(v4 + 2176))
      {
        if (sub_10000CDC4(v4))
        {
          sub_1001736B8();
        }

        else
        {
          v6 = [objc_msgSend(*(v4 + 224) "latestLocation")];
          v7 = [WiFiLocationManager isLocationValid:v6 uptoSeconds:1 isHighAccuracy:60.0];
          v8 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: location update %@ isValid %d", "__WiFiManagerUserAutoJoinDisabledLocationUpdate", v6, v7 != 0}];
          }

          objc_autoreleasePoolPop(v8);
          if (v7)
          {
            v9 = [NSKeyedArchiver archivedDataWithRootObject:v6];
            if (v9)
            {
              sub_10007393C(v4, @"UserAutoJoinDisabledLoc", v9, 0);
            }

            else
            {
              v11 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: failed to create archive of location", "__WiFiManagerUserAutoJoinDisabledLocationUpdate"}];
              }

              objc_autoreleasePoolPop(v11);
            }

            *(v4 + 273) = v6;
            *(v4 + 1088) = 0;
          }

          else
          {
            v10 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: location update is not high accuracy", "__WiFiManagerUserAutoJoinDisabledLocationUpdate"}];
            }

            objc_autoreleasePoolPop(v10);
            if (v6)
            {
              CFRelease(v6);
            }

            *(v4 + 2177) = 1;
          }
        }
      }

      else
      {
        sub_100173724();
      }
    }

    else
    {
      sub_100173790();
    }

    objc_autoreleasePoolPop(v5);
    v1 = *v2;
  }

  if (*(v1 + 1800))
  {
    sub_1001737FC(v1, v2);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: no network waiting to be tagged", "__WiFiManagerLocationManagerCallback_block_invoke"}];
    }

    objc_autoreleasePoolPop(v12);
  }
}

uint64_t sub_100093D98(uint64_t a1)
{
  result = sub_100119028(*(a1 + 32) + 1896, 1);
  *(*(a1 + 32) + 1904) = result;
  return result;
}

BOOL sub_100093DE0(const __SCNetworkSet *a1, const __CFArray *a2)
{
  v4 = SCNetworkSetCopyServices(a1);
  if (v4)
  {
    v5 = v4;
    if (CFArrayGetCount(v4) >= 1)
    {
      v6 = 0;
      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v7);
        if (ValueAtIndex)
        {
          v9 = ValueAtIndex;
          if (a2 && (v17.length = CFArrayGetCount(a2), v17.location = 0, CFArrayContainsValue(a2, v17, v9)))
          {
            v10 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: service ID %@ found in exclude list. Not removing it.", "__WiFiManagerRemoveMatchingServiceForSet", SCNetworkServiceGetServiceID(v9), v16}];
            }
          }

          else
          {
            Interface = SCNetworkServiceGetInterface(v9);
            if (!Interface)
            {
              goto LABEL_15;
            }

            InterfaceType = SCNetworkInterfaceGetInterfaceType(Interface);
            if (!InterfaceType || !CFEqual(InterfaceType, kSCNetworkInterfaceTypeIEEE80211))
            {
              goto LABEL_15;
            }

            v13 = SCNetworkServiceRemove(v9);
            v6 = (v6 | v13) != 0;
            v10 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: service removal status for set %@: %d", "__WiFiManagerRemoveMatchingServiceForSet", SCNetworkSetGetSetID(a1), v13}];
            }
          }

          objc_autoreleasePoolPop(v10);
        }

LABEL_15:
        if (++v7 >= CFArrayGetCount(v5))
        {
          goto LABEL_21;
        }
      }
    }

    v6 = 0;
LABEL_21:
    CFRelease(v5);
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: no services", "__WiFiManagerRemoveMatchingServiceForSet"}];
    }

    objc_autoreleasePoolPop(v14);
    return 0;
  }

  return v6;
}

uint64_t sub_100093FBC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: sc prefs clean up done !!", "__WiFiManagerRemoveSCNetworkSets_block_invoke"}];
  }

  objc_autoreleasePoolPop(v2);
  v3 = *(a1 + 32);

  return sub_10007D6E8(v3, @"IsOrphanedSCCleanUpRequired", kCFBooleanFalse);
}

void sub_10009404C(uint64_t a1)
{
  v2 = dispatch_group_create();
  v5 = a1 + 32;
  v3 = *(a1 + 32);
  v4 = *(v5 + 8);
  context = objc_autoreleasePoolPush();
  v34 = [v3 mutableCopy];
  v6 = [v34 objectForKeyedSubscript:@"PHClients"];
  global_queue = dispatch_get_global_queue(0, 0);
  if (!v6)
  {
    v28 = global_queue;
    v29 = v4;
    v9 = objc_alloc_init(NSMutableDictionary);
    if (v2)
    {
      dispatch_group_enter(v2);
    }

    group = v2;
    v33 = [v34 allKeys];
    if ([v33 count])
    {
      v10 = 0;
      do
      {
        v32 = v10;
        v35 = [v33 objectAtIndexedSubscript:?];
        v11 = [v34 objectForKey:v35];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v37 = [v11 mutableCopy];
          if (group)
          {
            dispatch_group_enter(group);
          }

          if ([v37 count])
          {
            v12 = 0;
            do
            {
              v36 = v12;
              v38 = [objc_msgSend(v37 "objectAtIndexedSubscript:"mutableCopy"")];
              obj = [v38 objectForKey:@"DataUsageInterfacePeerList"];
              v13 = objc_alloc_init(NSMutableArray);
              v54 = 0u;
              v55 = 0u;
              v52 = 0u;
              v53 = 0u;
              v14 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
              if (v14)
              {
                v15 = *v53;
                do
                {
                  for (i = 0; i != v14; i = i + 1)
                  {
                    if (*v53 != v15)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v17 = [*(*(&v52 + 1) + 8 * i) mutableCopy];
                    v18 = [v17 objectForKeyedSubscript:@"DataUsageInterfacePeerAddr"];
                    v48 = 0;
                    v49 = &v48;
                    v50 = 0x2020000000;
                    v51 = 0;
                    v42 = 0;
                    v43 = &v42;
                    v44 = 0x3052000000;
                    v45 = sub_100002B40;
                    v46 = sub_100006758;
                    v47 = 0;
                    v41[0] = _NSConcreteStackBlock;
                    v41[1] = 3221225472;
                    v41[2] = sub_100094640;
                    v41[3] = &unk_100260D40;
                    v41[4] = v18;
                    v41[5] = &v48;
                    v41[6] = &v42;
                    [v9 enumerateKeysAndObjectsUsingBlock:v41];
                    if ((v49[3] & 1) == 0)
                    {
                      v19 = [+[NSUUID UUID](NSUUID UUIDString];
                      v43[5] = v19;
                      v20 = objc_alloc_init(NSMutableDictionary);
                      v56 = v18;
                      [v20 setObject:+[NSArray arrayWithObjects:count:](NSArray forKeyedSubscript:{"arrayWithObjects:count:", &v56, 1), @"DataUsageMACAddresses"}];
                      v21 = [v20 copy];
                      [v9 setObject:v21 forKeyedSubscript:v43[5]];
                    }

                    [v17 setObject:v43[5] forKeyedSubscript:@"DataUsageInterfacePeerID"];
                    [v17 removeObjectForKey:@"DataUsageInterfacePeerAddr"];
                    [v13 addObject:v17];

                    _Block_object_dispose(&v42, 8);
                    _Block_object_dispose(&v48, 8);
                  }

                  v14 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
                }

                while (v14);
              }

              v22 = [v13 copy];
              [v38 setObject:v22 forKey:@"DataUsageInterfacePeerList"];

              v23 = [v38 copy];
              [v37 replaceObjectAtIndex:v36 withObject:v23];

              v24 = [v37 count];
              v12 = v36 + 1;
            }

            while (v36 + 1 < v24);
          }

          v25 = [v37 copy];
          [v34 setObject:v25 forKeyedSubscript:v35];

          if (group)
          {
            dispatch_group_leave(group);
          }
        }

        v26 = [v33 count];
        v10 = v32 + 1;
      }

      while (v32 + 1 < v26);
    }

    v27 = [v9 copy];

    if (!group)
    {
      sub_100094700(v29, v34, v27, 1);

      objc_autoreleasePoolPop(context);
      return;
    }

    dispatch_group_leave(group);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000946B4;
    block[3] = &unk_1002609C0;
    block[5] = v27;
    block[6] = v29;
    block[4] = v34;
    dispatch_group_notify(group, v28, block);
    objc_autoreleasePoolPop(context);
    v2 = group;
LABEL_30:
    dispatch_release(v2);
    return;
  }

  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: No Migration needed", "__WiFiManagerUpdateDataUsageCache"}];
  }

  objc_autoreleasePoolPop(v8);

  objc_autoreleasePoolPop(context);
  if (v2)
  {
    goto LABEL_30;
  }
}

void sub_100094608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

id sub_100094640(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [objc_msgSend(a3 objectForKeyedSubscript:{@"DataUsageMACAddresses", "containsObject:", a1[4]}];
  if (result)
  {
    *(*(a1[5] + 8) + 24) = 1;
    *(*(a1[6] + 8) + 40) = a2;
    *a4 = 1;
  }

  return result;
}

void sub_1000946B4(uint64_t a1)
{
  sub_100094700(*(a1 + 48), *(a1 + 32), *(a1 + 40), 0);

  v2 = *(a1 + 32);
}

void sub_100094700(uint64_t a1, void *a2, void *a3, int a4)
{
  v8 = objc_autoreleasePoolPush();
  if ([a3 count])
  {
    [a2 setObject:a3 forKey:@"PHClients"];
    v9 = [a2 copy];
    if (a4)
    {
      [+[NSUserDefaults standardUserDefaults](NSUserDefaults setObject:"setObject:forKey:" forKey:v9, @"InterfaceDataUsageV1"];
    }

    else
    {
      v10 = *(a1 + 32);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100094804;
      v11[3] = &unk_10025F5F8;
      v11[4] = v9;
      v11[5] = a1;
      dispatch_async(v10, v11);
    }
  }

  objc_autoreleasePoolPop(v8);
}

uint64_t sub_100094804(uint64_t a1)
{
  if (*(*(a1 + 40) + 32))
  {
    v2 = *(a1 + 32);
    [+[NSUserDefaults standardUserDefaults](NSUserDefaults setObject:"setObject:forKey:" forKey:v2, @"InterfaceDataUsageV1"];
    v4 = *(a1 + 32);
    v1 = vars8;
  }

  return _objc_release_x1();
}

void sub_100094870(uint64_t a1)
{
  v2 = objc_alloc_init(FAFetchFamilyCircleRequest);
  if (v2)
  {
    v3 = v2;
    [v2 setCachePolicy:0];
    v4 = *(a1 + 40);
    *(v4 + 2457) = 1;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100094940;
    v6[3] = &unk_100260D68;
    v6[5] = v3;
    v6[6] = v4;
    v6[4] = *(a1 + 32);
    [v3 startRequestWithCompletionHandler:v6];
  }

  else
  {
    v5 = *(a1 + 32);
  }
}

void sub_100094940(uint64_t a1, void *a2, void *a3)
{
  v38 = 0;
  v39 = &v38;
  v40 = 0x3052000000;
  v41 = sub_100002B40;
  v42 = sub_100006758;
  v43 = 0;
  if (a3)
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: error loading family members: %@", "__WiFiManagerUpdateFamilyPreferences_block_invoke_2", a3}];
    }

    objc_autoreleasePoolPop(v5);
    if ([a3 code] != -1004)
    {
      *(*(a1 + 48) + 2457) = 0;
    }
  }

  else if (a2)
  {
    v7 = objc_alloc_init(NSMutableArray);
    v39[5] = v7;
    if ([objc_msgSend(a2 "members")] >= 2)
    {
      *(*(a1 + 48) + 348) = 2;
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v8 = [a2 members];
    v9 = [v8 countByEnumeratingWithState:&v34 objects:v45 count:16];
    if (v9)
    {
      v10 = *v35;
      v26 = v8;
      v27 = a1;
      v25 = *v35;
      do
      {
        v11 = 0;
        v28 = v9;
        do
        {
          if (*v35 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v34 + 1) + 8 * v11);
          if (([v12 isMe] & 1) == 0)
          {
            v13 = [NSNumber numberWithInt:1];
            v32 = 0u;
            v33 = 0u;
            v30 = 0u;
            v31 = 0u;
            v14 = *(a1 + 32);
            v15 = [v14 countByEnumeratingWithState:&v30 objects:v44 count:16];
            if (v15)
            {
              v16 = *v31;
              while (2)
              {
                for (i = 0; i != v15; i = i + 1)
                {
                  if (*v31 != v16)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v18 = *(*(&v30 + 1) + 8 * i);
                  if ([objc_msgSend(v12 "altDSID")])
                  {
                    v19 = [v18 objectForKeyedSubscript:@"FamilyHotspotSharingMode"];
                    v8 = v26;
                    a1 = v27;
                    v9 = v28;
                    v10 = v25;
                    v13 = v19;
                    if ([(NSNumber *)v19 intValue]== 1)
                    {
                      *(*(v27 + 48) + 348) = 1;
                    }

                    goto LABEL_26;
                  }
                }

                v15 = [v14 countByEnumeratingWithState:&v30 objects:v44 count:16];
                if (v15)
                {
                  continue;
                }

                break;
              }

              v8 = v26;
              a1 = v27;
              v9 = v28;
              v10 = v25;
            }

LABEL_26:
            v20 = objc_alloc_init(NSMutableDictionary);
            [v20 setObject:objc_msgSend(v12 forKey:{"altDSID"), @"FamilyHotspotIdentifier"}];
            [v20 setObject:objc_msgSend(v12 forKey:{"wifiDisplayName"), @"FamilyHotspotDisplayName"}];
            [v20 setObject:v13 forKey:@"FamilyHotspotSharingMode"];
            v21 = v39[5];
            if (v21)
            {
              [v21 addObject:v20];
            }
          }

          v11 = v11 + 1;
        }

        while (v11 != v9);
        v9 = [v8 countByEnumeratingWithState:&v34 objects:v45 count:16];
      }

      while (v9);
    }

    if (v39[5])
    {
      v22 = *(a1 + 48);
      v23 = *(v22 + 32);
      if (v23)
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100094DCC;
        block[3] = &unk_10025EFD8;
        block[4] = &v38;
        block[5] = v22;
        dispatch_async(v23, block);
      }

      else
      {
        v24 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: null runloop.", "__WiFiManagerUpdateFamilyPreferences_block_invoke_2"}];
        }

        objc_autoreleasePoolPop(v24);
      }
    }
  }

  _Block_object_dispose(&v38, 8);
}

void sub_100094DCC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: setting family hotspot preference %@", "__WiFiManagerUpdateFamilyPreferences_block_invoke_3", *(*(*(a1 + 32) + 8) + 40)}];
  }

  objc_autoreleasePoolPop(v2);
  sub_10008933C(*(a1 + 40), *(*(*(a1 + 32) + 8) + 40));
  v3 = *(*(*(a1 + 32) + 8) + 40);
}

BOOL sub_100094E68(const __CFData *a1, const __CFData *a2)
{
  BytePtr = CFDataGetBytePtr(a1);
  v15 = *BytePtr;
  v16 = *(BytePtr + 2);
  v4 = CFDataGetBytePtr(a2);
  result = 0;
  v13 = *v4;
  v14 = *(v4 + 2);
  v6.i32[0] = v15;
  v7 = vmovl_u8(v6).u64[0];
  v8 = vuzp1_s8(v7, v7);
  v9 = v8.i32[0] | v16;
  v8.i32[0] = *v4;
  v10 = vmovl_u8(v8).u64[0];
  v11 = (vuzp1_s8(v10, v10).u32[0] | v14 | HIBYTE(v14)) == 0;
  if (v9 | HIBYTE(v16) && !v11)
  {
    return v15 == v13 && v16 == v14;
  }

  return result;
}

void sub_100094F40(uint64_t a1)
{
  context[0] = *(a1 + 32);
  context[1] = 0xAAAAAAAA00000009;
  context[2] = 0;
  context[3] = 1;
  context[4] = 0;
  CFSetApplyFunction(*(context[0] + 112), sub_100003B88, context);
}

void *sub_10009508C(uint64_t a1, uint64_t a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memset(&a9 - ((a3 + 15) & 0xFFFFFFFFFFFFFFF0), 170, a3);
}

uint64_t sub_1000950D0(uint64_t a1)
{

  return sub_1000241AC(a1, 1, 1, 1);
}

id sub_100095104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

CFComparisonResult sub_10009511C(uint64_t a1, const __CFString *a2)
{

  return CFStringCompare(v2, a2, 1uLL);
}

void sub_100095184(uint64_t a1, void *a2)
{

  sub_10000AD34(v2, a2, 0);
}

CFNumberRef sub_10009522C(uint64_t a1, uint64_t a2, const void *a3)
{

  return CFNumberCreate(v3, kCFNumberIntType, a3);
}

id sub_100095244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

void sub_10009525C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *key)
{

  CFDictionaryRemoveValue(v22, key);
}

id sub_1000953E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{

  return [v37 countByEnumeratingWithState:&a21 objects:&a37 count:16];
}

CFIndex sub_100095400(CFIndex range)
{
  v5.length = range;
  v4 = *(v1 + 224);
  v5.location = 0;

  return CFArrayGetFirstIndexOfValue(v4, v5, v2);
}

id sub_100095420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{

  return [v57 countByEnumeratingWithState:&a57 objects:&STACK[0x2C0] count:16];
}

void sub_100095440(__CFDictionary *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *key)
{

  CFDictionarySetValue(a1, key, v29);
}

uint64_t sub_100095458(uint64_t a1, const __CFString *a2)
{

  return sub_10007D6E8(v2, a2, 0);
}

void sub_100095470(uint64_t a1, void *a2)
{

  sub_10000AD34(v3, a2, v2);
}

void sub_100095488(uint64_t a1)
{

  sub_100070E8C(a1, 2, v1);
}

const void *sub_1000954A0(const __CFArray *a1)
{

  return CFArrayGetValueAtIndex(a1, 0);
}

const __CFString *sub_100095E40(int a1)
{
  if ((a1 - 2) > 3)
  {
    return @"None";
  }

  else
  {
    return off_100260EC0[a1 - 2];
  }
}

void sub_100095FF4(uint64_t a1, void *a2)
{
  if (a2 && [a2 confidence] == 2)
  {
    [*(a1 + 32) setMotionState:5];
    if ([a2 automotive])
    {
      [*(a1 + 32) setMotionState:4];
    }

    if ([a2 stationary])
    {
      v4 = [a2 automotive];
      v5 = *(a1 + 32);
      if (v4)
      {
        v6 = 6;
      }

      else
      {
        v6 = 1;
      }

      [*(a1 + 32) setMotionState:v6];
    }

    if ([a2 walking])
    {
      [*(a1 + 32) setMotionState:2];
    }

    if ([a2 running])
    {
      [*(a1 + 32) setMotionState:3];
    }

    if ([*(a1 + 32) motionState] == 4 || objc_msgSend(*(a1 + 32), "motionState") == 6)
    {
      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s [MOTION] MotionState: %@ - (%@)", "-[WiFiManagerMotionServices startMonitoringMotionState]_block_invoke", sub_100014038(objc_msgSend(*(a1 + 32), "motionState")), a2}];
      }

      objc_autoreleasePoolPop(v7);
    }

    [objc_msgSend(a2 "startDate")];
    [*(a1 + 32) setMotionStartTime:?];
    v8 = [*(a1 + 32) queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000961A4;
    block[3] = &unk_10025ED68;
    block[4] = *(a1 + 32);
    dispatch_async(v8, block);
  }
}

id sub_100096494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: [MOTION] Walking Started alarm triggered, error %@", "-[WiFiManagerMotionServices setupWalkingStartedAlarm]_block_invoke", a3}];
  }

  objc_autoreleasePoolPop(v5);
  [*(a1 + 32) setMotionState:2];
  v6 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100096574;
  block[3] = &unk_10025ED68;
  block[4] = *(a1 + 32);
  dispatch_async(v6, block);
  return [*(a1 + 32) setupWalkingEndedAlarm];
}

id sub_1000966FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: [MOTION] Walking Ended alarm triggered, error %@", "-[WiFiManagerMotionServices setupWalkingEndedAlarm]_block_invoke", a3}];
  }

  objc_autoreleasePoolPop(v5);
  [*(a1 + 32) setMotionState:2];
  v6 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000967DC;
  block[3] = &unk_10025ED68;
  block[4] = *(a1 + 32);
  dispatch_async(v6, block);
  return [*(a1 + 32) setupWalkingStartedAlarm];
}

id sub_100096964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: [MOTION] driving started alarm triggered........., error %@", "-[WiFiManagerMotionServices setupDrivingStartedAlarm]_block_invoke", a3}];
  }

  objc_autoreleasePoolPop(v5);
  [*(a1 + 32) setMotionState:4];
  v6 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100096A44;
  block[3] = &unk_10025ED68;
  block[4] = *(a1 + 32);
  dispatch_async(v6, block);
  return [*(a1 + 32) setupDrivingEndedAlarm];
}

id sub_100096BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: [MOTION] Driving ended alarm triggered..........., error %@", "-[WiFiManagerMotionServices setupDrivingEndedAlarm]_block_invoke", a3}];
  }

  objc_autoreleasePoolPop(v5);
  [*(a1 + 32) setMotionState:2];
  v6 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100096CAC;
  block[3] = &unk_10025ED68;
  block[4] = *(a1 + 32);
  dispatch_async(v6, block);
  return [*(a1 + 32) setupDrivingStartedAlarm];
}

WiFiManagerMotionServices *sub_100096D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  if (!a1)
  {
    sub_100173A80();
LABEL_8:
    v8 = 0;
    goto LABEL_5;
  }

  if (!a3)
  {
    sub_100173A14();
    goto LABEL_8;
  }

  v7 = objc_alloc_init(WiFiManagerMotionServices);
  v8 = v7;
  if (v7)
  {
    [(WiFiManagerMotionServices *)v7 setManager:a1];
    [(WiFiManagerMotionServices *)v8 setMotionStateChangeCb:a3];
    [(WiFiManagerMotionServices *)v8 setQueue:a2];
    [(WiFiManagerMotionServices *)v8 startMonitoringMotionState];
  }

  else
  {
    sub_1001739A8();
  }

LABEL_5:
  objc_autoreleasePoolPop(v6);
  return v8;
}

void sub_100096E44(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1)
  {
    [a1 stopMonitoringMotionState];
  }

  else
  {
    sub_100173AEC();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100096E98(void *a1, NSObject *a2)
{
  *(a1 + 48) = 0;
  if (MGGetBoolAnswer())
  {
    *(a1 + 48) = 1;
  }

  *(a1 + 8) = 0;
  v4 = opendir("/private/var/dextcores");
  if (v4)
  {
    *a1 = "/private/var/dextcores";
    closedir(v4);
  }

  else
  {
    *a1 = "/private/var/cores";
  }

  a1[3] = a2;
  v5 = a2;
  v6 = sub_1001188A4();
  if (v6)
  {
    *(a1 + 9) = v6;
  }

  else
  {
    if (byte_100298C7B)
    {
      v7 = 1;
    }

    else
    {
      v7 = 5;
    }

    *(a1 + 9) = v7;
  }

  v8 = sub_100118858();
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = 360;
  }

  *(a1 + 8) = v9;
  v22 = 9221;
  v10 = fsctl(*a1, 0xC0084A44uLL, &v22, 0);
  v11 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s fsctl for %s returns %d", "WiFiDextCrashMarkCoreFilesPurgable", *a1, v10}];
  }

  objc_autoreleasePoolPop(v11);
  if (*(a1 + 8) > 1440)
  {
    goto LABEL_20;
  }

  v12 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a2);
  a1[2] = v12;
  if (v12)
  {
    dispatch_set_context(v12, a1);
    dispatch_source_set_event_handler_f(a1[2], sub_100118908);
    dispatch_activate(a1[2]);
    v13 = a1[2];
    v14 = dispatch_time(0, 10000000000);
    dispatch_source_set_timer(v13, v14, 60000000000 * *(a1 + 8), 0x8BB2C97000uLL);
LABEL_20:
    v15 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s  timer enabled:%d startTime:%d period:%d (min) leeway:%d (min) maxFiles:%d corefile_directory:%s", "WiFiDextCrashProcessInit", *(a1 + 8) < 1441, 10, *(a1 + 8), 10, *(a1 + 9), *a1}];
    }

    goto LABEL_22;
  }

  v15 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: failed to create dextcrash handling timer", "WiFiDextCrashProcessInit", v16, v17, v18, v19, v20, v21}];
  }

LABEL_22:
  objc_autoreleasePoolPop(v15);
}

void sub_1000970EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {

    *(a1 + 24) = 0;
  }
}

void sub_10009895C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100098980(id a1, int64_t a2)
{
  if (a2)
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"Unable to register for periodic RSSI updates from P2PD %d", a2}];
    }

    objc_autoreleasePoolPop(v3);
  }
}

void sub_1000989F0(uint64_t a1, void *a2)
{
  v23 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = off_100298C40;
  if (!v23)
  {
    if (!off_100298C40)
    {
      goto LABEL_12;
    }

    v9 = "generateCurrentNetworkRecordForInternetSharingSession returns NULL Dictionary";
LABEL_11:
    [v4 WFLog:3 message:{v9, v21}];
    goto LABEL_12;
  }

  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"generateCurrentNetworkRecordForInternetSharingSession returns non NULL dictionary"];
  }

  objc_autoreleasePoolPop(v3);
  v5 = [v23 copy];
  v6 = *(a1 + 32);
  v7 = *(v6 + 168);
  *(v6 + 168) = v5;

  v8 = *(*(a1 + 32) + 168);
  v3 = objc_autoreleasePoolPush();
  v4 = off_100298C40;
  if (!v8)
  {
    if (!off_100298C40)
    {
      goto LABEL_12;
    }

    v9 = "_curNetworkRecord is NULL ";
    goto LABEL_11;
  }

  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Dump Current NAN BSS Info Dictionary : %@ ", *(*(a1 + 32) + 168)}];
  }

LABEL_12:
  objc_autoreleasePoolPop(v3);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained staDatapathEstablishedcallback])
  {
    v22 = [WeakRetained staDatapathEstablishedcallback];
    v11 = *(a1 + 32);
    v12 = v11[14];
    v13 = v11[18];
    v14 = v11[19];
    v15 = v11[20];
    v16 = [WeakRetained establishedLinkNetwork];
    v17 = [WeakRetained linkEstablishedCallbackContext];
    v18 = [WeakRetained nanAssocData];
    v19 = [WeakRetained isAutoJoined];
    v20 = [*(a1 + 32) waDiscoveryResult];
    v22(v13, v12, v14, v15, v16, v17, v18, v19, v20, 1);
  }
}

void sub_100099524(id a1, int64_t a2)
{
  if (a2)
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"Transaction %d abruptly ended because %d", 16, a2}];
    }

    objc_autoreleasePoolPop(v3);
  }
}

void sub_100099598(id a1, int64_t a2)
{
  if (a2)
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"Transaction %d abruptly ended because %d", 16, a2}];
    }

    objc_autoreleasePoolPop(v3);
  }
}

void sub_10009960C(id a1, int64_t a2)
{
  if (a2)
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"Transaction %d abruptly ended because %d", 16, a2}];
    }

    objc_autoreleasePoolPop(v3);
  }
}

void sub_100099680(id a1, int64_t a2)
{
  if (a2)
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"Transaction %d abruptly ended because %d", 16, a2}];
    }

    objc_autoreleasePoolPop(v3);
  }
}

uint64_t sub_100099AE4()
{
  result = qword_1002985C8;
  if (!qword_1002985C8)
  {
    pthread_once(&stru_1002979C8, sub_100099B2C);
    return qword_1002985C8;
  }

  return result;
}

CFMutableDictionaryRef sub_100099B2C()
{
  qword_1002985C8 = _CFRuntimeRegisterClass();
  result = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
  qword_1002985D0 = result;
  return result;
}

uint64_t sub_100099B78(uint64_t a1)
{
  result = dispatch_mach_create_f();
  *(a1 + 72) = result;
  if (result)
  {
    v3 = *(a1 + 16);

    return dispatch_mach_connect();
  }

  return result;
}

uint64_t sub_100099BE8(uint64_t result)
{
  if (result)
  {
    result = *(result + 72);
    if (result)
    {
      return dispatch_mach_cancel();
    }
  }

  return result;
}

void sub_100099BFC(uint64_t a1, __CFRunLoop *cf1, const __CFString *a3)
{
  if (cf1)
  {
    if (a3)
    {
      v7 = (a1 + 32);
      v6 = *(a1 + 32);
      if (v6)
      {
        if (*(a1 + 40))
        {
          if (CFEqual(cf1, v6))
          {
            if (CFEqual(a3, *(a1 + 40)))
            {
              *v7 = 0;
              v7[1] = 0;
              v8 = *(a1 + 48);
              if (v8)
              {
                CFRunLoopRemoveSource(cf1, v8, a3);
                v9 = *(a1 + 48);
                if (v9)
                {
                  CFRelease(v9);
                  *(a1 + 48) = 0;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100099C90(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 80) = a2;
  *(result + 88) = a3;
  return result;
}

uint64_t sub_100099C98(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 96) = a2;
  *(result + 104) = a3;
  return result;
}

uint64_t sub_100099CA0(unsigned int a1, const void *a2)
{
  pthread_mutex_lock(&stru_1002979D8);
  if (qword_1002985D0)
  {
    CFDictionarySetValue(qword_1002985D0, a1, a2);
  }

  return pthread_mutex_unlock(&stru_1002979D8);
}

uint64_t sub_100099D00(unsigned int a1)
{
  pthread_mutex_lock(&stru_1002979D8);
  if (qword_1002985D0)
  {
    CFDictionaryRemoveValue(qword_1002985D0, a1);
  }

  return pthread_mutex_unlock(&stru_1002979D8);
}

void sub_100099D58(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    CFMachPortInvalidate(v2);
    v3 = *(a1 + 56);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 56) = 0;
    }
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 48) = 0;
  }
}

void sub_10009A02C(id a1, id a2, unint64_t a3, BOOL *a4)
{
  if (a2)
  {
    dispatch_source_cancel(a2);
  }
}

void sub_10009A0FC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"Received signal %d", *(a1 + 48)}];
  }

  objc_autoreleasePoolPop(v2);
  if (*(a1 + 48) == 15)
  {
    v3 = MGCopyAnswerWithError();
    v4 = v3;
    if (v3 && [v3 count])
    {
      sub_100079528(*(*(a1 + 32) + 8), 0, @"LPEM");
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v7 = "[WiFiManagerLifeCycle handleSignal:onQueue:]_block_invoke";
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: LPEM mode not supported. Not powering off on SIGTERM", buf, 0xCu);
    }
  }

  sub_1000241AC(*(*(a1 + 32) + 8), 1, 1, 0);
  v5 = *(*(a1 + 32) + 8);
  sub_100161270();
  [*(a1 + 32) stopOnQueue:*(a1 + 40)];
  exit(*(a1 + 48));
}

uint64_t start()
{
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3052000000;
  v18[3] = sub_100002B50;
  v18[4] = sub_100006764;
  v18[5] = 0;
  memset(v19, 0, 255);
  v17 = 255;
  v0 = objc_autoreleasePoolPush();
  if ((_set_user_dir_suffix() & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100174194();
  }

  NSTemporaryDirectory();
  [NSError _setFileNameLocalizationEnabled:0];
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  qword_100298C60 = dispatch_queue_create("com.apple.wifid.managerQueue", v1);
  if (!qword_100298C60)
  {
    goto LABEL_41;
  }

  qword_100298C68 = dispatch_group_create();
  if (!qword_100298C68)
  {
    goto LABEL_41;
  }

  if (&_wd_endpoint_register)
  {
    wd_endpoint_register();
    wd_endpoint_add_queue();
    wd_endpoint_activate();
  }

  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  qword_100298C50 = dispatch_queue_create("com.apple.wifid.serialQueue", v2);
  if (qword_100298C50 && (v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), (qword_100298C58 = dispatch_queue_create("com.apple.wifi.network-sync", v3)) != 0))
  {
    v4 = CFLocaleCopyCurrent();
    v5 = CFDateFormatterCreate(0, v4, kCFDateFormatterShortStyle, kCFDateFormatterMediumStyle);
    qword_100298C70 = v5;
    if (v5)
    {
      CFDateFormatterSetFormat(v5, @"MM/dd/yy HH:mm:ss.SSS");
    }

    if (v4)
    {
      CFRelease(v4);
    }

    pthread_mutex_init(&stru_100297A18, 0);
    pthread_mutex_init(&stru_100297A58, 0);
    byte_100298C78 = os_variant_is_darwinos();
    if (objc_opt_class())
    {
      byte_100298C79 = [+[LockdownModeManager shared](LockdownModeManager "shared")];
    }

    if (objc_opt_class())
    {
      v16 = 0;
      byte_100298C7A = [+[MSDKDemoState sharedInstance](MSDKDemoState isStoreDemoModeEnabled:"isStoreDemoModeEnabled:", &v16];
    }

    if (sysctlbyname("hw.osenvironment", v19, &v17, 0, 0))
    {
      v6 = __error();
      v7 = strerror(*v6);
      v8 = __error();
      NSLog(@"%s: Failed to look up hw.osenvironment: %s(%d)", "main", v7, *v8);
    }

    else
    {
      if (*&v19[0] == 0x722D656369766564 && *(&v19[0] + 1) == 0x797265766F6365)
      {
        byte_100298C7B = 1;
      }

      NSLog(@"%s: Found hw.osenvironment: %s", "main", v19);
    }

    sub_1001741DC(&v15, v18);
    v10 = 1;
  }

  else
  {
LABEL_41:
    v10 = 0;
  }

  objc_autoreleasePoolPop(v0);
  if (v10)
  {
    [+[NSRunLoop mainRunLoop](NSRunLoop run];
    v11 = objc_autoreleasePoolPush();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009A738;
    block[3] = &unk_1002608E0;
    block[4] = v18;
    dispatch_async(qword_100298C60, block);
    objc_autoreleasePoolPop(v11);
  }

  v12 = objc_autoreleasePoolPush();
  if (qword_100298C70)
  {
    CFRelease(qword_100298C70);
    qword_100298C70 = 0;
  }

  if (qword_100298C50)
  {
    dispatch_release(qword_100298C50);
    qword_100298C50 = 0;
  }

  if (qword_100298C58)
  {
    dispatch_release(qword_100298C58);
    qword_100298C58 = 0;
  }

  if (qword_100298C60)
  {
    if (qword_100298C68)
    {
      dispatch_group_notify(qword_100298C68, qword_100298C60, &stru_100261110);
    }

    else
    {
      dispatch_release(qword_100298C60);
      qword_100298C60 = 0;
    }
  }

  objc_autoreleasePoolPop(v12);
  _Block_object_dispose(v18, 8);
  return 0;
}

void sub_10009A6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10009A6D4(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 40) = objc_alloc_init(WiFiManagerLifeCycle);
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = qword_100298C60;
  v4 = qword_100298C68;

  return [v2 startOnQueue:v3 group:v4];
}

void sub_10009A738(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) stopOnQueue:qword_100298C60];

  *(*(*(a1 + 32) + 8) + 40) = 0;
}

void sub_10009A78C(id a1)
{
  dispatch_release(qword_100298C60);
  qword_100298C60 = 0;
  dispatch_release(qword_100298C68);
  qword_100298C68 = 0;
}

uint64_t sub_10009A7C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_1002985D8)
  {
    pthread_once(&stru_100297A98, sub_10009AC40);
  }

  Instance = _CFRuntimeCreateInstance();
  *(Instance + 72) = 850045863;
  *(Instance + 80) = 0u;
  *(Instance + 96) = 0u;
  *(Instance + 112) = 0u;
  *(Instance + 128) = 0;
  v6 = malloc_type_malloc(a3 * a2, 0x1F21EE45uLL);
  *(Instance + 40) = v6;
  if (v6)
  {
    *(Instance + 56) = v6;
    *(Instance + 64) = v6;
    *(Instance + 48) = &v6[a3 * a2];
    *(Instance + 16) = a2;
    *(Instance + 24) = 0;
    *(Instance + 32) = a3;
    *(Instance + 136) = 0;
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s allocation error (likely OOM)", "WiFiCircularBufferCreate"}];
    }

    objc_autoreleasePoolPop(v7);
    CFRelease(Instance);
    return 0;
  }

  return Instance;
}

uint64_t sub_10009A8E8(uint64_t a1, const void *a2)
{
  pthread_mutex_lock((a1 + 72));
  memcpy(*(a1 + 56), a2, *(a1 + 32));
  v4 = *(a1 + 48);
  v5 = *(a1 + 56) + *(a1 + 32);
  *(a1 + 56) = v5;
  if (v5 == v4)
  {
    *(a1 + 56) = *(a1 + 40);
  }

  v6 = *(a1 + 24);
  if (v6 < *(a1 + 16))
  {
    *(a1 + 24) = v6 + 1;
  }

  return pthread_mutex_unlock((a1 + 72));
}

uint64_t sub_10009A96C(uint64_t a1, void *a2)
{
  pthread_mutex_lock((a1 + 72));
  sub_10009A9B8(a1, a2);

  return pthread_mutex_unlock((a1 + 72));
}

void *sub_10009A9B8(uint64_t a1, void *__dst)
{
  if (*(a1 + 24))
  {
    result = memcpy(__dst, *(a1 + 64), *(a1 + 32));
    v4 = *(a1 + 64) + *(a1 + 32);
    *(a1 + 64) = v4;
    if (v4 == *(a1 + 48))
    {
      *(a1 + 64) = *(a1 + 40);
    }

    --*(a1 + 24);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s when empty", "__WiFiCircularBufferGet"}];
    }

    objc_autoreleasePoolPop(v5);

    return pthread_mutex_unlock((a1 + 72));
  }

  return result;
}

void sub_10009AA8C(uint64_t a1, void *a2)
{
  if (*(a1 + 136))
  {

    sub_10009A9B8(a1, a2);
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s write locked not locked", "WiFiCircularBufferWriteLockedGet"}];
    }

    objc_autoreleasePoolPop(v3);
  }
}

void sub_10009AB10(uint64_t a1)
{
  if (*(a1 + 136) == 1)
  {
    v1 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s write lock already locked", "WiFiCircularBufferTakeWriteLock"}];
    }

    objc_autoreleasePoolPop(v1);
  }

  else
  {
    pthread_mutex_lock((a1 + 72));
    *(a1 + 136) = 1;
  }
}

void sub_10009ABAC(uint64_t a1)
{
  if (*(a1 + 136))
  {
    pthread_mutex_unlock((a1 + 72));
    *(a1 + 136) = 0;
  }

  else
  {
    v2 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s write lock not locked", "WiFiCircularBufferReleaseWriteLock"}];
    }

    objc_autoreleasePoolPop(v2);
  }
}

uint64_t sub_10009AC40()
{
  result = _CFRuntimeRegisterClass();
  qword_1002985D8 = result;
  return result;
}

void sub_10009AC68(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  free(*(a1 + 40));
}

void sub_10009B5F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10009B620(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained cachedBudget];

  return v2;
}

void sub_10009B8D4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  *(*(*(a1 + 32) + 8) + 24) = WeakRetained[1];
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    [WeakRetained[5] acknowledgePowerBudget:v3 forClientId:WeakRetained[18] error:0];
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = [v5 WiFiBatteryManagerHandleCpmsAllocatedBudgetReturnIndex:v3];
    v6 = sub_100010908(*(*(*(a1 + 32) + 8) + 24));
    v7 = sub_10014F12C(v6);
    v8 = v17[3];
    v9 = objc_autoreleasePoolPush();
    if (v8 == v7)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt :  Budget to be written is %lu, last was %lu : ignoring", "-[WiFiBatteryManager WiFiBatteryManagerCpmsCallbackConfiguration:]_block_invoke", v17[3], v7}];
      }
    }

    else
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt :  Budget to be written is %lu (last was %lu) !", "-[WiFiBatteryManager WiFiBatteryManagerCpmsCallbackConfiguration:]_block_invoke", v17[3], v7}];
      }

      objc_autoreleasePoolPop(v9);
      v10 = sub_1000CD644(*(*(*(a1 + 32) + 8) + 24));

      if (v10)
      {
        CFRetain(*(*(*(a1 + 32) + 8) + 24));
        v11 = sub_1000CD644(*(*(*(a1 + 32) + 8) + 24));
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10009BB40;
        block[3] = &unk_1002611C0;
        v14 = *(a1 + 32);
        v15 = &v16;
        v13 = v5;
        dispatch_async(v11, block);

LABEL_12:
        _Block_object_dispose(&v16, 8);
        goto LABEL_13;
      }

      v9 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: null manager queue.", "-[WiFiBatteryManager WiFiBatteryManagerCpmsCallbackConfiguration:]_block_invoke"}];
      }
    }

    objc_autoreleasePoolPop(v9);
    goto LABEL_12;
  }

LABEL_13:
}

void sub_10009BB28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10009BB40(uint64_t a1)
{
  v2 = sub_1000CD644(*(*(*(a1 + 40) + 8) + 24));

  v3 = objc_autoreleasePoolPush();
  if (v2)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt :  Async CPMS Handler ", "-[WiFiBatteryManager WiFiBatteryManagerCpmsCallbackConfiguration:]_block_invoke_2"}];
    }

    objc_autoreleasePoolPop(v3);
    v4 = sub_100010908(*(*(*(a1 + 40) + 8) + 24));
    v5 = sub_10014EE90(v4, *(*(*(a1 + 48) + 8) + 24));
    if (!v5)
    {
      goto LABEL_8;
    }

    v6 = v5;
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt : Unable to set the Async budget value to FW ", "-[WiFiBatteryManager WiFiBatteryManagerCpmsCallbackConfiguration:]_block_invoke_2"}];
    }

    objc_autoreleasePoolPop(v7);
    if (v6 != 82)
    {
LABEL_8:
      [*(a1 + 32) WiFiBatteryManagerHandlePowerAdmissionResponse:*(*(*(a1 + 48) + 8) + 24)];
    }
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null manager queue.", "-[WiFiBatteryManager WiFiBatteryManagerCpmsCallbackConfiguration:]_block_invoke_2"}];
    }

    objc_autoreleasePoolPop(v3);
  }

  v8 = *(*(*(a1 + 40) + 8) + 24);

  CFRelease(v8);
}

void sub_10009BDA8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained[1];
  v6 = +[NSDate date];
  v7 = [WeakRetained asyncPPMBudgetTimestamp];
  [v6 timeIntervalSinceDate:v7];
  v9 = v8;

  if (v5)
  {
    v10 = sub_1000CD644(v5);

    if (v10)
    {
      if (v3)
      {
        v11 = [v3 objectForKey:@"CDResourceAvailabilityKeyRetryReason"];
        if (v11)
        {
          v22 = 0;
          v23 = &v22;
          v24 = 0x2020000000;
          v25 = 0xAAAAAAAAAAAAAAAALL;
          Value = CFDictionaryGetValue(v11, @"com.apple.duet.ppm-bgt.wifi");
          if (Value && v9 >= 5.0)
          {
            [WeakRetained setAsyncPPMBudgetTimestamp:v6];
            CFNumberGetValue(Value, kCFNumberLongLongType, v23 + 3);
            v13 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"WiFiBatteryMgmt called back received wifibudget is %llu", v23[3]}];
            }

            objc_autoreleasePoolPop(v13);
            v14 = [WeakRetained cachedBudget];
            v15 = [NSNumber numberWithLongLong:v23[3]];
            [v14 setObject:v15 forKey:@"kCPMSPowerLegacyPPM"];

            CFRetain(v5);
            v16 = sub_1000CD644(v5);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10009C040;
            block[3] = &unk_100261210;
            v20 = &v22;
            v21 = v5;
            v19 = WeakRetained;
            dispatch_async(v16, block);
          }

          _Block_object_dispose(&v22, 8);
        }
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: null manager queue.", "-[WiFiBatteryManager WiFiBatteryManagerPpmCallbackConfiguration:]_block_invoke"}];
      }

      objc_autoreleasePoolPop(v17);
    }
  }
}

void sub_10009C028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10009C040(uint64_t a1)
{
  v2 = sub_1000CD644(*(a1 + 48));

  v3 = objc_autoreleasePoolPush();
  if (v2)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt :  Async PPM Handler ", "-[WiFiBatteryManager WiFiBatteryManagerPpmCallbackConfiguration:]_block_invoke_2"}];
    }

    objc_autoreleasePoolPop(v3);
    v4 = sub_100010908(*(a1 + 48));
    sub_10014EE90(v4, *(*(*(a1 + 40) + 8) + 24));
    [*(a1 + 32) WiFiBatteryManagerHandlePowerAdmissionResponse:*(*(*(a1 + 40) + 8) + 24)];
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null manager queue.", "-[WiFiBatteryManager WiFiBatteryManagerPpmCallbackConfiguration:]_block_invoke_2"}];
    }

    objc_autoreleasePoolPop(v3);
  }

  v5 = *(a1 + 48);

  CFRelease(v5);
}

void sub_10009C12C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  v8 = WeakRetained[1];
  if (v8)
  {
    v9 = sub_1000CD644(WeakRetained[1]);

    if (v9)
    {
      if (a2 != 2)
      {
        CFRetain(v8);
        v10 = sub_1000CD644(v8);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10009C270;
        block[3] = &unk_100261260;
        v14 = v8;
        v13 = v7;
        v15 = a2;
        dispatch_async(v10, block);
      }
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: null manager queue.", "-[WiFiBatteryManager WiFiBatteryManagerPpmCallbackConfiguration:]_block_invoke_3"}];
      }

      objc_autoreleasePoolPop(v11);
    }
  }
}

void sub_10009C270(uint64_t a1)
{
  v2 = sub_1000CD644(*(a1 + 40));

  v3 = objc_autoreleasePoolPush();
  if (v2)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s:WiFiBatteryMgmt : PPM Admission Handler", "-[WiFiBatteryManager WiFiBatteryManagerPpmCallbackConfiguration:]_block_invoke_4"}];
    }

    objc_autoreleasePoolPop(v3);
    if (*(a1 + 48) == 1)
    {
      v4 = 100;
    }

    else
    {
      v4 = 0;
    }

    [*(a1 + 32) WiFiBatteryManagerHandlePowerAdmissionResponse:v4];
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null manager queue.", "-[WiFiBatteryManager WiFiBatteryManagerPpmCallbackConfiguration:]_block_invoke_4"}];
    }

    objc_autoreleasePoolPop(v3);
  }

  v5 = *(a1 + 40);

  CFRelease(v5);
}

uint64_t sub_10009D190()
{
  result = qword_1002985E0;
  if (!qword_1002985E0)
  {
    pthread_once(&stru_100297B30, sub_10009D1D8);
    return qword_1002985E0;
  }

  return result;
}

CFSetRef sub_10009D1D8()
{
  qword_1002985E0 = _CFRuntimeRegisterClass();
  values[0] = @"UserName";
  values[1] = @"UserPassword";
  values[2] = @"UserPasswordKeychainItemID";
  values[3] = @"OneTimeUserPassword";
  values[4] = @"AcceptEAPTypes";
  qword_1002985E8 = CFArrayCreate(kCFAllocatorDefault, values, 5, &kCFTypeArrayCallBacks);
  v1[0] = @"AppleWiFi";
  v1[1] = @"AppleWifi";
  v1[2] = @"AppleWiFiSecure";
  v1[3] = @"AppleWatch";
  result = CFSetCreate(kCFAllocatorDefault, v1, 4, &kCFTypeSetCallBacks);
  qword_1002985F0 = result;
  return result;
}

_WORD *sub_10009D2E4(const __CFString *a1)
{
  if (!a1)
  {
    sub_1001785D4();
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    sub_100178568();
    return 0;
  }

  v3 = Mutable;
  CFDictionarySetValue(Mutable, @"SSID_STR", a1);
  ExternalRepresentation = CFStringCreateExternalRepresentation(kCFAllocatorDefault, a1, 0x8000100u, 0);
  if (ExternalRepresentation)
  {
    v5 = ExternalRepresentation;
    CFDictionarySetValue(v3, @"SSID", ExternalRepresentation);
    CFRelease(v5);
  }

  valuePtr = 2;
  v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &valuePtr);
  if (v6)
  {
    v7 = v6;
    CFDictionarySetValue(v3, @"AP_MODE", v6);
    CFRelease(v7);
  }

  v8 = sub_10000B0F4(kCFAllocatorDefault, v3, 0);
  CFRelease(v3);
  return v8;
}

const __CFDictionary *sub_10009D420(uint64_t a1)
{
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, *(a1 + 16));
  v2 = MutableCopy;
  if (MutableCopy)
  {
    if (!CFDictionaryGetValue(MutableCopy, @"SSID_STR"))
    {
      v5 = v2;
      v2 = 0;
LABEL_10:
      CFRelease(v5);
      return v2;
    }

    Value = CFDictionaryGetValue(v2, @"EnterpriseProfile");
    if (Value)
    {
      v4 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, Value);
      if (v4)
      {
        v5 = v4;
        v6 = CFDictionaryGetValue(v4, @"EAPClientConfiguration");
        if (v6)
        {
          v7 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v6);
          if (v7)
          {
            v8 = v7;
            CFDictionaryRemoveValue(v7, @"UserPassword");
            CFDictionaryRemoveValue(v8, @"TLSSaveTrustExceptions");
            CFDictionaryRemoveValue(v8, @"TLSUserTrustProceedCertificateChain");
            CFDictionarySetValue(v5, @"EAPClientConfiguration", v8);
            CFRelease(v8);
          }
        }

        CFDictionarySetValue(v2, @"EnterpriseProfile", v5);
        goto LABEL_10;
      }
    }
  }

  return v2;
}

const __CFDictionary *sub_10009D548(CFDictionaryRef *a1, const void *a2)
{
  v4 = sub_10000A540(a1, @"EnterpriseProfile");
  if (!v4)
  {
    return 0;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v4);
  v6 = MutableCopy;
  if (MutableCopy)
  {
    CFDictionarySetValue(MutableCopy, @"EnableUserInterface", kCFBooleanFalse);
    Value = CFDictionaryGetValue(v6, @"EAPClientConfiguration");
    if (Value)
    {
      v8 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, Value);
      if (v8)
      {
        v9 = v8;
        if (a2)
        {
          CFDictionarySetValue(v8, @"UserPassword", a2);
LABEL_24:
          CFDictionarySetValue(v6, @"EAPClientConfiguration", v9);
          CFRelease(v9);
          return v6;
        }

        if (sub_10000AFE4(a1))
        {
          v10 = sub_10009D768(a1);
          v11 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            v12 = "non-null";
            if (!v10)
            {
              v12 = "null";
            }

            [off_100298C40 WFLog:3 message:{"%s: __WiFiNetworkCopyPasswordForAccount() returned a %s password", "WiFiNetworkCopyPreparedEAPProfile", v12}];
          }

          objc_autoreleasePoolPop(v11);
          if (v10)
          {
            goto LABEL_23;
          }

          v13 = sub_10002A1CC(a1);
          if (!v13)
          {
            v14 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: Password for EAP profile NULL after fetch by account name and normal method, attempting password fetch by domain name ", "WiFiNetworkCopyPreparedEAPProfile"}];
            }

            objc_autoreleasePoolPop(v14);
            v13 = sub_10009D814(a1);
            if (!v13)
            {
              v15 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: Password for EAP profile still NULL after attempted fetch by domain name", "WiFiNetworkCopyPreparedEAPProfile"}];
              }

              objc_autoreleasePoolPop(v15);
              goto LABEL_24;
            }
          }
        }

        else
        {
          v13 = sub_10002A1CC(a1);
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        v10 = v13;
LABEL_23:
        CFDictionarySetValue(v9, @"UserPassword", v10);
        CFRelease(v10);
        goto LABEL_24;
      }
    }
  }

  return v6;
}

CFStringRef sub_10009D768(uint64_t a1)
{
  v1 = sub_10000A540(a1, @"HS20AccountName");
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: HS 2.0 account name from WiFiNetworkGetProperty() is %@", "__WiFiNetworkCopyPasswordForAccount", v1}];
  }

  objc_autoreleasePoolPop(v2);
  if (!v1 || CFStringGetLength(v1) < 1)
  {
    return 0;
  }

  return sub_1000A5EAC(v1);
}

const __CFString *sub_10009D814(uint64_t a1)
{
  result = sub_10000A540(a1, @"DomainName");
  if (result)
  {

    return sub_1000A5EAC(result);
  }

  return result;
}

void sub_10009D854(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (CFDictionaryGetValue(*(a1 + 16), @"WEP") == kCFBooleanTrue)
    {
      v4 = sub_10000A540(a2, @"WEP_AUTH_Flags");
      if (v4)
      {
        sub_10000AD34(a1, @"WEP_AUTH_Flags", v4);
      }
    }
  }

  if (sub_100009730(a2))
  {
    v5 = sub_10000A540(a2, @"EnterpriseProfile");
    if (v5)
    {
      sub_10000AD34(a1, @"EnterpriseProfile", v5);
    }
  }

  if (a2 && CFDictionaryGetValue(*(a2 + 16), @"DomainName") && sub_10000AFE4(a1))
  {
    v6 = sub_10000A540(a2, @"DisplayedOperatorName");
    if (v6)
    {
      sub_10000AD34(a1, @"HS2NetworkBadge", v6);
    }

    v7 = sub_10000A540(a2, @"HS20AccountName");
    if (v7 || (v7 = sub_10000A878(a2)) != 0)
    {
      v8 = v7;
      sub_10000AD34(a1, @"HS20AccountName", v7);
      v9 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Setting HS 2.0 account name to %@ for network %@", "WiFiNetworkMergeForAssociation", v8, sub_10002A2C0(a1)}];
      }

      objc_autoreleasePoolPop(v9);
    }
  }

  v10 = sub_10000A540(a2, @"TransitionDisabledFlags");
  if (v10)
  {
    sub_10000AD34(a1, @"TransitionDisabledFlags", v10);
  }

  v11 = CWFCoreWiFiSpecificAttributesKey;
  v12 = sub_10000A540(a2, CWFCoreWiFiSpecificAttributesKey);
  if (v12)
  {
    sub_10000AD34(a1, v11, v12);
  }

  v13 = sub_10000A540(a2, @"PolicyUUID");
  if (v13)
  {
    sub_10000AD34(a1, @"PolicyUUID", v13);
  }

  v14 = sub_10000A540(a2, @"PayloadUUID");
  if (v14)
  {
    sub_10000AD34(a1, @"PayloadUUID", v14);
  }

  v15 = sub_10000A540(a2, @"PayloadIdentifier");
  if (v15)
  {
    sub_10000AD34(a1, @"PayloadIdentifier", v15);
  }

  v16 = sub_10000A540(a2, @"CarrierPayloadIdentifierTelemetryApproved");
  if (v16)
  {
    sub_10000AD34(a1, @"CarrierPayloadIdentifierTelemetryApproved", v16);
  }

  sub_10009DC04(a1, a2);
  if (&_CNForgetSSID)
  {
    v17 = kCNSCaptiveNetworkProperty;
    v18 = sub_10000A540(a2, kCNSCaptiveNetworkProperty);
    sub_10000AD34(a1, v17, v18);
  }

  v19 = sub_10000A540(a2, @"WiFiNetworkUserAcceptedRecommendationAt");
  sub_10000AD34(a1, @"WiFiNetworkUserAcceptedRecommendationAt", v19);
  if (*(a1 + 24) == -1)
  {
    v20 = *(a2 + 24);
    if (v20 != 0xFFFF)
    {
      *(a1 + 24) = v20;
    }
  }
}

BOOL sub_10009DB7C(_BOOL8 result)
{
  if (result)
  {
    return CFDictionaryGetValue(*(result + 16), @"WEP") == kCFBooleanTrue;
  }

  return result;
}

BOOL sub_10009DBBC(_BOOL8 result)
{
  if (result)
  {
    return CFDictionaryGetValue(*(result + 16), @"DomainName") != 0;
  }

  return result;
}

void sub_10009DC04(const void *a1, uint64_t a2)
{
  if (!a1)
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null destNetwork", "WiFiNetworkMergeAutoJoinProperties", v12, v13}];
    }

    goto LABEL_10;
  }

  if (!a2)
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null srcNetwork", "WiFiNetworkMergeAutoJoinProperties", v12, v13}];
    }

    goto LABEL_10;
  }

  sub_1000A2BC8(a1);
  v4 = sub_10001CF90(a2);
  sub_10009FEC0(a1, v4);
  if (!v4)
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: preserving all AJ-disabled-related properties for network %@", "WiFiNetworkMergeAutoJoinProperties", sub_10000A878(a1)}];
    }

    objc_autoreleasePoolPop(v5);
    v6 = sub_10000A540(a2, @"networkDisabledClientName");
    sub_10000AD34(a1, @"networkDisabledClientName", v6);
    v7 = sub_10000A540(a2, @"networkDisabledReason");
    sub_10000AD34(a1, @"networkDisabledReason", v7);
    v8 = sub_10000A540(a2, @"networkDisabledTimestamp");
    sub_10000AD34(a1, @"networkDisabledTimestamp", v8);
    v9 = sub_10000A540(a2, @"WiFiNetworkDisabledUntilDate");
    if (v9)
    {
      v10 = v9;
      sub_10000AD34(a1, @"WiFiNetworkDisabledUntilDate", v9);
      v11 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: preserved disabledUntil for %@ network with %@", "WiFiNetworkMergeAutoJoinProperties", sub_10000A878(a1), v10}];
      }

LABEL_10:

      objc_autoreleasePoolPop(v11);
    }
  }
}

const __CFDictionary *sub_10009DE0C(const __CFDictionary *result)
{
  if (result)
  {
    v1 = result;
    result = CFDictionaryGetValue(result, @"SSID_STR");
    if (!result)
    {
      Value = CFDictionaryGetValue(v1, @"SSID");
      if (Value && ((v3 = Value, (v4 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, Value, 0x8000100u)) != 0) || (v4 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, v3, 0)) != 0) || (v4 = CFStringCreateWithCString(kCFAllocatorDefault, "", 0x8000100u)) != 0)
      {
        v5 = v4;
        CFDictionarySetValue(v1, @"SSID_STR", v4);
        CFRelease(v5);
      }

      return CFDictionaryGetValue(v1, @"SSID_STR");
    }
  }

  return result;
}

CFDataRef sub_10009DF00(uint64_t a1)
{
  result = sub_10000A540(a1, @"BSSID");
  if (result)
  {
    v2 = result;
    v3 = CFGetTypeID(result);
    if (v3 == CFStringGetTypeID() && (v4 = 0, v5[0] = 0, *(v5 + 7) = 0, CFStringGetCString(v2, &v4, 19, 0x8000100u)))
    {
      result = ether_aton(&v4);
      if (result)
      {
        return CFDataCreate(kCFAllocatorDefault, result, 6);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFArray *sub_10009DFC8(const __CFArray *result)
{
  if (result)
  {
    v1 = result;
    result = sub_10000A540(result, @"CHANNEL");
    if (!result)
    {
      result = sub_10000A540(v1, @"networkKnownBSSListKey");
      if (result)
      {
        v2 = result;
        result = CFArrayGetCount(result);
        if (result)
        {
          Count = CFArrayGetCount(v2);
          result = CFArrayGetValueAtIndex(v2, Count - 1);
          if (result)
          {

            return CFDictionaryGetValue(result, @"CHANNEL");
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10009E058(uint64_t a1, void *a2, void *a3)
{
  *a3 = 0xFFFFFFFF80000000;
  *a2 = 37;
  result = sub_10000A540(a1, @"RATES");
  if (result)
  {
    v6 = result;
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      v7 = result;
      for (i = 0; i != v7; ++i)
      {
        result = CFArrayGetValueAtIndex(v6, i);
        valuePtr = -1431655766;
        if (result)
        {
          v9 = result;
          TypeID = CFNumberGetTypeID();
          result = CFGetTypeID(v9);
          if (TypeID == result)
          {
            result = CFNumberGetValue(v9, kCFNumberIntType, &valuePtr);
            v11 = valuePtr;
            if (*a3 < valuePtr)
            {
              *a3 = valuePtr;
            }

            if (*a2 > v11)
            {
              *a2 = v11;
            }
          }
        }
      }
    }
  }

  return result;
}

const __CFDictionary *sub_10009E148(const __CFDictionary *result)
{
  if (result)
  {
    return sub_10000A754(*(result + 2));
  }

  return result;
}

void sub_10009E158(int a1, int a2, int a3)
{
  if (a2)
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    values = Mutable;
    if (Mutable)
    {
      v6 = Mutable;
      valuePtr = 8;
      v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCFIndexType, &valuePtr);
      if (v7)
      {
        v8 = v7;
        CFArrayAppendValue(v6, v7);
        CFRelease(v8);
      }

      if (a3)
      {
        valuePtr = 2;
        v9 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCFIndexType, &valuePtr);
        if (v9)
        {
          v10 = v9;
          CFArrayAppendValue(v6, v9);
          CFRelease(v10);
        }
      }

      else
      {
        sub_10000AD34(a1, @"ALLOW_WPA2_PSK");
      }

      keys = @"IE_KEY_RSN_AUTHSELS";
      v11 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v11)
      {
        v12 = v11;
        sub_10000AD34(a1, @"RSN_IE");
        CFRelease(v12);
      }

      CFRelease(values);
    }
  }

  else
  {

    sub_10000AD34(a1, @"RSN_IE");
  }
}

void sub_10009E2E4(uint64_t a1, int a2)
{
  v2 = a1;
  if (a2)
  {
    v3 = 2 * (sub_10000A540(a1, @"EnterpriseProfile") == 0);
    valuePtr = v3;
    values = CFNumberCreate(kCFAllocatorDefault, kCFNumberCFIndexType, &valuePtr);
    if (values)
    {
      cf = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
      if (cf)
      {
        v8 = @"IE_KEY_RSN_AUTHSELS";
        v4 = CFDictionaryCreate(kCFAllocatorDefault, &v8, &cf, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (v4)
        {
          v5 = v4;
          sub_10000AD34(v2, @"RSN_IE");
          CFRelease(v5);
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }
      }

      if (values)
      {
        CFRelease(values);
        values = 0;
      }
    }

    valuePtr = v3;
    values = CFNumberCreate(kCFAllocatorDefault, kCFNumberCFIndexType, &valuePtr);
    if (values)
    {
      cf = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
      if (cf)
      {
        v8 = @"IE_KEY_WPA_AUTHSELS";
        v6 = CFDictionaryCreate(kCFAllocatorDefault, &v8, &cf, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (v6)
        {
          v7 = v6;
          sub_10000AD34(v2, @"WPA_IE");
          CFRelease(v7);
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }
      }

      if (values)
      {
        CFRelease(values);
      }
    }
  }

  else
  {
    sub_10000AD34(a1, @"RSN_IE");

    sub_10000AD34(v2, @"WPA_IE");
  }
}

const __CFNumber *sub_10009E4E8(uint64_t a1, void *a2)
{
  result = sub_10000A540(a1, a2);
  if (result)
  {
    v4 = result;
    v5 = CFGetTypeID(result);
    if (v5 == CFNumberGetTypeID())
    {
      valuePtr = -1431655766;
      if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
      {
        return valuePtr;
      }

      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: out of range value for key %@", "WiFiNetworkGetInt32Property", a2}];
      }

      objc_autoreleasePoolPop(v6);
    }

    return 0;
  }

  return result;
}

uint64_t sub_10009E59C(uint64_t a1, void *a2)
{
  v3 = sub_10000A540(a1, a2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CFGetTypeID(v3);
  if (v5 != CFNumberGetTypeID())
  {
    return 0;
  }

  valuePtr = -21846;
  if (!CFNumberGetValue(v4, kCFNumberSInt16Type, &valuePtr))
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: out of range value for key %@", "WiFiNetworkGetInt16Property", a2}];
    }

    objc_autoreleasePoolPop(v7);
    return 0;
  }

  return valuePtr;
}

double sub_10009E654(uint64_t a1, void *a2)
{
  v2 = sub_10000A540(a1, a2);

  return sub_10000DCEC(v2);
}

void sub_10009E6F0(uint64_t a1, int a2)
{
  v2 = &kCFBooleanTrue;
  if (!a2)
  {
    v2 = &kCFBooleanFalse;
  }

  sub_10000AD34(a1, @"UserDirected", *v2);
}

uint64_t sub_10009E7C8(uint64_t a1)
{
  if (!&_CNForgetSSID)
  {
    return 0;
  }

  value = 0;
  ValueIfPresent = CFDictionaryGetValueIfPresent(*(a1 + 16), kCNSCaptiveNetworkProperty, &value);
  if (value == kCFBooleanTrue)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (ValueIfPresent)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10009E83C(uint64_t a1)
{
  if (!a1)
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null network.", "WiFiNetworkIsWoWAllowed"}];
    }

    goto LABEL_11;
  }

  v2 = (a1 + 16);
  v1 = *(a1 + 16);
  if (!v1)
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null network record.", "WiFiNetworkIsWoWAllowed"}];
    }

LABEL_11:
    v5 = v6;
    goto LABEL_12;
  }

  v3 = CFGetTypeID(v1);
  if (v3 == CFDictionaryGetTypeID())
  {
    sub_10017885C(v2, &v8);
    return v8;
  }

  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: bad record type %ld", "WiFiNetworkIsWoWAllowed", CFGetTypeID(*v2)}];
  }

  v5 = v4;
LABEL_12:
  objc_autoreleasePoolPop(v5);
  return 1;
}

uint64_t sub_10009E958(uint64_t a1)
{
  if (!a1)
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null network.", "WiFiNetworkFoundNanIe"}];
    }

    goto LABEL_11;
  }

  v2 = (a1 + 16);
  v1 = *(a1 + 16);
  if (!v1)
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null network record.", "WiFiNetworkFoundNanIe"}];
    }

LABEL_11:
    v5 = v6;
    goto LABEL_12;
  }

  v3 = CFGetTypeID(v1);
  if (v3 == CFDictionaryGetTypeID())
  {
    sub_100178980(v2, &v8);
    return v8;
  }

  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: bad record type %ld", "WiFiNetworkFoundNanIe", CFGetTypeID(*v2)}];
  }

  v5 = v4;
LABEL_12:
  objc_autoreleasePoolPop(v5);
  return 0;
}

uint64_t sub_10009EA74(uint64_t a1)
{
  if (a1)
  {
    result = sub_10000A604(a1);
    if (result)
    {
      result = sub_10009E958(a1);
      if (result)
      {
        return sub_10000A540(a1, @"WiFiNetworkNANServiceID") != 0;
      }
    }
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null network.", "WiFiNetworkIsNanPH"}];
    }

    objc_autoreleasePoolPop(v3);
    return 0;
  }

  return result;
}

BOOL sub_10009EB14(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 16);
    return sub_10000B044(v2) || sub_10000B0AC(v2) || sub_10000A754(*(v1 + 16)) != 0;
  }

  return result;
}

const __CFArray *sub_10009EB70(const __CFArray *result)
{
  if (result)
  {
    return sub_10000B044(*(result + 2));
  }

  return result;
}

uint64_t sub_10009EB80(uint64_t result)
{
  if (result)
  {
    return sub_10000B0AC(*(result + 16));
  }

  return result;
}

const __CFDictionary *sub_10009EB90(const __CFDictionary *result)
{
  if (result)
  {
    return sub_10000BD78(*(result + 2));
  }

  return result;
}

uint64_t sub_10009EBA0(uint64_t result)
{
  if (result)
  {
    v4 = v1;
    v5 = v2;
    sub_100178A88(result, &v3);
    return v3;
  }

  return result;
}

const __CFDictionary *sub_10009EBD4(const __CFDictionary *result)
{
  if (result)
  {
    return sub_10000A96C(*(result + 2));
  }

  return result;
}

const __CFDictionary *sub_10009EBE4(const __CFDictionary *result)
{
  if (result)
  {
    v1 = *(result + 2);
    value = 0;
    result = sub_10000A754(v1);
    if (result)
    {
      result = sub_10000A96C(v1);
      if (result)
      {
        result = CFDictionaryGetValue(v1, @"EXT_CAPS");
        if (result)
        {
          valuePtr = -1431655766;
          result = CFDictionaryGetValueIfPresent(result, @"SAE_PK_PASSWD_USED", &value);
          if (result)
          {
            return (CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr) && valuePtr == 1);
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_10009EC84(_BOOL8 result)
{
  if (result)
  {
    return (~sub_10000D89C(*(result + 16)) & 7) == 0;
  }

  return result;
}

BOOL sub_10009ECB4(_BOOL8 result)
{
  if (result)
  {
    return (~sub_10000D89C(*(result + 16)) & 0xB) == 0;
  }

  return result;
}

const __CFDictionary *sub_10009ECE4(const __CFDictionary *result)
{
  if (result)
  {
    return sub_100009780(*(result + 2));
  }

  return result;
}

BOOL sub_10009ECF4(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    result = sub_100009730(result);
    if (result)
    {
      return sub_10000D8DC(v1, 17) || sub_10000D8DC(v1, 21) || sub_10000D8DC(v1, 25) || sub_10000D8DC(v1, 26) || sub_10000D8DC(v1, 43) != 0;
    }
  }

  return result;
}

void sub_10009EE04(uint64_t a1)
{
  if (sub_100174AD4(a1) != 0.0)
  {
    CFAbsoluteTimeGetCurrent();
  }
}

void sub_10009EE40(uint64_t a1, CFDateRef theDate)
{
  if (a1)
  {
    if (theDate)
    {
      AbsoluteTime = CFDateGetAbsoluteTime(theDate);

      sub_100034F14(a1, @"WiFiNetworkExpirationDate", AbsoluteTime);
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: null expire date, removing property", "WiFiNetworkSetExpireDate"}];
      }

      objc_autoreleasePoolPop(v4);

      sub_10000AD34(a1, @"WiFiNetworkExpirationDate", 0);
    }
  }
}

BOOL sub_10009EF18(uint64_t a1)
{
  if (a1)
  {
    return sub_10000A540(a1, @"WiFiNetworkExpirationDate") != 0;
  }

  sub_100178B0C();
  return 0;
}

void sub_10009EF54(uint64_t a1, int a2)
{
  v2 = &kCFBooleanTrue;
  if (!a2)
  {
    v2 = &kCFBooleanFalse;
  }

  sub_10000AD34(a1, @"WEP", *v2);
}

void sub_10009EF7C(uint64_t a1, int a2)
{
  if (a2)
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    values = Mutable;
    if (Mutable)
    {
      v4 = Mutable;
      valuePtr = 18;
      v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCFIndexType, &valuePtr);
      if (v5)
      {
        v6 = v5;
        CFArrayAppendValue(v4, v5);
        CFRelease(v6);
      }

      keys = @"IE_KEY_RSN_AUTHSELS";
      v7 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v7)
      {
        v8 = v7;
        sub_10000AD34(a1, @"RSN_IE", v7);
        CFRelease(v8);
      }

      CFRelease(values);
    }
  }

  else
  {

    sub_10000AD34(a1, @"RSN_IE", 0);
  }
}

void sub_10009F0A0(uint64_t a1, int a2)
{
  if (a2)
  {
    valuePtr = 1;
    values = CFNumberCreate(kCFAllocatorDefault, kCFNumberCFIndexType, &valuePtr);
    if (values)
    {
      cf = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
      if (cf)
      {
        v7 = @"IE_KEY_RSN_AUTHSELS";
        v3 = CFDictionaryCreate(kCFAllocatorDefault, &v7, &cf, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (v3)
        {
          v4 = v3;
          sub_10000AD34(a1, @"RSN_IE", v3);
          CFRelease(v4);
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }
      }

      if (values)
      {
        CFRelease(values);
        values = 0;
      }
    }

    valuePtr = 1;
    values = CFNumberCreate(kCFAllocatorDefault, kCFNumberCFIndexType, &valuePtr);
    if (values)
    {
      cf = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
      if (cf)
      {
        v7 = @"IE_KEY_WPA_AUTHSELS";
        v5 = CFDictionaryCreate(kCFAllocatorDefault, &v7, &cf, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (v5)
        {
          v6 = v5;
          sub_10000AD34(a1, @"WPA_IE", v5);
          CFRelease(v6);
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }
      }

      if (values)
      {
        CFRelease(values);
      }
    }
  }

  else
  {
    sub_10000AD34(a1, @"RSN_IE", 0);
    sub_10000AD34(a1, @"WPA_IE", 0);

    sub_10000AD34(a1, @"EnterpriseProfile", 0);
  }
}

BOOL sub_10009F2A4(uint64_t a1)
{
  if (!sub_100009730(a1))
  {
    if (!sub_10001CF3C(a1))
    {
      if (a1)
      {
        if (CFDictionaryGetValue(*(a1 + 16), @"WEP") != kCFBooleanTrue && !sub_10000D970(a1))
        {
          return sub_10000A754(*(a1 + 16)) != 0;
        }
      }

      else
      {
        result = sub_10000D970(0);
        if (!result)
        {
          return result;
        }
      }
    }

    return 1;
  }

  return !sub_10009F370(a1) && !sub_10000D8DC(a1, 18) && sub_10000D8DC(a1, 23) == 0;
}

const __CFArray *sub_10009F370(uint64_t a1)
{
  if (!sub_100009730(a1))
  {
    return 0;
  }

  v2 = sub_10000A540(a1, @"AcceptEAPTypes");
  if (v2)
  {
    valuePtr = 13;
    v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    if (v3)
    {
      v4 = v3;
      v7.length = CFArrayGetCount(v2);
      v7.location = 0;
      v2 = (CFArrayGetFirstIndexOfValue(v2, v7, v4) != -1);
      CFRelease(v4);
      return v2;
    }

    return 0;
  }

  return v2;
}

uint64_t sub_10009F434(unsigned int a1, unsigned int a2)
{
  if ((a1 & a2 & 4) == 0 || ((a2 ^ a1) & 8) != 0)
  {
    if (a1 >= a2)
    {
      v8 = 0;
    }

    else
    {
      v8 = -1;
    }

    if (a1 <= a2)
    {
      return v8;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v2 = a1 & 0xFFFFFFFB;
    v3 = a2 & 0xFFFFFFFB;
    if ((a1 & 0xFFFFFFFB) > (a2 & 0xFFFFFFFB))
    {
      v4 = 1;
    }

    else
    {
      v4 = -1;
    }

    if (v3)
    {
      v5 = v4;
    }

    else
    {
      v5 = -1;
    }

    if (v2)
    {
      v6 = v5;
    }

    else
    {
      v6 = 1;
    }

    if (v2 == v3)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t sub_10009F48C(CFTypeRef cf, const void *a2)
{
  result = 0;
  if (cf && a2)
  {
    v5 = CFGetTypeID(cf);
    v6 = qword_1002985E0;
    if (!qword_1002985E0)
    {
      pthread_once(&stru_100297B30, sub_10009D1D8);
      v6 = qword_1002985E0;
    }

    if (v5 != v6)
    {
      return 0;
    }

    v7 = CFGetTypeID(a2);
    v8 = qword_1002985E0;
    if (!qword_1002985E0)
    {
      pthread_once(&stru_100297B30, sub_10009D1D8);
      v8 = qword_1002985E0;
    }

    if (v7 == v8)
    {
      sub_100178B78(cf, a2, &v9);
      return v9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10009F564(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    result = sub_10000BAC8(*(a1 + 16), *(a2 + 16));
    if (result)
    {
      return sub_10000B9E0(*(a1 + 16), *(a1 + 16), @"AP_MODE") != 0;
    }
  }

  return result;
}

uint64_t sub_10009F5C0(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return sub_10009F5D4(a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10009F5D4(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2 || !sub_10000AFE4(a1) || !sub_10000AFE4(a2))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);

  return sub_10000B9E0(v5, v6, @"DomainName");
}

BOOL sub_10009F648(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      return sub_10000B9E0(*(a1 + 16), *(a2 + 16), @"SSID_STR") != 0;
    }
  }

  return result;
}

uint64_t sub_10009F690(uint64_t a1, uint64_t a2)
{
  if (a1 | a2)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  if (a2)
  {
    result = 1;
  }

  else
  {
    result = v3;
  }

  if (a1 && a2)
  {
    v6 = sub_10000966C(a1);
    v7 = sub_10000966C(a2);
    v8 = sub_10000AFE4(a1);
    v9 = sub_10000AFE4(a2);
    if (v6 || v8 || v7 || v9)
    {
      if ((v6 || v8) && !v7 && !v9)
      {
        return 1;
      }

      if (!v6 && !v8 && (v7 || v9))
      {
        return -1;
      }

      if (v6 && v9)
      {
        return 1;
      }

      if (v8 && v7)
      {
        return -1;
      }

      if (v8 && v9)
      {
        v10 = sub_10000A540(a1, @"HS20HomeOperatorNetwork");
        v11 = sub_10000A540(a2, @"HS20HomeOperatorNetwork");
        if (v10 == kCFBooleanTrue && v11 != kCFBooleanTrue)
        {
          return -1;
        }

        if (v10 != kCFBooleanTrue && v11 == kCFBooleanTrue)
        {
          return 1;
        }
      }
    }

    v12 = sub_10000BBE0(*(a1 + 16));
    v13 = sub_10000BBE0(*(a2 + 16));
    v14 = sub_10009F434(v12, v13);
    if (v14 == 1)
    {
      return -1;
    }

    if (v14 == -1)
    {
      return 1;
    }

    else
    {
      valuePtr = 0;
      v15 = sub_10000A540(a1, @"Strength");
      if (v15)
      {
        CFNumberGetValue(v15, kCFNumberFloatType, &valuePtr + 4);
      }

      v16 = sub_10000A540(a2, @"Strength");
      if (v16)
      {
        CFNumberGetValue(v16, kCFNumberFloatType, &valuePtr);
        v17 = *&valuePtr;
      }

      else
      {
        v17 = 0.0;
      }

      if (*(&valuePtr + 1) > v17)
      {
        return -1;
      }

      return *(&valuePtr + 1) < v17;
    }
  }

  return result;
}

__CFString *sub_10009F898(CFDictionaryRef *a1)
{
  if (sub_10001CE30(a1) < 2)
  {
    return 0;
  }

  v2 = sub_10002A1CC(a1);
  if (v2 && !sub_10000A540(a1, @"RSN_IE"))
  {
    v3 = sub_10001CA74(a1);
    v4 = sub_10017C9AC(v2, v3);
    CFRelease(v2);
    return v4;
  }

  return v2;
}

__CFString *sub_10009F918(const void *a1, const __CFString *a2)
{
  v3 = sub_10001CA74(a1);

  return sub_10017C9AC(a2, v3);
}

uint64_t sub_10009F954(CFDictionaryRef *a1, BOOL *a2, double a3)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "WiFiNetworkCopyPasswordWithTimeout";
    v13 = 2112;
    v14 = sub_10002A2C0(a1);
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: Copy password for Network/account %@", &v11, 0x16u);
  }

  if (a1 && CFDictionaryContainsKey(a1[2], @"PayloadUUID"))
  {
    v6 = sub_10002A2C0(a1);
    v7 = sub_10001D308(a1);
    result = sub_1000A6D4C(v6, a2, v7, a3);
    if (result)
    {
      return result;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v9 = sub_10002A2C0(a1);
      v11 = 136315394;
      v12 = "WiFiNetworkCopyPasswordWithTimeout";
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: No password is copied for profiled based network %@", &v11, 0x16u);
    }
  }

  v10 = sub_10002A2C0(a1);
  return sub_1000A59B0(v10, a2, a3);
}

uint64_t sub_10009FAEC(const void *a1, const __CFString *a2, BOOL *a3, double a4)
{
  v7 = sub_10002A2C0(a1);

  return sub_1000A6300(v7, a2, a3, a4);
}

CFStringRef sub_10009FB3C(const void *a1)
{
  v1 = sub_10002A2C0(a1);

  return sub_1000A61C4(v1);
}

CFStringRef sub_10009FB64(const void *a1)
{
  v1 = sub_10002A2C0(a1);

  return sub_10002A330(v1);
}

uint64_t sub_10009FB8C(const void *a1, BOOL *a2, double a3)
{
  v6 = sub_10002A2C0(a1);
  v7 = sub_10001D308(a1);

  return sub_1000A6D4C(v6, a2, v7, a3);
}

BOOL sub_10009FBF4(const void *a1, const __CFString *a2)
{
  v3 = sub_10002A2C0(a1);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "WiFiNetworkSetPassword";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: Set password for Network/account %@", &v5, 0x16u);
  }

  return sub_1000A6630(v3, a2);
}

BOOL sub_10009FCBC(const void *a1, const __CFString *a2)
{
  v3 = sub_10002A2C0(a1);

  return sub_1000A68E4(v3, a2);
}

uint64_t sub_10009FCF4(const void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "WiFiNetworkRemovePassword";
    v6 = 2112;
    v7 = sub_10002A2C0(a1);
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: Remove password for Network/account %@", &v4, 0x16u);
  }

  v2 = sub_10002A2C0(a1);
  return sub_1000A68EC(v2);
}

uint64_t sub_10009FDBC(const void *a1)
{
  v1 = sub_10002A2C0(a1);

  return sub_1000A6A38(v1);
}

CFStringRef sub_10009FDE4(CFDictionaryRef *a1)
{
  result = sub_10002A1CC(a1);
  if (result)
  {
    CFRelease(result);
    return 1;
  }

  return result;
}

uint64_t sub_10009FE08(void *a1)
{
  if (!sub_10009F2A4(a1))
  {
    return 1;
  }

  result = sub_10009D768(a1);
  if (result)
  {
LABEL_3:
    CFRelease(result);
    return 1;
  }

  v3 = sub_10000A878(a1);
  v4 = sub_10000A540(a1, @"HS20AccountName");
  if (!v3 || v4 && CFEqual(v3, v4))
  {
    return 0;
  }

  result = sub_10002A1CC(a1);
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_10009FE98(const void *a1)
{
  v1 = sub_10002A2C0(a1);

  return sub_1000A6A40(v1);
}

void sub_10009FEC0(uint64_t a1, int a2)
{
  if (a1)
  {
    v4 = &kCFBooleanTrue;
    v5 = *(a1 + 16);
    if (!a2)
    {
      v4 = &kCFBooleanFalse;
    }

    CFDictionarySetValue(v5, @"enabled", *v4);
    if (a2)
    {
      sub_10009FF90(a1, 0);
      CFDictionaryRemoveValue(*(a1 + 16), @"networkDisabledTimestamp");
      CFDictionaryRemoveValue(*(a1 + 16), @"networkDisabledReason");
      CFDictionaryRemoveValue(*(a1 + 16), @"networkDisabledClientName");
      v6 = *(a1 + 16);
      v7 = @"prevJoined";
    }

    else
    {
      v6 = *(a1 + 16);
      v7 = @"WiFiNetworkUserAcceptedRecommendationAt";
    }

    CFDictionaryRemoveValue(v6, v7);
  }
}

void sub_10009FF90(uint64_t a1, const void *a2)
{
  if (a1)
  {
    v2 = a2;
    v3 = a1;
    if (!a2)
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Clearing disable-until property for SSID '%@'", "WiFiNetworkSetDisabledUntilDate", sub_10000A878(v3)}];
      }

      objc_autoreleasePoolPop(v4);
      a1 = v3;
      v2 = 0;
    }

    sub_10000AD34(a1, @"WiFiNetworkDisabledUntilDate", v2);
  }
}

void sub_1000A0060(CFMutableDictionaryRef *a1, int a2, const void *a3)
{
  if (a1)
  {
    if (a3)
    {
      TypeID = CFStringGetTypeID();
      if (TypeID == CFGetTypeID(a3))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100178E94(a1, a2, a3);
        }

        v7 = sub_10001CF90(a1);
        if (!a2 && v7)
        {
          sub_10000AD34(a1, @"networkDisabledReason", a3);
          Current = CFAbsoluteTimeGetCurrent();
          v9 = CFDateCreate(kCFAllocatorDefault, Current);
          if (v9)
          {
            v10 = v9;
            CFDictionarySetValue(a1[2], @"networkDisabledTimestamp", v9);
            CFRelease(v10);
          }
        }
      }
    }
  }

  sub_10009FEC0(a1, a2);
}

void sub_1000A0170(const void *a1, int a2, const void *a3)
{
  v6 = sub_10000DC20(a1);
  if (v6)
  {
    sub_10000AD34(a1, @"prevJoined", v6);
  }

  if (a2)
  {
    v7 = @"lastJoined";
  }

  else
  {
    v7 = @"lastAutoJoined";
  }

  sub_10000AD34(a1, v7, a3);
}

const void *sub_1000A01EC(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = @"lastJoined";
  }

  else
  {
    v2 = @"lastAutoJoined";
  }

  return sub_10000A540(a1, v2);
}

double sub_1000A0208(const void *a1)
{
  v2 = sub_10000DC20(a1);
  v3 = sub_10000A540(a1, @"prevJoined");
  if (v2 && v3)
  {

    return CFDateGetTimeIntervalSinceDate(v2, v3);
  }

  else
  {
    result = -1.0;
    if (v2)
    {
      return 0.0;
    }
  }

  return result;
}

const void *sub_1000A028C(uint64_t a1)
{
  if (a1)
  {

    return sub_10000A540(a1, @"CHANNEL_FLAGS");
  }

  else
  {
    sub_100178F68();
    return 0;
  }
}

void sub_1000A02D0(const void *a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = CFDateCreate(kCFAllocatorDefault, Current);
  v4 = v3;
  if (!a1 || !v3)
  {
    goto LABEL_47;
  }

  v5 = sub_10000A540(a1, @"CHANNEL");
  if (v5)
  {
    v6 = v5;
    v7 = sub_10000A540(a1, @"CHANNEL_FLAGS");
    if (v7)
    {
      v8 = v7;
      cf2 = sub_10000A540(a1, @"BSSID");
      if (cf2)
      {
        theArray = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        if (theArray)
        {
          v9 = sub_10000A540(a1, @"networkKnownBSSListKey");
          if (!v9)
          {
            goto LABEL_18;
          }

          v10 = v9;
          if (CFArrayGetCount(v9) < 1)
          {
            goto LABEL_18;
          }

          v11 = 0;
          v12 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v10, v12);
            if (ValueAtIndex)
            {
              v14 = ValueAtIndex;
              Value = CFDictionaryGetValue(ValueAtIndex, @"BSSID");
              if (Value)
              {
                if (CFEqual(Value, cf2))
                {
                  v11 = v14;
                }

                else
                {
                  CFArrayAppendValue(theArray, v14);
                }
              }
            }

            ++v12;
          }

          while (v12 < CFArrayGetCount(v10));
          if (v11)
          {
            MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v11);
          }

          else
          {
LABEL_18:
            MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          }

          v17 = MutableCopy;
          if (MutableCopy)
          {
            CFDictionarySetValue(MutableCopy, @"BSSID", cf2);
            CFDictionarySetValue(v17, @"CHANNEL", v6);
            CFDictionarySetValue(v17, @"CHANNEL_FLAGS", v8);
            CFDictionarySetValue(v17, @"lastRoamed", v4);
            v18 = sub_10000A540(a1, @"CHANNEL_FLAGS");
            if (v18)
            {
              valuePtr = 0;
              CFNumberGetValue(v18, kCFNumberSInt32Type, &valuePtr);
              if ((valuePtr & 0x2000) != 0)
              {
                v19 = sub_10000A540(a1, @"ORIG_RNR_CHANNEL_LIST");
                if (v19)
                {
                  v20 = v19;
                  if (CFArrayGetCount(v19) >= 1)
                  {
                    v34 = v6;
                    v35 = a1;
                    v36 = v4;
                    v21 = 0;
                    v22 = 0;
                    v23 = 0;
                    v24 = 0;
                    v25 = 0;
                    while (!v22 || !v24)
                    {
                      v26 = CFArrayGetValueAtIndex(v20, v21);
                      if (v26)
                      {
                        v27 = v26;
                        v28 = CFDictionaryGetValue(v26, @"CHANNEL");
                        v29 = CFDictionaryGetValue(v27, @"CHANNEL_FLAGS");
                        if (v28)
                        {
                          v30 = v29;
                          if (v29)
                          {
                            v39 = 0;
                            CFNumberGetValue(v29, kCFNumberSInt32Type, &v39);
                            if ((v39 & 8) != 0)
                            {
                              v23 = v30;
                              v22 = v28;
                            }

                            else if ((v39 & 0x10) != 0)
                            {
                              v25 = v30;
                              v24 = v28;
                            }
                          }
                        }
                      }

                      if (CFArrayGetCount(v20) <= ++v21)
                      {
                        if (!v24)
                        {
                          goto LABEL_37;
                        }

                        break;
                      }
                    }

                    CFDictionarySetValue(v17, @"colocated5GHzRNRChannel", v24);
                    CFDictionarySetValue(v17, @"colocated5GHzRNRChannelFlags", v25);
LABEL_37:
                    a1 = v35;
                    v4 = v36;
                    v6 = v34;
                    if (v22)
                    {
                      CFDictionarySetValue(v17, @"colocated2GHzRNRChannel", v22);
                      CFDictionarySetValue(v17, @"colocated2GHzRNRChannelFlags", v23);
                    }
                  }
                }
              }
            }

            v31 = sub_10000A540(a1, @"LEAKY_AP_LEARNED_DATA");
            if (v31)
            {
              CFDictionarySetValue(v17, @"LEAKY_AP_LEARNED_DATA", v31);
              sub_10000AD34(a1, @"LEAKY_AP_LEARNED_DATA", 0);
              v32 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: moved leaky AP info to bss dictionary", "WiFiNetworkPrepareKnownBssList"}];
              }

              objc_autoreleasePoolPop(v32);
            }

            CFArrayAppendValue(theArray, v17);
            sub_10000AD34(a1, @"networkKnownBSSListKey", theArray);
            v33 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: successfully prepared known BSS info for %@ (bssid: %@, channel: %@)", "WiFiNetworkPrepareKnownBssList", sub_10000A878(a1), cf2, v6}];
            }

            objc_autoreleasePoolPop(v33);
            CFRelease(theArray);
          }

          else
          {
            v17 = theArray;
          }

          CFRelease(v17);
LABEL_47:
          if (!v4)
          {
            return;
          }
        }
      }
    }
  }

  CFRelease(v4);
}

uint64_t sub_1000A072C(uint64_t a1, uint64_t a2)
{
  if (a1 | a2)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  if (a2)
  {
    result = 1;
  }

  else
  {
    result = v3;
  }

  if (a1 && a2)
  {
    v6 = sub_10000A540(a1, @"networkUsage");
    v7 = sub_10000DCEC(v6);
    v8 = sub_10000A540(a2, @"networkUsage");
    v9 = sub_10000DCEC(v8);
    if (v7 >= v9)
    {
      if (v7 <= v9)
      {

        return sub_1000A07EC(a1, a2);
      }

      else
      {
        return -1;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1000A07EC(uint64_t a1, uint64_t a2)
{
  if (a1 | a2)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  if (a2)
  {
    result = 1;
  }

  else
  {
    result = v3;
  }

  if (a1 && a2)
  {
    v6 = sub_10000A540(a1, @"lastAutoJoined");
    v7 = sub_10000A540(a1, @"lastJoined");
    v8 = v7;
    if (v6 && v7)
    {
      v9 = CFDateCompare(v6, v7, 0);
      if (v9 == kCFCompareGreaterThan)
      {
        v10 = v6;
      }

      else
      {
        v10 = 0;
      }

      if (v9 == kCFCompareEqualTo)
      {
        v10 = v8;
      }

      if (v9 == kCFCompareLessThan)
      {
        v6 = v8;
      }

      else
      {
        v6 = v10;
      }
    }

    else if (!v6)
    {
      v6 = v7;
    }

    v11 = sub_10000A540(a2, @"lastAutoJoined");
    v12 = sub_10000A540(a2, @"lastJoined");
    v13 = v12;
    if (v11 && v12)
    {
      v14 = CFDateCompare(v11, v12, 0);
      if (v14 != kCFCompareLessThan)
      {
        if (v14)
        {
          v13 = v11;
          if (v14 != kCFCompareGreaterThan)
          {
            v15 = 0;
            v16 = v6 != 0;
LABEL_34:
            if (v16)
            {
              return -1;
            }

            else
            {
              return v15;
            }
          }
        }
      }
    }

    else if (v11)
    {
      v13 = v11;
    }

    v16 = v6 != 0;
    v15 = v13 != 0;
    if (!v6 || !v13)
    {
      goto LABEL_34;
    }

    v17 = CFDateCompare(v6, v13, 0);
    if (v17 == kCFCompareGreaterThan)
    {
      return -1;
    }

    else
    {
      return v17 == kCFCompareLessThan;
    }
  }

  return result;
}

BOOL sub_1000A0950(uint64_t a1, uint64_t a2)
{
  valuePtr = 0;
  if (a1 | a2)
  {
    v2 = -1;
  }

  else
  {
    v2 = 0;
  }

  if (a2)
  {
    v2 = 1;
  }

  if (a1 && a2)
  {
    v4 = sub_10000A540(a1, @"Strength");
    if (v4)
    {
      CFNumberGetValue(v4, kCFNumberFloatType, &valuePtr + 4);
    }

    v5 = sub_10000A540(a2, @"Strength");
    if (v5)
    {
      CFNumberGetValue(v5, kCFNumberFloatType, &valuePtr);
      v6 = *&valuePtr;
    }

    else
    {
      v6 = 0.0;
    }

    v2 = -1;
    if (*(&valuePtr + 1) <= v6)
    {
      return *(&valuePtr + 1) < v6;
    }
  }

  return v2;
}

uint64_t sub_1000A09FC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (!(a1 | a2))
  {
    return 0;
  }

  if (a1)
  {
    v7 = sub_100176434(a1);
    if (v7 == 1)
    {
      v8 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"NOI (1) '%@' is forced-fix", sub_10000A878(a1)}];
      }

      objc_autoreleasePoolPop(v8);
      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

    v25 = sub_10000FC60(a1);
    if (v25 == 1)
    {
      v26 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"NOI (1) '%@' has home-state", sub_10000A878(a1)}];
      }

      objc_autoreleasePoolPop(v26);
      v10 = 1;
    }

    else
    {
      v10 = 0;
    }

    v11 = CFDictionaryContainsKey(*(a1 + 16), @"PayloadUUID") != 0;
    v27 = sub_10000A540(a1, @"addedAt");
    if (!a2)
    {
      result = -1;
      if (v7 != 1 && v25 != 1)
      {
        return 0;
      }

      return result;
    }

    theDate = v27;
  }

  else
  {
    if (!a2)
    {
      return 0;
    }

    v10 = 0;
    v9 = 0;
    v11 = 0;
    theDate = 0;
  }

  v12 = sub_100176434(a2);
  if (v12 == 1)
  {
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"NOI (1) '%@' is forced-fix", sub_10000A878(a2)}];
    }

    objc_autoreleasePoolPop(v13);
  }

  v14 = sub_10000FC60(a2);
  if (v14 == 1)
  {
    v15 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"NOI (2) '%@' has home-state", sub_10000A878(a2)}];
    }

    objc_autoreleasePoolPop(v15);
  }

  v16 = CFDictionaryContainsKey(*(a2 + 16), @"PayloadUUID");
  v17 = sub_10000A540(a2, @"addedAt");
  if (a1 && a2)
  {
    if (v9 && v12 == 1)
    {
      v18 = sub_1000A1150(a1);
      v19 = sub_1000A1150(a2);
      v20 = CFDateCompare(v18, v19, 0);
      v21 = objc_autoreleasePoolPush();
      v22 = off_100298C40;
      if (v20 != kCFCompareLessThan)
      {
        if (off_100298C40)
        {
          v23 = sub_10000A878(a1);
          v24 = sub_10000A878(a2);
          [v22 WFLog:3 message:{"Both (%@) and (%@) force fixed. Preferred (1), the most recently force fixed: %@", v23, v24, sub_10000A878(a1), v70}];
        }

LABEL_27:
        objc_autoreleasePoolPop(v21);
        return -1;
      }

      if (off_100298C40)
      {
        v40 = sub_10000A878(a1);
        v41 = sub_10000A878(a2);
        [v22 WFLog:3 message:{"Both (%@) and (%@) force fixed. Preferred (2), the most recently force fixed: %@", v40, v41, sub_10000A878(a2), v70}];
      }

      goto LABEL_68;
    }

    if ((!v9 || !v16) && (!v11 || v12 != 1))
    {
      v44 = v12 == 1;
      if (!v9)
      {
        v44 = 1;
      }

      if (!v44)
      {
        v21 = objc_autoreleasePoolPush();
        v45 = off_100298C40;
        if (off_100298C40)
        {
          v46 = sub_10000A878(a1);
          [v45 WFLog:3 message:{"NOI (1) forced-fix: preferred (1) %@ over %@", v46, sub_10000A878(a2), v69, v70}];
        }

        goto LABEL_27;
      }

      if (v9 == 1 || v12 != 1)
      {
        if (v11 && !v16)
        {
          v21 = objc_autoreleasePoolPush();
          v49 = off_100298C40;
          if (off_100298C40)
          {
            v50 = sub_10000A878(a1);
            [v49 WFLog:3 message:{"NOI home-state: preferred (1) %@ (as it's profile based) over %@", v50, sub_10000A878(a2), v69, v70}];
          }

          goto LABEL_27;
        }

        if (v11 || !v16)
        {
          if (v11 && v16)
          {
            if (theDate)
            {
              if (!v17)
              {
                v21 = objc_autoreleasePoolPush();
                v64 = off_100298C40;
                if (off_100298C40)
                {
                  v65 = sub_10000A878(a1);
                  [v64 WFLog:3 message:{"NOI home-state: preferred (1) %@ over %@ (which has no kWiFiPreferenceAddedAtKey)", v65, sub_10000A878(a2), v69, v70}];
                }

                goto LABEL_27;
              }

              v53 = CFDateCompare(theDate, v17, 0);
              v21 = objc_autoreleasePoolPush();
              v54 = off_100298C40;
              if (v53 != kCFCompareLessThan)
              {
                if (off_100298C40)
                {
                  v55 = sub_10000A878(a1);
                  v56 = sub_10000A878(a2);
                  v57 = sub_10000A878(a1);
                  [v54 WFLog:3 message:{"NOI home-state: preferred (1) %@ over %@. %@ was added after %@", v55, v56, v57, sub_10000A878(a2)}];
                }

                goto LABEL_27;
              }

              if (off_100298C40)
              {
                v66 = sub_10000A878(a2);
                v67 = sub_10000A878(a1);
                v68 = sub_10000A878(a2);
                [v54 WFLog:3 message:{"NOI home-state: preferred (2) %@ over %@. %@ was added after %@", v66, v67, v68, sub_10000A878(a1)}];
              }
            }

            else
            {
              v21 = objc_autoreleasePoolPush();
              v62 = off_100298C40;
              if (off_100298C40)
              {
                v63 = sub_10000A878(a2);
                [v62 WFLog:3 message:{"NOI home-state: preferred (2) %@ over %@ (which has no kWiFiPreferenceAddedAtKey)", v63, sub_10000A878(a1), v69, v70}];
              }
            }
          }

          else
          {
            if (v10 && v14 != 1)
            {
              v21 = objc_autoreleasePoolPush();
              v58 = off_100298C40;
              if (off_100298C40)
              {
                v59 = sub_10000A878(a1);
                [v58 WFLog:3 message:{"NOI home-state: preferred (1) %@ over %@", v59, sub_10000A878(a2), v69, v70}];
              }

              goto LABEL_27;
            }

            if (v10 == 1 || v14 != 1)
            {
              if (a3)
              {
                *a3 = v10;
              }

              return 0;
            }

            v21 = objc_autoreleasePoolPush();
            v60 = off_100298C40;
            if (off_100298C40)
            {
              v61 = sub_10000A878(a2);
              [v60 WFLog:3 message:{"NOI home-state: Preferred (2) %@ over %@", v61, sub_10000A878(a1), v69, v70}];
            }
          }
        }

        else
        {
          v21 = objc_autoreleasePoolPush();
          v51 = off_100298C40;
          if (off_100298C40)
          {
            v52 = sub_10000A878(a2);
            [v51 WFLog:3 message:{"NOI home-state: preferred (2) %@ (as it's profile based) over %@", v52, sub_10000A878(a1), v69, v70}];
          }
        }
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        v47 = off_100298C40;
        if (off_100298C40)
        {
          v48 = sub_10000A878(a2);
          [v47 WFLog:3 message:{"NOI (2) forced-fix: Preferred (2) %@ over %@", v48, sub_10000A878(a1), v69, v70}];
        }
      }

LABEL_68:
      objc_autoreleasePoolPop(v21);
      return 1;
    }

    if (v9)
    {
      v28 = a1;
    }

    else
    {
      v28 = a2;
    }

    v29 = sub_1000A1150(v28);
    v30 = v11;
    if (v11)
    {
      v31 = a1;
    }

    else
    {
      v31 = a2;
    }

    v32 = sub_10000A540(v31, @"addedAt");
    v33 = CFDateCompare(v29, v32, 0);
    v34 = objc_autoreleasePoolPush();
    v35 = off_100298C40;
    if (v33 == kCFCompareLessThan)
    {
      if (off_100298C40)
      {
        v42 = sub_10000A878(v31);
        if (v30)
        {
          v43 = a2;
        }

        else
        {
          v43 = a1;
        }

        [v35 WFLog:3 message:{"NOI: Profile based network (%@) was added AFTER network was force fixed  (%@), prefer profile based ", v42, sub_10000A878(v43)}];
      }

      objc_autoreleasePoolPop(v34);
      v38 = v9 == 0;
      v39 = -1;
    }

    else
    {
      if (off_100298C40)
      {
        v36 = sub_10000A878(v31);
        if (v30)
        {
          v37 = a2;
        }

        else
        {
          v37 = a1;
        }

        [v35 WFLog:3 message:{"NOI: Profile based network (%@) was added BEFORE network was force fixed (%@), prefer force fixed network ", v36, sub_10000A878(v37)}];
      }

      objc_autoreleasePoolPop(v34);
      v38 = v9 == 0;
      v39 = 1;
    }

    if (v38)
    {
      return v39;
    }

    else
    {
      return -v39;
    }
  }

  else
  {
    if (v9 == 1)
    {
      result = -1;
    }

    else
    {
      result = 1;
    }

    if (v9 != 1 && v12 != 1)
    {
      result = v10 ? -1 : 1;
      if (v10 != 1 && v14 != 1)
      {
        return 0;
      }
    }
  }

  return result;
}

const void *sub_1000A1150(uint64_t a1)
{
  if (a1)
  {

    return sub_10000A540(a1, @"kWiFiNetworkLastHomeForceFixDateKey");
  }

  else
  {
    sub_100179040();
    return 0;
  }
}

void sub_1000A118C(uint64_t a1, int a2)
{
  v2 = &kCFBooleanTrue;
  if (!a2)
  {
    v2 = &kCFBooleanFalse;
  }

  sub_10000AD34(a1, @"HS20ProvisionedNetwork", *v2);
}

void sub_1000A11E8(uint64_t a1, int a2)
{
  v2 = &kCFBooleanTrue;
  if (!a2)
  {
    v2 = &kCFBooleanFalse;
  }

  sub_10000AD34(a1, @"HS20HomeOperatorNetwork", *v2);
}

const void *sub_1000A1210(uint64_t a1)
{
  result = sub_10000A540(a1, @"HS2NetworkBadge");
  if (!result)
  {

    return sub_1001768B4(a1);
  }

  return result;
}

void sub_1000A127C(uint64_t a1, const void *a2)
{
  if (sub_10000A540(a1, @"HS20GasResponse"))
  {
    sub_10000AD34(a1, @"HS20GasResponse", 0);
  }

  sub_10000AD34(a1, @"HS20GasResponse", a2);
}

void sub_1000A12E4(const void *a1, const void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v4 = sub_10000A878(a1);
      v5 = objc_autoreleasePoolPush();
      if (v4)
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: for network <%@>, modDate %@", "WiFiNetworkSetPasswordModificationDate", v4, a2}];
        }

        objc_autoreleasePoolPop(v5);

        sub_10000AD34(a1, @"WiFiNetworkPasswordModificationDate", a2);
      }

      else
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: null ssid", "WiFiNetworkSetPasswordModificationDate"}];
        }

        objc_autoreleasePoolPop(v5);
      }
    }

    else
    {
      sub_1001790AC();
    }
  }

  else
  {
    sub_100179118();
  }
}

const void *sub_1000A13F8(uint64_t a1)
{
  if (a1)
  {

    return sub_10000A540(a1, @"WiFiNetworkPasswordModificationDate");
  }

  else
  {
    sub_100179184();
    return 0;
  }
}

CFTypeRef sub_1000A1434(const void *a1)
{
  if (a1)
  {
    v1 = sub_10002A2C0(a1);

    return sub_1000A61CC(v1);
  }

  else
  {
    sub_1001791F0();
    return 0;
  }
}

const __CFDictionary *sub_1000A1470(uint64_t a1)
{
  result = CFDictionaryGetValue(*(a1 + 16), @"APPLE_DEVICE_IE");
  if (result)
  {
    Value = CFDictionaryGetValue(result, @"APPLE_DEVICE_IE_FEATURE_SUPPORTS_CARPLAY");
    return (Value && Value == kCFBooleanTrue);
  }

  return result;
}

BOOL sub_1000A14BC(uint64_t a1)
{
  v2 = sub_10000A540(a1, @"CHANNEL");
  v7 = -1431655766;
  v3 = sub_10000A540(a1, @"CHANNEL_FLAGS");
  if (v3)
  {
    valuePtr = 0;
    CFNumberGetValue(v3, kCFNumberIntType, &valuePtr);
    return (valuePtr >> 3) & 1;
  }

  else
  {
    CFNumberGetValue(v2, kCFNumberSInt32Type, &v7);
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s : Current channel %d\n", "WiFiNetworkIs24GHzNetwork", v7}];
    }

    objc_autoreleasePoolPop(v5);
    return v7 - 1 < 0xE;
  }
}

uint64_t sub_1000A158C(uint64_t a1)
{
  v2 = sub_10000A540(a1, @"CARPLAY_NETWORK");
  if (v2 && CFEqual(v2, kCFBooleanTrue))
  {
    if (sub_10000A540(a1, @"lastJoined") || a1 && CFDictionaryContainsKey(*(a1 + 16), @"PayloadUUID"))
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  if (sub_10000AFE4(a1))
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

void sub_1000A1628(uint64_t a1)
{
  sub_10000AD34(a1, @"CARPLAY_NETWORK", 0);

  sub_10000AD34(a1, @"CARPLAY_UUID", 0);
}

const void *sub_1000A1678(uint64_t a1, const __CFString *a2)
{
  if (!a1)
  {
    sub_100179478();
    return 0;
  }

  if (!a2)
  {
    sub_10017940C();
    return 0;
  }

  v4 = sub_10000A540(a1, @"BSSID");
  if (!v4)
  {
    sub_1001793A0();
    return 0;
  }

  if (CFStringCompare(a2, v4, 0) == kCFCompareEqualTo)
  {
    result = sub_10000A540(a1, @"LEAKY_AP_LEARNED_DATA");
    if (!result)
    {
      return result;
    }

    goto LABEL_14;
  }

  v5 = sub_10000A540(a1, @"networkKnownBSSListKey");
  if (!v5)
  {
    sub_100179334();
    return 0;
  }

  v6 = v5;
  Count = CFArrayGetCount(v5);
  if (!Count)
  {
    sub_1001792C8();
    return 0;
  }

  v8 = Count;
  if (Count < 1)
  {
    return 0;
  }

  v9 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
    if (ValueAtIndex)
    {
      v11 = ValueAtIndex;
      Value = CFDictionaryGetValue(ValueAtIndex, @"BSSID");
      if (CFStringCompare(a2, Value, 0) == kCFCompareEqualTo)
      {
        break;
      }
    }

    if (v8 == ++v9)
    {
      return 0;
    }
  }

  result = CFDictionaryGetValue(v11, @"LEAKY_AP_LEARNED_DATA");
  if (result)
  {
LABEL_14:
    Apple80211CopyLeakyAPStatus();
    return 0;
  }

  return result;
}

BOOL sub_1000A17C0(uint64_t a1, const __CFString *a2)
{
  v2 = sub_1000A1678(a1, a2);
  if (v2)
  {
    v3 = v2;
    valuePtr = -86;
    CFNumberGetValue(v2, kCFNumberSInt8Type, &valuePtr);
    v4 = valuePtr == 2;
    CFRelease(v3);
  }

  else
  {
    sub_1001794E4();
    return 0;
  }

  return v4;
}

uint64_t sub_1000A18CC(uint64_t a1)
{
  valuePtr = 0;
  v2 = sub_10000A540(a1, @"SaveDataMode");
  if (v2)
  {
    CFNumberGetValue(v2, kCFNumberSInt32Type, &valuePtr);
    v3 = valuePtr == 1;
    if (valuePtr)
    {
      return v3;
    }
  }

  else
  {
    v3 = 0;
  }

  if (sub_10000A604(a1) || sub_10009E958(a1) || sub_10000A7CC(a1))
  {
    return 1;
  }

  return v3;
}

double sub_1000A195C(uint64_t a1)
{
  valuePtr = 0.0;
  v1 = sub_10000A540(a1, @"NetworkQualityResponsiveness");
  if (v1)
  {
    CFNumberGetValue(v1, kCFNumberDoubleType, &valuePtr);
  }

  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: retrieved %.3f", "WiFiNetworkGetNetworkQualityResponsiveness", *&valuePtr}];
  }

  objc_autoreleasePoolPop(v2);
  return valuePtr;
}

const void *sub_1000A19EC(uint64_t a1)
{
  v1 = sub_10000A540(a1, @"NetworkQualityDate");
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: retrieved %@", "WiFiNetworkGetNetworkQualityDate", v1}];
  }

  objc_autoreleasePoolPop(v2);
  return v1;
}

void sub_1000A1A64(const void *a1, const void *a2, double a3)
{
  valuePtr = a3;
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: %@, %.3f %@", "WiFiNetworkSetNetworkQuality", sub_10000A878(a1), *&a3, a2}];
  }

  objc_autoreleasePoolPop(v6);
  v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &valuePtr);
  if (v7)
  {
    v8 = v7;
    sub_10000AD34(a1, @"NetworkQualityResponsiveness", v7);
    sub_10000AD34(a1, @"NetworkQualityDate", a2);
    CFRelease(v8);
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s CFNumberCreate failed", "WiFiNetworkSetNetworkQuality"}];
    }

    objc_autoreleasePoolPop(v9);
  }
}