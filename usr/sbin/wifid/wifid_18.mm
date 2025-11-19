void sub_100151D24()
{
  sub_10000D798();
  v2 = v1;
  sub_10001131C();
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  if (Mutable)
  {
    v4 = Mutable;
    if (v2 && (v5 = CFGetTypeID(v2), v5 == CFArrayGetTypeID()))
    {
      CFArrayGetCount(v2);
      v6 = sub_10000836C();
      CFStringAppendFormat(v6, v7, v8);
      CFArrayGetCount(v2);
      v9 = sub_100034FE4();
      CFArrayApplyFunction(v9, v20, v10, v4);
    }

    else
    {
      v11 = sub_10000836C();
      CFStringAppendFormat(v11, v12, v13);
    }

    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"%s: %@"];
    }

    objc_autoreleasePoolPop(v14);
    if (*(v0 + 3904))
    {
      v15 = *(v0 + 3912);
      v16 = sub_100011580();
      v17(v16);
    }

    sub_1000084B8();

    CFRelease(v18);
  }

  else
  {
    sub_1000084B8();
  }
}

void sub_100151E68(const __CFDictionary *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      Value = CFDictionaryGetValue(a1, @"BSSID");
      v4 = CFDictionaryGetValue(a1, @"TIMESTAMP");
      v8 = CFDictionaryGetValue(a1, @"AGE");
      v5 = sub_100008684();
      CFStringAppendFormat(v5, v6, v7, Value, v4, v8);
    }
  }
}

void sub_100151EF0(uint64_t a1, CFStringRef key)
{
  if (!a1)
  {
LABEL_25:
    sub_10001ED88();
    return;
  }

  NetworkInterfaceEntity = key;
  if (key)
  {
    goto LABEL_6;
  }

  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, *(a1 + 112), kSCEntNetInterfaceActiveDuringSleepSupported);
  v6 = objc_autoreleasePoolPush();
  v7 = sub_10006AD2C();
  if (v7)
  {
    [v7 WFLog:3 message:{"%s: using default key %@", "__WiFiDeviceCheckForIPRenewalWakeupSupport", NetworkInterfaceEntity}];
  }

  objc_autoreleasePoolPop(v2);
  if (NetworkInterfaceEntity)
  {
LABEL_6:
    v8 = SCDynamicStoreCopyValue(*(a1 + 152), NetworkInterfaceEntity);
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      sub_1000305B8();
      [v10 WFLog:3 message:{"%s: %@ = %s", "__WiFiDeviceCheckForIPRenewalWakeupSupport", NetworkInterfaceEntity, v11}];
    }

    objc_autoreleasePoolPop(v9);
    sub_1000305B8();
    v13 = *v12;
    for (i = 6; ; --i)
    {
      v15 = *(a1 + 16);
      v16 = Apple80211Set();
      v17 = v16;
      v18 = v16 == -3905 || v16 == 16;
      if (!v18 && v16 != 61 || !i)
      {
        break;
      }

      sub_10000390C();
    }

    if (v16)
    {
      v19 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_1000305B8();
        [v20 WFLog:4 message:{"__WiFiDeviceCheckForIPRenewalWakeupSupport", v21, v17}];
      }

      objc_autoreleasePoolPop(v19);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    if (key)
    {
      goto LABEL_25;
    }

    sub_10001ED88();

    CFRelease(v22);
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null serviceKey", "__WiFiDeviceCheckForIPRenewalWakeupSupport"}];
    }

    sub_10001ED88();

    objc_autoreleasePoolPop(v25);
  }
}

uint64_t sub_100152128(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  sub_10001131C();
  *v4 = 0;
  location = CFStringFind(v5, kSCEntNetIPv4RouterARPAlive, 0).location;
  v7 = 0;
  if (location != -1)
  {
LABEL_5:
    *v2 = v7;
    return 1;
  }

  if (CFStringFind(v3, kSCEntNetIPv4RouterARPFailure, 0).location != -1)
  {
    v7 = 1;
    goto LABEL_5;
  }

  return 0;
}

void sub_1001521B0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"Unknown interface %@", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100152218()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: ipv6ParamsDict is NULL", "__WiFiDeviceCheckForIPV6ParamsChange"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100152278(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: interface from dictionary does not match", "WiFiDeviceCheckForIPParamsChange"}];
  }

  objc_autoreleasePoolPop(v2);

  CFRelease(a1);
}

void sub_1001522F0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Unable to copy dictionary for kSCEntNetInterface", "WiFiDeviceCheckForIPParamsChange"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10015235C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Unable to fetch kSCEntNetInterface", "WiFiDeviceCheckForIPParamsChange"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001523C8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: unknown interface %@", "WiFiDeviceCopyInterfaceStateInfo", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100152438()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: no device", "WiFiDeviceCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001524A4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: no interface", "WiFiDeviceCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100152510()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: No matching cache entry found. Will send GAS request.", "__WiFiDeviceCopyCachedGasResponse"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100152570(uint64_t a1, const __CFArray *cf, CFArrayRef theArray)
{
  if (a1 >= 1)
  {
    for (i = 0; i != a1; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      if (ValueAtIndex)
      {
        Value = CFDictionaryGetValue(ValueAtIndex, @"BSSID");
        if (Value)
        {
          v9 = Value;
          CFArrayGetCount(cf);
          v10 = sub_100008684();
          if (CFArrayContainsValue(v10, v13, v9))
          {
            CFArrayGetValueAtIndex(theArray, i);
            v11 = sub_100015EB8();
            CFArrayAppendValue(v11, v12);
          }
        }
      }
    }
  }

  CFRelease(cf);
}

void sub_10015262C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"Unknown interface %@", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100152688()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null manager from scan data", "__WiFiDeviceScanAsyncQueued"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001526E8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null scanData", "__WiFiDeviceScanAsyncQueued"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100152748()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null command queue ref ", "__WiFiDeviceCommandQueueCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001527B4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null device", "__WiFiDeviceCommandQueueCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100152820()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null device", "__WiFiDeviceResetCCAHistory"}];
  }

  objc_autoreleasePoolPop(v0);
  v1 = objc_autoreleasePoolPush();
  v2 = sub_10006AD44();
  if (v2)
  {
    [v2 WFLog:3 message:{"%s: null device", "__WiFiDeviceResetRssiHistory"}];
  }

  objc_autoreleasePoolPop(v0);
  v3 = objc_autoreleasePoolPush();
  v4 = sub_10006AD44();
  if (v4)
  {
    [v4 WFLog:3 message:{"%s: null device", "__WiFiDeviceResetPerCoreRssiHistory"}];
  }

  objc_autoreleasePoolPop(v0);
  v5 = objc_autoreleasePoolPush();
  v6 = sub_10006AD44();
  if (v6)
  {
    [v6 WFLog:3 message:{"%s: null device", "__WiFiDeviceResetTxRxHistory"}];
  }

  objc_autoreleasePoolPop(v0);
  v7 = objc_autoreleasePoolPush();
  v8 = sub_10006AD44();
  if (v8)
  {
    [v8 WFLog:3 message:{"%s: null device", "__WiFiDeviceResetGatewayARPHistory"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10015294C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Will not copy 0 Scaled RSSI", "__WiFiDeviceCopyLqmProperty"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001529B8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: interfaceName is NULL", "__WiFiDeviceVirtualInterfaceGet"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100152A24()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: device is NULL", "__WiFiDeviceVirtualInterfaceGet"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100152A90()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: failed to alloc interfaceName", "WiFiDeviceGetSetWLDump"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100152AFC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"Could not read APPLE80211_IOC_CHANNELS_INFO err=%d", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100152B58(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"Unknown interface %@", *a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100152BC4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"Could not read APPLE80211_IOC_SUPPORTED_CHANNELS err=%d", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100152C20(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s Failed to set SoftAP LowPower config: err %d", "WiFiDeviceSetLowPowerMISActive", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100152C84(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s Failed to get SoftAP LowPower config: err %d", "WiFiDeviceSetLowPowerMISActive", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100152CF4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s Failed to create dict", "WiFiDeviceSetLowPowerMISActive"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100152D60(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s Failed to set SoftAP IE config: err %d", "WiFiDeviceSetWiFiNetworkInHotspotIe", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100152DC4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s Failed to create dict", "WiFiDeviceSetWiFiNetworkInHotspotIe"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100152E30(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s Failed to set SoftAP CSA config: err %d", "WiFiDeviceSetSoftApCsaNanPh", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100152E94()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s Failed to create dict", "WiFiDeviceSetSoftApCsaNanPh"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100152F00(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Internet Relay Interface Already Exists %@", "__WiFiDeviceCreateInternetRelayInterface", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100152F70(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null intfDict.", "__WiFiDeviceCreateInternetRelayInterface"}];
  }

  objc_autoreleasePoolPop(v2);
  CFRelease(a1);
}

void sub_100152FDC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null role.", "__WiFiDeviceCreateInternetRelayInterface"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10015303C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: deviceRef is NULL!", "WiFiDeviceChipReset"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001530A8(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"Unknown interface %@", a2}];
  }

  objc_autoreleasePoolPop(v3);
}

void sub_100153110()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: IOServiceAddInterestNotification failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10015317C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: Unable to init event monitoring", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001531DC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_ASSOC_DONE failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10015323C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_SCAN_DONE failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10015329C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_POWER_CHANGED failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001532FC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_SSID_CHANGED failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10015335C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_BSSID_CHANGED failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001533BC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_ROAMED failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10015341C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_ROAM_STATUS failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10015347C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_SUPPLICANT_EVENT failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001534DC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_ROAM_SCAN_START failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10015353C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_ROAM_SCAN_END failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10015359C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_ROAM_PREP failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001535FC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_LINK_CHANGED failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10015365C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_MIC_ERROR_UCAST failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001536BC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_MIC_ERROR_MCAST failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10015371C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_INT_MIT_CHANGED failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10015377C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_MODE_CHANGED failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001537DC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_DECRYPTION_FAILURE failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10015383C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_BGSCAN_NET_DISCOVERED failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10015389C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_WIFI_DIRECT_GROUP_STARTED failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001538FC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_STA_ARRIVE failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10015395C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_STA_LEAVE failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001539BC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_BLACKLIST_NETWORK failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100153A1C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_RESUME_SCAN failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100153A7C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_BGSCAN_SUSPENDED failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100153ADC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_BGSCAN_RESUMED failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100153B3C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_RSSI_CHANGED failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100153B9C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_LQM_TX_STATS failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100153BFC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_HOMECHAN_QUAL_CHANGED failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100153C5C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_WEIGHT_AVG_LQM_UPDATE failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100153CBC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_BT_COEX_MODE_STATS_EVENT failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100153D1C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_SIB_EVENT failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100153D7C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_LINK_DOWN_DEBOUNCE_FAILED failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100153DDC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_REALTIME_SESSION_NOTIFICATION failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100153E3C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_OBSS_MIT_NOTIFICATION failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100153E9C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_DRIVER_AVAILABLE failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100153EFC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_GAS_DONE failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100153F5C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_BGSCAN_CACHED_NETWORK_AVAILABLE failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100153FBC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_SCAN_BACKOFF_REPORT failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10015401C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_DUMP_LOGS failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10015407C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_RANGING_MEASUREMENT_DONE failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001540DC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_TX_FAIL_HISTORY_EVENT failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10015413C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_TX_INHIBIT failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10015419C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_LOCAL_THERMAL_MITIGATION failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001541FC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_BSS_STEERING_REQUEST_EVENT failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10015425C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_SOFTAP_LPM failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001542BC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_WIFI_NETWORK_INFO_UPDATE failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10015431C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_ACTION_FRAME_EVENT failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10015437C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_DPS failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001543DC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_SLOW_WIFI failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10015443C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_PRUNE failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10015449C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_SLOWWIFI_PROBE_TRIGGER failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001544FC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_SLOWWIFI_USERINPUT_TRIGGER failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10015455C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_COUNTRY_CODE_CHANGED failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001545BC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_LQM_CRASHTRACER failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10015461C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_TE_CRITICAL_TRAFFIC_IND failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10015467C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_BEACON_CACHE_UPDATED failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001546DC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_TRIGGER_TTR failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10015473C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_SENSING_DONE failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10015479C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_COLOCATED_CACHE_EVENT failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001547FC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_P2P_PEER_COUNTRY_CODE failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10015485C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_ENV_BSS_INFO failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001548BC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_NDD_REPORT failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10015491C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_NDD_DONE failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10015497C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_SCAN_FWD_STATS_EVENT failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001549DC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_ROAM_SUPPRESSION_STATUS failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100154A3C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_RENEW_IP_REQ failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100154A9C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring APPLE80211_M_RX_DATA_STALL failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100154AFC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: monitoring Apple80211FilterMonitoringEvent failed", "WiFiDeviceScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100154B5C(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null intfDict.", "__WiFiDeviceCreateAwdlInterface"}];
  }

  objc_autoreleasePoolPop(v2);
  CFRelease(a1);
}

void sub_100154BC8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null role.", "__WiFiDeviceCreateAwdlInterface"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100154C28(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null intfDict.", "__WiFiDeviceCreateHostApInterface"}];
  }

  objc_autoreleasePoolPop(v2);
  CFRelease(a1);
}

void sub_100154C94()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null role.", "__WiFiDeviceCreateHostApInterface"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100154CF4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null device", "WiFiDevicePrepareRssiNoiseSnrCcaHistoryArray"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100154D60()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: lqm null", "WiFiDevicePrepareGatewayARPHistory"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100154DCC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null device", "WiFiDevicePrepareGatewayARPHistory"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100154E38()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null device", "__WiFiDeviceUpdateGatewayARPHistory"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100154EA4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: null device", "WiFiDeviceUpdateOsEligibility"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100154F10()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null numRef", "WiFiDeviceIsChannelSupportedForRanging"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100154F70()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null device", "WiFiDeviceIsChannelSupportedForRanging"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100154FDC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null cmdqueue ref", "__WiFiDeviceCommandFlush"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100155048()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null device", "__WiFiDeviceCommandFlush"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001550B4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: unknown interface %@", "WiFiDeviceCopyInterfaceStats", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100155124(char a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v3 = "Device";
    if (a1)
    {
      v3 = "Network";
    }

    [off_100298C40 WFLog:3 message:{"%s: %s is NULL", "__WiFiDeviceRecordLastSSIDInfo", v3}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001551AC(char a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v3 = "Device";
    if (a1)
    {
      v3 = "Network";
    }

    [off_100298C40 WFLog:3 message:{"%s: %s is NULL", "__WiFiDeviceRecordLastNetworkInfo", v3}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100155234()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"Scan backoff reporting blocked on customer builds"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10015528C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: dynamicStoreRef is NULL", "WiFiDeviceRequestAssociatedSleep"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001552F8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: stateKey is NULL", "WiFiDeviceRequestAssociatedSleep"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100155364()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null device", "WiFiDeviceGetHardwareVersion"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001553D0(NSObject **a1, void ***a2, void **a3, void **a4)
{
  v4 = *a1;
  *a2 = _NSConcreteStackBlock;
  a2[1] = 3221225472;
  a2[2] = sub_1000633B4;
  a2[3] = &unk_10025EFD8;
  a2[4] = a4;
  a2[5] = a3;
  dispatch_async(v4, a2);
}

void sub_100155430(const void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s Failed to get LQM config: err %d", "WiFiDeviceCopyCurrentLqmConfig", a2}];
  }

  objc_autoreleasePoolPop(v4);

  CFRelease(a1);
}

void sub_1001554B4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s Failed to create dict", "WiFiDeviceCopyCurrentLqmConfig"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100155520(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s Failed to set LQM config: err %d", "WiFiDeviceSetLqmConfig", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100155590(void *a1, uint64_t a2, void *a3)
{
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: AssocHistory is Not Valid! Error:0x%0x. AssocHistoryString:%p", "WiFiDeviceCopyAssociationHistory", a2, *a1}];
  }

  objc_autoreleasePoolPop(v6);
  *a3 = *a1;
}

void sub_100155614()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: device NULL", "WiFiDeviceCopyAssociationHistory"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100155680()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Device is NULL!", "WiFiDeviceGetLastLinkedBSSID"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001556EC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Device is NULL!", "WiFiDeviceGetLastLinkedSSID"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100155758()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: lastSSIDInfo is NULL!", "WiFiDeviceCopyLastSSIDInfo"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001557C4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Device is NULL!", "WiFiDeviceCopyLastSSIDInfo"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100155830()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: lastAttemptedNetworkInfo", "WiFiDeviceCopyLastNetworkInfo"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10015589C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Device is NULL!", "WiFiDeviceCopyLastNetworkInfo"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100155908()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: network is null.", "WiFiDeviceUpdateLastNetworkInfo"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100155974()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Device is NULL!", "WiFiDeviceUpdateLastNetworkInfo"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001559E0(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: ignore this device %@, test interface %@", "WiFiDeviceSetTestParams", a1, a2}];
  }

  objc_autoreleasePoolPop(v4);
}

void sub_100155A60()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s ccaStatsDict is NULL!", "__WiFiDeviceSetSimulateLinkTestParams"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100155AC0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s lqmDict is NULL!", "__WiFiDeviceSetSimulateLinkTestParams"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100155B20()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null cmdNum", "WiFiDeviceSetTestParams"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100155B8C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null testParams", "WiFiDeviceSetTestParams"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100155BF8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null device", "WiFiDeviceSetTestParams"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100155CAC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s:cannot allocate valueRef", "WiFiDeviceApplyFeatureFlags"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100155D0C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null properties.", "WiFiDeviceSetAPInfo"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100155D78()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null device.", "WiFiDeviceSetAPInfo"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100155DE4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null properties.", "WiFiDeviceGetAPInfo"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100155E50()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null device.", "WiFiDeviceGetAPInfo"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100155EBC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: CoreCaptureTriggerInfo allocation failed!", "WiFiDeviceTriggerCoreCapture"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100155F28()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: device is NULL", "WiFiDeviceTriggerCoreCapture"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100155F94(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: unknown interface %@", "WiFiDeviceCopyLQMSummary", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100156004()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Error: null interface", "WiFiDeviceSetTDImminent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100156070()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Error: null device", "WiFiDeviceSetTDImminent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001560DC()
{
  v0 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v1 = 136446466;
    v2 = "void __WiFiDeviceConditionallyUpdateStoreWithIPSignatures(WiFiDeviceRef, NSString *, NSString *, NSData *, NSData *)_block_invoke";
    v3 = 1024;
    v4 = 2418;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%{public}s::%d:mostRecentJoin nil", &v1, 0x12u);
  }
}

void sub_10015618C(__CFDictionary *a1, uint64_t a2, const __CFArray **a3)
{
  CFDictionarySetValue(a1, @"CompletedUsingCache", kCFBooleanTrue);
  sub_10002E080(a2, *(a2 + 112), *a3, a1, 0);

  CFRelease(a1);
}

void sub_100156218()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"No GAS responses found"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100156270(const void *a1, const void *a2)
{
  if (sub_10010DAB8(a1, a2) && sub_10010DB20(a1))
  {
    v3 = sub_100021D58();
    if (sub_10010DAEC(v3, v4))
    {
      v5 = sub_100011580();
      CFArrayAppendValue(v5, v6);
    }
  }

  CFRelease(a1);
}

void sub_1001562D0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: linkChangedEventDataDict has null key values", "__WiFiDeviceProcessLinkDownData"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100156330()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: rssiNumRef is null", "__WiFiDeviceProcessLinkEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10015639C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: isLinkDownNumRef is null", "__WiFiDeviceProcessLinkEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100156408()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: linkChangedEventDataDict is NULL", "__WiFiDeviceProcessLinkEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100156474()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: txStatsRef is null", "__WiFiDeviceProcessLqmTxStatsEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001564E0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"null ccaNum"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100156538()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"null ccaDict"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100156590()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null eventData", "__WiFiDeviceProcessWeightAvgLQMEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001565FC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null eventData", "__WiFiDeviceProcessBTCoexStatsEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100156668()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null eventData", "__WiFiDeviceProcessBSPEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001566D4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null eventData", "__WiFiDeviceRealtimeSessionEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100156740()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null device", "__WiFiDeviceRealtimeSessionEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001567AC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null eventData", "__WiFiDeviceObssMitEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100156818()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: available key missing", "__WiFiDeviceProcessDriverAvailableEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100156884()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null eventData", "__WiFiDeviceProcessDriverAvailableEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001568F0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null device", "__WiFiDeviceProcessDriverAvailableEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10015695C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s Callback not registered", "__WiFiDeviceProcessLeakyAPStatsEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001569C8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"Failed to get SSID Info from Event data"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100156A20()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"Failed to get Flag Info from Event data"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100156A78()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"Failed to get Battery Info from Event data"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100156AD0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s:cannot allocate dummyRef", "__WiFiDeviceSendBSPCountryCodeChangeEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100156B30()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s:cannot allocate eventParamsRef", "__WiFiDeviceSendBSPCountryCodeChangeEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100156B90(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s:cannot allocate eventTypeRef", "__WiFiDeviceSendBSPCountryCodeChangeEvent"}];
  }

  objc_autoreleasePoolPop(v2);
  CFRelease(a1);
}

void sub_100156BFC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s:cannot allocate dictRef", "__WiFiDeviceSendBSPCountryCodeChangeEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100156C68()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s - No LQM binary tag represented in APPLE80211_IOC_LQM_METRICS_CRASHTRACER_DATA dictionary, skipping.", "__WiFiDeviceProcessLQMCrashTracerEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100156CC8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s - Apple80211Get(APPLE80211_IOC_LQM_METRICS_CRASHTRACER_DATA) failed: %d (%s)", "__WiFiDeviceProcessLQMCrashTracerEvent", a1, strerror(a1)}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100156D64(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    if (*(*(*a1 + 8) + 24))
    {
      v3 = "Managed";
    }

    else
    {
      v3 = "Non-Managed";
    }

    [off_100298C40 WFLog:3 message:{"%s: No change Current (%s Account)", "-[WiFiAccountStoreManager _updateIsManagedAppleIDAndNotify:]_block_invoke", v3}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100156DF8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: unknown property format", "WiFiLoggingLoadDebugSettings"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100156E54()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: wifimanager is NULL", "__WiFiLoggingTurnOnWiFiLogging"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100156EB0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"wifi debug profile is already installed"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100156EF8(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null fileStreamRef", "WiFiLoggingLoadDebugSettings"}];
  }

  objc_autoreleasePoolPop(v2);

  CFRelease(a1);
}

void sub_100156F6C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null url", "WiFiLoggingLoadDebugSettings"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100156FD4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: wifimanager is NULL", "__WiFiLoggingTurnOffWiFiLogging"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10015703C()
{
  v0 = CWFGetOSLog();
  if (v0)
  {
    v1 = CWFGetOSLog();
  }

  else
  {
    v1 = &_os_log_default;
    v2 = &_os_log_default;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    _os_log_send_and_compose_impl();
  }
}

void sub_100157124(uint64_t a1)
{
  *(a1 + 368) = 0;
  if (sub_10000A154(a1))
  {
    return;
  }

  if (sub_10001769C(a1, @"IsNewInstall") != kCFBooleanFalse && ([-[NSUserDefaults objectForKey:](+[NSUserDefaults standardUserDefaults](NSUserDefaults "standardUserDefaults")] & 1) == 0)
  {
    *(a1 + 368) = 1;
LABEL_8:
    v2 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s WFMacRandomisation : private MAC networks need to be sanitized due to iCloud restore on a new device [%hhu]", "WiFiManagerPrivateMacNetworksEvaluateSanitizeRequired", *(a1 + 368)}];
    }

    goto LABEL_10;
  }

  if (*(a1 + 368))
  {
    goto LABEL_8;
  }

  *(a1 + 368) = 1;
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s WFMacRandomisation : private MAC networks need to be sanitized due to device reboot [%hhu]", "WiFiManagerPrivateMacNetworksEvaluateSanitizeRequired", *(a1 + 368)}];
  }

LABEL_10:

  objc_autoreleasePoolPop(v2);
}

void sub_10015724C(uint64_t a1)
{
  if (a1)
  {
    if (!sub_10000A154(a1))
    {
      sub_1000952C0();
      sub_100094FFC();
      v7 = 0;
      v8 = v2;
      v9 = 0;
      v3 = *(a1 + 112);
      sub_1000083DC();
      CFSetApplyFunction(v4, v5, context);
    }
  }
}

void sub_1001572A8(uint64_t a1)
{
  v3 = *(a1 + 480);
  Current = CFAbsoluteTimeGetCurrent();
  v5 = CFAbsoluteTimeGetCurrent();
  v6 = CFDateCreate(kCFAllocatorDefault, v5);
  v7 = +[NSUserDefaults standardUserDefaults];
  if (_os_feature_enabled_impl())
  {
    v133 = 1;
  }

  else
  {
    v133 = [(NSUserDefaults *)v7 BOOLForKey:@"PrivateMACAirplayNetworkEnabled"];
  }

  v127 = _os_feature_enabled_impl();
  if (sub_10000A154(a1))
  {
    goto LABEL_160;
  }

  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  bytes[0] = v8;
  bytes[1] = v8;
  v9 = sub_10000A154(a1);
  if (v6 && !v9)
  {
    v10 = sub_10001769C(a1, @"RotationKeyDateMacRandomisation");
    v11 = v10;
    AbsoluteTime = 0.0;
    if (v10)
    {
      v13 = CFGetTypeID(v10);
      if (v13 == CFDateGetTypeID())
      {
        AbsoluteTime = CFDateGetAbsoluteTime(v11);
      }
    }

    v14 = CFDateGetAbsoluteTime(v6);
    if (v14 > 0.0 && AbsoluteTime > 0.0 && v14 - AbsoluteTime >= *(a1 + 400))
    {
      v15 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation : rotation Key being updated. Last generated time : <%@>", "__WiFiManagerPrivateMacProcessRotationKey", v11}];
      }

      objc_autoreleasePoolPop(v15);
      if (SecRandomCopyBytes(kSecRandomDefault, 0x20uLL, bytes))
      {
        v16 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: Error: Failed to generate rotation Key for mac randomisation", "__WiFiManagerPrivateMacProcessRotationKey", v119}];
        }
      }

      else
      {
        v17 = *(a1 + 416);
        if (v17)
        {
          CFRelease(v17);
          *(a1 + 416) = 0;
        }

        v18 = CFDataCreate(kCFAllocatorDefault, bytes, 32);
        *(a1 + 416) = v18;
        sub_10007393C(a1, @"RotationKeyMacRandomisation", v18, 0);
        sub_10007393C(a1, @"RotationKeyDateMacRandomisation", v6, 0);
        v16 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s WFMacRandomisation : rotation : new rotation key  : %@", "__WiFiManagerPrivateMacProcessRotationKey", *(a1 + 416)}];
        }
      }

      objc_autoreleasePoolPop(v16);
    }
  }

  if (*(a1 + 360) && (sub_100020170(a1), v19) && (v20 = v19, (Count = CFArrayGetCount(v19)) != 0))
  {
    v126 = v6;
    v132 = sub_100072D44(a1);
    v125 = sub_100021720(a1);
    v21 = CFAbsoluteTimeGetCurrent();
    cf = CFDateCreate(kCFAllocatorDefault, v21);
    v130 = a1;
    v134 = v20;
    if (!sub_10000A154(a1))
    {
      v124 = *(a1 + 496) && [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor isSetupCompleted];
      if (CFArrayGetCount(v20) >= 1)
      {
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v20, 0);
          if (!ValueAtIndex)
          {
            goto LABEL_73;
          }

          v23 = ValueAtIndex;
          v24 = CFGetTypeID(ValueAtIndex);
          if (v24 != sub_10009D190())
          {
            goto LABEL_73;
          }

          if (!*(v130 + 384))
          {
            goto LABEL_73;
          }

          v1 = sub_10000A878(v23);
          v25 = sub_10000A540(v23, @"MacAddressRandomisationTagMigratedNetwork");
          v26 = sub_10000A540(v23, @"NetworkUsedForSWUpgrade");
          if (!v25)
          {
            goto LABEL_73;
          }

          if (v25 != kCFBooleanTrue)
          {
            goto LABEL_73;
          }

          v27 = v26;
          v28 = sub_10000A540(v23, @"PrivateMacJoinDateAfterUpgrade");
          if (!v28)
          {
            goto LABEL_73;
          }

          v29 = v28;
          v30 = sub_100034EEC(v23, @"MacAddressRandomisationClassificationAttempts");
          if (!v30)
          {
            v55 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              sub_1000952A0();
              [v56 WFLog:? message:?];
            }

            objc_autoreleasePoolPop(v55);
            v57 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              sub_1000952A0();
              [v58 WFLog:? message:?];
            }

            objc_autoreleasePoolPop(v57);
            sub_10000AD34(v23, @"MacAddressRandomisationTagMigratedNetwork", 0);
            sub_10000AD34(v23, @"MacAddressRandomisationClassificationAttempts", 0);
            sub_10000AD34(v23, @"PrivateMacClassifyInterval", 0);
            sub_10000AD34(v23, @"PrivateMacJoinDateAfterUpgrade", 0);
            goto LABEL_73;
          }

          v31 = v30;
          v32 = sub_10000A540(v23, @"PRIVATE_MAC_ADDRESS");
          if (v32)
          {
            v33 = v32;
            TypeID = CFDictionaryGetTypeID();
            if (TypeID == CFGetTypeID(v33))
            {
              break;
            }
          }

          v53 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            v119 = v1;
            v122 = v29;
            sub_10001EC70();
LABEL_66:
            [v54 WFLog:? message:?];
          }

LABEL_67:
          objc_autoreleasePoolPop(v53);
LABEL_73:
          sub_100010294();
          if (v39)
          {
            goto LABEL_75;
          }
        }

        sub_100034EEC(v23, @"PrivateMacClassifyInterval");
        v35 = sub_1000952E4();
        v36 = CFDateGetAbsoluteTime(v35);
        if (sub_10000A540(v23, @"PrivateMacFutureMacAddress"))
        {
          goto LABEL_73;
        }

        v37 = 86400;
        if (TypeID)
        {
          v37 = TypeID;
        }

        if (v21 - v36 <= v37)
        {
          v38 = v124;
          if (!v27)
          {
            v38 = 0;
          }

          v39 = v38 && v27 == kCFBooleanTrue;
          if (!v39)
          {
            goto LABEL_73;
          }
        }

        v40 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v122 = v29;
          v123 = v31;
          sub_1000952A0();
          [v41 WFLog:? message:?];
        }

        objc_autoreleasePoolPop(v40);
        v42 = CFDataCreate(kCFAllocatorDefault, (v130 + 452), 6);
        v44 = *(v130 + 416);
        v43 = *(v130 + 424);
        sub_10000A878(v23);
        v45 = sub_100094FB0();
        v48 = sub_100177A18(v45, v46, v42, v47);
        sub_10000AD34(v23, @"RotationKeyUsed", *(v130 + 416));
        v49 = sub_100011334();
        MutableCopy = CFDictionaryCreateMutableCopy(v49, v50, v33);
        v52 = sub_100059228(1);
        CFDictionarySetValue(MutableCopy, @"PRIVATE_MAC_ADDRESS_TYPE", v52);
        if (v52)
        {
          CFRelease(v52);
        }

        sub_10000AD34(v23, @"PrivateMacFutureMacAddress", v48);
        sub_10000AD34(v23, @"NetworkUsedForSWUpgrade", 0);
        if (v48)
        {
          CFRelease(v48);
        }

        v20 = v134;
        if (v42)
        {
          CFRelease(v42);
        }

        sub_10000AD34(v23, @"PRIVATE_MAC_ADDRESS", MutableCopy);
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        sub_10000AD34(v23, @"MacGenerationTimeStamp", cf);
        sub_10000AD34(v23, @"ResetCaptiveProbe", kCFBooleanTrue);
        sub_10000AD34(v23, @"NoAssociationWithNewMac", kCFBooleanTrue);
        v53 = objc_autoreleasePoolPush();
        if (!off_100298C40)
        {
          goto LABEL_67;
        }

        sub_1000952A0();
        goto LABEL_66;
      }
    }

LABEL_75:
    if (cf)
    {
      CFRelease(cf);
    }

    if (Count >= 1)
    {
      v131 = 0;
      v59 = 0;
      v60 = 0;
      while (1)
      {
        v61 = CFArrayGetValueAtIndex(v20, v59);
        if (!v61 || (v62 = v61, v63 = CFGetTypeID(v61), v63 != sub_10009D190()))
        {
          v6 = v126;
          goto LABEL_151;
        }

        if (v132)
        {
          v60 = sub_10000AA64(v132, v62);
        }

        sub_10000A540(v62, @"LinkDownTimestamp");
        v64 = sub_100095320();
        v65 = sub_10000A540(v64, @"lastUpdated");
        v66 = sub_10000A540(v62, @"MacAddressRandomisationTagMigratedNetwork");
        v67 = sub_10000A540(v62, @"BlockRotation");
        v68 = sub_10000A540(v62, @"PresentInKnownNetworks");
        if (v133)
        {
          v131 = sub_10001D200(v60);
        }

        v69 = sub_100022834(v60);
        if (v1)
        {
          v70 = v5 - CFDateGetAbsoluteTime(v1);
          if (!v68)
          {
            goto LABEL_105;
          }
        }

        else
        {
          v70 = 0.0;
          if (!v68)
          {
            goto LABEL_105;
          }
        }

        if (v68 != kCFBooleanTrue)
        {
LABEL_105:
          if (v65 && v5 - CFDateGetAbsoluteTime(v65) > *(v130 + 388))
          {
            v84 = objc_autoreleasePoolPush();
            v20 = v134;
            if (off_100298C40)
            {
              v117 = sub_10000A878(v62);
              [sub_10002147C() WFLog:v117 message:?];
            }

            objc_autoreleasePoolPop(v84);
            CFArrayRemoveValueAtIndex(v134, v59);
            Count = CFArrayGetCount(v134);
            --v59;
            goto LABEL_111;
          }

LABEL_110:
          v20 = v134;
          goto LABEL_111;
        }

        v71 = sub_10000A540(v62, @"NoAssociationWithNewMac");
        if (v66 == kCFBooleanTrue && v66 != 0)
        {
          goto LABEL_110;
        }

        v20 = v134;
        if (!v71 || v71 == kCFBooleanTrue || v67 || v71 != kCFBooleanFalse)
        {
          goto LABEL_111;
        }

        v73 = sub_10000A540(v62, @"FirstJoinWithNewMacTimestamp");
        v74 = CFDateGetAbsoluteTime(v73);
        v75 = sub_10000A540(v62, @"PRIVATE_MAC_ADDRESS");
        v1 = v130;
        v76 = CFDataCreate(kCFAllocatorDefault, (v130 + 452), 6);
        Value = CFDictionaryGetValue(v75, @"PRIVATE_MAC_ADDRESS_TYPE");
        v78 = sub_10000AC54(Value);
        if (!(v131 | v69) || v78 != 2)
        {
          break;
        }

        if (v70 < *(v130 + 408))
        {
          if (v5 - CFDateGetAbsoluteTime(v73) < (7 * *(v130 + 400)))
          {
            goto LABEL_137;
          }

          v79 = *(v130 + 424);
          sub_10000A878(v62);
          v80 = sub_100024F1C();
          v81 = v76;
          v83 = sub_100177C58(v80, v76, v82);
          sub_10000AD34(v62, @"RotationKeyUsed", 0);
          v1 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            goto LABEL_117;
          }

          goto LABEL_118;
        }

        v97 = *(v130 + 424);
        sub_10000A878(v62);
        v98 = sub_100024F1C();
        cfa = v76;
        v83 = sub_100177C58(v98, v76, v99);
        sub_10000AD34(v62, @"RotationKeyUsed", 0);
        v100 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v120 = sub_10000A878(v62);
          [sub_10002D390() WFLog:"__WiFiManagerPrivateMacScanDataCleanupTimerCallback" message:{v120, *(v130 + 408)}];
        }

        objc_autoreleasePoolPop(v100);
        if (&_CNForgetSSID)
        {
          v107 = sub_10001CA74(v60);
          sub_10015C50C(v107);
          v1 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            v118 = sub_10000A878(v60);
            [sub_10002147C() WFLog:v118 message:{v119, v122, v123}];
          }

          goto LABEL_122;
        }

        v76 = cfa;
        if (!v83)
        {
          goto LABEL_135;
        }

LABEL_129:
        if (!v75)
        {
LABEL_135:
          if (!v83)
          {
            goto LABEL_137;
          }

          goto LABEL_136;
        }

        v1 = v76;
        v101 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v75);
        sub_10000AD34(v62, @"PrivateMacFutureMacAddress", v83);
        sub_10000AD34(v62, @"PRIVATE_MAC_ADDRESS", v101);
        if (v101)
        {
          CFRelease(v101);
        }

        sub_10000AD34(v62, @"MacGenerationTimeStamp", v126);
        sub_10000AD34(v62, @"ResetCaptiveProbe", kCFBooleanTrue);
        sub_10000AD34(v62, @"NoAssociationWithNewMac", kCFBooleanTrue);
        v102 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v121 = sub_10000A878(v62);
          [sub_10001DB84() WFLog:"__WiFiManagerPrivateMacScanDataCleanupTimerCallback" message:{v121, v126, v83}];
        }

        objc_autoreleasePoolPop(v102);
        sub_100034EEC(v62, @"TotalRotationsThisBuild");
        v103 = sub_10000D80C();
        sub_10000C614(v103, v104, v105);
        v76 = v1;
LABEL_136:
        CFRelease(v83);
LABEL_137:
        if (v76)
        {
          goto LABEL_138;
        }

LABEL_111:
        if (++v59 >= Count)
        {
          goto LABEL_145;
        }
      }

      v85 = *(v130 + 404);
      if (v127)
      {
        if (v5 - v74 < v85)
        {
          goto LABEL_137;
        }

        v81 = v76;
        if (v78 != 2)
        {
          v106 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            sub_10000A878(v62);
            [sub_100029DB0() WFLog:? message:?];
          }

          objc_autoreleasePoolPop(v106);
          if (!v76)
          {
            goto LABEL_111;
          }

LABEL_138:
          CFRelease(v76);
          goto LABEL_111;
        }

        v87 = *(v130 + 416);
        v86 = *(v130 + 424);
        sub_10000A878(v62);
        v88 = sub_10000DAB4();
        v83 = sub_100177A18(v88, v89, v81, v90);
        sub_10000AD34(v62, @"RotationKeyUsed", *(v130 + 416));
        v1 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
LABEL_117:
          sub_10000A878(v62);
          [sub_100029DB0() WFLog:? message:?];
        }

LABEL_118:
        v76 = v81;
      }

      else
      {
        if (v70 < v85)
        {
          goto LABEL_137;
        }

        v91 = v76;
        v93 = *(v130 + 416);
        v92 = *(v130 + 424);
        sub_10000A878(v62);
        v94 = sub_10000DAB4();
        cfa = v91;
        v83 = sub_100177A18(v94, v95, v91, v96);
        sub_10000AD34(v62, @"RotationKeyUsed", *(v130 + 416));
        v1 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          sub_10000A878(v62);
          [sub_100029DB0() WFLog:v116 message:{v119, v122, v123}];
        }

LABEL_122:
        v76 = cfa;
      }

      objc_autoreleasePoolPop(v1);
      if (!v83)
      {
        goto LABEL_135;
      }

      goto LABEL_129;
    }

LABEL_145:
    v108 = v3 + Current;
    sub_1000950F8();
    sub_1001610C0();
    v6 = v126;
    if (v109)
    {
      sub_100011414();
      sub_100161270();
      if (!v114)
      {
        v115 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"WFMacRandomisation : Scheduled cleanup complete but unable to flush private mac networks to cache %@", v126}];
        }

        objc_autoreleasePoolPop(v115);
      }
    }

    v110 = CFDateCreate(kCFAllocatorDefault, v108);
    if (v110)
    {
      v111 = v110;
      v112 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"WFMacRandomisation : Private Mac scan database cleanup complete. Next scheduled cleanup check at %@", v111}];
      }

      objc_autoreleasePoolPop(v112);
      CFRelease(v111);
    }

LABEL_151:
    v113 = v125;
    if (v6)
    {
      goto LABEL_152;
    }
  }

  else
  {
LABEL_160:
    v113 = 0;
    if (v6)
    {
LABEL_152:
      CFRelease(v6);
    }
  }

  if (v113)
  {
    CFRelease(v113);
  }
}

void sub_1001581B4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1)
  {
    if (objc_opt_class())
    {
      v3 = [FBSDisplayLayoutMonitor alloc];
      sub_10000755C();
      v7 = 3221225472;
      v8 = sub_100002C10;
      v9 = &unk_100260BA8;
      v10 = a1;
      *(a1 + 2160) = [v4 initWithDisplayType:0 handler:v6];
    }
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: manager is Null!", "__WiFiManagerTrackFrontBoardDisplayState"}];
    }

    objc_autoreleasePoolPop(v5);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100158290(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 2696);
    if (v2 != 2 && (v2 != 1 || *(a1 + 2700) >= 1))
    {
      v3 = sub_10000836C();
      Mutable = CFDictionaryCreateMutable(v3, v4, v5, v6);
      if (Mutable)
      {
        v8 = Mutable;
        valuePtr = *(a1 + 2692);
        v9 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
        if (v9)
        {
          v10 = v9;
          v11 = sub_100007514();
          CFDictionaryAddValue(v11, v12, v13);
          CFRelease(v10);
          v34 = *(a1 + 2696);
          v14 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v34);
          if (v14)
          {
            v15 = v14;
            v16 = sub_100007514();
            CFDictionaryAddValue(v16, v17, v18);
            CFRelease(v15);
            v33 = *(a1 + 2700) != 0;
            v19 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v33);
            if (v19)
            {
              v20 = v19;
              v21 = sub_10000D818();
              CFDictionaryAddValue(v21, v22, v23);
              CFRelease(v20);
              sub_1000950B8();
              context[0] = a1;
              context[1] = v24;
              context[2] = v8;
              context[3] = 1;
              context[4] = 0;
              v25 = *(a1 + 112);
              sub_1000083DC();
              CFSetApplyFunction(v26, v27, context);
              v28 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:4 message:{"Usb Host Notification Apple80211Set: seqNum %d Total %d chg %d Presence %d \n", valuePtr, *(a1 + 2700), *(a1 + 2696), v33}];
              }

              objc_autoreleasePoolPop(v28);
              ++*(a1 + 2692);
              goto LABEL_12;
            }

            v30 = objc_autoreleasePoolPush();
            v31 = off_100298C40;
            if (off_100298C40)
            {
              v32 = "Usb Host Notification Error CFNumberCreate usbPresence\n";
              goto LABEL_25;
            }

LABEL_26:
            objc_autoreleasePoolPop(v30);
LABEL_12:
            CFRelease(v8);
            return;
          }

          v30 = objc_autoreleasePoolPush();
          v31 = off_100298C40;
          if (!off_100298C40)
          {
            goto LABEL_26;
          }

          v32 = "Usb Host Notification Error CFNumberCreate usbChange\n";
        }

        else
        {
          v30 = objc_autoreleasePoolPush();
          v31 = off_100298C40;
          if (!off_100298C40)
          {
            goto LABEL_26;
          }

          v32 = "Usb Host Notification Error CFNumberCreate sequenceNum\n";
        }

LABEL_25:
        [v31 WFLog:4 message:v32];
        goto LABEL_26;
      }

      v29 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:"Usb Host Notification Error creating notificationDict\n"];
      }

      objc_autoreleasePoolPop(v29);
    }
  }
}

void sub_100158510(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      sub_100095020();
      sub_100094FFC();
      v9 = v2;
      v10 = v3;
      v11 = 0;
      v5 = *(v4 + 112);
      sub_1000083DC();
      CFSetApplyFunction(v6, v7, context);
    }
  }
}

void sub_10015855C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      sub_100095020();
      sub_100094FFC();
      v9 = v2;
      v10 = v3;
      v11 = 0;
      v5 = *(v4 + 112);
      sub_1000083DC();
      CFSetApplyFunction(v6, v7, context);
    }
  }
}

void sub_1001585A8(uint64_t a1, const void *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1)
  {
    if (a2)
    {
      if (*(a1 + 200))
      {
        v5 = CFGetTypeID(a2);
        if (v5 == CFDictionaryGetTypeID())
        {
          [*(a1 + 200) setLocaleTestParams:a2];
        }
      }
    }
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: manager is null", "__WiFiManagerSetLocaleTestParams"}];
    }

    objc_autoreleasePoolPop(v6);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_10015866C(uint64_t a1)
{
  keys[0] = @"appPolicyUUID";
  keys[1] = @"appPolicyState";
  values[0] = @"CB06911C-82BE-44A9-8359-F8C02AAF82DB";
  values[1] = kCFBooleanTrue;
  v2 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v2)
  {
    v3 = v2;
    if (!*(a1 + 2528))
    {
      *(a1 + 2528) = 1;
      if (MGGetBoolAnswer())
      {
        if (*(a1 + 322) && [+[WiFiUserInteractionMonitor isCallKitActive] sharedInstance]
        {
          v4 = *(a1 + 1584);
          if ([v4 isMegaWiFiProfileInstalled])
          {
            if (*(a1 + 2520) != 0.0)
            {
              *(a1 + 2520) = 0;
            }
          }

          else
          {
            [v4 installMegaWiFiProfile];
            *(a1 + 2516) = 1;
            *(a1 + 2520) = 0;
            v5 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: MegaWiFiProfile has been installed", "WiFiManagerWiFiFaceTimeCallStart"}];
            }

            objc_autoreleasePoolPop(v5);
          }
        }
      }
    }

    context[0] = a1;
    context[1] = 0xAAAAAAAA00000041;
    context[2] = v3;
    context[3] = 1;
    context[4] = 0;
    v6 = *(a1 + 112);
    sub_1000083DC();
    CFSetApplyFunction(v7, v8, context);
    CFRelease(v3);
  }
}

void sub_100158814(uint64_t a1)
{
  keys[0] = @"appPolicyUUID";
  keys[1] = @"appPolicyState";
  values[0] = @"CB06911C-82BE-44A9-8359-F8C02AAF82DB";
  values[1] = kCFBooleanFalse;
  v2 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v2)
  {
    v3 = v2;
    if (*(a1 + 2528))
    {
      *(a1 + 2528) = 0;
      if (MGGetBoolAnswer())
      {
        if (*(a1 + 2516))
        {
          v4 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: MegaWiFiProfile has been scheduled for removal", "WiFiManagerWiFiFaceTimeCallEnd"}];
          }

          objc_autoreleasePoolPop(v4);
          *(a1 + 2520) = CFAbsoluteTimeGetCurrent();
        }
      }
    }

    context[0] = a1;
    context[1] = 0xAAAAAAAA00000041;
    context[2] = v3;
    context[3] = 1;
    context[4] = 0;
    v5 = *(a1 + 112);
    sub_1000083DC();
    CFSetApplyFunction(v6, v7, context);
    CFRelease(v3);
  }
}

void sub_100158974(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v20 = @"appPolicyUUID";
  v21 = @"appPolicyState";
  v19 = kCFBooleanTrue;
  v9 = sub_10001E2A4(kCFAllocatorDefault, a2, a3, a4, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks, a7, a8, v15[0], v15[1], v16, v17, v18, @"kApple80211KeyGameModeUUIDString");
  if (v9)
  {
    v10 = v9;
    if (!*(a1 + 2529))
    {
      *(a1 + 2529) = 1;
    }

    sub_100094F98();
    v16 = v10;
    v17 = v11;
    v18 = 0;
    v12 = *(a1 + 112);
    sub_1000083DC();
    CFSetApplyFunction(v13, v14, v15);
    CFRelease(v10);
  }
}

void sub_100158A58(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v20 = @"appPolicyUUID";
  v21 = @"appPolicyState";
  v19 = kCFBooleanFalse;
  v9 = sub_10001E2A4(kCFAllocatorDefault, a2, a3, a4, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks, a7, a8, v15[0], v15[1], v16, v17, v18, @"kApple80211KeyGameModeUUIDString");
  if (v9)
  {
    v10 = v9;
    if (*(a1 + 2529))
    {
      *(a1 + 2529) = 0;
    }

    sub_100094F98();
    v16 = v10;
    v17 = v11;
    v18 = 0;
    v12 = *(a1 + 112);
    sub_1000083DC();
    CFSetApplyFunction(v13, v14, v15);
    CFRelease(v10);
  }
}

uint64_t sub_100158B38(uint64_t a1, const void *a2, int a3)
{
  v5 = sub_100020030(*(a1 + 32));
  if (v5)
  {
    v6 = v5;
    Count = CFArrayGetCount(v5);
    if (Count < 1)
    {
      v10 = 0;
    }

    else
    {
      v8 = Count;
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = sub_10002CF50();
        ValueAtIndex = CFArrayGetValueAtIndex(v11, v12);
        v14 = sub_100010908(ValueAtIndex);
        if (v14 && sub_100009664(v14))
        {
          v10 = sub_1000C9C2C(ValueAtIndex, a2, a3);
        }

        ++v9;
      }

      while (v8 != v9);
    }

    CFRelease(v6);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void sub_100158BF4()
{
  sub_10000FC44();
  v1 = v0;
  v3 = sub_100020030(*(v2 + 32));
  if (v3)
  {
    v4 = v3;
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v6 = Count;
      for (i = 0; i != v6; ++i)
      {
        v8 = sub_100057F7C();
        ValueAtIndex = CFArrayGetValueAtIndex(v8, v9);
        v11 = sub_100010908(ValueAtIndex);
        if (v11)
        {
          v12 = sub_100009664(v11);
          if (v12)
          {
            sub_10018F27C(ValueAtIndex, v12, v1);
            if (v13)
            {
              v14 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:"%s: NDD trigger failed[%d]\n"];
              }

              objc_autoreleasePoolPop(v14);
            }
          }
        }
      }
    }

    CFRelease(v4);
  }

  sub_1000113F8();
}

uint64_t sub_100158CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1 || !*(a1 + 1888))
  {
    return 4294963389;
  }

  result = 4294963396;
  if (a3 && a4)
  {
    if (a5)
    {
      v7[0] = CWFNDDREQUESTPARAMSKEY;
      v7[1] = CWFNDDREQUESTCLIENTKEY;
      v8[0] = a3;
      v8[1] = a4;
      return [*(a1 + 1888) handleRequest:a2 withData:+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary interface:{"dictionaryWithObjects:forKeys:count:", v8, v7, 2), a5}];
    }
  }

  return result;
}

void sub_100158DBC()
{
  sub_1000953C8();
  v32 = v0;
  v33 = v4;
  v6 = v5;
  v7 = v3;
  v8 = v2;
  v9 = v1;
  v10 = *(v1 + 2296);
  if (v10 == v2)
  {
    v11 = 1;
  }

  else
  {
    *(v1 + 2296) = v2;
    v11 = v2;
  }

  v12 = *(v1 + 2304);
  if (!v3)
  {
    if (!v12)
    {
      v15 = 0;
      goto LABEL_25;
    }

    v16 = *(v1 + 2304);
LABEL_22:
    CFRelease(v16);
    *(v9 + 2304) = 0;
LABEL_23:
    v11 = *(v9 + 2296);
    v15 = 1;
    goto LABEL_25;
  }

  if (v12)
  {
    v13 = CFEqual(v3, v12);
    v14 = *(v9 + 2304);
    if (v13)
    {
      v15 = 0;
      goto LABEL_13;
    }

    if (v14)
    {
      CFRelease(v14);
      *(v9 + 2304) = 0;
    }
  }

  v14 = CFRetain(v7);
  *(v9 + 2304) = v14;
  v15 = 1;
LABEL_13:
  if (!v14)
  {
    goto LABEL_25;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (Current >= CFDateGetAbsoluteTime(*(v9 + 2304)))
  {
    if (!*(v9 + 2296))
    {
      goto LABEL_25;
    }

    v19 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v25 = sub_10007B01C(*(v9 + 2296));
      [sub_10002147C() WFLog:"WiFiManagerSetJoinRecommendationMode" message:v25];
    }

    objc_autoreleasePoolPop(v19);
    v16 = *(v9 + 2304);
    if (!v16)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v18 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: join recommendation is disabled by user until %@", "WiFiManagerSetJoinRecommendationMode", *(v9 + 2304)}];
  }

  objc_autoreleasePoolPop(v18);
  v11 = 0;
LABEL_25:
  sub_1000348F4();
  v28 = 26;
  v29 = v11;
  v30 = 1;
  v31 = 0;
  v20 = *(v9 + 112);
  sub_1000083DC();
  CFSetApplyFunction(v21, v22, context);
  if (v10 == v8)
  {
    if (!v15)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v23 = sub_10007B01C(*(v9 + 2296));
    if (v23)
    {
      sub_10007393C(v9, @"JoinRecommendationMode", v23, v6);
    }

    if (!v15)
    {
      goto LABEL_32;
    }
  }

  sub_10007393C(v9, @"JoinRecommendationDisabledUntil", *(v9 + 2304), v6);
LABEL_32:
  v24 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v26 = sub_10007B01C(*(v9 + 2296));
    [sub_10000DAC0() WFLog:"WiFiManagerSetJoinRecommendationMode" message:{v26, *(v9 + 2304)}];
  }

  objc_autoreleasePoolPop(v24);
LABEL_35:
  sub_100020CB0();
}

CFArrayRef sub_100158FF4(CFArrayRef result)
{
  if (result)
  {
    v3 = result;
    result = *(result + 13);
    if (result)
    {
      result = CFSetGetCount(result);
      if (result)
      {
        sub_10009538C();
        v5 = __chkstk_darwin(v4);
        sub_10009508C(v5, v6, v7, v8, v9, v10, v11, v12, v13);
        CFSetGetValues(*(v3 + 13), v2);
        return CFArrayCreate(kCFAllocatorDefault, v2, v1, &kCFTypeArrayCallBacks);
      }
    }
  }

  return result;
}

CFMutableArrayRef sub_1001590AC(uint64_t a1, const __CFString *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = sub_100020110(a1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (Mutable && CFArrayGetCount(v4) >= 1)
  {
    do
    {
      v6 = sub_100057F7C();
      ValueAtIndex = CFArrayGetValueAtIndex(v6, v7);
      if (ValueAtIndex)
      {
        v9 = sub_1000A1D68(ValueAtIndex);
        if (v9)
        {
          if (CFStringCompare(v9, a2, 0) == kCFCompareEqualTo)
          {
            v10 = sub_100095208();
            CFArrayAppendValue(v10, v11);
            if (!CFArrayGetCount(Mutable))
            {
              if (Mutable)
              {
                CFRelease(Mutable);
                Mutable = 0;
              }
            }
          }
        }
      }

      sub_1000950C4();
    }

    while (!v12);
  }

  CFRelease(v4);
  return Mutable;
}

void sub_100159190()
{
  sub_100011520();
  if (v1)
  {
    v2 = sub_1000953A0(v1);
    if (!v2 || CFArrayGetCount(v2) < 1)
    {
      goto LABEL_18;
    }

    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v0 + 224), 0);
      if (!sub_10001CF90(ValueAtIndex) && sub_1000A1F40(ValueAtIndex))
      {
        v5 = objc_autoreleasePoolPush();
        v6 = off_100298C40;
        if (off_100298C40)
        {
          sub_10000A878(ValueAtIndex);
          [v6 WFLog:3 message:"%s: Adding %@ disabled until %@"];
        }

        objc_autoreleasePoolPop(v5);
        v7 = sub_10001EC64();
        CFArrayAppendValue(v7, v8);
      }

      sub_100021D9C();
    }

    while (!v9);
    CFArrayRemoveAllValues(*(v0 + 2200));
    if (CFArrayGetCount(Mutable) >= 1)
    {
      v10 = *(v0 + 2200);
      CFArrayGetCount(Mutable);
      v11 = sub_1000086AC();
      v17.location = 0;
      CFArrayAppendArray(v11, v12, v17);
    }

    if (Mutable)
    {
      sub_10001091C();

      CFRelease(v13);
    }

    else
    {
LABEL_18:
      sub_10001091C();
    }
  }

  else
  {
    objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"%s: null manager"];
    }

    sub_10001091C();

    objc_autoreleasePoolPop(v15);
  }
}

void sub_100159340(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CFDateRef theDate, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100011520();
  v25 = v24;
  v27 = v26;
  v28 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"%s: Checking networks disabled until date (removeAll %d)"];
  }

  objc_autoreleasePoolPop(v28);
  if (v27)
  {
    if (!*(v27 + 2200) || !sub_10000CDC4(v27) || CFArrayGetCount(*(v27 + 2200)) < 1)
    {
      goto LABEL_29;
    }

    Current = CFAbsoluteTimeGetCurrent();
    theDatea = CFDateCreate(kCFAllocatorDefault, Current);
    v30 = sub_100034FE4();
    Mutable = CFArrayCreateMutable(v30, v31, v32);
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v27 + 2200), 0);
      if (!sub_10001CF90(ValueAtIndex))
      {
        v35 = sub_1000A1F40(ValueAtIndex);
        if (v35)
        {
          v36 = v35;
          v37 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            sub_10000A878(ValueAtIndex);
            [sub_100008BD4() WFLog:? message:?];
          }

          objc_autoreleasePoolPop(v37);
          if (v25 || CFDateCompare(theDatea, v36, 0) == kCFCompareGreaterThan)
          {
            v38 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              sub_10000A878(ValueAtIndex);
              [sub_100008BD4() WFLog:? message:?];
            }

            objc_autoreleasePoolPop(v38);
            CFArrayAppendValue(Mutable, ValueAtIndex);
          }
        }
      }

      sub_1000951A8();
    }

    while (!v39);
    Count = CFArrayGetCount(Mutable);
    if (Count >= 1)
    {
      v41 = Count;
      for (i = 0; i != v41; ++i)
      {
        v43 = sub_10000DAB4();
        v45 = CFArrayGetValueAtIndex(v43, v44);
        sub_10009FF90(v45, 0);
        sub_10009FEC0(v45, 1);
        v46 = sub_10002CF50();
        sub_100081EDC(v46, v47, 1);
      }

      sub_100159190();
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (theDatea)
    {
      sub_10001091C();

      CFRelease(v48);
    }

    else
    {
LABEL_29:
      sub_10001091C();
    }
  }

  else
  {
    objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"%s: null manager"];
    }

    sub_10001091C();

    objc_autoreleasePoolPop(v50);
  }
}

void sub_1001595CC(uint64_t a1)
{
  if (a1)
  {
    sub_100008C40();
    if (v3 && CFArrayGetCount(v2) >= 1)
    {
      v4 = 0;
      do
      {
        v5 = sub_100003924();
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v6);
        if (ValueAtIndex)
        {
          sub_10000AD34(ValueAtIndex, @"forceBGScanParamsCompare", kCFBooleanTrue);
        }

        ++v4;
      }

      while (v4 < CFArrayGetCount(v2));
    }

    sub_1000952C0();
    sub_100094FFC();
    v13 = v2;
    v14 = v8;
    v15 = 0;
    v9 = *(v1 + 112);
    sub_1000083DC();
    CFSetApplyFunction(v10, v11, context);
  }
}

BOOL sub_100159688(uint64_t a1, const void *a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (*(a1 + 184))
    {
      CFArrayGetCount(*(a1 + 184));
      v5 = sub_1000305C4();
      v6.location = 0;
      return CFArrayContainsValue(v5, v6, a2) != 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001596EC(uint64_t a1, int a2, CFTypeRef cf)
{
  result = *(a1 + 784);
  if ((cf != 0) == (result != 0))
  {
    v7 = *(a1 + 776);
    if (cf && result)
    {
      result = CFEqual(result, cf);
      if (result && v7 == a2)
      {
        return result;
      }

      result = *(a1 + 784);
    }

    else if (v7 == a2)
    {
      return result;
    }
  }

  *(a1 + 776) = a2;
  if (result)
  {
    CFRelease(result);
    *(a1 + 784) = 0;
  }

  if (cf)
  {
    *(a1 + 784) = CFRetain(cf);
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: test network %@", "WiFiManagerSetATJTestModeEnabled", cf}];
    }

    objc_autoreleasePoolPop(v8);
  }

  context[0] = a1;
  context[1] = 0xAAAAAAAAAAAAAAAALL;
  sub_100015E50();
  v9 = *(a1 + 112);
  sub_1000083DC();
  CFSetApplyFunction(v10, v11, context);
  v12 = &kCFBooleanFalse;
  if (a2)
  {
    v12 = &kCFBooleanTrue;
  }

  sub_10007393C(a1, @"ATJTestModeEnabled", *v12, 0);
  return sub_10007393C(a1, @"ATJTestNetworkSSID", cf, 0);
}

void sub_10015983C(uint64_t a1)
{
  v1 = *(a1 + 2112);
  v2 = v1 - 1;
  if (v1 >= 1)
  {
    *(a1 + 2112) = v2;
    v4 = objc_autoreleasePoolPush();
    if (v2)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: refCount %ld", "WiFiManagerStopDiagnosticsTimer", *(a1 + 2112)}];
      }

      objc_autoreleasePoolPop(v4);
    }

    else
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"Stopping Diagnostics Timer"];
      }

      objc_autoreleasePoolPop(v4);
      v5 = *(a1 + 2096);
      sub_10000FC1C();

      dispatch_source_set_timer(v6, v7, v8, v9);
    }
  }
}

void sub_100159928()
{
  sub_10000FC44();
  if (v3)
  {
    v4 = v2;
    sub_100094FF0();
    if (!sub_1000243A0(v5) || !v1 || !*(v0 + 1408))
    {
      goto LABEL_27;
    }

    v6 = objc_autoreleasePoolPush();
    v7 = *(v0 + 1408);
    if (v4)
    {
      if (*(v0 + 1408))
      {
        v8 = sub_10001B368(v1);
        v9 = v8;
        if (v8)
        {
          v10 = [v8 identifier];
          if (v10)
          {
            v11 = v10;
            v12 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:"%s: removing network from class C storage. Reason: %d"];
            }

            objc_autoreleasePoolPop(v12);
            [*(v0 + 1104) setObject:0 forKey:v11];
            [*(v0 + 1104) synchronize];
            +[WiFiXPCManager sharedXPCManager];
            [v9 deepCopy];
            [sub_1000305C4() sendKnownNetworkDidChangeEventForProfile:? previous:? eventType:?];
          }
        }
      }

      else
      {
        v9 = 0;
      }

      objc_autoreleasePoolPop(v6);

      goto LABEL_27;
    }

    if (*(v0 + 1408) && (v13 = sub_10009D420(v1)) != 0)
    {
      v14 = v13;
      v15 = sub_10000AD2C(kCFAllocatorDefault, v13);
      if (v15)
      {
        v16 = v15;
        v17 = sub_10001B368(v15);
        v18 = v17;
        if (v17)
        {
          v19 = [v17 identifier];
          if (v19)
          {
            v20 = [v18 externalForm];
            if (v20)
            {
              v21 = v20;
              v22 = [*(v0 + 1104) objectForKey:v19];
              if (v22)
              {
                v23 = [[CWFNetworkProfile alloc] initWithExternalForm:v22];
              }

              else
              {
                v23 = 0;
              }

              [*(v0 + 1104) setObject:v21 forKey:v19];
              [*(v0 + 1104) synchronize];
              v24 = +[WiFiXPCManager sharedXPCManager];
              if (v22)
              {
                [v24 sendKnownNetworkDidChangeEventForProfile:v18 previous:v23 eventType:2];
              }

              else
              {
                [v24 sendKnownNetworkDidChangeEventForProfile:v18 previous:0 eventType:1];
              }
            }
          }
        }

        objc_autoreleasePoolPop(v6);
        CFRelease(v14);
        CFRelease(v16);
        goto LABEL_26;
      }

      objc_autoreleasePoolPop(v6);
      CFRelease(v14);
    }

    else
    {
      objc_autoreleasePoolPop(v6);
    }

    v18 = 0;
LABEL_26:

    goto LABEL_27;
  }

  v25 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"%s: manager is NULL"];
  }

  objc_autoreleasePoolPop(v25);
LABEL_27:
  sub_1000113F8();
}

uint64_t sub_100159BD0(uint64_t a1, const __CFArray *a2, void *a3)
{
  v127 = a2;
  valuePtr = a3;
  Count = 0;
  idx = -1;
  v4 = "WiFiManagerAddNetwork";
  if (!a1)
  {
    v86 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null manager", "WiFiManagerAddNetwork"}];
    }

    goto LABEL_122;
  }

  v5 = a2;
  if (!a2)
  {
    v86 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiManagerAddNetwork"}];
    }

LABEL_122:
    objc_autoreleasePoolPop(v86);
    v74 = 0;
    v17 = 0;
LABEL_127:
    v88 = 0;
    v89 = 0;
    goto LABEL_169;
  }

  v6 = a3;
  v7 = sub_10000A878(a2);
  v122 = sub_10000AFE4(v5);
  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    if (v122)
    {
      v9 = "domain";
    }

    else
    {
      v9 = "SSID";
    }

    v10 = v7;
    if (v122)
    {
      v10 = sub_10000A540(v5, @"DomainName");
    }

    [sub_10002147C() WFLog:"WiFiManagerAddNetwork" message:{v6, v9, v10}];
  }

  objc_autoreleasePoolPop(v8);
  if (v6 == 17 && sub_10009DB7C(v5) && sub_10009EB70(v5))
  {
    v11 = sub_100095074();
    sub_10000AD34(v11, v12, v13);
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Both WEP & WPA-PSK are set incorrectly.  Removing WPA-PSK", "WiFiManagerAddNetwork"}];
    }

    objc_autoreleasePoolPop(v6);
  }

  sub_1000CBBE4(v5);
  sub_10001769C(a1, @"kWiFiWhitelistingUUIDKey");
  v14 = sub_1000200E8();
  v15 = sub_10009ED84(v14);
  if (v15 && v6)
  {
    sub_100095470(v15, @"PolicyUUID");
    v16 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v115 = sub_10000A878(v5);
      [sub_10002147C() WFLog:"__WiFiManagerApplyWhitelistingPolicy" message:{v6, v115}];
    }

    objc_autoreleasePoolPop(v16);
  }

  v17 = sub_10009D404(v5);
  if (!v17)
  {
    goto LABEL_126;
  }

  if (!sub_100017CE4(a1, @"List of known networks"))
  {
    v87 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: __WiFiManagerGetWiFiNetworksOrPreferencesRef with kWiFiPreferenceNetworkListKey returned NULL", "WiFiManagerAddNetwork"}];
    }

    objc_autoreleasePoolPop(v87);
    goto LABEL_126;
  }

  v18 = sub_1000200E8();
  sub_10007D988(v18);
  if (!sub_10014A48C(v6))
  {
LABEL_126:
    v74 = 0;
    goto LABEL_127;
  }

  v119 = sub_10000D83C("WiFiManagerAddNetwork");
  v19 = sub_10000D7B8();
  prefs = v6;
  if (!sub_100072D44(v19))
  {
    v121 = 0;
    v118 = 0;
    v74 = 0;
    v75 = 1;
LABEL_133:
    v79 = v119;
    goto LABEL_134;
  }

  v20 = sub_100095068();
  if (sub_1000A11B4(v20))
  {
    v90 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Will not add HS2.0 network to known networks list", "WiFiManagerAddNetwork"}];
    }

    objc_autoreleasePoolPop(v90);
    v121 = 0;
    v118 = 0;
    v75 = 1;
    v74 = 1;
    goto LABEL_133;
  }

  v21 = *(a1 + 312);
  sub_10015AADC();
  v22 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s:existingIndex %ld, insertIndex %ld", "WiFiManagerAddNetwork", idx, Count}];
  }

  objc_autoreleasePoolPop(v22);
  v116 = v7;
  v117 = v17;
  if (!CFArrayGetCount("WiFiManagerAddNetwork"))
  {
    goto LABEL_29;
  }

  Mutable = 0;
  if ([+[WiFiUserInteractionMonitor isInitialSetupCompleted]|| valuePtr != 1 sharedInstance]
  {
    goto LABEL_30;
  }

  if (sub_10001769C(a1, @"IsNewInstall") == kCFBooleanFalse)
  {
LABEL_29:
    Mutable = 0;
    goto LABEL_30;
  }

  v29 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: setup not completed, filtering out non-managed known networks to retain only the new one", "WiFiManagerAddNetwork"}];
  }

  objc_autoreleasePoolPop(v29);
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    if (CFArrayGetCount("WiFiManagerAddNetwork") >= 1)
    {
      v30 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex("WiFiManagerAddNetwork", v30);
        if (ValueAtIndex)
        {
          break;
        }

LABEL_49:
        if (++v30 >= CFArrayGetCount("WiFiManagerAddNetwork"))
        {
          goto LABEL_114;
        }
      }

      v32 = ValueAtIndex;
      sub_1000086AC();
      sub_10015AC04();
      v34 = v33;
      LODWORD(context) = 1;
      v35 = sub_1000083F0();
      v37 = sub_10000A540(v35, v36);
      if (v37)
      {
        CFNumberGetValue(v37, kCFNumberIntType, &context);
      }

      if (v34)
      {
        v38 = Mutable;
        v39 = sub_1000951FC();
        CFArrayAppendValue(v39, v40);
        v41 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          goto LABEL_59;
        }
      }

      else
      {
        if (!sub_10009ED84(v32) && !sub_1000A1F04(v32))
        {
          if (context == 3)
          {
            v38 = Mutable;
            v44 = sub_1000951FC();
            CFArrayAppendValue(v44, v45);
            v41 = objc_autoreleasePoolPush();
            if (!off_100298C40)
            {
              goto LABEL_60;
            }
          }

          else
          {
            v38 = Mutable;
            v41 = objc_autoreleasePoolPush();
            if (!off_100298C40)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_59;
        }

        v38 = Mutable;
        v42 = sub_1000951FC();
        CFArrayAppendValue(v42, v43);
        v41 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
LABEL_59:
          sub_10000A878(v32);
          [sub_100029DB0() WFLog:? message:?];
        }
      }

LABEL_60:
      objc_autoreleasePoolPop(v41);
      Mutable = v38;
      goto LABEL_49;
    }

LABEL_114:
    if (Count > CFArrayGetCount(Mutable))
    {
      Count = CFArrayGetCount(Mutable);
    }

    v4 = Mutable;
  }

LABEL_30:
  v24 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  v25 = v24;
  if (v24)
  {
    sub_100095470(v24, @"WiFiManagerKnownNetworksEventType");
  }

  v118 = v25;
  Current = CFAbsoluteTimeGetCurrent();
  v27 = CFDateCreate(kCFAllocatorDefault, Current);
  if (v27)
  {
    v28 = v27;
    if (!sub_10000A540(v5, @"addedAt"))
    {
      sub_100095470(0, @"addedAt");
    }

    CFRelease(v28);
  }

  v121 = Mutable;
  v83 = sub_1000086B8();
  if (sub_10015AE80(v83, v84, v4))
  {
    v85 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Different network with same ssid found and replaced", "WiFiManagerAddNetwork"}];
    }

    objc_autoreleasePoolPop(v85);
    v75 = 0;
    v74 = 1;
LABEL_132:
    v7 = v116;
    v17 = v117;
    goto LABEL_133;
  }

  if (sub_10000C894(v5) || sub_100022834(v5))
  {
    v46 = sub_100095344();
    sub_1000A0060(v46, v47, v48);
  }

  else if (!sub_1000A0144(v5))
  {
    v81 = sub_100095338();
    sub_10009FEC0(v81, v82);
  }

  if (sub_10009EB80(v5))
  {
    v49 = kCFBooleanTrue;
  }

  else
  {
    v49 = kCFBooleanFalse;
  }

  sub_10000AD34(v5, @"ALLOW_WPA2_PSK", v49);
  v50 = sub_10009F418(v5);
  if (!v50)
  {
    v50 = sub_10009ECE4(v5);
  }

  sub_100095470(v50, @"ALLOW_OWE_TSN");
  v51 = CWFScanResultHas6GHzOnlyBSS();
  v52 = [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
  v53 = v52;
  if ((v51 & 1) != 0 || v52)
  {
    v54 = sub_10001B368(v5);
    if (v51)
    {
      +[NSDate date];
      [sub_1000305C4() setWas6GHzOnlyAt:?];
    }

    if (v53)
    {
      [v54 setNetworkOfInterestHomeState:v53];
      +[NSDate date];
      [sub_1000305C4() setNetworkOfInterestHomeStateUpdatedAt:?];
    }

    v55 = sub_100011340();
    v57 = sub_100022854(v55, v56);
    if (v57)
    {
      v58 = v57;
      v59 = sub_10001E7F0();
      sub_10009D854(v59, v60);
      CFRelease(v58);
    }
  }

  sub_1000A02D0(v5);
  if (valuePtr == 23 || sub_1000A1F04(v5) && sub_10001CF90(v5) && valuePtr == 17)
  {
    v61 = CFAbsoluteTimeGetCurrent();
    v62 = CFDateCreate(kCFAllocatorDefault, v61);
    v63 = *(a1 + 2752);
    if (v63)
    {
      v64 = 0;
      v65 = -1;
      do
      {
        if (v64 >= CFArrayGetCount(v63))
        {
          break;
        }

        v66 = CFArrayGetValueAtIndex(*(a1 + 2752), v64);
        if (v66)
        {
          v67 = v66;
          if (CFEqual(v5, v66))
          {
            v68 = sub_10000A540(v67, @"removedAt");
            if (v68)
            {
              v69 = v68;
              if (CFDateGetTimeIntervalSinceDate(v62, v68) < 86400.0)
              {
                v70 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  v114 = sub_10000A878(v5);
                  [sub_1000951CC() WFLog:"WiFiManagerAddNetwork" message:{v114, v62, v69}];
                  v5 = v127;
                }

                objc_autoreleasePoolPop(v70);
                v71 = sub_100095344();
                sub_10009FEC0(v71, v72);
              }
            }

            v65 = v64;
          }
        }

        ++v64;
        v63 = *(a1 + 2752);
      }

      while (v63);
      if (v65 != -1)
      {
        CFArrayRemoveValueAtIndex(*(a1 + 2752), v65);
      }
    }

    if (v62)
    {
      CFRelease(v62);
    }
  }

  v5 = v127;
  CFArrayInsertValueAtIndex(v4, Count, v127);
  sub_10002CF50();
  sub_10015AD08();
  v74 = v73;
  v75 = 1;
  v76 = sub_10001EDA0();
  sub_1000241AC(v76, v77, 1, 1);
  sub_1000086B8();
  sub_10002DC78();
  sub_100159928();
  if (!v74)
  {
    goto LABEL_132;
  }

  v78 = objc_autoreleasePoolPush();
  v7 = v116;
  v17 = v117;
  v79 = v119;
  if (off_100298C40)
  {
    v80 = v116;
    if (v122)
    {
      v80 = sub_10000A540(v5, @"DomainName");
    }

    [sub_10000DAC0() WFLog:"WiFiManagerAddNetwork" message:v80];
  }

  objc_autoreleasePoolPop(v78);
  v74 = 1;
LABEL_134:
  sub_1000587F4(prefs, v74);

  if (!v74)
  {
    v89 = v121;
LABEL_168:
    v88 = v118;
    goto LABEL_169;
  }

  if (valuePtr == 6 || valuePtr == 1)
  {
    v92 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: sync the added network <%@>", "WiFiManagerAddNetwork", v7}];
    }

    objc_autoreleasePoolPop(v92);
    if (&_WiFiCloudSyncEngineCreate && *(a1 + 1384) && v5)
    {
      v93 = sub_100174534(kCFAllocatorDefault, v5);
      CFRetain(*(a1 + 1384));
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10007DA20;
      block[3] = &unk_10025EE08;
      block[4] = a1;
      block[5] = v93;
      dispatch_async(qword_100298C58, block);
    }

    sub_100125F14(*(a1 + 1536), v5, 0);
  }

  else
  {
    v95 = objc_autoreleasePoolPush();
    v96 = v95;
    if (off_100298C40)
    {
      v97 = v7;
      if (v122)
      {
        v97 = sub_10000A540(v5, @"DomainName");
      }

      [sub_10000DAC0() WFLog:"WiFiManagerAddNetwork" message:v97];
    }

    objc_autoreleasePoolPop(v96);
  }

  sub_100095488(v94);
  sub_100072690(a1);
  v98 = sub_1000086B8();
  sub_10007DA6C(v98, v99, v100);
  if (v5)
  {
    v101 = v75 ^ 1;
  }

  else
  {
    v101 = 1;
  }

  if ((v101 & 1) == 0)
  {
    v113 = sub_1000950F8();
    sub_10015BB70(v113);
  }

  v89 = v121;
  if (!*(a1 + 2329))
  {
    v74 = 1;
    goto LABEL_168;
  }

  v102 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"Attempting NOI Transition"];
  }

  objc_autoreleasePoolPop(v102);
  v103 = sub_10009ED84(v5);
  v88 = v118;
  if (v103)
  {
    v104 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"Added network is profile based, set previous network prior to __WiFiManagerAttemptNetworkTransition so wifid transitions to this newly added network (%@)", v7}];
    }

    objc_autoreleasePoolPop(v104);
    context = a1;
    v129 = 0xAAAAAAAA00000063;
    v131 = 0;
    v132 = 0;
    v130 = &v127;
    v105 = *(a1 + 112);
    sub_1000083DC();
    CFSetApplyFunction(v106, v107, &context);
  }

  if (_os_feature_enabled_impl())
  {
    sub_1000197A4(a1, 28);
    v74 = 1;
  }

  else
  {
    sub_1000950B8();
    context = a1;
    v129 = v108;
    v74 = 1;
    v130 = 0;
    v131 = 1;
    v132 = 0;
    v109 = *(a1 + 112);
    sub_1000083DC();
    CFSetApplyFunction(v110, v111, &context);
  }

LABEL_169:
  sub_10007DC04(a1, v127, 11);
  if (valuePtr == 29)
  {
    sub_10007DC04(a1, v127, 13);
  }

  if (v88)
  {
    CFRelease(v88);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v89)
  {
    CFRelease(v89);
  }

  return v74;
}

void sub_10015AADC()
{
  sub_1000086C4();
  v4 = v3;
  v6 = v5;
  if (!v1)
  {
LABEL_15:
    Count = 0;
    goto LABEL_16;
  }

  v7 = v2;
  v8 = v0;
  Count = CFArrayGetCount(v1);
  if (!Count)
  {
    goto LABEL_16;
  }

  if (!v7 || (v10 = CFGetTypeID(v7), v10 != sub_10009D190()))
  {
    v19 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:"%s: invalid network ref"];
    }

    objc_autoreleasePoolPop(v19);
    goto LABEL_15;
  }

  if (v8 != 4)
  {
    if (Count >= 1)
    {
      v11 = 0;
      while (1)
      {
        v15 = sub_1000952F0();
        ValueAtIndex = CFArrayGetValueAtIndex(v15, v16);
        if (sub_1000A2CFC(ValueAtIndex, v7))
        {
          break;
        }

        sub_100021D9C();
        if (v18)
        {
          goto LABEL_15;
        }
      }

      Count = 0;
      if (v4)
      {
        goto LABEL_18;
      }

      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v11 = Count;
  while (v11)
  {
    --v11;
    v12 = sub_1000952F0();
    v14 = CFArrayGetValueAtIndex(v12, v13);
    if (sub_1000A2CFC(v14, v7))
    {
      goto LABEL_17;
    }
  }

LABEL_16:
  v11 = -1;
LABEL_17:
  if (v4)
  {
LABEL_18:
    *v4 = Count;
  }

LABEL_19:
  if (v6)
  {
    *v6 = v11;
  }

  sub_100010944();
}

void sub_10015AC04()
{
  sub_10000D798();
  if (v0 && v1)
  {
    v2 = sub_100020030(v0);
    if (v2)
    {
      v3 = v2;
      if (CFArrayGetCount(v2) >= 1)
      {
        sub_100095368();
        do
        {
          v4 = sub_1000086B8();
          ValueAtIndex = CFArrayGetValueAtIndex(v4, v5);
          v7 = sub_100010908(ValueAtIndex);
          if (v7)
          {
            v8 = sub_100009664(v7);
            if (v8)
            {
              v9 = sub_1000102AC(ValueAtIndex, v8);
              if (v9)
              {
                v10 = v9;
                v11 = sub_10000D80C();
                v13 = CFEqual(v11, v12);
                CFRelease(v10);
                if (v13)
                {
                  break;
                }
              }
            }
          }

          sub_100021D9C();
        }

        while (!v14);
      }

      CFRelease(v3);
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:"%s: failed to get device managers"];
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  sub_1000084B8();
}

void sub_10015AD08()
{
  sub_1000951B4();
  sub_100094FF0();
  v2 = objc_autoreleasePoolPush();
  if (v0)
  {
    if (v1 && *(v0 + 1408))
    {
      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v4 = *(v0 + 232);
        if (v4)
        {
          CFArrayGetCount(v4);
        }

        CFArrayGetCount(v1);
        [sub_10002147C() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v3);
      v5 = *(v0 + 232);
      if (v5 == v1)
      {
        v5 = 0;
      }

      else
      {
        sub_10001E7E4();
        *(v0 + 232) = CFArrayCreateMutableCopy(v6, v7, v8);
      }

      v9 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        CFArrayGetCount(*(v0 + 232));
        [sub_10002147C() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v9);
      sub_1000731D0(v0, *(v0 + 232));
      if (v5)
      {
        CFRelease(v5);
      }
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"%s: manager is NULL"];
    }

    objc_autoreleasePoolPop(v10);
  }

  objc_autoreleasePoolPop(v2);
  sub_10001ED88();
}

uint64_t sub_10015AE80(uint64_t a1, uint64_t a2, const __CFArray *a3)
{
  sub_100094FF0();
  v7 = -1;
  idx = -1;
  v9 = sub_10000AFE4(v8);
  sub_100021D58();
  sub_10016A30C();
  v10 = -1;
  if (v9)
  {
    idx = -1;
    if (!a3)
    {
      return 0;
    }

    Count = CFArrayGetCount(a3);
    if (Count)
    {
      v7 = Count;
      if (Count < 1)
      {
        MutableCopy = 0;
      }

      else
      {
        MutableCopy = 0;
        while (1)
        {
          v12 = sub_10002CF50();
          ValueAtIndex = CFArrayGetValueAtIndex(v12, v13);
          if (sub_10009F5C0(v3, ValueAtIndex))
          {
            break;
          }

          sub_1000951A8();
          if (v15)
          {
            v16 = objc_autoreleasePoolPush();
            sub_100095038();
            objc_autoreleasePoolPop(v7);
            goto LABEL_12;
          }
        }

        idx = 0;
      }
    }

LABEL_12:
    v10 = idx;
  }

  if (v10 == -1)
  {
    return 0;
  }

  v17 = objc_autoreleasePoolPush();
  sub_100095038();
  if (MutableCopy)
  {
    if (v9)
    {
      v18 = "domain name";
    }

    else
    {
      v18 = "SSID";
    }

    if (v9)
    {
      v19 = sub_100176938(v3);
    }

    else
    {
      v19 = sub_10000A878(v3);
    }

    [sub_10001DB84() WFLog:"__WiFiManagerModifyExistingNetwork" message:{v18, v19, idx}];
  }

  objc_autoreleasePoolPop(v7);
  v20 = CFArrayGetValueAtIndex(a3, idx);
  if (!v20)
  {
    v233 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null existingNetwork", "__WiFiManagerModifyExistingNetwork"}];
    }

    objc_autoreleasePoolPop(v233);
    return 0;
  }

  v21 = v20;
  v22 = sub_10009F418(v20);
  v23 = sub_10009F418(v3);
  if (v23 != v22)
  {
    v24 = v23;
    v25 = objc_autoreleasePoolPush();
    v26 = sub_100011554();
    if (v26)
    {
      [v26 WFLog:3 message:{"%s: auth flag changed from 0x%0x to 0x%0x", "__WiFiManagerModifyExistingNetwork", v22, v24}];
    }

    objc_autoreleasePoolPop(MutableCopy);
  }

  v27 = sub_10000A540(v21, @"networkKnownBSSListKey");
  if (v27 && CFArrayGetCount(v27))
  {
    v28 = sub_100095380();
    sub_10000AD34(v28, v29, v30);
  }

  v31 = sub_100014000(v21);
  if (v31)
  {
    sub_10000AD34(v3, @"CHANNEL", v31);
    v32 = sub_10000DAB4();
    sub_10000A540(v32, v33);
    v34 = sub_10000DB30();
    sub_10000AD34(v34, v35, v36);
  }

  v37 = sub_10000DAB4();
  sub_10000A540(v37, v38);
  v39 = sub_10000DB30();
  sub_10000AD34(v39, v40, v41);
  v42 = sub_10000DAB4();
  sub_10000A540(v42, v43);
  v44 = sub_10000DB30();
  sub_10000AD34(v44, v45, v46);
  v47 = sub_1000A0144(v3);
  v48 = objc_autoreleasePoolPush();
  sub_100095038();
  if (v47)
  {
    if (MutableCopy)
    {
      [(__CFDictionary *)MutableCopy WFLog:3 message:"%s: AJ prefs detected in incoming WiFiNetworkRef %@. AJ settings from existing network %@ will not be copied over", "__WiFiManagerModifyExistingNetwork", v3, v21];
    }
  }

  else
  {
    if (MutableCopy)
    {
      v234 = sub_10000A878(v3);
      [sub_10001DB84() WFLog:"__WiFiManagerModifyExistingNetwork" message:{v234, v21}];
    }

    objc_autoreleasePoolPop(@"Standalone");
    v49 = sub_100003930();
    sub_10009DC04(v49, v50);
    v51 = objc_autoreleasePoolPush();
    v52 = sub_100095080();
    if (v52)
    {
      [v52 WFLog:3 message:{"%s: network properties after AJ properties merge: %@", "__WiFiManagerModifyExistingNetwork", v3, v239}];
    }
  }

  objc_autoreleasePoolPop(@"Standalone");
  if (&_CNForgetSSID)
  {
    if (sub_10000A540(v21, kCNSNetworkWasCaptiveProperty))
    {
      v53 = sub_10000DAB4();
      sub_10000A540(v53, v54);
      v55 = sub_10000DB30();
      sub_10000AD34(v55, v56, v57);
    }

    if (sub_10000A540(v21, kCNSCaptiveNetworkProperty))
    {
      v58 = sub_10000DAB4();
      sub_10000A540(v58, v59);
      v60 = sub_10000DB30();
      sub_10000AD34(v60, v61, v62);
    }

    if (sub_10000A540(v21, kCNSDisabledByCaptiveProperty) && !sub_10000A540(v3, kCNSDisabledByCaptiveProperty))
    {
      v63 = sub_10000DAB4();
      sub_10000A540(v63, v64);
      v65 = sub_10000DB30();
      sub_10000AD34(v65, v66, v67);
    }
  }

  v68 = sub_10000DAB4();
  if (sub_10000A540(v68, v69))
  {
    v70 = sub_10002ACB4();
    if (!sub_10000A540(v70, v71))
    {
      v72 = sub_10000DAB4();
      sub_10000A540(v72, v73);
      v74 = sub_10000DB30();
      sub_10000AD34(v74, v75, v76);
    }
  }

  v77 = CWFCoreWiFiSpecificAttributesKey;
  v78 = sub_10000DAB4();
  if (sub_10000A540(v78, v79))
  {
    v80 = objc_autoreleasePoolPush();
    v81 = sub_100011554();
    if (v81)
    {
      [v81 WFLog:3 message:{"%s: existingNetwork %@ has CWF specific attributes", "__WiFiManagerModifyExistingNetwork", v21}];
    }

    objc_autoreleasePoolPop(MutableCopy);
    v82 = sub_10002ACB4();
    if (sub_10000A540(v82, v83))
    {
      v89 = objc_autoreleasePoolPush();
      v90 = sub_100011554();
      if (v90)
      {
        [v90 WFLog:3 message:{"%s: preserving CWF properies on existing network", "__WiFiManagerModifyExistingNetwork"}];
      }

      objc_autoreleasePoolPop(MutableCopy);
      v91 = sub_10002ACB4();
      sub_10000A540(v91, v92);
      v93 = sub_10001D1D0();
      MutableCopy = CFDictionaryCreateMutableCopy(v93, 0, v94);
      v95 = sub_10000DAB4();
      v97 = sub_10000A540(v95, v96);
      sub_100092A94(MutableCopy, v97);
      v98 = sub_10002ACB4();
      sub_10000AD34(v98, v99, MutableCopy);
      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      v100 = objc_autoreleasePoolPush();
      v101 = sub_100095080();
      if (v101)
      {
        [v101 WFLog:3 message:{"%s: network properties after adding missing keys: %@", "__WiFiManagerModifyExistingNetwork", v3}];
      }

      objc_autoreleasePoolPop(v77);
    }

    else
    {
      v84 = sub_10000DAB4();
      sub_10000A540(v84, v85);
      v86 = sub_10000DB30();
      sub_10000AD34(v86, v87, v88);
    }
  }

  v102 = @"WiFiNetworkAttributeIsPublic";
  v103 = sub_10000DAB4();
  if (sub_10000A540(v103, v104))
  {
    v105 = sub_10002ACB4();
    if (!sub_10000A540(v105, v106))
    {
      v107 = sub_10000DAB4();
      sub_10000A540(v107, v108);
      v109 = sub_10000DB30();
      sub_10000AD34(v109, v110, v111);
    }
  }

  if (sub_10001CB84(v21) && !sub_10001CB84(v3))
  {
    v112 = objc_autoreleasePoolPush();
    sub_100095038();
    if (MutableCopy)
    {
      v235 = sub_10000A878(v3);
      [sub_10001DB84() WFLog:"__WiFiManagerModifyExistingNetwork" message:v235];
    }

    objc_autoreleasePoolPop(@"WiFiNetworkAttributeIsPublic");
    sub_10009E6F0(v3, 1);
  }

  if (!sub_10001CFD8(v3))
  {
    v102 = sub_10001CFD8(v3);
    if (v102 != sub_10001CFD8(v21))
    {
      v102 = @"SaveDataMode";
      v113 = sub_10000DAB4();
      sub_10000A540(v113, v114);
      v115 = sub_10000DB30();
      sub_10000AD34(v115, v116, v117);
    }
  }

  sub_1000A19EC(v21);
  v118 = sub_10002D09C();
  v119 = sub_1000A19EC(v118);
  if (v102)
  {
    if (!v119 || (v120 = sub_10009532C(), CFDateCompare(v120, v121, v122) == kCFCompareGreaterThan))
    {
      sub_1000A195C(v21);
      v123 = sub_10002ACB4();
      sub_1000A1A64(v123, v124, v125);
      v126 = objc_autoreleasePoolPush();
      v47 = off_100298C40;
      if (off_100298C40)
      {
        v127 = sub_1000A195C(v21);
        v241 = sub_10000A878(v3);
        [sub_10002D390() WFLog:"__WiFiManagerModifyExistingNetwork" message:{*&v127, v102, v241}];
      }

      objc_autoreleasePoolPop(v126);
    }
  }

  v128 = sub_100095338();
  if (sub_1000A01EC(v128, v129) && !sub_1000A01EC(v3, 1))
  {
    v130 = sub_100095338();
    sub_1000A01EC(v130, v131);
    v132 = sub_10000757C();
    sub_1000A0170(v132, 1, v133);
  }

  v134 = sub_100095344();
  if (sub_1000A01EC(v134, v135) && !sub_1000A01EC(v3, 0))
  {
    v136 = sub_100095344();
    sub_1000A01EC(v136, v137);
    v138 = sub_10000757C();
    sub_1000A0170(v138, 0, v139);
  }

  v140 = @"prevJoined";
  v141 = sub_100094FB0();
  sub_10000A540(v141, v142);
  v143 = sub_10002D09C();
  v144 = sub_10000A540(v143, @"prevJoined");
  if (v102)
  {
    v140 = v144;
    if (v144)
    {
      v145 = sub_10001EDAC();
      if (CFDateCompare(v145, v146, 0) == kCFCompareGreaterThan)
      {
        v147 = sub_100095380();
        sub_10000AD34(v147, v148, v149);
        v150 = objc_autoreleasePoolPush();
        sub_1000952D8();
        if (v5)
        {
          v242 = sub_10000A878(v3);
          [sub_100008BD4() WFLog:"__WiFiManagerModifyExistingNetwork" message:{v140, v102, v242}];
        }

        objc_autoreleasePoolPop(v47);
      }
    }
  }

  if (sub_10000A540(v21, @"WiFiManagerKnownNetworksEventType"))
  {
    v151 = sub_10000DAB4();
    sub_10000A540(v151, v152);
    v153 = sub_10000DB30();
    sub_10000AD34(v153, v154, v155);
  }

  if (sub_10000A540(v21, @"addedAt"))
  {
    v156 = sub_10000DAB4();
    sub_10000A540(v156, v157);
    v158 = sub_10000DB30();
    sub_10000AD34(v158, v159, v160);
  }

  if (sub_10000DBF0(v21) != 0.0 && sub_10000DBF0(v3) == 0.0)
  {
    v161 = sub_10000DBF0(v21);
    sub_1000A027C(v3, v161);
  }

  if (sub_10000A540(v21, @"userPreferredNetworkNames") && !sub_10000A540(v3, @"userPreferredNetworkNames"))
  {
    v162 = sub_10000DAB4();
    sub_10000A540(v162, v163);
    v164 = sub_10000DB30();
    sub_10000AD34(v164, v165, v166);
  }

  if (sub_10000FC60(v21) && !sub_10000FC60(v3))
  {
    v167 = sub_10000FC60(v21);
    sub_1000A2434(v3, v167);
  }

  if (sub_10001D2A4(v21) && !sub_10001D2A4(v3))
  {
    v168 = sub_10001D2A4(v21);
    sub_1000A23B4(v3, v168);
  }

  if (sub_1000A2B30(v21))
  {
    sub_1000A2B30(v21);
    v169 = sub_10002ACB4();
    sub_10000C614(v169, v170, v171);
  }

  v172 = sub_10001D108(v3);
  if (v172 != sub_10001D108(v21))
  {
    v173 = objc_autoreleasePoolPush();
    sub_100095038();
    if (v140)
    {
      v174 = sub_10001D108(v21);
      v240 = sub_10001D108(v3);
      [sub_10001DB84() WFLog:"__WiFiManagerModifyExistingNetwork" message:{v174, v240}];
    }

    objc_autoreleasePoolPop(v172);
  }

  if (!sub_100009730(v21) || !sub_100009730(v3))
  {
    goto LABEL_129;
  }

  v172 = @"EnterpriseProfile";
  v175 = sub_10000DAB4();
  v177 = sub_10000A540(v175, v176);
  v178 = sub_10002ACB4();
  v180 = sub_10000A540(v178, v179);
  theDict = 0;
  value = 0;
  if (v177)
  {
    CFDictionaryGetValueIfPresent(v177, @"EAPClientConfiguration", &value);
  }

  if (v180)
  {
    CFDictionaryGetValueIfPresent(v180, @"EAPClientConfiguration", &theDict);
  }

  if (value)
  {
    if (theDict)
    {
      v245 = 0;
      theArray = 0;
      v172 = @"AcceptEAPTypes";
      CFDictionaryGetValueIfPresent(value, @"AcceptEAPTypes", &theArray);
      CFDictionaryGetValueIfPresent(theDict, @"AcceptEAPTypes", &v245);
      if (!theArray)
      {
        goto LABEL_129;
      }

      if (CFArrayGetCount(theArray) >= 1)
      {
        v172 = 0;
        v229 = 1;
        do
        {
          v230 = CFArrayGetValueAtIndex(theArray, v172);
          if (!v245 || (v180 = v230, CFArrayGetCount(v245), v231 = sub_100011334(), !CFArrayContainsValue(v231, v250, v180)))
          {
            v229 = 0;
          }

          v172 = (v172 + 1);
        }

        while (v172 < CFArrayGetCount(theArray));
        if (!v229)
        {
          goto LABEL_129;
        }
      }

      v243 = 0;
      v244 = 0;
      v172 = @"UserName";
      CFDictionaryGetValueIfPresent(value, @"UserName", &v244);
      CFDictionaryGetValueIfPresent(theDict, @"UserName", &v243);
      if (v243 || !v244)
      {
        goto LABEL_129;
      }

      v232 = objc_autoreleasePoolPush();
      sub_100095038();
      if (v180)
      {
        v238 = sub_10000A878(v3);
        [sub_10001DB84() WFLog:"__WiFiManagerModifyExistingNetwork" message:v238];
      }

      objc_autoreleasePoolPop(@"UserName");
      v187 = v244;
      v186 = @"UserName";
      v185 = v3;
    }

    else
    {
      v182 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v237 = sub_10000A878(v3);
        [sub_10002D390() WFLog:"__WiFiManagerModifyExistingNetwork" message:v237];
      }

      objc_autoreleasePoolPop(v182);
      v183 = sub_10000DAB4();
      sub_10000A540(v183, v184);
      v185 = sub_10000DB30();
    }

    sub_10000AD34(v185, v186, v187);
  }

  else
  {
    v181 = objc_autoreleasePoolPush();
    sub_100095038();
    if (v180)
    {
      v236 = sub_10000A878(v3);
      [sub_10001DB84() WFLog:"__WiFiManagerModifyExistingNetwork" message:v236];
    }

    objc_autoreleasePoolPop(@"EnterpriseProfile");
  }

LABEL_129:
  if (sub_10000A540(v21, @"WiFiNetworkTDOverrideCount"))
  {
    v172 = @"WiFiNetworkTDOverrideCount";
    v188 = sub_10000DAB4();
    sub_10000A540(v188, v189);
    v190 = sub_10000DB30();
    sub_10000AD34(v190, v191, v192);
  }

  if (sub_10000A540(v21, @"WiFiNetworkTDOverrideTimestamp"))
  {
    v172 = @"WiFiNetworkTDOverrideTimestamp";
    v193 = sub_10000DAB4();
    sub_10000A540(v193, v194);
    v195 = sub_10000DB30();
    sub_10000AD34(v195, v196, v197);
  }

  if (!sub_10001CF3C(v3) && !sub_10009DB7C(v3) && !sub_100009730(v3) && !sub_10000D970(v3) && !sub_10009E148(v3))
  {
    v198 = objc_autoreleasePoolPush();
    v199 = sub_100095080();
    if (v199)
    {
      [v199 WFLog:4 message:{"%s: new network is open, so remove existing password", "__WiFiManagerModifyExistingNetwork"}];
    }

    objc_autoreleasePoolPop(v172);
    sub_10009FCF4(v3);
  }

  v200 = sub_10002ACB4();
  if (!sub_10000A540(v200, v201))
  {
    v202 = sub_10000DAB4();
    if (sub_10000A540(v202, v203))
    {
      v204 = sub_10000DAB4();
      sub_10000A540(v204, v205);
      v206 = sub_10000DB30();
      sub_10000AD34(v206, v207, v208);
    }
  }

  v209 = sub_10002ACB4();
  if (!sub_10000A540(v209, v210))
  {
    v211 = sub_10000DAB4();
    if (sub_10000A540(v211, v212))
    {
      v213 = sub_10000DAB4();
      sub_10000A540(v213, v214);
      v215 = sub_10000DB30();
      sub_10000AD34(v215, v216, v217);
    }
  }

  v218 = kCFBooleanTrue;
  if (sub_10009EB80(v3))
  {
    v219 = kCFBooleanTrue;
  }

  else
  {
    v219 = kCFBooleanFalse;
  }

  sub_10000AD34(v3, @"ALLOW_WPA2_PSK", v219);
  if (sub_10009F418(v3) || sub_10009ECE4(v3))
  {
    v218 = kCFBooleanFalse;
  }

  v220 = sub_100095374();
  sub_10000AD34(v220, v221, v222);
  CFArrayRemoveValueAtIndex(a3, idx);
  v223 = sub_10000D818();
  CFArrayInsertValueAtIndex(v223, v224, v225);
  v226 = objc_autoreleasePoolPush();
  v227 = sub_10009535C();
  if (v227)
  {
    [v227 WFLog:3 message:{"%s: network properties after modified network: %@", "__WiFiManagerModifyExistingNetwork", v3}];
  }

  objc_autoreleasePoolPop(v218);
  sub_100003924();
  sub_10002DC78();
  sub_100159928();
  sub_100011580();
  sub_10015AD08();
  return 1;
}

void sub_10015BB70(uint64_t a1)
{
  if (a1)
  {
    sub_100008C40();
    v2 = objc_autoreleasePoolPush();
    if (v1)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: ssid: %@", "WiFiManagerRemoveNetworkNameFromUserNotificationBlacklist", v1}];
      }

      objc_autoreleasePoolPop(v2);
      v3 = sub_10000D7B8();
      v5 = sub_1000899A4(v3, v4);
      if (v5)
      {
        v6 = v5;
        if (CFDictionaryContainsKey(v5, v1))
        {
          CFDictionaryGetCount(v6);
          v7 = sub_100024B8C();
          MutableCopy = CFDictionaryCreateMutableCopy(v7, v8, v6);
          CFDictionaryRemoveValue(MutableCopy, v1);
          [+[NSUserDefaults standardUserDefaults](NSUserDefaults setObject:"setObject:forKey:" forKey:MutableCopy, @"UserNotificationBlacklist"];
          v10 = sub_1000086B8();
          sub_100087AD4(v10, v11);
          if (MutableCopy)
          {
            CFRelease(MutableCopy);
          }
        }

        CFRelease(v6);
      }
    }

    else
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: ssid is null", "WiFiManagerRemoveNetworkNameFromUserNotificationBlacklist"}];
      }

      objc_autoreleasePoolPop(v2);
    }
  }
}

uint64_t sub_10015BCD0(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  sub_10009519C();
  v7 = *(v6 + 224);
  sub_10016A30C();
  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v10 = sub_10000A878(v4);
    [sub_10002147C() WFLog:"__WiFiManagerCopyExistingNetwork" message:{v10, 0xAAAAAAAAAAAAAAAALL}];
  }

  objc_autoreleasePoolPop(v8);
  result = CFArrayGetValueAtIndex(*(v3 + 224), 0xAAAAAAAAAAAAAAAALL);
  if (result)
  {
    if (a3)
    {
      *a3 = CFRetain(result);
    }

    return 1;
  }

  return result;
}

void sub_10015BDA0()
{
  sub_1000953C8();
  v61 = v3;
  v62 = v4;
  v6 = v5;
  v7 = objc_autoreleasePoolPush();
  if (!*(v6 + 1744))
  {
    v8 = *(v6 + 1784);
    if (!v8)
    {
      goto LABEL_34;
    }

    if (!CFArrayGetCount(v8))
    {
      goto LABEL_34;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(v6 + 1784), 0);
    if (!ValueAtIndex)
    {
      goto LABEL_34;
    }

    v10 = ValueAtIndex;
    if ([ValueAtIndex sessionBased])
    {
      v11 = objc_autoreleasePoolPush();
      v12 = sub_10009535C();
      if (v12)
      {
        [v12 WFLog:3 message:{"%s: session based add, checking if application is in foreground", "__WiFiManagerDispatchNextAddNetworkAsyncRequest"}];
      }

      objc_autoreleasePoolPop(v0);
      v0 = &xpc_dictionary_set_uint64_ptr;
      if (!objc_opt_class())
      {
LABEL_48:
        v49 = 0x7FFFFFFF;
LABEL_49:
        if ([v10 client])
        {
          [v10 client];
          [sub_10002D09C() network];
          v50 = sub_10001158C();
          sub_10014B32C(v50, v6, v51, v49);
        }

        if ([v10 callback])
        {
          [v10 callback];
          [sub_10002D09C() network];
          [v10 context];
          v52 = sub_10001EC64();
          v1(v52);
        }

        CFArrayGetCount(*(v6 + 1784));
        v53 = sub_100034FE4();
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v53, v63, v10);
        if (FirstIndexOfValue != -1)
        {
          CFArrayRemoveValueAtIndex(*(v6 + 1784), FirstIndexOfValue);
        }

        sub_10015BDA0(v6);
        goto LABEL_34;
      }

      v13 = objc_alloc_init(BKSApplicationStateMonitor);
      [sub_100010938() bundleId];
      v2 = [sub_100024F1C() applicationStateForApplication:?];

      if (v2 != 8)
      {
        v46 = objc_autoreleasePoolPush();
        v1 = off_100298C40;
        if (off_100298C40)
        {
          v47 = [v10 bundleId];
          if ((v2 - 1) > 3)
          {
            v48 = @"Unknown";
          }

          else
          {
            v48 = off_100260DE0[v2 - 1];
          }

          [sub_10002147C() WFLog:"__WiFiManagerDispatchNextAddNetworkAsyncRequest" message:{v47, v48}];
        }

        objc_autoreleasePoolPop(v46);
        v49 = 8;
        goto LABEL_49;
      }
    }

    if ([v10 usingPrefix])
    {
      v14 = objc_autoreleasePoolPush();
      v15 = sub_10009535C();
      if (v15)
      {
        [v15 WFLog:3 message:{"%s: add network request using prefix, checking if matching network is nearby", "__WiFiManagerDispatchNextAddNetworkAsyncRequest"}];
      }

      objc_autoreleasePoolPop(v0);
      context = v6;
      v56 = 0xAAAAAAAA00000068;
      v58 = 0;
      v59 = 0;
      v57 = [v10 network];
LABEL_14:
      v16 = *(v6 + 112);
      sub_1000083DC();
      CFSetApplyFunction(v17, v18, &context);
      goto LABEL_34;
    }

    if ([v10 sessionBased] && *(v6 + 1712))
    {
      v19 = objc_autoreleasePoolPush();
      v20 = [sub_100010938() network];
      sub_10000A878(v20);
      [sub_10002D09C() bundleId];
      v21 = [sub_10001158C() stringByAppendingString:?];
      v22 = [*(v6 + 1712) objectForKey:v21];
      v23 = objc_autoreleasePoolPush();
      v24 = sub_100011554();
      if (v24)
      {
        [v24 WFLog:3 message:{"%s: sessionKey = %@, object = %@", "__WiFiManagerDispatchNextAddNetworkAsyncRequest", v21, v22}];
      }

      objc_autoreleasePoolPop(v2);
      if (v22)
      {
        [objc_msgSend(v22 objectForKeyedSubscript:{@"timestamp", "timeIntervalSinceNow"}];
        v26 = v25 <= -21600.0;
      }

      else
      {
        v26 = 1;
      }

      objc_autoreleasePoolPop(v0);
    }

    else
    {
      v26 = 1;
    }

    v1 = [v10 bypassPrompt];
    v27 = objc_autoreleasePoolPush();
    v28 = sub_10009535C();
    if (v1)
    {
      if (v28)
      {
        [v28 WFLog:3 message:{"%s: Don't show popup as user has already given consent for this accessory network.", "__WiFiManagerDispatchNextAddNetworkAsyncRequest"}];
      }

      objc_autoreleasePoolPop(v0);
      v29 = *(qword_100298598 + 32);
      context = _NSConcreteStackBlock;
      v56 = 3221225472;
      v57 = sub_10016A400;
      v58 = &unk_10025EE08;
      v59 = 0;
      v60 = qword_100298598;
      dispatch_async(v29, &context);
      goto LABEL_34;
    }

    if (!v26)
    {
      if (v28)
      {
        [v28 WFLog:3 message:{"%s: Don't show popup as user has already given consent for this session based network.", "__WiFiManagerDispatchNextAddNetworkAsyncRequest"}];
      }

      objc_autoreleasePoolPop(v0);
      context = v6;
      v56 = 0xAAAAAAAA00000045;
      v58 = 0;
      v59 = 0;
      v57 = [v10 network];
      [v10 network];
      v42 = sub_100015EB8();
      sub_1000930E0(v42, v43);
      goto LABEL_14;
    }

    if (v28)
    {
      [v28 WFLog:3 message:{"%s: Show user consent popup", "__WiFiManagerDispatchNextAddNetworkAsyncRequest"}];
    }

    objc_autoreleasePoolPop(v0);
    [v10 alertDictionary];
    v30 = sub_100034FE4();
    v35 = CFUserNotificationCreate(v30, v34, v31, v32, v33);
    if (v35)
    {
      v1 = v35;
      v36 = sub_10000DAB4();
      RunLoopSource = CFUserNotificationCreateRunLoopSource(v36, v37, v38, 0);
      if (RunLoopSource)
      {
        v40 = RunLoopSource;
        *(v6 + 1736) = RunLoopSource;
        *(v6 + 1744) = v1;
        Main = CFRunLoopGetMain();
        CFRunLoopAddSource(Main, v40, kCFRunLoopDefaultMode);
        goto LABEL_34;
      }

      CFRelease(v1);
    }

    goto LABEL_48;
  }

  v44 = objc_autoreleasePoolPush();
  v45 = sub_100095050();
  if (v45)
  {
    [v45 WFLog:3 message:{"Add network request is in progress, cancelling dispatch"}];
  }

  objc_autoreleasePoolPop(v6);
LABEL_34:
  objc_autoreleasePoolPop(v7);
  sub_100020CB0();
}

void sub_10015C274()
{
  sub_1000086C4();
  if (!v0 || (v2 = v1) == 0)
  {
    sub_100010944();
    return;
  }

  v3 = sub_100020030(v0);
  if (!v3)
  {
    objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:"%s: failed to get device managers"];
    }

    sub_100010944();

    objc_autoreleasePoolPop(v22);
    return;
  }

  v4 = v3;
  Count = CFArrayGetCount(v3);
  if (Count < 1)
  {
    goto LABEL_12;
  }

  v6 = Count;
  v7 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v4, v7);
    v9 = sub_100010908(ValueAtIndex);
    if (!v9)
    {
      goto LABEL_11;
    }

    if (!sub_100009664(v9))
    {
      goto LABEL_11;
    }

    v10 = sub_100094FB0();
    v12 = sub_1000102AC(v10, v11);
    if (!v12)
    {
      goto LABEL_11;
    }

    v13 = v12;
    if (CFEqual(v2, v12))
    {
      break;
    }

    CFRelease(v13);
LABEL_11:
    if (v6 == ++v7)
    {
      goto LABEL_12;
    }
  }

  v16 = sub_10001E7C0();
  sub_10008FF38(v16, v17, v13);
  v18 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"%s: Current network is CarPlay. Disconnect\n"];
  }

  objc_autoreleasePoolPop(v18);
  v19 = sub_100094FB0();
  sub_1000B9DC8(v19, v20, 7, v21, 18098);
  CFRelease(v13);
LABEL_12:
  sub_100010944();

  CFRelease(v14);
}

void sub_10015C418()
{
  sub_10000D798();
  if (v4 && (sub_1000952AC(v2, v3, v4), v6) && (v7 = v5, CFArrayGetCount(v1) > 0))
  {
    do
    {
      v8 = sub_10002ACB4();
      ValueAtIndex = CFArrayGetValueAtIndex(v8, v9);
      if (sub_10009F648(v7, ValueAtIndex))
      {
        *v0 = 0;
        goto LABEL_14;
      }

      sub_1000950C4();
    }

    while (!v11);
    objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      sub_10000A878(v7);
      [sub_10000DAC0() WFLog:? message:?];
    }

    sub_1000084B8();

    objc_autoreleasePoolPop(v12);
  }

  else
  {
LABEL_14:
    sub_1000084B8();
  }
}

void sub_10015C50C(CFDataRef theData)
{
  if (&_CNForgetSSID)
  {
    if (theData)
    {
      Copy = CFDataCreateCopy(kCFAllocatorDefault, theData);
      if (Copy)
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100093360;
        block[3] = &unk_10025EAD8;
        block[4] = Copy;
        dispatch_async(qword_100298C50, block);
        return;
      }

      v2 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: null dataRef.", "__AsyncCNForgetSSID"}];
      }
    }

    else
    {
      v2 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: null ssidDataRef.", "__AsyncCNForgetSSID"}];
      }
    }

    objc_autoreleasePoolPop(v2);
  }
}

void sub_10015C640()
{
  sub_100094FD4();
  v1 = v0;
  SetID = v2;
  v4 = sub_100011334();
  Mutable = CFArrayCreateMutable(v4, v5, v6);
  v8 = objc_autoreleasePoolPush();
  if (!v1)
  {
    if (off_100298C40)
    {
      v65 = "%s: null network";
      v66 = off_100298C40;
LABEL_80:
      [v66 WFLog:3 message:v65];
    }

LABEL_81:
    objc_autoreleasePoolPop(v8);
LABEL_82:
    if (!Mutable)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (off_100298C40)
  {
    sub_10000A878(v1);
    [sub_10000FC2C() WFLog:? message:?];
  }

  objc_autoreleasePoolPop(v8);
  if (!SetID[6].length)
  {
    v67 = objc_autoreleasePoolPush();
    v66 = sub_1000950EC();
    if (v66)
    {
      v65 = "%s: null wifi network sets";
      goto LABEL_80;
    }

    goto LABEL_81;
  }

  v9 = sub_100011334();
  if (!CFDictionaryCreateMutableCopy(v9, v10, v11))
  {
    goto LABEL_82;
  }

  v12 = sub_100095220();
  sub_10000A878(v12);
  v13 = sub_100015EB8();
  Value = CFDictionaryGetValue(v13, v14);
  if (!Value)
  {
    v37 = objc_autoreleasePoolPush();
    v38 = sub_10001E2C0();
    if (v38)
    {
      [v38 WFLog:3 message:"%s: not a custom network"];
    }

    objc_autoreleasePoolPop(SetID);
    CFRelease(v8);
    if (Mutable)
    {
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  v73 = Value;
  CFRetain(Value);
  sub_10000A878(v1);
  v16 = sub_100015EB8();
  CFDictionaryRemoveValue(v16, v17);
  [+[NSUserDefaults standardUserDefaults](NSUserDefaults setObject:"setObject:forKey:" forKey:v8, @"Custom network settings"];
  if (sub_10014A48C(SetID[33].isa))
  {
    v18 = sub_10000D83C("__WiFiManagerRemoveNetworkSetting");
    v19 = SCNetworkSetCopyAll(SetID[33].isa);
    if (!v19)
    {
      v36 = 0;
      Name = v73;
LABEL_31:
      sub_1000587F4(SetID[33].isa, v36);

      goto LABEL_32;
    }

    v20 = v19;
    Count = CFArrayGetCount(v19);
    v22 = objc_autoreleasePoolPush();
    Name = v73;
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: remove set ID %@, total sets %ld"}];
    }

    v72 = v18;
    objc_autoreleasePoolPop(v22);
    if (Count < 1)
    {
      goto LABEL_24;
    }

    v71 = SetID;
    v24 = Mutable;
    for (i = 0; i != Count; ++i)
    {
      v26 = sub_10009502C();
      ValueAtIndex = CFArrayGetValueAtIndex(v26, v27);
      if (ValueAtIndex)
      {
        if ((Mutable = ValueAtIndex, Name = SCNetworkSetGetName(ValueAtIndex), SetID = SCNetworkSetGetSetID(Mutable), Name) && CFEqual(Name, @"Automatic") || SetID && (v29 = sub_100003924(), CFDictionaryContainsValue(v29, v30)))
        {
          sub_100087770(v24, Mutable);
        }
      }
    }

    v31 = 0;
    sub_100095154();
    while (1)
    {
      v32 = sub_10009502C();
      v34 = CFArrayGetValueAtIndex(v32, v33);
      if (SCNetworkSetGetSetID(v34))
      {
        v35 = SCNetworkSetGetSetID(v34);
        if (CFEqual(v35, Name))
        {
          break;
        }
      }

      if (Count == ++v31)
      {
        goto LABEL_24;
      }
    }

    if (SCNetworkSetGetName(v34))
    {
      v39 = SCNetworkSetGetName(v34);
      if (CFEqual(v39, @"Automatic"))
      {
        v40 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:"%s: skipping automatic set from removal! automatic/custom network set ID: %@"];
        }

        objc_autoreleasePoolPop(v40);
LABEL_24:
        v36 = 0;
LABEL_30:
        CFRelease(v20);
        v18 = v72;
        goto LABEL_31;
      }
    }

    v41 = sub_100095308();
    sub_100093DE0(v41, v42);
    v36 = SCNetworkSetRemove(v34);
    v43 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"%s: set removal status %d"];
    }

    objc_autoreleasePoolPop(v43);
    if (v36)
    {
      goto LABEL_30;
    }

    v70 = CFArrayGetCount(v20);
    v44 = sub_100011334();
    v47 = CFArrayCreateMutable(v44, v45, v46);
    if (v34)
    {
      if (SCNetworkSetGetName(v34))
      {
        v48 = SCNetworkSetGetName(v34);
        if (CFEqual(v48, @"Automatic"))
        {
          v49 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            SCNetworkSetGetSetID(v34);
            [sub_100011424() WFLog:? message:?];
          }

          v36 = 0;
          SetID = v71;
LABEL_74:
          objc_autoreleasePoolPop(v49);
          if (v47)
          {
            CFRelease(v47);
          }

          goto LABEL_30;
        }
      }
    }

    Name = v47;
    if (v70 < 1)
    {
LABEL_71:
      v47 = Name;
      sub_100093DE0(v34, Name);
      v36 = SCNetworkSetRemove(v34);
      v49 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"%s: set removal status %d"];
      }

      sub_100095154();
      goto LABEL_74;
    }

    v50 = 0;
    while (1)
    {
      v51 = CFArrayGetValueAtIndex(v20, v50);
      Mutable = SCNetworkSetGetName(v51);
      v52 = SCNetworkSetGetSetID(v51);
      v53 = v52;
      if (Mutable)
      {
        v54 = CFEqual(@"Automatic", Mutable);
        SetID = v54;
        if (!v53)
        {
          if (!v54)
          {
            goto LABEL_70;
          }

LABEL_63:
          SetID = SCNetworkSetSetCurrent(v51);
          v61 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:"%s: SCNetworkSetSetCurrent(Automatic) %d"];
          }

LABEL_69:
          objc_autoreleasePoolPop(v61);
          v63 = sub_1000258C8();
          sub_100087770(v63, v64);
          goto LABEL_70;
        }

        v55 = sub_10000D80C();
        v57 = CFDictionaryContainsValue(v55, v56);
        if (SetID && v57)
        {
          v58 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:"%s: network set %@ (%@) is in both automatic and custom network sets!!."];
          }

          objc_autoreleasePoolPop(v58);
          goto LABEL_63;
        }

        if (SetID)
        {
          goto LABEL_63;
        }
      }

      else
      {
        if (!v52)
        {
          goto LABEL_70;
        }

        v59 = sub_10000D80C();
        v57 = CFDictionaryContainsValue(v59, v60);
      }

      if (v57)
      {
        SetID = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          sub_10001EC70();
          [v62 WFLog:? message:?];
        }

        v61 = SetID;
        goto LABEL_69;
      }

LABEL_70:
      if (v70 == ++v50)
      {
        goto LABEL_71;
      }
    }
  }

  v68 = objc_autoreleasePoolPush();
  v69 = sub_10001E2C0();
  if (v69)
  {
    [v69 WFLog:3 message:"%s: failed to get sc prefs lock"];
  }

  objc_autoreleasePoolPop(SetID);
  Name = v73;
LABEL_32:
  CFRelease(v8);
  CFRelease(Name);
  if (Mutable)
  {
LABEL_33:
    CFRelease(Mutable);
  }

LABEL_34:
  sub_100008C64();
}

void sub_10015CCA0()
{
  sub_100011520();
  if (!v5)
  {
    goto LABEL_25;
  }

  v6 = v4;
  v7 = v3;
  v8 = v2;
  sub_10009519C();
  v9 = objc_autoreleasePoolPush();
  if (v1)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"%s: blacklisting ssid: %@"];
    }

    v49 = v6;
    objc_autoreleasePoolPop(v9);
    v10 = sub_100021858();
    v12 = sub_1000899A4(v10, v11);
    v13 = v12;
    if (v12)
    {
      Count = CFDictionaryGetCount(v12);
      MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, Count + 1, v13);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    v16 = MutableCopy;
    if (CFDictionaryContainsKey(MutableCopy, v1))
    {
      v17 = sub_100003930();
      CFDictionaryGetValue(v17, v18);
      v19 = sub_100095014();
      Mutable = CFDictionaryCreateMutableCopy(v19, v20, v21);
      if (CFDictionaryContainsKey(Mutable, @"timestamp"))
      {
        v23 = sub_100029EAC();
        CFDictionaryRemoveValue(v23, v24);
      }
    }

    else
    {
      v25 = sub_100095014();
      Mutable = CFDictionaryCreateMutable(v25, v26, v27, v28);
    }

    Current = CFAbsoluteTimeGetCurrent();
    v30 = CFDateCreate(kCFAllocatorDefault, Current);
    if (v30)
    {
      CFDictionarySetValue(Mutable, @"timestamp", v30);
      [NSNumber numberWithUnsignedInt:v8];
      v31 = sub_10001D1D0();
      CFDictionarySetValue(v31, @"type", v32);
      [NSNumber numberWithUnsignedInt:v7];
      v33 = sub_10001D1D0();
      CFDictionarySetValue(v33, @"notificationType", v34);
      [NSNumber numberWithInteger:v49];
      v35 = sub_10001D1D0();
      CFDictionarySetValue(v35, @"source", v36);
      v37 = sub_10009502C();
      if (CFDictionaryContainsKey(v37, v38))
      {
        +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [-[__CFDictionary objectForKey:](Mutable objectForKey:{@"count", "integerValue"}] + 1);
      }

      v39 = sub_10009502C();
      CFDictionarySetValue(v39, v40, v41);
      v42 = sub_100003930();
      CFDictionarySetValue(v42, v43, Mutable);
      [+[NSUserDefaults standardUserDefaults](NSUserDefaults setObject:"setObject:forKey:" forKey:v16, @"UserNotificationBlacklist"];
      sub_100087AD4(v0, v16);
      if (Mutable)
      {
LABEL_16:
        CFRelease(Mutable);
      }
    }

    else
    {
      v48 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"%s: timestamp is null"];
      }

      objc_autoreleasePoolPop(v48);
      if (Mutable)
      {
        goto LABEL_16;
      }
    }

    if (v30)
    {
      CFRelease(v30);
    }

    if (v16)
    {
      CFRelease(v16);
    }

    if (v13)
    {
      sub_10001091C();

      CFRelease(v44);
      return;
    }

LABEL_25:
    sub_10001091C();
    return;
  }

  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"%s: ssid is null"];
  }

  sub_10001091C();

  objc_autoreleasePoolPop(v46);
}

void sub_10015CFDC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *context, uint64_t a15, CFIndex idx, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_100094FD4();
  a27 = v29;
  a28 = v30;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = objc_autoreleasePoolPush();
  a15 = 0;
  idx = -1;
  if (!v38)
  {
    v109 = objc_autoreleasePoolPush();
    v106 = sub_10001E7CC();
    if (v106)
    {
      v107 = "%s: null manager";
      goto LABEL_100;
    }

LABEL_101:
    v62 = v34;
LABEL_35:
    objc_autoreleasePoolPop(v62);
    goto LABEL_36;
  }

  if (sub_10000A154(v38))
  {
    goto LABEL_36;
  }

  if (!v36)
  {
    v110 = objc_autoreleasePoolPush();
    v106 = sub_10001E7CC();
    if (v106)
    {
      v107 = "%s: null network";
      goto LABEL_100;
    }

    goto LABEL_101;
  }

  sub_10000A878(v36);
  sub_100020170(v38);
  if (!v40)
  {
    goto LABEL_36;
  }

  v41 = v40;
  sub_10000AACC(v40, v36, &idx, &a15);
  v42 = idx;
  if (idx == -1)
  {
    if (sub_10009DBBC(v36))
    {
      v89 = objc_autoreleasePoolPush();
      v90 = sub_1000951E4();
      if (v90)
      {
        [v90 WFLog:3 message:"%s: WFMacRandomisation :  Updating original HS2.0 Provisioning. SSID <%@> for <%@> with value <%@>"];
      }

      objc_autoreleasePoolPop(v28);
      sub_100029EAC();
      sub_100163FB8();
    }

    v42 = idx;
    if (idx == -1)
    {
      v60 = objc_autoreleasePoolPush();
      v61 = sub_100095350();
      if (v61)
      {
        [v61 WFLog:3 message:"%s: WFMacRandomisation :  Network not found in the private mac cache. Avoiding any updates. Requested update for : <%@> with value : <%@> for network : <%@>"];
      }

      v62 = v38;
      goto LABEL_35;
    }
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v41, v42);
  if (!ValueAtIndex || (v44 = ValueAtIndex, v45 = CFGetTypeID(ValueAtIndex), v46 = sub_10009D190(), v45 != v46))
  {
    v105 = objc_autoreleasePoolPush();
    v106 = sub_10001E7CC();
    if (v106)
    {
      v107 = "%s: WFMacRandomisation : privateMacCache network invalid";
LABEL_100:
      [v106 WFLog:3 message:v107];
      goto LABEL_101;
    }

    goto LABEL_101;
  }

  v47 = sub_10009511C(v46, @"BSSID");
  if (v47 == kCFCompareEqualTo)
  {
    v48 = @"BSSID";
LABEL_12:
    v49 = v44;
LABEL_13:
    v50 = v32;
LABEL_14:
    sub_10000AD34(v49, v48, v50);
    goto LABEL_15;
  }

  v55 = sub_10009511C(v47, @"PresentInKnownNetworks");
  if (v55)
  {
    v58 = sub_10009511C(v55, @"PRIVATE_MAC_ADDRESS");
    if (v58 == kCFCompareEqualTo)
    {
      if (v32)
      {
        CFDictionaryGetTypeID();
        v59 = sub_100010980();
        if (v36 == CFGetTypeID(v59))
        {
          v48 = @"PRIVATE_MAC_ADDRESS";
          goto LABEL_12;
        }
      }

      goto LABEL_15;
    }

    if (sub_10009511C(v58, @"PrivateMacFeatureToggled") == kCFCompareEqualTo)
    {
      if (!v32)
      {
        goto LABEL_15;
      }

      CFBooleanGetTypeID();
      v63 = sub_100010980();
      if (v36 != CFGetTypeID(v63) || kCFBooleanFalse != v32)
      {
        goto LABEL_15;
      }

LABEL_44:
      v49 = sub_1000952CC();
      goto LABEL_14;
    }

    v65 = sub_100095214();
    if (CFStringCompare(v65, v66, 1uLL))
    {
      v86 = sub_100095214();
      v88 = CFStringCompare(v86, v87, 1uLL);
      if (v88 == kCFCompareEqualTo)
      {
        v49 = sub_10009505C();
        goto LABEL_13;
      }

      if (sub_10009511C(v88, @"FeatureOffBySystemForCarplay") == kCFCompareEqualTo)
      {
        v48 = @"FeatureOffBySystemForCarplay";
        goto LABEL_12;
      }

      v91 = sub_100095214();
      v93 = CFStringCompare(v91, v92, 1uLL);
      if (v93)
      {
        v99 = sub_10009511C(v93, @"FailureCountCurrent");
        if (v99)
        {
          v104 = sub_10009511C(v99, @"ResetCaptiveProbe");
          if (v104)
          {
            v108 = sub_10009511C(v104, @"IsPrivateMacAddressCarriedOver");
            if (v108)
            {
              v111 = sub_10009511C(v108, @"ForcedDisassoc");
              if (v111 == kCFCompareEqualTo)
              {
                if (kCFBooleanTrue != v32 || !*(v38 + 370))
                {
                  goto LABEL_15;
                }

                contextb = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:"%s WFMacRandomisation : Manually disassociating from network : <%@> to apply new private MAC properties"];
                }

                objc_autoreleasePoolPop(contextb);
                v112 = sub_10009532C();
                if (!sub_10007393C(v112, v113, v114, 0))
                {
                  goto LABEL_15;
                }

                *(v38 + 370) = 0;
                if (sub_10000A7CC(v36))
                {
                  goto LABEL_15;
                }

                sub_100074AB8(v38, "WiFiManagerPrivateMacUpdateProperty", 31317);
                v48 = @"ForcedDisassoc";
                v49 = v44;
                v50 = kCFBooleanTrue;
                goto LABEL_14;
              }

              v116 = sub_10009511C(v111, @"LinkDownTimestamp");
              if (v32)
              {
                if (v116 == kCFCompareEqualTo)
                {
                  v117 = CFGetTypeID(v32);
                  if (v117 == CFDateGetTypeID())
                  {
                    v48 = @"LinkDownTimestamp";
                    goto LABEL_12;
                  }
                }
              }

              goto LABEL_15;
            }

            v50 = kCFBooleanFalse;
            if (kCFBooleanFalse != v32)
            {
              v50 = kCFBooleanTrue;
              if (kCFBooleanTrue != v32)
              {
                v118 = objc_autoreleasePoolPush();
                v84 = sub_1000951E4();
                if (!v84)
                {
                  goto LABEL_62;
                }

                v85 = "%s WFMacRandomisation : Incorrect value being set for kWiFiPrivateMacIsCarriedOver";
                goto LABEL_61;
              }
            }

            v48 = @"IsPrivateMacAddressCarriedOver";
          }

          else
          {
            v50 = kCFBooleanFalse;
            if (kCFBooleanFalse != v32)
            {
              v50 = kCFBooleanTrue;
              if (kCFBooleanTrue != v32)
              {
                v115 = objc_autoreleasePoolPush();
                v84 = sub_1000951E4();
                if (!v84)
                {
                  goto LABEL_62;
                }

                v85 = "%s WFMacRandomisation : Incorrect value being set for kWiFiPrivateMacResetCaptiveProbe";
LABEL_61:
                [v84 WFLog:3 message:v85];
LABEL_62:
                objc_autoreleasePoolPop(v44);
                goto LABEL_15;
              }
            }

            v48 = @"ResetCaptiveProbe";
          }

          v49 = v44;
          goto LABEL_14;
        }

        if (kCFBooleanTrue != v32)
        {
          goto LABEL_15;
        }

        contextc = sub_100034EEC(v44, @"FailureCountCurrent");
        v100 = sub_100034EEC(v44, @"FailureCountThresholdCurrent");
        v103 = contextc + 1;
        if (v103 >= v100)
        {
          v49 = sub_10009505C();
          v50 = kCFBooleanTrue;
          goto LABEL_14;
        }

        v102 = @"FailureCountCurrent";
        v101 = v44;
      }

      else
      {
        if (kCFBooleanFalse != v32)
        {
          goto LABEL_15;
        }

        v94 = sub_100034EEC(v44, @"FailureCountThresholdCurrent");
        if (*(v38 + 440) > v94)
        {
          v119 = sub_10009505C();
          sub_10000AD34(v119, v120, kCFBooleanFalse);
        }

        else
        {
          LODWORD(v95) = *(v38 + 448) + v94;
          v96 = *(v38 + 444);
          if (v95 >= v96)
          {
            v95 = v96;
          }

          else
          {
            v95 = v95;
          }

          contexta = v95;
          v97 = sub_10009505C();
          sub_10000AD34(v97, v98, kCFBooleanFalse);
          if (contexta)
          {
            sub_10000C614(v44, @"FailureCountThresholdCurrent", contexta);
          }
        }

        v101 = sub_1000952CC();
      }
    }

    else
    {
      if (!v32)
      {
        goto LABEL_15;
      }

      CFBooleanGetTypeID();
      v67 = sub_100010980();
      if (v36 != CFGetTypeID(v67) || kCFBooleanTrue != v32)
      {
        goto LABEL_15;
      }

      v69 = sub_10009505C();
      v71 = sub_100034EEC(v69, v70);
      if (v71 < 1)
      {
        goto LABEL_15;
      }

      if (v71 == 1)
      {
        v72 = sub_1000952CC();
        sub_10000AD34(v72, v73, v74);
        v75 = sub_10009505C();
        sub_10000AD34(v75, v76, 0);
        v77 = sub_1000952CC();
        sub_10000AD34(v77, v78, v79);
        goto LABEL_44;
      }

      v101 = sub_10009505C();
    }

    sub_10000C614(v101, v102, v103);
    goto LABEL_15;
  }

  if (v32)
  {
    CFBooleanGetTypeID();
    v56 = sub_100010980();
    if (v36 == CFGetTypeID(v56))
    {
      if (kCFBooleanFalse != v32 || idx == -1)
      {
        v48 = @"PresentInKnownNetworks";
        goto LABEL_12;
      }

      sub_10000A540(v44, @"NetworkAddedByProfile");
      v80 = sub_100095314();
      v81 = sub_10000AFE4(v80);
      if (v81 && v36 == kCFBooleanTrue)
      {
        sub_100164918();
        if (!v82)
        {
          goto LABEL_15;
        }

        v83 = objc_autoreleasePoolPush();
        v84 = sub_1000951E4();
        if (!v84)
        {
          goto LABEL_62;
        }

        v85 = "WFMacRandomisation : %s removed HS20 entries";
        goto LABEL_61;
      }

      CFArrayRemoveValueAtIndex(v41, idx);
    }
  }

LABEL_15:
  sub_10001EDAC();
  sub_1001610C0();
  v52 = v51;
  sub_10002A1A0();
  sub_100161270();
  if (v52)
  {
    v53 = objc_autoreleasePoolPush();
    v54 = sub_100095350();
    if (v54)
    {
      [v54 WFLog:3 message:" %s WFMacRandomisation : Updated property <%@> of network <%@> with value <%@> to the list of private mac networks"];
    }

    objc_autoreleasePoolPop(v38);
  }

LABEL_36:
  objc_autoreleasePoolPop(v39);
  sub_100008C64();
}

void sub_10015D740()
{
  sub_10000FC44();
  if (!v3 || !v2)
  {
    goto LABEL_17;
  }

  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"%s: bundleId %@"];
  }

  objc_autoreleasePoolPop(v4);
  v5 = sub_1000086AC();
  v7 = sub_1001590AC(v5, v6);
  if (v7)
  {
    if (CFArrayGetCount(v7) >= 1)
    {
      sub_100095368();
      do
      {
        v8 = sub_10001E7C0();
        ValueAtIndex = CFArrayGetValueAtIndex(v8, v9);
        if (ValueAtIndex)
        {
          v11 = ValueAtIndex;
          v12 = objc_autoreleasePoolPush();
          sub_1000952D8();
          if (v1)
          {
            sub_10000A878(v11);
            [v1 WFLog:4 message:{"Network %@ is no longer app owned, removing..."}];
          }

          objc_autoreleasePoolPop(v0);
          v13 = sub_10002CF50();
          sub_100081634(v13, v14, 9);
          sub_10009FCF4(v11);
        }

        sub_100021D9C();
      }

      while (!v15);
    }

    sub_1000113F8();

    CFRelease(v16);
  }

  else
  {
LABEL_17:
    sub_1000113F8();
  }
}

uint64_t sub_10015D864()
{
  sub_100095008();
  sub_10015C640();
  v1 = v0;
  if (v0)
  {
    sub_1000951D8();
    sub_100082AC8(v2, v3, v4);
  }

  return v1;
}

BOOL sub_10015D8A8(uint64_t a1)
{
  v2 = sub_1000953A0(a1);
  if (!v2)
  {
    return 0;
  }

  Count = CFArrayGetCount(v2);
  if (!Count)
  {
    return 0;
  }

  v4 = sub_100095400(Count);
  if (v4 == -1)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(v1 + 224), v4);

  return sub_10001CF90(ValueAtIndex);
}

uint64_t sub_10015D910(uint64_t a1)
{
  v2 = sub_1000953A0(a1);
  if (!v2)
  {
    return 0;
  }

  Count = CFArrayGetCount(v2);
  if (!Count)
  {
    return 0;
  }

  v4 = sub_100095400(Count);
  if (v4 == -1)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(v1 + 224), v4);

  return sub_100177324(ValueAtIndex);
}

void sub_10015D978(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t valuePtr, CFIndex a15, CFIndex idx, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_100094FD4();
  a27 = v28;
  a28 = v32;
  a15 = 0;
  idx = -1;
  if (!v29)
  {
    v63 = objc_autoreleasePoolPush();
    v64 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_45;
    }

    v65 = "%s: null manager";
    goto LABEL_53;
  }

  v33 = v30;
  if (!v30 || (v34 = v31, v35 = v29, !CFArrayGetCount(v30)))
  {
    v63 = objc_autoreleasePoolPush();
    v64 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_45;
    }

    v65 = "%s: null or empty network list";
    goto LABEL_53;
  }

  if (v34 && CFArrayGetCount(v34) >= 1)
  {
    v36 = 0;
    while (1)
    {
      v37 = sub_100003930();
      ValueAtIndex = CFArrayGetValueAtIndex(v37, v38);
      if (ValueAtIndex)
      {
        valuePtr = 0xAAAAAAAAAAAAAAAALL;
        CFNumberGetValue(ValueAtIndex, kCFNumberNSIntegerType, &valuePtr);
        v40 = (valuePtr - 28) > 0x2A || ((1 << (valuePtr - 28)) & 0x78000000001) == 0;
        if (v40 && valuePtr != 1)
        {
          break;
        }
      }

      if (++v36 >= CFArrayGetCount(v34))
      {
        goto LABEL_17;
      }
    }

    v62 = objc_autoreleasePoolPush();
    v63 = v62;
    v64 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_45;
    }

    v65 = "%s: unhandled CWF property type (%d)";
    v66 = 4;
    goto LABEL_44;
  }

LABEL_17:
  v42 = sub_100017CE4(v35, @"List of known networks");
  if (!v42)
  {
    goto LABEL_46;
  }

  v43 = v42;
  if (!sub_10014A48C(v42))
  {
    v63 = objc_autoreleasePoolPush();
    v64 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_45;
    }

    v65 = "%s: failed to get prefs lock";
LABEL_53:
    v66 = 3;
LABEL_44:
    [v64 WFLog:v66 message:v65];
LABEL_45:
    objc_autoreleasePoolPop(v63);
    goto LABEL_46;
  }

  v44 = sub_10000D83C("WiFiManagerUpdateMultipleKnownNetworks");
  v45 = sub_10000D7B8();
  v46 = sub_100072D44(v45);
  if (v46)
  {
    v47 = v46;
    v68 = v44;
    v69 = v43;
    if (CFArrayGetCount(v33) >= 1)
    {
      for (i = 0; i < CFArrayGetCount(v33); ++i)
      {
        v49 = sub_100095044();
        v51 = CFArrayGetValueAtIndex(v49, v50);
        if (v51)
        {
          v52 = v51;
          v53 = *(v35 + 312);
          sub_10015AADC();
          if (idx == -1)
          {
            v57 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              sub_10000A878(v52);
              [sub_10000FC2C() WFLog:? message:?];
            }

            v56 = v57;
          }

          else
          {
            v54 = CFArrayGetValueAtIndex(v47, idx);
            v55 = objc_autoreleasePoolPush();
            if (v54)
            {
              if (off_100298C40)
              {
                sub_10000A878(v54);
                [sub_10000DAC0() WFLog:? message:?];
              }

              objc_autoreleasePoolPop(v55);
              sub_10000C5C0(v54, v52);
              CFRetain(v54);
              CFArrayRemoveValueAtIndex(v47, idx);
              v58 = a15;
              if (*(v35 + 312) == 4)
              {
                v58 = --a15;
              }

              CFArrayInsertValueAtIndex(v47, v58, v54);
              sub_1000086B8();
              sub_10002DC78();
              sub_100159928();
              CFRelease(v54);
              continue;
            }

            if (off_100298C40)
            {
              sub_10000A878(v52);
              [sub_10000DAC0() WFLog:? message:?];
            }

            v56 = v55;
          }

          objc_autoreleasePoolPop(v56);
        }
      }
    }

    sub_10002CF50();
    sub_10015AD08();
    v60 = v59;
    v44 = v68;
    v43 = v69;
  }

  else
  {
    v67 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"%s: Null networks"];
    }

    objc_autoreleasePoolPop(v67);
    v60 = 0;
  }

  sub_1000587F4(v43, v60);

  if (v60)
  {
    sub_100072690(v35);
    sub_100095488(v61);
  }

LABEL_46:
  sub_100008C64();
}

CFMutableArrayRef sub_10015DD48(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1)
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (Mutable)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v4 = [a1 allValues];
      v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v19;
        do
        {
          v8 = 0;
          do
          {
            if (*v19 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v18 + 1) + 8 * v8);
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            if (isKindOfClass)
            {
              isKindOfClass = [[CWFNetworkProfile alloc] initWithExternalForm:v9];
              if (isKindOfClass)
              {
                v12 = isKindOfClass;
                v13 = sub_100022854(isKindOfClass, 0);
                if (v13)
                {
                  v14 = v13;
                  v15 = sub_10001EC64();
                  CFArrayAppendValue(v15, v16);
                  CFRelease(v14);
                }
              }
            }

            v8 = v8 + 1;
          }

          while (v6 != v8);
          v6 = sub_100095104(isKindOfClass, v11, &v18, v22);
        }

        while (v6);
      }
    }
  }

  else
  {
    Mutable = 0;
  }

  objc_autoreleasePoolPop(v2);
  return Mutable;
}

void sub_10015DED8()
{
  sub_100011520();
  v3 = v2;
  v5 = v4;
  sub_100095008();
  v7 = sub_100020030(v6);
  v8 = v7;
  if (v0 && v7)
  {
    v9 = sub_1000083D0();
    ValueAtIndex = CFArrayGetValueAtIndex(v9, v10);
    v12 = sub_100011328();
    if (CFStringCompare(v12, v13, v14))
    {
      v15 = v0;
    }

    else
    {
      v15 = @"XZ";
    }

    if (ValueAtIndex)
    {
      v16 = sub_1000C8018(ValueAtIndex, v15, v5);
      if (v16)
      {
        v17 = sub_100021514(ValueAtIndex);
        if (*(v1 + 2240) != v17)
        {
          v18 = v17;
          v19 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            v22 = *(v1 + 2240);
            [off_100298C40 WFLog:3 message:{"WiFiMC : band support changed. Before : %d, after : %d"}];
          }

          objc_autoreleasePoolPop(v19);
          *(v1 + 2240) = v18;
          sub_10007CB0C(v1, @"WiFiCountryBandSupportKey", v18, 1);
        }
      }
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_15;
  }

  v16 = 0;
  if (v7)
  {
LABEL_15:
    CFRelease(v8);
  }

  v20 = objc_autoreleasePoolPush();
  v21 = sub_100095080();
  if (v21)
  {
    [v21 WFLog:3 message:"%s: <%@> %s"];
  }

  objc_autoreleasePoolPop(v8);
  if (v16 == 1)
  {
    *(v1 + 2236) = v3;
    sub_10012626C(*(v1 + 1536), v0);
  }

  sub_10001091C();
}

uint64_t sub_10015E060(uint64_t result)
{
  if (result)
  {
    LOBYTE(result) = [*(result + 200) getLocaleSource];
  }

  return result;
}

void sub_10015E088(uint64_t a1)
{
  if (a1)
  {
    sub_100008C40();
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Received companion based country code: %@, was %@", "WiFiManagerSetCompanionCountryCode", v2, *(v1 + 2248)}];
    }

    objc_autoreleasePoolPop(v3);
    v4 = *(v1 + 2248);
    if (v4)
    {
      CFRelease(v4);
      *(v1 + 2248) = 0;
    }

    if (v2)
    {
      *(v1 + 2248) = CFRetain(v2);
    }
  }
}

uint64_t sub_10015E124(uint64_t result, CFMutableStringRef theString)
{
  if (result)
  {
    v2 = *(result + 2248);
    if (v2)
    {
      CFStringAppend(theString, v2);
      return 1;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_10015E160()
{
  sub_100008C40();
  Current = CFAbsoluteTimeGetCurrent();
  if (!v0)
  {
    return 0;
  }

  v2 = Current;
  v3 = sub_100083BE4();
  if (v3)
  {
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(v3))
    {
      Value = CFDictionaryGetValue(v3, @"countryCodeUserDefaultDate");
      if (Value)
      {
        AbsoluteTime = CFDateGetAbsoluteTime(Value);
        if (v2 <= AbsoluteTime)
        {
          v10 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: WiFiCC : last used time is [%f]", "WiFiManagerGetCountryCodeFromUserDefaults", *&AbsoluteTime}];
          }
        }

        else
        {
          if (v2 - AbsoluteTime < 5400.0)
          {
            v7 = CFDictionaryGetValue(v3, @"countryCodeUserDefault");
            if (!v7)
            {
LABEL_15:
              CFRelease(v3);
              return v7;
            }

            v8 = sub_100003924();
            CFStringAppend(v8, v9);
            v10 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s WiFiCC : Getting Country Code from user defaults : [%@]", "WiFiManagerGetCountryCodeFromUserDefaults", v7}];
            }

            v7 = 1;
LABEL_14:
            objc_autoreleasePoolPop(v10);
            goto LABEL_15;
          }

          v10 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s WiFiCC : Country Code Data too old. Not using.", "WiFiManagerGetCountryCodeFromUserDefaults", v13}];
          }
        }
      }

      else
      {
        v10 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: WiFiCC : last used date is NULL", "WiFiManagerGetCountryCodeFromUserDefaults", v13}];
        }
      }

      v7 = 0;
      goto LABEL_14;
    }
  }

  v12 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: WiFiCC : No Country Code info present in user defaults", "WiFiManagerGetCountryCodeFromUserDefaults"}];
  }

  objc_autoreleasePoolPop(v12);
  v7 = 0;
  result = 0;
  if (v3)
  {
    goto LABEL_15;
  }

  return result;
}

CFMutableArrayRef sub_10015E360(uint64_t a1)
{
  if (!*(a1 + 144))
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    CFSetApplyFunction(*(a1 + 144), sub_100083CE8, Mutable);
  }

  return Mutable;
}

uint64_t sub_10015E3D4()
{
  sub_100095020();
  v7 = 106;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  if (v0)
  {
    v1 = *(v0 + 112);
    sub_1000083DC();
    CFSetApplyFunction(v2, v3, context);
    return v9;
  }

  else
  {
    return 0;
  }
}

void sub_10015E428(uint64_t a1)
{
  if (a1)
  {
    sub_100095020();
    sub_100094FFC();
    v8 = v1;
    v9 = v2;
    v10 = 0;
    v4 = *(v3 + 112);
    sub_1000083DC();
    CFSetApplyFunction(v5, v6, context);
  }
}

void sub_10015E470(uint64_t a1, int a2)
{
  v7 = a2;
  if (a1)
  {
    v6[0] = a1;
    v6[1] = 0xAAAAAAAA00000037;
    sub_1000084CC();
    v3 = *(v2 + 112);
    sub_1000083DC();
    CFSetApplyFunction(v4, v5, v6);
  }
}

void sub_10015E4BC(uint64_t a1)
{
  if (a1)
  {
    sub_100095020();
    sub_100094FFC();
    v8 = v1;
    v9 = v2;
    v10 = 0;
    v4 = *(v3 + 112);
    sub_1000083DC();
    CFSetApplyFunction(v5, v6, context);
  }
}

void sub_10015E504(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v21 = @"appPolicyUUID";
  v22 = @"appPolicyState";
  v20 = kCFBooleanTrue;
  v9 = sub_10001E2A4(kCFAllocatorDefault, a2, a3, a4, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks, a7, a8, v16[0], v16[1], v17, v18, v19, @"airplay");
  if (v9)
  {
    v10 = v9;
    sub_100094F98();
    v17 = v11;
    v18 = v12;
    v19 = 0;
    v13 = *(a1 + 112);
    sub_1000083DC();
    CFSetApplyFunction(v14, v15, v16);
    CFRelease(v10);
  }
}

void sub_10015E5D8(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v21 = @"appPolicyUUID";
  v22 = @"appPolicyState";
  v20 = kCFBooleanFalse;
  v9 = sub_10001E2A4(kCFAllocatorDefault, a2, a3, a4, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks, a7, a8, v16[0], v16[1], v17, v18, v19, @"airplay");
  if (v9)
  {
    v10 = v9;
    sub_100094F98();
    v17 = v11;
    v18 = v12;
    v19 = 0;
    v13 = *(a1 + 112);
    sub_1000083DC();
    CFSetApplyFunction(v14, v15, v16);
    CFRelease(v10);
  }
}

void sub_10015E6AC(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v21 = @"appPolicyUUID";
  v22 = @"appPolicyState";
  v20 = kCFBooleanTrue;
  v9 = sub_10001E2A4(kCFAllocatorDefault, a2, a3, a4, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks, a7, a8, v16[0], v16[1], v17, v18, v19, @"WiFiCallingUUID");
  if (v9)
  {
    v10 = v9;
    sub_100094F98();
    v17 = v11;
    v18 = v12;
    v19 = 0;
    v13 = *(a1 + 112);
    sub_1000083DC();
    CFSetApplyFunction(v14, v15, v16);
    CFRelease(v10);
  }
}

void sub_10015E780(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v21 = @"appPolicyUUID";
  v22 = @"appPolicyState";
  v20 = kCFBooleanFalse;
  v9 = sub_10001E2A4(kCFAllocatorDefault, a2, a3, a4, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks, a7, a8, v16[0], v16[1], v17, v18, v19, @"WiFiCallingUUID");
  if (v9)
  {
    v10 = v9;
    sub_100094F98();
    v17 = v11;
    v18 = v12;
    v19 = 0;
    v13 = *(a1 + 112);
    sub_1000083DC();
    CFSetApplyFunction(v14, v15, v16);
    CFRelease(v10);
  }
}

void sub_10015E854(uint64_t a1)
{
  v2 = sub_100084120(*(a1 + 32), 0);
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: --- Custom Network Settings start", "WiFiManagerDumpLogBufferAsync_block_invoke_2"}];
  }

  objc_autoreleasePoolPop(v3);
  v4 = objc_autoreleasePoolPush();
  v5 = sub_100029EC4();
  if (v5)
  {
    [v5 WFLog:3 message:{"%s: %@", "WiFiManagerDumpLogBufferAsync_block_invoke_2", v2}];
  }

  cf = v2;
  objc_autoreleasePoolPop(v3);
  v6 = objc_autoreleasePoolPush();
  v7 = sub_100029EC4();
  if (v7)
  {
    [v7 WFLog:3 message:{"%s: --- Custom Network Settings end", "WiFiManagerDumpLogBufferAsync_block_invoke_2"}];
  }

  objc_autoreleasePoolPop(v3);
  v8 = *(a1 + 32);
  v9 = objc_autoreleasePoolPush();
  +[NSDate timeIntervalSinceReferenceDate];
  v11 = v10;
  v12 = +[NSMutableArray array];
  v13 = [objc_msgSend(*(v8 + 1104) dictionaryRepresentation];
  v14 = [v13 countByEnumeratingWithState:v55 objects:v59 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v57;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        sub_100095280(v57);
        if (!v18)
        {
          objc_enumerationMutation(v13);
        }

        v1 = *(v56 + 8 * i);
        v19 = objc_autoreleasePoolPush();
        v20 = [[CWFNetworkProfile alloc] initWithExternalForm:v1];
        if (v20)
        {
          v1 = v20;
          if ([v20 lastJoinedAt])
          {
            [objc_msgSend(v1 "lastJoinedAt")];
            if (v11 - v21 <= 86400.0)
            {
              [v12 addObject:v1];
            }
          }
        }

        objc_autoreleasePoolPop(v19);
      }

      v15 = [v13 countByEnumeratingWithState:v55 objects:v59 count:16];
    }

    while (v15);
  }

  v22 = +[NSMutableDictionary dictionary];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v24 = sub_100095244(v22, v23, &v51, v58);
  if (v24)
  {
    v25 = v24;
    v26 = *v52;
    do
    {
      for (j = 0; j != v25; j = j + 1)
      {
        sub_100095280(v52);
        if (!v18)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v51 + 1) + 8 * j) externalForm];
        v28 = [v22 setObject:v1 forKeyedSubscript:{objc_msgSend(sub_100095314(), "identifier")}];
      }

      v25 = sub_100095244(v28, v29, &v51, v58);
    }

    while (v25);
  }

  sub_1000083D0();
  v30 = CWFConvertPropertyListToJSON();
  if (v30)
  {
    v31 = [NSJSONSerialization dataWithJSONObject:v30 options:0 error:0];
    if (v31)
    {
      v32 = v31;
      v33 = -[NSURL path]([(NSURL *)[+[NSFileManager defaultManager](NSFileManager containerURLForSecurityApplicationGroupIdentifier:"containerURLForSecurityApplicationGroupIdentifier:" URLByAppendingPathComponent:"URLByAppendingPathComponent:", @"com.apple.wifi.recent-networks.json"), "path"];
      if (v33)
      {
        v34 = v33;
        [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v33, 0];
        [(NSData *)v32 writeToFile:v34 atomically:1];
      }
    }
  }

  objc_autoreleasePoolPop(v9);
  v35 = *(a1 + 32);
  if (!v35)
  {
    v45 = objc_autoreleasePoolPush();
    v46 = sub_100029EC4();
    if (v46)
    {
      [v46 WFLog:3 message:{"%s: null manager", "__WiFiManagerDumpHS20Networks"}];
    }

    goto LABEL_52;
  }

  v36 = *(v35 + 224);
  if (!v36)
  {
    v47 = objc_autoreleasePoolPush();
    v48 = sub_100029EC4();
    if (v48)
    {
      [v48 WFLog:3 message:{"%s: null manager->networks", "__WiFiManagerDumpHS20Networks"}];
    }

LABEL_52:
    objc_autoreleasePoolPop(v9);
    goto LABEL_45;
  }

  if (CFArrayGetCount(v36) >= 1)
  {
    v37 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: --- HS 2.0 Networks", "__WiFiManagerDumpHS20Networks"}];
    }

    objc_autoreleasePoolPop(v37);
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v35 + 224), 0);
      if (sub_10000AFE4(ValueAtIndex))
      {
        v39 = sub_1000083D0();
        Mutable = CFStringCreateMutable(v39, v40);
        if (Mutable)
        {
          v42 = Mutable;
          sub_10017651C(ValueAtIndex, Mutable);
          v43 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: HS20 Account Info:%@", "__WiFiManagerDumpHS20Networks", v42}];
          }

          objc_autoreleasePoolPop(v43);
          CFRelease(v42);
        }

        else
        {
          v44 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: Could not allocate buffer for HS 2.0 info", "__WiFiManagerDumpHS20Networks"}];
          }

          objc_autoreleasePoolPop(v44);
        }
      }

      sub_100021D9C();
    }

    while (!v18);
  }

LABEL_45:
  if (cf)
  {
    CFRelease(cf);
  }

  CFRelease(*(a1 + 32));
}

double sub_10015ED20(const __CFArray *a1)
{
  v2 = sub_100020030(a1);
  if (!v2)
  {
    return 0.0;
  }

  v3 = sub_1000954A0(v2);
  if (v3)
  {
    v4 = sub_1000D23D0(v3);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: deviceManager is NULL!", "WiFiManagerGetNANOffHeadConnectionExpiry"}];
    }

    objc_autoreleasePoolPop(v6);
    v4 = 0.0;
  }

  CFRelease(v1);
  return v4;
}

id sub_10015EDBC(id result)
{
  if (result)
  {
    v1 = result;
    v2 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      if (CFSetGetCount(*(v1 + 152)))
      {
        v3 = "present";
      }

      else
      {
        v3 = "not present";
      }

      [sub_10000DAC0() WFLog:"WiFiManagerUpdateAlwaysOnWiFiParameters" message:v3];
    }

    objc_autoreleasePoolPop(v2);
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      if (CFSetGetCount(*(v1 + 176)))
      {
        v5 = "present";
      }

      else
      {
        v5 = "not present";
      }

      [sub_10000DAC0() WFLog:"WiFiManagerUpdateAlwaysOnWiFiParameters" message:v5];
    }

    objc_autoreleasePoolPop(v4);
    if (sub_10000D690(v1))
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_100085A4C(v1);
    }

    sub_10007D140(v1, v6);
    sub_1000348F4();
    sub_100015E50();
    v7 = *(v1 + 112);
    sub_1000083DC();
    CFSetApplyFunction(v8, v9, context);
    return [*(v1 + 2656) updateWowState:*(v1 + 1168) != 0 lpasState:*(v1 + 1184) != 0 lowPowerState:*(v1 + 1170) != 0 batterySaverState:*(v1 + 1700) != 0];
  }

  return result;
}

void sub_10015EF18(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    *(a1 + 2493) = a2;
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Updating companion WiFi state %d\n", "WiFiManagerSetCompanionWiFiState", a2}];
    }

    objc_autoreleasePoolPop(v4);
    sub_1000348F4();
    sub_100015E50();
    v5 = *(a1 + 112);
    sub_1000083DC();
    CFSetApplyFunction(v6, v7, context);
  }
}

void sub_10015EFB0(uint64_t a1, int a2, char a3)
{
  if (a1)
  {
    *(a1 + 2488) = a2;
    *(a1 + 2492) = a3;
    sub_100095020();
    sub_100094FFC();
    v9 = 0;
    v10 = v3;
    v11 = 0;
    v5 = *(v4 + 112);
    sub_1000083DC();
    CFSetApplyFunction(v6, v7, context);
  }
}

void sub_10015F000()
{
  sub_10000D798();
  if (!v1)
  {
    goto LABEL_22;
  }

  v2 = v0;
  if (!v0)
  {
    goto LABEL_22;
  }

  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"%s: params %@"];
  }

  objc_autoreleasePoolPop(v3);
  Value = CFDictionaryGetValue(v2, @"carplayNotificationKey");
  if (!Value)
  {
LABEL_22:
    sub_1000084B8();
    return;
  }

  v5 = Value;
  if (CFStringCompare(Value, @"carplayNotificationInCar", 0))
  {
    if (CFStringCompare(v5, @"carplayNotificationOutOfCar", 0))
    {
      v6 = objc_autoreleasePoolPush();
      v7 = sub_10001D1AC();
      if (v7)
      {
        v8 = "%s: unknown notification %@";
LABEL_18:
        [v7 WFLog:4 message:v8];
        goto LABEL_19;
      }

      goto LABEL_19;
    }

    sub_10000D7B8();
  }

  else
  {
    if (!CFDictionaryGetValue(v2, @"CARPLAY_UUID"))
    {
      v13 = objc_autoreleasePoolPush();
      v7 = sub_10001D1AC();
      if (v7)
      {
        v8 = "%s: UUID is missing for %@";
        goto LABEL_18;
      }

LABEL_19:
      sub_1000084B8();

      objc_autoreleasePoolPop(v14);
      return;
    }

    sub_10001EDA0();
  }

  sub_1000084B8();

  sub_100085E20(v9, v10, v11);
}

__CFDictionary *sub_10015F178(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v3 = Mutable;
  if (Mutable)
  {
    v4 = @"carplayState";
    if (*(a1 + 1608))
    {
      CFDictionarySetValue(Mutable, @"carplayState", kCFBooleanTrue);
      v5 = *(a1 + 1616);
      v4 = @"CARPLAY_UUID";
    }

    else
    {
      v5 = kCFBooleanFalse;
    }

    CFDictionarySetValue(v3, v4, v5);
  }

  return v3;
}

void sub_10015F214(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, CFAllocatorRef allocator, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_100094FD4();
  if (!v28)
  {
    goto LABEL_52;
  }

  v30 = v29;
  if (!v29)
  {
    goto LABEL_52;
  }

  v31 = v28;
  Value = CFDictionaryGetValue(v29, @"LEAKY_AP_SSID");
  if (!Value)
  {
    objc_autoreleasePoolPush();
    v76 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_65;
    }

    v77 = "%s: SSID is NULL";
LABEL_64:
    [v76 WFLog:4 message:v77];
    goto LABEL_65;
  }

  v33 = Value;
  v34 = CFDictionaryGetValue(v30, @"LEAKY_AP_BSSID");
  if (!v34)
  {
    objc_autoreleasePoolPush();
    v76 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_65;
    }

    v77 = "%s: BSSID is NULL";
    goto LABEL_64;
  }

  v35 = v34;
  v36 = CFDictionaryGetValue(v30, @"LEAKY_AP_LEARNED_DATA");
  if (v36)
  {
    v37 = v36;
    v38 = sub_100017CE4(v31, @"List of known networks");
    if (!v38)
    {
      goto LABEL_52;
    }

    v39 = v38;
    if (!sub_10014A48C(v38))
    {
      goto LABEL_52;
    }

    sub_10000D83C("WiFiManagerStoreLeakyAPData");
    v40 = sub_100095220();
    v41 = sub_100072D44(v40);
    if (v41)
    {
      v42 = v41;
      Count = CFArrayGetCount(v41);
      v44 = Count;
      if (Count)
      {
        v83 = v30;
        if (Count < 1)
        {
LABEL_15:
          v49 = v39;
          v50 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:"%s: SSID %@ not found in known networks list"];
          }

          objc_autoreleasePoolPop(v50);
          LODWORD(v44) = 0;
          v51 = 0;
        }

        else
        {
          v45 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v42, v45);
            if (ValueAtIndex)
            {
              v47 = ValueAtIndex;
              v48 = sub_10000A878(ValueAtIndex);
              if (CFStringCompare(v33, v48, 0) == kCFCompareEqualTo)
              {
                break;
              }
            }

            if (v44 == ++v45)
            {
              goto LABEL_15;
            }
          }

          v82 = v39;
          if (!sub_10000A9D0(v47))
          {
            if (!sub_10000A540(v47, @"BSSID"))
            {
              v81 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:4 message:"%s: cannot find BSSID in the network object"];
              }

              objc_autoreleasePoolPop(v81);
              LODWORD(v44) = 0;
              v51 = 0;
LABEL_56:
              v39 = v82;
              goto LABEL_45;
            }

            sub_1000951D8();
            if (CFStringCompare(v62, v63, v64))
            {
              v70 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:4 message:{"%s: BSSID doesn't match - reported %@, from known network %@"}];
              }

              v66 = v70;
            }

            else
            {
              sub_10000AD34(v47, @"LEAKY_AP_LEARNED_DATA", v37);
              v65 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:"%s: updated LEAKY_AP_LEARNED_DATA for network %@ - %@"];
              }

              v66 = v65;
            }

            objc_autoreleasePoolPop(v66);
            v51 = 0;
LABEL_43:
            v39 = v82;
            goto LABEL_44;
          }

          v52 = sub_100011340();
          MutableCopy = CFArrayCreateMutableCopy(v52, v53, v54);
          v51 = MutableCopy;
          if (!MutableCopy)
          {
            LODWORD(v44) = 0;
            goto LABEL_45;
          }

          v56 = CFArrayGetCount(MutableCopy);
          if (v56)
          {
            v57 = v56;
            if (v56 >= 1)
            {
              v58 = 0;
              while (1)
              {
                v59 = CFArrayGetValueAtIndex(v51, v58);
                if (v59)
                {
                  v60 = v59;
                  v61 = CFDictionaryGetValue(v59, @"BSSID");
                  if (!v61)
                  {
                    v75 = objc_autoreleasePoolPush();
                    if (off_100298C40)
                    {
                      [off_100298C40 WFLog:4 message:"%s: cannot find BSSID in the network object"];
                    }

                    objc_autoreleasePoolPop(v75);
                    LODWORD(v44) = 0;
                    goto LABEL_56;
                  }

                  if (CFStringCompare(v35, v61, 0) == kCFCompareEqualTo)
                  {
                    v67 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v60);
                    if (v67)
                    {
                      v68 = v67;
                      CFDictionarySetValue(v67, @"LEAKY_AP_LEARNED_DATA", v37);
                      v69 = objc_autoreleasePoolPush();
                      if (off_100298C40)
                      {
                        [off_100298C40 WFLog:3 message:"%s: updated LEAKY_AP_LEARNED_DATA for network %@ - %@"];
                      }

                      objc_autoreleasePoolPop(v69);
                      CFArraySetValueAtIndex(v51, v58, v68);
                      CFRelease(v68);
                      sub_10000AD34(v47, @"networkKnownBSSListKey", v51);
                    }

                    goto LABEL_43;
                  }
                }

                if (v57 == ++v58)
                {
                  goto LABEL_43;
                }
              }
            }

LABEL_44:
            sub_10015AD08();
            LODWORD(v44) = v71;
            sub_10002DC78();
            sub_100159928();
            goto LABEL_45;
          }

          v49 = v39;
          v80 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:"%s: known BSSIDs list is empty for network %@!"];
          }

          objc_autoreleasePoolPop(v80);
          LODWORD(v44) = 0;
        }

        v39 = v49;
LABEL_45:
        v30 = v83;
        goto LABEL_46;
      }
    }

    else
    {
      LODWORD(v44) = 0;
    }

    v51 = 0;
LABEL_46:
    sub_1000587F4(v39, v44);

    if (v51)
    {
      CFRelease(v51);
    }

    if (v44)
    {
      sub_100008C64();

      sub_100070E8C(v72, v73, v74);
      return;
    }

LABEL_52:
    sub_100008C64();
    return;
  }

  objc_autoreleasePoolPush();
  v76 = off_100298C40;
  if (off_100298C40)
  {
    v77 = "%s: LEAKY_AP_LEARNED_DATA is NULL";
    goto LABEL_64;
  }

LABEL_65:
  sub_100008C64();

  objc_autoreleasePoolPop(v78);
}

void sub_10015F778()
{
  sub_100011520();
  v2 = v0;
  v3 = 0;
  v24 = v1;
  if (v0)
  {
    v4 = v1;
    v5 = 0;
    if (v1)
    {
      v0 = sub_100017CE4(v0, @"List of policies");
      if (v0 && (v6 = v0, v0 = sub_10014A48C(v0), v0))
      {
        v7 = sub_10000D83C("WiFiManagerAddPolicy");
        v8 = sub_10001769C(v2, @"List of policies");
        v5 = sub_10013C1FC(v8);
        if (v5 && (v9 = sub_100041838(v4), Count = CFArrayGetCount(v5), Count >= 1))
        {
          v11 = Count;
          v12 = 0;
          while (1)
          {
            v13 = sub_10001EC64();
            ValueAtIndex = CFArrayGetValueAtIndex(v13, v14);
            if (ValueAtIndex)
            {
              v16 = sub_100041838(ValueAtIndex);
              if (CFStringCompare(v16, v9, 0) == kCFCompareEqualTo)
              {
                break;
              }
            }

            if (v11 == ++v12)
            {
              goto LABEL_11;
            }
          }

          v22 = sub_10001EC64();
          v25.length = 1;
          CFArrayReplaceValues(v22, v25, v23, 0);
        }

        else
        {
LABEL_11:
          v17 = sub_100095044();
          CFArrayAppendValue(v17, v18);
        }

        v3 = sub_10013C2C0(v5);
        if (v3)
        {
          v19 = sub_10007393C(v2, @"List of policies", v3, 1);
          if (v19)
          {
            v20 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              sub_100041838(v24);
              [sub_100008BD4() WFLog:? message:?];
            }

            objc_autoreleasePoolPop(v20);
          }
        }

        else
        {
          v19 = 0;
        }

        sub_1000587F4(v6, v19);
      }

      else
      {
        v3 = 0;
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  sub_100095488(v0);
  v21 = sub_10000D7B8();
  sub_100072D44(v21);
  sub_1000731D0(v2, *(v2 + 232));
  if (v3)
  {
    CFRelease(v3);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  sub_10001091C();
}

void sub_10015F960()
{
  sub_10000FC44();
  v2 = v1;
  v4 = v3;
  CFStringGetTypeID();
  v5 = sub_100095068();
  Count = CFGetTypeID(v5);
  if (!v4)
  {
    goto LABEL_26;
  }

  v7 = Count;
  Count = CFArrayGetCount(*(v4 + 1704));
  v8 = 0;
  if (!v2)
  {
    goto LABEL_23;
  }

  v9 = Count;
  if (!Count)
  {
    goto LABEL_23;
  }

  Count = sub_100017CE4(v4, @"List of policies");
  if (!Count || (v10 = Count, Count = sub_10014A48C(Count), !Count))
  {
LABEL_26:
    v8 = 0;
    goto LABEL_23;
  }

  v11 = sub_10000D83C("WiFiManagerRemovePolicy");
  v12 = sub_10001769C(v4, @"List of policies");
  v8 = sub_10013C1FC(v12);
  if (!v8)
  {
    goto LABEL_27;
  }

  if (v9 >= 1)
  {
    v13 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v8, v13);
      if (v0 == v7)
      {
        ValueAtIndex = sub_100041838(ValueAtIndex);
      }

      if (CFEqual(ValueAtIndex, v2))
      {
        break;
      }

      if (v9 == ++v13)
      {
        goto LABEL_15;
      }
    }

    CFArrayRemoveValueAtIndex(v8, v13);
  }

LABEL_15:
  v15 = sub_10013C2C0(v8);
  if (v15)
  {
    v16 = v15;
    v17 = sub_10007393C(v4, @"List of policies", v15, 1);
    CFRelease(v16);
    if (v17)
    {
      v18 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        if (v0 != v7)
        {
          sub_100041838(v2);
        }

        [sub_1000951CC() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v18);
    }
  }

  else
  {
LABEL_27:
    v17 = 0;
  }

  sub_1000587F4(v10, v17);

LABEL_23:
  sub_100095488(Count);
  v19 = sub_10000D7B8();
  sub_100072D44(v19);
  sub_1000731D0(v4, *(v4 + 232));
  if (v8)
  {
    CFRelease(v8);
  }

  sub_1000113F8();
}

uint64_t sub_10015FB28(uint64_t a1)
{
  if (!a1)
  {
    v21 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null manager", "__WiFiManagerCheckProfileNetworksForMDMOrSupervised"}];
    }

    goto LABEL_34;
  }

  if (sub_10000A154(a1))
  {
    return 0;
  }

  if (([*(a1 + 1584) isMCInitialized] & 1) == 0)
  {
    v21 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: ManagedConfiguration not initialized", "__WiFiManagerCheckProfileNetworksForMDMOrSupervised"}];
    }

LABEL_34:
    objc_autoreleasePoolPop(v21);
    return 0;
  }

  sub_100020170(a1);
  if (!v2)
  {
    return 0;
  }

  Count = CFArrayGetCount(v2);
  if (!Count)
  {
    return 0;
  }

  if (Count >= 1)
  {
    v4 = kCFBooleanTrue;
    while (1)
    {
      v5 = sub_10001E7C0();
      ValueAtIndex = CFArrayGetValueAtIndex(v5, v6);
      v8 = sub_10000A540(ValueAtIndex, @"isProfileBasedNetwork");
      if (v8)
      {
        v9 = v8 == v4;
      }

      else
      {
        v9 = 0;
      }

      if (!v9)
      {
        goto LABEL_21;
      }

      context = objc_autoreleasePoolPush();
      v10 = *(a1 + 1584);
      v11 = [v10 isWiFiNetworkMDMNetwork:ValueAtIndex];
      if (v11)
      {
        v12 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v22 = sub_10000A878(ValueAtIndex);
          [sub_10002D390() WFLog:"__WiFiManagerCheckProfileNetworksForMDMOrSupervised" message:v22];
        }

        objc_autoreleasePoolPop(v12);
        v4 = kCFBooleanTrue;
        v13 = kCFBooleanTrue;
      }

      else
      {
        v13 = 0;
      }

      sub_10000AD34(ValueAtIndex, @"PrivateMacManagedNetwork", v13);
      if ([v10 isSupervisedDevice])
      {
        break;
      }

      sub_10000AD34(ValueAtIndex, @"PrivateMacSupervisedDevice", 0);
      objc_autoreleasePoolPop(context);
      if (v11)
      {
        goto LABEL_27;
      }

      v14 = sub_100095308();
      sub_10000AD34(v14, v15, 0);
LABEL_21:
      sub_100021D9C();
      if (v9)
      {
        goto LABEL_28;
      }
    }

    v16 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      sub_10000A878(ValueAtIndex);
      [sub_100029DB0() WFLog:? message:?];
    }

    objc_autoreleasePoolPop(v16);
    v4 = kCFBooleanTrue;
    sub_10000AD34(ValueAtIndex, @"PrivateMacSupervisedDevice", kCFBooleanTrue);
    objc_autoreleasePoolPop(context);
LABEL_27:
    v17 = sub_100095308();
    sub_10000AD34(v17, v18, v4);
    sub_1001645AC(a1, ValueAtIndex);
    goto LABEL_21;
  }

LABEL_28:
  sub_1001610C0();
  v19 = 1;
  sub_10002A1A0();
  sub_100161270();
  return v19;
}

void sub_10015FDF4(void *a1, int a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = sub_100095044();
  v7 = sub_10001769C(v5, v6);
  if ((a2 != 0) == (v7 == 0))
  {
    v43 = v4;
    if (a2)
    {
      v10 = sub_10013C004(kCFAllocatorDefault, [NSNumber numberWithInteger:1], 0, 0);
      if (v10)
      {
        v11 = v10;
        v12 = sub_100041838(v10);
        v13 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: created restriction policy with UUID %@", "WiFiManagerEnableNetworksWhitelisting", v12}];
        }

        objc_autoreleasePoolPop(v13);
        sub_10001E7C0();
        sub_10015F778();
        v14 = sub_100021858();
        v15 = sub_100072D44(v14);
        if (v15)
        {
          Count = CFArrayGetCount(v15);
          if (Count >= 1)
          {
            v17 = Count;
            for (i = 0; i != v17; ++i)
            {
              v19 = sub_100029EAC();
              ValueAtIndex = CFArrayGetValueAtIndex(v19, v20);
              if (ValueAtIndex)
              {
                v22 = ValueAtIndex;
                if (sub_10009ED84(ValueAtIndex))
                {
                  v23 = sub_1000950F8();
                  sub_10000AD34(v23, v24, v12);
                  sub_100011580();
                  sub_10002DC78();
                  sub_100159928();
                  v25 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    v41 = sub_10000A878(v22);
                    [sub_10000FC2C() WFLog:"WiFiManagerEnableNetworksWhitelisting" message:{v12, v41}];
                  }

                  objc_autoreleasePoolPop(v25);
                }
              }
            }
          }

          sub_10001EC64();
          sub_10015AD08();
          sub_1000950D0(a1);
          sub_100041838(v11);
          v26 = sub_1000305C4();
          sub_10007D6E8(v26, @"kWiFiWhitelistingUUIDKey", v27);
          v28 = sub_100021858();
          sub_100086430(v28, v29);
          v4 = v43;
        }

        CFRelease(v11);
      }
    }

    else
    {
      v30 = sub_100021858();
      v31 = sub_100072D44(v30);
      if (v31)
      {
        v32 = v31;
        v33 = CFArrayGetCount(v31);
        if (v33 >= 1)
        {
          v34 = v33;
          for (j = 0; j != v34; ++j)
          {
            v36 = CFArrayGetValueAtIndex(v32, j);
            if (v36)
            {
              v37 = v36;
              v38 = sub_10000A540(v36, @"PolicyUUID");
              if (v38)
              {
                if (CFStringCompare(v38, v7, 0) == kCFCompareEqualTo)
                {
                  sub_10000AD34(v37, @"PolicyUUID", 0);
                  sub_1000083F0();
                  sub_10002DC78();
                  sub_100159928();
                  v39 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    v42 = sub_10000A878(v37);
                    [sub_10000DAC0() WFLog:"WiFiManagerEnableNetworksWhitelisting" message:{v7, v42}];
                  }

                  objc_autoreleasePoolPop(v39);
                }
              }
            }
          }
        }

        sub_10000D80C();
        sub_10015AD08();
        sub_1000950D0(a1);
        sub_10001E7C0();
        sub_10015F960();
        sub_10007D6E8(a1, @"kWiFiWhitelistingUUIDKey", 0);
        v40 = sub_1000864A8(a1);
        sub_100086430(a1, v40);
      }
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v9 = "TRUE";
      if (!a2)
      {
        v9 = "FALSE";
      }

      [off_100298C40 WFLog:3 message:{"%s: Nothing changed. restrictionUUID %@ and isWhitelistingEnabled %s", "WiFiManagerEnableNetworksWhitelisting", v7, v9}];
    }

    objc_autoreleasePoolPop(v8);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_100160178()
{
  sub_1000953C8();
  v68 = v0;
  v69 = v6;
  if (v1)
  {
    v7 = v2;
    if (v2)
    {
      v8 = v5;
      v9 = v4;
      v10 = v3;
      v11 = v1;
      v12 = sub_10000A540(v1, @"BSSID");
      if (v12)
      {
        v13 = v12;
        v14 = sub_100034FE4();
        Mutable = CFArrayCreateMutable(v14, v15, v16);
        if (!Mutable)
        {
          goto LABEL_37;
        }

        v18 = Mutable;
        v19 = sub_10000A540(v11, @"networkKnownBSSListKey");
        if (!v19)
        {
          goto LABEL_36;
        }

        v20 = v19;
        if (CFArrayGetCount(v19) < 1)
        {
          goto LABEL_36;
        }

        v21 = 0;
        v22 = 0;
        do
        {
          v23 = sub_100029EAC();
          ValueAtIndex = CFArrayGetValueAtIndex(v23, v24);
          if (ValueAtIndex)
          {
            v26 = ValueAtIndex;
            Value = CFDictionaryGetValue(ValueAtIndex, @"BSSID");
            if (Value)
            {
              if (CFEqual(Value, v13))
              {
                v22 = v26;
              }

              else
              {
                CFArrayAppendValue(v18, v26);
              }
            }
          }

          ++v21;
        }

        while (v21 < CFArrayGetCount(v20));
        if (!v22)
        {
          goto LABEL_36;
        }

        v28 = sub_100034FE4();
        MutableCopy = CFDictionaryCreateMutableCopy(v28, v29, v22);
        if (!MutableCopy)
        {
          goto LABEL_36;
        }

        v31 = MutableCopy;
        v32 = [CLLocation alloc];
        v33 = CLLocationCoordinate2DMake(v10, v9);
        v34 = [v32 initWithCoordinate:v7 altitude:v33.latitude horizontalAccuracy:v33.longitude verticalAccuracy:0.0 timestamp:{v8, 0.0}];
        v35 = CFDictionaryGetValue(v31, @"networkLocnTimestamp");
        v36 = sub_100095274();
        if ([v37 isLocationValid:v34 uptoSeconds:v36 requiredAccuracy:1.79769313e308])
        {
          if (!v35)
          {
            v55 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              sub_1001784B0(v11);
              v56 = sub_100095320();
              v64 = sub_10017850C(v56);
              [sub_10002D390() WFLog:"WiFiManagerUpdateBSSLocation" message:{v21, v64}];
            }

            objc_autoreleasePoolPop(v55);
            goto LABEL_30;
          }

          valuePtr = 0.0;
          v38 = CFDictionaryGetValue(v31, @"networkLocnLat");
          CFNumberGetValue(v38, kCFNumberDoubleType, &valuePtr);
          v66 = 0.0;
          v39 = CFDictionaryGetValue(v31, @"networkLocnLong");
          CFNumberGetValue(v39, kCFNumberDoubleType, &v66);
          v65 = 0.0;
          v40 = CFDictionaryGetValue(v31, @"networkLocnAccuracy");
          CFNumberGetValue(v40, kCFNumberDoubleType, &v65);
          v41 = [CLLocation alloc];
          v42 = CLLocationCoordinate2DMake(valuePtr, v66);
          v43 = [v41 initWithCoordinate:v35 altitude:v42.latitude horizontalAccuracy:v42.longitude verticalAccuracy:0.0 timestamp:{v65, 0.0}];
          [v43 horizontalAccuracy];
          v45 = v44;
          [v34 horizontalAccuracy];
          if (v45 > v46 || ([v43 distanceFromLocation:v34], v48 = v47, objc_msgSend(v43, "horizontalAccuracy"), v50 = v48 - v49, objc_msgSend(v34, "horizontalAccuracy"), v50 > v51))
          {

LABEL_30:
            CFDictionarySetValue(v31, @"networkLocnLat", [NSNumber numberWithDouble:v10]);
            CFDictionarySetValue(v31, @"networkLocnLong", [NSNumber numberWithDouble:v9]);
            CFDictionarySetValue(v31, @"networkLocnAccuracy", [NSNumber numberWithDouble:v8]);
            CFDictionarySetValue(v31, @"networkLocnTimestamp", v7);
            v57 = sub_1000086B8();
            CFArrayAppendValue(v57, v58);
            sub_10000AD34(v11, @"networkKnownBSSListKey", v18);
LABEL_35:
            CFRelease(v31);
LABEL_36:
            CFRelease(v18);
            goto LABEL_37;
          }

          v59 = objc_autoreleasePoolPush();
          v60 = off_100298C40;
          if (off_100298C40)
          {
            sub_1001784B0(v11);
            v61 = sub_100095320();
            [v60 WFLog:4 message:{"%s: skipping already known location for %@ (%@)", "WiFiManagerUpdateBSSLocation", v21, sub_10017850C(v61)}];
          }

          objc_autoreleasePoolPop(v59);
        }

        else
        {
          v52 = objc_autoreleasePoolPush();
          v53 = off_100298C40;
          if (off_100298C40)
          {
            v54 = sub_1001784B0(v11);
            [v53 WFLog:4 message:{"%s: did not get a valid new location for %@ (%@)", "WiFiManagerUpdateBSSLocation", v54, sub_10017850C(v11)}];
          }

          objc_autoreleasePoolPop(v52);
        }

        goto LABEL_35;
      }

      v62 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v63 = sub_10000A878(v11);
        [sub_10000DAC0() WFLog:"WiFiManagerUpdateBSSLocation" message:v63];
      }

      objc_autoreleasePoolPop(v62);
    }
  }

LABEL_37:
  sub_100020CB0();
}

BOOL sub_100160620(const __CFArray *a1)
{
  v1 = sub_100021720(a1);
  v2 = v1;
  if (v1)
  {
    CFRelease(v1);
  }

  return v2 != 0;
}

CFTypeRef sub_100160658(uint64_t a1)
{
  sub_100160730();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainSetup, v2, kSCEntNetIPv4);
  if (!NetworkServiceEntity)
  {
    v9 = 0;
    v7 = v3;
LABEL_7:
    CFRelease(v7);
    return v9;
  }

  v5 = NetworkServiceEntity;
  v6 = SCDynamicStoreCopyValue(*(a1 + 80), NetworkServiceEntity);
  v7 = v6;
  if (v6 && (Value = CFDictionaryGetValue(v6, kSCPropNetIPv4ConfigMethod)) != 0)
  {
    v9 = CFRetain(Value);
  }

  else
  {
    v9 = 0;
  }

  CFRelease(v3);
  CFRelease(v5);
  if (v7)
  {
    goto LABEL_7;
  }

  return v9;
}

void sub_100160730()
{
  sub_10000FC44();
  v3 = v2;
  v5 = v4;
  v6 = *(v4 + 216);
  if (v6)
  {
    v7 = sub_10000A878(v1);
    Value = CFDictionaryGetValue(v6, v7);
  }

  else
  {
    Value = 0;
  }

  v9 = SCNetworkSetCopyAll(*(v5 + 1056));
  if (v9)
  {
    v10 = v9;
    SCPreferencesSynchronize(*(v5 + 1056));
    if (CFArrayGetCount(v10) >= 1)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v10, v12);
        if (ValueAtIndex)
        {
          v14 = ValueAtIndex;
          SCNetworkSetGetName(ValueAtIndex);
          v15 = sub_1000952E4();
          SetID = SCNetworkSetGetSetID(v15);
          if (SetID && Value && CFEqual(SetID, Value))
          {
            goto LABEL_16;
          }

          if (v0 && CFEqual(v0, @"Automatic"))
          {
            v11 = v14;
          }
        }

        ++v12;
      }

      while (v12 < CFArrayGetCount(v10));
      v14 = v11;
      if (!v11)
      {
        goto LABEL_39;
      }

LABEL_16:
      v17 = SCNetworkSetCopyServices(v14);
      if (v17)
      {
        v18 = v17;
        ServiceOrder = SCNetworkSetGetServiceOrder(v14);
        if (ServiceOrder)
        {
          v20 = ServiceOrder;
          if (CFArrayGetCount(ServiceOrder) >= 1)
          {
            v21 = 0;
            v22 = 0;
            v35 = v10;
            do
            {
              v23 = sub_100094FB0();
              if (CFArrayGetValueAtIndex(v23, v24) && CFArrayGetCount(v18) >= 1)
              {
                v25 = 0;
                Enabled = 0;
                do
                {
                  v27 = CFArrayGetValueAtIndex(v18, v25);
                  if (v27)
                  {
                    v28 = v27;
                    ServiceID = SCNetworkServiceGetServiceID(v27);
                    if (ServiceID)
                    {
                      v30 = ServiceID;
                      Interface = SCNetworkServiceGetInterface(v28);
                      if (Interface)
                      {
                        do
                        {
                          v32 = Interface;
                          Interface = SCNetworkInterfaceGetInterface(Interface);
                        }

                        while (Interface);
                        BSDName = SCNetworkInterfaceGetBSDName(v32);
                        if (BSDName)
                        {
                          if (CFEqual(BSDName, v3))
                          {
                            Enabled = SCNetworkServiceGetEnabled(v28);
                            if (Enabled)
                            {
                              v22 = v30;
                            }
                          }
                        }
                      }
                    }
                  }

                  ++v25;
                }

                while (CFArrayGetCount(v18) > v25);
                v34 = Enabled == 0;
                v10 = v35;
              }

              else
              {
                v34 = 1;
              }

              ++v21;
            }

            while (CFArrayGetCount(v20) > v21 && v34);
            if (v22)
            {
              CFRetain(v22);
            }
          }
        }

        CFRelease(v18);
      }
    }

LABEL_39:
    CFRelease(v10);
  }

  sub_1000113F8();
}

CFTypeRef sub_100160968(uint64_t a1)
{
  sub_100160730();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainSetup, v2, kSCEntNetIPv6);
  if (!NetworkServiceEntity)
  {
    v9 = 0;
    v7 = v3;
LABEL_7:
    CFRelease(v7);
    return v9;
  }

  v5 = NetworkServiceEntity;
  v6 = SCDynamicStoreCopyValue(*(a1 + 80), NetworkServiceEntity);
  v7 = v6;
  if (v6 && (Value = CFDictionaryGetValue(v6, kSCPropNetIPv6ConfigMethod)) != 0)
  {
    v9 = CFRetain(Value);
  }

  else
  {
    v9 = 0;
  }

  CFRelease(v3);
  CFRelease(v5);
  if (v7)
  {
    goto LABEL_7;
  }

  return v9;
}

void sub_100160A40(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *(a1 + 2432);
  if (!v2 || ![*(a1 + 2432) count])
  {
    return;
  }

  v3 = objc_autoreleasePoolPush();
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v5 = sub_100095244(v3, v4, &v87, v92);
  if (!v5)
  {
LABEL_40:
    objc_autoreleasePoolPop(v3);
    return;
  }

  v6 = v5;
  v59 = v3;
  v61 = a1;
  v63 = 0;
  v7 = *v88;
  v8 = @"type";
  v65 = v2;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v88 != v7)
      {
        objc_enumerationMutation(v2);
      }

      v10 = *(*(&v87 + 1) + 8 * i);
      v11 = [v2 objectForKey:v10];
      v12 = [v11 objectForKey:v8];
      if (v12)
      {
        v14 = v12;
        v12 = [v11 objectForKey:@"notificationType"];
        if (v12)
        {
          v15 = v12;
          v16 = v6;
          v17 = v8;
          v18 = v7;
          v19 = [v11 objectForKey:@"source"];
          if (v19)
          {
            v20 = v19;
          }

          else
          {
            v20 = &off_100281170;
          }

          v21 = [v14 unsignedIntValue];
          v22 = [v15 unsignedIntValue];
          v23 = [v11 objectForKey:@"timestamp"];
          v24 = [v20 unsignedIntValue];
          v12 = [v11 objectForKey:@"count"];
          if (!v23)
          {
            goto LABEL_24;
          }

          if (!v12)
          {
            v12 = &off_100281188;
          }

          v12 = +[WiFiUserNotificationManager canRepromptForNotificationType:blacklistType:source:atDate:count:](WiFiUserNotificationManager, "canRepromptForNotificationType:blacklistType:source:atDate:count:", v22, v21, v24, v23, [v12 integerValue]);
          if (v12)
          {
            +[NSDate date];
            v12 = [sub_10000757C() timeIntervalSinceDate:?];
            v7 = v18;
            if (v25 > 2592000.0)
            {
              v26 = objc_autoreleasePoolPush();
              v8 = v17;
              if (off_100298C40)
              {
                v55 = v23;
                v57 = v22;
                v51 = "WiFiManagerRemoveOldUserBlackListEntries";
                v53 = v10;
                [off_100298C40 WFLog:3 message:"%s: removing ssid: %@ timestamp: %@ notificationType: %d"];
              }

              objc_autoreleasePoolPop(v26);
              v27 = v63;
              v6 = v16;
              if (!v63)
              {
                v27 = objc_alloc_init(NSMutableArray);
              }

              v63 = v27;
              v12 = [v27 addObject:v10];
              goto LABEL_26;
            }
          }

          else
          {
LABEL_24:
            v7 = v18;
          }

          v8 = v17;
          v6 = v16;
LABEL_26:
          v2 = v65;
          continue;
        }
      }
    }

    v6 = sub_100095244(v12, v13, &v87, v92);
  }

  while (v6);
  v3 = v59;
  v28 = v61;
  v29 = v63;
  if (!v63)
  {
    goto LABEL_40;
  }

  v30 = [v2 mutableCopy];
  sub_100095134();
  v39 = sub_1000953E0(v31, v32, v33, v34, v35, v36, v37, v38, v51, v53, v55, v57, v59, v61, v63, v65, @"count", @"timestamp", @"source", @"notificationType", v71, v73, v75, v77, v79, v81, v83, v85, v87, *(&v87 + 1), v88, *(&v88 + 1), v89, *(&v89 + 1), v90, *(&v90 + 1), v91);
  if (v39)
  {
    v40 = v39;
    v41 = *v76;
    do
    {
      for (j = 0; j != v40; j = j + 1)
      {
        if (*v76 != v41)
        {
          objc_enumerationMutation(v29);
        }

        v43 = [v30 removeObjectForKey:*(v74 + 8 * j)];
      }

      v40 = sub_1000953E0(v43, v44, v45, v46, v47, v48, v49, v50, v52, v54, v56, v58, v60, v62, v64, v66, v67, v68, v69, v70, v72, v74, v76, v78, v80, v82, v84, v86, v87, *(&v87 + 1), v88, *(&v88 + 1), v89, *(&v89 + 1), v90, *(&v90 + 1), v91);
    }

    while (v40);
  }

  [+[NSUserDefaults standardUserDefaults](NSUserDefaults setObject:"setObject:forKey:" forKey:v30, @"UserNotificationBlacklist"];
  sub_100087AD4(v28, v30);
  if (v30)
  {
    CFRelease(v30);
  }

  objc_autoreleasePoolPop(v3);
  CFRelease(v29);
}