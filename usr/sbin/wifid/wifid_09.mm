void sub_1000A1B90(const void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: %@, %d", "WiFiNetworkDisableAutoJoinUntilFirstUserJoin", sub_10000A878(a1), a2}];
    }

    objc_autoreleasePoolPop(v4);
    v5 = &kCFBooleanTrue;
    if (!a2)
    {
      v5 = &kCFBooleanFalse;
    }

    v6 = *v5;

    sub_10000AD34(a1, @"DisableWiFiAutoJoinUntilFirstUserJoin", v6);
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkDisableAutoJoinUntilFirstUserJoin"}];
    }

    objc_autoreleasePoolPop(v4);
  }
}

void sub_1000A1CD8(uint64_t a1, const void *a2)
{
  if (a1)
  {

    sub_10000AD34(a1, @"BundleIdentifier", a2);
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkAddBundleIdentifier"}];
    }

    objc_autoreleasePoolPop(v3);
  }
}

const void *sub_1000A1D68(uint64_t a1)
{
  if (a1)
  {

    return sub_10000A540(a1, @"BundleIdentifier");
  }

  else
  {
    sub_100179550();
    return 0;
  }
}

void sub_1000A1DA4(uint64_t a1, unsigned int a2)
{
  if (a1)
  {

    sub_10000C614(a1, @"NetworkOriginator", a2);
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkAddOriginator"}];
    }

    objc_autoreleasePoolPop(v3);
  }
}

void sub_1000A1E38(uint64_t a1, const void *a2)
{
  if (a1)
  {

    sub_10000AD34(a1, @"NetworkOriginatorName", a2);
  }

  else
  {
    sub_1001795BC();
  }
}

const __CFNumber *sub_1000A1E74(uint64_t a1)
{
  if (a1)
  {

    return sub_1000333E8(a1, @"NetworkOriginator");
  }

  else
  {
    sub_100179628();
    return 0;
  }
}

uint64_t sub_1000A1EB0(uint64_t a1)
{
  v1 = 1;
  valuePtr = 1;
  v2 = sub_10000A540(a1, @"UserRole");
  if (v2)
  {
    CFNumberGetValue(v2, kCFNumberIntType, &valuePtr);
    return valuePtr;
  }

  return v1;
}

BOOL sub_1000A1F04(uint64_t a1)
{
  if (a1)
  {
    return sub_1000333E8(a1, @"NetworkOriginator") == 2;
  }

  sub_100179694();
  return 0;
}

const void *sub_1000A1F40(uint64_t a1)
{
  if (a1)
  {

    return sub_10000A540(a1, @"WiFiNetworkDisabledUntilDate");
  }

  else
  {
    sub_100179700();
    return 0;
  }
}

BOOL sub_1000A1F7C(const void *a1)
{
  if (a1)
  {
    sub_10017976C(a1, &v2);
    return v2;
  }

  else
  {
    sub_10017990C();
    return 0;
  }
}

void sub_1000A1FB4(uint64_t a1)
{
  if (a1)
  {
    if (CFDictionaryContainsKey(*(a1 + 16), @"enabled"))
    {
      CFDictionaryRemoveValue(*(a1 + 16), @"enabled");
    }

    if (CFDictionaryContainsKey(*(a1 + 16), @"lastAutoJoined"))
    {
      CFDictionaryRemoveValue(*(a1 + 16), @"lastAutoJoined");
    }

    if (CFDictionaryContainsKey(*(a1 + 16), @"lastJoined"))
    {
      CFDictionaryRemoveValue(*(a1 + 16), @"lastJoined");
    }

    if (CFDictionaryContainsKey(*(a1 + 16), @"prevJoined"))
    {
      CFDictionaryRemoveValue(*(a1 + 16), @"prevJoined");
    }

    if (CFDictionaryContainsKey(*(a1 + 16), @"lastRoamed"))
    {
      v2 = *(a1 + 16);

      CFDictionaryRemoveValue(v2, @"lastRoamed");
    }
  }

  else
  {
    sub_100179978();
  }
}

uint64_t sub_1000A20A8(CFDictionaryRef *a1, void *a2)
{
  v13 = 0;
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: network %@ path %@", "WiFiNetworkArchiveToPath", sub_10000A878(a1), a2, v13}];
  }

  objc_autoreleasePoolPop(v4);
  v5 = [a2 stringByDeletingLastPathComponent];
  if ([+[NSFileManager defaultManager](NSFileManager fileExistsAtPath:"fileExistsAtPath:", v5]|| [+[NSFileManager createDirectoryAtPath:"createDirectoryAtPath:withIntermediateDirectories:attributes:error:"]
  {
    Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, a1[2]);
    v7 = [NSPropertyListSerialization dataWithPropertyList:Copy format:200 options:0 error:0];
    if (v7)
    {
      if ([+[NSFileManager createFileAtPath:"createFileAtPath:contents:attributes:"]
      {
        v8 = 1;
        if (!Copy)
        {
          return v8;
        }

        goto LABEL_17;
      }

      v9 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: unable to archive network dictionary in %@", "WiFiNetworkArchiveToPath", a2}];
      }
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: unable to archive network dictionary", "WiFiNetworkArchiveToPath", v12}];
      }
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
    if (Copy)
    {
LABEL_17:
      CFRelease(Copy);
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: unable to create directory at path %@", "WiFiNetworkArchiveToPath", v5}];
    }

    objc_autoreleasePoolPop(v10);
    return 0;
  }

  return v8;
}

_WORD *sub_1000A2288(uint64_t a1)
{
  if (!a1)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_13;
    }

    v6 = "%s: path is nil";
LABEL_9:
    v7 = 3;
LABEL_12:
    [v5 WFLog:v7 message:{v6, "WiFiNetworkCreateFromPath", v8}];
    goto LABEL_13;
  }

  v2 = [+[NSFileManager defaultManager](NSFileManager contentsAtPath:"contentsAtPath:", a1];
  if (!v2)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_13;
    }

    v8 = a1;
    v6 = "%s: data at path %@ is nil";
    goto LABEL_9;
  }

  result = sub_10000B0F4(0, [NSPropertyListSerialization propertyListWithData:v2 options:0 format:0 error:0], 0);
  if (!result)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = off_100298C40;
    if (off_100298C40)
    {
      v8 = a1;
      v6 = "%s: unable to create WiFiNetworkRef at path %@";
      v7 = 4;
      goto LABEL_12;
    }

LABEL_13:
    objc_autoreleasePoolPop(v4);
    return 0;
  }

  return result;
}

void sub_1000A23B4(uint64_t a1, int a2)
{
  valuePtr = a2;
  if (a1)
  {
    if ((a2 - 1) >= 2)
    {
      valuePtr = 0;
    }

    v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    sub_10000AD34(a1, @"NetworkOfInterestWorkState", v3);
    if (v3)
    {
      CFRelease(v3);
    }
  }
}

void sub_1000A2434(uint64_t a1, int a2)
{
  valuePtr = a2;
  if (a1)
  {
    if ((a2 - 1) >= 3)
    {
      valuePtr = 0;
    }

    v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    sub_10000AD34(a1, @"NetworkOfInterestHomeState", v3);
    if (v3)
    {
      CFRelease(v3);
    }
  }
}

void sub_1000A24B4(const void *a1, const void *a2)
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
          [off_100298C40 WFLog:3 message:{"%s: for network <%@>, modDate %@", "WiFiNetworkSetLastHomeForceFixDate", v4, a2}];
        }

        objc_autoreleasePoolPop(v5);

        sub_10000AD34(a1, @"kWiFiNetworkLastHomeForceFixDateKey", a2);
      }

      else
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: null ssid", "WiFiNetworkSetLastHomeForceFixDate"}];
        }

        objc_autoreleasePoolPop(v5);
      }
    }

    else
    {
      sub_100179A50();
    }
  }

  else
  {
    sub_100179ABC();
  }
}

uint64_t sub_1000A25C8(uint64_t a1)
{
  valuePtr = 0;
  if (a1)
  {
    v1 = sub_10000A540(a1, @"NetworkAtLocationOfInterestType");
    if (v1)
    {
      if (!CFNumberGetValue(v1, kCFNumberSInt32Type, &valuePtr))
      {
        v2 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Failed to get kWiFiNetworkAtLocationOfInterestTypeKey", "WiFiNetworkGetLOIType"}];
        }

        objc_autoreleasePoolPop(v2);
      }
    }

    else
    {
      sub_100179B28();
    }
  }

  else
  {
    sub_100179B94();
  }

  return valuePtr;
}

void sub_1000A2668(const void *a1, unsigned int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  v4 = objc_autoreleasePoolPush();
  v5 = off_100298C40;
  if (v3)
  {
    if (off_100298C40)
    {
      v6 = sub_100059160(valuePtr);
      [v5 WFLog:3 message:{"%s: Setting NetworkLocationOfInterestType=%@(%d) for %@", "WiFiNetworkSetLOIType", v6, valuePtr, sub_10000A878(a1)}];
    }

    objc_autoreleasePoolPop(v4);
    sub_10000AD34(a1, @"NetworkAtLocationOfInterestType", v3);
    CFRelease(v3);
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Failed to create CFNumber while setting NetworkAtLocationOfInterestType=%d", "WiFiNetworkSetLOIType", valuePtr}];
    }

    objc_autoreleasePoolPop(v4);
  }
}

BOOL sub_1000A2774(const void *a1)
{
  v1 = sub_10000A878(a1);
  if (qword_1002985F0)
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2 && CFSetContainsValue(qword_1002985F0, v1);
}

void sub_1000A27B8(uint64_t a1, uint64_t a2)
{
  valuePtr = a2;
  values = CFNumberCreate(kCFAllocatorDefault, kCFNumberCFIndexType, &valuePtr);
  if (values)
  {
    v3 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
    if (!v3)
    {
      v12 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: build array failed for mode (%d)", "WiFiNetworkUpdateWPARSNAuthType", valuePtr}];
      }

      objc_autoreleasePoolPop(v12);
      goto LABEL_40;
    }

    v4 = v3;
    if ((valuePtr - 1) < 2)
    {
      v13 = sub_10000A540(a1, @"RSN_IE");
      if (v13)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v13);
        if (MutableCopy)
        {
          v15 = MutableCopy;
          Value = CFDictionaryGetValue(v13, @"IE_KEY_RSN_AUTHSELS");
          if (!Value || CFArrayGetCount(Value) >= 2)
          {
            CFDictionaryReplaceValue(v15, @"IE_KEY_RSN_AUTHSELS", v4);
            sub_10000AD34(a1, @"RSN_IE", v15);
          }

          CFRelease(v15);
        }
      }

      else
      {
        v18 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s RSN auth type (%d) has no RSN IE", "WiFiNetworkUpdateWPARSNAuthType", valuePtr}];
        }

        objc_autoreleasePoolPop(v18);
      }

      v19 = sub_10000A540(a1, @"WPA_IE");
      if (v19)
      {
        v20 = v19;
        TypeID = CFDictionaryGetTypeID();
        if (sub_100058AF8(TypeID, v20))
        {
          v22 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v20);
          if (v22)
          {
            v8 = v22;
            v23 = CFDictionaryGetValue(v13, @"IE_KEY_WPA_AUTHSELS");
            if (v23 && CFArrayGetCount(v23) < 2)
            {
              goto LABEL_35;
            }

            CFDictionaryReplaceValue(v8, @"IE_KEY_WPA_AUTHSELS", v4);
            v10 = @"WPA_IE";
            goto LABEL_34;
          }

LABEL_39:
          CFRelease(v4);
LABEL_40:
          if (values)
          {
            CFRelease(values);
          }

          return;
        }
      }

      v17 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s WPA auth type (%d) has no WPA IE", "WiFiNetworkUpdateWPARSNAuthType", valuePtr}];
      }
    }

    else
    {
      if (valuePtr != 8 && valuePtr != 12)
      {
        goto LABEL_39;
      }

      v5 = sub_10000A540(a1, @"RSN_IE");
      if (v5)
      {
        v6 = v5;
        v7 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v5);
        if (v7)
        {
          v8 = v7;
          v9 = CFDictionaryGetValue(v6, @"IE_KEY_RSN_AUTHSELS");
          if (v9 && CFArrayGetCount(v9) < 2)
          {
            goto LABEL_35;
          }

          CFDictionaryReplaceValue(v8, @"IE_KEY_RSN_AUTHSELS", v4);
          v10 = @"RSN_IE";
LABEL_34:
          sub_10000AD34(a1, v10, v8);
LABEL_35:
          CFRelease(v8);
          goto LABEL_39;
        }

        goto LABEL_39;
      }

      v17 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s RSN auth type (%d) has no RSN IE", "WiFiNetworkUpdateWPARSNAuthType", valuePtr}];
      }
    }

    objc_autoreleasePoolPop(v17);
    goto LABEL_39;
  }

  v11 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: build number failed for mode(%d)", "WiFiNetworkUpdateWPARSNAuthType", valuePtr}];
  }

  objc_autoreleasePoolPop(v11);
}

uint64_t sub_1000A2B30(uint64_t a1)
{
  if (a1)
  {
    result = sub_1000333E8(a1, @"kWiFiNetworkSSIDHarvestStatusKey");
    if (!result)
    {
      v3 = sub_10000A540(a1, @"WiFiNetworkAttributeHighPopularity");
      if (v3 == kCFBooleanTrue)
      {
        if (sub_10000A540(a1, @"WiFiNetworkAttributeIsPublic") == v3)
        {
          return 3;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    sub_100179C00();
    return 1;
  }

  return result;
}

void sub_1000A2BC8(uint64_t a1)
{
  if (a1)
  {
    if (CFDictionaryContainsKey(*(a1 + 16), @"enabled"))
    {
      CFDictionaryRemoveValue(*(a1 + 16), @"enabled");
    }

    if (CFDictionaryContainsKey(*(a1 + 16), @"WiFiNetworkDisabledUntilDate"))
    {
      CFDictionaryRemoveValue(*(a1 + 16), @"WiFiNetworkDisabledUntilDate");
    }

    if (CFDictionaryContainsKey(*(a1 + 16), @"networkDisabledClientName"))
    {
      CFDictionaryRemoveValue(*(a1 + 16), @"networkDisabledClientName");
    }

    if (CFDictionaryContainsKey(*(a1 + 16), @"networkDisabledReason"))
    {
      CFDictionaryRemoveValue(*(a1 + 16), @"networkDisabledReason");
    }

    if (CFDictionaryContainsKey(*(a1 + 16), @"networkDisabledTimestamp"))
    {
      v2 = *(a1 + 16);

      CFDictionaryRemoveValue(v2, @"networkDisabledTimestamp");
    }
  }

  else
  {
    sub_100179C6C();
  }
}

const void *sub_1000A2CC0(uint64_t a1)
{
  if (a1)
  {

    return sub_10000A540(a1, @"PrivacyProxyBlockedReason");
  }

  else
  {
    sub_100179D40();
    return 0;
  }
}

uint64_t sub_1000A2CFC(const void **a1, const void **a2)
{
  v4 = sub_10000A540(a1, @"WiFiNetworkNANServiceID");
  v5 = sub_10000A540(a2, @"WiFiNetworkNANServiceID");
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 && CFEqual(v4, v5))
  {
    return 1;
  }

  result = 0;
  if (!a1 || !a2)
  {
    return result;
  }

  if (!sub_10000BAC8(a1[2], a2[2]))
  {
    if (!sub_1000334C0(a1, a2, 0))
    {
      v9 = sub_10009F5D4(a1, a2);
      return v9 != 0;
    }

    return 1;
  }

  if ((!sub_10000AFE4(a1) || sub_10000AFE4(a2)) && (sub_10000AFE4(a1) || !sub_10000AFE4(a2)))
  {
    result = sub_10000BB24(a1[2], a2[2]);
    if (!result)
    {
      return result;
    }

    v9 = sub_10000B9E0(a1[2], a2[2], @"AP_MODE");
    return v9 != 0;
  }

  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_100179E14(a1, a2, off_100298C40);
  }

  objc_autoreleasePoolPop(v8);
  return 0;
}

uint64_t sub_1000A2E44(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_10001B188();
  if (a1)
  {
    if (v3)
    {
      sub_10001B188();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = [objc_msgSend(a1 "scanRecord")];
        if (v4)
        {
          if ((sub_100179E84(a1, v4, v2, &v6) & 1) == 0)
          {
            return v6;
          }
        }
      }
    }
  }

  objc_autoreleasePoolPop(v2);
  return 0;
}

uint64_t sub_1000A2ED8(CFDictionaryRef *a1)
{
  v2 = sub_10001B368(a1);
  v3 = sub_10001A9BC(a1);
  if ([v2 isAllowedInLockdownMode])
  {
    v4 = [v3 isAllowedInLockdownMode] ^ 1;
  }

  else
  {
    v4 = 1;
  }

  v5 = [v2 supportedSecurityTypes];
  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  v6 = sub_10000A7CC(a1) == 0;
  result = v6;
  v8 = !v6;
  if (((v8 | v4) & 1) == 0)
  {
    if (sub_10000966C(a1) || sub_10000AFE4(a1) || sub_10000D9C8(a1))
    {
      return 1;
    }

    else
    {
      sub_10017A048(a1, v5, &v9);
      return v9;
    }
  }

  return result;
}

uint64_t sub_1000A2FC4(uint64_t a1, __int32 *a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    Value = CFDictionaryGetValue(v4, @"RSN_IE");
    v6 = CFDictionaryGetValue(*(a1 + 16), @"WPA_IE");
    if (Value)
    {
      v7 = sub_10000BCB8(Value, 2) != 0;
      v8 = sub_10000BCB8(Value, 1);
      v9 = (8 * v7) | 4;
      if (!v8)
      {
        v9 = 8 * v7;
      }

      v35 = __PAIR64__(v9, v8 | (2 * v7));
      v34 = sub_10000BCB8(Value, 3) == 0;
      v10 = sub_10000BCB8(Value, 4) == 0;
      v11 = sub_10000BCB8(Value, 5) == 0;
      v12 = sub_10000BCB8(Value, 6) == 0;
      v13 = sub_10000BCB8(Value, 8) == 0;
      v14 = sub_10000BCB8(Value, 9) == 0;
      v15 = sub_10000BCB8(Value, 24) == 0;
      v16 = sub_10000BCB8(Value, 25) == 0;
      v17 = sub_10000BCB8(Value, 12) == 0;
      v18 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v34), 0x1FuLL)), v35, vorr_s8(v35, 0x8000000004));
      v19 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v10), 0x1FuLL)), v18, vorr_s8(v18, 0x1000000008));
      v20 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v11), 0x1FuLL)), v19, vorr_s8(v19, 0x80000000010));
      v21 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v12), 0x1FuLL)), v20, vorr_s8(v20, 0x40000000020));
      v22 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v13), 0x1FuLL)), v21, vorr_s8(v21, 0x100000000080));
      v23 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v14), 0x1FuLL)), v22, vorr_s8(v22, 0x200000000100));
      v24 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v15), 0x1FuLL)), v23, vorr_s8(v23, 0x1000000800000));
      v25 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v16), 0x1FuLL)), v24, vorr_s8(v24, 0x2000001000000));
      v26 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v17), 0x1FuLL)), v25, vorr_s8(v25, 0x400000000800));
      v27 = sub_10000BCB8(Value, 13);
      v28.i32[0] = 0;
      v29.i32[0] = v27;
      v30 = vbsl_s8(vdup_lane_s8(vceq_s8(v29, v28), 0), v26, vorr_s8(v26, 0x800000001000));
    }

    else
    {
      v30 = 0;
    }

    v31 = v30.i32[0];
    v32 = v30.u32[1];
    if (v6)
    {
      if (sub_10000BCB8(v6, 2))
      {
        LODWORD(v32) = v32 | 2;
      }

      v32 = v32 | sub_10000BCB8(v6, 1);
    }
  }

  else
  {
    v31 = 0;
    v32 = 0xFFFFLL;
  }

  if (a2)
  {
    *a2 = v31;
  }

  return v32;
}

void sub_1000A32CC(uint64_t a1, const void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v4 = sub_10000A540(a1, @"SIMIdentifiers");
      if (v4)
      {
        MutableCopy = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, v4);
      }

      else
      {
        MutableCopy = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      }

      v7 = MutableCopy;
      v9.length = CFArrayGetCount(MutableCopy);
      v9.location = 0;
      if (CFArrayGetFirstIndexOfValue(v7, v9, a2) == -1)
      {
        CFArrayAppendValue(v7, a2);
      }

      sub_10000AD34(a1, @"SIMIdentifiers", v7);
      if (v7)
      {

        CFRelease(v7);
      }

      return;
    }

    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null simId", "WiFiNetworkAddSIMIdentifier"}];
    }
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkAddSIMIdentifier"}];
    }
  }

  objc_autoreleasePoolPop(v6);
}

void sub_1000A3444(uint64_t a1, const void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v4 = sub_10000A540(a1, @"SIMIdentifiers");
      if (v4)
      {
        MutableCopy = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, v4);
      }

      else
      {
        MutableCopy = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      }

      v7 = MutableCopy;
      v11.length = CFArrayGetCount(MutableCopy);
      v11.location = 0;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v7, v11, a2);
      if (FirstIndexOfValue != -1)
      {
        CFArrayRemoveValueAtIndex(v7, FirstIndexOfValue);
      }

      if (CFArrayGetCount(v7))
      {
        v9 = v7;
      }

      else
      {
        v9 = 0;
      }

      sub_10000AD34(a1, @"SIMIdentifiers", v9);
      if (v7)
      {

        CFRelease(v7);
      }

      return;
    }

    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null simId", "WiFiNetworkRemoveSIMIdentifier"}];
    }
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkRemoveSIMIdentifier"}];
    }
  }

  objc_autoreleasePoolPop(v6);
}

void sub_1000A35C8(uint64_t a1, int a2)
{
  if (a1)
  {
    v3 = &kCFBooleanTrue;
    if (!a2)
    {
      v3 = &kCFBooleanFalse;
    }

    v4 = *v3;

    sub_10000AD34(a1, @"PrivacyProxyEnabled", v4);
  }

  else
  {
    sub_10017A124();
  }
}

void sub_1000A3620(uint64_t a1, const void *a2)
{
  if (a1)
  {

    sub_10000AD34(a1, @"PrivacyProxyBlockedReason", a2);
  }

  else
  {
    sub_10017A190();
  }
}

BOOL sub_1000A365C(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = CFDateCreate(kCFAllocatorDefault, Current);
  v4 = sub_10000A540(a1, @"lastJoined");
  TimeIntervalSinceDate = CFDateGetTimeIntervalSinceDate(v3, v4);
  if (sub_10001D2A4(a1) == 1 || sub_10000FC60(a1) == 1 || (!&_CNForgetSSID || CFDictionaryGetValue(*(a1 + 16), kCNSCaptiveNetworkProperty) != kCFBooleanTrue) && !sub_10000A540(a1, @"WiFiNetworkAttributeIsPublic") && !sub_1000A1F04(a1))
  {
    v6 = 1;
    if (!v3)
    {
      return v6;
    }

LABEL_4:
    CFRelease(v3);
    return v6;
  }

  v6 = TimeIntervalSinceDate < 86400.0 && TimeIntervalSinceDate > -1.0;
  if (v3)
  {
    goto LABEL_4;
  }

  return v6;
}

BOOL sub_1000A3770(uint64_t a1)
{
  if (!_os_feature_enabled_impl())
  {
    return 1;
  }

  return sub_1000A365C(a1);
}

uint64_t sub_1000A37CC(CFDictionaryRef *a1)
{
  if (sub_10000A540(a1, @"WiFiNetworkAttributeIsPublic"))
  {
    return 1;
  }

  result = sub_1001775F0(a1);
  if (result)
  {
    return 1;
  }

  return result;
}

void sub_1000A3840(uint64_t a1, int a2)
{
  if (a1)
  {
    v3 = &kCFBooleanTrue;
    if (!a2)
    {
      v3 = &kCFBooleanFalse;
    }

    v4 = *v3;

    sub_10000AD34(a1, @"PublicAirPlayNetwork", v4);
  }

  else
  {
    sub_10017A1FC();
  }
}

void *sub_1000A3898(uint64_t a1)
{
  if (a1)
  {
    result = sub_10000A540(a1, CWFCoreWiFiSpecificAttributesKey);
    if (result)
    {
      return ([objc_msgSend(result objectForKey:{CWFNetworkProfilePropertyDisable6EModeKey), "integerValue"}] == 2);
    }
  }

  else
  {
    sub_10017A268();
    return 0;
  }

  return result;
}

void sub_1000A38EC(uint64_t a1, const void *a2)
{
  if (a1)
  {

    sub_10000AD34(a1, @"DisplayFriendlyName", a2);
  }

  else
  {
    sub_10017A2D4();
  }
}

const void *sub_1000A3928(uint64_t a1)
{
  if (a1)
  {

    return sub_10000A540(a1, @"DisplayFriendlyName");
  }

  else
  {
    sub_10017A340();
    return 0;
  }
}

void sub_1000A3964(uint64_t a1, const void *a2)
{
  if (a1)
  {

    sub_10000AD34(a1, @"AccessoryIdentifier", a2);
  }

  else
  {
    sub_10017A3AC();
  }
}

CFHashCode sub_1000A39C0(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = sub_10000A878(a1);
  if (!v1)
  {
    return 0;
  }

  return CFHash(v1);
}

CFStringRef sub_1000A39F8(void *cf)
{
  v4 = 0;
  if (!cf)
  {
    return @"Invalid network ref";
  }

  v2 = qword_1002985E0;
  if (!qword_1002985E0)
  {
    pthread_once(&stru_100297B30, sub_10009D1D8);
    v2 = qword_1002985E0;
  }

  if (v2 != CFGetTypeID(cf))
  {
    return @"Invalid network ref";
  }

  sub_10017A484(cf, &v4, &v5);
  return v5;
}

Class sub_1000A3A8C(uint64_t a1)
{
  sub_1000A3AE4();
  result = objc_getClass("CWFNetworkProfile");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_10017A758();
  }

  qword_1002985F8 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t sub_1000A3AE4()
{
  v2[0] = 0;
  if (!qword_100298600)
  {
    v2[1] = _NSConcreteStackBlock;
    v2[2] = 3221225472;
    v2[3] = sub_1000A3BD4;
    v2[4] = &unk_10025EAD8;
    v2[5] = v2;
    v2[7] = 0;
    v2[8] = 0;
    v2[6] = "/System/Library/PrivateFrameworks/CoreWiFi.framework/CoreWiFi";
    qword_100298600 = _sl_dlopen();
  }

  v0 = qword_100298600;
  if (!qword_100298600)
  {
    sub_10017A7C0(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t sub_1000A3BD4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100298600 = result;
  return result;
}

Class sub_1000A3C40(uint64_t a1)
{
  sub_1000A3AE4();
  result = objc_getClass("CWFBSS");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_10017A828();
  }

  qword_100298608 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class sub_1000A3C98(uint64_t a1)
{
  sub_1000A3AE4();
  result = objc_getClass("CWFChannel");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_10017A890();
  }

  qword_100298610 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class sub_1000A3CF0(uint64_t a1)
{
  sub_1000A3D48();
  result = objc_getClass("CLLocation");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_10017A8F8();
  }

  qword_100298618 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t sub_1000A3D48()
{
  v2[0] = 0;
  if (!qword_100298620)
  {
    v2[1] = _NSConcreteStackBlock;
    v2[2] = 3221225472;
    v2[3] = sub_1000A3E38;
    v2[4] = &unk_10025EAD8;
    v2[5] = v2;
    v2[7] = 0;
    v2[8] = 0;
    v2[6] = "/System/Library/Frameworks/CoreLocation.framework/CoreLocation";
    qword_100298620 = _sl_dlopen();
  }

  v0 = qword_100298620;
  if (!qword_100298620)
  {
    sub_10017A960(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t sub_1000A3E38(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100298620 = result;
  return result;
}

void *sub_1000A3EA4(uint64_t a1)
{
  v2 = sub_1000A3D48();
  result = dlsym(v2, "CLLocationCoordinate2DMake");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100298628 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1000A3EF4(uint64_t a1)
{
  sub_1000A3AE4();
  result = objc_getClass("CWFScanResult");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_10017A9C8();
  }

  qword_100298630 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void *sub_1000A3F4C(uint64_t a1)
{
  v2 = sub_1000A3AE4();
  result = dlsym(v2, "CWFScanResultPropertyOSSpecificAttributesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100298638 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000A3F9C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, uint64_t a15)
{
  a15 = 0xAAAAAAAAAAAAAAAALL;
  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  a13 = v16;
  a14 = v16;
  a11 = v16;
  a12 = v16;
  a9 = v16;
  a10 = v16;

  return CC_SHA256_Init(&a9);
}

uint64_t sub_1000A40F0(uint64_t a1)
{
  v5 = [*(a1 + 32) AVSystemMonitorCb];
  v2 = [*(a1 + 32) manager];
  v3 = *(a1 + 40);

  return v5(v2, 2, v3);
}

uint64_t sub_1000A42B4(uint64_t a1)
{
  v5 = [*(a1 + 32) AVSystemMonitorCb];
  v2 = [*(a1 + 32) manager];
  v3 = [*(a1 + 40) userInfo];

  return v5(v2, 1, v3);
}

WiFiManagerAVSystemMonitor *sub_1000A45EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  if (!objc_opt_class())
  {
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: AVSystemMonitor class is not valid.", "WiFiManagerAVSystemMonitorStart"}];
    }

    objc_autoreleasePoolPop(v9);
    goto LABEL_9;
  }

  if (!a1)
  {
    sub_10017AC10();
LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  if (!a3)
  {
    sub_10017ABA4();
    goto LABEL_9;
  }

  v7 = objc_alloc_init(WiFiManagerAVSystemMonitor);
  v8 = v7;
  if (v7)
  {
    [(WiFiManagerAVSystemMonitor *)v7 setManager:a1];
    [(WiFiManagerAVSystemMonitor *)v8 setAVSystemMonitorCb:a3];
    [(WiFiManagerAVSystemMonitor *)v8 setQueue:a2];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A4748;
    block[3] = &unk_10025ED68;
    block[4] = v8;
    dispatch_async(qword_100298C50, block);
  }

  else
  {
    sub_10017AB38();
  }

LABEL_10:
  objc_autoreleasePoolPop(v6);
  return v8;
}

void sub_1000A4750(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1)
  {
    [a1 stopMonitoringAVSystem];
  }

  else
  {
    sub_10017AC7C();
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1000A47A4()
{
  result = qword_100298640;
  if (!qword_100298640)
  {
    pthread_once(&stru_100297B40, sub_1000A47EC);
    return qword_100298640;
  }

  return result;
}

uint64_t sub_1000A47EC()
{
  qword_100298640 = _CFRuntimeRegisterClass();
  qword_100298648 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);

  return pthread_mutex_init(&stru_100297B58, 0);
}

uint64_t sub_1000A4854(uint64_t a1, const void *a2, int a3, const void *a4, int a5)
{
  if (!a4)
  {
    sub_10017C6A0();
    return 0;
  }

  v9 = sub_10000A540(a4, @"WiFiNetworkUserAcceptedRecommendationAt");
  if (v9)
  {
    v10 = v9;
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: user already accepted join recommendation for this network at %@. Suppressing alert.", "WiFiNotificationCreateJoinRecommendation", v10}];
    }

    objc_autoreleasePoolPop(v11);
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    sub_10017C634();
    return 0;
  }

  v15 = Mutable;
  if (sub_1000D9C6C(a2))
  {
    v16 = @"WIFI_ASK_TO_JOIN_NETWORK_AVAILABLE_TITLE_CH";
  }

  else
  {
    v16 = @"WIFI_ASK_TO_JOIN_NETWORK_AVAILABLE_TITLE";
  }

  v17 = sub_10010E234(v16);
  CFDictionarySetValue(v15, kCFUserNotificationAlertHeaderKey, v17);
  v18 = sub_10010E234(@"WIFI_ASK_TO_JOIN_JOIN_BUTTON");
  CFDictionarySetValue(v15, kCFUserNotificationDefaultButtonTitleKey, v18);
  v19 = sub_10010E234(@"WIFI_ASK_TO_JOIN_CANCEL_BUTTON");
  CFDictionarySetValue(v15, kCFUserNotificationAlternateButtonTitleKey, v19);
  if (a5 == 12)
  {
    v20 = @"WIFI_ASK_TO_JOIN_NETWORK_HOTSPOT_RECOMMENDED_BODY";
  }

  else
  {
    v20 = @"WIFI_ASK_TO_JOIN_NETWORK_AVAILABLE_BODY";
  }

  v21 = sub_10010E234(v20);
  v22 = sub_10000A878(a4);
  v23 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, v21, v22);
  if (!v23)
  {
    sub_10017C5BC(v15);
    return 0;
  }

  v24 = v23;
  CFDictionarySetValue(v15, kCFUserNotificationAlertMessageKey, v23);
  v12 = sub_10017AE6C(a1, a5, 0, a2, v15, 0, 0);
  if (v12)
  {
    *(v12 + 24) = CFRetain(a4);
    v25 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"Dispatching Join Recommendation Notification(%d)", *(v12 + 40)}];
    }

    objc_autoreleasePoolPop(v25);
  }

  CFRelease(v15);
  CFRelease(v24);
  return v12;
}

uint64_t sub_1000A4ABC(uint64_t a1, const void *a2, uint64_t a3, const void *a4)
{
  v7 = sub_1000D79C0(a2);
  if (!a4)
  {
    sub_10017C7F0();
    return 0;
  }

  v8 = v7;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    sub_10017C784();
    return 0;
  }

  v10 = Mutable;
  if (v8 == 2)
  {
    v11 = sub_10010E234(@"PERSONAL_HOTSPOT_DECLINED_BODY");
    v12 = sub_10000A878(a4);
    v13 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, v11, v12);
  }

  else
  {
    if (MGGetBoolAnswer())
    {
      v14 = sub_10010E234(@"PERSONAL_HOTSPOT_START_FAILURE_BODY_INTERNAL");
      v21 = sub_10000A878(a4);
      v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, v14, v21, v8);
    }

    else
    {
      v16 = sub_10010E234(@"PERSONAL_HOTSPOT_START_FAILURE_BODY");
      v22 = sub_10000A878(a4);
      v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, v16, v22);
    }

    v13 = v15;
    v17 = sub_10010E234(@"PERSONAL_HOTSPOT_REMOTE_FAILURE_TITLE");
    CFDictionarySetValue(v10, kCFUserNotificationAlertHeaderKey, v17);
  }

  if (!v13)
  {
    sub_10017C70C(v10);
    return 0;
  }

  CFDictionarySetValue(v10, kCFUserNotificationDefaultButtonTitleKey, @"OK");
  CFDictionarySetValue(v10, kCFUserNotificationAlertMessageKey, v13);
  v18 = sub_10017AE6C(a1, 11, 0, a2, v10, 0, 0);
  if (v18)
  {
    v19 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"Dispatching Auto Hotspot Join Failure Panel(%d)", *(v18 + 40)}];
    }

    objc_autoreleasePoolPop(v19);
    *(v18 + 24) = CFRetain(a4);
  }

  CFRelease(v10);
  CFRelease(v13);
  return v18;
}

uint64_t sub_1000A4CEC(uint64_t a1, const void *a2, int a3, const void *a4)
{
  if (!a4)
  {
    sub_10017C940();
    return 0;
  }

  v7 = sub_10000A540(a4, @"WiFiNetworkUserAcceptedRecommendationAt");
  if (v7)
  {
    v8 = v7;
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: user already accepted join recommendation for this network at %@. Suppressing alert.", "WiFiNotificationCreateAskToJoinHotspot", v8}];
    }

    objc_autoreleasePoolPop(v9);
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    sub_10017C8D4();
    return 0;
  }

  v13 = Mutable;
  v14 = sub_10010E234(@"PERSONAL_HOTSPOT_NEARBY_TITLE");
  CFDictionarySetValue(v13, kCFUserNotificationAlertHeaderKey, v14);
  v15 = sub_10010E234(@"WIFI_JOIN_NETWORK_JOIN");
  CFDictionarySetValue(v13, kCFUserNotificationDefaultButtonTitleKey, v15);
  v16 = sub_10010E234(@"WIFI_JOIN_NETWORK_CANCEL");
  CFDictionarySetValue(v13, kCFUserNotificationAlternateButtonTitleKey, v16);
  v17 = sub_10010E234(@"PERSONAL_HOTSPOT_NEARBY_BODY");
  v18 = sub_10000A878(a4);
  v19 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, v17, v18);
  if (!v19)
  {
    sub_10017C85C(v13);
    return 0;
  }

  v20 = v19;
  CFDictionarySetValue(v13, kCFUserNotificationAlertMessageKey, v19);
  v10 = sub_10017AE6C(a1, 10, 0, a2, v13, 0, 0);
  if (v10)
  {
    v21 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"Dispatching Auto Hotspot Panel(%d)", *(v10 + 40)}];
    }

    objc_autoreleasePoolPop(v21);
    *(v10 + 24) = CFRetain(a4);
  }

  CFRelease(v13);
  CFRelease(v20);
  return v10;
}

void sub_1000A4F20(uint64_t a1, int a2, uint64_t a3, const void *a4, int a5, void *a6)
{
  if (a2 > 9)
  {
    switch(a2)
    {
      case 10:
        sub_1000A4CEC(a1, a4, a3, a6);
        return;
      case 11:
        sub_1000A4ABC(a1, a4, a3, a6);
        return;
      case 12:
        goto LABEL_10;
    }
  }

  else
  {
    if (a2 > 4)
    {
      if (a2 != 5)
      {
        if (a2 == 6)
        {
          sub_10017BB30();
        }

        else if (a2 == 7)
        {
          sub_10017BD58();
        }

        return;
      }

LABEL_10:
      sub_1000A4854(a1, a4, a3, a6, a2);
      return;
    }

    if (a2 <= 1)
    {
      if (!a2)
      {
        sub_10017ACE8();
        return;
      }

      if (a2 != 1)
      {
        return;
      }

LABEL_19:
      sub_10017B480(a1, a4, a3, a6, a3);
      return;
    }

    if (a2 == 2)
    {
      sub_10017B168();
      return;
    }

    if (a2 == 3)
    {
      goto LABEL_19;
    }
  }
}

BOOL sub_1000A5020(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1 > 0xC;
  v3 = (1 << v1) & 0x1425;
  return !v2 && v3 != 0;
}

void sub_1000A5044(uint64_t a1)
{
  if (*(a1 + 96))
  {
    return;
  }

  v11 = v2;
  v12 = v1;
  v6 = *(a1 + 32);
  if (v6 <= 4)
  {
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        v10 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:"Canceling EAP Trust panel"];
        }

        objc_autoreleasePoolPop(v10);
        goto LABEL_34;
      }

      if (v6 != 3)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (!v6)
      {
        v7 = objc_autoreleasePoolPush();
        v8 = off_100298C40;
        if (off_100298C40)
        {
          v9 = "Canceling Ask To Join panel";
          goto LABEL_32;
        }

        goto LABEL_33;
      }

      if (v6 != 1)
      {
        goto LABEL_34;
      }
    }

    v7 = objc_autoreleasePoolPush();
    v8 = off_100298C40;
    if (off_100298C40)
    {
      v9 = "Canceling pending password panel";
      goto LABEL_32;
    }

LABEL_33:
    objc_autoreleasePoolPop(v7);
    CFUserNotificationCancel(*(a1 + 120));
    goto LABEL_34;
  }

  if (v6 <= 9)
  {
    if (v6 == 5)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = off_100298C40;
      if (off_100298C40)
      {
        v9 = "Canceling Join Recommendation panel";
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    if (v6 == 7)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = off_100298C40;
      if (off_100298C40)
      {
        v9 = "Canceling Join Failure panel";
        goto LABEL_32;
      }

      goto LABEL_33;
    }
  }

  else
  {
    switch(v6)
    {
      case 10:
        v7 = objc_autoreleasePoolPush();
        v8 = off_100298C40;
        if (off_100298C40)
        {
          v9 = "Canceling Ask-To-Join Hotspot";
          goto LABEL_32;
        }

        goto LABEL_33;
      case 11:
        v7 = objc_autoreleasePoolPush();
        v8 = off_100298C40;
        if (off_100298C40)
        {
          v9 = "Canceling Auto Hotspot Failure";
          goto LABEL_32;
        }

        goto LABEL_33;
      case 12:
        v7 = objc_autoreleasePoolPush();
        v8 = off_100298C40;
        if (off_100298C40)
        {
          v9 = "Canceling Auto Hotspot Join Recommendation";
LABEL_32:
          [v8 WFLog:3 message:{v9, v11, v12, v3}];
          goto LABEL_33;
        }

        goto LABEL_33;
    }
  }

LABEL_34:

  sub_1000A53B0(a1, 3);
}

void sub_1000A5230(void *a1, int a2, CFTypeRef cf)
{
  sub_1000A5334(a1, cf);

  sub_1000A53B0(a1, a2);
}

void sub_1000A5274(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = a2;
  if (*(a1 + 56))
  {
    Main = CFRunLoopGetMain();
    v4 = *(a1 + 56);

    CFRunLoopAddSource(Main, v4, kCFRunLoopDefaultMode);
  }
}

void sub_1000A52C8(uint64_t a1)
{
  *(a1 + 48) = 0;
  if (*(a1 + 56))
  {
    Main = CFRunLoopGetMain();
    v3 = *(a1 + 56);

    CFRunLoopRemoveSource(Main, v3, kCFRunLoopDefaultMode);
  }
}

uint64_t sub_1000A531C(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 64) = a2;
  *(result + 72) = a3;
  return result;
}

const __CFDictionary *sub_1000A5324(uint64_t a1, const void *a2)
{
  result = *(a1 + 104);
  if (result)
  {
    return CFDictionaryGetValue(result, a2);
  }

  return result;
}

void *sub_1000A5334(void *result, CFTypeRef cf)
{
  if (cf)
  {
    v3 = result;
    v4 = result[13];
    if (v4)
    {
      CFRelease(v4);
      *(v3 + 104) = 0;
    }

    result = CFRetain(cf);
    *(v3 + 104) = result;
    if (!*(v3 + 32))
    {
      v5 = result;
      v6 = *(v3 + 24);
      if (v6)
      {
        CFRelease(v6);
        *(v3 + 24) = 0;
        v5 = *(v3 + 104);
      }

      result = sub_10000AD2C(kCFAllocatorDefault, v5);
      *(v3 + 24) = result;
    }
  }

  return result;
}

void sub_1000A53B0(uint64_t a1, int a2)
{
  *(a1 + 96) = a2;
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Notification response received. Type=%d (%@) ResponseType=%d.", *(a1 + 32), sub_1000A5484(*(a1 + 96)), *(a1 + 96)}];
  }

  objc_autoreleasePoolPop(v3);
  v4 = *(a1 + 64);
  if (v4)
  {
    v4(a1, *(a1 + 72));
  }

  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = *(a1 + 88);

    v5(a1, v6);
  }
}

__CFString *sub_1000A5484(unsigned int a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1002613E0[a1];
  }
}

void sub_1000A54A4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A55E4;
  block[3] = &unk_10025EAD8;
  block[4] = a1;
  dispatch_sync(&_dispatch_main_q, block);
  v2 = *(a1 + 32);
  v3 = v2 > 0xD;
  v4 = (1 << v2) & 0x3CEB;
  if (!v3 && v4 != 0)
  {
    v6 = *(a1 + 120);
    if (v6)
    {
      pthread_mutex_lock(&stru_100297B58);
      CFDictionaryRemoveValue(qword_100298648, v6);
      pthread_mutex_unlock(&stru_100297B58);
      CFUserNotificationCancel(*(a1 + 120));
      v7 = *(a1 + 120);
      if (v7)
      {
        CFRelease(v7);
        *(a1 + 120) = 0;
      }
    }
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 16) = 0;
  }

  v9 = *(a1 + 112);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 112) = 0;
  }

  v10 = *(a1 + 24);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 24) = 0;
  }

  v11 = *(a1 + 104);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 104) = 0;
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 56) = 0;
  }
}

void sub_1000A55EC(const void *a1, uint64_t a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (a1)
  {
    pthread_mutex_lock(&stru_100297B58);
    Value = CFDictionaryGetValue(qword_100298648, a1);
    v5 = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    pthread_mutex_unlock(&stru_100297B58);
    v11[3] = v5;
    if (v5)
    {
      if (v5[6])
      {
        v6 = CFGetTypeID(v5);
        v7 = qword_100298640;
        if (!qword_100298640)
        {
          pthread_once(&stru_100297B40, sub_1000A47EC);
          v7 = qword_100298640;
        }

        if (v6 == v7)
        {
          CFRetain(a1);
          v8 = *(v11[3] + 48);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000A5778;
          block[3] = &unk_1002613C0;
          block[4] = &v10;
          block[5] = a2;
          block[6] = a1;
          dispatch_async(v8, block);
          goto LABEL_12;
        }

        v5 = v11[3];
        if (!v5)
        {
          goto LABEL_12;
        }
      }

      CFRelease(v5);
      v11[3] = 0;
    }
  }

LABEL_12:
  _Block_object_dispose(&v10, 8);
}

void sub_1000A5760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000A5778(uint64_t a1)
{
  v2 = *(*(*(*(a1 + 32) + 8) + 24) + 36);
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: %lu type: %d inputType: %d", "__WiFiNotificationCFUNCallback_block_invoke", *(a1 + 40), *(*(*(*(a1 + 32) + 8) + 24) + 32), v2}];
  }

  objc_autoreleasePoolPop(v3);
  v4 = *(a1 + 32);
  v5 = *(*(v4 + 8) + 24);
  if (v2 != 1)
  {
    v6 = *(v5 + 32);
    if (v6 != 13)
    {
      goto LABEL_14;
    }
  }

  v7 = *(v5 + 104);
  if (v7)
  {
    CFRelease(v7);
    *(*(*(*(a1 + 32) + 8) + 24) + 104) = 0;
    v5 = *(*(*(a1 + 32) + 8) + 24);
  }

  *(*(*(*(a1 + 32) + 8) + 24) + 104) = CFUserNotificationGetResponseDictionary(*(v5 + 120));
  v4 = *(a1 + 32);
  v8 = *(*(v4 + 8) + 24);
  v9 = *(v8 + 104);
  if (v9)
  {
    CFRetain(v9);
    v4 = *(a1 + 32);
    v8 = *(*(v4 + 8) + 24);
  }

  v6 = *(v8 + 32);
  if (v6 != 13)
  {
LABEL_14:
    v12 = *(a1 + 40) & 3;
    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v11 = 0;
        goto LABEL_30;
      }
    }

    else
    {
      if (!v12)
      {
        if (v6 == 2)
        {
          v11 = 1;
          goto LABEL_30;
        }

        if (v2 != 2)
        {
          if (v6)
          {
            v11 = 1;
          }

          else
          {
            v11 = 2;
          }

          goto LABEL_30;
        }

        goto LABEL_26;
      }

      if (v2 == 2 && v6 == 2)
      {
LABEL_26:
        v11 = 4;
        goto LABEL_30;
      }
    }

    v11 = 2;
    goto LABEL_30;
  }

  v10 = [-[__CFDictionary objectForKey:](CFUserNotificationGetResponseDictionary(*(v8 + 120)) objectForKey:{SBSUserNotificationButtonDefinitionResponseIndexKey), "intValue"}];
  if (v10)
  {
    v11 = v10 == 1;
  }

  else
  {
    v11 = 2;
  }

  v4 = *(a1 + 32);
LABEL_30:
  v14 = *(*(v4 + 8) + 24);
  ResponseDictionary = CFUserNotificationGetResponseDictionary(*(a1 + 48));
  sub_1000A5334(v14, ResponseDictionary);
  CFRelease(*(a1 + 48));
  sub_1000A53B0(*(*(*(a1 + 32) + 8) + 24), v11);
  v16 = *(*(*(a1 + 32) + 8) + 24);
  if (v16)
  {
    CFRelease(v16);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

uint64_t sub_1000A598C(uint64_t a1, int a2)
{

  return sub_10017AE6C(a1, a2, 0, v3, v2, 0, 0);
}

uint64_t sub_1000A59B0(const void *a1, BOOL *a2, double a3)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  if (a1)
  {
    if (MKBGetDeviceLockState() == 1 && !MKBUserUnlockedSinceBoot())
    {
      v14 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Cannot copy password for %@. Device wasn't unlocked yet", "WiFiSecurityCopyPasswordWithTimeout", a1}];
      }

      objc_autoreleasePoolPop(v14);
    }

    else
    {
      v6 = dispatch_semaphore_create(0);
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      v19 = 0;
      CFRetain(a1);
      global_queue = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000A5BCC;
      block[3] = &unk_100261418;
      block[6] = &v16;
      block[7] = a1;
      block[4] = v6;
      block[5] = &v20;
      dispatch_async(global_queue, block);
      v8 = dispatch_time(0, (a3 * 1000000000.0));
      v9 = dispatch_semaphore_wait(v6, v8) != 0;
      v10 = v17;
      *(v17 + 24) = v9;
      *a2 = v9;
      if (*(v10 + 24) == 1)
      {
        v11 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s:SecItemCopyMatching timed out, timeout %f\n", "WiFiSecurityCopyPasswordWithTimeout", *&a3}];
        }

        objc_autoreleasePoolPop(v11);
      }

      dispatch_release(v6);
      _Block_object_dispose(&v16, 8);
    }
  }

  v12 = v21[3];
  _Block_object_dispose(&v20, 8);
  return v12;
}

void sub_1000A5BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

intptr_t sub_1000A5BCC(uint64_t a1)
{
  result = 0;
  v2 = sub_1000A5D14(*(a1 + 56), 0, 0, 0, 0, 1);
  v3 = v2;
  if (v2)
  {
    v4 = SecItemCopyMatching(v2, &result);
    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = result == 0;
    }

    if (!v5)
    {
      *(*(*(a1 + 40) + 8) + 24) = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, result, 0x8000100u);
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s:[%@] Error result %d \n", "WiFiSecurityCopyPasswordWithTimeout_block_invoke", *(a1 + 56), v4}];
  }

  objc_autoreleasePoolPop(v6);
LABEL_11:
  if (result)
  {
    CFRelease(result);
    result = 0;
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v7 = *(*(*(a1 + 40) + 8) + 24);
    if (v7)
    {
      CFRelease(v7);
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }

  CFRelease(*(a1 + 56));
  return dispatch_semaphore_signal(*(a1 + 32));
}

__CFDictionary *sub_1000A5D14(const void *a1, const void *a2, const void *a3, int a4, int a5, int a6)
{
  if (a1)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
    v13 = Mutable;
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, kSecClass, kSecClassGenericPassword);
      CFDictionarySetValue(v13, kSecAttrAccount, a1);
      CFDictionarySetValue(v13, kSecAttrService, @"AirPort");
      CFDictionarySetValue(v13, kSecAttrSynchronizable, kSecAttrSynchronizableAny);
      if (a2)
      {
        CFDictionarySetValue(v13, kSecAttrLabel, a2);
      }

      if (a3)
      {
        CFDictionarySetValue(v13, kSecAttrDescription, a3);
      }

      if (a6)
      {
        CFDictionarySetValue(v13, kSecUseSystemKeychain, kCFBooleanTrue);
      }

      if (!a4)
      {
        CFDictionarySetValue(v13, kSecReturnData, kCFBooleanTrue);
      }

      if (a5)
      {
        CFDictionarySetValue(v13, kSecReturnAttributes, kCFBooleanTrue);
      }
    }

    else
    {
      sub_10017CB00(a1);
    }
  }

  else
  {
    sub_10017CB70();
    return 0;
  }

  return v13;
}

CFStringRef sub_1000A5EAC(const __CFString *a1)
{
  result = sub_1000A5F70(a1, 1);
  if (!result)
  {
    v3 = getprogname();
    if (!strncmp("sharingd", v3, 8uLL) || (v4 = getprogname(), !strncmp("HPSetup", v4, 7uLL)) || (v5 = getprogname(), !strncmp("Setup", v5, 5uLL)) || (v6 = getprogname(), !strncmp("HDSViewService", v6, 0xEuLL)))
    {

      return sub_1000A60D4(a1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFStringRef sub_1000A5F70(const __CFString *a1, int a2)
{
  v2 = a1;
  if (!a1)
  {
    return v2;
  }

  if (MKBGetDeviceLockState() != 1 || MKBUserUnlockedSinceBoot())
  {
    v4 = sub_1000A5D14(v2, 0, 0, 0, 0, a2);
    v5 = v4;
    result = 0;
    if (v4)
    {
      v6 = SecItemCopyMatching(v4, &result);
      if (!v6 && result)
      {
        v2 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, result, 0x8000100u);
LABEL_12:
        if (result)
        {
          CFRelease(result);
          result = 0;
        }

        if (v5)
        {
          CFRelease(v5);
        }

        return v2;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s:[%@] Error result %d \n", "__WiFiSecurityCopyPassword", v2, v6}];
    }

    objc_autoreleasePoolPop(v7);
    v2 = 0;
    goto LABEL_12;
  }

  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Cannot copy password for %@. Device wasn't unlocked yet", "__WiFiSecurityCopyPassword", v2}];
  }

  objc_autoreleasePoolPop(v8);
  return 0;
}

uint64_t sub_1000A60D4(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = sub_100002B70;
  v9 = sub_10000677C;
  v10 = 0;
  if (qword_100298658 != -1)
  {
    sub_10017CBDC();
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000A78C0;
  v4[3] = &unk_100261468;
  v4[4] = a1;
  v4[5] = &v5;
  dispatch_sync(qword_100298650, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

CFTypeRef sub_1000A61CC(const void *a1)
{
  v1 = a1;
  result = 0;
  if (!a1)
  {
    sub_10017CC74();
LABEL_19:
    v3 = 0;
    goto LABEL_12;
  }

  if (MKBGetDeviceLockState() == 1 && !MKBUserUnlockedSinceBoot())
  {
    sub_10017CC04(v1);
    v1 = 0;
    goto LABEL_19;
  }

  v2 = sub_1000A5D14(v1, 0, 0, 0, 1, 1);
  v3 = v2;
  if (v2)
  {
    v4 = SecItemCopyMatching(v2, &result);
    if (!v4 && result)
    {
      Value = CFDictionaryGetValue(result, kSecAttrModificationDate);
      v1 = CFRetain(Value);
      goto LABEL_12;
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s:[%@] Error result %d", "WiFiSecurityCopyPasswordModificationDate", v1, v4}];
  }

  objc_autoreleasePoolPop(v6);
  v1 = 0;
LABEL_12:
  if (result)
  {
    CFRelease(result);
    result = 0;
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v1;
}

uint64_t sub_1000A6300(uint64_t a1, const __CFString *a2, BOOL *a3, double a4)
{
  v22 = 0;
  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: for account %@", "WiFiSecuritySetPasswordWithTimeout", a1}];
  }

  objc_autoreleasePoolPop(v8);
  if (!a1)
  {
    sub_10017CE28();
    return a1;
  }

  if (!a2)
  {
    sub_10017CDBC();
    return 0;
  }

  if (!CFStringGetLength(a2))
  {
    sub_10017CD4C(a1);
    return 0;
  }

  ExternalRepresentation = CFStringCreateExternalRepresentation(kCFAllocatorDefault, a2, 0x8000100u, 0);
  v10 = sub_1000A59B0(a1, &v22, a4);
  v11 = v10;
  v12 = v22;
  if (v22)
  {
    v13 = 0;
    *a3 = 1;
    v14 = 4294899568;
  }

  else
  {
    if (v10)
    {
      if (CFStringCompare(a2, v10, 0) == kCFCompareEqualTo)
      {
        *a3 = v12;
        a1 = 1;
        goto LABEL_26;
      }

      v15 = sub_1000A5D14(a1, 0, 0, 1, 0, 1);
      if (!v15)
      {
        sub_10017CCE0();
        a1 = 0;
        goto LABEL_26;
      }

      v13 = v15;
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
      CFDictionarySetValue(Mutable, kSecValueData, ExternalRepresentation);
      CFDictionarySetValue(Mutable, kSecAttrLabel, a1);
      CFDictionarySetValue(Mutable, kSecAttrDescription, @"AirPort network password");
      v14 = SecItemUpdate(v13, Mutable);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    else
    {
      v17 = sub_1000A5D14(a1, a1, @"AirPort network password", 1, 0, 1);
      if (!v17)
      {
        sub_10017CCE0();
        a1 = 0;
        if (!ExternalRepresentation)
        {
          return a1;
        }

        goto LABEL_27;
      }

      v13 = v17;
      result = 0xAAAAAAAAAAAAAAAALL;
      CFDictionarySetValue(v17, kSecValueData, ExternalRepresentation);
      CFDictionarySetValue(v13, kSecAttrAccessible, kSecAttrAccessibleAfterFirstUnlock);
      CFDictionarySetValue(v13, kSecAttrSynchronizable, kCFBooleanTrue);
      v14 = SecItemAdd(v13, &result);
    }

    *a3 = v12;
    if (!v14)
    {
      notify_post("com.apple.wifid.WiFiPasswordChanged");
      v19 = 1;
      goto LABEL_23;
    }
  }

  v18 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s:[%@] Error result %d \n", "WiFiSecuritySetPasswordWithTimeout", a1, v14}];
  }

  objc_autoreleasePoolPop(v18);
  v19 = 0;
  a1 = 0;
  if (!v13)
  {
    if (!v11)
    {
      goto LABEL_20;
    }

    goto LABEL_26;
  }

LABEL_23:
  CFRelease(v13);
  a1 = v19;
  if (!v11)
  {
LABEL_20:
    if (!ExternalRepresentation)
    {
      return a1;
    }

    goto LABEL_27;
  }

LABEL_26:
  CFRelease(v11);
  if (ExternalRepresentation)
  {
LABEL_27:
    CFRelease(ExternalRepresentation);
  }

  return a1;
}

BOOL sub_1000A6638(const __CFString *a1, CFStringRef theString, int a3)
{
  if (!a1)
  {
    sub_10017CFDC();
    return 0;
  }

  if (!theString)
  {
    sub_10017CF70();
    return 0;
  }

  if (!CFStringGetLength(theString))
  {
    sub_10017CF00(a1);
    return 0;
  }

  ExternalRepresentation = CFStringCreateExternalRepresentation(kCFAllocatorDefault, theString, 0x8000100u, 0);
  v7 = sub_1000A5F70(a1, a3);
  if (v7)
  {
    if (CFStringCompare(theString, v7, 0) == kCFCompareEqualTo)
    {
      v13 = 1;
      goto LABEL_20;
    }

    v8 = sub_1000A5D14(a1, 0, 0, 1, 0, a3);
    if (!v8)
    {
      sub_10017CE94();
      v13 = 0;
      goto LABEL_20;
    }

    v9 = v8;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
    CFDictionarySetValue(Mutable, kSecValueData, ExternalRepresentation);
    CFDictionarySetValue(Mutable, kSecAttrLabel, a1);
    CFDictionarySetValue(Mutable, kSecAttrDescription, @"AirPort network password");
    v11 = SecItemUpdate(v9, Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    v12 = sub_1000A5D14(a1, a1, @"AirPort network password", 1, 0, a3);
    if (!v12)
    {
      sub_10017CE94();
      v13 = 0;
      if (!ExternalRepresentation)
      {
        return v13;
      }

      goto LABEL_21;
    }

    v9 = v12;
    result = 0xAAAAAAAAAAAAAAAALL;
    CFDictionarySetValue(v12, kSecValueData, ExternalRepresentation);
    CFDictionarySetValue(v9, kSecAttrAccessible, kSecAttrAccessibleAfterFirstUnlock);
    CFDictionarySetValue(v9, kSecAttrSynchronizable, kCFBooleanTrue);
    v11 = SecItemAdd(v9, &result);
  }

  v13 = v11 == 0;
  if (v11)
  {
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s:[%@] Error result %d \n", "__WiFiSecuritySetPassword", a1, v11}];
    }

    objc_autoreleasePoolPop(v14);
  }

  else
  {
    notify_post("com.apple.wifid.WiFiPasswordChanged");
  }

  CFRelease(v9);
  if (!v7)
  {
    if (!ExternalRepresentation)
    {
      return v13;
    }

    goto LABEL_21;
  }

LABEL_20:
  CFRelease(v7);
  if (ExternalRepresentation)
  {
LABEL_21:
    CFRelease(ExternalRepresentation);
  }

  return v13;
}

uint64_t sub_1000A68EC(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Removing password for %@", "WiFiSecurityRemovePassword", a1}];
  }

  objc_autoreleasePoolPop(v2);

  return sub_1000A6968(a1, 1);
}

uint64_t sub_1000A6968(const void *a1, int a2)
{
  if (!a1)
  {
    sub_10017D0B4();
    return 0;
  }

  v3 = sub_1000A5D14(a1, 0, 0, 0, 0, a2);
  if (!v3)
  {
    sub_10017D048();
    return 0;
  }

  v4 = v3;
  v5 = SecItemDelete(v3);
  CFRelease(v4);
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s:[%@] Error result %d \n", "__WiFiSecurityRemovePassword", a1, v5}];
    }

    objc_autoreleasePoolPop(v6);
    return 0;
  }

  notify_post("com.apple.wifid.WiFiPasswordChanged");
  return 1;
}

uint64_t sub_1000A6A40(uint64_t a1)
{
  v1 = a1;
  result = 0;
  if (a1)
  {
    if (MKBGetDeviceLockState() != 1 || MKBUserUnlockedSinceBoot())
    {
      v2 = sub_1000A5D14(v1, 0, 0, 0, 1, 1);
      v3 = v2;
      if (v2)
      {
        v4 = SecItemCopyMatching(v2, &result);
        if (!v4 && result)
        {
          Value = CFDictionaryGetValue(result, kSecAttrSynchronizable);
          if (Value)
          {
            v1 = CFBooleanGetValue(Value);
            goto LABEL_14;
          }

          goto LABEL_13;
        }
      }

      else
      {
        v4 = 0;
      }

      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s:[%@] Error result %d \n", "WiFiSecurityIsPasswordSyncing", v1, v4}];
      }

      objc_autoreleasePoolPop(v6);
LABEL_13:
      v1 = 0;
      goto LABEL_14;
    }

    sub_10017D120(v1);
    v1 = 0;
  }

  else
  {
    sub_10017D190();
  }

  v3 = 0;
LABEL_14:
  if (result)
  {
    CFRelease(result);
    result = 0;
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v1;
}

CFTypeRef sub_1000A6B78()
{
  result = 0;
  if (MKBGetDeviceLockState() == 1 && !MKBUserUnlockedSinceBoot())
  {
    sub_10017D1FC();
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
  if (!Mutable)
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: failed to create query", "__WiFiSecurityCreateWildcardAttributeQuery"}];
    }

    objc_autoreleasePoolPop(v6);
    return 0;
  }

  v1 = Mutable;
  CFDictionarySetValue(Mutable, kSecClass, kSecClassGenericPassword);
  CFDictionarySetValue(v1, kSecMatchLimit, kSecMatchLimitAll);
  CFDictionarySetValue(v1, kSecAttrService, @"AirPort");
  CFDictionarySetValue(v1, kSecAttrSynchronizable, kSecAttrSynchronizableAny);
  CFDictionarySetValue(v1, kSecReturnAttributes, kCFBooleanTrue);
  CFDictionarySetValue(v1, kSecUseSystemKeychain, kCFBooleanTrue);
  v2 = SecItemCopyMatching(v1, &result);
  if (v2 && result)
  {
    v3 = v2;
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s Error result %d", "WiFiSecurityCopyAttributesForAllAirPortEntries", v3}];
    }

    objc_autoreleasePoolPop(v4);
  }

  CFRelease(v1);
  return result;
}

uint64_t sub_1000A6D4C(const void *a1, BOOL *a2, int a3, double a4)
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  if (a1)
  {
    v8 = _os_feature_enabled_impl();
    if (a3)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    if ((v9 & 1) != 0 || MKBGetDeviceLockState() != 1 || MKBUserUnlockedSinceBoot())
    {
      v10 = dispatch_semaphore_create(0);
      v20 = 0;
      v21 = &v20;
      v22 = 0x2020000000;
      v23 = 0;
      CFRetain(a1);
      global_queue = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000A6F8C;
      block[3] = &unk_100261418;
      block[6] = &v20;
      block[7] = a1;
      block[4] = v10;
      block[5] = &v24;
      dispatch_async(global_queue, block);
      v12 = dispatch_time(0, (a4 * 1000000000.0));
      v13 = dispatch_semaphore_wait(v10, v12) != 0;
      v14 = v21;
      *(v21 + 24) = v13;
      *a2 = v13;
      if (*(v14 + 24) == 1)
      {
        v15 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s:SecItemCopyMatching timed out, timeout %f\n", "WiFiSecurityCopyNonSyncablePasswordWithTimeout", *&a4}];
        }

        objc_autoreleasePoolPop(v15);
      }

      dispatch_release(v10);
      _Block_object_dispose(&v20, 8);
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Cannot copy password for %@. Device wasn't unlocked yet", "WiFiSecurityCopyNonSyncablePasswordWithTimeout", a1}];
      }

      objc_autoreleasePoolPop(v18);
    }
  }

  v16 = v25[3];
  _Block_object_dispose(&v24, 8);
  return v16;
}

void sub_1000A6F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

intptr_t sub_1000A6F8C(uint64_t a1)
{
  result = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
  v3 = Mutable;
  if (Mutable)
  {
    CFDictionarySetValue(Mutable, kSecClass, kSecClassGenericPassword);
    CFDictionarySetValue(v3, kSecAttrAccount, *(a1 + 56));
    CFDictionarySetValue(v3, kSecAttrService, @"AirPort");
    CFDictionarySetValue(v3, kSecUseSystemKeychain, kCFBooleanTrue);
    CFDictionarySetValue(v3, kSecReturnData, kCFBooleanTrue);
    v4 = SecItemCopyMatching(v3, &result);
    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = result == 0;
    }

    if (!v5)
    {
      *(*(*(a1 + 40) + 8) + 24) = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, result, 0x8000100u);
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s:[%@] Error result %d \n", "WiFiSecurityCopyNonSyncablePasswordWithTimeout_block_invoke", *(a1 + 56), v4}];
  }

  objc_autoreleasePoolPop(v6);
LABEL_11:
  if (result)
  {
    CFRelease(result);
    result = 0;
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v7 = *(*(*(a1 + 40) + 8) + 24);
    if (v7)
    {
      CFRelease(v7);
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }

  CFRelease(*(a1 + 56));
  return dispatch_semaphore_signal(*(a1 + 32));
}

id sub_1000A7160(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  macOut[0] = v3;
  macOut[1] = v3;
  v4 = [a1 cStringUsingEncoding:4];
  v5 = strlen(v4);
  CCHmac(2u, "CURRENT_NETWORK", 0xFuLL, v4, v5, macOut);
  v6 = [[NSMutableString alloc] initWithCapacity:64];
  for (i = 0; i != 32; ++i)
  {
    [v6 appendFormat:@"%02x", *(macOut + i)];
  }

  objc_autoreleasePoolPop(v2);
  return v6;
}

void sub_1000A725C(uint64_t a1, uint64_t a2)
{
  if (qword_100298658 != -1)
  {
    sub_10017D268();
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000A72F8;
  v4[3] = &unk_100261330;
  v4[4] = a1;
  v4[5] = a2;
  dispatch_async(qword_100298650, v4);
}

void sub_1000A72F8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v4 = (a1 + 32);
  v3 = *(a1 + 32);
  if (!v3)
  {
    sub_10017D50C();
    goto LABEL_22;
  }

  if (!*(a1 + 40))
  {
    sub_10017D470();
    goto LABEL_22;
  }

  if (![v3 length])
  {
    sub_10017D3D4();
    goto LABEL_22;
  }

  if (![*(a1 + 40) length])
  {
    sub_10017D31C();
    goto LABEL_22;
  }

  v5 = sub_1000A7160(*v4);
  v6 = v5;
  if (!v5 || ![v5 length])
  {
    sub_10017D27C();
LABEL_22:
    v6 = *buf;
    goto LABEL_14;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *v4;
    *buf = 136315650;
    *&buf[4] = "WiFiSecuritySavePasswordForPasswordBackup_block_invoke";
    v24 = 2112;
    v25 = v7;
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: ssid %@ (hash: %@)", buf, 0x20u);
  }

  v8 = [*(a1 + 40) dataUsingEncoding:4];
  v9 = +[NSMutableDictionary dictionary];
  [v9 setObject:kSecClassGenericPassword forKeyedSubscript:kSecClass];
  [v9 setObject:v6 forKeyedSubscript:kSecAttrAccount];
  [v9 setObject:@"AirPort" forKeyedSubscript:kSecAttrService];
  [v9 setObject:v8 forKeyedSubscript:kSecValueData];
  [v9 setObject:kSecAttrAccessibleAfterFirstUnlock forKeyedSubscript:kSecAttrAccessible];
  v10 = SecItemAdd(v9, v20 + 3);
  v11 = v10;
  *(v16 + 6) = v10;
  if (v10)
  {
    if (v10 == -25299)
    {
      v12 = *v4;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000A7780;
      v14[3] = &unk_100261440;
      v14[4] = v9;
      v14[5] = &v15;
      v14[6] = &v19;
      sub_1000A76E4(v12, v14);

      goto LABEL_16;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "WiFiSecuritySavePasswordForPasswordBackup_block_invoke";
      v24 = 2112;
      v25 = v6;
      v26 = 1024;
      LODWORD(v27) = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: [%@] error result %d", buf, 0x1Cu);
    }
  }

LABEL_14:

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *v4;
    *buf = 136315394;
    *&buf[4] = "WiFiSecuritySavePasswordForPasswordBackup_block_invoke";
    v24 = 2112;
    v25 = v13;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: [%@] save attempt complete", buf, 0x16u);
  }

LABEL_16:
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  objc_autoreleasePoolPop(v2);
}

void sub_1000A76E4(uint64_t a1, uint64_t a2)
{
  if (qword_100298658 != -1)
  {
    sub_10017D268();
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000A7B68;
  v4[3] = &unk_1002614B0;
  v4[4] = a1;
  v4[5] = a2;
  dispatch_async(qword_100298650, v4);
}

void sub_1000A7780(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "WiFiSecuritySavePasswordForPasswordBackup_block_invoke";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: retrying add after removal", &v3, 0xCu);
  }

  *(*(*(a1 + 40) + 8) + 24) = SecItemAdd(*(a1 + 32), (*(*(a1 + 48) + 8) + 24));
  v2 = *(*(*(a1 + 40) + 8) + 24);
  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315394;
      v4 = "WiFiSecuritySavePasswordForPasswordBackup_block_invoke";
      v5 = 1024;
      v6 = v2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: retry add error result %d", &v3, 0x12u);
    }
  }
}

void sub_1000A78C0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  result = 0;
  v3 = *(a1 + 32);
  if (!v3)
  {
    sub_10017D6E4();
    goto LABEL_18;
  }

  if (![v3 length])
  {
    sub_10017D648();
    goto LABEL_18;
  }

  v4 = sub_1000A7160(*(a1 + 32));
  v5 = v4;
  if (!v4 || ![v4 length])
  {
    sub_10017D5A8();
LABEL_18:
    v5 = *buf;
    goto LABEL_12;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    *buf = 136315650;
    *&buf[4] = "WiFiSecurityCopyPasswordFromPasswordBackup_block_invoke";
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: ssid %@ (%@)", buf, 0x20u);
  }

  v7 = +[NSMutableDictionary dictionary];
  [v7 setObject:kSecClassGenericPassword forKeyedSubscript:kSecClass];
  [v7 setObject:v5 forKeyedSubscript:kSecAttrAccount];
  [v7 setObject:@"AirPort" forKeyedSubscript:kSecAttrService];
  [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecReturnData];
  v8 = SecItemCopyMatching(v7, &result);
  if (v8 || !result)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "WiFiSecurityCopyPasswordFromPasswordBackup_block_invoke";
      v11 = 2112;
      v12 = v5;
      v13 = 1024;
      LODWORD(v14) = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s:[%@] error result %d", buf, 0x1Cu);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 40) = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, result, 0x8000100u);
  }

LABEL_12:

  if (result)
  {
    CFRelease(result);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000A7B68(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (!v3)
  {
    sub_10017D8BC();
    goto LABEL_18;
  }

  if (![v3 length])
  {
    sub_10017D820();
    goto LABEL_18;
  }

  v4 = sub_1000A7160(*(a1 + 32));
  v5 = v4;
  if (!v4 || ![v4 length])
  {
    sub_10017D780();
LABEL_18:
    v5 = *v12;
    goto LABEL_10;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    *v12 = 136315650;
    *&v12[4] = "__WiFiSecurityRemovePasswordFromPasswordBackup_block_invoke";
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s: ssid %@ (%@)", v12, 0x20u);
  }

  v7 = +[NSMutableDictionary dictionary];
  [v7 setObject:kSecClassGenericPassword forKeyedSubscript:kSecClass];
  [v7 setObject:v5 forKeyedSubscript:kSecAttrAccount];
  [v7 setObject:@"AirPort" forKeyedSubscript:kSecAttrService];
  v8 = SecItemDelete(v7);
  if (v8)
  {
    v9 = v8;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 136315650;
      *&v12[4] = "__WiFiSecurityRemovePasswordFromPasswordBackup_block_invoke";
      v13 = 2112;
      v14 = v5;
      v15 = 1024;
      LODWORD(v16) = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s:[%@] error result %d", v12, 0x1Cu);
    }
  }

LABEL_10:

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    *v12 = 136315394;
    *&v12[4] = "__WiFiSecurityRemovePasswordFromPasswordBackup_block_invoke";
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s:[%@] finished removal", v12, 0x16u);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1000A7DF0()
{
  result = qword_100298660;
  if (!qword_100298660)
  {
    pthread_once(&stru_100297B98, sub_1000A7E38);
    return qword_100298660;
  }

  return result;
}

uint64_t sub_1000A7E38()
{
  qword_100298660 = _CFRuntimeRegisterClass();

  return notify_register_check("com.apple.wifi.manager.available", &dword_100297BA8);
}

uint64_t sub_1000A7E80(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    sp = -1431655766;
    if (bootstrap_check_in(bootstrap_port, *(a1 + 40), &sp))
    {
      return 0;
    }

    v5 = sub_100173D88(kCFAllocatorDefault, 60, sp, 0);
    *(a1 + 32) = v5;
    if (!v5)
    {
      return 0;
    }

    v6 = sub_10002ACC0(v5);
    sub_100099CA0(v6, a1);
    v3 = *(a1 + 32);
    v4 = 1;
  }

  sub_100099B78(v3);
  return v4;
}

uint64_t sub_1000A7F40(unsigned int a1, int a2, uint64_t a3, int a4, unsigned int *a5, _DWORD *a6, __int128 *a7)
{
  *a5 = 0;
  *a6 = 0;
  v14 = qword_100298660;
  if (!qword_100298660)
  {
    pthread_once(&stru_100297B98, sub_1000A7E38);
    v14 = qword_100298660;
  }

  v15 = sub_10000FF3C(a1, v14);
  if (v15)
  {
    v16 = v15;
    v17 = v15[2];
    v18 = a7[1];
    v26[0] = *a7;
    v26[1] = v18;
    v19 = sub_100059290(kCFAllocatorDefault, a2, v17, a3, 60, a4, v26);
    if (v19)
    {
      v20 = v19;
      if (sub_10014A8F0(v19))
      {
        sub_10005A2D4(v20, sub_1000A8130, v16);
        v21 = v16[3];
        sub_100059628(v20);
        sub_10002EEB0(v16[2], v20);
        v22 = sub_100059638(v20);
        *a5 = v22;
        sub_100099CA0(v22, v20);
        if (a2 == 1)
        {
          v23 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"Attached client %@ is background application", sub_10000715C(v20)}];
          }

          objc_autoreleasePoolPop(v23);
        }
      }

      else
      {
        v24 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s Client %@ has no entitlement", "kern_return_t _wifi_manager_open(mach_port_t, int, int, mach_port_t, mach_port_t *, int *, audit_token_t)", sub_10000715C(v20)}];
        }

        objc_autoreleasePoolPop(v24);
        *a6 = 1;
        CFRelease(v20);
      }
    }

    else
    {
      sub_1001875A4(a3);
    }

    CFRelease(v16);
  }

  else
  {
    sub_100187600();
  }

  return 0;
}

void sub_1000A8130(void *a1, uint64_t a2)
{
  v4 = sub_10000715C(a1);
  NSLog(@"%s: Client %@ terminated, cleanup state", "__WiFiServerClientTerminationCallback", v4);
  v5 = sub_100029A10(a1);
  sub_10001F1EC(v5, a1, 0, 2);
  sub_10007C1B8(v5, a1, 0);
  sub_10007C010(v5, a1);
  if ((sub_10005A2CC(a1) & 0x8000) != 0)
  {
    sub_10015983C(v5);
  }

  v6 = sub_100059640(a1);
  v7 = CFUUIDCreateString(kCFAllocatorDefault, v6);
  sub_10001EDD0(v5, v7);
  sub_10002ACC8(*(a2 + 16), a1);
  sub_10005A2D4(a1, 0, 0);
  if (v7)
  {
    CFRelease(v7);
  }

  if (a1)
  {

    CFRelease(a1);
  }
}

const __CFNumber *sub_1000A8250(uint64_t a1, int *a2)
{
  result = sub_10000A540(a1, @"ClientAddNetworkReason");
  if (result)
  {
    valuePtr = -1431655766;
    result = CFNumberGetValue(result, kCFNumberIntType, &valuePtr);
    if (result)
    {
      if (valuePtr == 30 || valuePtr == 1)
      {
        *a2 = valuePtr;
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

uint64_t sub_1000A82C4(unsigned int a1, UInt8 *a2, unsigned int a3, vm_offset_t *a4, mach_msg_type_number_t *a5)
{
  *a4 = 0;
  *a5 = 0;
  v10 = sub_10000FFF0();
  v11 = sub_10000FF3C(a1, v10);
  if (!v11)
  {
    v14 = [[NSNumber alloc] initWithBool:0];
    if (!v14)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v12 = v11;
  if ((sub_100010038(v11) & 1) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s Client %@ has no entitlement", "kern_return_t _wifi_manager_copy_test_params(mach_port_t, vm_offset_t, mach_msg_type_number_t, vm_offset_t *, mach_msg_type_number_t *)", sub_10000715C(v12)}];
    }

LABEL_5:
    objc_autoreleasePoolPop(v13);
    v14 = [[NSNumber alloc] initWithBool:0];
    v15 = v12;
LABEL_13:
    CFRelease(v15);
    goto LABEL_14;
  }

  v16 = sub_100029A10(v12);
  if (!v16)
  {
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: unable to find manager for client %@", "_wifi_manager_copy_test_params", sub_10000715C(v12)}];
    }

    goto LABEL_5;
  }

  v17 = v16;
  v18 = sub_100017AC4(a2, a3);
  v19 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Calling WiFiManagerSetTestParamsAndCopyResponse with request:%@", "_wifi_manager_copy_test_params", v18}];
  }

  objc_autoreleasePoolPop(v19);
  v20 = sub_1000845BC(v17, v18);
  v14 = v20;
  if (v20)
  {
    sub_100017C18(v20, a4, a5);
  }

  CFRelease(v12);
  if (v18)
  {
    v15 = v18;
    goto LABEL_13;
  }

LABEL_14:
  if (v14)
  {
LABEL_15:
    CFRelease(v14);
  }

LABEL_16:
  sub_100017CC0(a2, a3);
  return 0;
}

void sub_1000A84AC(const void *a1, const __CFData *a2, const __CFData *a3, const __CFData *a4, uint64_t a5, const void *a6)
{
  v12 = sub_10002CF28(a6);
  v13 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Async association request completed for %@ (%d)", sub_10000715C(a6), a5}];
  }

  objc_autoreleasePoolPop(v13);
  sub_1000329B4(a1);
  sub_100059968(a6, a1, a2, a3, a4, a5);
  sub_10002D0CC(a6, v12 & 0xFFFFFFFD);
  if (a6 && (v12 & 2) != 0)
  {

    CFRelease(a6);
  }
}

uint64_t sub_1000A85C0(unsigned int a1, UInt8 *a2, unsigned int a3, uint64_t a4, UInt8 *a5, unsigned int a6, _DWORD *a7)
{
  *a7 = 0;
  v14 = sub_10000FFF0();
  v15 = sub_10000FF3C(a1, v14);
  if (!v15)
  {
    *a7 = 74;
    goto LABEL_53;
  }

  v16 = v15;
  if (sub_100010038(v15))
  {
    v18 = sub_100017AC4(a2, a3);
    v19 = sub_100017AC4(a5, a6);
    v20 = v19;
    if (!v18 || a4 != 4 && !v19)
    {
      *a7 = 72;
      goto LABEL_48;
    }

    v48 = sub_100010040(v16, v18);
    if (v48)
    {
      theDict = v20;
      if (a4 == 4)
      {
        kdebug_trace();
        v21 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%@ starting AWDL", sub_10000715C(v16), v44}];
        }
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%@ starting network role (%d)", sub_10000715C(v16), a4}];
        }
      }

      objc_autoreleasePoolPop(v21);
      v22 = sub_10002CF28(v16);
      if ((v22 & 8) == 0)
      {
        v23 = v22;
        v45 = a6;
        v46 = a5;
        v24 = sub_100059668(v16);
        if (v24)
        {
          v25 = v24;
          if (CFArrayGetCount(v24))
          {
            if (CFArrayGetCount(v25) >= 1)
            {
              v26 = 0;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v25, v26);
                if (ValueAtIndex)
                {
                  v28 = ValueAtIndex;
                  if (sub_100034EEC(ValueAtIndex, @"networkRole") == a4)
                  {
                    break;
                  }
                }

                if (++v26 >= CFArrayGetCount(v25))
                {
                  goto LABEL_23;
                }
              }

              v43 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: client %@ has already brought up network of role %ld", "_wifi_device_start_network", sub_10000715C(v16), a4}];
              }

              objc_autoreleasePoolPop(v43);
              sub_10014ABC0(v16, v48, v18, 37, v28, 0);
              a5 = v46;
              v20 = theDict;
              a6 = v45;
LABEL_48:
              if (!v18)
              {
                goto LABEL_50;
              }

              goto LABEL_49;
            }
          }
        }

LABEL_23:
        sub_10002D0CC(v16, v23 | 8);
        v29 = v48;
        if ((a4 & 0xFFFFFFFE) == 2)
        {
          v30 = sub_1000102AC(v48, v18);
          if (v30)
          {
            v31 = v30;
            if (!sub_1000C7464(v48, 4))
            {
              v32 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"Enabling SoftAP. Now disconnecting from %@", sub_10000A878(v31)}];
              }

              objc_autoreleasePoolPop(v32);
              v29 = v48;
              sub_1000B9DC8(v48, v18, 1007, "_wifi_device_start_network", 3637);
            }

            CFRelease(v31);
          }

          else
          {
            sub_1000BCD2C(v48);
          }
        }

        v34 = sub_10000715C(v16);
        if (v34)
        {
          v20 = theDict;
          if (CFStringCompare(v34, @"matd", 1uLL) == kCFCompareEqualTo && theDict)
          {
            MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
            if (!MutableCopy)
            {
LABEL_47:
              a5 = v46;
              a6 = v45;
              goto LABEL_48;
            }

            v36 = MutableCopy;
            CFRelease(theDict);
            CFDictionarySetValue(v36, @"AP_MODE_MOVETOIOS_MIGRATION", [NSNumber numberWithBool:1]);
            Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, v36);
            CFRelease(v36);
            v38 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"MIGRATION:%s Request  Dict : %@ ", "_wifi_device_start_network", Copy}];
            }

            objc_autoreleasePoolPop(v38);
            v20 = Copy;
            v29 = v48;
          }
        }

        else
        {
          v20 = theDict;
        }

        v39 = sub_10000715C(v16);
        v40 = sub_1000CE36C(v29, v18, a4, v20, sub_1000A8B9C, v16, v39);
        *a7 = v40;
        if (!v40 || (sub_10002D0CC(v16, v23), !*a7))
        {
          if ((a4 & 0xFFFFFFFE) == 2)
          {
            v41 = sub_10000715C(v16);
            sub_10018A9A0(v29, 1, 0, 0, v41);
            sub_1000C71AC(v29, 1);
            sub_1000BBAE0(v29, 4, 1);
          }

          CFRetain(v16);
        }

        goto LABEL_47;
      }

      v33 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: client %@ has already requested hosted network.", "_wifi_device_start_network", sub_10000715C(v16)}];
      }

      objc_autoreleasePoolPop(v33);
      sub_10014ABC0(v16, v48, v18, 37, 0, 0);
    }

    else
    {
      *a7 = 74;
    }

LABEL_49:
    CFRelease(v18);
LABEL_50:
    if (v20)
    {
      CFRelease(v20);
    }

    goto LABEL_52;
  }

  v17 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s Client %@ has no entitlement", "kern_return_t _wifi_device_start_network(mach_port_t, vm_offset_t, mach_msg_type_number_t, int, vm_offset_t, mach_msg_type_number_t, int *)", sub_10000715C(v16)}];
  }

  objc_autoreleasePoolPop(v17);
  *a7 = 1;
LABEL_52:
  CFRelease(v16);
LABEL_53:
  sub_100017CC0(a2, a3);
  sub_100017CC0(a5, a6);
  return 0;
}

void sub_1000A8B9C(char *a1, const void *a2, uint64_t a3, const void *a4, const __CFData *a5, const void *a6)
{
  if (a6)
  {
    v12 = sub_10002CF28(a6) & 0xFFFFFFF7;
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_autoreleasePoolPush();
  if (a3)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"Failed to start network requested by %@, %d", sub_10000715C(a6), a3}];
    }

    objc_autoreleasePoolPop(v13);
    if (a4 && (sub_100034EEC(a4, @"networkRole") & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v14 = sub_10000715C(a6);
      sub_10018A9A0(a1, 0, 0, 0, v14);
      sub_1000C71AC(a1, 0);
      sub_1000BBAE0(a1, 4, 0);
    }
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"Started network %@ requested by %@", a4, sub_10000715C(a6)}];
    }

    objc_autoreleasePoolPop(v13);
    v15 = sub_100059668(a6);
    if (v15)
    {
      MutableCopy = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, v15);
      if (MutableCopy)
      {
        v17 = MutableCopy;
        CFArrayAppendValue(MutableCopy, a4);
        sub_1000596F0(a6, v17);
        CFRelease(v17);
      }

      else
      {
        sub_1000596F0(a6, 0);
      }
    }
  }

  sub_10002D0CC(a6, v12);
  sub_10014ABC0(a6, a1, a2, a3, a4, a5);
  if (a6)
  {

    CFRelease(a6);
  }
}

uint64_t sub_1000A8D9C(unsigned int a1, UInt8 *a2, unsigned int a3, UInt8 *a4, unsigned int a5, int *a6)
{
  *a6 = 0;
  v12 = sub_10000FFF0();
  v13 = sub_10000FF3C(a1, v12);
  if (!v13)
  {
    *a6 = 74;
    goto LABEL_30;
  }

  v14 = v13;
  if (sub_100010038(v13))
  {
    v16 = sub_100017AC4(a2, a3);
    v17 = sub_100017AC4(a4, a5);
    v18 = v17;
    v45 = a3;
    if (!v16 || !v17)
    {
      v22 = 0;
      *a6 = 72;
      if (!v16)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    v43 = a2;
    v44 = a5;
    v19 = sub_100010040(v14, v16);
    if (v19)
    {
      v20 = v19;
      v21 = sub_10000AD2C(kCFAllocatorDefault, v18);
      if (v21)
      {
        v22 = v21;
        v42 = a4;
        v23 = objc_autoreleasePoolPush();
        v24 = off_100298C40;
        if (off_100298C40)
        {
          v25 = sub_10000715C(v14);
          [v24 WFLog:3 message:{"%@ stopping network %@", v25, sub_10000A878(v22)}];
        }

        objc_autoreleasePoolPop(v23);
        v26 = sub_100059668(v14);
        if (v26 && (v27 = v26, CFArrayGetCount(v26) >= 1))
        {
          v28 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v27, v28);
            if (ValueAtIndex)
            {
              v30 = ValueAtIndex;
              if (CFEqual(ValueAtIndex, v22))
              {
                break;
              }
            }

            if (++v28 >= CFArrayGetCount(v27))
            {
              goto LABEL_18;
            }
          }

          v35 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            v40 = off_100298C40;
            context = v35;
            v39 = sub_10000A878(v30);
            [v40 WFLog:3 message:{"%s: removing network %@ for client %@ started network list.", "_wifi_device_stop_network", v39, sub_10000715C(v14)}];
            v35 = context;
          }

          objc_autoreleasePoolPop(v35);
          v31 = sub_100034EEC(v30, @"networkRole");
          MutableCopy = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, v27);
          if (MutableCopy)
          {
            v37 = MutableCopy;
            CFArrayRemoveValueAtIndex(MutableCopy, v28);
            sub_1000596F0(v14, v37);
            CFRelease(v37);
          }

          else
          {
            sub_1000596F0(v14, 0);
          }
        }

        else
        {
LABEL_18:
          v31 = 0;
        }

        v32 = sub_1000CEA50(v20, v16, v22, sub_1000A9150, v14);
        *a6 = v32;
        a4 = v42;
        if (!v32)
        {
          if ((v31 & 0xFFFFFFFFFFFFFFFELL) == 2)
          {
            v33 = sub_10000715C(v14);
            sub_10018A9A0(v20, 0, 0, 0, v33);
            sub_1000C71AC(v20, 0);
            sub_1000BBAE0(v20, 4, 0);
          }

          CFRetain(v14);
        }

        a5 = v44;
        a2 = v43;
        goto LABEL_24;
      }

      v38 = 72;
    }

    else
    {
      v38 = 74;
    }

    v22 = 0;
    *a6 = v38;
    a2 = v43;
LABEL_24:
    CFRelease(v16);
LABEL_25:
    if (v22)
    {
      CFRelease(v22);
    }

    a3 = v45;
    if (v18)
    {
      CFRelease(v18);
    }

    goto LABEL_29;
  }

  v15 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s Client %@ has no entitlement", "kern_return_t _wifi_device_stop_network(mach_port_t, vm_offset_t, mach_msg_type_number_t, vm_offset_t, mach_msg_type_number_t, int *)", sub_10000715C(v14)}];
  }

  objc_autoreleasePoolPop(v15);
  *a6 = 1;
LABEL_29:
  CFRelease(v14);
LABEL_30:
  sub_100017CC0(a2, a3);
  sub_100017CC0(a4, a5);
  return 0;
}

void sub_1000A9150(uint64_t a1, const void *a2, int a3, const __CFData *a4, const void *a5)
{
  sub_10014AD64(a5, a1, a2, a3, a4);
  if (a5)
  {

    CFRelease(a5);
  }
}

uint64_t sub_1000A91AC(unsigned int a1, UInt8 *a2, unsigned int a3, uint64_t a4, vm_offset_t *a5, mach_msg_type_number_t *a6, int *a7)
{
  *a5 = 0;
  *a6 = 0;
  *a7 = 0;
  v13 = sub_10000FFF0();
  v14 = sub_10000FF3C(a1, v13);
  if (!v14)
  {
    *a7 = 74;
    goto LABEL_12;
  }

  v15 = v14;
  if ((sub_100010038(v14) & 1) == 0)
  {
    v16 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s Client %@ has no entitlement", "kern_return_t _wifi_device_copy_interface_state_info(mach_port_t, vm_offset_t, mach_msg_type_number_t, int, vm_offset_t *, mach_msg_type_number_t *, int *)", sub_10000715C(v15)}];
    }

    objc_autoreleasePoolPop(v16);
    *a7 = 1;
    goto LABEL_11;
  }

  v17 = sub_100017AC4(a2, a3);
  if (v17)
  {
    v18 = v17;
    v19 = sub_100010040(v15, v17);
    if (v19)
    {
      v26 = sub_10018B398(v19, v18, v20, v21, v22, v23, v24, v25, v31, v32, SHIDWORD(v32), v33, v34, v35, v36, v37, v38, v39, v40, vars0, vars8);
      if (v26)
      {
        v27 = v26;
        sub_100017C18(v26, a5, a6);
        CFRelease(v18);
        v28 = v27;
LABEL_10:
        CFRelease(v28);
        goto LABEL_11;
      }

      v30 = 5;
    }

    else
    {
      v30 = 74;
    }

    *a7 = v30;
    v28 = v18;
    goto LABEL_10;
  }

LABEL_11:
  CFRelease(v15);
LABEL_12:
  sub_100017CC0(a2, a3);
  return 0;
}

uint64_t sub_1000A930C(unsigned int a1, UInt8 *a2, unsigned int a3, uint64_t a4, vm_offset_t *a5, mach_msg_type_number_t *a6, int *a7)
{
  *a5 = 0;
  *a6 = 0;
  *a7 = 0;
  v13 = sub_10000FFF0();
  v14 = sub_10000FF3C(a1, v13);
  if (!v14)
  {
    *a7 = 74;
    goto LABEL_28;
  }

  v15 = v14;
  if ((sub_100010038(v14) & 1) == 0)
  {
    v16 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s Client %@ has no entitlement", "kern_return_t _wifi_device_copy_networks(mach_port_t, vm_offset_t, mach_msg_type_number_t, int, vm_offset_t *, mach_msg_type_number_t *, int *)", sub_10000715C(v15)}];
    }

    objc_autoreleasePoolPop(v16);
    *a7 = 1;
    goto LABEL_27;
  }

  v17 = sub_100017AC4(a2, a3);
  if (v17)
  {
    v18 = v17;
    v19 = sub_100010040(v15, v17);
    if (v19)
    {
      v20 = sub_1000C8F84(v19);
      v21 = v20;
      if (v20)
      {
        v35 = a6;
        v36 = a3;
        v37 = a2;
        if (CFArrayGetCount(v20) >= 1)
        {
          for (i = 0; i < CFArrayGetCount(v21); ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v21, i);
            if (ValueAtIndex)
            {
              v24 = ValueAtIndex;
              v25 = sub_1000333E8(ValueAtIndex, @"networkRole");
              if ((v25 & 0xFFFFFFFE) == 2)
              {
                v26 = sub_100029A10(v15);
                v27 = sub_100089338(v26);
                v28 = objc_autoreleasePoolPush();
                if (v27)
                {
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: attaching interface data usage to %@", "_wifi_device_copy_networks", sub_10000A878(v24)}];
                  }

                  objc_autoreleasePoolPop(v28);
                  sub_10000AD34(v24, @"InterfaceDataUsageV1", v27);
                  CFRelease(v27);
                  continue;
                }

                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: no interface data usage for %@", "_wifi_device_copy_networks", sub_10000A878(v24), v34}];
                }
              }

              else
              {
                v29 = v25;
                v28 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: network %@ has invalid role (%d)", "_wifi_device_copy_networks", sub_10000A878(v24), v29}];
                }
              }

              objc_autoreleasePoolPop(v28);
            }
          }
        }

        v30 = sub_100035314(v21);
        if (v30)
        {
          v31 = v30;
          sub_100017C18(v30, a5, v35);
          CFRelease(v18);
          v18 = v31;
          a2 = v37;
          a3 = v36;
          goto LABEL_25;
        }

        v33 = 5;
        a2 = v37;
        a3 = v36;
      }

      else
      {
        v33 = 5;
      }
    }

    else
    {
      v21 = 0;
      v33 = 74;
    }

    *a7 = v33;
LABEL_25:
    CFRelease(v18);
    if (v21)
    {
      CFRelease(v21);
    }
  }

LABEL_27:
  CFRelease(v15);
LABEL_28:
  sub_100017CC0(a2, a3);
  return 0;
}

uint64_t sub_1000A961C(unsigned int a1, UInt8 *a2, unsigned int a3, uint64_t a4, _DWORD *a5)
{
  *a5 = 0;
  v9 = sub_10000FFF0();
  v10 = sub_10000FF3C(a1, v9);
  if (v10)
  {
    v11 = v10;
    if (sub_100010038(v10))
    {
      if (sub_100017AC4(a2, a3))
      {
        sub_100187658();
      }
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s Client %@ has no entitlement", "kern_return_t _wifi_device_set_wifi_direct_state(mach_port_t, vm_offset_t, mach_msg_type_number_t, int, int *)", sub_10000715C(v11)}];
      }

      objc_autoreleasePoolPop(v12);
      *a5 = 1;
    }

    CFRelease(v11);
  }

  else
  {
    *a5 = 74;
  }

  sub_100017CC0(a2, a3);
  return 0;
}

void sub_1000A9724(uint64_t a1, const void *a2, const __CFArray *a3, uint64_t a4, const void *a5)
{
  v10 = sub_10002CF28(a5);
  v11 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Gas request completed for %@ (%d)", sub_10000715C(a5), a4}];
  }

  objc_autoreleasePoolPop(v11);
  sub_100059B54(a5, a1, a2, a3, a4);
  sub_10002D0CC(a5, v10 & 0xFFFFFFFB);
  if (a5 && (v10 & 4) != 0)
  {

    CFRelease(a5);
  }
}

void sub_1000A981C(uint64_t a1, const void *a2, const void *a3, uint64_t a4, const void *a5)
{
  v10 = sub_10002CF28(a5);
  kdebug_trace();
  v11 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"Ranging request completed for %@ (%d)", sub_10000715C(a5), a4}];
  }

  objc_autoreleasePoolPop(v11);
  sub_100059E7C(a5, a1, a2, a3, a4);
  sub_10002D0CC(a5, v10 & 0xFFFFFFEF);
  if (a5 && (v10 & 0x10) != 0)
  {

    CFRelease(a5);
  }
}

uint64_t sub_1000A9930(unsigned int a1, unsigned __int8 a2, UInt8 *a3, unsigned int a4)
{
  kdebug_trace();
  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s is called\n", "_wifi_manager_set_incar_state"}];
  }

  objc_autoreleasePoolPop(v8);
  v9 = sub_10000FFF0();
  v10 = sub_10000FF3C(a1, v9);
  if (v10)
  {
    v11 = v10;
    if (sub_100010038(v10))
    {
      v13 = sub_100029A10(v11);
      if (v13)
      {
        v14 = v13;
        v15 = sub_100017AC4(a3, a4);
        sub_100085D7C(v14, a2, v15);
        if (v15)
        {
          CFRelease(v15);
        }
      }

      else
      {
        sub_100187760();
      }
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s Client %@ has no entitlement", "kern_return_t _wifi_manager_set_incar_state(mach_port_t, int, vm_offset_t, mach_msg_type_number_t)", sub_10000715C(v11)}];
      }

      objc_autoreleasePoolPop(v12);
    }

    CFRelease(v11);
  }

  else
  {
    sub_1001877CC();
  }

  sub_100017CC0(a3, a4);
  return 0;
}

uint64_t sub_1000A9A94(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = sub_10002ACC0(v2);
    sub_100099D00(v3);
    v2 = *(a1 + 32);
  }

  return sub_100099BE8(v2);
}

uint64_t sub_1000A9B18()
{

  return sub_10000715C(v0);
}

void sub_1000A9B40(const void *a1)
{

  sub_100017C18(a1, v2, v1);
}

id sub_1000A9B58()
{

  return [v0 WFLog:3 message:?];
}

id sub_1000A9B70()
{

  return [v0 WFLog:3 message:?];
}

CFComparisonResult sub_1000A9B88(uint64_t a1, const __CFString *a2)
{

  return CFStringCompare(v2, a2, 0);
}

id sub_1000A9BA0()
{

  return [v0 WFLog:4 message:?];
}

id sub_1000A9BB8()
{

  return [v0 WFLog:3 message:?];
}

uint64_t sub_1000A9BD0()
{

  return sub_10000FFF0();
}

void *sub_1000A9C58()
{

  return objc_autoreleasePoolPush();
}

CFPropertyListRef sub_1000A9C78(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15)
{

  return sub_100017AC4(v15, v16);
}

CFComparisonResult sub_1000A9C98(uint64_t a1, const __CFString *a2)
{

  return CFStringCompare(v2, a2, 0);
}

uint64_t sub_1000A9CB0()
{

  return sub_10000FFF0();
}

uint64_t sub_1000A9CC8(uint64_t a1, _DWORD *a2)
{
  *a2 = 1;

  return sub_10000FFF0();
}

uint64_t sub_1000A9CE0(unsigned int a1)
{
  if (a1 < 3)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A9CF0(uint64_t a1)
{
  if (a1 == 3)
  {
    return 2;
  }

  else
  {
    return a1 == 2;
  }
}

uint64_t sub_1000A9D08(int a1)
{
  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1000A9D24(unsigned int a1)
{
  if (a1 < 3)
  {
    return a1 + 1;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

uint64_t sub_1000A9D38(int a1)
{
  if ((a1 - 1) > 8)
  {
    return 0;
  }

  else
  {
    return qword_1001CE660[a1 - 1];
  }
}

void sub_1000A9ED8(id a1)
{
  qword_100298668 = objc_alloc_init(WiFiNetworkPathMonitor);

  _objc_release_x1();
}

void sub_1000AA020(uint64_t a1)
{
  v2 = [*(a1 + 32) pathMonitor];

  if (!v2)
  {
    v3 = nw_path_monitor_create_with_type(nw_interface_type_wifi);
    [*(a1 + 32) setPathMonitor:v3];

    v4 = [*(a1 + 32) pathMonitor];
    v5 = [*(a1 + 32) monitorQueue];
    nw_path_monitor_set_queue(v4, v5);

    v6 = [*(a1 + 32) pathMonitor];
    update_handler[0] = _NSConcreteStackBlock;
    update_handler[1] = 3221225472;
    update_handler[2] = sub_1000AA188;
    update_handler[3] = &unk_100261560;
    update_handler[4] = *(a1 + 32);
    nw_path_monitor_set_update_handler(v6, update_handler);

    v7 = [*(a1 + 32) pathMonitor];
    nw_path_monitor_start(v7);

    v8 = objc_autoreleasePoolPush();
    v9 = off_100298C40;
    if (off_100298C40)
    {
      v10 = [*(a1 + 32) monitorQueue];
      [v9 WFLog:3 message:{"Started monitoring network in queue: %s", dispatch_queue_get_label(v10)}];
    }

    objc_autoreleasePoolPop(v8);
  }
}

void sub_1000AA188(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  v8[0] = 0;
  v8[1] = 0;
  v9 = 0;
  v5 = 0;
  if (nw_path_get_ipv4_network_signature())
  {
    v5 = [NSData dataWithBytes:v10 length:20];
  }

  if (nw_path_get_ipv6_network_signature())
  {
    v6 = [NSData dataWithBytes:v8 length:20];
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:2 message:{"nw_path_get returned v4:%@ v6:%@", v5, v6}];
  }

  objc_autoreleasePoolPop(v7);
  ([*(a1 + 32) wifiDeviceCallBack])(v5, v6, objc_msgSend(*(a1 + 32), "wifiDeviceCallBackContext"));

  objc_autoreleasePoolPop(v4);
}

void sub_1000AA37C(uint64_t a1)
{
  v2 = [*(a1 + 32) pathMonitor];

  if (v2)
  {
    v3 = [*(a1 + 32) pathMonitor];
    nw_path_monitor_cancel(v3);

    [*(a1 + 32) setPathMonitor:0];
    v4 = objc_autoreleasePoolPush();
    v5 = off_100298C40;
    if (off_100298C40)
    {
      v6 = [*(a1 + 32) monitorQueue];
      [v5 WFLog:3 message:{"Stopped monitoring network in queue: %s", dispatch_queue_get_label(v6)}];
    }

    objc_autoreleasePoolPop(v4);
  }
}

id sub_1000AA84C@<X0>(int a1@<W8>)
{
  if (a1)
  {
    v4 = v2;
  }

  else
  {
    v4 = v1;
  }

  return sub_10010E234(v4);
}

const __CFString *sub_1000AA864(unsigned int a1)
{
  if (a1 > 0x14)
  {
    return @"Bogus";
  }

  else
  {
    return off_100261F90[a1];
  }
}

uint64_t sub_1000AA888(uint64_t a1, const void *a2, NSObject *a3, uint64_t a4)
{
  v7 = objc_autoreleasePoolPush();
  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: entering", "WiFiDeviceManagerCreate"}];
  }

  objc_autoreleasePoolPop(v8);
  if (!a2)
  {
    goto LABEL_112;
  }

  sub_10002DFD4();
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    goto LABEL_112;
  }

  v10 = Instance;
  bzero((Instance + 16), 0x23F8uLL);
  CFRetain(a2);
  *(v10 + 64) = a2;
  *(v10 + 248) = a4;
  *(v10 + 5672) = +[WiFiLocationManager sharedWiFiLocationManager];
  v11 = sub_1001AD6C8();
  *(v10 + 96) = v11;
  if (!v11)
  {
    goto LABEL_111;
  }

  *(v10 + 108) = 0;
  *(v10 + 104) = 0;
  v12 = sub_10004309C(kCFAllocatorDefault, a2, a3);
  *(v10 + 120) = v12;
  if (!v12)
  {
    goto LABEL_111;
  }

  if (+[WiFiAIRAgent sharedInstance])
  {
    [+[WiFiAIRAgent sharedInstance](WiFiAIRAgent setWiFiManagerQueue:"setWiFiManagerQueue:", a3];
  }

  v13 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a3);
  *(v10 + 320) = v13;
  if (!v13)
  {
    sub_100199030();
    goto LABEL_111;
  }

  dispatch_set_context(v13, v10);
  dispatch_source_set_event_handler_f(*(v10 + 320), sub_1000AC284);
  v14 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a3);
  *(v10 + 368) = v14;
  if (!v14)
  {
    sub_100198FC4();
    goto LABEL_111;
  }

  dispatch_set_context(v14, v10);
  dispatch_source_set_event_handler_f(*(v10 + 368), sub_1000AC48C);
  Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  *(v10 + 3552) = Mutable;
  if (!Mutable)
  {
    goto LABEL_111;
  }

  v16 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  *(v10 + 3584) = v16;
  if (!v16)
  {
    goto LABEL_111;
  }

  v17 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  *(v10 + 3576) = v17;
  if (!v17)
  {
    goto LABEL_111;
  }

  v18 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  *(v10 + 3600) = v18;
  if (!v18)
  {
    goto LABEL_111;
  }

  v19 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  *(v10 + 3592) = v19;
  if (!v19)
  {
    goto LABEL_111;
  }

  v20 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  *(v10 + 3624) = v20;
  if (!v20)
  {
    goto LABEL_111;
  }

  v21 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  *(v10 + 3616) = v21;
  if (!v21)
  {
    goto LABEL_111;
  }

  v22 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  *(v10 + 3608) = v22;
  if (!v22)
  {
    goto LABEL_111;
  }

  v23 = [[WiFiTimeDeferredNetworksAJManager alloc] initWithArgs:v10];
  *(v10 + 3704) = v23;
  [(WiFiTimeDeferredNetworksAJManager *)v23 setDeferIntervalSecs:60.0];
  [*(v10 + 3704) setNumDaysSinceAssocOverrideDeferral:2];
  v24 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  *(v10 + 3384) = v24;
  if (!v24)
  {
    goto LABEL_111;
  }

  *(v10 + 3392) = 0;
  v25 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  *(v10 + 3672) = v25;
  if (!v25)
  {
    goto LABEL_111;
  }

  v26 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  *(v10 + 3680) = v26;
  if (!v26)
  {
    goto LABEL_111;
  }

  v27 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  *(v10 + 3632) = v27;
  if (!v27)
  {
    goto LABEL_111;
  }

  v28 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  *(v10 + 3640) = v28;
  if (!v28)
  {
    goto LABEL_111;
  }

  v29 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  *(v10 + 3688) = v29;
  if (!v29)
  {
    goto LABEL_111;
  }

  v30 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  *(v10 + 3344) = v30;
  if (!v30)
  {
    goto LABEL_111;
  }

  v31 = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  *(v10 + 3376) = v31;
  if (!v31)
  {
    goto LABEL_111;
  }

  v32 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  *(v10 + 1160) = v32;
  if (!v32)
  {
    goto LABEL_111;
  }

  v33 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  *(v10 + 280) = v33;
  if (!v33)
  {
    goto LABEL_111;
  }

  v34 = sub_1000AC570(dword_100297BAC, 3);
  *(v10 + 5416) = v34;
  if (!v34)
  {
    goto LABEL_111;
  }

  v35 = sub_1000AC570(dword_100297BB8, 2);
  *(v10 + 5424) = v35;
  if (!v35)
  {
    goto LABEL_111;
  }

  v36 = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  *(v10 + 3648) = v36;
  if (!v36)
  {
    goto LABEL_111;
  }

  v37 = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  *(v10 + 3656) = v37;
  if (!v37)
  {
    goto LABEL_111;
  }

  v38 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  *(v10 + 384) = v38;
  if (!v38)
  {
    goto LABEL_111;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(kCFAllocatorDefault, @"Preferences SpringBoard Carousel WiFiPickerExtens Setup budd sharingd demod BundledIntentHandler SiriViewService assistantd assistant_service Siri SettingsIntentExtension NanoSettings PineBoard TVSettings SoundBoard RealityControlCenter MuseBuddyApp mobilewifitool WirelessStress coreautomationd wifiutil NanoWiFiViewService ATKWiFiFramework WiFiViewService hQT XCTestInternalAngel HPSetup AirPlaySenderUIApp TVSetup deviceaccessd AccessorySetupUI Setup RealityCoverSheet", @" ");
  *(v10 + 4984) = ArrayBySeparatingStrings;
  if (!ArrayBySeparatingStrings)
  {
    goto LABEL_111;
  }

  *(v10 + 3536) = 1;
  *(v10 + 3540) = 0;
  sub_10006088C(a2, sub_1000AC61C, v10);
  sub_100060898(a2, sub_1000AC61C, v10);
  sub_1000607E4(a2, sub_1000AD004, v10);
  sub_1000607F0(a2, sub_1000AD210, v10);
  sub_1000607FC(a2, sub_1000AF558, v10);
  sub_100060814(a2, &sub_1000AF578, v10);
  sub_100060808(a2, sub_100187BB4, v10);
  sub_100060844(a2, sub_1000AF6F4, v10);
  sub_100060850(a2, sub_100036348, v10);
  sub_10006085C(a2, sub_1000AFCD0, v10);
  sub_100060868(a2, sub_1000B0150, v10);
  sub_100060874(a2, sub_1000B027C, v10);
  sub_100060880(a2, sub_1000B02D8, v10);
  sub_1000608A4(a2, sub_1000B048C, v10);
  sub_1000608E0(a2, sub_1000B07EC, v10);
  sub_1000608C8(a2, sub_1000B0974, v10);
  sub_1000608D4(a2, sub_1000B0DFC, v10);
  sub_100060820(a2, sub_1000B133C, v10);
  sub_1000608EC(a2, sub_1000B169C, v10);
  sub_1000608F8(a2, sub_1000B16BC, v10);
  sub_100060904(a2, sub_1000115B0, v10);
  sub_100060910(a2, sub_100024C34, v10);
  sub_10006091C(a2, sub_100020E68, v10);
  sub_100060928(a2, sub_1000B16DC, v10);
  sub_100060934(a2, sub_1000B1BB4, v10);
  sub_100060940(a2, sub_1000B1BD4, v10);
  sub_100060958(a2, sub_100014B54, v10);
  sub_100060964(a2, sub_100033768, v10);
  sub_10006094C(a2, sub_10000EDC4, v10);
  v90[0] = _NSConcreteStackBlock;
  v90[1] = 3221225472;
  v90[2] = sub_1000B1BF4;
  v90[3] = &unk_10025F618;
  v90[4] = v10;
  [+[WiFiUsageMonitor sharedInstance](WiFiUsageMonitor setFaultEventHandler:"setFaultEventHandler:", v90];
  sub_100060970(a2, sub_100187E60, v10);
  sub_1000607D8(a2, sub_1000B1D68, v10);
  sub_1000608B0(a2, sub_1000B1D88, v10);
  sub_1000608BC(a2, sub_1000B1DA8, v10);
  sub_10006097C(a2, sub_1000B1DC8, v10);
  sub_100060988(a2, sub_1000B20E8, v10);
  sub_100060994(a2, sub_1000B2C28, v10);
  sub_100044690(*(v10 + 120), sub_1000B2C3C, v10);
  sub_1000446C4(*(v10 + 120), sub_1000B2E6C, v10);
  sub_1000609A0(a2, sub_1000B2E74, v10);
  sub_1000609AC(a2, sub_1000B2FF8, v10);
  sub_1000609B8(a2, sub_1000B3174, v10);
  sub_1000609C4(a2, sub_1000B3194, v10);
  sub_1000609D0(a2, sub_1000B323C, v10);
  sub_1000609DC(a2, sub_1000B3308, v10);
  sub_1000609E8(a2, sub_1000B381C, v10);
  sub_1000609F4(a2, sub_10002983C, v10);
  sub_100060A00(a2, sub_100029934, v10);
  sub_100060A0C(a2, sub_1000B3DD8, v10);
  sub_100060A58(a2, sub_1000B3DF4, v10);
  sub_10006082C(a2, sub_1000B3F64, v10);
  sub_100060838(a2, sub_1000B4144, v10);
  sub_100060A64(a2, sub_1000B41B4, v10);
  sub_100060A70(a2, sub_1001881BC, v10);
  sub_100060A7C(a2, sub_100188298, v10);
  sub_100060A88(a2, sub_1000B45C8, v10);
  sub_100060A94(a2, sub_1000B4B2C, v10);
  sub_100060AA0(a2, sub_1000B4BAC, v10);
  sub_100060AAC(a2, sub_100188578, v10);
  sub_100060AB8(a2, sub_1000B4BD4, v10);
  sub_100060ADC(a2, sub_1000B4D24, v10);
  sub_100060AC4(a2, sub_1000B4E50, v10);
  sub_100060AD0(a2, sub_1000B4FE8, v10);
  sub_100060AE8(a2, sub_1000B5054, v10);
  sub_100060B0C(a2, sub_1000B51C4, v10);
  sub_100060B24(a2, sub_1000B51E4, v10);
  sub_100060B18(a2, sub_1000B5204, v10);
  sub_100060B3C(a2, sub_1000B5238, v10);
  sub_100060B54(a2, sub_1000B5254, v10);
  sub_1000658A0(*(v10 + 64), sub_1000B5490, v10);
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, v10, sub_1000B54AC, @"com.apple.wifid.wifiroammanagerroamnotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  sub_100060B30(a2, sub_1000B57AC, v10);
  sub_100060B48(a2, sub_1000B57E4, v10);
  sub_100060BA4(a2, sub_1000B57F8, v10);
  CFNotificationCenterAddObserver(LocalCenter, v10, sub_1000B5810, @"WiFiChipResetRequested", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  *(v10 + 4992) = 0;
  *(v10 + 5408) = 0;
  *(v10 + 5410) = 0;
  *(v10 + 5520) = 0;
  *(v10 + 5527) = 0;
  *(v10 + 5296) = CFAbsoluteTimeGetCurrent() + 315360000.0;
  v41 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a3);
  *(v10 + 5288) = v41;
  if (!v41)
  {
    sub_100198F64();
    goto LABEL_111;
  }

  dispatch_set_context(v41, v10);
  dispatch_source_set_event_handler_f(*(v10 + 5288), sub_1000B5854);
  *(v10 + 5280) = 0;
  *(v10 + 6864) = 0x4072C00000000000;
  v42 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a3);
  *(v10 + 5368) = v42;
  if (!v42)
  {
    sub_100198F04();
    goto LABEL_111;
  }

  dispatch_set_context(v42, v10);
  dispatch_source_set_event_handler_f(*(v10 + 5368), sub_1000B5C4C);
  v43 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a3);
  *(v10 + 5584) = v43;
  if (!v43)
  {
    sub_100198EA4();
    goto LABEL_111;
  }

  dispatch_set_context(v43, v10);
  dispatch_source_set_event_handler_f(*(v10 + 5584), sub_1000B5D04);
  *(v10 + 5592) = 0;
  v44 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a3);
  *(v10 + 8704) = v44;
  if (!v44)
  {
    sub_100198E44();
    goto LABEL_111;
  }

  dispatch_set_context(v44, v10);
  dispatch_source_set_event_handler_f(*(v10 + 8704), sub_1000B5D70);
  v45 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a3);
  *(v10 + 8744) = v45;
  if (!v45)
  {
    sub_100198DE4();
    goto LABEL_111;
  }

  dispatch_set_context(v45, v10);
  dispatch_source_set_event_handler_f(*(v10 + 8744), sub_1000B5DE8);
  v46 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a3);
  *(v10 + 1040) = v46;
  if (!v46)
  {
    sub_100198D84();
    goto LABEL_111;
  }

  dispatch_set_context(v46, v10);
  dispatch_source_set_event_handler_f(*(v10 + 1040), sub_1000B5E60);
  v47 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a3);
  *(v10 + 9208) = v47;
  if (!v47)
  {
    sub_100198D24();
    goto LABEL_111;
  }

  dispatch_set_context(v47, v10);
  dispatch_source_set_event_handler_f(*(v10 + 9208), sub_1000B5EEC);
  v48 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a3);
  *(v10 + 1096) = v48;
  if (!v48)
  {
    sub_100198CC4();
    goto LABEL_111;
  }

  dispatch_set_context(v48, v10);
  dispatch_source_set_event_handler_f(*(v10 + 1096), sub_1000B5F64);
  v49 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a3);
  *(v10 + 5600) = v49;
  if (!v49)
  {
    sub_100198C64();
    goto LABEL_111;
  }

  dispatch_set_context(v49, v10);
  dispatch_source_set_event_handler_f(*(v10 + 5600), sub_1000B6550);
  *(v10 + 5624) = 0;
  *(v10 + 5608) = 0u;
  v50 = CFUUIDCreate(kCFAllocatorDefault);
  if (v50)
  {
    v51 = v50;
    *(v10 + 5560) = CFUUIDCreateString(kCFAllocatorDefault, v50);
    CFRelease(v51);
  }

  *(v10 + 3352) = 0;
  *(v10 + 5648) = 0u;
  *(v10 + 5680) = 1;
  *(v10 + 34) = 0;
  *(v10 + 6272) = 0;
  *(v10 + 6280) = 0;
  *(v10 + 36) = 257;
  *(v10 + 6248) = 0;
  bzero((v10 + 5688), 0x230uLL);
  *(v10 + 38) = 1;
  *(v10 + 6224) = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  *(v10 + 6120) = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  *(v10 + 6128) = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  *(v10 + 1224) = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v52 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *(v10 + 3728) = v52;
  if (!v52)
  {
    goto LABEL_111;
  }

  v53 = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  *(v10 + 5320) = v53;
  if (!v53)
  {
    goto LABEL_111;
  }

  v54 = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  *(v10 + 5328) = v54;
  if (!v54)
  {
    goto LABEL_111;
  }

  v55 = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  *(v10 + 5336) = v55;
  if (!v55)
  {
    goto LABEL_111;
  }

  v56 = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  *(v10 + 5344) = v56;
  if (!v56)
  {
    goto LABEL_111;
  }

  v57 = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  *(v10 + 5352) = v57;
  if (!v57)
  {
    goto LABEL_111;
  }

  v58 = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  *(v10 + 5360) = v58;
  if (!v58)
  {
    goto LABEL_111;
  }

  *(v10 + 6528) = 0;
  *(v10 + 6512) = 0u;
  *(v10 + 6496) = 0u;
  *(v10 + 6480) = 0u;
  *(v10 + 6464) = 0u;
  *(v10 + 6448) = 0u;
  *(v10 + 6432) = 0u;
  *(v10 + 6416) = 0u;
  *(v10 + 6400) = 0u;
  *(v10 + 6384) = 0u;
  *(v10 + 6368) = 0u;
  *(v10 + 6352) = 0u;
  if (_os_feature_enabled_impl())
  {
    sub_100009664(*(v10 + 64));
    v59 = [[CWFNetworkDenyList alloc] initWithDenyListDeviceProfile:1];
    [v59 setEnabled:1];
    v93[0] = _NSConcreteStackBlock;
    v93[1] = 3221225472;
    v93[2] = sub_1000E1738;
    v93[3] = &unk_1002618F0;
    v93[4] = v10;
    [v59 setBatteryInfoHandler:v93];
    v92[0] = _NSConcreteStackBlock;
    v92[1] = 3221225472;
    v92[2] = sub_1000E1840;
    v92[3] = &unk_100261910;
    v92[4] = v10;
    [v59 setIsUserModeInteractiveHandler:v92];
    v91[0] = _NSConcreteStackBlock;
    v91[1] = 3221225472;
    v91[2] = sub_1001908AC;
    v91[3] = &unk_100261930;
    v91[4] = v10;
    [v59 setDenyListDidUpdateHandler:v91];
    *(v10 + 6720) = v59;
    if (!v59)
    {
      goto LABEL_111;
    }
  }

  else
  {
    v60 = [[WiFiNetworkDenyListManager alloc] initWithArgs:v10 interfaceName:sub_100009664(*(v10 + 64))];
    *(v10 + 6712) = v60;
    if (!v60)
    {
      goto LABEL_111;
    }

    v61 = [(WiFiNetworkDenyListManager *)v60 networkDenyList];
    *(v10 + 6720) = v61;
    if (!v61)
    {
      goto LABEL_111;
    }
  }

  *(v10 + 6728) = 0;
  *(v10 + 6680) = -1;
  *(v10 + 72) = MGGetSInt32Answer();
  *(v10 + 80) = MGGetProductType();
  *(v10 + 88) = MGGetBoolAnswer();
  if (*(v10 + 72) == 7)
  {
    v62 = 1;
  }

  else
  {
    v62 = _os_feature_enabled_impl();
  }

  *(v10 + 6704) = v62;
  *(v10 + 6728) = 0;
  *(v10 + 6784) = 0;
  v63 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *(v10 + 7160) = v63;
  if (!v63)
  {
    goto LABEL_111;
  }

  v64 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a3);
  *(v10 + 6888) = v64;
  if (!v64)
  {
    sub_100198C04();
    goto LABEL_111;
  }

  dispatch_set_context(v64, v10);
  dispatch_source_set_event_handler_f(*(v10 + 6888), sub_1000B65C8);
  *(v10 + 6904) = CFAbsoluteTimeGetCurrent() + 315360000.0;
  v65 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a3);
  *(v10 + 6896) = v65;
  if (!v65)
  {
    sub_100198BA4();
    goto LABEL_111;
  }

  dispatch_set_context(v65, v10);
  dispatch_source_set_event_handler_f(*(v10 + 6896), sub_1000B6814);
  *(v10 + 5448) = 0xE1000000384;
  *(v10 + 5456) = 14400;
  if (_os_feature_enabled_impl())
  {
    v66 = objc_alloc_init(WiFiHotspotNANInterface);
    *(v10 + 6832) = v66;
    if (!v66)
    {
      v67 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"ERROR: Couldn't create wifiHotspotNANInterfaceManager"];
      }

      objc_autoreleasePoolPop(v67);
    }

    *(v10 + 6840) = 0;
  }

  *(v10 + 6856) = -536870352;
  v68 = objc_alloc_init(WiFiHotspotInterface);
  *(v10 + 6824) = v68;
  if (v68)
  {
    v69 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    *(v10 + 6920) = v69;
    if (!v69)
    {
      goto LABEL_111;
    }

    *(v10 + 6977) = 0;
    *(v10 + 6880) = 0;
    *(v10 + 7048) = 0;
    *(v10 + 7024) = 0u;
    v70 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    *(v10 + 6992) = v70;
    if (!v70)
    {
      goto LABEL_111;
    }

    v71 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    *(v10 + 7000) = v71;
    if (!v71)
    {
      goto LABEL_111;
    }

    v72 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    *(v10 + 7008) = v72;
    if (!v72)
    {
      goto LABEL_111;
    }

    v73 = objc_alloc_init(NSMutableArray);
    *(v10 + 7016) = v73;
    if (!v73)
    {
      goto LABEL_111;
    }

    *(v10 + 6984) = 0;
    *(v10 + 6944) = vdupq_n_s64(0x405E000000000000uLL);
    *(v10 + 6968) = 2;
    *(v10 + 6960) = 0x300000002;
    *(v10 + 7104) = 0;
    *(v10 + 7056) = 0;
    *(v10 + 7064) = 0;
    *(v10 + 7072) = 0u;
    *(v10 + 7088) = 0;
    *(v10 + 7112) = 0u;
    v74 = *(v10 + 6824);
    v89[0] = _NSConcreteStackBlock;
    v89[1] = 3221225472;
    v89[2] = sub_1000B69D0;
    v89[3] = &unk_100261588;
    v89[4] = v10;
    [v74 registerHotspotInterfaceUpdateNetworkCallback:v89 withCallbackContext:v10];
  }

  *(v10 + 7153) = 0;
  *(v10 + 7139) = MGGetBoolAnswer();
  *(v10 + 7140) = 0;
  v75 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  *(v10 + 3752) = v75;
  if (!v75 || (v76 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks), (*(v10 + 3784) = v76) == 0))
  {
LABEL_111:
    CFRelease(v10);
LABEL_112:
    v86 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: exiting, Error: failed to create deviceManager ref", "WiFiDeviceManagerCreate"}];
    }

    v10 = 0;
    goto LABEL_93;
  }

  *(v10 + 40) = 0;
  *(v10 + 3915) = 0;
  *(v10 + 7424) = 0;
  *(v10 + 44) = 0;
  *(v10 + 47) = 0;
  v77 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a3);
  *(v10 + 7432) = v77;
  if (!v77 || (dispatch_set_context(v77, v10), dispatch_source_set_event_handler_f(*(v10 + 7432), sub_1000B8D04), *(v10 + 7448) = 0, v78 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a3), (*(v10 + 7456) = v78) == 0))
  {
    sub_100198B44();
    goto LABEL_111;
  }

  dispatch_set_context(v78, v10);
  dispatch_source_set_event_handler_f(*(v10 + 7456), sub_1000B8D8C);
  v79 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a3);
  *(v10 + 7312) = v79;
  if (!v79)
  {
    sub_100198AE4();
    goto LABEL_111;
  }

  dispatch_set_context(v79, v10);
  dispatch_source_set_event_handler_f(*(v10 + 7312), sub_1000B8E04);
  v80 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a3);
  *(v10 + 7352) = v80;
  if (!v80)
  {
    sub_100198A84();
    goto LABEL_111;
  }

  dispatch_set_context(v80, v10);
  dispatch_source_set_event_handler_f(*(v10 + 7352), sub_1000B8F20);
  v81 = *(v10 + 9080);
  if (v81 || (v81 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a3), (*(v10 + 9080) = v81) != 0))
  {
    dispatch_set_context(v81, v10);
    dispatch_source_set_event_handler_f(*(v10 + 9080), sub_10018880C);
    dispatch_activate(*(v10 + 9080));
  }

  v82 = *(v10 + 3816);
  if (v82 || (v82 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a3), (*(v10 + 3816) = v82) != 0))
  {
    dispatch_set_context(v82, v10);
    dispatch_source_set_event_handler_f(*(v10 + 3816), sub_100188908);
    dispatch_activate(*(v10 + 3816));
  }

  *(v10 + 3776) = 0;
  *(v10 + 3736) = byte_100298C7A == 0;
  *(v10 + 3760) = MGCopyAnswer();
  *(v10 + 7504) = 0;
  *(v10 + 7496) = 0;
  *(v10 + 7416) = CFAbsoluteTimeGetCurrent();
  *(v10 + 7408) = 0;
  *(v10 + 704) = 0;
  *(v10 + 1128) = 0u;
  *(v10 + 5568) = 0;
  *(v10 + 5572) = 0;
  if (objc_opt_class())
  {
    *(v10 + 976) = objc_alloc_init(CARConnectionTimeStore);
  }

  v83 = objc_alloc_init(WiFiScanObserver);
  *(v10 + 6744) = v83;
  v84 = objc_alloc_init(WiFiSettlementConfiguration);
  v85 = [[WiFiSettlementObserver alloc] initWithScanProvider:v83 configuration:v84];
  *(v10 + 9088) = v85;
  v88[0] = _NSConcreteStackBlock;
  v88[1] = 3221225472;
  v88[2] = sub_1000B9020;
  v88[3] = &unk_1002615A8;
  v88[4] = v10;
  [v85 addSettlementCallback:v88];

  *(v10 + 9185) = 0;
  sub_1000196FC(v10);
  v86 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: exiting", "WiFiDeviceManagerCreate"}];
  }

LABEL_93:
  objc_autoreleasePoolPop(v86);
  objc_autoreleasePoolPop(v7);
  return v10;
}

void sub_1000AC284(uint64_t a1)
{
  v2 = *(a1 + 3336);
  v3 = objc_autoreleasePoolPush();
  if (v2 == 1)
  {
    if (off_100298C40)
    {
      v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v6 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v3);
    *(a1 + 3336) = 0;
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
      sub_1000BD584(a1, 0, "__WiFiDeviceManagerRetryTimerCallback");
    }
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"Attempting auto association retry but auto join state already is %@.", sub_1000AA864(*(a1 + 3336))}];
    }

    objc_autoreleasePoolPop(v3);
  }
}

void sub_1000AC48C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"Auto-join deferral expired. Triggering auto-join."];
  }

  objc_autoreleasePoolPop(v2);
  *(a1 + 360) = 0;
  *(a1 + 376) = 0;
  *(a1 + 192) = 12;
  if (_os_feature_enabled_impl())
  {

    sub_100019814(a1, 0xEuLL);
  }

  else
  {
    [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];

    sub_1000BD310(a1, 2, "__WiFiDeviceManagerDeferralTimerCallback");
  }
}

__CFArray *sub_1000AC570(char *a1, CFIndex capacity)
{
  v2 = capacity;
  v4 = capacity;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, capacity, &kCFTypeArrayCallBacks);
  if (v2 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, a1);
      if (v7)
      {
        v8 = v7;
        CFArraySetValueAtIndex(Mutable, v6, v7);
        CFRelease(v8);
      }

      ++v6;
      a1 += 4;
    }

    while (v4 != v6);
  }

  return Mutable;
}

void sub_1000AC61C(uint64_t a1, const void *a2, uint64_t a3)
{
  if (a3)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = sub_100007D90(a3, a2, 1);
    if (!v7)
    {
LABEL_50:
      objc_autoreleasePoolPop(v6);
      return;
    }

    v8 = v7;
    sub_1000D23FC(a3, v7, 0);
    if (sub_10005A910(*(a3 + 64)))
    {
      v9 = sub_10005A654(*(a3 + 64));
      v10 = sub_100006F88(a1);
      if (v9)
      {
        sub_100006F94(a1, v10, 482, 0, kCFBooleanTrue);
        v11 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v12 = sub_100009664(*(a3 + 64));
          v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 136446210;
            *(&buf + 4) = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v11);
      }

      else
      {
        sub_100006F94(a1, v10, 482, 0, kCFBooleanFalse);
        v16 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v17 = sub_100009664(*(a3 + 64));
          v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 136446210;
            *(&buf + 4) = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%{public}s", &buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v16);
        if (*(a3 + 7480))
        {
          v19 = sub_10005A8C8();
          v20 = sub_10005A8EC();
          v21 = +[NSMutableDictionary dictionary];
          [v21 setObject:v19 forKeyedSubscript:@"ipv4PrimaryIf"];
          [v21 setObject:v20 forKeyedSubscript:@"ipv6PrimaryIf"];
          v22 = &stru_1002680F8;
          if (v19)
          {
            v23 = v19;
          }

          else
          {
            v23 = &stru_1002680F8;
          }

          if (v20)
          {
            v22 = v20;
          }

          [v21 setObject:+[NSString stringWithFormat:](NSString forKeyedSubscript:{"stringWithFormat:", @"ipv4: %@, ipv6: %@", v23, v22), @"context"}];
          v58 = v21;
          [*(a3 + 7480) addFaultEvent:35 forInterface:sub_100009664(*(a3 + 64)) event:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v58, 1)}];
          if (v19)
          {
            CFRelease(v19);
          }

          if (v20)
          {
            CFRelease(v20);
          }
        }
      }

LABEL_28:
      v24 = 0;
LABEL_29:
      v25 = sub_10000AA64(*(a3 + 3752), v8);
      v26 = v24 ^ 1;
      if (!a1)
      {
        v26 = 1;
      }

      if ((v26 & 1) == 0)
      {
        v27 = v25;
        if (sub_10015056C(a1, v8))
        {
          v28 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation : Network <%@> falling back to physical Mac since Interface not routable.", "__WiFiDeviceManagerPrimaryTimeoutCallback", sub_10000A878(v8)}];
          }

          objc_autoreleasePoolPop(v28);
          if (*(a3 + 3736))
          {
            v29 = *(a3 + 4760);
            if (v29)
            {
              v29(a3, v8, *(a3 + 4768));
            }

            if (v27)
            {
              *(&buf + 4) = 0xAAAAAAAAAAAAAAAALL;
              LODWORD(buf) = 3;
              sub_100147640(v27, &buf);
              sub_1001473EC(&buf);
            }

            v30 = *(a3 + 7480);
            if (v30)
            {
              [v30 addFaultEvent:11 forInterface:a2];
            }
          }
        }

        else if (v27)
        {
          v54 = 0xAAAAAAAAAAAAAAAALL;
          v53 = 6;
          sub_100147640(v27, &v53);
          sub_1001473EC(&v53);
          v31 = objc_autoreleasePoolPush();
          v32 = off_100298C40;
          if (off_100298C40)
          {
            v33 = sub_10000A878(v8);
            [v32 WFLog:3 message:{"%s: WFMacRandomisation : Network <%@> failed to get routable interface. PrivateMac used : <0 = used : %d>", "__WiFiDeviceManagerPrimaryTimeoutCallback", v33, v54}];
          }

          objc_autoreleasePoolPop(v31);
          v34 = sub_10000A540(v27, @"PRIVATE_MAC_ADDRESS");
          if (v34)
          {
            TypeID = CFDictionaryGetTypeID();
            if (TypeID == CFGetTypeID(v34))
            {
              Value = CFDictionaryGetValue(v34, @"PRIVATE_MAC_ADDRESS_VALUE");
              if (sub_10000ABFC(Value))
              {
                if (!sub_10000C894(v8) && *(a3 + 4792))
                {
                  if (*(a3 + 240))
                  {
                    *&buf = 0;
                    *(&buf + 1) = &buf;
                    v56 = 0x2020000000;
                    v57 = 0;
                    v48 = CFRetain(v27);
                    *(*(&buf + 1) + 24) = v48;
                    CFRetain(a3);
                    v49 = *(a3 + 240);
                    block[0] = _NSConcreteStackBlock;
                    block[1] = 3221225472;
                    block[2] = sub_1000E186C;
                    block[3] = &unk_10025EFD8;
                    block[4] = &buf;
                    block[5] = a3;
                    dispatch_async(v49, block);
                    _Block_object_dispose(&buf, 8);
                  }

                  else
                  {
                    v50 = objc_autoreleasePoolPush();
                    if (off_100298C40)
                    {
                      [off_100298C40 WFLog:4 message:{"%s: null queue.", "__WiFiDeviceManagerPrimaryTimeoutCallback"}];
                    }

                    objc_autoreleasePoolPop(v50);
                  }
                }
              }
            }
          }
        }
      }

      CFRelease(v8);
      goto LABEL_50;
    }

    v14 = *(a3 + 7480);
    if (v14)
    {
      [v14 addFaultEvent:13 forInterface:sub_100009664(*(a3 + 64))];
    }

    if (sub_10000C894(v8))
    {
      v15 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"Ad-Hoc Network. Preventing disassociation"];
      }

      objc_autoreleasePoolPop(v15);
      goto LABEL_28;
    }

    if (*(a3 + 3336) != 14)
    {
      v51 = sub_10000A540(v8, @"BSSID");
      v37 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v38 = sub_100009664(*(a3 + 64));
        v39 = sub_10005A910(*(a3 + 64)) ? "primary" : "routable";
        v40 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 136446210;
          *(&buf + 4) = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%{public}s", &buf, 0xCu);
        }
      }

      objc_autoreleasePoolPop(v37);
      if (sub_100009730(v8))
      {
        sub_100062654(*(a3 + 64), v8, 0);
      }

      else
      {
        v45 = sub_1000A01EC(v8, 1);
        v46 = sub_1000A01EC(v8, 0);
        if (!v46 || v45 && CFDateCompare(v45, v46, 0) == kCFCompareGreaterThan)
        {
          v47 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:"Network was intentionally joined.  Preventing disassociation."];
          }

          objc_autoreleasePoolPop(v47);
          goto LABEL_76;
        }
      }

      sub_1000B9DC8(a3, a2, 1005, "__WiFiDeviceManagerPrimaryTimeoutCallback", 8119);
      if (sub_10009DB7C(v8) && !sub_100009730(v8) && (sub_100034EEC(v8, @"WEP_AUTH_Flags") & 4) != 0)
      {
        v41 = sub_10001A9BC(*(a3 + 3560));
        if (([*(a3 + 6720) isNetworkInDenyListedState:1 scanResult:v41] & 1) == 0)
        {
          v42 = sub_1000D62B4(a3, a2, 1, 1, v8, 0);
          *(a3 + 3336) = v42;
          if (v42 == 14)
          {
            v43 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"Dispatched password panel for open auth WEP network: %@", sub_10000A878(v8)}];
            }

            objc_autoreleasePoolPop(v43);
          }
        }

        v44 = sub_1000BE2EC(a3, 1, 0, v51, 5);
        [*(a3 + 6720) setNetworkDenyListInfo:v44 forScanResult:v41];
      }
    }

LABEL_76:
    v24 = 1;
    goto LABEL_29;
  }
}

void sub_1000ACFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000AD004(uint64_t a1, const void *a2, uint64_t a3)
{
  if (!a3)
  {
    return;
  }

  v5 = sub_100060E98(*(a3 + 64), a2);
  v6 = objc_autoreleasePoolPush();
  v7 = off_100298C40;
  if (off_100298C40)
  {
    v8 = sub_100058B44(v5);
    [v7 WFLog:3 message:{"%s: device powered %s, manager->poweredState %s", "__WiFiDeviceManagerPowerEventCallback", v8, sub_100058B44(*(a3 + 20))}];
  }

  objc_autoreleasePoolPop(v6);
  if (v5 != 1)
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    v12 = 3;
    v14 = 0u;
    memset(v11, 0, sizeof(v11));
    DWORD2(v11[0]) = 3;
    v13 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@", @"Power Off");
    sub_1000C67C8(a3, v11);
    sub_1000C6C3C(a3);
    v9 = *(a3 + 20);
    if (v5 == v9)
    {
      goto LABEL_13;
    }

LABEL_9:
    if (sub_100060F68(*(a3 + 64), a2, v9))
    {
      return;
    }

    sub_1000C84F4(a3, a2);
    goto LABEL_13;
  }

  v9 = *(a3 + 20);
  if (v9 != 1)
  {
    goto LABEL_9;
  }

  *(a3 + 192) = 3;
  if (_os_feature_enabled_impl())
  {
    sub_100019814(a3, 0x12uLL);
  }

  else
  {
    [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
    sub_1000BD310(a3, 2, "__WiFiDeviceManagerPowerEventCallback");
  }

  sub_1000C0CA0(a3);
LABEL_13:
  v10 = *(a3 + 7480);
  if (v10)
  {

    [v10 setPowerState:v5 != 0 forInterface:a2];
  }
}

void sub_1000AD210(uint64_t a1, const void *a2, uint64_t a3, CFDictionaryRef theDict)
{
  if (!a3 || !theDict)
  {
    return;
  }

  v245 = a3 + 5264;
  v260 = 0;
  v259 = 0;
  Value = CFDictionaryGetValue(theDict, @"LINK_CHANGED_NETWORK");
  v8 = Value;
  if (Value || (v8 = *(a3 + 3560)) != 0)
  {
    v9 = sub_10000B3A8(a3, v8, 1);
  }

  else
  {
    v9 = 0;
  }

  HIDWORD(v238) = *(a3 + 3467);
  *(v245 + 1432) = 0;
  *(a3 + 3448) = 0;
  v10 = *(a3 + 6688);
  if (v10)
  {
    CFRelease(v10);
    *(a3 + 6688) = 0;
  }

  if (*(a3 + 4088))
  {
    keys = 0;
    p_keys = &keys;
    v279 = 0x2020000000;
    v280 = 0;
    values = 0;
    p_values = &values;
    v271 = 0x2020000000;
    v272 = 0;
    if (a2)
    {
      v11 = CFRetain(a2);
      p_keys->length = v11;
    }

    v12 = CFRetain(theDict);
    p_values[3] = v12;
    if (!Value)
    {
      goto LABEL_60;
    }

    v13 = *(a3 + 3468);
    if (*(a3 + 55))
    {
      v14 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:"!!!! Simulating wifi-assist override condition (Debug Mode) !!!!"];
      }

      objc_autoreleasePoolPop(v14);
      v15 = *(a3 + 55);
      if (v13)
      {
        *(a3 + 52) = 1;
        if (!v15)
        {
          goto LABEL_20;
        }

        goto LABEL_25;
      }

      if (*(a3 + 55))
      {
        if (*(a3 + 52))
        {
          *(a3 + 52) = 1;
LABEL_25:
          v16 = (a3 + 54);
          if (!*(a3 + 54))
          {
            goto LABEL_28;
          }

          v17 = 0;
LABEL_27:
          *v16 = 1;
LABEL_29:
          CFDictionarySetValue(theDict, @"WIFI_ASSIST_OVERRIDE", kCFBooleanTrue);
          v18 = objc_autoreleasePoolPush();
          v19 = off_100298C40;
          if (off_100298C40)
          {
            v194 = "__WiFiDeviceManagerOverrideGoodRssiWiFiAssist";
            v197 = sub_10000A878(Value);
            [v19 WFLog:4 message:"%s: wifi-assist override to On for %@"];
          }

          objc_autoreleasePoolPop(v18);
          if (v17)
          {
            LODWORD(valuePtr[0]) = *(a3 + 52) == 0;
            v20 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, valuePtr);
            if (v20)
            {
              CFDictionarySetValue(theDict, @"WIFI_ASSIST_OVERRIDE_REASON", v20);
              v21 = objc_autoreleasePoolPush();
              v22 = off_100298C40;
              if (off_100298C40)
              {
                v23 = *(a3 + 52);
                v24 = sub_10000A878(Value);
                v25 = "moving";
                if (!v23)
                {
                  v25 = "bad reputation";
                }

                v197 = v25;
                v200 = v24;
                [v22 WFLog:4 message:{"%s: wifi-assist override reason %s network %@", "__WiFiDeviceManagerOverrideGoodRssiWiFiAssist"}];
              }

              objc_autoreleasePoolPop(v21);
              goto LABEL_51;
            }

            v192 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              v194 = "__WiFiDeviceManagerOverrideGoodRssiWiFiAssist";
              [off_100298C40 WFLog:4 message:"%s: CFNumberCreate failed"];
            }

            objc_autoreleasePoolPop(v192);
LABEL_50:
            v20 = 0;
LABEL_51:
            Mutable = 0;
LABEL_52:
            if (*(a3 + 55))
            {
              v33 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:"!!!! End simulating wifi-assist override condition (Debug Mode) !!!!"];
              }

              objc_autoreleasePoolPop(v33);
              *(a3 + 52) = 0;
              *(a3 + 54) = 0;
            }

            if (v20)
            {
              CFRelease(v20);
            }

            if (Mutable)
            {
              CFRelease(Mutable);
            }

LABEL_60:
            if (*(a3 + 240))
            {
              CFRetain(a3);
              v34 = *(a3 + 240);
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_1000E19AC;
              block[3] = &unk_100260AA8;
              block[4] = &keys;
              block[5] = &values;
              block[6] = a3;
              block[7] = a2;
              dispatch_async(v34, block);
            }

            else
            {
              v35 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                v194 = "__WiFiDeviceManagerLinkEventCallback";
                [off_100298C40 WFLog:4 message:"%s: null queue."];
              }

              objc_autoreleasePoolPop(v35);
              length = p_keys->length;
              if (length)
              {
                CFRelease(length);
                p_keys->length = 0;
              }

              v37 = p_values[3];
              if (v37)
              {
                CFRelease(v37);
                p_values[3] = 0;
              }
            }

            _Block_object_dispose(&values, 8);
            _Block_object_dispose(&keys, 8);
            goto LABEL_69;
          }

          Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
          if (Mutable)
          {
            LODWORD(valuePtr[0]) = 0;
            v27 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, valuePtr);
            if (!v27)
            {
              goto LABEL_410;
            }

            CFArrayAppendValue(Mutable, v27);
            v28 = objc_autoreleasePoolPush();
            v29 = off_100298C40;
            if (off_100298C40)
            {
              v194 = "__WiFiDeviceManagerOverrideGoodRssiWiFiAssist";
              v197 = sub_10000A878(Value);
              [v29 WFLog:4 message:"%s: wifi-assist override reason moving network %@"];
            }

            objc_autoreleasePoolPop(v28);
            CFRelease(v27);
            LODWORD(valuePtr[0]) = 1;
            v20 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, valuePtr);
            if (v20)
            {
              CFArrayAppendValue(Mutable, v20);
              v30 = objc_autoreleasePoolPush();
              v31 = off_100298C40;
              if (off_100298C40)
              {
                v194 = "__WiFiDeviceManagerOverrideGoodRssiWiFiAssist";
                v197 = sub_10000A878(Value);
                [v31 WFLog:4 message:"%s:wifi-assist override reason network bad reputation %@"];
              }

              objc_autoreleasePoolPop(v30);
              CFDictionarySetValue(theDict, @"WIFI_ASSIST_OVERRIDE_REASONS", Mutable);
            }

            else
            {
LABEL_410:
              v193 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                v194 = "__WiFiDeviceManagerOverrideGoodRssiWiFiAssist";
                [off_100298C40 WFLog:4 message:"%s: CFNumberCreate failed"];
              }

              objc_autoreleasePoolPop(v193);
              v20 = 0;
            }

            goto LABEL_52;
          }

          v32 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            v194 = "__WiFiDeviceManagerOverrideGoodRssiWiFiAssist";
            [off_100298C40 WFLog:4 message:"%s: CFArrayCreateMutable failed"];
          }

LABEL_49:
          objc_autoreleasePoolPop(v32);
          goto LABEL_50;
        }

        v16 = (a3 + 54);
        if (*(a3 + 54))
        {
          v17 = 1;
          goto LABEL_27;
        }

LABEL_47:
        CFDictionarySetValue(theDict, @"WIFI_ASSIST_OVERRIDE", kCFBooleanFalse);
        v32 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v194 = "__WiFiDeviceManagerOverrideGoodRssiWiFiAssist";
          [off_100298C40 WFLog:4 message:"%s: wifi-assist override to auto"];
        }

        goto LABEL_49;
      }
    }

    else if (*(a3 + 3468))
    {
      *(a3 + 52) = 1;
LABEL_20:
      *(a3 + 54) = 0;
LABEL_28:
      v17 = 1;
      goto LABEL_29;
    }

    *(a3 + 52) = 0;
    *(a3 + 54) = 0;
    goto LABEL_47;
  }

LABEL_69:
  if (!Value)
  {
    if (_os_feature_enabled_impl() && *(v245 + 174) && *(v245 + 170))
    {
      v39 = [*(a3 + 6832) isNANPublisherStarted] == 0;
      v40 = objc_autoreleasePoolPush();
      if (v39)
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s Sending CSA as NAN PH needs to be started!", "__WiFiDeviceManagerLinkEventCallback"}];
        }

        objc_autoreleasePoolPop(v40);
        sub_10005C040(*(a3 + 64));
        sub_1000C7640(a3);
      }

      else
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s Publisher Already Started", "__WiFiDeviceManagerLinkEventCallback"}];
        }

        objc_autoreleasePoolPop(v40);
      }

      *(v245 + 174) = 0;
    }

    sub_100048EA4(*(a3 + 120), 0);
    if (+[WiFiAIRAgent sharedInstance](WiFiAIRAgent, "sharedInstance") && [+[WiFiAIRAgent isInterfaceRankingInProgress] sharedInstance]
    {
      sub_1000158B8(*(a3 + 120), 0, 0);
      [+[WiFiAIRAgent sharedInstance](WiFiAIRAgent terminateRequest];
    }

    if (!v9)
    {
      v115 = *(a3 + 3560);
      if (v115)
      {
        v9 = CFRetain(v115);
      }

      else
      {
        v125 = sub_100063B0C(*(a3 + 64));
        if (v125)
        {
          v9 = sub_10000B3A8(a3, v125, 1);
          if (v9)
          {
            CFRelease(v125);
          }

          else
          {
            v9 = v125;
          }
        }

        else
        {
          v9 = 0;
        }
      }
    }

    *(v245 + 3454) = 0;
    sub_100021870(a3, a2);
    sub_1000BC9D0(a3);
    *(a3 + 3467) = 0;
    *(a3 + 3472) = 0;
    *(a3 + 3480) = CFAbsoluteTimeGetCurrent();
    *(a3 + 3469) = 0;
    *(a3 + 7032) = CFAbsoluteTimeGetCurrent();
    *(a3 + 7024) = 0;
    sub_1000BBAE0(a3, 1, 0);
    if (*(v245 + 1888))
    {
      sub_10005BEDC(*(a3 + 64), 0, 0, 0);
    }

    v116 = objc_autoreleasePoolPush();
    v117 = sub_10005B2BC(*(a3 + 64), a2);
    v118 = v117;
    if (v117)
    {
      v119 = CFDictionaryGetValue(v117, @"DEAUTH_EA");
      if (v119)
      {
        v120 = *(a3 + 3560);
        if (v120)
        {
          v121 = sub_10000A540(v120, @"BSSID");
          v122 = v121;
          if (v121)
          {
            if (CFEqual(v121, v119))
            {
              v123 = CFDictionaryGetValue(v118, @"DEAUTH_REASON");
              if (v123)
              {
                LODWORD(keys) = -1431655766;
                if (CFNumberGetValue(v123, kCFNumberIntType, &keys))
                {
                  v124 = sub_10001A9BC(*(a3 + 3560));
                  if (keys == 15 && ([*(a3 + 6720) isNetworkInDenyListedState:1 scanResult:v124] & 1) == 0 && !*(a3 + 3336))
                  {
                    if ([v124 isEAP])
                    {
                      cfb = [objc_msgSend(v124 "matchingKnownNetworkProfile")];
                    }

                    else
                    {
                      cfb = 0;
                    }

                    contextb = objc_autoreleasePoolPush();
                    if (off_100298C40)
                    {
                      v126 = "NO";
                      if (cfb)
                      {
                        v126 = "YES";
                      }

                      [off_100298C40 WFLog:3 message:{"%s: hasEnterprisePolicy: %s", "__WiFiDeviceManagerProcessDeauth", v126}];
                    }

                    objc_autoreleasePoolPop(contextb);
                    v127 = *(a3 + 64);
                    if (cfb)
                    {
                      sub_100062654(v127, *(a3 + 3560), 1);
                    }

                    else if (!sub_10005A910(v127))
                    {
                      *(a3 + 3336) = sub_1000D62B4(a3, a2, 1, 1, *(a3 + 3560), 0);
                    }
                  }

                  v128 = sub_1000BE2EC(a3, 4, keys, v122, 5);
                  [*(a3 + 6720) setNetworkDenyListInfo:v128 forScanResult:v124];
                }
              }
            }
          }
        }
      }

      CFRelease(v118);
    }

    contextc = *(a3 + 3336);
    objc_autoreleasePoolPop(v116);
    v256 = 0;
    v255 = -1431655766;
    v254 = 0;
    v129 = CFDictionaryGetValue(theDict, @"LINKDOWN_REASON_CODE");
    v130 = CFDictionaryGetValue(theDict, @"LINKDOWN_IS_INVOL");
    v131 = CFDictionaryGetValue(theDict, @"LINKDOWN_SUBREASON_CODE");
    if (!v129)
    {
      goto LABEL_261;
    }

    CFNumberGetValue(v129, kCFNumberIntType, &v256 + 4);
    if (HIDWORD(v256) == 1000)
    {
      v232 = 3;
      LOBYTE(cfc) = 1;
      if (!v131)
      {
        goto LABEL_265;
      }

      goto LABEL_264;
    }

    if (HIDWORD(v256) == 2)
    {
      cfc = *(a3 + 6272) < -80;
      v232 = (4 * cfc);
      if (!v131)
      {
        goto LABEL_265;
      }
    }

    else
    {
LABEL_261:
      LOBYTE(cfc) = 0;
      v232 = 0;
      if (!v131)
      {
LABEL_265:
        if (v130)
        {
          CFNumberGetValue(v130, kCFNumberSInt8Type, &v254);
        }

        v132 = HIDWORD(v256);
        if (v9 && HIDWORD(v256) == 4)
        {
          if (sub_10009E718(v9))
          {
            v133 = 1029;
          }

          else
          {
            v133 = 4;
          }

          if (sub_100062DE0(*(a3 + 64)) < 0x1F)
          {
            v133 = 1030;
          }

          if (sub_10001CF90(v9))
          {
            v134 = v133;
          }

          else
          {
            v134 = 1031;
          }

          v135 = sub_10001A9BC(v9);
          v136 = [*(a3 + 6720) isNetworkInDenyListedState:3 scanResult:v135];
          if (([*(a3 + 6720) isNetworkInDenyListedState:1 scanResult:v135] | v136))
          {
            v132 = 1032;
          }

          else
          {
            v132 = v134;
          }
        }

        else if (!v9)
        {
          goto LABEL_308;
        }

        LODWORD(keys) = 0;
        if (v254)
        {
          v137 = sub_10000A604(v9);
          v138 = HIDWORD(v256);
          if (v137)
          {
            if (v254 && v256 == 0x100000007)
            {
              v138 = 1;
            }

            else
            {
              v138 = 255;
            }
          }
        }

        else
        {
          v138 = HIDWORD(v256);
        }

        LODWORD(keys) = v138;
        v139 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &keys);
        sub_10000AD34(v9, @"lastDisconnectReasonKey", v139);
        Current = CFAbsoluteTimeGetCurrent();
        v141 = CFDateCreate(kCFAllocatorDefault, Current);
        sub_10000AD34(v9, @"lastDisconnectTimestampKey", v141);
        v142 = *(a3 + 3560);
        if (v142)
        {
          sub_10000AD34(v142, @"lastDisconnectReasonKey", v139);
          sub_10000AD34(*(a3 + 3560), @"lastDisconnectTimestampKey", v141);
        }

        if (sub_10000A604(v9))
        {
          if (*(v245 + 1712))
          {
            if (v254)
            {
              if (v256 == 0x100000003)
              {
                v143 = sub_10000A878(v9);
                v144 = sub_10009D2E4(v143);
                v145 = v144;
                if (v144)
                {
                  sub_10000AD34(v144, @"lastDisconnectTimestampKey", v141);
                  CFArrayAppendValue(*(a3 + 7008), v145);
                  v146 = objc_autoreleasePoolPush();
                  v147 = off_100298C40;
                  if (off_100298C40)
                  {
                    v148 = sub_10000A878(v9);
                    [v147 WFLog:3 message:{"%s: Blacklisting %@ hotspot: reason (%d) subreason (%d) \n", "__WiFiDeviceManagerLinkEventCallback", v148, HIDWORD(v256), v256}];
                  }

                  objc_autoreleasePoolPop(v146);
                  CFRelease(v145);
                }
              }
            }
          }

          v149 = *(a3 + 7056);
          if (v149)
          {
            CFRelease(v149);
            *(a3 + 7056) = 0;
          }

          *(a3 + 7056) = 0;
          *(a3 + 6540) = *(a3 + 6272);
          *(a3 + 6536) = keys;
          sub_100146CAC((a3 + 6536));
        }

        if (*(a3 + 3361))
        {
          sub_1000CD0F8(a3, *(a3 + 3560));
        }

        if (v139)
        {
          CFRelease(v139);
        }

        if (v141)
        {
          CFRelease(v141);
        }

LABEL_308:
        *(v245 + 1712) = 0;
        v150 = *(a3 + 7056);
        if (v150)
        {
          CFRelease(v150);
          *(a3 + 7056) = 0;
        }

        *(a3 + 7056) = 0;
        *(v245 + 1803) = 0;
        v151 = !cfc;
        if (!v9)
        {
          v151 = 1;
        }

        if ((v151 & 1) == 0)
        {
          v152 = sub_10000A540(v9, @"BSSID");
          sub_100175D84(v9, v152, v232);
          v153 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: updating network disconnect reason to %d", "__WiFiDeviceManagerLinkEventCallback", v232}];
          }

          objc_autoreleasePoolPop(v153);
          sub_1000C5B3C(a3, v9);
        }

        sub_10013E4AC(*(a3 + 120), 0, 1, 0, v132);
        if (*(a3 + 441))
        {
          sub_100008DCC(a3, 2);
        }

        [*(a3 + 3704) setLinkDown];
        if (*(a3 + 441))
        {
          v154 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          LODWORD(keys) = *(a3 + 425);
          v155 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &keys);
          CFDictionarySetValue(v154, @"CATS_SCAN_METRIC_CACHE_HITS", v155);
          if (v155)
          {
            CFRelease(v155);
          }

          LODWORD(values) = *(a3 + 426);
          v156 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &values);
          CFDictionarySetValue(v154, @"CATS_SCAN_METRIC_CACHE_MISS", v156);
          if (v156)
          {
            CFRelease(v156);
          }

          sub_100147B78(v154);
          if (v154)
          {
            CFRelease(v154);
          }
        }

        v157 = v9;
        if (!v9)
        {
          v157 = *(a3 + 3560);
        }

        v247 = _NSConcreteStackBlock;
        v248 = 3221225472;
        v249 = sub_1000E2464;
        v250 = &unk_100261970;
        v251 = a3;
        v253 = v254;
        v252 = __PAIR64__(v256, v132);
        sub_1000C4084(a3, v157, &v247);
        if (v9)
        {
          v158 = sub_10000A7CC(v9);
          v159 = v9;
          if (v158)
          {
            *(a3 + 1032) = v254 == 0;
            if ((v132 - 1) > 1)
            {
              sub_1000E1AA4(a3, v9, v132, v256);
            }

            else
            {
              *(a3 + 1016) = sub_10000C580(kCFAllocatorDefault, v9);
              *(a3 + 1024) = v132;
              *(a3 + 1028) = v256;
              v160 = *(a3 + 1040);
              v161 = dispatch_time(0, 10000000000);
              dispatch_source_set_timer(v160, v161, 0xFFFFFFFFFFFFFFFFLL, 0);
              v162 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: trigger %d second timer to check whether or not CarPlay disconnect is intended.", "__WiFiDeviceManagerLinkEventCallback", 10}];
              }

              objc_autoreleasePoolPop(v162);
            }

            dispatch_source_set_timer(*(a3 + 1096), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
            sub_1001909BC(a3, 0);
            sub_10018ADC8(a3, v9, 0);
            if (*(v245 + 3936) == 1)
            {
              *(v245 + 3936) = 0;
              dispatch_source_set_timer(*(a3 + 9208), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
            }

            v267 = v256;
            v268 = v132;
            v266 = sub_1000365A0(v9);
            cfd = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v266);
            v163 = sub_100014000(v9);
            v233 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v268);
            v228 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v267);
            v265 = *(a3 + 1008);
            v224 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v265);
            v264 = *(a3 + 984);
            v164 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v264);
            v263 = *(a3 + 1000);
            v165 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v263);
            v262 = *(a3 + 992);
            v166 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v262);
            v167 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: rssi(%d), cca(%d), snr(%d), txFail(%d), bw(%d), reason(%d), subreason(%d), channel(%@)", "__WiFiDeviceManagerDonateCarPlayLinkMetricsToCarEvent", v263, v264, v262, v265, v266, v268, v267, v163}];
            }

            objc_autoreleasePoolPop(v167);
            keys = @"cca";
            p_keys = @"snr";
            v279 = @"rssi";
            v280 = @"txFail";
            v281 = @"channel";
            v282 = @"bandWidth";
            v283 = @"linkDownReason";
            v284 = @"linkDownSubreason";
            values = v164;
            p_values = v166;
            v271 = v165;
            v272 = v224;
            v273 = v163;
            v274 = cfd;
            v275 = v233;
            v276 = v228;
            v168 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 8, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            if (v168)
            {
              if (objc_opt_class())
              {
                v169 = objc_alloc_init(CRSAppHistoryController);
                if (v169)
                {
                  valuePtr[0] = _NSConcreteStackBlock;
                  valuePtr[1] = 3221225472;
                  valuePtr[2] = sub_1000E2574;
                  valuePtr[3] = &unk_10025ED40;
                  valuePtr[4] = v169;
                  [v169 addAnalyticsValues:v168 toEvent:1 completion:valuePtr];
                }

                else
                {
                  sub_10019909C();
                }
              }

              else
              {
                sub_1001990FC();
              }

              CFRelease(v168);
            }

            else
            {
              sub_10019915C();
            }

            if (cfd)
            {
              CFRelease(cfd);
            }

            if (v233)
            {
              CFRelease(v233);
            }

            if (v228)
            {
              CFRelease(v228);
            }

            if (v224)
            {
              CFRelease(v224);
            }

            if (v164)
            {
              CFRelease(v164);
            }

            if (v165)
            {
              CFRelease(v165);
            }

            if (v166)
            {
              CFRelease(v166);
            }

            *(a3 + 1108) = 0;
            v159 = v9;
          }
        }

        else
        {
          v159 = *(a3 + 3560);
        }

        v170 = sub_10000AA64(*(a3 + 3752), v159);
        if (v170)
        {
          LODWORD(v259) = 1;
          sub_100147640(v170, &v259);
          sub_1001473EC(&v259);
        }

        sub_1000E24F0(a3);
        if (v9 && sub_100009730(v9))
        {
          sub_100062654(*(a3 + 64), v9, 0);
        }

        CFArrayRemoveAllValues(*(a3 + 280));
        if (BYTE4(v238))
        {
          v171 = contextc != 14;
        }

        else
        {
          v171 = 0;
        }

        if (v171)
        {
          *(a3 + 192) = 4;
          if (_os_feature_enabled_impl())
          {
            sub_100019814(a3, 2uLL);
          }

          else
          {
            [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
            sub_1000BD310(a3, 2, "__WiFiDeviceManagerLinkEventCallback");
          }
        }

        if (*(a3 + 5480) && !*(a3 + 3361))
        {
          v172 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: disassociated and auto-join disabled. Releasing PPM resource.", "__WiFiDeviceManagerLinkEventCallback"}];
          }

          objc_autoreleasePoolPop(v172);
          sub_1000BD184(a3);
        }

        sub_1000D23FC(a3, v9, 0);
        if (*(a3 + 72) == 7)
        {
          v173 = *(a3 + 5600);
          v174 = dispatch_time(0, 45000000000);
          dispatch_source_set_timer(v173, v174, 0xFFFFFFFFFFFFFFFFLL, 0);
        }

        v175 = objc_autoreleasePoolPush();
        [*(a3 + 6776) dismissJoinAlerts];
        objc_autoreleasePoolPop(v175);
        v176 = CFDictionaryGetValue(theDict, @"CLIENT_REASON");
        if (!v176)
        {
          goto LABEL_392;
        }

        CFNumberGetValue(v176, kCFNumberIntType, &v255);
        v177 = v255;
        if (v255 == 2)
        {
          v178 = sub_1000648B8(*(a3 + 64));
          v179 = v9 == 0;
          if (v178 != 1)
          {
            v179 = 1;
          }

          if (!v179)
          {
            v180 = sub_10000C580(kCFAllocatorDefault, v9);
            if (v180)
            {
              v181 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: client disabled link due to captive %@", "__WiFiDeviceManagerLinkEventCallback", sub_10000A878(v180)}];
              }

              objc_autoreleasePoolPop(v181);
              v182 = sub_100006F88(*(a3 + 64));
              sub_1000D62B4(a3, v182, 6, 0, v180, 0);
              CFRelease(v180);
            }

LABEL_392:
            *(v245 + 1521) = 0;
            sub_1000C8674(a3, 6, HIDWORD(v256));
            *(a3 + 3865) = 0;
            *(a3 + 3836) = 0u;
            *(a3 + 3852) = 0u;
            if (v9 && sub_10009F2A4(v9))
            {
              v189 = sub_10002A2C0(v9);
              sub_1000A78B8(v189);
            }

            goto LABEL_395;
          }

          v177 = v255;
        }

        if (v177)
        {
          v183 = objc_autoreleasePoolPush();
          v184 = off_100298C40;
          if (off_100298C40)
          {
            v185 = sub_10000A878(v9);
            v186 = sub_1000591AC(v255);
            v187 = v255;
            v188 = sub_1000648B8(*(a3 + 64));
            [v184 WFLog:3 message:{"%s: client disabled network %@ with reason %@(%d) assocType %@", "__WiFiDeviceManagerLinkEventCallback", v185, v186, v187, sub_1000591FC(v188)}];
          }

          objc_autoreleasePoolPop(v183);
        }

        goto LABEL_392;
      }
    }

LABEL_264:
    CFNumberGetValue(v131, kCFNumberIntType, &v256);
    goto LABEL_265;
  }

  *(v245 + 3454) = 256;
  if (sub_1000A14BC(Value))
  {
    *(v245 + 3454) = 1;
    *(a3 + 8640) = 0u;
    *(a3 + 8656) = 0u;
    *(a3 + 8672) = 0u;
    *(a3 + 8688) = CFAbsoluteTimeGetCurrent();
  }

  sub_100021870(a3, a2);
  if (*(a3 + 72) == 7)
  {
    dispatch_source_set_timer(*(a3 + 5600), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  *(a3 + 3467) = 1;
  *(a3 + 3472) = CFAbsoluteTimeGetCurrent();
  if (sub_10017764C(Value))
  {
    v38 = 1;
  }

  else
  {
    v38 = [+[WiFiAnalyticsManager sharedWiFiAnalyticsManager](WiFiAnalyticsManager "sharedWiFiAnalyticsManager")];
  }

  sub_1000BBA10(a3, v38);
  *(a3 + 3496) = 0;
  v41 = sub_10001A904(a3);
  if (v41)
  {
    if (sub_10000A604(Value) && [WiFiLocationManager isLocationValid:v41 uptoSeconds:1 isHighAccuracy:900.0])
    {
      v42 = *(a3 + 3528);
      if (v42)
      {
        CFRelease(v42);
        *(a3 + 3528) = 0;
      }

      *(a3 + 3528) = v41;
      CFRetain(v41);
    }

    CFRelease(v41);
  }

  if (!*(a3 + 3468))
  {
    sub_1000BBCEC(a3);
  }

  sub_1000BFC58(a3, Value);
  sub_100063B6C(*(a3 + 64), Value);
  if (*(v245 + 3))
  {
    if (sub_1000C7464(a3, 4))
    {
      sub_1000BFD00(a3, Value, 1, 3);
      v43 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v197 = "kSCNetworkServicePrimaryRankNever";
        v200 = " Concurrency";
        v194 = "__WiFiDeviceManagerLinkEventCallback";
        [off_100298C40 WFLog:3 message:"%s: setting interface rank %s : reason %s "];
      }

      objc_autoreleasePoolPop(v43);
    }

    else
    {
      sub_1000B9DC8(a3, a2, 1007, "__WiFiDeviceManagerLinkEventCallback", 9154);
    }
  }

  else
  {
    sub_1000BFD00(a3, Value, 0, 0);
  }

  sub_1000C007C(a3, Value);
  if (v9)
  {
    sub_10017630C(v9, v44, v45, v46, v47, v48, v49, v50, v194, v197, HIDWORD(v197), v200, v203, v206, v209, v212, v215, v218, v221, v225, v229, context, v238);
    v52 = v51;
    v53 = [objc_msgSend(objc_msgSend(+[WiFiAnalyticsManager sharedWiFiAnalyticsManager](WiFiAnalyticsManager "sharedWiFiAnalyticsManager")];
    if (v53)
    {
      v54 = objc_autoreleasePoolPush();
      v55 = off_100298C40;
      if (off_100298C40)
      {
        v195 = sub_10000A540(Value, @"BSSID");
        v198 = sub_10000A878(Value);
        [v55 WFLog:3 message:"Edge BSS detected - BSSID %@ SSID %@"];
      }

      objc_autoreleasePoolPop(v54);
    }

    if (v52)
    {
      v56 = objc_autoreleasePoolPush();
      v57 = off_100298C40;
      if (off_100298C40)
      {
        v195 = sub_10000A878(v9);
        [v57 WFLog:3 message:"Detected multiAP environment for %@"];
      }

      objc_autoreleasePoolPop(v56);
    }

    v58 = *(a3 + 64);
    v59 = sub_1000097F8(a3, v9, 0);
    sub_10014BDA4(v58, a2, v9, v59, 0, 0, 0, v60, v195, v198, v201, v204, v207, v210, v213, v216, SHIDWORD(v216), v219, v222, SHIDWORD(v222), v226, v230, contexta, v239, a1, v245, v247, v248, v249, v250, v251, v252);
    v61 = v9;
  }

  else
  {
    sub_10014BDA4(*(a3 + 64), a2, 0, 1, 0, 0, 0, v50, v194, v197, v200, v203, v206, v209, v212, v215, SHIDWORD(v215), v218, v221, SHIDWORD(v221), v225, v229, context, v238, a1, v245, v247, v248, v249, v250, v251, v252);
    v53 = 0;
    v61 = Value;
  }

  sub_10013E4AC(*(a3 + 120), v61, 0, v53, 0);
  [*(a3 + 3704) setLinkUpForNetwork:v61];
  if (*(a3 + 441))
  {
    *(a3 + 425) = 0;
  }

  *(a3 + 712) = CFAbsoluteTimeGetCurrent();
  *(a3 + 960) = CFAbsoluteTimeGetCurrent();
  v62 = *(a3 + 1016);
  if (v62)
  {
    v63 = sub_10000A540(v61, @"SSID_STR");
    v64 = sub_10000A540(v62, @"SSID_STR");
    v65 = 0;
    v66 = 1021;
    if (v63 && v64)
    {
      if (CFStringCompare(v63, v64, 0))
      {
        v65 = 0;
      }

      else
      {
        v66 = *(a3 + 1024);
        v65 = *(a3 + 1028);
        v67 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v196 = "__WiFiDeviceManagerLinkEventCallback";
          v199 = v63;
          [off_100298C40 WFLog:3 message:"%s: SSID (%@) matches"];
        }

        objc_autoreleasePoolPop(v67);
      }
    }

    dispatch_source_set_timer(*(a3 + 1040), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    sub_1000E1AA4(a3, v62, v66, v65);
    v68 = *(a3 + 1016);
    if (v68)
    {
      CFRelease(v68);
      *(a3 + 1016) = 0;
    }
  }

  if (sub_10000A7CC(Value))
  {
    *(a3 + 776) = 0u;
    *(a3 + 792) = 0u;
    *(a3 + 952) = 0;
    *(a3 + 920) = 0u;
    *(a3 + 936) = 0u;
    *(a3 + 888) = 0u;
    *(a3 + 904) = 0u;
    *(a3 + 856) = 0u;
    *(a3 + 872) = 0u;
    *(a3 + 824) = 0u;
    *(a3 + 840) = 0u;
    *(a3 + 808) = 0u;
    *(a3 + 744) = 0u;
    *(a3 + 760) = 0u;
    *(a3 + 756) = 0x7FFFFFFF;
    *(a3 + 776) = 0x7FFFFFFF;
    *(a3 + 848) = 0x7FFFFFFF;
    *(a3 + 800) = 0x7FFFFFFF;
    *(a3 + 824) = 0xFFFFFF807FFFFFFFLL;
    *(a3 + 744) = CFAbsoluteTimeGetCurrent();
    *(a3 + 892) = 0;
    *(a3 + 1048) = 0;
    *(a3 + 1072) = 0;
    *(a3 + 1056) = 0u;
    *(a3 + 1080) = 0u;
    *(a3 + 984) = 0u;
    *(a3 + 1000) = 0u;
  }

  v257[0] = _NSConcreteStackBlock;
  v257[1] = 3221225472;
  v257[2] = sub_1000E20D8;
  v257[3] = &unk_100261628;
  v257[4] = a3;
  sub_1000C4084(a3, v61, v257);
  v69 = sub_10000AA64(*(a3 + 3752), v61);
  if (v69)
  {
    LODWORD(v259) = 0;
    sub_100147640(v69, &v259);
    sub_1001473EC(&v259);
  }

  if (sub_10000AFE4(Value) || sub_10009E718(Value))
  {
    sub_1000C0CA0(a3);
  }

  v70.length = CFArrayGetCount(*(a3 + 3584));
  LODWORD(keys) = 0;
  v246[400] = 0;
  if (v70.length)
  {
    v70.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(a3 + 3584), v70, Value);
    if (FirstIndexOfValue != -1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a3 + 3584), FirstIndexOfValue);
      v73 = ValueAtIndex;
      if (ValueAtIndex)
      {
        v74 = sub_10000A540(ValueAtIndex, @"WiFiManagerKnownNetworksEventType");
        v75 = v74;
        if (v74)
        {
          CFNumberGetValue(v74, kCFNumberIntType, &keys);
        }

        if (!sub_10009ED84(v73) && (!v75 || keys != 3))
        {
          v246[400] = 1;
          v76 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:"Enabling learning logic for Hidden property of the network\n"];
          }

          objc_autoreleasePoolPop(v76);
        }
      }
    }
  }

  if (v246[1888] && v246[3] && *v246 <= 0xDu && (v246[1889] & 4) != 0)
  {
    if ((v77 = sub_1000333E8(Value, @"CHANNEL"), v78 = *v246, v78 <= 0xD) && v77 <= 13 && v77 != v78 || v78 >= 0xF && v77 >= 15 && v77 != v78)
    {
      *v246 = v77;
      if (+[WiFiSoftApStateMonitor sharedInstance])
      {
        [+[WiFiSoftApStateMonitor sharedInstance](WiFiSoftApStateMonitor setMisChannel:"setMisChannel:", *v246];
      }

      v79 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v196 = *v246;
        [off_100298C40 WFLog:3 message:"Update MIS channel %d\n"];
      }

      objc_autoreleasePoolPop(v79);
    }
  }

  if (*(a3 + 6824))
  {
    v246[1713] = 0;
    if (CFArrayGetCount(*(a3 + 6992)))
    {
      CFArrayRemoveAllValues(*(a3 + 6992));
      v80 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v196 = "__WiFiDeviceManagerClearSuppressedAutoHotSpotDevices";
        [off_100298C40 WFLog:3 message:"%s: Clearing all user suppressed Auto Hotspot Devices \n"];
      }

      objc_autoreleasePoolPop(v80);
    }

    if ([*(a3 + 7016) count])
    {
      [*(a3 + 7016) removeAllObjects];
    }

    v81 = sub_10000A540(Value, @"SSID_STR");
    if (sub_10000A604(Value))
    {
      if (CFArrayGetCount(*(a3 + 7000)))
      {
        Count = CFArrayGetCount(*(a3 + 7000));
        if (Count >= 1)
        {
          v83 = 0;
          while (1)
          {
            v84 = CFArrayGetValueAtIndex(*(a3 + 7000), v83);
            if ([*(a3 + 6824) isEqualHotspotDevicesName:v84 compareTo:v81])
            {
              break;
            }

            if (Count == ++v83)
            {
              goto LABEL_177;
            }
          }

          v87 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            v199 = v81;
            v202 = v84;
            v196 = "__WiFiDeviceManagerClearSuppressedAutoHotSpotDevices";
            [off_100298C40 WFLog:3 message:"%s: Connected to Personal Hotspot %@ Unblacklisting %@\n"];
          }

          objc_autoreleasePoolPop(v87);
          CFArrayRemoveValueAtIndex(*(a3 + 7000), v83);
        }
      }
    }

    else
    {
      v85 = *(a3 + 7112);
      if (v85)
      {
        CFRelease(v85);
        *(a3 + 7112) = 0;
      }

      v86 = *(a3 + 7120);
      if (v86)
      {
        CFRelease(v86);
        *(a3 + 7120) = 0;
      }
    }

LABEL_177:
    if (CFArrayGetCount(*(a3 + 7008)))
    {
      v88 = CFArrayGetCount(*(a3 + 7008));
      if (v88 >= 1)
      {
        v89 = 0;
        while (1)
        {
          v90 = CFArrayGetValueAtIndex(*(a3 + 7008), v89);
          v91 = v90;
          if (v90)
          {
            if (!sub_10000A540(v90, @"lastDisconnectTimestampKey"))
            {
              break;
            }

            if (sub_10000A604(Value))
            {
              v92 = sub_10000A878(v91);
              if (CFEqual(v81, v92))
              {
                break;
              }
            }

            if (sub_10009EA74(v91))
            {
              break;
            }
          }

          if (v88 == ++v89)
          {
            goto LABEL_190;
          }
        }

        v93 = objc_autoreleasePoolPush();
        v94 = off_100298C40;
        if (off_100298C40)
        {
          v196 = "__WiFiDeviceManagerClearSuppressedAutoHotSpotDevices";
          v199 = sub_10000A878(v91);
          [v94 WFLog:3 message:"%s: Allowlisting Personal Hotspot %@\n"];
        }

        objc_autoreleasePoolPop(v93);
        CFArrayRemoveValueAtIndex(*(a3 + 7008), v89);
      }
    }
  }

LABEL_190:
  if (sub_1000659DC(cfa))
  {
    v95 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v196 = "__WiFiDeviceManagerLinkEventCallback";
      [off_100298C40 WFLog:3 message:{"%s - LinkChange due to Roam, don't update the DB with Join"}];
    }

    objc_autoreleasePoolPop(v95);
  }

  else
  {
    v96 = sub_1000333E8(Value, @"RSSI");
    v97 = *(a3 + 64);
    v98 = sub_1000648B8(v97) != 1;
    v99 = sub_1000648C0(*(a3 + 64));
    sub_10004E544(v97, 1, v98, v99, dword_100298C90, v96, v61, SHIDWORD(v259));
  }

  sub_1000659E8(cfa, 0);
  v100 = *(a3 + 3560);
  if (v100 && sub_10000A604(v100))
  {
    LODWORD(keys) = -1431655766;
    sub_10015043C(*(a3 + 64), &keys, v101, v102, v103, v104, v105, v106, v196, v199, v202, v205, v208, v211, v214, v217, v220, v223, v227, v231);
    v108 = v107;
    if (v107)
    {
      LODWORD(keys) = 111;
      v109 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{" fail to get auth type after connect, error %d", v108}];
      }
    }

    else
    {
      v109 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{" Auth type for PH client is 0x%X", keys}];
      }
    }

    objc_autoreleasePoolPop(v109);
    v110 = keys;
    v111 = sub_10009DB7C(*(a3 + 3560));
    v112 = sub_10009E148(*(a3 + 3560));
    *(a3 + 6548) = sub_10004E308(v110, v111, v112);
  }

  dword_100298C90 = 0;
  sub_1000C8674(a3, 3, 0);
  v246[3669] = 0;
  if (_os_feature_enabled_impl())
  {
    sub_1000085EC(a3);
  }

  v113 = sub_1000365A0(Value);
  *(a3 + 3913) = 0;
  if (v113 > 79)
  {
    if (v113 == 80)
    {
      v114 = 2;
      goto LABEL_214;
    }

    if (v113 == 160)
    {
      v114 = 3;
      goto LABEL_214;
    }
  }

  else if (v113 == 20)
  {
    *(a3 + 3912) = 0;
  }

  else if (v113 == 40)
  {
    v114 = 1;
LABEL_214:
    *(a3 + 3912) = v114;
  }

LABEL_395:
  *(a3 + 6272) = 0;
  if (_os_feature_enabled_impl())
  {
    sub_1000085EC(a3);
  }

  sub_1000BC974(a3);
  sub_1000196FC(a3);
  v190 = *(a3 + 64);
  if (Value)
  {
    v191 = sub_100190A90() != 0;
  }

  else
  {
    v191 = 0;
  }

  sub_10006155C(v190, v191);
  if (v9)
  {
    CFRelease(v9);
  }
}

void sub_1000AF52C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 240), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AF558(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4072);
  if (v2)
  {
    return v2(a2, *(a2 + 4080));
  }

  else
  {
    return 0;
  }
}

void sub_1000AF6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return;
  }

  *(a3 + 6272) = 0;
  v5 = sub_100007D90(a3, a2, 1);
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = (a3 + 6704);
  v8 = *(a3 + 3576);
  if (v8)
  {
    v84.length = CFArrayGetCount(*(a3 + 3576));
    v84.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v8, v84, v6);
    if (FirstIndexOfValue != -1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a3 + 3576), FirstIndexOfValue);
      v11 = sub_10000A540(ValueAtIndex, @"BSSID");
      sub_100175D84(ValueAtIndex, v11, 1);
      sub_100174EB4(ValueAtIndex, v6, v12, v13, v14, v15, v16, v17, v51, v54, v57, v60, (a3 + 6704), v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
      if (_os_feature_enabled_impl())
      {
        v18 = sub_10001A904(a3);
        if (v18)
        {
          v19 = v18;
          v20 = *(a3 + 6872);
          [v18 coordinate];
          [v19 coordinate];
          [v19 horizontalAccuracy];
          [v19 timestamp];
          sub_100160178();
        }
      }

      sub_1000C5B3C(a3, ValueAtIndex);
      v8 = [objc_msgSend(objc_msgSend(+[WiFiAnalyticsManager sharedWiFiAnalyticsManager](WiFiAnalyticsManager "sharedWiFiAnalyticsManager")];
      if (v8)
      {
        v28 = objc_autoreleasePoolPush();
        v29 = off_100298C40;
        if (off_100298C40)
        {
          v52 = sub_10000A540(v6, @"BSSID");
          v55 = sub_10000A878(v6);
          [v29 WFLog:3 message:"Edge BSS detected - BSSID %@ SSID %@"];
        }

        objc_autoreleasePoolPop(v28);
      }

      sub_10017630C(ValueAtIndex, v21, v22, v23, v24, v25, v26, v27, v52, v55, HIDWORD(v55), v58, v61, v64, v67, v68, v69, v70, v71, v72, v73, v74, v75);
      if (v30)
      {
        v31 = objc_autoreleasePoolPush();
        v32 = off_100298C40;
        if (off_100298C40)
        {
          v53 = sub_10000A878(v6);
          [v32 WFLog:3 message:"Detected multiAP environment for %@"];
        }

        objc_autoreleasePoolPop(v31);
      }

      v33 = *(a3 + 64);
      v34 = sub_1000097F8(a3, ValueAtIndex, 0);
      sub_10014BDA4(v33, a2, ValueAtIndex, v34, 0, 0, 0, v35, v53, v56, v59, v62, v65, v67, v68, v69, SHIDWORD(v69), v70, v71, SHIDWORD(v71), v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      Current = CFAbsoluteTimeGetCurrent();
      v38 = CFDateCreate(kCFAllocatorDefault, Current);
      v39 = v38;
      if (Mutable && v38)
      {
        v40 = sub_10000A540(*(a3 + 3560), @"BSSID");
        v63 = v8;
        v41 = sub_10000A540(*(a3 + 3560), @"CHANNEL");
        v42 = sub_10000A540(v6, @"BSSID");
        v8 = v8;
        v43 = sub_10000A540(v6, @"CHANNEL");
        if (v40)
        {
          if (v41)
          {
            if (v42)
            {
              v44 = v43;
              if (v43)
              {
                CFDictionarySetValue(Mutable, @"RoamOriginBSSID", v40);
                CFDictionarySetValue(Mutable, @"RoamOriginChannel", v41);
                CFDictionarySetValue(Mutable, @"RoamDestBSSID", v42);
                CFDictionarySetValue(Mutable, @"RoamDestChannel", v44);
                CFDictionarySetValue(Mutable, @"RoamTimestamp", v39);
                v45 = *(a3 + 280);
                v46 = CFArrayGetCount(v45) % 100;
                v47 = v45;
                v8 = v63;
                CFArrayInsertValueAtIndex(v47, v46, Mutable);
              }
            }
          }
        }
      }

      else if (!Mutable)
      {
LABEL_26:
        if (v39)
        {
          CFRelease(v39);
        }

        v7 = v66;
        goto LABEL_29;
      }

      CFRelease(Mutable);
      goto LABEL_26;
    }

    v8 = 0;
  }

LABEL_29:
  v7[1007] = 256;
  if (sub_1000A14BC(v6))
  {
    *(v7 + 2014) = 1;
    *(a3 + 8640) = 0u;
    *(a3 + 8656) = 0u;
    *(a3 + 8672) = 0u;
    *(a3 + 8688) = CFAbsoluteTimeGetCurrent();
  }

  sub_100021870(a3, a2);
  ++*(a3 + 752);
  v48 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: transition attempts# %d", "__WiFiDeviceManagerUpdateNetworkTransitionStateOnBssidChanged", *(a3 + 3448)}];
  }

  objc_autoreleasePoolPop(v48);
  *(a3 + 3448) = -1;
  if (!*v7)
  {
    if (_os_feature_enabled_impl())
    {
      sub_100019814(a3, 0x23uLL);
    }

    else
    {
      sub_1000BBDEC(a3, 4);
    }
  }

  sub_1000BFC58(a3, v6);
  sub_10013E4AC(*(a3 + 120), v6, 2, v8, 0);
  sub_1000E24F0(a3);
  v49 = *(a3 + 3952);
  if (v49)
  {
    v49(a3, a2, v6, 0, 0, *(a3 + 3960));
  }

  v50 = *(a3 + 4440);
  if (v50)
  {
    v50(a3, a2, *(a3 + 4448), 1, 0);
  }

  if (*(a3 + 7480))
  {
    v67 = _NSConcreteStackBlock;
    v68 = 3221225472;
    v69 = sub_1000E3028;
    v70 = &unk_100261628;
    v71 = a3;
    sub_1000C4084(a3, v6, &v67);
  }

  if (+[WiFiAIRAgent sharedInstance])
  {
    [+[WiFiAIRAgent sharedInstance](WiFiAIRAgent processRoamEvent:"processRoamEvent:", v6];
  }

  CFRelease(v6);
  sub_1000C8674(a3, 4, 0);
}

void sub_1000AFCD0(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4)
{
  v39 = 0;
  *valuePtr = 0;
  v38 = 0;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v35 = v4;
  v37 = 0xAAAAAAAAAAAAAAAALL;
  v34 = v4;
  DWORD1(v35) = 0;
  HIDWORD(v35) = 0;
  v36 = @"Unknown";
  if (!a3)
  {
    return;
  }

  v9 = sub_100007D90(a3, a2, 1);
  v10 = *(a3 + 3560);
  Value = CFDictionaryGetValue(a4, @"APPLE80211KEY_SUPPLICANTEVENT_TSN_DISABLED_FLAGS");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr[1]);
  }

  if (v9)
  {
    v12 = *(a3 + 3576);
    if (v12)
    {
      v41.length = CFArrayGetCount(*(a3 + 3576));
      v41.location = 0;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v12, v41, v9);
      if (FirstIndexOfValue == -1)
      {
        ValueAtIndex = 0;
      }

      else
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a3 + 3576), FirstIndexOfValue);
      }

LABEL_13:
      v15 = sub_100014000(v9);
      v16 = sub_100018030(v9);
      if (v15)
      {
        v33 = -21846;
        CFNumberGetValue(v15, kCFNumberSInt16Type, &v33);
        WORD2(v35) = v33;
      }

      if (v16)
      {
        WORD3(v35) = v16;
      }

      goto LABEL_17;
    }
  }

  v14 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Known network hasn't created, update transition disabled flag after assoc finish", "__WiFiDeviceManagerSupplicantEventCallback"}];
  }

  objc_autoreleasePoolPop(v14);
  ValueAtIndex = 0;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_17:
  if (sub_1000612B8(a1))
  {
    v17 = CFDictionaryGetValue(a4, @"APPLE80211KEY_SUPPLICANTEVENT_EAPOL_START_M1_DURATION");
    if (v17)
    {
      CFNumberGetValue(v17, kCFNumberSInt32Type, valuePtr);
    }

    v18 = CFDictionaryGetValue(a4, @"APPLE80211KEY_SUPPLICANTEVENT_M1_M2_DURATION");
    if (v18)
    {
      CFNumberGetValue(v18, kCFNumberSInt32Type, &v39 + 4);
    }

    v19 = CFDictionaryGetValue(a4, @"APPLE80211KEY_SUPPLICANTEVENT_M2_M3_DURATION");
    if (v19)
    {
      CFNumberGetValue(v19, kCFNumberSInt32Type, &v39);
    }

    v20 = CFDictionaryGetValue(a4, @"APPLE80211KEY_SUPPLICANTEVENT_M3_M4_DURATION");
    if (v20)
    {
      CFNumberGetValue(v20, kCFNumberSInt32Type, &v38 + 4);
    }

    v21 = CFDictionaryGetValue(a4, @"APPLE80211KEY_SUPPLICANTEVENT_TOTAL_4WAY_DURATION");
    if (v21)
    {
      CFNumberGetValue(v21, kCFNumberSInt32Type, &v38);
    }

    v22 = CFDictionaryGetValue(a4, @"APPLE80211KEY_SUPPLICANTEVENT_JOINING_NEW_NETWORK");
    v23 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"4WayHSDuration (us): eapol_start_m1_dur: %d m1_m2_dur: %d m2_m3_dur %d m3_m4_dur: %d total_4way_hs_dur: %d Auto-Joining New Network: %d", valuePtr[0], HIDWORD(v39), v39, HIDWORD(v38), v38, CFBooleanGetValue(v22)}];
    }

    objc_autoreleasePoolPop(v23);
    *&v34 = __PAIR64__(HIDWORD(v39), valuePtr[0]);
    *(&v34 + 1) = __PAIR64__(HIDWORD(v38), v39);
    LODWORD(v35) = v38;
    if (*(a3 + 5468) == 102)
    {
      v24 = (*(a3 + 5464) & 2) != 0 || *(a3 + 49) != 0;
      BYTE8(v35) = v24;
      if (*(a3 + 5464))
      {
        v25 = 1;
LABEL_38:
        BYTE9(v35) = v25;
        HIDWORD(v35) = *(a3 + 6272);
        LOBYTE(v37) = CFBooleanGetValue(v22) != 0;
        v26 = sub_10000A540(v9, @"BSSID");
        if (v26)
        {
          v27 = [WiFiUsageAccessPointProfile profileForBSSID:v26];
          if (v27)
          {
            v36 = v27;
          }
        }

        sub_10014800C();
        goto LABEL_42;
      }
    }

    else
    {
      BYTE8(v35) = *(a3 + 49) != 0;
    }

    v25 = *(a3 + 50) != 0;
    goto LABEL_38;
  }

LABEL_42:
  if (v9)
  {
    if (sub_1000A14BC(v9))
    {
      v28 = *(a3 + 4408);
      if (v28)
      {
        v28(a3, a2, *(a3 + 4416));
        v29 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:"Signal WiFi to incriment 24GHz M1M4 Handshake Count"];
        }

        objc_autoreleasePoolPop(v29);
      }
    }
  }

  v30 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Getting transition disabled flags, %u", "__WiFiDeviceManagerSupplicantEventCallback", valuePtr[1]}];
  }

  objc_autoreleasePoolPop(v30);
  v31 = valuePtr[1];
  if (valuePtr[1] != 0x80000000)
  {
    *(a3 + 3516) = valuePtr[1];
    if (v10 && v31)
    {
      sub_10000AD34(v10, @"TransitionDisabledFlags", [NSNumber numberWithUnsignedInt:?]);
      v31 = valuePtr[1];
    }

    sub_1000E30B4(a3, ValueAtIndex, v31, 1);
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

void sub_1000B0150(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v7 = +[WiFiRoamManager sharedWiFiRoamManager];
    if (v7)
    {
      v8 = v7;
      v9 = sub_100007D90(a3, a2, 1);
      if (v9)
      {
        v10 = v9;
        [v8 setRoamEndState:a4 forInterface:a2];
        if ([v8 canSubmitMetrics])
        {
          v11 = [v8 copyRoamStatus];
          if (v11)
          {
            v12 = v11;
            v13 = objc_autoreleasePoolPush();
            v14 = [NSMutableDictionary dictionaryWithDictionary:v12];
            v15 = [a4 objectForKey:@"ROAM_CACHE"];
            if (v15)
            {
              [(NSMutableDictionary *)v14 setObject:v15 forKey:@"ROAM_CACHE"];
            }

            sub_1000E3144(a3, v10, v14);
            objc_autoreleasePoolPop(v13);
            CFRelease(v12);
          }
        }

        CFRelease(v10);
      }
    }

    else
    {
      sub_10019936C();
    }
  }

  else
  {
    sub_1001993D8();
  }
}

void sub_1000B027C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = +[WiFiRoamManager sharedWiFiRoamManager];
  if (v6)
  {

    [v6 setRoamPrep:a4 forInterface:a2];
  }

  else
  {
    sub_100199444();
  }
}

void sub_1000B02D8(uint64_t a1, const void *a2, uint64_t a3)
{
  v5 = objc_autoreleasePoolPush();
  if (a3)
  {
    v6 = sub_100007D90(a3, a2, 1);
    if (v6)
    {
      v7 = v6;
      v8 = *(a3 + 3560);
      if (!v8 || !CFEqual(v6, v8) || sub_10001CF3C(v7) || sub_100009730(v7) || sub_10009E148(v7))
      {
        v9 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:2 message:"APPLE80211_M_DECRYPTION_FAILURE! omitting disassociate because this is a WPA network"];
        }

        objc_autoreleasePoolPop(v9);
      }

      else
      {
        v10 = sub_10000A540(*(a3 + 3560), @"BSSID");
        v11 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:"Received a decryption failure from the device.  Disassociating. "];
        }

        objc_autoreleasePoolPop(v11);
        sub_1000B9DC8(a3, a2, 1004, "__WiFiDeviceManagerDecryptionEventCallback", 8009);
        v12 = sub_10001A9BC(*(a3 + 3560));
        if (([*(a3 + 6720) isNetworkInDenyListedState:1 scanResult:v12] & 1) == 0)
        {
          *(a3 + 3336) = sub_1000D62B4(a3, a2, 1, 1, *(a3 + 3560), 0);
        }

        v13 = sub_1000BE2EC(a3, 3, 0, v10, 5);
        [*(a3 + 6720) setNetworkDenyListInfo:v13 forScanResult:v12];
      }

      CFRelease(v7);
    }
  }

  objc_autoreleasePoolPop(v5);
}

void sub_1000B048C(uint64_t a1, uint64_t a2, const __CFArray *a3, uint64_t a4)
{
  if (!a4)
  {
    return;
  }

  *(a4 + 3360) = 1;
  if (!sub_1000C7C74(a4))
  {
    Count = 0;
    goto LABEL_6;
  }

  v7 = sub_1000078F4(*(a4 + 64), a2);
  if (v7)
  {
    Count = v7;
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v17 = sub_10005894C(a3);
  v9 = v17;
  if (v17)
  {
    Count = CFArrayGetCount(v17);
    if (!Count)
    {
      goto LABEL_7;
    }

    v18 = CFArrayGetCount(*(a4 + 3632));
    if (v18)
    {
      if (Count < 1)
      {
        goto LABEL_49;
      }

      v19 = v18;
      v20 = 0;
      v21 = -1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v9, v20);
        if (ValueAtIndex)
        {
          v23 = sub_10000A878(ValueAtIndex);
          if (v19 >= 1)
          {
            v24 = v23;
            if (v23)
            {
              v25 = 0;
              while (1)
              {
                v26 = CFArrayGetValueAtIndex(*(a4 + 3632), v25);
                if (v26)
                {
                  v27 = sub_10000A878(v26);
                  if (v27)
                  {
                    if (CFEqual(v24, v27))
                    {
                      break;
                    }
                  }
                }

                if (v19 == ++v25)
                {
                  goto LABEL_42;
                }
              }

              if (v25 >= v21)
              {
                v28 = v21;
              }

              else
              {
                v28 = v25;
              }

              if (v21 == -1)
              {
                v21 = v25;
              }

              else
              {
                v21 = v28;
              }
            }
          }
        }

LABEL_42:
        ++v20;
      }

      while (v20 != Count);
      if (v21 == -1)
      {
LABEL_49:
        v32 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:"PNO networks not from background scan candidates (known networks). Nothing to do."];
        }

        objc_autoreleasePoolPop(v32);
      }

      else
      {
        v29 = CFArrayGetValueAtIndex(*(a4 + 3632), v21);
        v30 = *(a4 + 3560);
        if (v30 && CFEqual(v30, v29))
        {
          v31 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:"Previous network is the same as PNO network. Nothing to do."];
          }

          objc_autoreleasePoolPop(v31);
        }

        else
        {
          v33 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"Previous network is different from PNO network. Promoting %@.", sub_10000A878(v29)}];
          }

          objc_autoreleasePoolPop(v33);
          sub_1000BFC58(a4, v29);
        }

        *(a4 + 192) = 5;
        sub_1000BCD2C(a4);
        if (_os_feature_enabled_impl())
        {
          sub_100019814(a4, 6uLL);
        }

        else
        {
          [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
          sub_1000BD310(a4, 2, "__WiFiDeviceManagerPromotePNONetworks");
        }
      }
    }
  }

  Count = 0;
LABEL_7:
  if (a3)
  {
    v10 = CFArrayGetCount(a3);
    if (v10 >= 1)
    {
      v11 = v10;
      for (i = 0; i != v11; ++i)
      {
        v13 = CFArrayGetValueAtIndex(a3, i);
        if (v13)
        {
          v14 = v13;
          CFDictionaryRemoveValue(v13, @"SSID_STR");
          CFDictionaryRemoveValue(v14, @"SSID");
        }
      }
    }
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (Count)
  {
    CFRelease(Count);
  }

  v15 = *(a4 + 4216);
  if (v15)
  {
    v16 = *(a4 + 4096);

    v15(a4, a2, a3, v16);
  }
}

void sub_1000B07EC(uint64_t a1, uint64_t a2, id *a3)
{
  v5 = objc_autoreleasePoolPush();
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Processing BlackList Network Event", "__WiFiDeviceManagerBlackListNetworkCallback"}];
  }

  objc_autoreleasePoolPop(v6);
  if (a3)
  {
    v7 = sub_100007D90(a3, a2, 1);
    v8 = objc_autoreleasePoolPush();
    if (v7)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Blacklisting %@ for Background Scan", "__WiFiDeviceManagerBlackListNetworkCallback", sub_10000A878(v7)}];
      }

      objc_autoreleasePoolPop(v8);
      v9 = sub_10001A9BC(v7);
      v10 = sub_10000A540(v7, @"BSSID");
      v11 = sub_1000BE2EC(a3, 2, 0, v10, 3);
      [a3[840] setNetworkDenyListInfo:v11 forScanResult:v9];
      [a3[935] addFaultEvent:22 forInterface:a2];

      CFRelease(v7);
    }

    else
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: Received blackList event, but we are not associated", "__WiFiDeviceManagerBlackListNetworkCallback"}];
      }

      objc_autoreleasePoolPop(v8);
    }
  }

  objc_autoreleasePoolPop(v5);
}

void sub_1000B0974(uint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned __int8 *a5, unsigned __int16 *a6, uint64_t a7)
{
  v12 = (a7 + 4096);
  v13 = (a4 | sub_100058BB4(a6)) != 0;
  if (v12[1171])
  {
    v12[1169] = a3;
    v12[1312] = a3;
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v33 = v12[1169];
      [off_100298C40 WFLog:3 message:"MIS STA Associated: %d associated clients"];
    }

    objc_autoreleasePoolPop(v14);
    if (a5)
    {
      v27 = CFDataCreate(kCFAllocatorDefault, a5, 6);
      v37 = a5[4];
      v38 = a5[5];
      v35 = a5[2];
      v36 = a5[3];
      v33 = *a5;
      v34 = a5[1];
      v40 = [NSString stringWithFormat:@"%.2X:%.2X:%.2X:%.2X:%.2X:%.2X"];
      v39 = CWFNetworkStackMACAddressWithInterfaceName();
      v28 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v34 = v40;
        v35 = v39;
        v33 = "void __WiFiDeviceManagerSTAArriveCallback(WiFiDeviceRef, CFStringRef, UInt8, uint32_t, struct ether_addr *, WiFiMetricsManagerDeviceOUI *, void *)";
        [off_100298C40 WFLog:3 message:"%s MIS STA Associated: %@ thisDeviceMACAddress = %@"];
      }

      objc_autoreleasePoolPop(v28);
      v29 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        if (v12[1212])
        {
          v30 = " Hidden ";
        }

        else
        {
          v30 = "Broadcast";
        }

        if (a4)
        {
          v31 = " Auto Hotspot Client ";
        }

        else if ((a4 & 2) != 0)
        {
          v31 = "Instant Hotspot Client ";
        }

        else
        {
          v31 = "Broadcast iOS Client";
          if ((a4 & 4) == 0)
          {
            v31 = " Others ";
          }
        }

        v35 = v31;
        v36 = v27;
        v34 = v30;
        [off_100298C40 WFLog:3 message:{"%s: MIS Mode: %s, Client Type: %s client macAddr: %@", "__WiFiDeviceManagerSTAArriveCallback"}];
      }

      objc_autoreleasePoolPop(v29);
      if (_os_feature_enabled_impl())
      {
        [+[CWFHotspotClientManager sharedInstance](CWFHotspotClientManager clientAssociated:"clientAssociated:thisDeviceMACAddress:" thisDeviceMACAddress:v40, v39];
      }

      if ((a4 & 3) != 0)
      {
        v32 = 5344;
      }

      else if (CFSetGetCount(*(a7 + 5320)) == 0 && v13 || v13 && v12[1365] && CFSetGetCount(*(a7 + 5320)) == 1 && CFSetContainsValue(*(a7 + 5320), @"wifid"))
      {
        v32 = 5352;
      }

      else
      {
        v32 = 5336;
      }

      CFSetAddValue(*(a7 + v32), v27);
      if (v27)
      {
        CFRelease(v27);
      }

      sub_10018A7CC(a7, 0);
    }

    if (!_MISSetHostCount || _MISSetHostCount(*(a7 + 4992), 2, a3))
    {
      v21 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v33 = "__WiFiDeviceManagerSTAArriveCallback";
        [off_100298C40 WFLog:4 message:"%s: Error updating host count at MIS Service"];
      }

      objc_autoreleasePoolPop(v21);
    }

    if (v12[1169] == 5)
    {
      sub_1001912B4(a7, 1, v15, v16, v17, v18, v19, v20, v33, v34, SWORD2(v34), SHIWORD(v34), v35, v36, v37, v38, v39, v40, v41, v42);
    }

    sub_1000C7220(a7, 0);
    *(a7 + 5384) = CFAbsoluteTimeGetCurrent() + 3.0;
    v12[1280] = 1;
    sub_1000D5F40(a7, 1, a6, a4, 0);
    v22 = objc_autoreleasePoolPush();
    v23 = *(a7 + 7480);
    if (v23)
    {
      if (a5)
      {
        v24 = [NSString stringWithFormat:@"%.2X:%.2X:%.2X:%.2X:%.2X:%.2X", *a5, a5[1], a5[2], a5[3], a5[4], a5[5]];
        v23 = *(a7 + 7480);
      }

      else
      {
        v24 = 0;
      }

      [v23 addSoftApClientEvent:1 identifier:v24 isAppleClient:v13 isInstantHotspot:(a4 >> 1) & 1 isAutoHotspot:a4 & 1 isHidden:v12[1212] != 0];
    }

    objc_autoreleasePoolPop(v22);
    if (objc_opt_class())
    {
      v26 = qword_100298C50;

      dispatch_async(v26, &stru_100261990);
    }
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: called while MIS is disabled", "__WiFiDeviceManagerSTAArriveCallback"}];
    }

    objc_autoreleasePoolPop(v25);
  }
}

void sub_1000B0DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, unsigned __int16 *a6, uint64_t a7)
{
  v9 = a5;
  if (a5)
  {
    v39 = a5[4];
    v40 = a5[5];
    v37 = a5[2];
    v38 = a5[3];
    v35 = *a5;
    *v36 = a5[1];
    v13 = [NSString stringWithFormat:@"%.2X:%.2X:%.2X:%.2X:%.2X:%.2X"];
  }

  else
  {
    v13 = 0;
  }

  v14 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v38 = a4;
    v39 = v13;
    *v36 = a2;
    v37 = a3;
    v35 = "__WiFiDeviceManagerSTALeaveCallback";
    [off_100298C40 WFLog:4 message:"%s ifname %@ staNum %d sta_capabilities %d macString %@ \n"];
  }

  objc_autoreleasePoolPop(v14);
  if (*(a7 + 5267))
  {
    v15 = *(a7 + 5265);
    if (a3 == 255)
    {
      v16 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"MIS no traffic for long time. Tear down MIS"];
      }

      objc_autoreleasePoolPop(v16);
      v17 = *(a7 + 5269);
      if (!_MISSetHostCount || _MISSetHostCount(*(a7 + 4992), 2, 0))
      {
        v18 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v35 = "__WiFiDeviceManagerSTALeaveCallback";
          [off_100298C40 WFLog:4 message:"%s: Error updating host count at MIS Service"];
        }

        objc_autoreleasePoolPop(v18);
      }

      *(a7 + 5265) = 0;
      if (*(a7 + 5267) && !v17)
      {
        v19 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"MIS idle timer expired, disabling tethering"}];
        }

        objc_autoreleasePoolPop(v19);
        sub_1000C6C3C(a7);
        v52 = 0;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v41 = 0u;
        DWORD2(v41) = 7;
        sub_1000C67C8(a7, &v41);
      }
    }

    else
    {
      if (v15 >= a3)
      {
        *(a7 + 5265) = a3;
        if (_MISSetHostCount)
        {
          if (_MISSetHostCount(*(a7 + 4992), 2, a3))
          {
            v21 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              v35 = "__WiFiDeviceManagerSTALeaveCallback";
              [off_100298C40 WFLog:4 message:"%s: Error updating host count at MIS Service"];
            }

            objc_autoreleasePoolPop(v21);
          }
        }
      }

      if (_os_feature_enabled_impl() && v13)
      {
        [+[CWFHotspotClientManager sharedInstance](CWFHotspotClientManager clientDisassociated:"clientDisassociated:", v13];
      }

      v22 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v35 = v13;
        *v36 = *(a7 + 5265);
        [off_100298C40 WFLog:3 message:"MIS STA Disassociated [%@]: %d associated clients"];
      }

      objc_autoreleasePoolPop(v22);
    }

    *(a7 + 5408) = *(a7 + 5265);
    if (v9)
    {
      v33 = CFDataCreate(kCFAllocatorDefault, v9, 6);
      v34 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        *v36 = *(a7 + 5308);
        v37 = v33;
        v35 = "__WiFiDeviceManagerSTALeaveCallback";
        [off_100298C40 WFLog:3 message:{"%s: misIsHidden: %d, client macAddr: %@"}];
      }

      objc_autoreleasePoolPop(v34);
      CFSetRemoveValue(*(a7 + 5336), v33);
      CFSetRemoveValue(*(a7 + 5344), v33);
      CFSetRemoveValue(*(a7 + 5352), v33);
      if (v33)
      {
        CFRelease(v33);
      }

      sub_10018A7CC(a7, 0);
    }

    if (a3 != 255 && *(a7 + 5266) == -*(a7 + 5265) && !*(a7 + 5269))
    {
      v23 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v35 = "__WiFiDeviceManagerSTALeaveCallback";
        [off_100298C40 WFLog:3 message:"%s: Starting MIS idle timer"];
      }

      objc_autoreleasePoolPop(v23);
      sub_1000C7220(a7, 3);
    }

    sub_1000D5F40(a7, 0, a6, 0, 0);
    if (v15 >= 5 && *(a7 + 5265) <= 4u)
    {
      sub_1001912B4(a7, 0, v24, v25, v26, v27, v28, v29, v35, v36[0], v36[1], SHIWORD(v36[1]), v37, v38, v39, v40, v41, *(&v41 + 1), v42, *(&v42 + 1));
    }

    v30 = objc_autoreleasePoolPush();
    v31 = *(a7 + 7480);
    if (v31)
    {
      if (v9)
      {
        v9 = [NSString stringWithFormat:@"%.2X:%.2X:%.2X:%.2X:%.2X:%.2X", *v9, v9[1], v9[2], v9[3], v9[4], v9[5]];
        v31 = *(a7 + 7480);
      }

      [v31 addSoftApClientEvent:0 identifier:v9 isAppleClient:sub_100058BB4(a6) != 0 isInstantHotspot:(a4 >> 1) & 1 isAutoHotspot:a4 & 1 isHidden:*(a7 + 5308) != 0];
    }

    objc_autoreleasePoolPop(v30);
    if (objc_opt_class())
    {
      v32 = qword_100298C50;

      dispatch_async(v32, &stru_1002619B0);
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: called while MIS is disabled", "__WiFiDeviceManagerSTALeaveCallback"}];
    }

    objc_autoreleasePoolPop(v20);
  }
}

void sub_1000B133C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a6)
  {
    v10 = a6[525];
    if (v10)
    {
      v10(a6, a2, a3, a4, a5, a6[526]);
    }

    v11 = objc_autoreleasePoolPush();
    if (a6[935])
    {
      if (a3)
      {
        obj = [a3 objectForKey:@"scanResults"];
      }

      else
      {
        obj = 0;
      }

      v34 = +[NSMutableSet set];
      v35 = +[NSMutableSet set];
      v12 = sub_100007D90(a6, a2, 1);
      v32 = a6;
      v33 = v11;
      v30 = a1;
      v31 = a2;
      cf = v12;
      if (v12)
      {
        v13 = v12;
        v37 = sub_10000A878(v12);
        v36 = sub_100013F70(v13);
      }

      else
      {
        v36 = 0;
        v37 = 0;
      }

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v40 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (v40)
      {
        v39 = *v42;
        do
        {
          for (i = 0; i != v40; i = i + 1)
          {
            if (*v42 != v39)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v41 + 1) + 8 * i);
            v16 = objc_autoreleasePoolPush();
            v17 = [v15 objectForKey:@"SSID_STR"];
            v18 = [v15 objectForKey:@"BSSID"];
            v19 = [v15 objectForKey:@"CHANNEL_FLAGS"];
            v20 = [v15 objectForKey:@"CHANNEL"];
            v21 = [v15 objectForKey:@"RSSI"];
            v22 = [v15 objectForKey:@"WPS_PROB_RESP_IE"];
            if (v18)
            {
              v23 = v22;
              v24 = +[WiFiUsageBssDetails bssWithIdentifier:channel:channelFlags:rssi:](WiFiUsageBssDetails, "bssWithIdentifier:channel:channelFlags:rssi:", v18, [v20 integerValue], objc_msgSend(v19, "integerValue"), objc_msgSend(v21, "integerValue"));
              if (v24)
              {
                v25 = v24;
                if (!v17 || !v37 || (v26 = [v17 isEqualToString:v37], v27 = v34, (v26 & 1) == 0))
                {
                  v27 = v35;
                }

                [v27 addObject:v25];
                if (v23 && v36 && [v18 isEqual:v36])
                {
                  [+[WiFiUsageMonitor sharedInstance](WiFiUsageMonitor updateWPSInfo:"updateWPSInfo:", v15];
                }
              }
            }

            objc_autoreleasePoolPop(v16);
          }

          v40 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
        }

        while (v40);
      }

      Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      sub_10005B558(v30, Mutable);
      [v32[935] setScanningState:0 client:0 neighborBSS:v34 otherBSS:v35 withChannelInfoList:Mutable withRequest:0 forInterface:v31];
      if (cf)
      {
        CFRelease(cf);
      }

      v11 = v33;
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    objc_autoreleasePoolPop(v11);
  }
}

uint64_t sub_1000B169C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a3 + 4056);
    if (v3)
    {
      return v3(a3, a2, *(a3 + 4064));
    }
  }

  return result;
}

uint64_t sub_1000B16BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = *(a4 + 4264);
    if (v4)
    {
      return v4(a4, a2, a3, *(a4 + 4272));
    }
  }

  return result;
}

void sub_1000B16DC(int a1, uint64_t a2, uint64_t a3, CFDictionaryRef theDict)
{
  if (a3 && theDict)
  {
    if (!*(a3 + 7480))
    {
      goto LABEL_34;
    }

    valuePtr = 0;
    Value = CFDictionaryGetValue(theDict, @"BSP_EventType");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberLongLongType, &valuePtr);
      v8 = valuePtr;
      v9 = CFDictionaryGetValue(theDict, @"BSP_EventParams");
      if (v9)
      {
        v10 = v9;
        if (v8 == 18)
        {
          v31 = CFDictionaryGetValue(v9, @"BSP_CoexMode");
          if (v31)
          {
            CFNumberGetValue(v31, kCFNumberLongLongType, &valuePtr);
            v32 = valuePtr != 0;
          }

          else
          {
            v32 = 0;
          }

          [*(a3 + 7480) updateIsBSPActive:v32];
          goto LABEL_34;
        }

        if (v8 != 19)
        {
LABEL_34:
          v39 = *(a3 + 4840);
          if (v39)
          {
            v39(a3, a2, *(a3 + 4848), theDict);
          }

          return;
        }

        [*(a3 + 7480) updateIsBSPActive:1];
        v11 = CFDictionaryGetValue(v10, @"BSP_LQM_Overflowed");
        if (v11)
        {
          CFNumberGetValue(v11, kCFNumberLongLongType, &valuePtr);
          v12 = valuePtr != 0;
          v13 = CFDictionaryGetValue(v10, @"BSP_LQM_TimeToTST");
          if (v13)
          {
            CFNumberGetValue(v13, kCFNumberLongLongType, &valuePtr);
            v46 = valuePtr;
            v14 = CFDictionaryGetValue(v10, @"BSP_LQM_SampleDurationMS");
            if (!v14)
            {
              v33 = 0;
              v34 = 0;
              v28 = 0x7FFFFFFFFFFFFFFFLL;
              v24 = 0x7FFFFFFFFFFFFFFFLL;
              v35 = 0x7FFFFFFFFFFFFFFFLL;
              v36 = 0x7FFFFFFFFFFFFFFFLL;
              v38 = 0x7FFFFFFFFFFFFFFFLL;
              v19 = 0x7FFFFFFFFFFFFFFFLL;
              v22 = 0x7FFFFFFFFFFFFFFFLL;
              v26 = 0x7FFFFFFFFFFFFFFFLL;
              v30 = 0x7FFFFFFFFFFFFFFFLL;
              v37 = v46;
              goto LABEL_33;
            }

            CFNumberGetValue(v14, kCFNumberLongLongType, &valuePtr);
            v45 = valuePtr;
            v15 = CFDictionaryGetValue(v10, @"BSP_LQM_IsScanActive");
            if (v15)
            {
              CFNumberGetValue(v15, kCFNumberLongLongType, &valuePtr);
              v44 = valuePtr != 0;
              v16 = CFDictionaryGetValue(v10, @"BSP_LQM_IsP2PActive");
              if (v16)
              {
                CFNumberGetValue(v16, kCFNumberLongLongType, &valuePtr);
                v43 = valuePtr != 0;
                v17 = CFDictionaryGetValue(v10, @"BSP_LQM_TriggerCount");
                if (v17)
                {
                  CFNumberGetValue(v17, kCFNumberLongLongType, &valuePtr);
                  v42 = valuePtr;
                  v18 = CFDictionaryGetValue(v10, @"BSP_LQM_MutePercentage");
                  if (v18)
                  {
                    CFNumberGetValue(v18, kCFNumberLongLongType, &valuePtr);
                    v19 = valuePtr;
                    v20 = CFDictionaryGetValue(v10, @"BSP_LQM_MaxMuteMS");
                    if (v20)
                    {
                      CFNumberGetValue(v20, kCFNumberLongLongType, &valuePtr);
                      v41 = valuePtr;
                      v21 = CFDictionaryGetValue(v10, @"BSP_LQM_AvgMuteMS");
                      if (v21)
                      {
                        CFNumberGetValue(v21, kCFNumberLongLongType, &valuePtr);
                        v22 = valuePtr;
                        v23 = CFDictionaryGetValue(v10, @"BSP_LQM_ErrorPercentage");
                        if (v23)
                        {
                          CFNumberGetValue(v23, kCFNumberLongLongType, &valuePtr);
                          v24 = valuePtr;
                          v25 = CFDictionaryGetValue(v10, @"BSP_LQM_TimeoutPercentageOfTriggers");
                          if (v25)
                          {
                            CFNumberGetValue(v25, kCFNumberLongLongType, &valuePtr);
                            v26 = valuePtr;
                            v27 = CFDictionaryGetValue(v10, @"BSP_LQM_RejectOrFailPercentageOfTriggers");
                            if (v27)
                            {
                              CFNumberGetValue(v27, kCFNumberLongLongType, &valuePtr);
                              v28 = valuePtr;
                              v29 = CFDictionaryGetValue(v10, @"BSP_LQM_MaxConsecutiveFails");
                              if (v29)
                              {
                                CFNumberGetValue(v29, kCFNumberLongLongType, &valuePtr);
                                v30 = valuePtr;
LABEL_45:
                                v37 = v46;
                                v34 = v43;
                                v33 = v44;
                                v38 = v45;
                                v35 = v41;
                                v36 = v42;
                                goto LABEL_33;
                              }
                            }

                            else
                            {
                              v28 = 0x7FFFFFFFFFFFFFFFLL;
                            }

LABEL_44:
                            v30 = 0x7FFFFFFFFFFFFFFFLL;
                            goto LABEL_45;
                          }

                          v28 = 0x7FFFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v28 = 0x7FFFFFFFFFFFFFFFLL;
                          v24 = 0x7FFFFFFFFFFFFFFFLL;
                        }
                      }

                      else
                      {
                        v28 = 0x7FFFFFFFFFFFFFFFLL;
                        v24 = 0x7FFFFFFFFFFFFFFFLL;
                        v22 = 0x7FFFFFFFFFFFFFFFLL;
                      }

                      v26 = 0x7FFFFFFFFFFFFFFFLL;
                      goto LABEL_44;
                    }

                    v28 = 0x7FFFFFFFFFFFFFFFLL;
                    v24 = 0x7FFFFFFFFFFFFFFFLL;
                    v35 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v28 = 0x7FFFFFFFFFFFFFFFLL;
                    v24 = 0x7FFFFFFFFFFFFFFFLL;
                    v35 = 0x7FFFFFFFFFFFFFFFLL;
                    v19 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  v22 = 0x7FFFFFFFFFFFFFFFLL;
                  v26 = 0x7FFFFFFFFFFFFFFFLL;
                  v30 = 0x7FFFFFFFFFFFFFFFLL;
                  v37 = v46;
                  v34 = v43;
                  v33 = v44;
                  v38 = v45;
                  v36 = v42;
LABEL_33:
                  LOBYTE(v40) = *(a3 + 7138) != 0;
                  [*(a3 + 7480) updateWithBspOverflowed:v12 IsBSPActive:1 BspTimeToTST:v37 BspSampleDurationMS:v38 IsScanActiveBSP:v33 IsP2PActiveBSP:v34 BspTriggerCount:v36 BspMutePercentage:v19 BspMaxMuteMS:v35 BspAvgMuteMS:v22 BspErrorPercentage:v24 BspTimeOutPercentageOfTriggers:v26 BspRejectOrFailPercentageOfTriggers:v28 bspMaxConsecutiveFails:v30 supportsLinkRecommendation:v40 forInterface:a2];
                  goto LABEL_34;
                }

                v28 = 0x7FFFFFFFFFFFFFFFLL;
                v24 = 0x7FFFFFFFFFFFFFFFLL;
                v35 = 0x7FFFFFFFFFFFFFFFLL;
                v36 = 0x7FFFFFFFFFFFFFFFLL;
                v19 = 0x7FFFFFFFFFFFFFFFLL;
                v22 = 0x7FFFFFFFFFFFFFFFLL;
                v26 = 0x7FFFFFFFFFFFFFFFLL;
                v30 = 0x7FFFFFFFFFFFFFFFLL;
                v37 = v46;
                v34 = v43;
                v33 = v44;
              }

              else
              {
                v34 = 0;
                v28 = 0x7FFFFFFFFFFFFFFFLL;
                v24 = 0x7FFFFFFFFFFFFFFFLL;
                v35 = 0x7FFFFFFFFFFFFFFFLL;
                v36 = 0x7FFFFFFFFFFFFFFFLL;
                v19 = 0x7FFFFFFFFFFFFFFFLL;
                v22 = 0x7FFFFFFFFFFFFFFFLL;
                v26 = 0x7FFFFFFFFFFFFFFFLL;
                v30 = 0x7FFFFFFFFFFFFFFFLL;
                v37 = v46;
                v33 = v44;
              }
            }

            else
            {
              v33 = 0;
              v34 = 0;
              v28 = 0x7FFFFFFFFFFFFFFFLL;
              v24 = 0x7FFFFFFFFFFFFFFFLL;
              v35 = 0x7FFFFFFFFFFFFFFFLL;
              v36 = 0x7FFFFFFFFFFFFFFFLL;
              v19 = 0x7FFFFFFFFFFFFFFFLL;
              v22 = 0x7FFFFFFFFFFFFFFFLL;
              v26 = 0x7FFFFFFFFFFFFFFFLL;
              v30 = 0x7FFFFFFFFFFFFFFFLL;
              v37 = v46;
            }

            v38 = v45;
            goto LABEL_33;
          }
        }

        else
        {
          v12 = 1;
        }

        v33 = 0;
        v34 = 0;
        v28 = 0x7FFFFFFFFFFFFFFFLL;
        v24 = 0x7FFFFFFFFFFFFFFFLL;
        v35 = 0x7FFFFFFFFFFFFFFFLL;
        v36 = 0x7FFFFFFFFFFFFFFFLL;
        v37 = 0x7FFFFFFFFFFFFFFFLL;
        v38 = 0x7FFFFFFFFFFFFFFFLL;
        v19 = 0x7FFFFFFFFFFFFFFFLL;
        v22 = 0x7FFFFFFFFFFFFFFFLL;
        v26 = 0x7FFFFFFFFFFFFFFFLL;
        v30 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_33;
      }
    }
  }
}

uint64_t sub_1000B1BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a3 + 4856);
    if (v3)
    {
      return v3(a3, a2, *(a3 + 4864));
    }
  }

  return result;
}

uint64_t sub_1000B1BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a3 + 4328);
    if (v3)
    {
      return v3(a3, a2, *(a3 + 4336));
    }
  }

  return result;
}

void sub_1000B1BFC(uint64_t a1, const __CFString *a2)
{
  if (a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = @"SoftErrorTriggeredChipReset";
  }

  if (a1)
  {
    if (*(a1 + 64))
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (Mutable)
      {
        v5 = Mutable;
        if (CFStringGetLength(v2) <= 0 && MGGetBoolAnswer())
        {
          v6 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s: Will request to chip reset with no triggerReason", "WiFiDeviceManagerResetChip"}];
          }

          objc_autoreleasePoolPop(v6);
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
          {
            sub_1001994B0();
          }
        }

        CFDictionaryAddValue(v5, @"CHIP_RESET_TRIGGER", v2);
        v7 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Calling ChipReset with reason:%@", "WiFiDeviceManagerResetChip", v2}];
        }

        objc_autoreleasePoolPop(v7);
        sub_10005D1BC(*(a1 + 64), v5);
        CFRelease(v5);
      }

      else
      {
        sub_1001994F8();
      }
    }

    else
    {
      sub_100199564();
    }
  }

  else
  {
    sub_1001995D0();
  }
}

uint64_t sub_1000B1D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a3 + 4024);
    if (v3)
    {
      return v3(a3, a2, *(a3 + 4032));
    }
  }

  return result;
}

uint64_t sub_1000B1D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = *(a4 + 4232);
    if (v4)
    {
      return v4(a4, a2, a3, *(a4 + 4096));
    }
  }

  return result;
}

uint64_t sub_1000B1DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = *(a4 + 4248);
    if (v4)
    {
      return v4(a4, a2, a3, *(a4 + 4096));
    }
  }

  return result;
}

void sub_1000B1DC8(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v7 = a4 + 4096;
    *(a4 + 5576) = 0;
    dispatch_source_set_timer(*(a4 + 5584), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    *(a4 + 696) = 0;
    *(a4 + 688) = 0;
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Disabling critical phase", "__WiFiDeviceManagerRouterIpv4Callback"}];
    }

    objc_autoreleasePoolPop(v8);
    v9 = sub_100006F88(a1);
    v10 = 0;
    if (a2 && v9)
    {
      v10 = CFStringCompare(v9, a2, 0) == kCFCompareEqualTo;
    }

    sub_10005A910(a1);
    v11 = sub_10005A9F8(a1);
    if (v11)
    {
      v12 = sub_1000078F4(a1, a2);
      v13 = v12;
      if (v12 && sub_10000A7CC(v12))
      {
        *(a4 + 728) = CFAbsoluteTimeGetCurrent();
        sub_1000D1094(a4, 1, 1);
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = sub_10005AA14(a1);
    v15 = sub_10005AA1C(a1);
    v16 = *(a4 + 4456);
    if (v16)
    {
      v16(a4, a2, v13, v10, v11, v14, v15, *(a4 + 4464));
    }

    v17 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v20 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v17);
    if (v13)
    {
      CFRelease(v13);
    }

    sub_10013DAA0(*(a4 + 120));
    if (*(v7 + 2880))
    {
      if (_os_feature_enabled_impl())
      {
        [*(a4 + 8936) setRetrySchedule:4];
      }

      else
      {
        sub_1000BD310(a4, 2, "__WiFiDeviceManagerRouterIpv4Callback");
      }
    }

    sub_1000C8674(a4, 5, v11 | (2 * (v14 != 0)));
    *(a4 + 3497) = 1;
    sub_1000196FC(a4);
  }
}

void sub_1000B20E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    sub_100199840();
    return;
  }

  sub_10013D628(*(a3 + 120));
  sub_1000D23FC(a3, *(a3 + 3560), 0);
  v5 = sub_100007D90(a3, a2, 1);
  if (!v5)
  {
    sub_1001997D4();
    return;
  }

  v6 = v5;
  if (!*(a3 + 3496))
  {
    if (*(a3 + 4776))
    {
      if (*(a3 + 240))
      {
        v58[0] = 0;
        v58[1] = v58;
        v58[2] = 0x2020000000;
        v58[3] = CFRetain(v5);
        CFRetain(a3);
        sub_1001996A8((a3 + 240), &v57, a3, v58);
      }

      else
      {
        sub_10019963C();
      }
    }

    v7 = *(a3 + 3560);
    if (!v7 || sub_10000A7CC(v7))
    {
      goto LABEL_82;
    }

    if (![+[WiFiUserInteractionMonitor isSetupCompleted] sharedInstance]
    {
      v14 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: suppressing join alert as setup is not completed", "__WiFiDeviceManagerShowJoinAlertIfAppropriate"}];
      }

      goto LABEL_81;
    }

    if (sub_1000A18CC(*(a3 + 3560)) && !sub_10001CFD8(*(a3 + 3560)))
    {
      v14 = objc_autoreleasePoolPush();
      v15 = sub_10000A604(*(a3 + 3560));
      if (!sub_1000648B8(*(a3 + 64)))
      {
        if (v15)
        {
          v16 = 5;
        }

        else
        {
          v16 = 4;
        }

        [*(a3 + 6776) dispatchLowDataModeAlertForNetwork:sub_10000A878(*(a3 + 3560)) withReason:v16];
      }

      LODWORD(valuePtr) = 1;
      v17 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
      if (v17)
      {
        sub_10000AD34(*(a3 + 3560), @"SaveDataMode", v17);
        CFRelease(v17);
        v18 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: updating network low data mode to %d", "__WiFiDeviceManagerShowJoinAlertIfAppropriate", valuePtr}];
        }

        objc_autoreleasePoolPop(v18);
        sub_1000C5B3C(a3, *(a3 + 3560));
      }

      goto LABEL_81;
    }

    if (sub_1000648B8(*(a3 + 64)))
    {
      v14 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: %@ not auto-joined. Suppressing join alert.", "__WiFiDeviceManagerShowJoinAlertIfAppropriate", sub_10000A878(*(a3 + 3560))}];
      }

      goto LABEL_81;
    }

    if (!*(a3 + 6800) || !*(a3 + 108))
    {
      goto LABEL_82;
    }

    v8 = sub_1000A1F04(*(a3 + 3560));
    if (sub_10000A540(*(a3 + 3560), @"WiFiNetworkAttributeIsPublic") == kCFBooleanTrue)
    {
      LOBYTE(v9) = 0;
    }

    else
    {
      v9 = [+[WiFiAnalyticsManager sharedWiFiAnalyticsManager](WiFiAnalyticsManager "sharedWiFiAnalyticsManager")] ^ 1;
    }

    v10 = *(a3 + 6800);
    if (v10 == 255)
    {
      v26 = 1;
      goto LABEL_66;
    }

    v11 = *(a3 + 112);
    if (v11)
    {
      v12 = sub_10000A878(*(a3 + 3560));
      if (CFEqual(v11, v12))
      {
        v13 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: matching ATJ test network %@, bypass network type check.", "__WiFiDeviceManagerShowJoinAlertIfAppropriate", *(a3 + 112)}];
        }

        objc_autoreleasePoolPop(v13);
        goto LABEL_37;
      }

      v10 = *(a3 + 6800);
    }

    if ((((v10 - 255) < 0xFFFFFFFFFFFFFFFELL) & v9) == 1 && !v8)
    {
      v14 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: %@ not a public/carrier network. Suppressing join alert.", "__WiFiDeviceManagerShowJoinAlertIfAppropriate", sub_10000A878(*(a3 + 3560))}];
      }

      goto LABEL_81;
    }

LABEL_37:
    v19 = sub_10001A904(a3);
    if (v19)
    {
      if ([+[WiFiAnalyticsManager sharedWiFiAnalyticsManager](WiFiAnalyticsManager "sharedWiFiAnalyticsManager")] == 1)
      {
        v20 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: %@ is not at known location.", "__WiFiDeviceManagerShowJoinAlertIfAppropriate", sub_10000A878(*(a3 + 3560))}];
        }

        objc_autoreleasePoolPop(v20);
        v21 = 0;
      }

      else
      {
        v21 = 1;
      }
    }

    else
    {
      v21 = 1;
    }

    v22 = sub_1000A0208(*(a3 + 3560));
    if (v22 >= 0.0 && v22 <= *(a3 + 6816))
    {
      v24 = 0;
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: %@ is not joined recently.", "__WiFiDeviceManagerShowJoinAlertIfAppropriate", sub_10000A878(*(a3 + 3560))}];
      }

      objc_autoreleasePoolPop(v23);
      v24 = 1;
    }

    v25 = *(a3 + 6800);
    if ((v25 & 0xFFFFFFFFFFFFFFFDLL) == 0xFC)
    {
      v26 = 0;
    }

    else
    {
      v26 = v21;
    }

    if ((v24 & 1) == 0 && (v25 & 0xFFFFFFFFFFFFFFFELL) != 0xFC && v26)
    {
      v14 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: %@ is within range of known location or last joined date. Suppressing join alert.", "__WiFiDeviceManagerShowJoinAlertIfAppropriate", sub_10000A878(*(a3 + 3560))}];
      }

LABEL_81:
      objc_autoreleasePoolPop(v14);
LABEL_82:
      v64 = 0;
      v65 = &v64;
      v66 = 0x2020000000;
      v67 = 0;
      v60 = 0;
      v61 = &v60;
      v62 = 0x2020000000;
      v63 = 0;
      if (!*(a3 + 6785))
      {
        v35 = sub_10000A540(v6, @"BSSID");
        v36 = objc_autoreleasePoolPush();
        if (v35)
        {
          v65[3] = v6;
          CFRetain(v6);
          v61[3] = a3;
          CFRetain(a3);
          v59[0] = 0;
          v59[1] = v59;
          v59[2] = 0x3052000000;
          v59[3] = sub_100002B80;
          v59[4] = sub_100006788;
          v59[5] = sub_10000D83C("__WiFiDeviceManagerFetchCurrentNetworkFrom3Bars");
          v37 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: fetching network %@ (bssid %@) from 3bars", "__WiFiDeviceManagerFetchCurrentNetworkFrom3Bars", v65[3], v35}];
          }

          objc_autoreleasePoolPop(v37);
          *(a3 + 6785) = 1;
          v38 = +[WiFi3BarsObserver sharedWiFi3BarsObserver];
          *&valuePtr = _NSConcreteStackBlock;
          *(&valuePtr + 1) = 3221225472;
          v69 = sub_1000F15EC;
          v70 = &unk_100261BA8;
          v71 = &v60;
          v72 = &v64;
          v73 = v59;
          [v38 forceFetch3BarsNetworkMatchingBSSID:v35 completionHandler:&valuePtr];
          _Block_object_dispose(v59, 8);
        }

        else if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: bssid is null for network %@", "__WiFiDeviceManagerFetchCurrentNetworkFrom3Bars", v6}];
        }

        objc_autoreleasePoolPop(v36);
      }

      _Block_object_dispose(&v60, 8);
      _Block_object_dispose(&v64, 8);
      sub_100189430(a3);
      if (!*(a3 + 3497))
      {
        v39 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v40 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v41 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
            LODWORD(valuePtr) = 136446210;
            *(&valuePtr + 4) = v41;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", &valuePtr, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v39);
        sub_1000C8674(a3, 5, 4);
      }

      sub_1000F1434(a3, v6);
      if (sub_10009F2A4(v6))
      {
        v42 = sub_10002A1CC(v6);
        if (v42)
        {
          v43 = sub_10002A2C0(v6);
          sub_1000A725C(v43, v42);
          CFRelease(v42);
        }
      }

      v44 = sub_1000DE1B8(a3);
      v45 = v44;
      if (v44)
      {
        v46 = [(CFDictionaryRef *)v44 discoveredDevices];
        v47 = v46;
        if (v46 && (v48 = CWFNetworkProfilePropertyDiscoveredDevicesTimestampKey, [v46 objectForKeyedSubscript:CWFNetworkProfilePropertyDiscoveredDevicesTimestampKey]) && (objc_msgSend(objc_msgSend(v47, "objectForKeyedSubscript:", v48), "timeIntervalSinceNow"), v50 = v49, v51 = objc_msgSend(v47, "objectForKeyedSubscript:", CWFNetworkProfilePropertyDiscoveredDevicesNamesKey), v52 = objc_msgSend(v47, "objectForKeyedSubscript:", CWFNetworkProfilePropertyDiscoveredDevicesCountKey), v50 > -86400.0) && (v50 > -3600.0 || v51 && v52))
        {
          sub_100199704(-v50);
        }

        else
        {
          CFRetain(a3);
          CFRetain(v45);
          v53 = dispatch_time(0, 15000000000);
          global_queue = dispatch_get_global_queue(0, 0);
          *&valuePtr = _NSConcreteStackBlock;
          *(&valuePtr + 1) = 3221225472;
          v69 = sub_1000F21A8;
          v70 = &unk_10025F5F8;
          v71 = v45;
          v72 = a3;
          dispatch_after(v53, global_queue, &valuePtr);
        }

        CFRelease(v45);
      }

      else
      {
        sub_100199774();
      }

      v55 = *(a3 + 9080);
      v56 = dispatch_time(0, 1000000000);
      dispatch_source_set_timer(v55, v56, 0xFFFFFFFFFFFFFFFFLL, 0);
      goto LABEL_107;
    }

LABEL_66:
    v14 = objc_autoreleasePoolPush();
    v27 = *(a3 + 64);
    v28 = sub_100006F88(v27);
    v29 = sub_1000078F4(v27, v28);
    v30 = sub_10000A878(v29);
    v31 = sub_10018DF8C(a3);
    if (([(__CFArray *)v31 containsObject:v30]& 1) != 0)
    {
      v32 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: %@ is blacklisted from join alerts", "__WiFiDeviceManagerShowJoinAlertIfAppropriate", v30}];
      }

      objc_autoreleasePoolPop(v32);
    }

    else
    {
      if (v26)
      {
        v33 = 3;
      }

      else
      {
        v33 = 2;
      }

      if (v8)
      {
        v34 = *(a3 + 6256);
      }

      else
      {
        v34 = 0;
      }

      [*(a3 + 6776) dispatchJoinAlertForNetwork:v30 withProviderName:v34 andReason:v33];
    }

    if (v31)
    {
      CFRelease(v31);
    }

    if (v29)
    {
      CFRelease(v29);
    }

    goto LABEL_81;
  }

LABEL_107:
  *(a3 + 3496) = 1;
  CFRelease(v6);
}