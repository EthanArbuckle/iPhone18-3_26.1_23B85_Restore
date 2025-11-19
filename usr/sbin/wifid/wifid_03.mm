void sub_100032E70(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null request.", "WiFiDeviceManagerHandleUnchangedPowerBudgetValue"}];
    }

    goto LABEL_38;
  }

  v6 = objc_autoreleasePoolPush();
  if (!a1)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null device manager.", "WiFiDeviceManagerHandleUnchangedPowerBudgetValue"}];
    }

LABEL_38:
    objc_autoreleasePoolPop(v6);
    v17 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt : NULL Request or Null Device Manager", "WiFiDeviceManagerHandleUnchangedPowerBudgetValue"}];
    }

    objc_autoreleasePoolPop(v17);
    return;
  }

  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt : power budget resource is present and unchanged!.", "WiFiDeviceManagerHandleUnchangedPowerBudgetValue"}];
  }

  objc_autoreleasePoolPop(v6);
  if (*a3)
  {
    if (*a3 != 1)
    {
      return;
    }

    v7 = a3[1];
    if (!v7)
    {
      return;
    }

    if (a2)
    {
      v8 = sub_1000CE3C4(a1, *(v7 + 16), *(v7 + 24), *(v7 + 8), *(v7 + 40), *(v7 + 48));
      if (!v8)
      {
        goto LABEL_22;
      }

      v9 = *(v7 + 8);
      if (!v9)
      {
        goto LABEL_22;
      }

      v10 = v8;
      v11 = *(v7 + 16);
      v12 = *(v7 + 40);
      v13 = a1;
    }

    else
    {
      v9 = *(v7 + 8);
      if (!v9)
      {
LABEL_22:
        v14 = *(v7 + 16);
        if (v14)
        {
          CFRelease(v14);
          *(v7 + 16) = 0;
        }

        v15 = *(v7 + 24);
        if (v15)
        {
          CFRelease(v15);
          *(v7 + 24) = 0;
        }

        v16 = *(v7 + 48);
        if (v16)
        {
          CFRelease(v16);
        }

        free(v7);
        return;
      }

      v11 = *(v7 + 16);
      v12 = *(v7 + 40);
      v13 = a1;
      v10 = 4294963390;
    }

    v9(v13, v11, v10, 0, 0, v12);
    goto LABEL_22;
  }

  if (a2 && *(a1 + 3361))
  {
    *(a1 + 192) = 9;
    if (_os_feature_enabled_impl())
    {

      sub_100019814(a1, 0x17uLL);
    }

    else
    {
      [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];

      sub_1000BD310(a1, 2, "WiFiDeviceManagerAutoAssociateStart");
    }
  }
}

void sub_100033124(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_100006F88(*(a1 + 64));
    v3 = sub_100015EB8();

    sub_100033170(v3, v4, a2);
  }
}

void sub_100033170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 72;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v6 = 0;
  if (!sub_10000E6B0(*(a1 + 176), &v8, &v7, &v6) && *(v8 + 56) == 1)
  {
    v5 = objc_autoreleasePoolPush();
    if (a3)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: Starting %d second(s) timer to clear pending command type %d", "WiFiDeviceClearPendingCommand", 1, *v8}];
      }

      objc_autoreleasePoolPop(v5);
      sub_100028E5C(*(a1 + 176), a3);
    }

    else
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: Clearing pending command type %d immediately", "WiFiDeviceClearPendingCommand", *v8}];
      }

      objc_autoreleasePoolPop(v5);
      sub_100061858(a1, 89);
    }
  }
}

BOOL sub_100033278()
{
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  *__big = 0u;
  v3 = 0u;
  v1 = 255;
  sysctlbyname("kern.wakereason", __big, &v1, 0, 0);
  if (!__big[0])
  {
    return 0;
  }

  if (strcasestr(__big, "wlan"))
  {
    return 1;
  }

  return strcasestr(__big, "wifibt") != 0;
}

uint64_t sub_100033358(unsigned __int8 *cf, uint64_t a2)
{
  if (!cf)
  {
    sub_100142784();
    return 4294963396;
  }

  if (cf[168] == a2)
  {
    sub_100142714(a2);
    return 4294963396;
  }

  cf[168] = a2;
  if (a2)
  {
    *(cf + 11) = CFAbsoluteTimeGetCurrent();
  }

  else
  {
    CFRetain(cf);
    dispatch_async_f(*(cf + 366), cf, sub_100043E8C);
  }

  result = 0;
  cf[185] = 0;
  *(cf + 24) = 0;
  *(cf + 37) = 0;
  return result;
}

const __CFNumber *sub_1000333E8(uint64_t a1, void *a2)
{
  result = sub_10000A540(a1, a2);
  if (result)
  {
    v4 = result;
    v5 = CFGetTypeID(result);
    if (v5 == CFNumberGetTypeID())
    {
      valuePtr = -1431655766;
      if (CFNumberGetValue(v4, kCFNumberIntType, &valuePtr))
      {
        return valuePtr;
      }

      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: out of range value for key %@", "WiFiNetworkGetCIntProperty", a2}];
      }

      objc_autoreleasePoolPop(v6);
    }

    else if (v5 == CFBooleanGetTypeID())
    {
      return (v4 == kCFBooleanTrue);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1000334C0(const void *a1, const void *a2, uint64_t a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    if (!sub_10000AFE4(a1) || !sub_10000AFE4(a2))
    {
      return 0;
    }

    v8 = sub_10000A878(a1);
    v9 = sub_10000A878(a2);
    v10 = sub_10000A540(a1, @"HS20AccountName");
    v11 = sub_10000A540(a2, @"HS20AccountName");
    v12 = sub_100176938(a1);
    v13 = sub_100176938(a2);
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: HS20 - ssid1: %@, account1: %@, domain1: %@; ssid2: %@, account2: %@, domain2: %@, GAS check: %d", "__WiFiIsSameHS20Account", v8, v10, v12, v9, v11, v13, a3}];
    }

    objc_autoreleasePoolPop(v14);
    if (v8 && v11 && CFStringCompare(v8, v11, 0) == kCFCompareEqualTo || v9 && v10 && CFStringCompare(v9, v10, 0) == kCFCompareEqualTo)
    {
      return 1;
    }

    if (v10 && v11 && v12 && v13 && CFStringCompare(v12, v13, 0) == kCFCompareEqualTo)
    {
      v15 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: found matching domain %@ on two accounts. Accounts are %@ and %@", "__WiFiIsSameHS20Account", v12, v10, v11, v18}];
      }
    }

    else
    {
      if (!a3)
      {
        v15 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Skip GAS content check for domainName %@ and domainName %@", "__WiFiIsSameHS20Account", v12, v13}];
        }

        v3 = 0;
        goto LABEL_24;
      }

      sub_100176A90();
      if (!v16)
      {
        sub_100176A90();
        if (!v17)
        {
          return 0;
        }
      }

      v15 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: HS20 - found matching attribute in GAS response - ssid1: %@, account1 %@; ssid2: %@, account: %@", "__WiFiIsSameHS20Account", v8, v10, v9, v11}];
      }
    }

    v3 = 1;
LABEL_24:
    objc_autoreleasePoolPop(v15);
  }

  return v3;
}

void sub_100033724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 4216);
    if (v4)
    {
      v6 = *(a1 + 4224);

      v4(a1, a2, v6, a3);
    }
  }

  else
  {
    sub_1001567AC();
  }
}

void sub_100033768(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4)
{
  if (a3)
  {
    v6 = *(a3 + 4360);
    if (v6)
    {
      v6(a3, a2, *(a3 + 4368), a4);
    }

    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v9[12] = v7;
    v8 = v7;
    *v9 = v7;
    sub_100033838(*(a3 + 120), a4);
    sub_100033C88(*(a3 + 120), &v8);
    if (arc4random_uniform(0x63u) <= 1)
    {
      sub_1000C5474(a3, &v8);
    }

    if (*(a3 + 3912) != BYTE3(v8))
    {
      sub_1000C5210(a3, &v8);
    }
  }
}

void sub_100033838(uint64_t a1, const __CFDictionary *a2)
{
  value = 0;
  v31 = 0;
  valuePtr = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v32 = 0;
  v33 = 0;
  v23 = 0;
  if (a1 && a2)
  {
    v4 = sub_100034FCC(a1, @"LAST_OBSS_STATS_TIME");
    if (v4)
    {
      v4 = v31;
    }

    v5 = sub_100034FCC(v4, @"SHOULD_APPLY_OBSS_MIT");
    if (v5)
    {
      v5 = v31;
      if (v31)
      {
        v5 = CFNumberGetValue(v31, kCFNumberSInt8Type, &v28 + 1);
      }
    }

    v6 = sub_100034FCC(v5, @"IS_OBSS_MIT_APPLIED");
    if (v6)
    {
      v6 = v31;
      if (v31)
      {
        v6 = CFNumberGetValue(v31, kCFNumberSInt8Type, &v28);
      }
    }

    v7 = sub_100034FCC(v6, @"CURRENT_OP_BW");
    if (v7)
    {
      v7 = v31;
      if (v31)
      {
        v7 = CFNumberGetValue(v31, kCFNumberSInt8Type, &v27 + 1);
      }
    }

    v8 = sub_100034FCC(v7, @"RECOMM_OBSS_MIT_BW");
    if (v8)
    {
      v8 = v31;
      if (v31)
      {
        v8 = CFNumberGetValue(v31, kCFNumberSInt8Type, &v27);
      }
    }

    v9 = sub_100034FCC(v8, @"OBSS_RX_PLCP_ERR");
    if (v9)
    {
      v9 = v31;
      if (v31)
      {
        v9 = CFNumberGetValue(v31, kCFNumberSInt32Type, &v26);
      }
    }

    v10 = sub_100034FCC(v9, @"OBSS_RX_BAD_FCS_ERR");
    if (v10)
    {
      v10 = v31;
      if (v31)
      {
        v10 = CFNumberGetValue(v31, kCFNumberSInt32Type, &v25);
      }
    }

    v11 = sub_100034FCC(v10, @"OBSS_RX_FRAMES");
    if (v11)
    {
      v11 = v31;
      if (v31)
      {
        v11 = CFNumberGetValue(v31, kCFNumberSInt32Type, &v24 + 4);
      }
    }

    if (sub_100034FCC(v11, @"OBSS_RX_PER_PCT") && v31)
    {
      CFNumberGetValue(v31, kCFNumberSInt32Type, &v24);
    }

    if (CFDictionaryGetValueIfPresent(a2, @"OBSS_PWREST_CORE0", &value) && value && CFArrayGetCount(value) >= 1)
    {
      v12 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(value, v12);
        v31 = ValueAtIndex;
        if (ValueAtIndex)
        {
          CFNumberGetValue(ValueAtIndex, kCFNumberSInt8Type, &v33 + v12);
        }

        ++v12;
      }

      while (v12 < CFArrayGetCount(value));
    }

    if (CFDictionaryGetValueIfPresent(a2, @"OBSS_PWREST_CORE1", &value) && value && CFArrayGetCount(value) >= 1)
    {
      v14 = 0;
      do
      {
        v15 = CFArrayGetValueAtIndex(value, v14);
        v31 = v15;
        if (v15)
        {
          CFNumberGetValue(v15, kCFNumberSInt8Type, &v32 + v14);
        }

        ++v14;
      }

      while (v14 < CFArrayGetCount(value));
    }

    if (!CFDictionaryGetValueIfPresent(a2, @"OBSS_MIT_SOI", &value) || !value || CFArrayGetCount(value) < 1)
    {
      goto LABEL_51;
    }

    v16 = 0;
    do
    {
      v17 = CFArrayGetValueAtIndex(value, v16);
      v31 = v17;
      if (v17)
      {
        CFNumberGetValue(v17, kCFNumberSInt8Type, &v23 + v16);
      }

      ++v16;
    }

    while (v16 < CFArrayGetCount(value));
    if (!v23)
    {
LABEL_51:
      LOBYTE(v23) = *(a1 + 2808);
      HIBYTE(v23) = *(a1 + 2812);
    }

    v18 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s OBSS MIT -> time = %u sec, shouldApply = %u, IsApplied = %u, currBw = %u, mitBw = %u, plcp %u, fcs %u, rxframes %u rxPer %u%%\n", "WiFiLQAMgrObssMitInfoNotify", valuePtr, HIBYTE(v28), v28, HIBYTE(v27), v27, v26, v25, HIDWORD(v24), v24}];
    }

    objc_autoreleasePoolPop(v18);
    v19 = objc_autoreleasePoolPush();
    v20 = sub_100008340();
    if (v20)
    {
      [v20 WFLog:4 message:{"%s OBSS MIT -> soi (%d, %d), pwr0 (%d, %d, %d, %d, %d, %d, %d, %d)\n", "WiFiLQAMgrObssMitInfoNotify", v23, SHIBYTE(v23), v33, SBYTE1(v33), SBYTE2(v33), SBYTE3(v33), SBYTE4(v33), SBYTE5(v33), SBYTE6(v33), SHIBYTE(v33)}];
    }

    objc_autoreleasePoolPop(v18);
    *(a1 + 2998) = HIBYTE(v27);
    *(a1 + 2997) = v28;
    *(a1 + 3016) = valuePtr;
    *(a1 + 2999) = v27;
    v21 = HIDWORD(v24);
    *(a1 + 3004) = v25;
    *(a1 + 3008) = v21;
    *(a1 + 3012) = v24;
    *(a1 + 3000) = v26;
    *(a1 + 2996) = HIBYTE(v28);
    *(a1 + 3036) = v23;
    v22 = v32;
    *(a1 + 3020) = v33;
    *(a1 + 3028) = v22;
  }
}

__n128 sub_100033C88(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 2996);
  v3 = *(a1 + 3012);
  *(a2 + 28) = *(a1 + 3024);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_100033CA8(uint64_t a1)
{
  v52 = 0;
  valuePtr = 0;
  v4 = 0.0;
  v51 = 0;
  if (!a1 || !*(a1 + 653) || !*(a1 + 654))
  {
    goto LABEL_15;
  }

  v6 = +[WiFiRoamManager sharedWiFiRoamManager];
  v7 = v6;
  if (!v6)
  {
    sub_10000FDA8();
    goto LABEL_16;
  }

  v8 = [v6 roamState];
  if (!v8 || !*(a1 + 3257) || (v1 = v8, Current = CFAbsoluteTimeGetCurrent(), (Value = CFDictionaryGetValue(v1, @"ROAM_SCAN_COUNT")) == 0) || (CFNumberGetValue(Value, kCFNumberIntType, &valuePtr + 4), (v11 = CFDictionaryGetValue(v1, @"ROAM_SCAN_AGE")) == 0))
  {
LABEL_15:
    sub_10000FDA8();
    v7 = 0;
LABEL_16:
    v16 = 0;
LABEL_17:
    v17 = 1;
    goto LABEL_18;
  }

  CFNumberGetValue(v11, kCFNumberFloatType, &v51);
  [v7 lastRoamStateTs];
  v4 = Current - v12;
  if ([v7 isLastRoamDueToBeaconLost])
  {
    v13 = sub_100014994(a1);
    v14 = objc_autoreleasePoolPush();
    v15 = sub_100029EC4();
    if (v13 && v4 <= 10.0)
    {
      if (v15)
      {
        [v15 WFLog:3 message:{"%s: latest roam was due to beacon lost, skip waiting for roam for trigger disconnect", "__WiFiLQAMgrCheckForPossibleRoam"}];
      }

      sub_10000FDA8();
      v16 = 0;
      v17 = 0;
      goto LABEL_35;
    }

    if (v15)
    {
      [v15 WFLog:3 message:{"%s: No real time app or current beacon loss roam was not preceded by roam attempt. Waiting for roam ...\n", "__WiFiLQAMgrCheckForPossibleRoam"}];
    }

    sub_10000FDA8();
    v16 = 0;
LABEL_34:
    v17 = 1;
    goto LABEL_35;
  }

  v16 = sub_100140854(a1);
  v21 = sub_100014994(a1);
  v3 = *(a1 + 248);
  if (!v21)
  {
    v2 = 0;
    v7 = 0;
    goto LABEL_17;
  }

  v22 = 0.0;
  if (*(a1 + 653) && *(a1 + 654) && *(a1 + 3257) && (v23 = +[WiFiRoamManager sharedWiFiRoamManager](WiFiRoamManager, "sharedWiFiRoamManager")) != 0 && (v24 = v23, [v23 roamState]))
  {
    v25 = CFAbsoluteTimeGetCurrent();
    [v24 lastRoamStatusTs];
    v22 = v25 - v26;
    v27 = [v24 lastRoamTargetRssi];
    v28 = v27;
    v29 = 0;
    if (v22 < 6.0 && v27 <= -80)
    {
      v29 = [v24 didLastRoamSucceed];
    }
  }

  else
  {
    v29 = 0;
    v28 = 0;
  }

  v30 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s isRoamBad: %d, lastRoamAge: %2.2f, targetRssi: %ld", "__WiFiLQAMgrRecentRoamBad", v29, *&v22, v28}];
  }

  objc_autoreleasePoolPop(v30);
  if (v29)
  {
    v7 = 0;
    v17 = 0;
    v2 = 1;
    goto LABEL_18;
  }

  if (([v7 isLastRoamCacheValid] & 1) == 0)
  {
    v31 = objc_autoreleasePoolPush();
    v32 = sub_100029EC4();
    if (v32)
    {
      v33 = "%s: Last roamCache is invalid";
      v34 = 3;
LABEL_48:
      [v32 WFLog:v34 message:{v33, "__WiFiLQAMgrCheckForPossibleRoam"}];
    }

    v2 = 1;
    goto LABEL_34;
  }

  if (v4 > 10.0 || (v35 = CFDictionaryGetValue(v1, @"RSSI")) == 0)
  {
    v7 = 0;
    v2 = 1;
    goto LABEL_17;
  }

  CFNumberGetValue(v35, kCFNumberIntType, &valuePtr);
  v36 = CFDictionaryGetValue(v1, @"ROAM_CACHE");
  if (!v36 || (v1 = v36, Count = CFArrayGetCount(v36), Count < 1))
  {
    v7 = 0;
    v17 = 0;
    v2 = 1;
    goto LABEL_18;
  }

  v38 = Count;
  v39 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v1, v39);
    if (!ValueAtIndex)
    {
      v48 = objc_autoreleasePoolPush();
      v32 = sub_100029EC4();
      if (!v32)
      {
        goto LABEL_81;
      }

      v33 = "%s: roamCandidateDictRef is NULL!";
      goto LABEL_80;
    }

    v41 = ValueAtIndex;
    v42 = CFDictionaryGetValue(ValueAtIndex, @"RSSI");
    if (!v42)
    {
      v49 = objc_autoreleasePoolPush();
      v32 = sub_100029EC4();
      if (!v32)
      {
        goto LABEL_81;
      }

      v33 = "%s: roamCandidateRssi is NULL!";
LABEL_80:
      v34 = 4;
      goto LABEL_48;
    }

    CFNumberGetValue(v42, kCFNumberIntType, &v52 + 4);
    v43 = CFDictionaryGetValue(v41, @"AGE");
    if (!v43)
    {
      break;
    }

    CFNumberGetValue(v43, kCFNumberFloatType, &v52);
    if (HIDWORD(v52))
    {
      if (SHIDWORD(v52) >= -79 && v4 + (*&v52 / 1000.0) <= 10.0)
      {
        if (SHIDWORD(v52) > -76 || HIDWORD(v52) - valuePtr >= 5 && ((v45 = *(a1 + 192), v45 == 0.0) ? (v47 = 1) : (v46 = CFAbsoluteTimeGetCurrent(), v45 = *(a1 + 192), v47 = v46 - v45 < 5.0), v45 == 0.0 || *(a1 + 185) != 0 && v47))
        {
          v2 = 1;
          v7 = 1;
          v17 = 1;
          goto LABEL_18;
        }
      }
    }

    ++v39;
    v2 = 1;
    if (v38 == v39)
    {
      v7 = 0;
      v17 = 0;
      goto LABEL_18;
    }
  }

  v50 = objc_autoreleasePoolPush();
  v32 = sub_100029EC4();
  if (v32)
  {
    v33 = "%s: roamCandidateAge is NULL!";
    goto LABEL_80;
  }

LABEL_81:
  v2 = 1;
  v17 = 1;
LABEL_35:
  objc_autoreleasePoolPop(v1);
  v7 = 0;
LABEL_18:
  v18 = objc_autoreleasePoolPush();
  v19 = sub_100029EC4();
  if (v19)
  {
    [v19 WFLog:4 message:{"%s waitForRoam: %d, plausibleRoamCandidateFound: %d, lastScanAge: %2.2f, largeNetworkEnvironment: %d, isRealTimeApplication: %d, isEdgeBss: %d", "__WiFiLQAMgrCheckForPossibleRoam", v17, v7, *&v4, v16, v2, v3}];
  }

  objc_autoreleasePoolPop(v1);
  return v17;
}

uint64_t sub_100034234(uint64_t a1, const __CFDictionary *a2, int a3)
{
  v63 = 0;
  result = 0;
  valuePtr = 0;
  v65 = 0;
  if (!a1 || !a2)
  {
    return result;
  }

  if (!*(a1 + 653) || !*(a1 + 654))
  {
    return 0;
  }

  Count = CFArrayGetCount(*(a1 + 256));
  if (Count <= 3)
  {
    v47 = objc_autoreleasePoolPush();
    v48 = off_100298C40;
    if (off_100298C40)
    {
      v49 = "Insufficient samples for walk out detection";
      v50 = 2;
LABEL_100:
      [v48 WFLog:v50 message:{v49, v51}];
      goto LABEL_101;
    }

    goto LABEL_101;
  }

  v7 = Count;
  Value = CFDictionaryGetValue(a2, @"RSSI");
  if (!Value)
  {
    v47 = objc_autoreleasePoolPush();
    v48 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_101;
    }

    v51 = "__WiFiLQAMgrDetectWalkOut";
    v49 = "%s: LQAManager: rssiNumRef from lqmDict is NULL!";
LABEL_99:
    v50 = 4;
    goto LABEL_100;
  }

  CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  v9 = v7 - 1;
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 256), v9);
  if (!ValueAtIndex)
  {
    v47 = objc_autoreleasePoolPush();
    v48 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_101;
    }

    v51 = "__WiFiLQAMgrDetectWalkOut";
    v49 = "%s: LQAManager: paramDict is NULL!";
    goto LABEL_99;
  }

  v11 = ValueAtIndex;
  v12 = CFDictionaryGetValue(ValueAtIndex, @"RSSI");
  if (!v12)
  {
    v47 = objc_autoreleasePoolPush();
    v48 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_101;
    }

    v51 = "__WiFiLQAMgrDetectWalkOut";
    v49 = "%s: LQAManager: rssiNumRef is NULL!";
    goto LABEL_99;
  }

  CFNumberGetValue(v12, kCFNumberSInt32Type, &v63 + 4);
  v13 = CFDictionaryGetValue(v11, @"motion-state");
  if (!v13)
  {
    v47 = objc_autoreleasePoolPush();
    v48 = off_100298C40;
    if (off_100298C40)
    {
      v51 = "__WiFiLQAMgrDetectWalkOut";
      v49 = "%s: LQAManager: motionStateRef is NULL!";
      goto LABEL_99;
    }

LABEL_101:
    objc_autoreleasePoolPop(v47);
    return 0;
  }

  v61 = a2;
  CFNumberGetValue(v13, kCFNumberSInt16Type, &v65 + 2);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0.0;
  do
  {
    v22 = CFArrayGetValueAtIndex(*(a1 + 256), --v9);
    if (!v22)
    {
      v43 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: LQAManager: paramDict is NULL!", "__WiFiLQAMgrDetectWalkOut", v52, v53, *&v54, v55, v56, v57, v58, v59, v60}];
      }

      goto LABEL_70;
    }

    v23 = v22;
    v24 = CFDictionaryGetValue(v22, @"RSSI");
    if (!v24)
    {
      v43 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: LQAManager: rssiNumRef is NULL!", "__WiFiLQAMgrDetectWalkOut", v52, v53, *&v54, v55, v56, v57, v58, v59, v60}];
      }

      goto LABEL_70;
    }

    CFNumberGetValue(v24, kCFNumberSInt32Type, &v63);
    v25 = CFDictionaryGetValue(v23, @"motion-state");
    if (!v25)
    {
      v43 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: LQAManager: motionStateRef is NULL!", "__WiFiLQAMgrDetectWalkOut", v52, v53, *&v54, v55, v56, v57, v58, v59, v60}];
      }

      goto LABEL_70;
    }

    CFNumberGetValue(v25, kCFNumberSInt16Type, &v65);
    v26 = v65;
    v27 = v63;
    if (HIWORD(v65) == 2 && v65 == 2)
    {
      if (v63 <= SHIDWORD(v63))
      {
        v18 = 0;
        v15 = 0;
        v14 = 0;
        v19 = (v19 + 1);
        if (v17)
        {
          v17 = v17;
        }

        else
        {
          v17 = HIDWORD(v63);
        }

        v16 = v63;
      }

      else if (v63 - HIDWORD(v63) >= 2)
      {
        v19 = 0;
        v17 = 0;
        v16 = 0;
        v29 = 0;
        v18 = (v18 + 1);
        if (v14)
        {
          v14 = v14;
        }

        else
        {
          v14 = HIDWORD(v63);
        }

        v15 = v63;
        goto LABEL_39;
      }

      v29 = v17 - v16;
      if (v19 > 2 && v29 > 11)
      {
        v36 = 1;
        v37 = 0.9;
        goto LABEL_51;
      }

      if (v19 >= 3 && v29 > 7)
      {
        v37 = 0.75;
        v36 = 1;
        goto LABEL_51;
      }

LABEL_39:
      v33 = v19 == 3 && v17 < -80;
      v34 = v29 > 4;
      v35 = !v33 || !v34;
      if (v33 && v34)
      {
        v36 = 1;
      }

      else
      {
        v36 = v20;
      }

      if (v35)
      {
        v37 = v21;
      }

      else
      {
        v37 = 0.5;
      }

LABEL_51:
      v38 = v18 > 2;
      v39 = v15 - v14 > 5;
      if (v38 && v39)
      {
        v20 = 0;
      }

      else
      {
        v20 = v36;
      }

      if (v38 && v39)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = v37;
      }

      v26 = 2;
      if (a3 && valuePtr <= -70)
      {
        v40 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v41 = "YES";
          if (!v20)
          {
            v41 = "NO";
          }

          v59 = v17;
          v60 = v16;
          v57 = v14;
          v58 = v19;
          v55 = v18;
          v56 = v15;
          v54 = v21;
          v52 = HIDWORD(v63);
          v53 = v41;
          sub_10004B898();
          [v42 WFLog:? message:?];
        }

        objc_autoreleasePoolPop(v40);
        v27 = v63;
        v26 = v65;
      }
    }

    HIDWORD(v63) = v27;
    HIWORD(v65) = v26;
  }

  while (v9 > 0);
  if (a3 && v20 && valuePtr <= -70)
  {
    v20 = 1;
    sub_10000ACBC(v61, @"userCoverageWalkout", 1);
    sub_100058A88(v61, @"userCoverageWalkoutConfidenceScore", v21);
    v43 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"User Walkout detected with score %f", *&v21}];
      v20 = 1;
    }

LABEL_70:
    objc_autoreleasePoolPop(v43);
  }

  if (a3)
  {
    v44 = v20 == 0;
  }

  else
  {
    v44 = 1;
  }

  v46 = !v44 && v16 < -70;
  if (v21 >= 0.5)
  {
    return v46;
  }

  else
  {
    return 0;
  }
}

void sub_100034774(uint64_t a1)
{
  *(a1 + 3216) = 1;
  v1 = sub_1000158B8(a1, 1, 0);
  if (v1)
  {
    v2 = v1;
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: ERROR: %d Failed to enable rapid LQM", "__WiFiLQAMgrSetRapidLQMInterval", v2}];
    }

    objc_autoreleasePoolPop(v3);
  }
}

void sub_10003480C()
{
  sub_10000D798();
  if (v0)
  {
    v1 = sub_100020030(v0);
    if (v1)
    {
      v2 = v1;
      if (CFArrayGetCount(v1) >= 1)
      {
        v3 = 0;
        do
        {
          v4 = sub_100021D58();
          ValueAtIndex = CFArrayGetValueAtIndex(v4, v5);
          v7 = sub_100010908(ValueAtIndex);
          if (v7 && sub_100009664(v7))
          {
            v8 = sub_100024B8C();
            v3 |= sub_1000348E8(v8);
          }

          sub_100010294();
        }

        while (!v9);
      }

      CFRelease(v2);
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:"%s: failed to get device managers"];
      }

      objc_autoreleasePoolPop(v10);
    }
  }

  sub_1000084B8();
}

uint64_t sub_1000348E8(uint64_t result)
{
  if (result)
  {
    return *(result + 3496);
  }

  return result;
}

void sub_10003490C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network record", "WiFiNetworkIsCarPlay"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100034978(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100034A1C;
  v5[3] = &unk_100262E18;
  objc_copyWeak(&v6, (a1 + 40));
  v5[4] = v3;
  dispatch_async(v4, v5);
  objc_destroyWeak(&v6);
}

void sub_100034A1C(uint64_t a1)
{
  if ([objc_loadWeak((a1 + 40)) virtualInterface])
  {
    [+[WiFiUsageMonitor sharedInstance](WiFiUsageMonitor setAwdlSequence:"setAwdlSequence:", *(a1 + 32)];
  }

  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

CFMutableDictionaryRef sub_100034A98(uint64_t a1)
{
  v2 = sub_100008684();
  result = CFDictionaryCreateMutable(v2, v3, v4, v5);
  if (result)
  {
    v7 = result;
    v8 = sub_10000A540(a1, @"RSSI");
    if (v8)
    {
      CFDictionaryAddValue(v7, @"RSSI", v8);
    }

    v9 = sub_10000A540(a1, @"BSSID");
    if (v9)
    {
      CFDictionaryAddValue(v7, @"BSSID", v9);
    }

    v10 = sub_10000A540(a1, @"CHANNEL");
    if (v10)
    {
      CFDictionaryAddValue(v7, @"CHANNEL", v10);
    }

    v11 = sub_10000A540(a1, @"CHANNEL_FLAGS");
    if (v11)
    {
      CFDictionaryAddValue(v7, @"CHANNEL_FLAGS", v11);
    }

    v12 = sub_10000A540(a1, @"AGE");
    if (v12)
    {
      CFDictionaryAddValue(v7, @"AGE", v12);
    }

    v13 = sub_10000A540(a1, @"IE");
    if (v13)
    {
      CFDictionaryAddValue(v7, @"IE", v13);
    }

    v14 = sub_10000A540(a1, @"80211D_IE");
    if (v14)
    {
      CFDictionaryAddValue(v7, @"80211D_IE", v14);
    }

    v15 = sub_10000A540(a1, @"AP_MODE");
    if (v15)
    {
      CFDictionaryAddValue(v7, @"AP_MODE", v15);
    }

    v16 = sub_10000A540(a1, @"SSID_STR");
    if (v16)
    {
      CFDictionaryAddValue(v7, @"SSID_STR", v16);
    }

    v17 = sub_10000A540(a1, @"SSID");
    if (v17)
    {
      CFDictionaryAddValue(v7, @"SSID", v17);
    }

    v18 = sub_1000086AC();
    v20 = sub_10000AD2C(v18, v19);
    CFRelease(v7);
    return v20;
  }

  return result;
}

__CFArray *sub_100034D5C(const __CFArray *a1, int a2, int a3)
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v7 = Mutable;
  if (a1)
  {
    if (Mutable)
    {
      Count = CFArrayGetCount(a1);
      if (Count >= 1)
      {
        v9 = Count;
        for (i = 0; i != v9; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
          if (ValueAtIndex)
          {
            v12 = sub_10000AD2C(kCFAllocatorDefault, ValueAtIndex);
            if (v12)
            {
              v13 = v12;
              if (a2 != a3)
              {
                v14 = sub_100034EEC(v12, @"RSSI") + 77.5;
                v15 = fabsf(sqrtf((v14 * v14) + 450.0));
                v16 = ((v14 / (v15 + v15)) + 0.5);
                sub_100034F14(v13, @"ScaledRSSI", v16);
                sub_100034F14(v13, @"ScaledRate", 1.0);
                sub_100034F14(v13, @"Strength", v16);
              }

              CFArrayAppendValue(v7, v13);
              CFRelease(v13);
            }
          }
        }
      }
    }
  }

  return v7;
}

const __CFNumber *sub_100034EEC(uint64_t a1, void *a2)
{
  v2 = sub_10000A540(a1, a2);

  return sub_10001CD48(v2);
}

void sub_100034F14(uint64_t a1, void *a2, double a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &valuePtr);
  if (v5)
  {
    v6 = v5;
    sub_10000AD34(a1, a2, v5);
    CFRelease(v6);
  }
}

uint64_t sub_100034FA4()
{

  return sub_1000A531C(v1, sub_100090654, v0);
}

uint64_t sub_100034FCC(uint64_t a1, const void *a2)
{

  return CFDictionaryGetValueIfPresent(v2, a2, (v3 - 80));
}

void sub_100034FF0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t context, uint64_t a14)
{
  context = 0xAAAAAAAAFFFFF0C1;
  a14 = v15;
  v17 = *(v14 + 144);

  CFSetApplyFunction(v17, sub_1000907C0, &context);
}

NSString *sub_100035044(void *a1)
{
  if (a1)
  {
    v2 = [a1 UTF8String];
    if (v2)
    {
      v3 = v2;
      v4 = ether_aton(v2);
      if (v4)
      {
        return [NSString stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", v4->octet[0], v4->octet[1], v4->octet[2], v4->octet[3], v4->octet[4], v4->octet[5]];
      }

      v8 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: badly formatted MAC address: %s", "_reformatMacAddress", v3}];
      }

      v7 = v8;
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: invalid MAC address: %@", "_reformatMacAddress", a1}];
      }

      v7 = v6;
    }

    objc_autoreleasePoolPop(v7);
  }

  return 0;
}

const void *sub_100035140(const void *result)
{
  if (result)
  {
    return sub_10000A540(result, @"SCAN_BSSID_LIST");
  }

  return result;
}

const __CFNumber *sub_100035154(const __CFNumber *result)
{
  if (result)
  {
    v1 = sub_10000A540(result, @"RSSI");
    return sub_10001CD48(v1);
  }

  return result;
}

uint64_t sub_10003522C(uint64_t result, int a2)
{
  v2 = *(result + 412);
  if (a2)
  {
    *(result + 412) = --v2;
  }

  if (!v2)
  {
    *(result + 416) = 0;
  }

  return result;
}

__CFArray *sub_10003524C(const __CFArray *a1, int a2)
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v5 = Mutable;
  if (a1)
  {
    if (Mutable)
    {
      Count = CFArrayGetCount(a1);
      if (Count >= 1)
      {
        v7 = Count;
        for (i = 0; v7 != i; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
          if (ValueAtIndex)
          {
            if (a2 == 1)
            {
              v10 = sub_10009D420(ValueAtIndex);
LABEL_10:
              v11 = v10;
              if (v10)
              {
                CFArrayAppendValue(v5, v10);
                CFRelease(v11);
              }

              continue;
            }

            if (!a2)
            {
              v10 = sub_100017C00(ValueAtIndex);
              goto LABEL_10;
            }
          }
        }
      }
    }
  }

  return v5;
}

void sub_10003531C()
{
  sub_10000FC44();
  v3 = v2;
  sub_10000842C();
  v4 = sub_10000FFF0();
  v5 = sub_10000D824(v4);
  if (v5)
  {
    v6 = v5;
    if ((sub_100010038(v5) & 1) == 0)
    {
      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v6);
        [sub_1000A9AFC() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v7);
      goto LABEL_20;
    }

    v8 = sub_100029DC0();
    if (!sub_100017AC4(v8, v9))
    {
LABEL_20:
      CFRelease(v6);
      goto LABEL_21;
    }

    v10 = sub_10002D09C();
    if (!sub_100010040(v10, v0))
    {
LABEL_19:
      CFRelease(v0);
      goto LABEL_20;
    }

    v11 = sub_100021D64();
    v12 = sub_100029A10(v11);
    if ((sub_10001083C(v6, v1) ^ v3) == 0x8000)
    {
      v13 = objc_autoreleasePoolPush();
      if ((v3 & 0x8000) != 0)
      {
        if (off_100298C40)
        {
          sub_10000715C(v6);
          sub_10002A0E4();
        }

        objc_autoreleasePoolPop(v13);
        v17 = sub_10005A2CC(v6);
        sub_10005A2C4(v6, v17 | 0x8000);
        sub_10007D430(v12);
        v16 = 1;
        v18 = sub_10009502C();
        if (sub_1000D6F38(v18))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (off_100298C40)
        {
          sub_10000715C(v6);
          sub_10002A0E4();
        }

        objc_autoreleasePoolPop(v13);
        v14 = sub_10005A2CC(v6);
        sub_10005A2C4(v6, v14 & 0xFFFFFFFFFFFF7FFFLL);
        sub_10015983C(v12);
        v15 = sub_10009502C();
        if (sub_1000D6F38(v15))
        {
          goto LABEL_18;
        }

        v16 = 0;
      }

      sub_100088734(v12, v6, 14, v16);
    }

LABEL_18:
    sub_1000355B8(v6, v1, v0, v3);
    v19 = sub_10002D3B4();
    sub_100035660(v19, v20, v3);
    goto LABEL_19;
  }

LABEL_21:
  v21 = sub_100029DC0();
  sub_100017CC0(v21, v22);
  sub_1000113F8();
}

void sub_100035520(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 64)
  {
    if (*(a1 + 39) == 1 && *(a1 + 40) == *(a1 + 52))
    {
      v3 = *(a1 + 12);
      v4 = *(a1 + 28);
      v5 = *(a1 + 56);
      sub_10003531C();
      *(a2 + 32) = v6;
      return;
    }

    v7 = -300;
  }

  else
  {
    v7 = -304;
  }

  *(a2 + 32) = v7;
  *(a2 + 24) = NDR_record;
}

void sub_1000355B8(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  valuePtr = a4;
  v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &valuePtr);
  v7 = v6;
  if (a3 && v6)
  {
    CFDictionarySetValue(*(a1 + 120), a3, v6);
LABEL_4:
    CFRelease(v7);
    return;
  }

  if (v6)
  {
    goto LABEL_4;
  }
}

void sub_100035634(uint64_t a1, int a2)
{
  v2 = a1;
  v3 = *(a1 + 120);
  if (a2)
  {
    v4 = sub_1000D2070;
  }

  else
  {
    v4 = 0;
    v2 = 0;
  }

  sub_1000356D4(v3, v4, v2);
}

void sub_100035660(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 == 0x4000000000)
  {
    context[1] = a2;
    v6 = 0xAAAAAAAAAAAAAAAALL;
    context[0] = a1;
    LOBYTE(v6) = *(a1 + 881);
    CFSetApplyFunction(*(a1 + 144), sub_100092094, context);
  }

  sub_100035634(a2, (a3 >> 46) & 1);
}

void sub_1000356D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    *(a1 + 632) = a2;
    *(a1 + 640) = a3;
  }

  else
  {
    sub_100142B94();
  }
}

void sub_100035700(uint64_t a1, uint64_t a2, const __CFArray *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v9 = *a6;
  v10 = sub_100060BB0(*(*a6 + 64));
  free(a6);
  v11 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Auto join scan completed (%d) with current state: %@", a5, sub_1000AA864(*(v9 + 3336))}];
  }

  objc_autoreleasePoolPop(v11);
  if (v10 == *(v9 + 3368))
  {
    sub_100191FA0(v9, a3);
    *(v9 + 1152) = a3;
    *(v9 + 1144) = a5;
    v13 = *(v9 + 3336);
    if (v13 <= 0xB)
    {
      if (((1 << v13) & 0xFDC) != 0)
      {
        if (a3 && CFArrayGetCount(a3))
        {
          if (CFArrayGetCount(a3) >= 1)
          {
            v14 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(a3, v14);
              v16 = *(v9 + 3584);
              v22.length = CFArrayGetCount(v16);
              v22.location = 0;
              LOBYTE(v16) = CFArrayContainsValue(v16, v22, ValueAtIndex);
              v17 = *(v9 + 3576);
              v23.length = CFArrayGetCount(v17);
              v23.location = 0;
              if (v16 | CFArrayContainsValue(v17, v23, ValueAtIndex))
              {
                v18 = sub_10000A878(ValueAtIndex);
                if (v18)
                {
                  v19 = v18;
                  v20 = sub_100009664(*(v9 + 64));
                  sub_100146540(v9, v20, v19);
                }
              }

              ++v14;
            }

            while (v14 < CFArrayGetCount(a3));
          }

          sub_100192190(v9, a3);
        }
      }

      else if (v13 != 5)
      {
        goto LABEL_14;
      }

      sub_1000B6EBC(v9);
    }

LABEL_14:
    *(v9 + 1152) = 0;
    return;
  }

  v12 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Ignorning old request.  CurrentCommand=%lld PendingCommand=%lld", v10, *(v9 + 3368)}];
  }

  objc_autoreleasePoolPop(v12);
}

void sub_100035920(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v9 = objc_autoreleasePoolPush();
  if (a4)
  {
    if ([a5 response])
    {
      v10 = [a5 response];
      CWFErrorDescription();
      v11 = CWFErrorWithDescription();
      v10[2](v10, v11, 0);
    }
  }

  else
  {
    v12 = [a5 info];
    v13 = [v12 objectForKeyedSubscript:CWFXPCScanParamsKey];
    if (_os_feature_enabled_impl())
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v14 = [v13 channels];
      v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v23;
        while (2)
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v23 != v17)
            {
              objc_enumerationMutation(v14);
            }

            if ([*(*(&v22 + 1) + 8 * i) band] == 2)
            {
              if ([v13 mergeScanResults])
              {
                sub_1000C5ADC(a1);
              }

              goto LABEL_16;
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      [v13 mergeScanResults];
    }

LABEL_16:
    v19 = [WiFiXPCManager __filteredScanResults:a3 scanParameters:v13];
    v20 = +[NSMutableDictionary dictionary];
    [v20 setObject:v19 forKeyedSubscript:CWFXPCResultKey];
    if ([a5 response])
    {
      v21 = [a5 response];
      v21[2](v21, 0, v20);
    }
  }

  objc_autoreleasePoolPop(v9);
}

void sub_100035B5C(uint64_t a1, int a2, uint64_t a3)
{
  v5 = a2 != 0;
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v7 = "FALSE";
    if (a2)
    {
      v7 = "TRUE";
    }

    [off_100298C40 WFLog:3 message:{"%s: builtInReceiver = %s", "__WiFiManagerAudioRouteCallback", v7}];
  }

  objc_autoreleasePoolPop(v6);
  if (*(a3 + 1560) != v5)
  {
    *(a3 + 1560) = v5;
    context[0] = a3;
    context[1] = 0xAAAAAAAA00000009;
    context[2] = 0;
    context[3] = 1;
    context[4] = 0;
    CFSetApplyFunction(*(a3 + 112), sub_100003B88, context);
    v8 = *(a3 + 1564);
    if (v8 != -1)
    {
      [*(a3 + 2656) setSARState:v8 != 0 builtInReceiverOn:*(a3 + 1560) != 0];
    }
  }
}

void sub_1000361A4(uint64_t a1)
{
  if (a1)
  {
    sub_1000361B4(a1, 1);
  }
}

void sub_1000361B4(uint64_t a1, int a2)
{
  v4 = a1 + 4096;
  Count = CFArrayGetCount(*(a1 + 5024));
  if (a2 && *(a1 + 5000))
  {
    *(v4 + 952) = 1;
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"scanCache: Defering purging scan cache"];
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"scanCache: Purging scan cache"];
    }

    objc_autoreleasePoolPop(v7);
    if (Count)
    {
      CFArrayRemoveAllValues(*(a1 + 5024));
    }

    v8 = *(a1 + 5000);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 5000) = 0;
    }

    v9 = *(a1 + 5008);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 5008) = 0;
    }

    *(v4 + 920) = 0;
  }
}

void sub_1000362B0(void *a1)
{
  if (!a1)
  {
    sub_1001AC098();
  }

  v2 = CFGetTypeID(a1);
  v3 = qword_100298B08;
  if (!qword_100298B08)
  {
    pthread_once(&stru_100297D00, sub_10010DA90);
    v3 = qword_100298B08;
  }

  if (v2 != v3)
  {
    sub_1001AC06C();
  }

  v5 = a1 + 2;
  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
    *v5 = 0;
  }

  v6 = a1[3];
  if (v6)
  {
    CFRelease(v6);
  }

  *v5 = 0;
  a1[3] = 0;
  a1[4] = 0;
}

void sub_100036348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = +[WiFiRoamManager sharedWiFiRoamManager];
    if (v7)
    {
      [v7 setRoamStart:a4 forInterface:a2];
      v8 = *(a3 + 120);

      sub_1000363D8(v8);
    }

    else
    {
      sub_100199294();
    }
  }

  else
  {
    sub_100199300();
  }
}

void sub_1000363D8(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      if (CFArrayGetCount(v2))
      {
        v3 = *(a1 + 152);
        if (v3)
        {
          CFRelease(v3);
          *(a1 + 152) = 0;
        }

        v8 = 0u;
        v9 = 0u;
        *bytes = 0u;
        v4 = sub_1000141C0(a1, bytes);
        v5 = objc_autoreleasePoolPush();
        if (v4)
        {
          if (off_100298C40)
          {
            [off_100298C40 WFLog:2 message:{"%s: TxFail:%d TxFrames:%d TxReTrans:%d rxFrames:%d FwTxFail:%d FwTxFrames:%d FwTxReTrans:%d beaconSched:%d beaconRecv:%d rssi:%d ccaTotal:%d ccaSelf:%d ccaOther:%d ccaInterference:%d", "WiFiLQAMgrCaptureInstantaneousLQForMetricsReporting", *bytes, *&bytes[4], *&bytes[8], *&bytes[12], v8, DWORD1(v8), DWORD2(v8), HIDWORD(v8), v9, DWORD2(v9), SBYTE12(v9), SBYTE13(v9), SBYTE14(v9), SHIBYTE(v9)}];
          }

          objc_autoreleasePoolPop(v5);
          v6 = CFDataCreate(kCFAllocatorDefault, bytes, 48);
          *(a1 + 152) = v6;
          if (!v6)
          {
            sub_1001438B8();
          }
        }

        else
        {
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s: Failed to extract metrics from Lqm, exiting!", "WiFiLQAMgrCaptureInstantaneousLQForMetricsReporting"}];
          }

          objc_autoreleasePoolPop(v5);
        }
      }

      else
      {
        sub_100143918();
      }
    }

    else
    {
      sub_100036534();
    }
  }

  else
  {
    sub_100143984();
  }
}

void sub_100036534()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: LQAManager: LQM table is NULL", "WiFiLQAMgrCaptureInstantaneousLQForMetricsReporting"}];
  }

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1000365A0(uint64_t a1)
{
  valuePtr = 0;
  if (!a1)
  {
    sub_1000365F8();
    return 0;
  }

  v1 = sub_10000A540(a1, @"CHANNEL_WIDTH");
  if (!v1)
  {
    sub_100178FD4();
    return 0;
  }

  CFNumberGetValue(v1, kCFNumberSInt16Type, &valuePtr);
  return valuePtr;
}

void sub_1000365F8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkGetChannelWidthInMHz"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100036664(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1 && *(a1 + 24))
  {
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = -[AVAudioSessionRouteDescription outputs]([+[AVAudioSession sharedInstance](AVAudioSession currentRoute], "outputs");
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      while (2)
      {
        v7 = 0;
        do
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          if ([objc_msgSend(*(*(&v12 + 1) + 8 * v7) "portType")])
          {
            v8 = 1;
            goto LABEL_13;
          }

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v8 = 0;
LABEL_13:
    v9 = *(a1 + 16);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100035C5C;
    v10[3] = &unk_100260770;
    v10[4] = a1;
    v11 = v8;
    dispatch_async(v9, v10);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100036E0C(id a1)
{
  qword_100298440 = objc_alloc_init(WiFiSoftApStateMonitor);

  _objc_release_x1();
}

void sub_100037FD0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  *(v1 + 32) = 0;
}

void sub_100037FE0(uint64_t a1)
{
  v2 = +[NSDate date];
  [v2 timeIntervalSinceDate:*(*(a1 + 32) + 40)];
  v4 = v3;
  v5 = *(a1 + 48);

  if (v4 >= v5)
  {
    sub_100138210(a1, (a1 + 48));
LABEL_38:
    *(*(a1 + 32) + 65) = 0;
    [*(a1 + 32) _evaluationComplete:*(*(*(a1 + 40) + 8) + 24)];
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 65);
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v8 = *(v6 + 16);
    v9 = [v8 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v9)
    {
      v10 = v9;
      LODWORD(v11) = 0;
      if (v7)
      {
        v12 = 16;
      }

      else
      {
        v12 = 8;
      }

      v13 = *v41;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v41 != v13)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v40 + 1) + 8 * i);
          if (([v15 isSessionReliable:v12] & 1) == 0)
          {
            v20 = objc_autoreleasePoolPush();
            v21 = off_100298C40;
            if (off_100298C40)
            {
              v22 = [v15 description];
              [v21 WFLog:3 message:{"%s: session:%@ is not yet reliable for atleast %lu samples", "-[WiFiNWReliabilityMonitor waitForNetworkToBeReliableWithTimeout:withTimeout:withMgrCallback:]_block_invoke_2", v22, v12}];
            }

            objc_autoreleasePoolPop(v20);

            goto LABEL_25;
          }

          v16 = [v15 getSampleCount:1];
          v17 = v12 > v16;
          v12 -= v16;
          if (!v17)
          {

            *(*(*(a1 + 40) + 8) + 24) = 0;
            v31 = objc_autoreleasePoolPush();
            v32 = v31;
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: network is reliable!", "-[WiFiNWReliabilityMonitor waitForNetworkToBeReliableWithTimeout:withTimeout:withMgrCallback:]_block_invoke_2"}];
            }

            objc_autoreleasePoolPop(v32);
            goto LABEL_38;
          }

          v11 = (v11 + v16);
        }

        v10 = [v8 countByEnumeratingWithState:&v40 objects:v45 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v11 = 0;
    }

    v18 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v19 = 8;
      if (*(*(a1 + 32) + 65))
      {
        v19 = 16;
      }

      [off_100298C40 WFLog:3 message:{"%s Available samples: %d less than threshold: %d!", "-[WiFiNWReliabilityMonitor waitForNetworkToBeReliableWithTimeout:withTimeout:withMgrCallback:]_block_invoke_2", v11, v19}];
    }

    objc_autoreleasePoolPop(v18);
LABEL_25:
    *(*(a1 + 32) + 65) = 0;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v23 = *(*(a1 + 32) + 16);
    v24 = [v23 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = 0;
      v27 = 0;
      v28 = *v37;
      while (2)
      {
        v29 = 0;
        v30 = v27 + 1;
        v27 = &v25[v27];
        do
        {
          if (*v37 != v28)
          {
            objc_enumerationMutation(v23);
          }

          v26 += [*(*(&v36 + 1) + 8 * v29) getSampleCount:1];
          if (v26 > 0xF)
          {
            v27 = v30;
            goto LABEL_40;
          }

          ++v29;
          ++v30;
        }

        while (v25 != v29);
        v25 = [v23 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v25)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v27 = 0;
    }

LABEL_40:

    v33 = [*(*(a1 + 32) + 16) count];
    v34 = (v33 - v27);
    if (v33 != v27)
    {
      [*(*(a1 + 32) + 16) removeObjectsInRange:{v27, v34}];
      v35 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Discarded %lu sessions", "-[WiFiNWReliabilityMonitor waitForNetworkToBeReliableWithTimeout:withTimeout:withMgrCallback:]_block_invoke_2", v34}];
      }

      objc_autoreleasePoolPop(v35);
    }
  }
}

void sub_1000388F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

id sub_100038918(void *a1, void *a2, _BYTE *a3)
{
  result = [a2 data];
  if (result <= -76)
  {
    *(*(a1[4] + 8) + 24) = 0;
    *a3 = 1;
  }

  if (++*(*(a1[5] + 8) + 24) >= a1[6])
  {
    *a3 = 1;
  }

  return result;
}

void sub_100038B30(id a1)
{
  qword_100298458 = [[WiFiAIRAgent alloc] _initPrivate];

  _objc_release_x1();
}

void sub_100038C44(uint64_t a1)
{
  if (*(*(a1 + 32) + 25) == 1)
  {
    v2 = *(a1 + 40);
    if (v2 == 8 || v2 == 1)
    {
      v4 = objc_autoreleasePoolPush();
      v5 = off_100298C40;
      if (off_100298C40)
      {
        v6 = +[WiFiUserInteractionMonitor sharedInstance];
        [v5 WFLog:3 message:{"%s: realtime app state changed to %d", "-[WiFiAIRAgent _userInteractivityChangedCallback:]_block_invoke", objc_msgSend(v6, "isRealTimeAppActive")}];
      }

      objc_autoreleasePoolPop(v4);
      v7 = +[WiFiUserInteractionMonitor sharedInstance];
      v8 = [v7 isRealTimeAppActive];

      if ((v8 & 1) == 0)
      {
        [*(*(a1 + 32) + 8) terminateNetworkReliabilityEvaluation];
        v9 = *(a1 + 32);

        [v9 _evaluationComplete:5];
      }
    }
  }
}

void sub_100038FCC(id a1, void *a2, unint64_t a3)
{
  v4 = a2;
  v6 = v4;
  if (v4)
  {
    [v4 _userInteractivityChangedCallback:a3];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null agent", "-[WiFiAIRAgent waitForConfirmationWithTimeout:withBssEnvironment:withMgrCallback:]_block_invoke"}];
    }

    objc_autoreleasePoolPop(v5);
  }
}

id sub_10003905C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [v2 convertFromNWReliabilityMonitorResult:a2];

  return [v2 _evaluationComplete:v3];
}

uint64_t sub_100039398(uint64_t a1)
{
  qword_100298460 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_100039448(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 ambiguousSSIDs];
  v5 = objc_autoreleasePoolPush();
  v6 = off_100298C40;
  if (off_100298C40)
  {
    v7 = [@"AmbiguousSSIDs" UTF8String];
    v8 = [v4 description];
    [v6 WFLog:3 message:{"%s: %s\n", v7, objc_msgSend(v8, "UTF8String")}];
  }

  objc_autoreleasePoolPop(v5);
  v9 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100039584;
  block[3] = &unk_10025EB00;
  block[4] = *(a1 + 32);
  v12 = v4;
  v10 = v4;
  dispatch_sync(v9, block);
}

void sub_100039584(uint64_t a1)
{
  [*(a1 + 32) wifiManager];
  v2 = *(a1 + 40);

  sub_1001626FC();
}

void sub_100039ABC(id a1)
{
  qword_100298470 = objc_alloc_init(WiFiAnalyticsManager);

  _objc_release_x1();
}

void sub_100039E08(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceAnalyticsClient];

  if (v2)
  {
    v3 = [*(a1 + 32) deviceAnalyticsClient];
    v4 = [v3 adaptiveRoamingParamsForBSS:*(a1 + 40)];

    v2 = [v4 neighborChannels];
    v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 rssiRoamTrigger]);
    v6 = [v4 neighbors];
  }

  else
  {
    v6 = 0;
    v5 = &off_100281050;
  }

  v7 = +[NSMutableDictionary dictionary];
  v8 = v7;
  if (v2)
  {
    [v7 setObject:v2 forKey:@"ADAPTIVE_ROAM_CHANNELS_INFO"];
  }

  if (v6)
  {
    [v8 setObject:v6 forKey:@"SCAN_BSSID_LIST"];
  }

  [v8 setObject:v5 forKey:@"ADAPTIVE_ROAM_RSSI_TRIGGER"];
  if ([*(a1 + 32) wifiManager])
  {
    v9 = sub_10000EEE0([*(a1 + 32) wifiManager]);

    if (v9)
    {
      v10 = sub_10000EEE0([*(a1 + 32) wifiManager]);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100039FDC;
      v13[3] = &unk_10025EB00;
      v11 = v8;
      v12 = *(a1 + 32);
      v14 = v11;
      v15 = v12;
      dispatch_sync(v10, v13);
    }
  }
}

id sub_100039FDC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: request %@", "-[WiFiAnalyticsManager getAdaptiveRoamParams:ssid:]_block_invoke", *(a1 + 32)}];
  }

  objc_autoreleasePoolPop(v2);
  v3 = [*(a1 + 40) wifiManager];
  v4 = *(a1 + 32);
  sub_100164F24(v3);
  v5 = *(a1 + 40);

  return [v5 setRoamParamsQueryPending:0];
}

id sub_10003B09C(void *a1, const void *a2, void *a3)
{
  v33 = a1;
  if (objc_opt_class())
  {
    v5 = sub_10000A878(a2);
    v6 = objc_alloc_init(DASession);
    v7 = [DASession getDevicesWithFlags:8 session:v6 error:0];
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: devices found = '%@'", "__WiFiDeviceAccessGetAppAccessInfoForNetwork", v7}];
    }

    objc_autoreleasePoolPop(v8);
    if (v7)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      obj = v7;
      v9 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v9)
      {
        v10 = v9;
        v29 = a3;
        v30 = v7;
        v31 = v6;
        v11 = *v35;
        while (2)
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v35 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v34 + 1) + 8 * i);
            v14 = objc_autoreleasePoolPush();
            v15 = off_100298C40;
            if (off_100298C40)
            {
              v16 = [v13 SSID];
              [v15 WFLog:3 message:{"%s: device='%@' SSID='%@'", "__WiFiDeviceAccessGetAppAccessInfoForNetwork", v13, v16}];
            }

            objc_autoreleasePoolPop(v14);
            v17 = [v13 SSID];
            v18 = [v17 isEqualToString:v5];

            if (v18)
            {
              v19 = objc_autoreleasePoolPush();
              v20 = off_100298C40;
              if (off_100298C40)
              {
                v21 = [v13 appAccessInfoMap];
                [v20 WFLog:3 message:{"%s: appAccessInfoMap '%@'", "__WiFiDeviceAccessGetAppAccessInfoForNetwork", v21}];
              }

              objc_autoreleasePoolPop(v19);
              v22 = [v13 appAccessInfoMap];
              v23 = [v22 objectForKey:v33];

              if (v23)
              {
                v25 = v23;
                v6 = v31;
                if (v29)
                {
                  v26 = v13;
                  *v29 = v13;
                }

                v27 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: matching device found for '%@' with state = '%ld'", "__WiFiDeviceAccessGetAppAccessInfoForNetwork", v5, objc_msgSend(v25, "state")}];
                }

                objc_autoreleasePoolPop(v27);

                goto LABEL_28;
              }

              v24 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: matching device found for '%@' with no access info for bundle = '%@'", "__WiFiDeviceAccessGetAppAccessInfoForNetwork", v5, v33}];
              }

              objc_autoreleasePoolPop(v24);
            }
          }

          v10 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }

        v25 = 0;
        v6 = v31;
LABEL_28:
        v7 = v30;
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

void sub_10003D340(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Launching TapToRadar:errorType:%u", "-[WiFiSoftErrorManager WiFiSoftErrorReporting:deviceContext:displayString:]_block_invoke", *(a1 + 64)}];
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) launchTapToRadar:*(a1 + 64) displayString:*(a1 + 48) deviceContext:*(a1 + 56)];
  v3 = *(*(*(a1 + 40) + 8) + 24);
  if (v3)
  {
    CFRelease(v3);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void sub_10003D480(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Perform mitigation action: for Event:%u", *(a1 + 48)}];
  }

  objc_autoreleasePoolPop(v2);
  v3 = *(a1 + 48);
  if (v3 <= 3)
  {
    if (v3 != 1)
    {
      if (v3 != 2)
      {
        return;
      }

      sub_1000B1BFC(*(a1 + 40), 0);
      v6 = *(a1 + 32);
      v7 = 2;
      goto LABEL_13;
    }

    v4 = *(a1 + 32);
    v5 = 1;
LABEL_17:

    [v4 wifiSoftErrorsInProcessStateUnset:v5];
    return;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 32);
    v5 = 4;
    goto LABEL_17;
  }

  if (v3 != 8)
  {
    if (v3 != 16)
    {
      return;
    }

    v4 = *(a1 + 32);
    v5 = 16;
    goto LABEL_17;
  }

  sub_1000D5318(*(a1 + 40), 0, 0, 0, 0, 0);
  v6 = *(a1 + 32);
  v7 = 8;
LABEL_13:

  [v6 recordMitigation:v7];
}

id sub_10003EC9C(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 getErrorCounters];
  }

  else
  {
    sub_10013B380();
    v3 = 0;
  }

  return v3;
}

void sub_100040C5C(id a1)
{
  if (objc_opt_class())
  {
    qword_100298490 = objc_alloc_init(ManagedConfigWrapper);
  }
}

uint64_t sub_100040F60(uint64_t a1)
{
  sub_1001624B4(*(*(a1 + 32) + 16), *(a1 + 40));
  sub_100162558(*(*(a1 + 32) + 16), *(a1 + 41));
  sub_10015FDF4(*(*(a1 + 32) + 16), *(a1 + 42));
  v2 = *(*(a1 + 32) + 16);

  return sub_10008642C(v2);
}

void sub_1000410A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: failed to initialize ManagedConfiguration <%@>", "-[ManagedConfigWrapper MCInitialize]_block_invoke", a2}];
    }
  }

  else
  {
    [*(a1 + 32) setMcInitialized:1];
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: ManagedConfiguration initialized", "-[ManagedConfigWrapper MCInitialize]_block_invoke", v4}];
    }
  }

  objc_autoreleasePoolPop(v3);
}

id sub_100041204(uint64_t a1)
{
  [*(a1 + 32) MCInitialize];
  [*(a1 + 32) startMonitoring];
  v2 = *(a1 + 32);

  return [v2 MCSettingsDidChange:0];
}

uint64_t sub_1000417A8()
{
  result = qword_1002984A0;
  if (!qword_1002984A0)
  {
    pthread_once(&stru_100297388, sub_1000417F0);
    return qword_1002984A0;
  }

  return result;
}

uint64_t sub_1000417F0()
{
  result = _CFRuntimeRegisterClass();
  qword_1002984A0 = result;
  return result;
}

void sub_100041818(uint64_t a1, void *value)
{
  if (a1)
  {
    if (value)
    {
      CFDictionarySetValue(*(a1 + 16), @"PolicyUUID", value);
    }
  }
}

void sub_100041848(uint64_t a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  if (v3)
  {
    v4 = v3;
    CFDictionarySetValue(*(a1 + 16), @"PolicyType", v3);
    CFRelease(v4);
  }
}

uint64_t sub_1000418B0(uint64_t a1)
{
  v1 = 0xFFFFFFFFLL;
  valuePtr = -1;
  Value = CFDictionaryGetValue(*(a1 + 16), @"PolicyType");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
    return valuePtr;
  }

  return v1;
}

void sub_100041904(void *a1)
{
  if (!a1)
  {
    sub_10013C3A8();
  }

  v2 = CFGetTypeID(a1);
  v3 = qword_1002984A0;
  if (!qword_1002984A0)
  {
    pthread_once(&stru_100297388, sub_1000417F0);
    v3 = qword_1002984A0;
  }

  if (v2 != v3)
  {
    sub_10013C37C();
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
    a1[2] = 0;
  }
}

BOOL sub_100041984(uint64_t a1, uint64_t a2)
{
  Value = CFDictionaryGetValue(*(a1 + 16), @"PolicyUUID");
  v4 = CFDictionaryGetValue(*(a2 + 16), @"PolicyUUID");
  if (Value)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  return !v5 && CFStringCompare(Value, v4, 0) == kCFCompareEqualTo;
}

CFStringRef sub_100041A00(uint64_t a1, const __CFDictionary *a2)
{
  v4 = sub_1000418B0(a1);
  Value = CFDictionaryGetValue(*(a1 + 16), @"PolicyUUID");
  return CFStringCreateWithFormat(kCFAllocatorDefault, a2, @"%d %@", v4, Value);
}

CFStringRef sub_100041A70(uint64_t a1)
{
  v2 = sub_1000418B0(a1);
  Value = CFDictionaryGetValue(*(a1 + 16), @"PolicyUUID");
  return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d %@", v2, Value);
}

id sub_100042034(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  v8 = objc_alloc_init(CWFSensingResult);
  [v8 setData:{objc_msgSend(a3, "copy")}];
  v9 = +[NSMutableDictionary dictionary];
  [v9 setObject:a5 forKeyedSubscript:@"CWF_ACCESSORY_UUID"];
  [v9 setObject:v8 forKeyedSubscript:@"SensingResult"];
  [v9 setObject:+[NSError errorWithDomain:code:userInfo:](NSError forKeyedSubscript:{"errorWithDomain:code:userInfo:", @"CWFHomeKitErrorDomain", a4, 0), @"WiFiInterfaceReturn"}];
  v10 = +[NSNotificationCenter defaultCenter];

  return [(NSNotificationCenter *)v10 postNotificationName:@"SensingResult" object:0 userInfo:v9];
}

void sub_100042368(uint64_t a1, uint64_t a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000423E4;
  v2[3] = &unk_10025EE08;
  v2[4] = a2;
  v2[5] = a1;
  dispatch_async(qword_100298C50, v2);
}

void sub_1000423E4(uint64_t a1)
{
  cf = 0;
  v10 = 1;
  v9 = 0;
  if (*(a1 + 32))
  {
    v2 = _CTServerConnectionCopyCellularTransmitState();
    if (HIDWORD(v2))
    {
      v3 = 0;
    }

    else
    {
      v3 = v2 == 0;
    }

    if (v3 && cf != 0)
    {
      sub_100042514(cf, &v10, &v9);
      v6 = v10;
      v7 = v9;
      goto LABEL_14;
    }

    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: error getting cellular trnasmit state. error=%d, domain=%d", "WiFiCellularNotificationsUpdateTxState_block_invoke", HIDWORD(v2), v2}];
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    sub_10013C960();
  }

  v7 = 0;
  v6 = 1;
LABEL_14:
  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: update cellularTxStarted %d, isShort %d", "WiFiCellularNotificationsUpdateTxState_block_invoke", v6, v7}];
  }

  objc_autoreleasePoolPop(v8);
  sub_10008549C(*(a1 + 40), v6, v7);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_100042514(const __CFDictionary *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  TypeID = CFStringGetTypeID();
  v7 = kCTCellularTransmitStateConnected;
  if (TypeID == CFGetTypeID(kCTCellularTransmitStateConnected))
  {
    v8 = CFStringGetTypeID();
    v9 = kCTCellularTransmitStateIdle;
    if (v8 == CFGetTypeID(kCTCellularTransmitStateIdle))
    {
      v10 = CFStringGetTypeID();
      v11 = kCTCellularShortTransmitStart;
      if (v10 == CFGetTypeID(kCTCellularShortTransmitStart))
      {
        v12 = CFStringGetTypeID();
        v13 = kCTCellularShortTransmitEnd;
        if (v12 == CFGetTypeID(kCTCellularShortTransmitEnd))
        {
          v14 = CFStringGetTypeID();
          v15 = kCTCellularLongTransmitEnd;
          if (v14 == CFGetTypeID(kCTCellularLongTransmitEnd))
          {
            v16 = CFStringGetTypeID();
            v17 = kCTCellularLongTransmitStart;
            if (v16 == CFGetTypeID(kCTCellularLongTransmitStart))
            {
              *a2 = 1;
              *a3 = 1;
              v18 = kKeyCTCellularTransmitState;
              if (CFDictionaryContainsKey(a1, kKeyCTCellularTransmitState))
              {
                Value = CFDictionaryGetValue(a1, v18);
                if (!Value)
                {
                  goto LABEL_48;
                }

                v20 = Value;
                v33 = a3;
                v21 = CFStringGetTypeID();
                v22 = v21 == CFGetTypeID(v20);
                a3 = v33;
                if (!v22)
                {
                  goto LABEL_48;
                }

                if (CFStringCompare(v20, v7, 0) && CFStringCompare(v20, v9, 0))
                {
                  if (CFStringCompare(v20, kCTCellularTransmitStopped, 0) == kCFCompareEqualTo)
                  {
                    *a2 = 0;
                    *v33 = 0;
                  }

                  v23 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    v24 = "TRUE";
                    if (*a2)
                    {
                      v25 = "TRUE";
                    }

                    else
                    {
                      v25 = "FALSE";
                    }

                    if (!*v33)
                    {
                      v24 = "FALSE";
                    }

                    [off_100298C40 WFLog:3 message:{"%s: old scheme transmitState %@, cellularTxStarted %s, isShort %s", "__WiFiCellularNotificationsGetState", v20, v25, v24}];
                  }

                  v26 = v23;
                }

                else
                {
                  if (CFStringCompare(v20, v9, 0) == kCFCompareEqualTo)
                  {
LABEL_48:
                    *a2 = 0;
                    *a3 = 0;
                    return;
                  }

                  v28 = CFDictionaryGetValue(a1, kKeyCTCellularTransmitTrigger);
                  if (!v28)
                  {
                    goto LABEL_39;
                  }

                  v29 = CFStringGetTypeID();
                  v22 = v29 == CFGetTypeID(v28);
                  a3 = v33;
                  if (!v22)
                  {
                    goto LABEL_39;
                  }

                  if (CFStringCompare(v28, v11, 0) == kCFCompareEqualTo)
                  {
                    *a2 = 1;
                    *v33 = 1;
                  }

                  if (CFStringCompare(v28, v13, 0) == kCFCompareEqualTo || CFStringCompare(v28, v15, 0) == kCFCompareEqualTo)
                  {
                    *a2 = 0;
                    *v33 = 1;
                  }

                  if (CFStringCompare(v28, v17, 0) == kCFCompareEqualTo)
                  {
LABEL_39:
                    *a2 = 1;
                    *a3 = 0;
                  }

                  v30 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    v31 = "TRUE";
                    if (*a2)
                    {
                      v32 = "TRUE";
                    }

                    else
                    {
                      v32 = "FALSE";
                    }

                    if (!*a3)
                    {
                      v31 = "FALSE";
                    }

                    [off_100298C40 WFLog:3 message:{"%s: new scheme transmitState %@, transmitTrigger %@, cellularTxStarted %s, isShort %s", "__WiFiCellularNotificationsGetState", v20, v28, v32, v31}];
                  }

                  v26 = v30;
                }
              }

              else
              {
                *a2 = 0;
                *a3 = 0;
                v27 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: Baseband appears to be dead. cellularTxStarted %d, isShort %d", "__WiFiCellularNotificationsGetState", *a2, *a3}];
                }

                v26 = v27;
              }

              objc_autoreleasePoolPop(v26);
            }

            else
            {
              sub_10013CC38(v17);
            }
          }

          else
          {
            sub_10013CBBC(v15);
          }
        }

        else
        {
          sub_10013CB40(v13);
        }
      }

      else
      {
        sub_10013CAC4(v11);
      }
    }

    else
    {
      sub_10013CA48(v9);
    }
  }

  else
  {
    sub_10013C9CC(v7);
  }
}

void sub_100042944(uint64_t a1, uint64_t a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000429C0;
  v2[3] = &unk_10025EE08;
  v2[4] = a2;
  v2[5] = a1;
  dispatch_async(qword_100298C50, v2);
}

void sub_1000429C0(uint64_t a1)
{
  value = 0;
  theDict = 0;
  if (*(a1 + 32))
  {
    v2 = _CTServerConnectionCopyReliableNetworkFallbackSettings();
    if (HIDWORD(v2))
    {
      v3 = 0;
    }

    else
    {
      v3 = v2 == 0;
    }

    if (v3 && theDict != 0)
    {
      if (CFDictionaryGetValueIfPresent(theDict, kCTReliableNetworkFallbackToCellularUserPreferenceKey, &value))
      {
        v8 = value == 0;
      }

      else
      {
        v8 = 1;
      }

      v6 = !v8 && value == kCFBooleanTrue;
      goto LABEL_23;
    }

    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: error getting RNF state. error=%d, domain=%d", "WiFiCellularNotificationsUpdateRNFState_block_invoke", HIDWORD(v2), v2}];
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    sub_10013CCB4();
  }

  v6 = 0;
LABEL_23:
  sub_1000851A8(*(a1 + 40), v6);
  if (theDict)
  {
    CFRelease(theDict);
  }
}

void sub_100042AB8(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: start monitoring", "void WiFiCellularNotificationsStartMonitoring(WiFiManagerRef, CTServerConnectionRef)"}];
  }

  objc_autoreleasePoolPop(v3);
  if (a2)
  {
    _CTServerConnectionSetTargetQueue();
    v4 = kCTCellularTransmitStateNotification;
    v5 = _CTServerConnectionRegisterBlockForNotification();
    v6 = v5;
    v7 = HIDWORD(v5);
    if (HIDWORD(v5))
    {
      v8 = 0;
    }

    else
    {
      v8 = v5 == 0;
    }

    if (!v8)
    {
      v9 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: error subscribing to %@ notification error=%d, domain=%d", "WiFiCellularNotificationsStartMonitoring", v4, v7, v6}];
      }

      objc_autoreleasePoolPop(v9);
    }

    v10 = kCTReliableNetworkFallbackToCellularChangedNotification;
    v11 = _CTServerConnectionRegisterBlockForNotification();
    v12 = v11;
    v13 = HIDWORD(v11);
    if (HIDWORD(v11))
    {
      v14 = 0;
    }

    else
    {
      v14 = v11 == 0;
    }

    if (!v14)
    {
      v15 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: error subscribing to %@ notification error=%d, domain=%d", "WiFiCellularNotificationsStartMonitoring", v10, v13, v12}];
      }

      objc_autoreleasePoolPop(v15);
    }

    v16 = kCTIMSConnectionChangedNotification;
    v17 = _CTServerConnectionRegisterBlockForNotification();
    v18 = v17;
    v19 = HIDWORD(v17);
    if (HIDWORD(v17) || v17)
    {
      v20 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: error subscribing to %@ notification error=%d, domain=%d", "WiFiCellularNotificationsStartMonitoring", v16, v19, v18}];
      }

      objc_autoreleasePoolPop(v20);
    }
  }

  else
  {
    sub_10013CD20();
  }
}

void sub_100042D54(uint64_t a1, const __CFDictionary *a2)
{
  v8 = 1;
  v7 = 0;
  if (a2)
  {
    sub_100042514(a2, &v8, &v7);
    v3 = objc_autoreleasePoolPush();
    v4 = v8;
    v5 = v7;
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: update cellularTxStarted %d, isShort %d", "WiFiCellularNotificationsStartMonitoring_block_invoke", v8, v7}];
    }

    objc_autoreleasePoolPop(v3);
    v6 = *(a1 + 32);

    sub_10008549C(v6, v4, v5);
  }
}

void sub_100042E20(uint64_t a1, CFDictionaryRef theDict)
{
  value = 0;
  if (theDict)
  {
    if (CFDictionaryGetValueIfPresent(theDict, kCTReliableNetworkFallbackToCellularUserPreferenceKey, &value))
    {
      v3 = value == 0;
    }

    else
    {
      v3 = 1;
    }

    v5 = !v3 && value == kCFBooleanTrue;
    sub_1000851A8(*(a1 + 32), v5);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:"No Info from CT for RNF State Change !"];
    }

    objc_autoreleasePoolPop(v6);
  }
}

void sub_100042EE0(uint64_t a1, CFDictionaryRef theDict)
{
  theString1 = 0;
  value = 0;
  if (theDict)
  {
    if (CFDictionaryGetValueIfPresent(theDict, kCTIMSIsConnectionUp, &value))
    {
      v4 = value == 0;
    }

    else
    {
      v4 = 1;
    }

    v6 = !v4 && value == kCFBooleanTrue;
    if (CFDictionaryGetValueIfPresent(theDict, kCTIMSConnectionType, &theString1))
    {
      v7 = theString1 == 0;
    }

    else
    {
      v7 = 1;
    }

    v9 = !v7 && CFStringCompare(theString1, kCTIMSConnectionTypeWifi, 0) == kCFCompareEqualTo;
    sub_1000855E8(*(a1 + 32), v6, v9);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:"No Info from CT for IMS State Change !"];
    }

    objc_autoreleasePoolPop(v8);
  }
}

void sub_100043000(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: removing observer", "void WiFiCellularNotificationsStopMonitoring(WiFiManagerRef, CTServerConnectionRef)"}];
  }

  objc_autoreleasePoolPop(v3);
  if (a2)
  {

    _CTServerConnectionUnregisterForNotification();
  }

  else
  {
    sub_10013CD8C();
  }
}

uint64_t sub_10004309C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  if (!a2)
  {
    goto LABEL_51;
  }

  if (!qword_1002984C8)
  {
    pthread_once(&stru_1002977E0, sub_100048F8C);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    goto LABEL_51;
  }

  v6 = Instance;
  bzero((Instance + 16), 0xCB8uLL);
  *(v6 + 32) = a2;
  *(v6 + 228) = 256;
  *(v6 + 2768) = 0;
  *(v6 + 168) = 1;
  *(v6 + 88) = CFAbsoluteTimeGetCurrent();
  *(v6 + 16) = 1;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  *(v6 + 24) = Mutable;
  if (Mutable)
  {
    v8 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    *(v6 + 64) = v8;
    if (v8)
    {
      v9 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      *(v6 + 328) = v9;
      if (v9)
      {
        v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v11 = dispatch_queue_create("WiFiLQAManager", v10);
        *(v6 + 304) = v11;
        if (v11)
        {
          v12 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a3);
          *(v6 + 344) = v12;
          if (v12)
          {
            dispatch_set_context(v12, v6);
            dispatch_source_set_event_handler_f(*(v6 + 344), sub_1000438AC);
            *(v6 + 352) = 0x100000005B8;
            *(v6 + 360) = 32;
            v13 = sub_100006F88(*(v6 + 32));
            if (v13)
            {
              v14 = v13;
              *buffer = 0u;
              v38 = 0u;
              SystemEncoding = CFStringGetSystemEncoding();
              CFStringGetCString(v14, buffer, 16, SystemEncoding);
              v16 = socket(2, 2, 0);
              if (v16 != -1)
              {
                v17 = v16;
                if (ioctl(v16, 0xC0206933uLL, buffer) == -1)
                {
                  v19 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:4 message:{"%s: ioctl(SIOCGIFMTU) failed", "__WiFiLQAMgrSetActiveProbeSize", v35}];
                  }
                }

                else
                {
                  v18 = v38;
                  if (v38 >= 37)
                  {
                    *(v6 + 352) = vmin_u32(vdup_n_s32(v38), 0x100000005B8);
                    *(v6 + 360) = 32;
                  }

                  v19 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:2 message:{"%s: MTU Size: %d", "__WiFiLQAMgrSetActiveProbeSize", v18}];
                  }
                }

                objc_autoreleasePoolPop(v19);
                close(v17);
LABEL_25:
                *(v6 + 653) = 0;
                *(v6 + 648) = 1;
                *(v6 + 656) = 0xFFFFFFB0FFFFFFB5;
                *(v6 + 672) = 10;
                *(v6 + 680) = 0x402E000000000000;
                *(v6 + 655) = 1;
                *(v6 + 732) = 1;
                *(v6 + 736) = 0x3F00000000000005;
                *(v6 + 744) = 3;
                *(v6 + 796) = 1;
                *(v6 + 800) = 0x3F4000000000000FLL;
                *(v6 + 808) = 0x3F0000000000000FLL;
                *(v6 + 876) = 1;
                *(v6 + 880) = 0x3F4CCCCD00000005;
                *(v6 + 888) = 0x3F0000000000000FLL;
                *(v6 + 896) = 1;
                *(v6 + 900) = 0x3F00000000000003;
                *(v6 + 912) = 1;
                *(v6 + 920) = 0x4024000000000000;
                *(v6 + 928) = 1;
                *(v6 + 932) = 1;
                *(v6 + 936) = 20481;
                *(v6 + 1304) = 0;
                *(v6 + 940) = 1;
                *(v6 + 948) = 1048576000;
                *(v6 + 944) = 5;
                *(v6 + 720) = 0x3DCCCCCD3E99999ALL;
                *(v6 + 1004) = 1;
                *(v6 + 1012) = -3233808384;
                *(v6 + 1008) = 15;
                *(v6 + 1020) = 0;
                *(v6 + 1084) = 1;
                *(v6 + 1088) = 0x3F4CCCCD00000005;
                *(v6 + 1096) = 0xFFFFFFFFLL;
                *(v6 + 1104) = 1;
                *(v6 + 1112) = 1036831949;
                *(v6 + 1108) = 5;
                *(v6 + 728) = 1028443341;
                *(v6 + 1168) = 1;
                *(v6 + 1172) = 0x3F0000000000000FLL;
                *(v6 + 1180) = 0xFFFFFFFFLL;
                *(v6 + 1248) = 1;
                *(v6 + 1252) = 0x3F00000000000005;
                *(v6 + 1260) = 0xFFFFFFFFLL;
                *(v6 + 664) = 0xFFFFFFA6FFFFFFABLL;
                *(v6 + 688) = xmmword_1001CE120;
                *(v6 + 704) = xmmword_1001CE130;
                *(v6 + 96) = xmmword_1001CE140;
                *(v6 + 112) = 0;
                *(v6 + 116) = 1;
                *(v6 + 2804) = 0;
                *(v6 + 2824) = 0;
                *(v6 + 2832) = 0;
                *(v6 + 128) = 0u;
                *(v6 + 144) = 0u;
                *(v6 + 160) = 0;
                v21 = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
                *(v6 + 120) = v21;
                if (v21)
                {
                  v22 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a3);
                  *(v6 + 552) = v22;
                  if (v22)
                  {
                    dispatch_set_context(v22, v6);
                    dispatch_source_set_event_handler_f(*(v6 + 552), sub_10013CDF8);
                    if ((*(v6 + 428) || !notify_register_mach_port("com.apple.symptoms.managed_events.wifi-trigger-disconnect", (v6 + 428), 0, (v6 + 424))) && (*(v6 + 452) || !notify_register_mach_port("com.apple.symptoms.managed_events.dns-failure", (v6 + 452), 0, (v6 + 448))))
                    {
                      *(v6 + 1272) = 0;
                      qword_1002984B8 = v6;
                      v23 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
                      *(v6 + 256) = v23;
                      if (v23)
                      {
                        v24 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
                        *(v6 + 264) = v24;
                        if (v24)
                        {
                          v25 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
                          *(v6 + 3232) = v25;
                          if (v25)
                          {
                            *(v6 + 536) = 0;
                            block[0] = _NSConcreteStackBlock;
                            block[1] = 3221225472;
                            block[2] = sub_1000438D8;
                            block[3] = &unk_10025EAD8;
                            block[4] = v6;
                            v26 = *(v6 + 304);
                            *(v6 + 536) = tcp_connection_fallback_watcher_create();
                            dispatch_async(*(v6 + 304), block);
                            if (MGGetSInt32Answer() == 7)
                            {
                              v27 = objc_autoreleasePoolPush();
                              if (off_100298C40)
                              {
                                [off_100298C40 WFLog:4 message:"Audio accessory detected\n"];
                              }

                              objc_autoreleasePoolPop(v27);
                              *(v6 + 2840) = 1;
                              *(v6 + 656) = 0xFFFFFFABFFFFFFB0;
                            }

                            *(v6 + 2800) = 0;
                            *(v6 + 2841) = 0;
                            *(v6 + 2852) = 0;
                            *(v6 + 2844) = 0;
                            v28 = objc_autoreleasePoolPush();
                            if (off_100298C40)
                            {
                              [off_100298C40 WFLog:3 message:{"%s: ColocatedScopeTransition Feature is %s", "WiFiLQAMgrCreate", "disabled"}];
                            }

                            objc_autoreleasePoolPop(v28);
                            v29 = [[WiFiTrafficEngManager alloc] initWithArgs:v6];
                            *(v6 + 2976) = v29;
                            if (v29)
                            {
                              v30 = [(WiFiTrafficEngManager *)v29 trafficEng];
                              *(v6 + 2984) = v30;
                              if (v30)
                              {
                                *(v6 + 2921) = 0;
                                *(v6 + 2924) = 1;
                                *(v6 + 2944) = 0;
                                v31 = dispatch_queue_create("TrafficEngineering", 0);
                                *(v6 + 2928) = v31;
                                if (v31)
                                {
                                  if (sub_100018608(*(v6 + 32)))
                                  {
                                    v32 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a3);
                                    *(v6 + 2912) = v32;
                                    dispatch_set_context(v32, v6);
                                    dispatch_source_set_event_handler_f(*(v6 + 2912), sub_1000439F4);
                                  }

                                  *(v6 + 2920) = 0;
                                  *(v6 + 2936) = 0;
                                  *(v6 + 2993) = 8;
                                  *(v6 + 3208) = 0;
                                  v33 = objc_autoreleasePoolPush();
                                  if (off_100298C40)
                                  {
                                    [off_100298C40 WFLog:2 message:{"%s: LQAManager Created\n", "WiFiLQAMgrCreate"}];
                                  }

                                  goto LABEL_47;
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
                    sub_100142454();
                  }
                }

                goto LABEL_50;
              }

              v20 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:4 message:{"%s: Socket failed to open", "__WiFiLQAMgrSetActiveProbeSize"}];
              }
            }

            else
            {
              v20 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:4 message:{"%s: IfName is NULL", "__WiFiLQAMgrSetActiveProbeSize"}];
              }
            }

            objc_autoreleasePoolPop(v20);
            goto LABEL_25;
          }

          sub_1001424B4();
        }
      }
    }
  }

LABEL_50:
  sub_100142520();
LABEL_51:
  v33 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: LQAManager Create Failed\n", "WiFiLQAMgrCreate"}];
  }

  v6 = 0;
LABEL_47:
  objc_autoreleasePoolPop(v33);
  return v6;
}

void sub_1000438AC(uint64_t a1)
{
  if (a1)
  {

    sub_10004A508(a1);
  }

  else
  {
    sub_1001425D0();
  }
}

void sub_1000438D8(uint64_t a1)
{
  if (*(*(a1 + 32) + 536))
  {
    v2 = tcp_fallback_watcher_fallback_inuse();
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v4 = "off";
      if (v2)
      {
        v4 = "on";
      }

      [off_100298C40 WFLog:4 message:{"%s: cellular fallback is %s\n", "WiFiLQAMgrCreate_block_invoke", v4}];
    }

    objc_autoreleasePoolPop(v3);
    v5 = +[WiFiUsageMonitor sharedInstance];
    v6 = *(*(a1 + 32) + 40);

    [(WiFiUsageMonitor *)v5 setCellularFallbackState:v2 forInterface:v6];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: cellular fallback watcher is NULL !", "WiFiLQAMgrCreate_block_invoke"}];
    }

    objc_autoreleasePoolPop(v7);
  }
}

void sub_1000439F4(uint64_t a1)
{
  if (a1)
  {
    [*(a1 + 2984) __sendEventToPeers];

    sub_100048E4C(a1);
  }

  else
  {
    sub_10014263C();
  }
}

uint64_t sub_100043A44(uint64_t a1, char a2, int a3)
{
  if (a1)
  {
    *(a1 + 648) = a2;
    *(a1 + 653) = a3;
    if (a3)
    {
      v4 = (a1 + 732);
      if (*(a1 + 654))
      {
        v7 = unk_100297730;
        *v4 = xmmword_100297720;
        *(a1 + 748) = v7;
        v8 = unk_100297750;
        *(a1 + 764) = xmmword_100297740;
        *(a1 + 780) = v8;
        v9 = unk_100297770;
        *(a1 + 940) = xmmword_100297760;
        *(a1 + 956) = v9;
        v10 = unk_100297790;
        *(a1 + 972) = xmmword_100297780;
        *(a1 + 988) = v10;
        v11 = xmmword_1002977A0;
        v12 = *algn_1002977B0;
        v13 = xmmword_1002977C0;
        *(a1 + 1152) = unk_1002977D0;
        *(a1 + 1136) = v13;
        *(a1 + 1120) = v12;
        *(a1 + 1104) = v11;
        goto LABEL_7;
      }
    }

    else
    {
      v4 = (a1 + 732);
    }

    v5 = *algn_1002976F0;
    *v4 = xmmword_1002976E0;
    v4[1] = v5;
    v6 = unk_100297710;
    v4[2] = xmmword_100297700;
    v4[3] = v6;
LABEL_7:
    v14 = sub_10013CFC8(a1, 5.0);
    if (v14)
    {
      v15 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s, Failed to set default LQM interval", "WiFiLQAMgrSetLQAEnable"}];
      }

      objc_autoreleasePoolPop(v15);
    }

    v16 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: LQAConfigChange En: %d lqaMode: %d fallbackPref %d override %d askToDisc %d AggrTD %d rnfState %d", "WiFiLQAMgrSetLQAEnable", *(a1 + 648), *(a1 + 16), *(a1 + 229), *(a1 + 650), *(a1 + 652), *(a1 + 653), *(a1 + 654)}];
    }

    goto LABEL_13;
  }

  v16 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, LQAManagerRef is NULL", "WiFiLQAMgrSetLQAEnable"}];
  }

  v14 = 4294963396;
LABEL_13:
  objc_autoreleasePoolPop(v16);
  return v14;
}

uint64_t sub_100043BF4(uint64_t a1, int a2)
{
  if (a1)
  {
    result = 0;
    *(a1 + 655) = a2 == 0;
  }

  else
  {
    sub_1001426A8();
    return 4294963396;
  }

  return result;
}

uint64_t sub_100043C30(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    *(a1 + 650) = *(a2 + 4);
    *(a1 + 16) = *a2;
    *(a1 + 653) = *(a2 + 6);
    byte_1002984C0 = *(a1 + 652) != 0;
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: LQAConfigChange En: %d lqaMode: %d fallbackPref %d override %d askToDisc %d AggrTD %d rnfState %d", "WiFiLQAMgrSetLQAConfig", *(a1 + 648), *(a1 + 16), *(a1 + 229), *(a1 + 650), *(a1 + 652), *(a1 + 653), *(a1 + 654)}];
    }

    v4 = 0;
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s, LQAManagerRef is NULL", "WiFiLQAMgrSetLQAConfig"}];
    }

    v4 = 4294963396;
  }

  objc_autoreleasePoolPop(v3);
  return v4;
}

uint64_t sub_100043D30(uint64_t a1, int a2)
{
  if (a1)
  {
    *(a1 + 654) = a2;
    if (*(a1 + 653))
    {
      v3 = (a1 + 732);
      if (a2)
      {
        v4 = unk_100297730;
        *v3 = xmmword_100297720;
        *(a1 + 748) = v4;
        v5 = unk_100297750;
        *(a1 + 764) = xmmword_100297740;
        *(a1 + 780) = v5;
        v6 = unk_100297770;
        *(a1 + 940) = xmmword_100297760;
        *(a1 + 956) = v6;
        v7 = unk_100297790;
        *(a1 + 972) = xmmword_100297780;
        *(a1 + 988) = v7;
        v8 = xmmword_1002977A0;
        v9 = *algn_1002977B0;
        v10 = xmmword_1002977C0;
        *(a1 + 1152) = unk_1002977D0;
        *(a1 + 1136) = v10;
        *(a1 + 1120) = v9;
        *(a1 + 1104) = v8;
LABEL_7:
        v13 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: LQAConfigChange En: %d lqaMode: %d fallbackPref %d override %d askToDisc %d AggrTD %d rnfState %d", "WiFiLQAMgrSetRNFState", *(a1 + 648), *(a1 + 16), *(a1 + 229), *(a1 + 650), *(a1 + 652), *(a1 + 653), *(a1 + 654)}];
        }

        v14 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v3 = (a1 + 732);
    }

    v11 = *algn_1002976F0;
    *v3 = xmmword_1002976E0;
    v3[1] = v11;
    v12 = unk_100297710;
    v3[2] = xmmword_100297700;
    v3[3] = v12;
    goto LABEL_7;
  }

  v13 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, LQAManagerRef is NULL", "WiFiLQAMgrSetRNFState"}];
  }

  v14 = 4294963396;
LABEL_10:
  objc_autoreleasePoolPop(v13);
  return v14;
}

void sub_100043E8C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = v2;
  if (a1)
  {
    if (*(a1 + 2921) == 1)
    {
      [*(a1 + 2984) __invalidateDiscovery];
      *(a1 + 2921) = 0;
    }

    objc_autoreleasePoolPop(v3);

    CFRelease(a1);
  }

  else
  {
    sub_1001427F0(v2);
  }
}

uint64_t sub_100043F00(uint64_t a1, const __CFDictionary *a2, __CFDictionary *a3, uint64_t a4, uint64_t a5)
{
  valuePtr = *(a1 + 360);
  v37 = 0;
  v34 = 0;
  v35 = 1;
  if (!*(a1 + 20))
  {
    sub_100142A50();
    return 4294963394;
  }

  v7 = a3;
  v10 = a3;
  if (a3 || (v10 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks)) != 0)
  {
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(v10))
    {
      v33 = v7;
      if (a2)
      {
        Value = CFDictionaryGetValue(a2, @"kWiFiLqaMgrNumProbes");
        v13 = CFDictionaryGetValue(a2, @"kWiFiLqaMgrProbeSize");
        v14 = CFDictionaryGetValue(a2, @"kWiFiLqaMgrProbeTimeoutSecs");
        v15 = CFDictionaryGetValue(a2, @"kWiFiLqaMgrIpv4Addr");
        v16 = CFDictionaryGetValue(a2, @"kWiFiLqaMgrProbeTrafficClass");
        v37 = *(a1 + 900);
        if (Value)
        {
          CFDictionarySetValue(v10, @"kWiFiLqaMgrNumProbes", Value);
          if (!v13)
          {
            goto LABEL_8;
          }

          goto LABEL_14;
        }
      }

      else
      {
        v16 = 0;
        v15 = 0;
        v14 = 0;
        v13 = 0;
        v37 = *(a1 + 900);
      }

      v21 = CFNumberCreate(0, kCFNumberCFIndexType, &v37);
      if (!v21)
      {
        sub_100142984();
LABEL_56:
        v31 = 4294963394;
        v7 = v33;
        goto LABEL_44;
      }

      v22 = v21;
      CFDictionarySetValue(v10, @"kWiFiLqaMgrNumProbes", v21);
      CFRelease(v22);
      if (!v13)
      {
LABEL_8:
        v17 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
        if (v17)
        {
          v18 = v17;
          Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
          if (!Mutable)
          {
            sub_1001428C4();
            v20 = 0;
            v31 = 4294963394;
            v7 = v33;
            goto LABEL_41;
          }

          v13 = Mutable;
          CFArrayAppendValue(Mutable, v18);
          v20 = v13;
LABEL_15:
          CFDictionarySetValue(v10, @"kWiFiLqaMgrProbeSize", v13);
          if (v14)
          {
            CFDictionarySetValue(v10, @"kWiFiLqaMgrProbeTimeoutSecs", v14);
            if (v15)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v23 = CFNumberCreate(0, kCFNumberCFIndexType, &v35);
            if (!v23)
            {
              v30 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:4 message:{"%s: probeTimeoutSecsDefRef is NULL", "WiFiLQAMgrEnqueueDiagnosticProbe"}];
              }

              goto LABEL_39;
            }

            v24 = v23;
            CFDictionarySetValue(v10, @"kWiFiLqaMgrProbeTimeoutSecs", v23);
            CFRelease(v24);
            if (v15)
            {
              goto LABEL_21;
            }
          }

          v15 = *(a1 + 408);
          if (v15)
          {
LABEL_21:
            CFDictionarySetValue(v10, @"kWiFiLqaMgrIpv4Addr", v15);
            if (v16)
            {
              CFDictionarySetValue(v10, @"kWiFiLqaMgrProbeTrafficClass", v16);
            }

            CFDictionarySetValue(v10, @"kWiFiLqaMgrIgnoreProbe", kCFBooleanFalse);
            if (a4)
            {
              v34 = a4;
              v25 = CFNumberCreate(0, kCFNumberCFIndexType, &v34);
              v7 = v33;
              if (!v25)
              {
                v30 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:4 message:{"%s: probeCallback is NULL", "WiFiLQAMgrEnqueueDiagnosticProbe"}];
                }

                goto LABEL_40;
              }

              v26 = v25;
              CFDictionarySetValue(v10, @"kWiFiLqaMgrDiagCallback", v25);
              CFRelease(v26);
              if (!a5)
              {
                goto LABEL_32;
              }
            }

            else
            {
              v27 = objc_autoreleasePoolPush();
              v7 = v33;
              if (off_100298C40)
              {
                [off_100298C40 WFLog:4 message:{"%s: Callback is NULL", "WiFiLQAMgrEnqueueDiagnosticProbe"}];
              }

              objc_autoreleasePoolPop(v27);
              if (!a5)
              {
                goto LABEL_32;
              }
            }

            v34 = a5;
            v28 = CFNumberCreate(0, kCFNumberCFIndexType, &v34);
            if (v28)
            {
              v29 = v28;
              CFDictionarySetValue(v10, @"kWiFiLqaMgrDiagCbContext", v28);
              CFRelease(v29);
LABEL_32:
              if (sub_100048148(a1, v10))
              {
                v30 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:4 message:{"%s: Scheduling Probe Failed", "WiFiLQAMgrEnqueueDiagnosticProbe"}];
                }

                goto LABEL_40;
              }

              v31 = 0;
              if (!v18)
              {
LABEL_42:
                if (v20)
                {
                  CFRelease(v20);
                }

                goto LABEL_44;
              }

LABEL_41:
              CFRelease(v18);
              goto LABEL_42;
            }

            v30 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"%s: callbackCtxt is NULL", "WiFiLQAMgrEnqueueDiagnosticProbe"}];
            }

LABEL_40:
            objc_autoreleasePoolPop(v30);
            v31 = 4294963394;
            if (!v18)
            {
              goto LABEL_42;
            }

            goto LABEL_41;
          }

          v30 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s: DiagProbe ipv4Addr is NULL", "WiFiLQAMgrEnqueueDiagnosticProbe"}];
          }

LABEL_39:
          v7 = v33;
          goto LABEL_40;
        }

        sub_100142924();
        goto LABEL_56;
      }

LABEL_14:
      v18 = 0;
      v20 = 0;
      goto LABEL_15;
    }
  }

  sub_1001429E4();
  v31 = 4294963394;
LABEL_44:
  if (!v7 && v10)
  {
    CFRelease(v10);
  }

  return v31;
}

void sub_100044400(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    *(a1 + 1288) = a2;
    f = dispatch_mach_create_f();
    *(a1 + 432) = f;
    if (f)
    {
      v4 = *(a1 + 428);
      dispatch_mach_connect();
    }

    v5 = dispatch_mach_create_f();
    *(a1 + 456) = v5;
    if (v5)
    {
      v6 = *(a1 + 452);
      dispatch_mach_connect();
    }

    v7 = *(a1 + 344);
    if (v7)
    {
      dispatch_activate(v7);
    }

    v8 = *(a1 + 552);
    if (v8)
    {
      dispatch_activate(v8);
    }

    if (sub_100018608(*(a1 + 32)))
    {
      v9 = *(a1 + 2912);
      if (v9)
      {

        dispatch_activate(v9);
      }
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v11 = "manager";
      if (a1)
      {
        v11 = "queue";
      }

      [off_100298C40 WFLog:4 message:{"%s: LQA %s is null", "WiFiLQAMgrScheduleWithQueue", v11}];
    }

    objc_autoreleasePoolPop(v10);
  }
}

void sub_10004456C(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    *(a1 + 2992) = 1;
    v3 = *(a1 + 552);
    if (v3)
    {
      dispatch_source_cancel(v3);
    }

    v4 = *(a1 + 344);
    if (v4)
    {
      dispatch_source_cancel(v4);
    }

    v5 = *(a1 + 2912);
    if (v5)
    {
      dispatch_source_cancel(v5);
    }

    *(a1 + 2920) = 0;
    if (*(a1 + 432))
    {
      dispatch_mach_cancel();
      dispatch_release(*(a1 + 432));
      *(a1 + 432) = 0;
    }

    if (*(a1 + 456))
    {
      dispatch_mach_cancel();
      dispatch_release(*(a1 + 456));
      *(a1 + 456) = 0;
    }

    if (*(a1 + 1280))
    {
      Main = CFRunLoopGetMain();
      CFRunLoopRemoveSource(Main, *(a1 + 1280), kCFRunLoopDefaultMode);
    }

    *(a1 + 1288) = 0;
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v8 = "manager";
      if (a1)
      {
        v8 = "queue";
      }

      [off_100298C40 WFLog:4 message:{"%s: LQA %s is null", "WiFiLQAMgrUnscheduleFromQueue", v8}];
    }

    objc_autoreleasePoolPop(v7);
  }
}

void sub_100044690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      *(a1 + 560) = a2;
      *(a1 + 568) = a3;
    }

    else
    {
      sub_100142ABC();
    }
  }

  else
  {
    sub_100142B28();
  }
}

void sub_1000446C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      *(a1 + 576) = a2;
      *(a1 + 584) = a3;
    }

    else
    {
      sub_100142C00();
    }
  }

  else
  {
    sub_100142C6C();
  }
}

uint64_t sub_1000446F8(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 592) = a2;
  *(result + 600) = a3;
  return result;
}

id sub_100044704(uint64_t a1)
{
  if (!a1)
  {
    sub_100142CD8();
    return 0;
  }

  v2 = *(a1 + 624);
  if (!v2)
  {
    return 0;
  }

  return [v2 copy];
}

void sub_100044740(uint64_t a1, CFDictionaryRef theDict)
{
  value = 0;
  if (a1)
  {
    if (!*(a1 + 24))
    {
      sub_100143054();
      return;
    }

    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
    if (!MutableCopy)
    {
      sub_100142FE8();
      return;
    }

    v5 = MutableCopy;
    valuePtr = CFAbsoluteTimeGetCurrent();
    v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &valuePtr);
    if (!v6)
    {
      sub_100142F88();
      goto LABEL_373;
    }

    cf = v6;
    CFDictionaryAddValue(v5, @"kWiFiLqaMgrLqmSampleLocalTimestamp", v6);
    v196 = theDict;
    ValueIfPresent = CFDictionaryGetValueIfPresent(theDict, @"TXRX_STATS_VALID", &value);
    v8 = value;
    if (ValueIfPresent)
    {
      v9 = value == 0;
    }

    else
    {
      v9 = 1;
    }

    v11 = v9 || value == kCFBooleanTrue;
    v251 = 0;
    v250 = 0;
    v249 = 0;
    v248 = 0;
    v247 = 0;
    v246 = 0;
    v245 = 0;
    v244 = 0;
    v243 = 0;
    v242 = 0;
    v241 = 0;
    v240 = 0;
    v239 = 0;
    number = 0;
    v237 = 0;
    v236 = 0;
    v235 = 0;
    v234 = 0;
    v233 = 0;
    v232 = 0;
    v231 = 0;
    v230 = 0;
    v229 = 0;
    v228 = 0;
    v226 = 0;
    v227 = 0;
    v224 = 0;
    v225 = 0;
    v222 = 0;
    v223 = 0;
    theDicta = 0;
    v221 = 0;
    theArray = 0;
    v219 = 0;
    v217 = 0;
    v215 = 0;
    v216 = 0;
    v213 = 0;
    v214 = 0;
    v12 = CFDictionaryGetValue(v5, @"RSSI");
    if (!v12)
    {
      goto LABEL_274;
    }

    CFNumberGetValue(v12, kCFNumberSInt32Type, &v251);
    *(a1 + 2804) = v251;
    if (CFDictionaryGetValueIfPresent(v5, @"PER_CORE_RSSI", &v225))
    {
      sub_10001144C(v225, &v216, &v215);
      v207[0] = 0;
      if (CFDictionaryGetValueIfPresent(v5, @"PER_CORE_RSSI", v207))
      {
        if (v207[0])
        {
          v13 = CFDictionaryGetValue(v5, @"LQMTIMESTAMP");
          if (v13)
          {
            *keys = @"LQMTIMESTAMP";
            *&keys[8] = @"PER_CORE_RSSI";
            values[0] = v13;
            values[1] = v207[0];
            v14 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            CFArrayInsertValueAtIndex(*(a1 + 264), 0, v14);
            Count = CFArrayGetCount(*(a1 + 264));
            if (Count >= 4)
            {
              do
              {
                CFArrayRemoveValueAtIndex(*(a1 + 264), Count - 1);
                Count = CFArrayGetCount(*(a1 + 264));
              }

              while (Count > 3);
            }

            if (v14)
            {
              CFRelease(v14);
            }
          }
        }
      }
    }

    if (CFDictionaryGetValueIfPresent(v5, @"SNR", &number) && number)
    {
      CFNumberGetValue(number, kCFNumberSInt16Type, &v250 + 2);
    }

    if (CFDictionaryGetValueIfPresent(v5, @"NOISE", &v237) && v237)
    {
      CFNumberGetValue(v237, kCFNumberSInt16Type, &v250);
    }

    if (CFDictionaryGetValueIfPresent(v5, @"PER_CORE_NOISE", &v224) && !sub_10001144C(v224, &v214, &v213))
    {
      v224 = 0;
    }

    if (CFDictionaryGetValueIfPresent(v5, @"CCA", &v236) && v236)
    {
      CFNumberGetValue(v236, kCFNumberSInt8Type, &v249 + 1);
    }

    if (CFDictionaryGetValueIfPresent(v5, @"CCA_STATS", &theDicta) && theDicta)
    {
      if (CFDictionaryGetValueIfPresent(theDicta, @"CCA_SELF_TOTAL", &v223) && v223)
      {
        CFNumberGetValue(v223, kCFNumberSInt8Type, &v249);
      }

      if (CFDictionaryGetValueIfPresent(theDicta, @"CCA_OTHER_TOTAL", &v221) && v221)
      {
        CFNumberGetValue(v221, kCFNumberSInt8Type, &v248 + 1);
      }

      if (CFDictionaryGetValueIfPresent(theDicta, @"CCA_INTERFERENCE_TOTAL", &v222) && v222)
      {
        CFNumberGetValue(v222, kCFNumberSInt8Type, &v248);
      }
    }

    if (CFDictionaryGetValueIfPresent(v5, @"TXFAIL", &v235) && v235)
    {
      CFNumberGetValue(v235, kCFNumberIntType, &v247);
    }

    if (CFDictionaryGetValueIfPresent(v5, @"TXFRAMES", &v233) && v233)
    {
      CFNumberGetValue(v233, kCFNumberIntType, &v246 + 4);
    }

    if (CFDictionaryGetValueIfPresent(v5, @"TXFWFRAMES", &v240) && v240)
    {
      CFNumberGetValue(v240, kCFNumberIntType, &v242);
    }

    if (CFDictionaryGetValueIfPresent(v5, @"TXFWFAIL", &v239) && v239)
    {
      CFNumberGetValue(v239, kCFNumberIntType, &v241);
    }

    if (CFDictionaryGetValueIfPresent(v5, @"TXRETRANS", &v234) && v234)
    {
      CFNumberGetValue(v234, kCFNumberIntType, &v246);
    }

    if (CFDictionaryGetValueIfPresent(v5, @"RXFRAMES", &v232))
    {
      if (v232)
      {
        CFNumberGetValue(v232, kCFNumberIntType, &v245 + 4);
        v207[0] = 0;
        if (*(a1 + 3257))
        {
          if ([+[WiFiUserInteractionMonitor isRealTimeAppActive] sharedInstance]
          {
            if (*(a1 + 2960))
            {
              if (CFDictionaryGetValueIfPresent(v5, @"RXFRAMES", v207))
              {
                if (v207[0])
                {
                  v16 = CFDictionaryGetValue(v5, @"LQMTIMESTAMP");
                  if (v16)
                  {
                    *keys = @"LQMTIMESTAMP";
                    *&keys[8] = @"RXFRAMES";
                    values[0] = v16;
                    values[1] = v207[0];
                    v17 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                    CFArrayInsertValueAtIndex(*(a1 + 3232), 0, v17);
                    v18 = CFArrayGetCount(*(a1 + 3232));
                    if (v18 >= 6)
                    {
                      do
                      {
                        CFArrayRemoveValueAtIndex(*(a1 + 3232), v18 - 1);
                        v18 = CFArrayGetCount(*(a1 + 3232));
                      }

                      while (v18 > 5);
                    }

                    if (v17)
                    {
                      CFRelease(v17);
                    }
                  }
                }
              }

              goto LABEL_73;
            }

            v178 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:2 message:{"%s: No real time traffic", "__WiFiLQAMgrAddRxframesHistory"}];
            }
          }

          else
          {
            v178 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:2 message:{"%s: No real time App", "__WiFiLQAMgrAddRxframesHistory"}];
            }
          }

          objc_autoreleasePoolPop(v178);
          CFArrayRemoveAllValues(*(a1 + 3232));
        }
      }
    }

LABEL_73:
    if (CFDictionaryGetValueIfPresent(v5, @"RXRETRYFRMS", &v231) && v231)
    {
      CFNumberGetValue(v231, kCFNumberIntType, &v245);
    }

    if (CFDictionaryGetValueIfPresent(v5, @"RXBEACONFRMS", &v230) && v230)
    {
      CFNumberGetValue(v230, kCFNumberIntType, &v244 + 4);
    }

    if (CFDictionaryGetValueIfPresent(v5, @"RXBEACONSCHED", &v229) && v229)
    {
      CFNumberGetValue(v229, kCFNumberIntType, &v244);
    }

    if (CFDictionaryGetValueIfPresent(v5, @"RXRATE", &v227) && v227)
    {
      CFNumberGetValue(v227, kCFNumberIntType, &v243);
    }

    if (CFDictionaryGetValueIfPresent(v5, @"TXRATE", &v228) && v228)
    {
      CFNumberGetValue(v228, kCFNumberIntType, &v243 + 4);
    }

    if (CFDictionaryGetValueIfPresent(v5, @"TXFBRATE", &v226) && v226)
    {
      CFNumberGetValue(v226, kCFNumberIntType, &v242 + 4);
    }

    v212 = 0xAAAAAAAAAAAAAAAALL;
    *&v19 = 0xAAAAAAAAAAAAAAAALL;
    *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v210 = v19;
    v211 = v19;
    if (CFDictionaryGetValueIfPresent(v5, @"MLO_OP_STATS", &v219) && v219)
    {
      sub_10013EC1C(a1, v219);
    }

    if (CFDictionaryGetValueIfPresent(v5, @"MLO_LQM_STATS", &theArray))
    {
      if (*(a1 + 3052))
      {
        v20 = 0;
        v21 = a1 + 3056;
        do
        {
          v22 = (v21 + v20);
          if (*(v21 + v20))
          {
            v23 = v22[1];
            v210 = *v22;
            v211 = v23;
            v212 = *(v22 + 4);
          }

          v20 += 40;
        }

        while (v20 != 120);
      }

      if (theArray && CFArrayGetCount(theArray) >= 1)
      {
        v24 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v24);
          if (ValueAtIndex)
          {
            sub_10013ED7C(a1, ValueAtIndex, v24, v26, v27, v28, v29, v30);
          }

          ++v24;
        }

        while (CFArrayGetCount(theArray) > v24);
      }

      if (*(a1 + 3052))
      {
        v31 = 0;
        v32 = (a1 + 3056);
        v33 = 3;
        v34 = (a1 + 3056);
        do
        {
          v35 = *v34;
          v34 += 40;
          if (v35)
          {
            v31 = v32;
          }

          v32 = v34;
          --v33;
        }

        while (v33);
        if (v31)
        {
          sub_1000C4F40(&v210, v31);
        }
      }

      v36 = +[WiFiUsageMonitor sharedInstance];
      if (v36)
      {
        v37 = *(a1 + 40);
        v38 = *(a1 + 3192);
        *keys = *(a1 + 3176);
        *&keys[16] = v38;
        [(WiFiUsageMonitor *)v36 updateWithMLORuntimeConfig:keys forInterface:v37];
      }
    }

    v39 = sub_100014000(*(a1 + 48));
    if (v39)
    {
      CFNumberGetValue(v39, kCFNumberSInt16Type, (a1 + 2856));
    }

    v40 = sub_10000A540(*(a1 + 48), @"CHANNEL_FLAGS");
    if (v40)
    {
      CFNumberGetValue(v40, kCFNumberIntType, &v217);
      if (v217)
      {
        if ((v217 & 2) != 0)
        {
          v41 = 20;
        }

        else if ((v217 & 4) != 0)
        {
          v41 = 40;
        }

        else if ((v217 & 0x400) != 0)
        {
          v41 = 80;
        }

        else if ((v217 & 0x800) != 0)
        {
          v41 = 160;
        }

        else
        {
          if ((v217 & 0x4000) == 0)
          {
            goto LABEL_130;
          }

          v41 = 320;
        }

        *(a1 + 2858) = v41;
      }
    }

LABEL_130:
    if (v244)
    {
      v42 = SHIDWORD(v244) < v244 / 2;
    }

    else
    {
      v42 = 0;
    }

    v43 = *(a1 + 2804);
    if (v43 >= *(a1 + 656) + 5)
    {
      v42 = 0;
    }

    if (!v244)
    {
      v42 = 1;
    }

    if (HIDWORD(v244))
    {
      v44 = v42;
    }

    else
    {
      v44 = 1;
    }

    v203 = v5;
    v204 = v11;
    if (v43 == -128)
    {
      v45 = 1;
    }

    else
    {
      if (v244)
      {
        v46 = HIDWORD(v244) == 0;
      }

      else
      {
        v46 = 0;
      }

      v45 = v46 && SHIDWORD(v245) > 0;
    }

    LOBYTE(values[0]) = 0;
    LOBYTE(v207[0]) = 0;
    *keys = 0;
    v48 = CFArrayGetCount(*(a1 + 264));
    if (v48 <= 0)
    {
      v67 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: LQAManager: perCoreRssiHistory is Empty!", "__WiFiLQAMgrAvgValidPerCoreRssiSamples"}];
      }

      v66 = 0;
    }

    else
    {
      v197 = v44;
      v194 = v45;
      v200 = v8;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      if (v48 >= 3)
      {
        v53 = 3;
      }

      else
      {
        v53 = v48;
      }

      v54 = v53 + 1;
      do
      {
        v55 = CFArrayGetValueAtIndex(*(a1 + 264), v54 - 2);
        if (!v55)
        {
          v67 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s: LQAManager: paramDict is NULL!", "__WiFiLQAMgrAvgValidPerCoreRssiSamples"}];
          }

          v66 = 0;
          v5 = v203;
          v11 = v204;
          v8 = v200;
          goto LABEL_203;
        }

        if (CFDictionaryGetValueIfPresent(v55, @"PER_CORE_RSSI", keys))
        {
          v56 = *keys == 0;
        }

        else
        {
          v56 = 1;
        }

        if (!v56 && CFArrayGetCount(*keys) == 2)
        {
          v57 = CFArrayGetValueAtIndex(*keys, 0);
          v58 = CFArrayGetValueAtIndex(*keys, 1);
          if (v57)
          {
            CFNumberGetValue(v57, kCFNumberSInt8Type, values);
            if (SLOBYTE(values[0]) >= 0xFFFFFF81)
            {
              ++v52;
              v50 += SLOBYTE(values[0]);
            }
          }

          if (v58)
          {
            CFNumberGetValue(v58, kCFNumberSInt8Type, v207);
            if (SLOBYTE(v207[0]) >= 0xFFFFFF81)
            {
              ++v51;
              v49 += SLOBYTE(v207[0]);
            }
          }
        }

        --v54;
      }

      while (v54 > 1);
      if (v53 < v52)
      {
        sub_100142D70();
      }

      if (v53 < v51)
      {
        sub_100142D44();
      }

      if (v52)
      {
        v50 /= v52;
      }

      v5 = v203;
      if (v51)
      {
        v49 /= v51;
      }

      v59 = v50;
      if (!v52)
      {
        v59 = -1;
      }

      *(a1 + 2808) = v59;
      v60 = v49;
      if (!v52)
      {
        v60 = -1;
      }

      *(a1 + 2812) = v60;
      if ((v197 & _os_feature_enabled_impl()) != 1)
      {
        v66 = 0;
        v11 = v204;
        v8 = v200;
        goto LABEL_204;
      }

      v8 = v200;
      if (!(v49 | v50))
      {
        v66 = 0;
        v11 = v204;
        goto LABEL_204;
      }

      v61 = v50;
      v62 = v49;
      if (v61 <= v49)
      {
        v63 = v49;
      }

      else
      {
        v63 = v50;
      }

      if (v50)
      {
        v64 = v50;
      }

      else
      {
        v64 = v49;
      }

      if (v49)
      {
        v65 = v50 == 0;
      }

      else
      {
        v65 = 1;
      }

      if (!v65)
      {
        v64 = v63;
      }

      if (v50 == v64)
      {
        v66 = 1;
      }

      else
      {
        v66 = 2;
      }

      if ((v194 & 1) != 0 || *(a1 + 2804) > v64)
      {
        *(a1 + 2804) = v64;
      }

      else
      {
        v66 = 0;
      }

      v67 = objc_autoreleasePoolPush();
      v11 = v204;
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"Last RSSI:%d Core0 AvgRssi = %d --Core1 AvgRssi = %d mode %lu", *(a1 + 2804), v61, v62, v66}];
      }
    }

LABEL_203:
    objc_autoreleasePoolPop(v67);
LABEL_204:
    v68 = (v8 != 0) & v11;
    if (v68 || CFAbsoluteTimeGetCurrent() - *(a1 + 96) > *(a1 + 104))
    {
      *(a1 + 96) = CFAbsoluteTimeGetCurrent();
      v69 = 0.0;
      v70 = 0.0;
      if (*(a1 + 2792) != 0.0)
      {
        v70 = CFAbsoluteTimeGetCurrent() - *(a1 + 2792);
      }

      if (*(a1 + 72) != 0.0)
      {
        v69 = CFAbsoluteTimeGetCurrent() - *(a1 + 72);
      }

      if (HIDWORD(v246) && v247)
      {
        kdebug_trace();
        v71 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:"Tx failure is observed"];
        }

        objc_autoreleasePoolPop(v71);
      }

      v201 = v66;
      v72 = theDicta;
      v73 = v225;
      v74 = CWFGetLinkQualityOSLog();
      v75 = os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT);
      if (v72)
      {
        if (v73)
        {
          if (v75)
          {
            v76 = sub_1001784B0(*(a1 + 48));
            v77 = sub_100014038(*(a1 + 2784));
            v78 = 0.0;
            if (v244 && v244 > SHIDWORD(v244))
            {
              v78 = (v244 - HIDWORD(v244)) / v244 * 100.0;
            }

            if (HIDWORD(v246))
            {
              v79 = v247 / SHIDWORD(v246) * 100.0;
              v80 = v246;
              v81 = v246 / SHIDWORD(v246) * 100.0;
            }

            else
            {
              v79 = 0.0;
              v80 = v246;
              v81 = 0.0;
            }

            v100 = *(a1 + 2856);
            v101 = *(a1 + 2858);
            v102 = (*(a1 + 1092) * 100.0);
            if (HIDWORD(v245))
            {
              v103 = v245 / SHIDWORD(v245) * 100.0;
            }

            else
            {
              v103 = 0.0;
            }

            *&keys[4] = "__WiFiLQAMgrLogStats";
            *&keys[12] = 2114;
            v104 = "F";
            *&keys[14] = v76;
            *&keys[24] = v77;
            if (v68)
            {
              v104 = "T";
            }

            v260 = v100;
            v262 = v101;
            v264 = v251;
            *v266 = v216;
            *v267 = v215;
            *&v267[10] = SHIBYTE(v249);
            *&v267[16] = v249;
            *&v267[22] = SHIBYTE(v248);
            *&v267[28] = v248;
            *&v267[34] = SHIWORD(v250);
            *&v267[50] = v244;
            *&v267[66] = HIDWORD(v246);
            *&v267[82] = v80;
            *&v267[98] = HIDWORD(v245);
            *&v267[104] = v245;
            *&v267[126] = v243;
            *&v268[8] = v242;
            *&v269[2] = v250;
            *&v269[8] = v214;
            *v270 = v213;
            v258 = v69;
            *&v267[110] = v103;
            *&v267[120] = HIDWORD(v243);
            *&v268[2] = HIDWORD(v242);
            *&v268[14] = v241;
            v259 = 1024;
            v261 = 1024;
            v263 = 1024;
            *&v267[8] = 1024;
            *&v267[14] = 1024;
            *&v267[20] = 1024;
            *&v267[26] = 1024;
            *&v267[32] = 1024;
            *&v267[48] = 1024;
            *&v267[64] = 1024;
            *&v267[80] = 1024;
            *&v267[96] = 1024;
            *&v267[102] = 1024;
            *&v267[118] = 1024;
            *&v267[124] = 1024;
            *v268 = 1024;
            *&v268[6] = 1024;
            *&v268[12] = 1024;
            *v269 = 1024;
            *v271 = v213 - v214;
            v257 = 2048;
            v265 = 2048;
            *&v266[8] = 2048;
            *&v267[38] = 2048;
            *&v267[54] = 2048;
            *&v267[70] = 2048;
            *&v267[86] = 2048;
            *&v267[108] = 2048;
            *&v269[6] = 2048;
            *&v269[16] = 2048;
            *&v270[8] = 2048;
            *&v271[8] = 2048;
            v273 = *(a1 + 216);
            v275 = v104;
            *v272 = v70;
            *&keys[22] = 2112;
            *&v272[8] = 2112;
            v274 = 2080;
            *keys = 136324098;
            *&v267[40] = v78;
            *&v267[56] = v102;
            *&v267[72] = v79;
            *&v267[88] = v81;
            v105 = "%s(%{public}@:%@): InfraUptime:%.1fsecs Channel: %d Bandwidth: %dMhz Rssi: %d {%ld %ld} Cca: %d (S:%d O:%d I:%d) Snr: %hd BcnPer: %.1f%% (%d, %.1f%%) TxFrameCnt: %d TxPer: %.1f%% TxReTrans: %d TxRetryRatio: %0.1f%% RxFrameCnt: %d RxRetryFrames: %d RxRetryRatio: %0.1f%% TxRate: %d RxRate: %d FBRate: %d TxFwFrms: %d TxFwFail: %d Noise: %d {%ld %ld %ld} time: %.1fsecs fgApp: %@ V: %s";
            v106 = v74;
            v107 = 286;
LABEL_271:
            _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, v105, keys, v107);
            goto LABEL_272;
          }

          goto LABEL_272;
        }

        if (!v75)
        {
          goto LABEL_272;
        }

        v88 = sub_1001784B0(*(a1 + 48));
        v89 = sub_100014038(*(a1 + 2784));
        v90 = 0.0;
        if (v244 && v244 > SHIDWORD(v244))
        {
          v90 = (v244 - HIDWORD(v244)) / v244 * 100.0;
        }

        if (HIDWORD(v246))
        {
          v91 = v247 / SHIDWORD(v246) * 100.0;
          v92 = v246;
          v93 = v246 / SHIDWORD(v246) * 100.0;
        }

        else
        {
          v91 = 0.0;
          v92 = v246;
          v93 = 0.0;
        }

        v112 = *(a1 + 2856);
        v113 = *(a1 + 2858);
        v114 = (*(a1 + 1092) * 100.0);
        if (HIDWORD(v245))
        {
          v115 = v245 / SHIDWORD(v245) * 100.0;
        }

        else
        {
          v115 = 0.0;
        }

        v117 = "F";
        v118 = *(a1 + 216);
        if (v68)
        {
          v117 = "T";
        }

        *keys = 136322562;
        *&keys[4] = "__WiFiLQAMgrLogStats";
        *&keys[12] = 2114;
        *&keys[14] = v88;
        *&keys[22] = 2112;
        *&keys[24] = v89;
        v257 = 2048;
        v258 = v69;
        v259 = 1024;
        v260 = v112;
        v261 = 1024;
        v262 = v113;
        v263 = 1024;
        v264 = v251;
        v265 = 1024;
        *v266 = SHIBYTE(v249);
        *&v266[4] = 1024;
        *&v266[6] = v249;
        *v267 = 1024;
        *&v267[2] = SHIBYTE(v248);
        *&v267[6] = 1024;
        *&v267[8] = v248;
        *&v267[12] = 1024;
        *&v267[14] = SHIWORD(v250);
        *&v267[18] = 2048;
        *&v267[20] = v90;
        *&v267[28] = 1024;
        *&v267[30] = v244;
        *&v267[34] = 2048;
        *&v267[36] = v114;
        *&v267[44] = 1024;
        *&v267[46] = HIDWORD(v246);
        *&v267[50] = 2048;
        *&v267[52] = v91;
        *&v267[60] = 1024;
        *&v267[62] = v92;
        *&v267[66] = 2048;
        *&v267[68] = v93;
        *&v267[76] = 1024;
        *&v267[78] = HIDWORD(v245);
        *&v267[82] = 1024;
        *&v267[84] = v245;
        *&v267[88] = 2048;
        *&v267[90] = v115;
        *&v267[98] = 1024;
        *&v267[100] = HIDWORD(v243);
        *&v267[104] = 1024;
        *&v267[106] = v243;
        *&v267[110] = 1024;
        *&v267[112] = HIDWORD(v242);
        *&v267[116] = 1024;
        *&v267[118] = v242;
        *&v267[122] = 1024;
        *&v267[124] = v241;
        *&v267[128] = 2048;
        *v268 = v70;
        *&v268[8] = 2112;
        *&v268[10] = v118;
        *v269 = 2080;
        *&v269[2] = v117;
        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "%s(%{public}@:%@): InfraUptime:%.1fsecs Channel: %d Bandwidth: %dMhz Rssi: %d Cca: %d (S:%d O:%d I:%d) Snr: %hd BcnPer: %.1f%% (%d, %.1f%%) TxFrameCnt: %d TxPer: %.1f%% TxReTrans: %d TxRetryRatio: %0.1f%% RxFrameCnt: %d RxRetryFrames: %d RxRetryRatio: %0.1f%% TxRate: %d RxRate: %d FBRate: %d TxFwFrms: %d TxFwFail: %d  time: %.1fsecs fgApp: %@ V: %s", keys, 0xE6u);
      }

      else
      {
        if (!v73)
        {
          if (v75)
          {
            v94 = sub_1001784B0(*(a1 + 48));
            v95 = sub_100014038(*(a1 + 2784));
            v96 = 0.0;
            if (v244 && v244 > SHIDWORD(v244))
            {
              v96 = (v244 - HIDWORD(v244)) / v244 * 100.0;
            }

            if (HIDWORD(v246))
            {
              v97 = v247 / SHIDWORD(v246) * 100.0;
              v98 = v246;
              v99 = v246 / SHIDWORD(v246) * 100.0;
            }

            else
            {
              v97 = 0.0;
              v98 = v246;
              v99 = 0.0;
            }

            v119 = *(a1 + 2856);
            v120 = *(a1 + 2858);
            v121 = (*(a1 + 1092) * 100.0);
            if (HIDWORD(v245))
            {
              v122 = v245 / SHIDWORD(v245) * 100.0;
            }

            else
            {
              v122 = 0.0;
            }

            v123 = "F";
            v124 = *(a1 + 216);
            if (v68)
            {
              v123 = "T";
            }

            *keys = 136321794;
            *&keys[4] = "__WiFiLQAMgrLogStats";
            *&keys[12] = 2114;
            *&keys[14] = v94;
            *&keys[22] = 2112;
            *&keys[24] = v95;
            v257 = 2048;
            v258 = v69;
            v259 = 1024;
            v260 = v119;
            v261 = 1024;
            v262 = v120;
            v263 = 1024;
            v264 = v251;
            v265 = 1024;
            *v266 = SHIBYTE(v249);
            *&v266[4] = 1024;
            *&v266[6] = SHIWORD(v250);
            *v267 = 2048;
            *&v267[2] = v96;
            *&v267[10] = 1024;
            *&v267[12] = v244;
            *&v267[16] = 2048;
            *&v267[18] = v121;
            *&v267[26] = 1024;
            *&v267[28] = HIDWORD(v246);
            *&v267[32] = 2048;
            *&v267[34] = v97;
            *&v267[42] = 1024;
            *&v267[44] = v98;
            *&v267[48] = 2048;
            *&v267[50] = v99;
            *&v267[58] = 1024;
            *&v267[60] = HIDWORD(v245);
            *&v267[64] = 1024;
            *&v267[66] = v245;
            *&v267[70] = 2048;
            *&v267[72] = v122;
            *&v267[80] = 1024;
            *&v267[82] = HIDWORD(v243);
            *&v267[86] = 1024;
            *&v267[88] = v243;
            *&v267[92] = 1024;
            *&v267[94] = HIDWORD(v242);
            *&v267[98] = 1024;
            *&v267[100] = v242;
            *&v267[104] = 1024;
            *&v267[106] = v241;
            *&v267[110] = 2048;
            *&v267[112] = v70;
            *&v267[120] = 2112;
            *&v267[122] = v124;
            *v268 = 2080;
            *&v268[2] = v123;
            v105 = "%s(%{public}@:%@): InfraUptime:%.1fsecs Channel: %d Bandwidth: %dMhz Rssi: %d Cca: %d Snr: %hd  BcnPer: %.1f%% (%d, %.1f%%) TxFrameCnt: %d TxPer: %.1f%% TxReTrans: %d TxRetryRatio: %0.1f%% RxFrameCnt : %d RxRetryFrames: %d RxRetryRatio: %0.1f%% TxRate: %d RxRate: %d FBRate: %d TxFwFrms: %d TxFwFail: %d time: %.1fsecs fgApp: %@ V: %s";
            v106 = v74;
            v107 = 212;
            goto LABEL_271;
          }

LABEL_272:
          v125 = objc_autoreleasePoolPush();
          if (+[WiFiUsageMonitor sharedInstance])
          {
            v144 = 0;
            if (v244 && v244 >= SHIDWORD(v244))
            {
              v144 = ((v244 - HIDWORD(v244)) / v244 * 100.0);
            }

            v195 = v144;
            v145 = sub_10001408C(*(a1 + 32), *(a1 + 40));
            v191 = [v145 objectForKey:@"LQM_SUMMARY_RX_CRS"];
            v192 = [v145 objectForKey:@"LQM_SUMMARY_RX_PLCP"];
            v193 = [v145 objectForKey:@"LQM_SUMMARY_RX_GOOD_PLCPS"];
            v199 = v145;
            v146 = [v145 objectForKey:@"LQM_SUMMARY_DBG_LOG_LIST"];
            *values = 0u;
            v253 = 0u;
            v254 = 0u;
            v255 = 0u;
            v147 = [v146 countByEnumeratingWithState:values objects:keys count:16];
            if (v147)
            {
              v148 = v147;
              v149 = *v253;
              do
              {
                for (i = 0; i != v148; ++i)
                {
                  if (*v253 != v149)
                  {
                    objc_enumerationMutation(v146);
                  }

                  v151 = *(values[1] + i);
                  v152 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:4 message:{"LQM-WiFi: %@\n", v151}];
                  }

                  objc_autoreleasePoolPop(v152);
                }

                v148 = [v146 countByEnumeratingWithState:values objects:keys count:16];
              }

              while (v148);
            }

            v208 = 0u;
            v209 = 0u;
            *v207 = 0u;
            v153 = sub_1000141C0(a1, v207);
            v154 = 0;
            if (v153 && SHIDWORD(v207[0]) >= 1)
            {
              v154 = ((SLODWORD(v207[0]) / HIDWORD(v207[0])) * 100.0);
            }

            v190 = v154;
            v155 = [[WiFiUsageLQMUserSample alloc] initWithInterfaceName:*(a1 + 40)];
            *(a1 + 3208) = v155;
            v188 = *(a1 + 2804);
            v189 = v251;
            v156 = 0x7FFFFFFFFFFFFFFFLL;
            if (v225)
            {
              v157 = v216;
            }

            else
            {
              v157 = 0x7FFFFFFFFFFFFFFFLL;
            }

            if (v225)
            {
              v158 = v215;
            }

            else
            {
              v158 = 0x7FFFFFFFFFFFFFFFLL;
            }

            v186 = v250;
            v187 = v157;
            if (v224)
            {
              v159 = v214;
            }

            else
            {
              v159 = 0x7FFFFFFFFFFFFFFFLL;
            }

            v184 = v159;
            v185 = v158;
            if (v224)
            {
              v160 = v213;
            }

            else
            {
              v160 = 0x7FFFFFFFFFFFFFFFLL;
            }

            v182 = SHIWORD(v250);
            v183 = v160;
            v180 = SHIBYTE(v248);
            v181 = v249;
            v161 = v248;
            v162 = SHIBYTE(v249);
            if (v191)
            {
              v156 = [v191 unsignedIntegerValue];
            }

            if (v192)
            {
              v163 = [v192 unsignedIntegerValue];
            }

            else
            {
              v163 = 0x7FFFFFFFFFFFFFFFLL;
            }

            v166 = 0x7FFFFFFFFFFFFFFFLL;
            if (v193)
            {
              v166 = [v193 unsignedIntegerValue];
            }

            v167 = *(a1 + 104);
            LOBYTE(v179) = sub_100014814(a1) != 0;
            [v155 populateWithRssi:v189 rssiInUse:v188 rssi0:v187 rssi1:v185 rssiMode:v201 noise:v186 noise0:v184 noise1:v183 snr:v182 selfCca:v181 otherCca:v180 interference:v161 totalReportedCca:v162 beaconPer:v195 rxCrsGlitch:v156 rxBadPLCP:v163 rxStart:v166 rxBphyCrsGlitch:0x7FFFFFFFFFFFFFFFLL rxBphyBadPLCP:0x7FFFFFFFFFFFFFFFLL sampleDuration:v167 isHighCCAFor2GHz:v179];
            [*(a1 + 3208) populateWithTxFrames:SHIDWORD(v246) RxFrames:SHIDWORD(v245) TxFails:v247 TxRetries:v246 RxRetries:v245 TxRate:SHIDWORD(v243) RxRate:v243 txRTS:0x7FFFFFFFFFFFFFFFLL txRTSFail:0x7FFFFFFFFFFFFFFFLL txMpdu:0x7FFFFFFFFFFFFFFFLL txAMPDU:0x7FFFFFFFFFFFFFFFLL averageTxPer:v190];
            v168 = sub_1000149E8();
            if (sub_1000487BC(a1))
            {
              v169 = 0;
            }

            else
            {
              v169 = (*(a1 + 3259) == 0) << 32;
            }

            v5 = v203;
            v11 = v204;
            if (*(a1 + 3258) != 1 || sub_10000A7CC(*(a1 + 48)))
            {
              v173 = 0;
            }

            else
            {
              v173 = (*(a1 + 2842) == 0) << 24;
            }

            [*(a1 + 3208) populateWithMotionState:sub_100014038(*(a1 + 2784)) andAppState:v169 | v173 | v168 & 0xFFFFFF];
            if (theArray && CFArrayGetCount(theArray) >= 1)
            {
              v174 = 0;
              v175 = a1 + 3056;
              do
              {
                v176 = *(a1 + 3208);
                v177 = *(v175 + 16);
                *v207 = *v175;
                v208 = v177;
                *&v209 = *(v175 + 32);
                [v176 populateWithPerMLOLinkStats:v207];
                ++v174;
                v175 += 40;
              }

              while (CFArrayGetCount(theArray) > v174);
            }
          }

          objc_autoreleasePoolPop(v125);
          goto LABEL_274;
        }

        if (!v75)
        {
          goto LABEL_272;
        }

        v82 = sub_1001784B0(*(a1 + 48));
        v83 = sub_100014038(*(a1 + 2784));
        v84 = 0.0;
        if (v244 && v244 > SHIDWORD(v244))
        {
          v84 = (v244 - HIDWORD(v244)) / v244 * 100.0;
        }

        if (HIDWORD(v246))
        {
          v85 = v247 / SHIDWORD(v246) * 100.0;
          v86 = v246;
          v87 = v246 / SHIDWORD(v246) * 100.0;
        }

        else
        {
          v85 = 0.0;
          v86 = v246;
          v87 = 0.0;
        }

        v108 = *(a1 + 2856);
        v109 = *(a1 + 2858);
        v110 = (*(a1 + 1092) * 100.0);
        if (HIDWORD(v245))
        {
          v111 = v245 / SHIDWORD(v245) * 100.0;
        }

        else
        {
          v111 = 0.0;
        }

        v198 = *(a1 + 216);
        v116 = "F";
        if (v68)
        {
          v116 = "T";
        }

        *keys = 136323330;
        *&keys[4] = "__WiFiLQAMgrLogStats";
        *&keys[12] = 2114;
        *&keys[14] = v82;
        *&keys[22] = 2112;
        *&keys[24] = v83;
        v257 = 2048;
        v258 = v69;
        v259 = 1024;
        v260 = v108;
        v261 = 1024;
        v262 = v109;
        v263 = 1024;
        v264 = v251;
        v265 = 2048;
        *v266 = v216;
        *&v266[8] = 2048;
        *v267 = v215;
        *&v267[8] = 1024;
        *&v267[10] = SHIBYTE(v249);
        *&v267[14] = 1024;
        *&v267[16] = SHIWORD(v250);
        *&v267[20] = 2048;
        *&v267[22] = v84;
        *&v267[30] = 1024;
        *&v267[32] = v244;
        *&v267[36] = 2048;
        *&v267[38] = v110;
        *&v267[46] = 1024;
        *&v267[48] = HIDWORD(v246);
        *&v267[52] = 2048;
        *&v267[54] = v85;
        *&v267[62] = 1024;
        *&v267[64] = v86;
        *&v267[68] = 2048;
        *&v267[70] = v87;
        *&v267[78] = 1024;
        *&v267[80] = HIDWORD(v245);
        *&v267[84] = 1024;
        *&v267[86] = v245;
        *&v267[90] = 2048;
        *&v267[92] = v111;
        *&v267[100] = 1024;
        *&v267[102] = HIDWORD(v243);
        *&v267[106] = 1024;
        *&v267[108] = v243;
        *&v267[112] = 1024;
        *&v267[114] = HIDWORD(v242);
        *&v267[118] = 1024;
        *&v267[120] = v242;
        *&v267[124] = 1024;
        *&v267[126] = v241;
        *v268 = 1024;
        *&v268[2] = v250;
        *&v268[6] = 2048;
        *&v268[8] = v214;
        *&v268[16] = 2048;
        *v269 = v213;
        *&v269[8] = 2048;
        *&v269[10] = v213 - v214;
        *v270 = 2048;
        *&v270[2] = v70;
        *v271 = 2112;
        *&v271[2] = v198;
        *v272 = 2080;
        *&v272[2] = v116;
        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "%s(%{public}@:%@): InfraUptime:%.1fsecs Channel: %d Bandwidth: %dMhz Rssi: %d {%ld %ld} Cca: %d Snr: %hd BcnPer: %.1f%% (%d, %.1f%%) TxFrameCnt: %d TxPer: %.1f%% TxReTrans: %d TxRetryRatio: %0.1f%% RxFrameCnt: %d RxRetryFrames: %d RxRetryRatio: %0.1f%% TxRate: %d RxRate: %d FBRate: %d TxFwFrms: %d TxFwFail: %d Noise: %d {%ld %ld %ld} time: %.1fsecs fgApp: %@ V: %s", keys, 0x10Cu);
        v5 = v203;
      }

      v11 = v204;
      goto LABEL_272;
    }

LABEL_274:
    if (!v11)
    {
LABEL_372:
      CFRelease(cf);
LABEL_373:
      CFRelease(v5);
      return;
    }

    CFArrayInsertValueAtIndex(*(a1 + 24), 0, v5);
    v126 = CFArrayGetCount(*(a1 + 24));
    Current = CFAbsoluteTimeGetCurrent();
    v207[0] = 0;
    if (v126 >= 7)
    {
      v128 = Current;
      while (1)
      {
        v129 = CFArrayGetValueAtIndex(*(a1 + 24), v126 - 1);
        if (!v129)
        {
          sub_100142F24(v126 - 1);
          goto LABEL_372;
        }

        v130 = CFDictionaryGetValue(v129, @"kWiFiLqaMgrLqmSampleLocalTimestamp");
        if (!v130)
        {
          sub_100142EC0(v126 - 1);
          goto LABEL_372;
        }

        CFNumberGetValue(v130, kCFNumberDoubleType, v207);
        if (*v207 == 0.0)
        {
          break;
        }

        if (v126 > 0x1D || v128 - *v207 > 6.0)
        {
          CFArrayRemoveValueAtIndex(*(a1 + 24), v126 - 1);
          v126 = CFArrayGetCount(*(a1 + 24));
          if (v126 > 6)
          {
            continue;
          }
        }

        goto LABEL_283;
      }

      sub_100142E5C(v126 - 1);
      goto LABEL_372;
    }

LABEL_283:
    LODWORD(v210) = 0;
    LODWORD(v240) = 0;
    LODWORD(v239) = 0;
    *keys = 0;
    values[0] = 0;
    if (*(a1 + 24))
    {
      v131 = *(a1 + 2784);
      if (CFDictionaryGetValueIfPresent(v196, @"RXBEACONFRMS", keys) && *keys)
      {
        CFNumberGetValue(*keys, kCFNumberIntType, &v210);
      }

      if (CFDictionaryGetValueIfPresent(v196, @"RXBEACONSCHED", values) && values[0])
      {
        CFNumberGetValue(values[0], kCFNumberIntType, &v240);
      }

      v132 = CFArrayGetValueAtIndex(*(a1 + 24), 0);
      if (v132)
      {
        v133 = 0.0;
        if (v240 && v240 > v210)
        {
          v133 = (v240 - v210) / v240 * 100.0;
        }

        if (*(a1 + 2840))
        {
          v134 = sub_100017E88(a1);
          LODWORD(v239) = v134;
        }

        else
        {
          v134 = *(a1 + 2804);
          LODWORD(v239) = v134;
          if (!v134)
          {
            v135 = CFDictionaryGetValue(v132, @"RSSI");
            if (!v135)
            {
              goto LABEL_371;
            }

            CFNumberGetValue(v135, kCFNumberSInt32Type, &v239);
            v134 = v239;
          }
        }

        if (v134 > -70 || v131 == 1)
        {
          if (v134 >= -64)
          {
            *(a1 + 2994) = 0;
            sub_10001577C(a1);
          }
        }

        else
        {
          *(a1 + 2994) = 1;
          sub_100034774(a1);
        }

        if (v133 >= 20.0)
        {
          if (v133 <= 20.0 || v133 >= 60.0)
          {
            if (v133 > 60.0)
            {
              if (dword_1002977F0 == -1)
              {
                p_class_meths = &OBJC_PROTOCOL___CXCallObserverDelegate.class_meths;
                v141 = dword_1002984D8 + 1;
              }

              else
              {
                if (dword_1002977F0 > 59)
                {
                  v170 = dword_1002984D8;
                  if (dword_1002977F0 != 60)
                  {
                    v170 = ++dword_1002984D8;
                  }

                  if (v170 >= 5)
                  {
                    v171 = objc_autoreleasePoolPush();
                    if (off_100298C40)
                    {
                      [off_100298C40 WFLog:3 message:"RSSI_WIN: Collected more than 5 samples of High Beacon PER > 60 Percent "];
                    }

                    objc_autoreleasePoolPop(v171);
                    if (*(a1 + 2993) != 2 && v131 != 1)
                    {
                      v172 = objc_autoreleasePoolPush();
                      if (off_100298C40)
                      {
                        [off_100298C40 WFLog:3 message:{"RSSI_WIN: Beacon PER is consistenyly below > 60Percent. Switch to RSSI Win = %d", 2}];
                      }

                      objc_autoreleasePoolPop(v172);
                      *(a1 + 2993) = 2;
                      sub_100049214(a1);
                    }

                    dword_1002984D8 = 0;
                  }

                  goto LABEL_371;
                }

                p_class_meths = (&OBJC_PROTOCOL___CXCallObserverDelegate + 32);
                v141 = 1;
              }

              *(p_class_meths + 310) = v141;
            }
          }

          else
          {
            if (dword_1002977F0 == -1)
            {
              v138 = &OBJC_PROTOCOL___CXCallObserverDelegate.class_meths;
              v139 = dword_1002984D4 + 1;
            }

            else
            {
              if ((dword_1002977F0 - 61) > 0xFFFFFFD6)
              {
                v164 = dword_1002984D4;
                if ((dword_1002977F0 - 21) <= 0x26)
                {
                  v164 = ++dword_1002984D4;
                }

                if (v164 >= 5)
                {
                  if (*(a1 + 2993) != 4 && v131 != 1)
                  {
                    v165 = objc_autoreleasePoolPush();
                    if (off_100298C40)
                    {
                      [off_100298C40 WFLog:3 message:{"RSSI_WIN: Beacon PER is consistenyly below > 20Percent. Switch to RSSI Win = %d", 4}];
                    }

                    objc_autoreleasePoolPop(v165);
                    *(a1 + 2993) = 4;
                    sub_100049214(a1);
                  }

                  dword_1002984D4 = 0;
                }

                goto LABEL_371;
              }

              v138 = (&OBJC_PROTOCOL___CXCallObserverDelegate + 32);
              v139 = 1;
            }

            *(v138 + 309) = v139;
          }
        }

        else
        {
          if (dword_1002977F0 == -1)
          {
            v136 = &OBJC_PROTOCOL___CXCallObserverDelegate.class_meths;
            v137 = dword_1002984D0 + 1;
          }

          else
          {
            if (dword_1002977F0 < 21)
            {
              v142 = dword_1002984D0;
              if (dword_1002977F0 <= 0x14)
              {
                v142 = ++dword_1002984D0;
              }

              if (v142 >= 10)
              {
                v143 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:"RSSI_WIN: Beacon PER is consistenyly below < 20Percent. Switch to default RSSI Window"];
                }

                objc_autoreleasePoolPop(v143);
                if (*(a1 + 2993) != 8)
                {
                  *(a1 + 2993) = 8;
                  sub_100049214(a1);
                }

                dword_1002984D0 = 0;
              }

              goto LABEL_371;
            }

            v136 = (&OBJC_PROTOCOL___CXCallObserverDelegate + 32);
            v137 = 1;
          }

          *(v136 + 308) = v137;
        }

LABEL_371:
        dword_1002977F0 = v133;
        goto LABEL_372;
      }

      sub_100142D9C();
    }

    else
    {
      sub_100142DFC();
    }

    v133 = 0.0;
    goto LABEL_371;
  }
}

uint64_t sub_100046718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v187 = 0;
  v186 = 0;
  v185 = 0;
  memset(v183, 0, sizeof(v183));
  if (!a1)
  {
    sub_100143394();
    goto LABEL_14;
  }

  if (!*(a1 + 648))
  {
    sub_100143328();
    goto LABEL_14;
  }

  v4 = *(a1 + 20);
  if (v4 == 1)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_13;
    }

    v12 = "%s: Trigger Disconnect check in GoodLinkState";
    goto LABEL_56;
  }

  if (!v4)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_13;
    }

    v12 = "%s: Trigger Disconnect check in UnassociatedState";
    goto LABEL_56;
  }

  v7 = *(a1 + 16);
  *(a1 + 2801) = 0;
  if (!*(a1 + 2840) && *(a1 + 229) && !(*(a1 + 650) | *(a1 + 649)))
  {
    v10 = objc_autoreleasePoolPush();
    v11 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_13;
    }

    v12 = "%s: Better inf not available";
LABEL_11:
    v13 = 3;
LABEL_12:
    [v11 WFLog:v13 message:{v12, "__WiFiLQAMgrCheckTriggerDisconnect", v132}];
    goto LABEL_13;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (*(a1 + 169))
  {
    v9 = CFAbsoluteTimeGetCurrent() - *(a1 + 3224);
    if (v9 <= 5.0 || !*(a1 + 3257))
    {
      v10 = objc_autoreleasePoolPush();
      v11 = off_100298C40;
      if (!off_100298C40)
      {
LABEL_13:
        objc_autoreleasePoolPop(v10);
LABEL_14:
        v14 = 0;
        goto LABEL_15;
      }

      v132 = *&v9;
      v12 = "%s Wait for callback, symptoms callback delayed by %f seconds";
      goto LABEL_11;
    }

    v17 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v132 = *&v9;
      v131 = "__WiFiLQAMgrCheckTriggerDisconnect";
      [off_100298C40 WFLog:4 message:{"%s Symptoms callback is not getting invoked, delayed by %f seconds, override!"}];
    }

    objc_autoreleasePoolPop(v17);
    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  [+[WiFiUsageMonitor sharedInstance](WiFiUsageMonitor addTriggerDisconnectEvent:"addTriggerDisconnectEvent:isAlerted:isConfirmed:isExecuted:" isAlerted:*(a1 + 40) isConfirmed:1 isExecuted:0, 0];
  [+[WiFiUsageMonitor sharedInstance](WiFiUsageMonitor setTdLogic_alertedBy:"setTdLogic_alertedBy:forInterface:" forInterface:*(a1 + 2836), *(a1 + 40)];
  *(a1 + 184) = 0;
  v18 = *(a1 + 72);
  if (v18 == 0.0)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = Current - v18;
  }

  v20 = sub_100033CA8(a1);
  v184 = v20;
  if (!sub_100018164(a1) && v20 && (sub_1001430C0(v19) & 1) == 0)
  {
    goto LABEL_14;
  }

  v21 = sub_10013E3EC(a1);
  v22 = *(a1 + 3258) != 1 || sub_10000A7CC(*(a1 + 48)) || *(a1 + 2842) != 0;
  if (CFArrayGetCount(*(a1 + 24)))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), 0);
    if (ValueAtIndex)
    {
      v185 = sub_100034234(a1, ValueAtIndex, *(a1 + 248));
    }
  }

  memset(v183, 0, sizeof(v183));
  if (!sub_1000141C0(a1, v183))
  {
    v10 = objc_autoreleasePoolPush();
    v11 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_13;
    }

    v12 = "%s: Failed to extract metrics from Lqm, exiting!";
    goto LABEL_56;
  }

  HIDWORD(v151) = v21;
  LODWORD(v152) = v16;
  v24 = 0;
  v156 = *(a1 + 654);
  if (*(a1 + 654))
  {
    v25 = *(a1 + 653) != 0;
  }

  else
  {
    v25 = 0;
  }

  v26 = *(a1 + 2792);
  if (v26 == 0.0)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = Current - v26;
  }

  v28 = *(a1 + 2784);
  if (v28 == 2 && v25)
  {
    if (v27 <= *(a1 + 704))
    {
      v24 = 0;
      goto LABEL_58;
    }

    v29 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v132 = *&v27;
      v131 = "__WiFiLQAMgrCheckTriggerDisconnect";
      [off_100298C40 WFLog:4 message:{"%s: Usr walking for %.2f secs, using aggressive TD checks"}];
    }

    objc_autoreleasePoolPop(v29);
    v28 = *(a1 + 2784);
    v24 = 1;
  }

  if (v28 == 4 && v25)
  {
    if (v27 > *(a1 + 712))
    {
      v30 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v132 = *&v27;
        v131 = "__WiFiLQAMgrCheckTriggerDisconnect";
        [off_100298C40 WFLog:4 message:{"%s: Usr in Automotive for %.2f secs, using aggressive TD checks"}];
      }

      objc_autoreleasePoolPop(v30);
      v24 = 1;
    }

    goto LABEL_59;
  }

LABEL_58:
  if (!v25)
  {
LABEL_64:
    v163 = 0;
    goto LABEL_65;
  }

LABEL_59:
  if (!*(a1 + 748) || v183[0].i32[1] < *(a1 + 752) || (*(a1 + 756) * v183[0].i32[1]) > v183[0].i32[0] || v183[0].i32[2] <= *(a1 + 760) * v183[0].i32[1])
  {
    goto LABEL_64;
  }

  v163 = 1;
  *(a1 + 2832) = 1;
LABEL_65:
  v31 = 0;
  v32 = *(a1 + 2804);
  v33 = *(a1 + 664);
  v34 = v32 <= v33;
  v35 = v32 > v33;
  v36 = v35 || !v25;
  v37 = v24 ^ 1;
  if (!v34)
  {
    v37 = 1;
  }

  v38 = v183[0].i32[0];
  v39 = v183[0].i32[1];
  v40 = v183[0].i32[1];
  while (1)
  {
    v41 = a1 + 732;
    if (!v35 && v25)
    {
      if (v32 <= *(a1 + 668))
      {
        v41 = a1 + 1104;
      }

      else
      {
        v41 = a1 + 940;
      }
    }

    v42 = v41 + v31;
    if (!v37)
    {
      v42 = a1 + v31 + 1104;
    }

    if (*v42 && v183[0].i32[1] >= *(v42 + 4) && (*(v42 + 8) * v40) <= v38 && v183[0].i32[2] > *(v42 + 12) * v183[0].i32[1])
    {
      break;
    }

    v31 += 16;
    if (v31 == 64)
    {
      if (v22)
      {
        goto LABEL_83;
      }

      goto LABEL_80;
    }
  }

  v163 = 1;
  if (v22)
  {
    goto LABEL_83;
  }

LABEL_80:
  if (*(a1 + 3257))
  {
    goto LABEL_86;
  }

LABEL_83:
  if (v32 > *(a1 + 668) && *(a1 + 3257))
  {
    v43 = 0;
    goto LABEL_108;
  }

LABEL_86:
  if (v25)
  {
    if (*(a1 + 876) && v183[1].i32[3] > *(a1 + 880) && ((1.0 - *(a1 + 884)) * v183[1].i32[3]) > v183[2].i32[0] && v183[0].i32[1] >= *(a1 + 888) && (*(a1 + 892) * v40) <= v38)
    {
      v43 = 1;
      *(a1 + 2832) = 1;
      if (!v35 && v25)
      {
        goto LABEL_93;
      }
    }

    else
    {
      v43 = 0;
      if (!v35 && v25)
      {
LABEL_93:
        v44 = 1248;
        if (v32 > *(a1 + 668))
        {
          v44 = 1084;
        }

        v45 = a1 + v44;
        v46 = a1 + 1248;
        goto LABEL_100;
      }
    }
  }

  else
  {
    v43 = 0;
  }

  v45 = a1 + 876;
  if (v35)
  {
    v46 = a1 + 876;
  }

  else
  {
    v46 = a1 + 1248;
  }

LABEL_100:
  if (!v24)
  {
    v46 = v45;
  }

  if (*v46 && v183[1].i32[3] > *(v46 + 4) && ((1.0 - *(v46 + 8)) * v183[1].i32[3]) > v183[2].i32[0] && v39 >= *(v46 + 12) && (*(v46 + 16) * v40) <= v38)
  {
    v43 = 1;
  }

LABEL_108:
  if (v25 && *(a1 + 796) && v183[1].i32[1] >= *(a1 + 800) && (*(a1 + 804) * v183[1].i32[1]) <= v183[1].i32[0] && v39 >= *(a1 + 808) && (*(a1 + 812) * v40) <= v38)
  {
    v161 = 1;
    *(a1 + 2832) = 1;
  }

  else
  {
    v161 = 0;
  }

  v47 = 0;
  while (1)
  {
    v48 = a1 + 796;
    if (!v36)
    {
      if (v32 <= *(a1 + 668))
      {
        v48 = a1 + 1168;
      }

      else
      {
        v48 = a1 + 1004;
      }
    }

    v49 = v48 + v47;
    if (!v37)
    {
      v49 = a1 + v47 + 1168;
    }

    if (*v49 && v183[1].i32[1] >= *(v49 + 4) && (*(v49 + 8) * v183[1].i32[1]) <= v183[1].i32[0] && v39 >= *(v49 + 12) && (*(v49 + 16) * v40) <= v38)
    {
      break;
    }

    v47 += 20;
    if (v47 == 80)
    {
      goto LABEL_128;
    }
  }

  v161 = 1;
LABEL_128:
  v50 = 0.0;
  if (*(a1 + 2768) == 1)
  {
    v50 = Current - *(a1 + 2776);
  }

  if (*(a1 + 912))
  {
    v165 = 0;
    if (v50 >= *(a1 + 920) && v32 <= -81)
    {
      v165 = 1;
      *(a1 + 2832) = 1;
    }
  }

  else
  {
    v165 = 0;
  }

  if (*(a1 + 928) && *(a1 + 496) >= *(a1 + 932))
  {
    v158 = 0x100000001;
    *(a1 + 2832) = 1;
  }

  else
  {
    v158 = 0;
  }

  v51 = *(a1 + 56);
  if (!v51)
  {
LABEL_148:
    v167 = 0;
    goto LABEL_154;
  }

  valuePtr = 0;
  v52 = *(a1 + 24);
  if (!v52)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_13;
    }

    v12 = "%s, LQAManager: LQM table is NULL";
    goto LABEL_56;
  }

  if (!CFArrayGetCount(v52))
  {
    v10 = objc_autoreleasePoolPush();
    v11 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_13;
    }

    v12 = "%s: LQM table is empty";
    goto LABEL_56;
  }

  v53 = CFArrayGetValueAtIndex(*(a1 + 24), 0);
  if (!v53)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_13;
    }

    v12 = "%s, LQAManager: Latest LQM Report is NULL";
LABEL_56:
    v13 = 4;
    goto LABEL_12;
  }

  if (*(a1 + 2840))
  {
    v54 = sub_100017E88(a1);
    valuePtr = v54;
  }

  else
  {
    v54 = *(a1 + 2804);
    valuePtr = v54;
    if (!v54)
    {
      Value = CFDictionaryGetValue(v53, @"RSSI");
      if (!Value)
      {
        goto LABEL_14;
      }

      CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
      v54 = valuePtr;
    }
  }

  if (*(a1 + 56) < v54)
  {
    goto LABEL_148;
  }

  v56 = *(a1 + 3257);
  v167 = *(a1 + 3257) == 0;
  v57 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v58 = "Disabled";
    if (!v56)
    {
      v58 = "Enabled";
    }

    v132 = v58;
    [off_100298C40 WFLog:3 message:{"%s: AutoLeave feature is %s", "__WiFiLQAMgrCheckTriggerDisconnect"}];
  }

  objc_autoreleasePoolPop(v57);
LABEL_154:
  if (*(a1 + 896))
  {
    if (v167)
    {
      if (!a2)
      {
        v164 = 0;
        goto LABEL_169;
      }

LABEL_160:
      if ((*(a1 + 904) * a2) < a3)
      {
        goto LABEL_166;
      }

      goto LABEL_161;
    }

    if (a2 && *(a1 + 366))
    {
      goto LABEL_160;
    }
  }

LABEL_161:
  v164 = 0;
  if (!a2 || !*(a1 + 651))
  {
    goto LABEL_169;
  }

  v59 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v131 = "__WiFiLQAMgrCheckTriggerDisconnect";
    [off_100298C40 WFLog:4 message:"%s Simulating probe failure decision"];
  }

  objc_autoreleasePoolPop(v59);
LABEL_166:
  v60 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v133 = a2;
    v134 = a3;
    v131 = "__WiFiLQAMgrCheckTriggerDisconnect";
    v132 = v167;
    [off_100298C40 WFLog:3 message:"%s autoLeaveDecision:%d probesSent:%ld probesFailed:%ld"];
  }

  objc_autoreleasePoolPop(v60);
  v164 = 1;
LABEL_169:
  v155 = v51;
  v162 = sub_100049734(a1, &v184, &v185);
  v61 = 1;
  if ((v163 & 1) == 0 && (v43 & 1) == 0 && ((v165 | v161) & 1) == 0)
  {
    if (v162)
    {
      v61 = 1;
    }

    else
    {
      v61 = v167;
    }
  }

  v62 = *(a1 + 16);
  v157 = v25;
  v160 = v24;
  v159 = v43;
  v153 = a3;
  if (v62)
  {
    if (v62 == 2)
    {
      if (v164)
      {
        v61 = 1;
      }

      else
      {
        v61 &= *(a1 + 366) == 0;
      }
    }

    else if (v62 == 1)
    {
      v61 |= v158;
    }

    else if (v162)
    {
      v61 = 1;
    }

    else
    {
      v61 = v167;
    }
  }

  v14 = v61 & 1;
  v154 = v185;
  HIDWORD(v152) = v185 != 0;
  v63 = v61 & (v184 != 0);
  v64 = *(a1 + 248) != 0;
  v65 = (*(a1 + 176) & 0x11) != 0;
  v66 = *(a1 + 649) != 0;
  [+[WiFiUsageMonitor sharedInstance](WiFiUsageMonitor addTriggerDisconnectEvent:"addTriggerDisconnectEvent:isAlerted:isConfirmed:isExecuted:" isAlerted:*(a1 + 40) isConfirmed:0 isExecuted:v14, 0];
  v67 = +[WiFiUsageMonitor sharedInstance];
  v68 = *(a1 + 40);
  LOBYTE(valuePtr) = v163;
  BYTE1(valuePtr) = v159;
  BYTE2(valuePtr) = v161;
  HIBYTE(valuePtr) = v165;
  v169 = BYTE4(v158);
  v170 = v167;
  v171 = v164;
  v172 = v162;
  v173 = v7;
  v69 = v63;
  v174 = v160;
  v175 = BYTE4(v152);
  v176 = v63;
  v177 = v64;
  v178 = v65;
  v179 = v66;
  v180 = v186;
  v181 = v187;
  v182 = v155;
  [(WiFiUsageMonitor *)v67 setTdLogic_decisionState:&valuePtr forInterface:v68];
  if (v61)
  {
    v70 = *(a1 + 632);
    if (v70)
    {
      v70(*(a1 + 640), 0);
    }
  }

  v71 = v185;
  *(a1 + 273) = v185;
  v72 = v184;
  *(a1 + 272) = v184;
  if (v158)
  {
    v73 = 16;
  }

  else
  {
    v73 = 0;
  }

  if (v164)
  {
    v74 = 32;
  }

  else
  {
    v74 = 0;
  }

  if (v165)
  {
    v75 = 64;
  }

  else
  {
    v75 = 0;
  }

  v76 = v73 | v75 | v74 | (2 * v163) | (8 * v159) | (4 * v161) | v14 | (v167 << 22) | (v162 << 23) | (v160 << 7);
  if (v63)
  {
    v77 = 0;
  }

  else
  {
    v77 = 1024;
  }

  v78 = *(a1 + 248);
  v79 = *(a1 + 176);
  if (v79)
  {
    v80 = 0x4000;
  }

  else
  {
    v80 = (v79 << 10) & 0x4000;
  }

  v81 = v77 | ((v154 != 0) << 8) | v76 | (v78 << 9) | (*(a1 + 2832) << 21) | v80;
  v82 = *(a1 + 2760);
  if (v82 >= 0xA)
  {
    sub_1001432C0((a1 + 2760));
  }

  else if (*(a1 + 2761))
  {
    sub_1001431F0((a1 + 2760));
  }

  else
  {
    v83 = *(a1 + 1312);
    if (v83 < 0xB)
    {
      if (v83 == 10)
      {
        v84 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v131 = "__WiFiLQAMgrGetNextLQAMetricsRecordIdx";
          v132 = *(a1 + 1312);
          [off_100298C40 WFLog:2 message:"%s: submittotalRecords %d"];
        }

        objc_autoreleasePoolPop(v84);
        sub_100053F70((a1 + 1312));
        v82 = 0;
        *(a1 + 1312) = 0;
        *(a1 + 2760) = 0;
        v71 = v185;
        v72 = v184;
        LOBYTE(v78) = *(a1 + 248);
      }

      v85 = 1;
      *(a1 + 2761) = 1;
      v86 = a1 + 144 * v82;
      *(v86 + 1320) = vrev64_s32(*v183[0].i8);
      *(v86 + 1328) = v183[0].i32[2];
      *(v86 + 1332) = *(&v183[1].i64[1] + 4);
      *(v86 + 1340) = vzip2q_s32(*(v183 + 12), vzip1q_s32(*(v183 + 12), vdupq_lane_s32(*(&v183[0].u64[1] + 4), 0)));
      *(v86 + 1357) = v14;
      *(v86 + 1356) = v183[2].i8[8];
      *(v86 + 1358) = v165;
      *(v86 + 1360) = v71;
      *(v86 + 1361) = v72;
      *(v86 + 1362) = v78;
      *(v86 + 1363) = BYTE4(v158);
      *(v86 + 1392) = v27;
      *(v86 + 1359) = *(a1 + 2784);
      *(v86 + 1416) = *(a1 + 280);
      *(v86 + 1456) = v167;
      *(v86 + 1457) = *(a1 + 56);
      *(v86 + 1458) = v164;
      *(v86 + 1459) = a2;
      *(v86 + 1460) = v153;
      goto LABEL_211;
    }

    sub_100143258((a1 + 1312));
  }

  v85 = 0;
  v82 = 255;
LABEL_211:
  if (*(a1 + 649))
  {
    goto LABEL_212;
  }

  v91 = v14 & v167 ^ 1;
  if (v162)
  {
    v91 = 1;
  }

  if (((v165 | v163 | v159 | v161 | v91) & 1) == 0)
  {
    if (!*(a1 + 365))
    {
      v101 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Overriding AutoLeave (User Preference Adaptive) TriggerDisconnect decision for Probes", "__WiFiLQAMgrCheckTriggerDisconnect"}];
      }

      objc_autoreleasePoolPop(v101);
      *(a1 + 365) = 1;
      *(a1 + 400) = 1;
      sub_10004A508(a1);
      v89 = 0;
      v90 = 0;
      v14 = 0;
      v87 = 0x1000000;
      goto LABEL_233;
    }

    if (v164)
    {
      v92 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Proceeding with AutoLeave (User Preference Adaptive) TriggerDisconnect", "__WiFiLQAMgrCheckTriggerDisconnect"}];
      }

      objc_autoreleasePoolPop(v92);
      v89 = 0;
      v87 = 0;
      v90 = 0;
      goto LABEL_233;
    }

    v14 = 0;
  }

  if (!HIDWORD(v151))
  {
LABEL_212:
    v87 = 0;
    v88 = v81;
    goto LABEL_213;
  }

  v102 = +[WiFiRoamManager sharedWiFiRoamManager];
  if (v157 & v14)
  {
    v103 = (v154 != 0) | v69 ^ 1;
    if (*(a1 + 2804) <= *(a1 + 664) && (v154 != 0) | (v69 ^ 1) & 1)
    {
      v104 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: Not Triggering Roaming - userWalkout %d, possibleRoam %d\n", "__WiFiLQAMgrCheckTriggerDisconnect", v185, v184}];
      }

      v87 = 0;
      v14 = 1;
LABEL_274:
      v107 = 786432;
      goto LABEL_318;
    }
  }

  else
  {
    v103 = (v154 != 0) | v69 ^ 1;
  }

  v105 = (v162 != 0) & v103;
  if (v105 == 1)
  {
    v106 = *(a1 + 3257);
    v104 = objc_autoreleasePoolPush();
    if (v106)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: Not Triggering Roaming for fast disconnect - userWalkout %d, possibleRoam %d\n", "__WiFiLQAMgrCheckTriggerDisconnect", v185, v184}];
      }

      v87 = 0;
      goto LABEL_274;
    }

    if (off_100298C40)
    {
      v132 = v185;
      v133 = v184;
      v131 = "__WiFiLQAMgrCheckTriggerDisconnect";
      [off_100298C40 WFLog:4 message:{"%s: Use Reduced Roam time for fast disconnect - userWalkout %d, possibleRoam %d\n"}];
    }

    objc_autoreleasePoolPop(v104);
  }

  if (v14)
  {
    if (*(a1 + 185))
    {
      v109 = *(a1 + 192);
      if (v109 == 0.0)
      {
        v110 = 0.0;
      }

      else
      {
        v110 = Current - v109;
      }

      if (!v102)
      {
        goto LABEL_295;
      }

      goto LABEL_329;
    }

    if (sub_100140854(a1))
    {
      v125 = 6;
    }

    else
    {
      v125 = 2;
    }

    *(a1 + 192) = Current;
    *(a1 + 200) = 0;
    v126 = *(a1 + 296);
    if (v126 == 0.0 || v126 < Current)
    {
      if (!sub_1000658B8(*(a1 + 32), *(a1 + 40), v125))
      {
        *(a1 + 296) = Current + v125;
        goto LABEL_361;
      }

      *(a1 + 296) = 0;
      v127 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: Error while trying to set tdImminent", "__WiFiLQAMgrCheckTriggerDisconnect"}];
      }
    }

    else
    {
      v127 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Not triggering tdImminent, we are waiting for roam based off tdImminent\n", "__WiFiLQAMgrCheckTriggerDisconnect"}];
      }
    }

    objc_autoreleasePoolPop(v127);
LABEL_361:
    *(a1 + 185) = 1;
    v129 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Overriding TriggerDisconnect decision for Roam", "__WiFiLQAMgrCheckTriggerDisconnect"}];
    }

    objc_autoreleasePoolPop(v129);
    v89 = 0;
    v14 = 0;
    v81 = v81 | 0x50000;
    v90 = 1;
    v87 = &_mh_execute_header;
    goto LABEL_233;
  }

  v113 = *(a1 + 192);
  if (v113 == 0.0)
  {
    v110 = 0.0;
  }

  else
  {
    v110 = Current - v113;
  }

  if (!v102)
  {
    v111 = 1;
    goto LABEL_306;
  }

LABEL_329:
  [v102 lastRoamStatusTs];
  v118 = v117;
  v119 = [v102 didLastRoamSucceed];
  v120 = [v102 didLastRoamFailNoCand];
  if (v118 == 0.0)
  {
    v121 = 0.0;
  }

  else
  {
    v121 = Current - v118;
  }

  v122 = *(a1 + 3257);
  v123 = sub_100014994(a1);
  if (v121 <= 0.0 || v110 <= v121 || v119)
  {
    v128 = 3.0;
    if (!v122)
    {
      v128 = 5.0;
    }

    if (!v105)
    {
      v128 = 10.0;
    }

    if (v122)
    {
      v128 = 6.0;
    }
  }

  else
  {
    if (!v122 || v123)
    {
      v124 = (v122 != 0) | v120;
    }

    else
    {
      v124 = v110 >= 6.0;
    }

    if ((v85 & v124) == 1)
    {
      v111 = 0;
      *(a1 + 144 * v82 + 1448) = v121;
      goto LABEL_306;
    }

    v130 = v105 ^ 1;
    v128 = 6.0;
    if (v122)
    {
      v130 = 1;
    }

    else
    {
      v128 = 10.0;
    }

    if (!v130)
    {
      v128 = v128 * 0.5;
    }

    if (v124)
    {
      v111 = 0;
      goto LABEL_306;
    }
  }

  v111 = v110 <= v128;
  if (v110 > v128 || !v14)
  {
LABEL_306:
    v88 = v81 | 0x40000;
    if (_os_feature_enabled_impl())
    {
      v115 = (*(a1 + 2956) >> 1) & 1;
    }

    else
    {
      LOBYTE(v115) = 0;
    }

    v87 = 0;
    if (*(a1 + 185))
    {
      v116 = v111;
    }

    else
    {
      v116 = 1;
    }

    if (v14 & 1) != 0 || (v116 & 1) != 0 || (v115)
    {
LABEL_213:
      *(a1 + 2816) = v88;
      if (v85)
      {
        *(a1 + 144 * v82 + 1400) = v88;
      }

      if (!v14)
      {
        v89 = 0;
        v90 = 0;
        goto LABEL_232;
      }

      if (&_managed_event_fetch)
      {
        if (!(*(a1 + 2840) | v152))
        {
          *(a1 + 500) = 0;
          *(a1 + 3224) = CFAbsoluteTimeGetCurrent();
          if (sub_100140BCC(a1, 1))
          {
            v89 = 0;
            v90 = 0;
            v14 = 0;
            *(a1 + 169) = 1;
            goto LABEL_232;
          }
        }
      }

      if (!sub_1000487BC(a1) && !*(a1 + 3259))
      {
        *(a1 + 169) = 0;
        v100 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:2 message:{"%s Foreground Networking App not present & media player not running. Cache TrgDisc decision", "__WiFiLQAMgrCheckTriggerDisconnect"}];
        }

        objc_autoreleasePoolPop(v100);
        v14 = 0;
        v90 = 1;
        *(a1 + 2801) = 1;
        v89 = 0x100000000000000;
        goto LABEL_232;
      }

      if (*(a1 + 649))
      {
        v89 = 0;
        v14 = 0;
LABEL_222:
        *(a1 + 169) = 0;
        v90 = 1;
LABEL_232:
        v81 = v88;
LABEL_233:
        *(a1 + 2816) = v81;
        if (!v85)
        {
          goto LABEL_238;
        }

        v93 = v82;
        goto LABEL_235;
      }

      if (*(a1 + 652))
      {
        if (*(a1 + 1304))
        {
          v99 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:2 message:{"%s Suppress TrgDisc decision with User's previous input", "__WiFiLQAMgrCheckTriggerDisconnect"}];
          }

          objc_autoreleasePoolPop(v99);
          v89 = 0;
          v14 = 0;
          v87 |= 1uLL;
          goto LABEL_222;
        }

        if (*(a1 + 1296) || !sub_1001418B8(a1))
        {
          v89 = 0;
          v90 = 0;
          v14 = 0;
          *(a1 + 169) = 1;
          v87 |= 0x100uLL;
          goto LABEL_232;
        }
      }

      v89 = 0;
      v90 = 0;
      v14 = 1;
      goto LABEL_232;
    }

    sub_10014BDA4(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 230), 0, 1, 0, v114, v131, v132, v133, v134, v135, v136, v137, v138, SHIDWORD(v138), v139, v140, SHIDWORD(v140), v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152);
    *(a1 + 185) = 0;
    v104 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Link improved, re-arming wait for roam", "__WiFiLQAMgrCheckTriggerDisconnect"}];
    }

    v14 = 0;
    v107 = 393216;
    v87 = 0x10000;
LABEL_318:
    objc_autoreleasePoolPop(v104);
    v88 = v81 | v107;
    goto LABEL_213;
  }

LABEL_295:
  v111 = 1;
  if (!*(a1 + 185) || v110 > 10.0)
  {
    goto LABEL_306;
  }

  v112 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Not Roamed for %2.2f secs", "__WiFiLQAMgrCheckTriggerDisconnect", *&v110}];
  }

  objc_autoreleasePoolPop(v112);
  v81 = v81 | 0x140000;
  if ((v85 & 1) == 0)
  {
    v89 = 0;
    v14 = 0;
    *(a1 + 2816) = v81;
    v90 = 1;
    v87 = &_mh_execute_header;
    goto LABEL_238;
  }

  v14 = 0;
  v89 = 0;
  v93 = v82;
  *(a1 + 144 * v82 + 1448) = 10;
  *(a1 + 2816) = v81;
  v87 = &_mh_execute_header;
  v90 = 1;
LABEL_235:
  *(a1 + 1320 + 144 * v93 + 80) = v81;
  v94 = v85 ^ 1;
  if (*(a1 + 169))
  {
    v94 = 1;
  }

  if ((v94 & 1) == 0)
  {
    v108 = a1 + 1320 + 144 * v93;
    *(v108 + 37) = v14;
    if (v14)
    {
      if (*(a1 + 144) != 0.0)
      {
        *(v108 + 120) = (CFAbsoluteTimeGetCurrent() - *(a1 + 144));
      }

      if (*(a1 + 128) != 0.0)
      {
        *(v108 + 112) = (CFAbsoluteTimeGetCurrent() - *(a1 + 128));
      }
    }

    sub_100141BA4(a1, v82);
  }

LABEL_238:
  v95 = v156;
  v96 = *(a1 + 192);
  if (v96 != 0.0)
  {
    *(a1 + 200) = Current - v96;
  }

  [+[WiFiUsageMonitor sharedInstance](WiFiUsageMonitor setTdLogic_execState:"setTdLogic_execState:forInterface:" forInterface:v157 | ((v95 != 0) << 8) | v89, v87, *(a1 + 40)];
  if (!*(a1 + 169))
  {
    if (v90)
    {
      v97 = objc_autoreleasePoolPush();
      v98 = off_100298C40;
      if (off_100298C40)
      {
LABEL_251:
        v166 = v97;
        [v98 WFLog:3 message:{"%s: TrgDiscStatus %u [Rssi %d TxFrms %d TxFail %d TxRet %d fwFrms %d fwFail %d fwRtry %d RxFrms %d BcnSch %d BcnRx %d walkout %d possibleRoam %d Awd %d initPr %ld UnGw %f FgApp %ld SympScore %ld UsrInput %ld]", "__WiFiLQAMgrCheckTriggerDisconnect", v81, v183[2].u32[2], v183[0].u32[1], v183[0].u32[0], v183[0].u32[2], v183[1].u32[1], v183[1].u32[0], v183[1].u32[2], v183[0].u32[3], v183[1].u32[3], v183[2].u32[0], v185, v184, 0, *(a1 + 366), *&v50, sub_1000487BC(a1), 0, *(a1 + 1304)}];
        v97 = v166;
      }
    }

    else
    {
      if (byte_1002984C0 != 1)
      {
        goto LABEL_15;
      }

      v97 = objc_autoreleasePoolPush();
      v98 = off_100298C40;
      if (off_100298C40)
      {
        goto LABEL_251;
      }
    }

    objc_autoreleasePoolPop(v97);
  }

LABEL_15:
  *(a1 + 496) = 0;
  return v14;
}

unint64_t sub_100047FD4(uint64_t a1)
{
  memset(buffer, 170, 19);
  if (!a1)
  {
    sub_100143400();
    return 0;
  }

  v1 = sub_10000A540(a1, @"BSSID");
  if (!v1)
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: curNetwork BSSID is NULL", "__WiFiLQAMgrGetCurBssid"}];
    }

    goto LABEL_12;
  }

  if (!CFStringGetCString(v1, buffer, 19, 0))
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: CString conversion failure", "__WiFiLQAMgrGetCurBssid"}];
    }

LABEL_12:
    objc_autoreleasePoolPop(v6);
    return 0;
  }

  result = ether_aton(buffer);
  if (result)
  {
    v3 = result;
    v4 = 0;
    result = 0;
    do
    {
      v5 = *v3++;
      result |= v5 << v4;
      v4 += 8;
    }

    while (v4 != 48);
  }

  return result;
}

void sub_100048104(uint64_t a1)
{
  v2 = *(a1 + 2912);
  if (v2)
  {
    dispatch_source_set_timer(v2, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  *(a1 + 2920) = 0;
}

uint64_t sub_100048148(void *a1, CFTypeRef cf)
{
  if (a1)
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x2020000000;
    if (cf)
    {
      v3 = CFRetain(cf);
    }

    else
    {
      v3 = 0;
    }

    v8[3] = v3;
    CFRetain(a1);
    v6 = a1[38];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004A9D4;
    block[3] = &unk_10025EFD8;
    block[4] = v8;
    block[5] = a1;
    dispatch_async(v6, block);
    _Block_object_dispose(v8, 8);
    return 0;
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: LQAMgr is NULL", "__WiFiLQAMgrScheduleProbe"}];
    }

    objc_autoreleasePoolPop(v4);
    return 4294963365;
  }
}

void sub_10004826C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8.length = CFArrayGetCount(v2);
  v8.location = 0;
  v3 = CFArrayContainsValue(v2, v8, *(a1 + 40));
  v4 = *(a1 + 40);
  if (v3 || *(a1 + 48) == v4)
  {
    CFDictionarySetValue(v4, @"kWiFiLqaMgrIgnoreProbe", kCFBooleanTrue);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Invalid Handle", "WiFiLQAMgrIgnoreDiagnosticProbe_block_invoke"}];
    }

    objc_autoreleasePoolPop(v5);
  }

  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 48));
  v6 = *(a1 + 32);

  CFRelease(v6);
}

uint64_t sub_100048348(uint64_t a1)
{
  if (a1)
  {
    return (*(a1 + 660) + *(a1 + 672));
  }

  sub_1001434D8();
  return 0;
}

BOOL sub_10004837C(uint64_t a1, uint64_t a2, int a3, double a4)
{
  [+[NSDate date](NSDate timeIntervalSince1970];
  if (!a1)
  {
    sub_10014361C();
    return 0;
  }

  if (!a2)
  {
    sub_1001435B0();
    return 0;
  }

  v9 = v8;
  v10 = sub_1000333E8(a2, @"RSSI");
  if (!v10)
  {
    sub_100143544();
    return 0;
  }

  v11 = *(a1 + 672);
  v12 = v11 + *(a1 + 660);
  v13 = v11 + a3;
  if (v13 < v12)
  {
    v12 = v13;
  }

  if (v12 > v10)
  {
    return 0;
  }

  return v9 - a4 >= 60.0 || *(a1 + 2784) == 1 || v10 >= *(a1 + 656) + 5;
}

uint64_t sub_100048460(uint64_t a1, const void *a2, int a3, double a4)
{
  [+[NSDate date](NSDate timeIntervalSince1970];
  if (!a1)
  {
    v18 = objc_autoreleasePoolPush();
    v25 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_36;
    }

    v26 = "%s: LQAMgr is NULL";
    goto LABEL_45;
  }

  if (!a2)
  {
    v18 = objc_autoreleasePoolPush();
    v25 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_36;
    }

    v26 = "%s: network is NULL";
    goto LABEL_45;
  }

  v9 = v8;
  v10 = sub_1000333E8(a2, @"RSSI");
  if (!v10)
  {
    v18 = objc_autoreleasePoolPush();
    v25 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_36;
    }

    v26 = "%s: rssi is 0";
LABEL_45:
    v27 = 4;
    goto LABEL_35;
  }

  v11 = v10;
  v12 = *(a1 + 672);
  v13 = v12 + *(a1 + 660);
  v14 = v12 + a3;
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(a1 + 3258) == 1 && !sub_10000A7CC(*(a1 + 48)) && !*(a1 + 2842) || *(a1 + 2960) != 0;
  v17 = v9 - a4;
  if (!*(a1 + 3257) || !v16)
  {
    if (v15 > v11 || v17 < 60.0 && *(a1 + 2784) != 1 && v11 < *(a1 + 656) + 5)
    {
      goto LABEL_29;
    }

LABEL_20:
    v18 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Allowed TriggerDisconnected network %@ for auto-join, RSSI: %d, Thres: %d timeFromLastTD:%2.2f seconds", "WiFiLQAMgrAllowNetworkForAutoJoin", sub_10000A878(a2), v11, v15, *&v17}];
    }

    v19 = 1;
    goto LABEL_37;
  }

  if (v17 >= 60.0)
  {
    v20 = *(a1 + 672) + a3;
    if (v20 >= -70)
    {
      v15 = 4294967226;
    }

    else
    {
      v15 = v20;
    }
  }

  else
  {
    v15 = 4294967231;
  }

  v21 = objc_autoreleasePoolPush();
  v22 = off_100298C40;
  if (off_100298C40)
  {
    v23 = sub_10000A878(a2);
    [v22 WFLog:2 message:{"%s: network %@ for auto-join, RSSI: %d, Thres: %d Band %d", "WiFiLQAMgrAllowAutoJoinAssertiveTD", v23, v11, v15, sub_100018030(a2)}];
  }

  objc_autoreleasePoolPop(v21);
  if (v15 <= v11)
  {
    goto LABEL_20;
  }

LABEL_29:
  v24 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Skipping TriggerDisconnected network %@ for auto-join, RSSI: %d, Thres: %d timeFromLastTD:%2.2f seconds", "WiFiLQAMgrAllowNetworkForAutoJoin", sub_10000A878(a2), v11, v15, *&v17}];
  }

  objc_autoreleasePoolPop(v24);
  v19 = 0;
  if (&_symptom_create && v11 >= -89)
  {
    symptom_create();
    symptom_send();
    v18 = objc_autoreleasePoolPush();
    v25 = off_100298C40;
    if (!off_100298C40)
    {
LABEL_36:
      v19 = 0;
LABEL_37:
      objc_autoreleasePoolPop(v18);
      return v19;
    }

    v26 = "%s: Notified Symptoms about found Trigger Disconnected network";
    v27 = 2;
LABEL_35:
    [v25 WFLog:v27 message:{v26, "WiFiLQAMgrAllowNetworkForAutoJoin"}];
    goto LABEL_36;
  }

  return v19;
}

uint64_t sub_10004879C(uint64_t a1)
{
  if (!a1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  result = *(a1 + 660);
  v3 = *(a1 + 656);
  return result;
}

uint64_t sub_1000487BC(uint64_t a1)
{
  if (!a1)
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: LQAMgr is NULL", "__WiFiLQAMgrDoesForegroundAppUseWiFi"}];
    }

    v3 = 0;
LABEL_17:
    objc_autoreleasePoolPop(v6);
    return v3;
  }

  if (!*(a1 + 2840))
  {
    v1 = (~*(a1 + 500) & 5) != 0 && (*(a1 + 500) & 0x20) == 0;
    if (v1 && (*(a1 + 500) & 0xB) != 9)
    {
      if (![+[WiFiUserInteractionMonitor isNetworkingAppInForeground] sharedInstance]
      {
        return 0;
      }

      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: user interaction monitor indicates FG networking app active", "__WiFiLQAMgrDoesForegroundAppUseWiFi"}];
      }

      v3 = 1;
      goto LABEL_17;
    }
  }

  return 1;
}

BOOL sub_1000488B8(uint64_t a1)
{
  if (a1)
  {
    return sub_1000487BC(a1) != 0;
  }

  sub_100143688();
  return 0;
}

void sub_1000488E8(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 152) = 0;
  }
}

void sub_100048918(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, unint64_t *a6, unint64_t *a7, unint64_t *a8)
{
  if (a1)
  {
    v8 = *(a1 + 152);
    if (v8)
    {
      BytePtr = CFDataGetBytePtr(v8);
      v17 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:2 message:{"%s: TxFail:%d TxFrames:%d TxReTrans:%d rxFrames:%d FwTxFail:%d FwTxFrames:%d FwTxReTrans:%d beaconSched:%d beaconRecv:%d rssi:%d ccaTotal:%d ccaSelf:%d ccaOther:%d ccaInterference:%d", "WiFiLQAMgrGetInstantaneousLQForMetricsReporting", *BytePtr, *(BytePtr + 1), *(BytePtr + 2), *(BytePtr + 3), *(BytePtr + 4), *(BytePtr + 5), *(BytePtr + 6), *(BytePtr + 7), *(BytePtr + 8), *(BytePtr + 10), *(BytePtr + 44), *(BytePtr + 45), *(BytePtr + 46), *(BytePtr + 47)}];
      }

      objc_autoreleasePoolPop(v17);
      if (a2)
      {
        *a2 = *(BytePtr + 44);
      }

      if (a3)
      {
        *a3 = *(BytePtr + 45);
      }

      if (a4)
      {
        *a4 = *(BytePtr + 46);
      }

      if (a5)
      {
        *a5 = *(BytePtr + 47);
      }

      if (a6)
      {
        v18 = *(BytePtr + 1);
        if (v18)
        {
          v19 = (*BytePtr / v18 * 100.0);
        }

        else
        {
          v19 = 0;
        }

        *a6 = v19;
      }

      if (a7)
      {
        v20 = *(BytePtr + 7);
        if (!v20 || (v21 = *(BytePtr + 8), v22 = __OFSUB__(v20, v21), v23 = v20 - v21, (v23 < 0) ^ v22 | (v23 == 0)))
        {
          v24 = 0;
        }

        else
        {
          v24 = (v23 / v20 * 100.0);
        }

        *a7 = v24;
      }

      if (a8)
      {
        v25 = *(BytePtr + 5);
        if (v25)
        {
          v26 = (*(BytePtr + 4) / v25 * 100.0);
        }

        else
        {
          v26 = 0;
        }

        *a8 = v26;
      }
    }

    else
    {
      sub_1001439F0();
    }
  }

  else
  {
    sub_100143A5C();
  }
}

void sub_100048AFC(uint64_t a1, char a2)
{
  if (a1)
  {
    *(a1 + 2842) = a2;
  }

  else
  {
    sub_100143C78();
  }
}

uint64_t sub_100048B24(uint64_t a1, __int16 a2)
{
  if (a1)
  {
    *(a1 + 2908) = a2;
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"[TrafficEngineering]: Critical AppState = %d NonCritical AppState = %d", a2, HIBYTE(a2)}];
    }

    v4 = 0;
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s, LQAManagerRef is NULL", "WiFiLQAMgrSetLQATrafficConfig"}];
    }

    v4 = 4294963396;
  }

  objc_autoreleasePoolPop(v3);
  return v4;
}

uint64_t sub_100048BD4(uint64_t a1, void *a2)
{
  result = sub_100018608(*(a1 + 32));
  if (result != 1)
  {
    return result;
  }

  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"[TrafficEngineering]: Critical App Event %@", a2}];
  }

  objc_autoreleasePoolPop(v5);
  v6 = *(a1 + 2924);
  ++dword_1002984C4;
  v7 = [a2 objectForKey:@"CHANNEL"];
  v8 = [a2 objectForKey:@"RSSI"];
  v9 = [a2 objectForKey:@"BSSID"];
  v10 = [a2 objectForKey:@"LINK_HEALTH"];
  v11 = sub_10000A540(*(a1 + 48), @"BSSID");
  v12 = [a2 objectForKey:@"CRITICAL_TRAFFIC_STATE"];
  v13 = [v7 intValue];
  v14 = [v8 intValue];
  v15 = [v10 intValue];
  v16 = [v12 intValue];
  *(a1 + 2936) = CFAbsoluteTimeGetCurrent();
  if (*(a1 + 2856) != v13 || (result = [v9 isEqual:v11], (result & 1) == 0))
  {
    v17 = objc_autoreleasePoolPush();
    v18 = off_100298C40;
    if (!off_100298C40)
    {
LABEL_14:
      objc_autoreleasePoolPop(v17);
      v6 = 1;
      goto LABEL_15;
    }

    v19 = "[TrafficEngineering]: Peer on different BSS, Switch/Continue default behavior";
LABEL_13:
    [v18 WFLog:3 message:v19];
    goto LABEL_14;
  }

  if (!v16)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_14;
    }

    v19 = "[TrafficEngineering]: Critical App terminated, Revert to default behavior";
    goto LABEL_13;
  }

  if (v15 <= 3u)
  {
    if (v15 != 1)
    {
      if (v15 == 2)
      {
        v6 = 2;
      }

      goto LABEL_26;
    }

LABEL_25:
    v6 = 1;
    goto LABEL_26;
  }

  if (v15 == 8)
  {
    goto LABEL_25;
  }

  if (v15 == 4)
  {
    if (v14 < -75)
    {
      v6 = 1;
    }

    else
    {
      v6 = 4;
    }
  }

LABEL_26:
  if (*(a1 + 2924) != v6)
  {
    if (*(a1 + 2905) == 1)
    {
      if (v6 > 4 || ((1 << v6) & 0x16) == 0)
      {
        goto LABEL_16;
      }
    }

    else if (v6 != 1)
    {
      goto LABEL_16;
    }

LABEL_15:
    result = sub_100150780(*(a1 + 32), v6);
LABEL_16:
    dword_1002984C4 = 0;
  }

  return result;
}

void sub_100048E4C(uint64_t a1)
{
  v2 = *(a1 + 2912);
  if (v2)
  {
    v3 = dispatch_time(0, 30000000000);
    dispatch_source_set_timer(v2, v3, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  *(a1 + 2920) = 1;
}

void sub_100048EA4(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: current state is %d\n", "WiFiLQAMgrSetAVSystemCallMode", a2}];
  }

  objc_autoreleasePoolPop(v4);
  *(a1 + 3258) = a2;
}

void sub_100048F18(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: is media playing is %d\n", "WiFiLQAMgrSetMediaPlayerRunningState", a2}];
  }

  objc_autoreleasePoolPop(v4);
  *(a1 + 3259) = a2;
}

uint64_t sub_100048F8C()
{
  result = _CFRuntimeRegisterClass();
  qword_1002984C8 = result;
  return result;
}

void sub_100048FB4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"enter:%s: \n", "__WiFiLQAMgrRelease"}];
  }

  objc_autoreleasePoolPop(v2);
  if (!a1)
  {
    sub_100143D7C();
  }

  v3 = CFGetTypeID(a1);
  v4 = qword_1002984C8;
  if (!qword_1002984C8)
  {
    pthread_once(&stru_1002977E0, sub_100048F8C);
    v4 = qword_1002984C8;
  }

  if (v3 != v4)
  {
    sub_100143D50();
  }

  qword_1002984B8 = 0;
  if (*(a1 + 536))
  {
    tcp_connection_fallback_watcher_destroy();
  }

  *(a1 + 536) = 0;
  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 40) = 0;
  }

  v6 = *(a1 + 408);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 408) = 0;
  }

  v7 = *(a1 + 552);
  if (v7)
  {
    dispatch_release(v7);
    *(a1 + 552) = 0;
  }

  v8 = *(a1 + 344);
  if (v8)
  {
    dispatch_release(v8);
    *(a1 + 344) = 0;
  }

  v9 = *(a1 + 2912);
  if (v9)
  {
    dispatch_release(v9);
    *(a1 + 2912) = 0;
  }

  *(a1 + 2920) = 0;
  v10 = *(a1 + 304);
  if (v10)
  {
    dispatch_release(v10);
  }

  v11 = *(a1 + 2928);
  if (v11)
  {
    dispatch_release(v11);
  }

  v12 = *(a1 + 2976);
  if (v12)
  {
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 48) = 0;
  }

  v14 = *(a1 + 24);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 24) = 0;
  }

  v15 = *(a1 + 328);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 328) = 0;
  }

  v16 = *(a1 + 1296);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 1296) = 0;
  }

  v17 = *(a1 + 1280);
  if (v17)
  {
    CFRelease(v17);
    *(a1 + 1280) = 0;
  }

  v18 = *(a1 + 256);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 256) = 0;
  }

  v19 = *(a1 + 264);
  if (v19)
  {
    CFRelease(v19);
    *(a1 + 264) = 0;
  }

  v20 = *(a1 + 3232);
  if (v20)
  {
    CFRelease(v20);
    *(a1 + 3232) = 0;
  }

  v21 = *(a1 + 152);
  if (v21)
  {
    CFRelease(v21);
    *(a1 + 152) = 0;
  }

  v22 = *(a1 + 160);
  if (v22)
  {
    CFRelease(v22);
    *(a1 + 160) = 0;
  }

  v23 = *(a1 + 120);
  if (v23)
  {
    CFRelease(v23);
    *(a1 + 120) = 0;
  }

  v24 = *(a1 + 216);
  if (v24)
  {
    CFRelease(v24);
    *(a1 + 216) = 0;
  }

  v25 = *(a1 + 64);
  if (v25)
  {
    CFRelease(v25);
  }

  bzero((a1 + 16), 0xCB8uLL);
  v26 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"exit: %s: \n", "__WiFiLQAMgrRelease"}];
  }

  objc_autoreleasePoolPop(v26);
}

void sub_100049214(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"RSSI_WIN: Configure Dynamic RSSI Window = %u", *(a1 + 2993)}];
  }

  objc_autoreleasePoolPop(v2);
  v3 = *(a1 + 32);
  v4 = *(a1 + 2993);

  sub_100150C60(v3, v4);
}

uint64_t sub_10004928C(uint64_t a1)
{
  if (a1)
  {
    sub_100143DA8(v2, a1, &v3);
    return v3;
  }

  else
  {
    sub_1001440CC();
    return 0;
  }
}

void sub_1000492CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  value = 0;
  valuePtr = 0;
  v31 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  v25 = 0;
  number = 0;
  v23 = 0;
  v24 = 0;
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s Processing SYMPTOMS_INFO_TRIGGER_DISCONNECT_STATE\n", "__WiFiLQAMgrFetchSymptomsViewOfLink_block_invoke"}];
  }

  objc_autoreleasePoolPop(v6);
  pthread_mutex_lock(&stru_100297A18);
  v7 = *(a1 + 32);
  if (*(v7 + 2992))
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s LQA manager is in closing \n", "__WiFiLQAMgrFetchSymptomsViewOfLink_block_invoke"}];
    }

    objc_autoreleasePoolPop(v8);
    pthread_mutex_unlock(&stru_100297A18);
    v9 = *(a1 + 32);

    CFRelease(v9);
    return;
  }

  *(v7 + 504) = 0x400000000000FFFFLL;
  *(v7 + 528) = 0;
  *(v7 + 520) = 0;
  *(v7 + 544) = *(a1 + 40);
  *(v7 + 545) = *(a1 + 41);
  if (a2 || !a3)
  {
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Error %d from Managed Event Fetch", "__WiFiLQAMgrFetchSymptomsViewOfLink_block_invoke", a2}];
    }
  }

  else
  {
    v10 = *(a3 + 48);
    if (v10)
    {
      if (CFDictionaryGetValueIfPresent(v10, @"impact-flags", &value) && value)
      {
        CFNumberGetValue(value, kCFNumberIntType, &valuePtr);
        *(*(a1 + 32) + 500) = valuePtr;
      }

      v11 = 0;
      if (CFDictionaryGetValueIfPresent(*(a3 + 48), @"net-score", &number) && number)
      {
        CFNumberGetValue(number, kCFNumberIntType, &v23);
        v12 = *(a1 + 32);
        v13 = *(v12 + 512);
        if (v13 == v23)
        {
          v11 = 0;
        }

        else
        {
          v15 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: Change in netscore observed from %d to %d", "__WiFiLQAMgrFetchSymptomsViewOfLink_block_invoke", *(*(a1 + 32) + 512), v23}];
          }

          objc_autoreleasePoolPop(v15);
          v13 = v23;
          v12 = *(a1 + 32);
          v11 = 1;
        }

        *(v12 + 512) = v13;
      }

      if (CFDictionaryGetValueIfPresent(*(a3 + 48), @"AWD-info", &v32) && v32)
      {
        if (CFDictionaryGetValueIfPresent(v32, @"ARP-failures", &v31) && v31)
        {
          CFNumberGetValue(v31, kCFNumberIntType, &v25 + 4);
          *(*(a1 + 32) + 520) = HIDWORD(v25);
        }

        if (CFDictionaryGetValueIfPresent(v32, @"dns-total", &v29) && v29)
        {
          CFNumberGetValue(v29, kCFNumberIntType, &v24 + 4);
          *(*(a1 + 32) + 524) = HIDWORD(v24);
        }

        if (CFDictionaryGetValueIfPresent(v32, @"dns-impacted", &v30) && v30)
        {
          CFNumberGetValue(v30, kCFNumberIntType, &v25);
          *(*(a1 + 32) + 528) = v25;
        }

        if (CFDictionaryGetValueIfPresent(v32, @"data-stalls-score", &v28) && v28)
        {
          CFNumberGetValue(v28, kCFNumberIntType, &v24);
          v16 = *(a1 + 32);
          v17 = *(v16 + 532);
          if (v17 != v24)
          {
            v18 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: Change in datastallscore observed from %d to %d", "__WiFiLQAMgrFetchSymptomsViewOfLink_block_invoke", *(*(a1 + 32) + 532), v24}];
            }

            objc_autoreleasePoolPop(v18);
            v17 = v24;
            v16 = *(a1 + 32);
            *(v16 + 532) = v24;
            v11 = 1;
          }

          *(v16 + 504) = v17;
        }

        if (CFDictionaryGetValueIfPresent(v32, @"rnf-denials-score", &v27) && v27)
        {
          CFNumberGetValue(v27, kCFNumberFloatType, &v23 + 4);
          *(*(a1 + 32) + 508) = HIDWORD(v23);
        }
      }

      if (*(a1 + 40))
      {
        v19 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s Symptoms Input: %@", "__WiFiLQAMgrFetchSymptomsViewOfLink_block_invoke", *(a3 + 48)}];
        }

        objc_autoreleasePoolPop(v19);
      }

      goto LABEL_53;
    }

    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: additional_info NULL from Managed Event Fetch", "__WiFiLQAMgrFetchSymptomsViewOfLink_block_invoke", v22}];
    }
  }

  objc_autoreleasePoolPop(v14);
  v11 = 0;
LABEL_53:
  v20 = *(a1 + 32);
  *(v20 + 546) = v11;
  v21 = *(v20 + 1288);
  if (v21)
  {
    dispatch_async_f(v21, v20, sub_100140CD8);
  }

  pthread_mutex_unlock(&stru_100297A18);
  CFRelease(*(a1 + 32));
}

BOOL sub_100049734(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v127 = 0;
  v126 = 0;
  v6 = _os_feature_enabled_impl();
  v7 = _os_feature_enabled_impl();
  if (!a1)
  {
    sub_1001443A8();
    return 0;
  }

  v8 = v7;
  if (((_os_feature_enabled_impl() | v6) & 1) == 0)
  {
    sub_100144138();
    return 0;
  }

  if (sub_10000A7CC(*(a1 + 48)) || sub_10000A604(*(a1 + 48)))
  {
    sub_1001441A4();
    return 0;
  }

  if (*(a1 + 228))
  {
    sub_100144210();
    return 0;
  }

  v9 = "NO";
  if (*(a1 + 653) && *(a1 + 654))
  {
    v9 = "YES";
  }

  v10 = [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor isRealTimeAppActive]|| *(a1 + 2960) != 0;
  v11 = [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor isCellularInexpensive5G];
  v12 = v11;
  if (!v10 && (v6 & v11 & 1) == 0)
  {
    sub_10014427C();
    return 0;
  }

  if (sub_1001408E0(a1, 4))
  {
    v13 = a3;
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Data stall detected when there is realtime traffic", "__WiFiLQAMgrDetectDataStallOnRealtimeTraffic"}];
    }

    objc_autoreleasePoolPop(v14);
    v15 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Fast Disconnect: Data stall on realtime traffic", "__WiFiLQAMgrShouldPerformFastDisconnect"}];
    }

    objc_autoreleasePoolPop(v15);
    v109 = 1;
    a3 = v13;
  }

  else
  {
    v109 = 0;
  }

  v105 = a2;
  if (sub_100014814(a1) || v109)
  {
    v16 = 6;
  }

  else
  {
    v16 = 0;
  }

  if (*(a1 + 2804) >= *(a1 + 656) + v16)
  {
    v96 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Fast Disconnect not triggered - Last RSSI: %d >= Good Link RSSI: %d", "__WiFiLQAMgrShouldPerformFastDisconnect", *(a1 + 2804), (*(a1 + 656) + v16)}];
    }

    objc_autoreleasePoolPop(v96);
    return 0;
  }

  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v124 = v17;
  v125 = v17;
  v123 = v17;
  if (v6 && (value = 0, LODWORD(valuePtr[0]) = 0, (*(a1 + 2956) & 2) != 0) && (v18 = *(a1 + 24)) != 0 && CFArrayGetCount(v18) >= 1 && ((ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), 0), *(a1 + 3258) == 1) && !sub_10000A7CC(*(a1 + 48)) && !*(a1 + 2842) || CFDictionaryGetValueIfPresent(ValueAtIndex, @"TXRATE", &value) && value && ((CFNumberGetValue(value, kCFNumberIntType, valuePtr), SLODWORD(valuePtr[0]) < 10000) ? (v22 = value == 0) : (v22 = 1), !v22)))
  {
    v20 = "YES";
    v104 = 1;
    v21 = 1;
  }

  else
  {
    v104 = 0;
    v21 = 0;
    v20 = "NO";
  }

  v124 = 0u;
  v125 = 0u;
  v123 = 0u;
  if (!sub_1000141C0(a1, &v123))
  {
    sub_100144348();
    return 0;
  }

  v102 = v12;
  v103 = v10;
  v101 = v20;
  v23 = "NO";
  if (v8)
  {
    if (*(a1 + 2956))
    {
      v23 = "NO";
    }

    else
    {
      v23 = "YES";
    }
  }

  v100 = v23;
  v24 = *(a1 + 2804);
  v25 = *(a1 + 664);
  if (v24 <= v25)
  {
    v26 = 1104;
  }

  else
  {
    v26 = 940;
  }

  v27 = v26 + a1 + 8;
  v28 = 4;
  while (!*(v27 - 8) || SDWORD1(v123) < *(v27 - 4) || (*v27 * SDWORD1(v123)) > v123 || SDWORD2(v123) <= *(v27 + 4) * DWORD1(v123))
  {
    v27 += 16;
    if (!--v28)
    {
      v108 = 0;
      goto LABEL_56;
    }
  }

  ++v21;
  v108 = 1;
LABEL_56:
  v29 = 1248;
  if (v24 > v25)
  {
    v29 = 1084;
  }

  v30 = a1 + v29;
  if (!*v30)
  {
    v107 = 0;
    goto LABEL_88;
  }

  v31 = HIDWORD(v124);
  if (SHIDWORD(v124) <= *(v30 + 4) || (v32 = v125, ((1.0 - *(v30 + 8)) * SHIDWORD(v124)) <= v125))
  {
    v107 = 0;
    *(a1 + 3256) = 0;
    goto LABEL_88;
  }

  value = 0;
  LOBYTE(valuePtr[0]) = 0;
  v33 = CFArrayGetValueAtIndex(*(a1 + 24), 0);
  if (v33)
  {
    if (*(a1 + 3257) && *(a1 + 3258) == 1 && (v34 = v33, !sub_10000A7CC(*(a1 + 48))) && ((v35 = (v31 - v32) / v31 * 100.0, v35 >= 90.0) ? (v36 = *(a1 + 2842) == 0) : (v36 = 0), v36 && (v37 = *(a1 + 48)) != 0 && sub_100018030(v37) == 1 && (*(a1 + 230) & 0xFFFD) == 4 && *(a1 + 2804) <= -80 && CFDictionaryGetValueIfPresent(v34, @"CCA", &value) && value && (CFNumberGetValue(value, kCFNumberSInt8Type, valuePtr), LOBYTE(valuePtr[0]) >= 0x3Cu)))
    {
      v38 = ++*(a1 + 3256);
      if (v38 >= 2)
      {
        v39 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Voting for poor 2.4GHz link with High Beacon PER, high CCA %u at low RSSI %d", "__WiFiLQAMgrDetectPoor24GHzLink", LOBYTE(valuePtr[0]), *(a1 + 2804)}];
        }

        objc_autoreleasePoolPop(v39);
        HIDWORD(v107) = 1;
        v40 = 2;
        goto LABEL_87;
      }
    }

    else
    {
      *(a1 + 3256) = 0;
    }
  }

  else
  {
    sub_1001442E8();
  }

  HIDWORD(v107) = 0;
  v40 = 1;
LABEL_87:
  v21 += v40;
  LODWORD(v107) = 1;
LABEL_88:
  v41 = 1004;
  if (v24 <= v25)
  {
    v41 = 1168;
  }

  v42 = (v41 + a1 + 8);
  v43 = 4;
  while (!*(v42 - 8) || SDWORD1(v124) < *(v42 - 1) || (*v42 * SDWORD1(v124)) > v124)
  {
    v42 += 5;
    if (!--v43)
    {
      v106 = 0;
      goto LABEL_97;
    }
  }

  ++v21;
  v106 = 1;
LABEL_97:
  value = 0;
  Current = CFAbsoluteTimeGetCurrent();
  valuePtr[0] = 0.0;
  v45 = *(a1 + 64);
  v46 = 0.0;
  if (v45)
  {
    v47 = Current;
    Count = CFArrayGetCount(v45);
    if (Count >= 1)
    {
      v49 = Count;
      v50 = 0;
      v51 = 0;
      while (1)
      {
        v52 = CFArrayGetValueAtIndex(*(a1 + 64), v50);
        if (!v52)
        {
          break;
        }

        v53 = v52;
        v54 = CFDictionaryGetValue(v52, @"kWiFiLqaMgrLqmSampleLocalTimestamp");
        if (!v54)
        {
          v95 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s ChanQualityTimestampNumRef numberRef is NULL at index:%ld!", "__WiFiLQAMgrExtractAveragep95Latency", v50}];
          }

          goto LABEL_221;
        }

        CFNumberGetValue(v54, kCFNumberDoubleType, valuePtr);
        if (valuePtr[0] == 0.0)
        {
          v95 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s ChanQualityTimestampValue Value is NULL at index:%ld!", "__WiFiLQAMgrExtractAveragep95Latency", v50}];
          }

          goto LABEL_221;
        }

        if (v47 - valuePtr[0] <= *(a1 + 680) && CFDictionaryGetValueIfPresent(v53, @"P95_TX_LATENCY_SCORE", &value))
        {
          v128 = 0;
          if (value)
          {
            CFNumberGetValue(value, kCFNumberIntType, &v128);
            v55 = v128;
          }

          else
          {
            v55 = 0.0;
          }

          v46 = v46 + v55;
          ++v51;
        }

        if (v49 == ++v50)
        {
          goto LABEL_110;
        }
      }

      v95 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s, LQAManager: channel quality Report at %ld index is NULL", "__WiFiLQAMgrExtractAveragep95Latency", v50}];
      }

LABEL_221:
      objc_autoreleasePoolPop(v95);
LABEL_110:
      if (v51 < 1)
      {
        v46 = 0.0;
      }

      else
      {
        v46 = v46 / v51;
      }
    }
  }

  if (*(a1 + 3257))
  {
    if (*(a1 + 3258) != 1 || sub_10000A7CC(*(a1 + 48)))
    {
      v56 = 0;
    }

    else
    {
      v56 = 0;
      if (!*(a1 + 2842) && SDWORD1(v123) >= 201 && v46 > 150.0)
      {
        v57 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: Total frames in the past 6s window txFrames %u and average latency %f recommending TD\n", "__WiFiLQAMgrShouldPerformFastDisconnect", DWORD1(v123), *&v46}];
        }

        objc_autoreleasePoolPop(v57);
        ++v21;
        v56 = 1;
      }
    }

    if (*(a1 + 3257) && *(a1 + 3258) == 1 && !sub_10000A7CC(*(a1 + 48)) && !*(a1 + 2842) && (DWORD1(v125) & 0x80000000) == 0 && [+[WiFiUserInteractionMonitor isCallKitActive]&& SDWORD1(v125) <= 20 sharedInstance]
    {
      v58 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: Seeing less than expected RX frames during realtime call, average frames in last 3 seconds %u \n", "__WiFiLQAMgrShouldPerformFastDisconnect", DWORD1(v125)}];
      }

      objc_autoreleasePoolPop(v58);
    }
  }

  else
  {
    v56 = 0;
  }

  if (v109)
  {
    v59 = (v21 + 2);
  }

  else
  {
    v59 = v21;
  }

  v60 = v59 > 1;
  if (a3 && v59 >= 2 && ([+[WiFiUserInteractionMonitor isCarModeActive]|| (*(a1 + 2784) | 2) == 6 sharedInstance])
  {
    *a3 = 1;
    if (v105)
    {
      *v105 = 0;
    }
  }

  v61 = +[WiFiUsageMonitor sharedInstance];
  v62 = *(a1 + 40);
  value = v59;
  v111 = v104;
  v112 = v108;
  v113 = v107;
  v114 = v106;
  v115 = v56;
  v116 = BYTE4(v107);
  v117 = v109;
  v118 = 0;
  v119 = v103;
  v120 = v102;
  v121 = v126;
  v122 = v127;
  [(WiFiUsageMonitor *)v61 setTdLogic_fastTdState:&value forInterface:v62];
  v63 = objc_autoreleasePoolPush();
  if (v24 <= v25)
  {
    v68 = "NO";
    if (off_100298C40)
    {
      v69 = "YES";
      if (v59 <= 1)
      {
        v70 = "NO";
      }

      else
      {
        v70 = "YES";
      }

      if (v105 && *v105)
      {
        v68 = "YES";
      }

      if (a3)
      {
        if (*a3)
        {
          v71 = "YES";
        }

        else
        {
          v71 = "NO";
        }
      }

      else
      {
        v71 = "NO";
      }

      if (v108)
      {
        v87 = "YES";
      }

      else
      {
        v87 = "NO";
      }

      v88 = 0.0;
      v89 = 0.0;
      if (DWORD1(v123))
      {
        v89 = v123 / SDWORD1(v123) * 100.0;
      }

      if (v107)
      {
        v90 = "YES";
      }

      else
      {
        v90 = "NO";
      }

      if (HIDWORD(v124) && SHIDWORD(v124) > v125)
      {
        v88 = (HIDWORD(v124) - v125) / SHIDWORD(v124) * 100.0;
      }

      if (v106)
      {
        v91 = "YES";
      }

      else
      {
        v91 = "NO";
      }

      if (v109)
      {
        v92 = "YES";
      }

      else
      {
        v92 = "NO";
      }

      if (v56)
      {
        v93 = "YES";
      }

      else
      {
        v93 = "NO";
      }

      if (!HIDWORD(v107))
      {
        v69 = "NO";
      }

      [off_100298C40 WFLog:4 message:{"%s: LastRSSI:%d FastDisconnect:%s WaitForRoam:%s UserWalkout:%s TxPerMet:%s [TxPer: %.1f%%, %d, %d, %d, (%d, %d, %.1f%%)] BeaconPerMet:%s [BcnPer: %.1f%% (%d, %d, %.1f%%)] FwTxPerMet:%s [%d, %d] TDRecommended:%s RoamSuppressed:%s aggressiveTD:%s DataStall:%s HighLatency:%s Poor24GHz:%s", "__WiFiLQAMgrShouldPerformFastDisconnect", *(a1 + 2804), v70, v68, v71, v87, *&v89, DWORD1(v123), v123, DWORD2(v123), *(a1 + 1108), *(a1 + 1116), (*(a1 + 1112) * 100.0), v90, *&v88, HIDWORD(v124), v125, (*(a1 + 1256) * 100.0), v91, DWORD1(v124), v124, v101, v100, v9, v92, v93, v69, v97, v98, v99}];
    }
  }

  else
  {
    v64 = "NO";
    if (off_100298C40)
    {
      v65 = "YES";
      if (v59 <= 1)
      {
        v66 = "NO";
      }

      else
      {
        v66 = "YES";
      }

      if (v105 && *v105)
      {
        v64 = "YES";
      }

      if (a3)
      {
        if (*a3)
        {
          v67 = "YES";
        }

        else
        {
          v67 = "NO";
        }
      }

      else
      {
        v67 = "NO";
      }

      if (v108)
      {
        v72 = "YES";
      }

      else
      {
        v72 = "NO";
      }

      v73 = 0.0;
      v74 = 0.0;
      if (DWORD1(v123))
      {
        v74 = v123 / SDWORD1(v123) * 100.0;
      }

      v75 = *(a1 + 2804);
      v76 = *(a1 + 944);
      v77 = *(a1 + 952);
      v78 = (*(a1 + 948) * 100.0);
      v79 = *(a1 + 960);
      v80 = *(a1 + 968);
      v81 = (*(a1 + 964) * 100.0);
      if (v107)
      {
        v82 = "YES";
      }

      else
      {
        v82 = "NO";
      }

      if (HIDWORD(v124) && SHIDWORD(v124) > v125)
      {
        v73 = (HIDWORD(v124) - v125) / SHIDWORD(v124) * 100.0;
      }

      v83 = (*(a1 + 1092) * 100.0);
      if (v106)
      {
        v84 = "YES";
      }

      else
      {
        v84 = "NO";
      }

      if (v109)
      {
        v85 = "YES";
      }

      else
      {
        v85 = "NO";
      }

      if (v56)
      {
        v86 = "YES";
      }

      else
      {
        v86 = "NO";
      }

      if (!HIDWORD(v107))
      {
        v65 = "NO";
      }

      [off_100298C40 WFLog:4 message:{"%s: LastRSSI:%d FastDisconnect:%s WaitForRoam:%s UserWalkout:%s TxPerMet:%s [TxPer: %.1f%%, %d, %d, %d, (%d, %d, %.1f%%), (%d, %d, %.1f%%)] BeaconPerMet:%s [BcnPer: %.1f%% (%d, %d, %.1f%%)] FwTxPerMet:%s [%d, %d] TDRecommended:%s RoamSuppressed:%s aggressiveTD:%s DataStall:%s HighLatency:%s Poor2.4GHz:%s", "__WiFiLQAMgrShouldPerformFastDisconnect", v75, v66, v64, v67, v72, *&v74, DWORD1(v123), v123, DWORD2(v123), v76, v77, *&v78, v79, v80, *&v81, v82, *&v73, HIDWORD(v124), v125, *&v83, v84, DWORD1(v124), v124, v101, v100, v9, v85, v86, v65}];
    }
  }

  objc_autoreleasePoolPop(v63);
  return v60;
}

void sub_10004A484(uint64_t a1, uint64_t a2)
{
  if (qword_1002984B8)
  {
    v2 = *(qword_1002984B8 + 1288);
    if (v2)
    {
      v3[0] = _NSConcreteStackBlock;
      v3[1] = 3221225472;
      v3[2] = sub_100141CA0;
      v3[3] = &unk_10025EE08;
      v3[4] = qword_1002984B8;
      v3[5] = a2;
      dispatch_async(v2, v3);
    }
  }
}

void sub_10004A508(uint64_t a1)
{
  if (!*(a1 + 648))
  {
    sub_100144474();
    return;
  }

  v2 = *(a1 + 20);
  v3 = objc_autoreleasePoolPush();
  if (v2)
  {
    if (v2 == 1)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: ActProbe Callback in GoodLinkState", "__WiFiLQAMgrDoActiveProbe"}];
      }
    }

    else
    {
      if (v2 != 3)
      {
        if (off_100298C40)
        {
          v4 = *(a1 + 496);
          v5 = *(a1 + 20);
          if (v5 > 4)
          {
            v6 = @"Bogus";
          }

          else
          {
            v6 = *(&off_10025F018 + v5);
          }

          [off_100298C40 WFLog:2 message:{"%s: ActProbeTimer Credits: %d lqaState: %@", "__WiFiLQAMgrDoActiveProbe", *(a1 + 496), v6}];
        }

        objc_autoreleasePoolPop(v3);
        v7 = *(a1 + 384);
        Current = CFAbsoluteTimeGetCurrent();
        v9 = *(a1 + 376);
        v10 = Current - v9;
        if (v9 == 0.0)
        {
          v11 = 0.0;
        }

        else
        {
          v11 = v10;
        }

        if (*(a1 + 400))
        {
          v12 = 3.0;
        }

        else
        {
          v12 = 10.0;
        }

        if (*(a1 + 20) > 2u)
        {
          v14 = *(a1 + 552);
          v15 = -1;
LABEL_32:

          dispatch_source_set_timer(v14, v15, 0xFFFFFFFFFFFFFFFFLL, 0);
          return;
        }

        if (*(a1 + 364))
        {
          v13 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s: ActProbe ongoing for %f many seconds", "__WiFiLQAMgrDoActiveProbe", *&v11}];
          }

          objc_autoreleasePoolPop(v13);
          goto LABEL_31;
        }

        if (v11 != 0.0 && v12 > v11)
        {
LABEL_31:
          v24 = *(a1 + 344);
          v15 = dispatch_time(0, (v12 * 1000000000.0));
          v14 = v24;
          goto LABEL_32;
        }

        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        valuePtr = *(a1 + 352);
        v18 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
        v19 = v18;
        if (valuePtr && v18)
        {
          v20 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
          CFArrayAppendValue(v20, v19);
          CFDictionarySetValue(Mutable, @"kWiFiLqaMgrProbeSize", v20);
          *(a1 + 20) = 3;
          v21 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            v22 = *(a1 + 20);
            if (v22 > 4)
            {
              v23 = @"Bogus";
            }

            else
            {
              v23 = *(&off_10025F018 + v22);
            }

            [off_100298C40 WFLog:3 message:{"%s: %@", "__WiFiLQAMgrSetState", v23}];
          }

          objc_autoreleasePoolPop(v21);
          if (sub_100043F00(a1, Mutable, v7, sub_100141F48, a1))
          {
            *(a1 + 20) = 2;
            v25 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              v26 = *(a1 + 20);
              if (v26 > 4)
              {
                v27 = @"Bogus";
              }

              else
              {
                v27 = *(&off_10025F018 + v26);
              }

              [off_100298C40 WFLog:3 message:{"%s: %@", "__WiFiLQAMgrSetState", v27}];
            }

            objc_autoreleasePoolPop(v25);
            v30 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"%s: ActProbeEnqueue Failed, reverting to BadLinkState", "__WiFiLQAMgrDoActiveProbe"}];
            }

            objc_autoreleasePoolPop(v30);
            v31 = *(a1 + 344);
            v32 = dispatch_time(0, (v12 * 1000000000.0));
            dispatch_source_set_timer(v31, v32, 0xFFFFFFFFFFFFFFFFLL, 0);
            if (!Mutable)
            {
              goto LABEL_54;
            }
          }

          else
          {
            v28 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              if (*(a1 + 400))
              {
                v29 = " for auto leave evaluation.";
              }

              else
              {
                v29 = ".";
              }

              [off_100298C40 WFLog:3 message:{"%s: ActProbeEnqueue Enqueued%s", "__WiFiLQAMgrDoActiveProbe", v29}];
            }

            objc_autoreleasePoolPop(v28);
            *(a1 + 364) = 1;
            *(a1 + 496) = 0;
            *(a1 + 376) = CFAbsoluteTimeGetCurrent();
            *(a1 + 464) = 0u;
            *(a1 + 480) = 0u;
            if (!Mutable)
            {
              goto LABEL_54;
            }
          }
        }

        else
        {
          sub_100144414();
          v20 = 0;
          if (!Mutable)
          {
            goto LABEL_54;
          }
        }

        CFRelease(Mutable);
LABEL_54:
        if (v19)
        {
          CFRelease(v19);
        }

        if (v20)
        {
          CFRelease(v20);
        }

        return;
      }

      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: ActProbe ongoing", "__WiFiLQAMgrDoActiveProbe"}];
      }
    }
  }

  else if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: ActProbe Callback in UnassociatedState", "__WiFiLQAMgrDoActiveProbe"}];
  }

  objc_autoreleasePoolPop(v3);
}

void sub_10004A9D4(uint64_t a1)
{
  v1 = a1;
  if (!*(*(*(a1 + 32) + 8) + 24) || (v2 = *(a1 + 40), ++*(v2 + 336), CFArrayAppendValue(*(v2 + 328), *(*(*(a1 + 32) + 8) + 24)), !*(*(*(v1 + 32) + 8) + 24)))
  {
    v3 = *(*(v1 + 40) + 320);
    if (v3)
    {
      CFRelease(v3);
      *(*(v1 + 40) + 320) = 0;
    }
  }

  v4 = *(v1 + 40);
  if (!*(v4 + 320) && CFArrayGetCount(*(v4 + 328)))
  {
    *(*(v1 + 40) + 320) = CFArrayGetValueAtIndex(*(*(v1 + 40) + 328), 0);
    CFRetain(*(*(v1 + 40) + 320));
    CFArrayRemoveValueAtIndex(*(*(v1 + 40) + 328), 0);
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(v1 + 40);
    *(v7 + 312) = Current;
    v59 = 0;
    valuePtr = 0;
    v57 = 0;
    v58 = 0;
    cf = 0;
    v56 = 1;
    v53 = 0;
    v54 = 0;
    v52 = 0;
    v8 = *(v7 + 320);
    if (v8)
    {
      v9 = CFDictionaryGetValue(*(v7 + 320), @"kWiFiLqaMgrNumProbes");
      v10 = CFDictionaryGetValue(v8, @"kWiFiLqaMgrProbeSize");
      value = CFDictionaryGetValue(v8, @"kWiFiLqaMgrProbeTimeoutSecs");
      v11 = CFDictionaryGetValue(v8, @"kWiFiLqaMgrIpv4Addr");
      v12 = CFDictionaryGetValue(v8, @"kWiFiLqaMgrProbeTrafficClass");
      Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      if (Mutable)
      {
        if (v9 && v10 && CFArrayGetCount(v10) && value && v11)
        {
          v49 = v12;
          CFNumberGetValue(v9, kCFNumberCFIndexType, &valuePtr);
          v14 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (v14)
          {
            v15 = CFNumberCreate(0, kCFNumberCFIndexType, &v56);
            if (v15)
            {
              theArray = Mutable;
              v44 = v7;
              v45 = v1;
              v43 = v15;
              CFDictionaryAddValue(v14, @"kCFNetDiagnosticPingOptionPacketCount", v15);
              CFDictionaryAddValue(v14, @"kCFNetDiagnosticPingOptionTimeout", value);
              if (v49)
              {
                CFDictionaryAddValue(v14, @"kCFNetDiagnosticPingOptionTrafficClass", v49);
              }

              v50 = 0;
              v16 = 0;
              v47 = v10;
              do
              {
                if (v16 >= CFArrayGetCount(v10))
                {
                  break;
                }

                ValueAtIndex = CFArrayGetValueAtIndex(v10, v16);
                CFDictionarySetValue(v14, @"kCFNetDiagnosticPingOptionDataLength", ValueAtIndex);
                v18 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:2 message:{"Triggered probe to %@ with %@ bytes and %ld tries with timeout as %@ secs", v11, ValueAtIndex, valuePtr, value}];
                }

                v51 = ValueAtIndex;
                objc_autoreleasePoolPop(v18);
                v58 = 0;
                v59 = 0;
                if (valuePtr < 1)
                {
                  v30 = 0;
                  v22 = 0.0;
                  v21 = 0.0;
                  v20 = 0.0;
                }

                else
                {
                  v19 = 0;
                  v20 = 0.0;
                  v21 = 0.0;
                  v22 = 0.0;
                  while (1)
                  {
                    v23 = CFDictionaryGetValue(v8, @"kWiFiLqaMgrIgnoreProbe");
                    if (v23)
                    {
                      if (CFBooleanGetValue(v23))
                      {
                        break;
                      }
                    }

                    v24 = CFAbsoluteTimeGetCurrent();
                    v25 = CFNetDiagnosticPingWithOptions();
                    v26 = CFAbsoluteTimeGetCurrent();
                    if (v25)
                    {
                      v27 = v26 - v24;
                      if (v22 > v27)
                      {
                        v28 = v27;
                      }

                      else
                      {
                        v28 = v22;
                      }

                      if (v22 == 0.0)
                      {
                        v22 = v27;
                      }

                      else
                      {
                        v22 = v28;
                      }

                      v29 = v27;
                      if (v21 != 0.0)
                      {
                        v29 = v21;
                        if (v21 < v27)
                        {
                          v29 = v27;
                        }
                      }

                      v20 = v20 + v27;
                      v21 = v29;
                    }

                    if (cf)
                    {
                      CFRelease(cf);
                      cf = 0;
                    }

                    v30 = ++v59;
                    if (!v25)
                    {
                      ++v58;
                    }

                    if (++v19 >= valuePtr)
                    {
                      goto LABEL_48;
                    }
                  }

                  v57 = 2;
                  v30 = v59;
                  v50 = 2;
                }

LABEL_48:
                v31 = v30 - v58;
                if (v31)
                {
                  v32 = (v20 / v31 * 1000.0);
                }

                else
                {
                  v32 = 0;
                }

                v33 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                if (!v33)
                {
                  sub_100144540();
                  v40 = 0;
                  v7 = v44;
                  v1 = v45;
                  Mutable = theArray;
                  goto LABEL_80;
                }

                v34 = v33;
                v35 = CFNumberCreate(0, kCFNumberCFIndexType, &v59);
                v36 = CFNumberCreate(0, kCFNumberCFIndexType, &v58);
                v54 = (v22 * 1000.0);
                v52 = v32;
                v53 = (v21 * 1000.0);
                v37 = CFNumberCreate(0, kCFNumberCFIndexType, &v52);
                v38 = CFNumberCreate(0, kCFNumberCFIndexType, &v54);
                v39 = CFNumberCreate(0, kCFNumberCFIndexType, &v53);
                if (v35)
                {
                  CFDictionarySetValue(v34, @"kWiFiLqaMgrNumProbesSent", v35);
                }

                if (v36)
                {
                  CFDictionarySetValue(v34, @"kWiFiLqaMgrNumProbesFail", v36);
                }

                if (v37)
                {
                  CFDictionarySetValue(v34, @"kWiFiLqaMgrAverageRTT", v37);
                }

                if (v38)
                {
                  CFDictionarySetValue(v34, @"kWiFiLqaMgrMinimumRTT", v38);
                }

                if (v39)
                {
                  CFDictionarySetValue(v34, @"kWiFiLqaMgrMaximumRTT", v39);
                }

                if (v49)
                {
                  CFDictionaryAddValue(v34, @"kWiFiLqaMgrProbeTrafficClass", v49);
                }

                if (v51)
                {
                  CFDictionaryAddValue(v34, @"kWiFiLqaMgrProbeSize", v51);
                }

                CFArrayAppendValue(theArray, v34);
                if (v35)
                {
                  CFRelease(v35);
                }

                if (v36)
                {
                  CFRelease(v36);
                }

                if (v37)
                {
                  CFRelease(v37);
                }

                v10 = v47;
                if (v38)
                {
                  CFRelease(v38);
                }

                if (v39)
                {
                  CFRelease(v39);
                }

                CFRelease(v34);
                ++v16;
              }

              while (v50 != 2);
              Mutable = theArray;
              CFDictionaryAddValue(v8, @"kWiFiLqaMgrProbeStats", theArray);
              v40 = CFNumberCreate(0, kCFNumberCFIndexType, &v57);
              if (v40)
              {
                CFDictionaryAddValue(v8, @"kWiFiLqaMgrError", v40);
              }

              else
              {
                sub_1001444E0();
              }

              v7 = v44;
              v1 = v45;
LABEL_80:
              v8 = v43;
              goto LABEL_86;
            }

            sub_1001445A0();
          }

          else
          {
            sub_100144600();
          }

          v8 = 0;
          v40 = 0;
LABEL_86:
          v42 = *(v7 + 1288);
          if (v42)
          {
            dispatch_async_f(v42, v7, sub_10004B118);
          }

          if (v14)
          {
            CFRelease(v14);
          }

          if (v8)
          {
            CFRelease(v8);
          }

          if (v40)
          {
            CFRelease(v40);
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }

          goto LABEL_6;
        }

        v57 = 1;
        v41 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: Probe failed due to missing params", "__WiFiLQAMgrDoDiagnosticProbe"}];
        }

        objc_autoreleasePoolPop(v41);
      }

      else
      {
        sub_100144660();
      }

      v8 = 0;
    }

    else
    {
      sub_1001446CC();
      Mutable = 0;
    }

    v40 = 0;
    v14 = 0;
    goto LABEL_86;
  }

LABEL_6:
  v5 = *(*(*(v1 + 32) + 8) + 24);
  if (v5)
  {
    CFRelease(v5);
    *(*(*(v1 + 32) + 8) + 24) = 0;
  }

  CFRelease(*(v1 + 40));
}