void sub_10010F9D0(uint64_t a1, uint64_t a2, int a3, __CFArray *a4, uint64_t a5, void *a6)
{
  if (a6)
  {
    v17 = sub_10000D83C("__WiFiVirtualInterfaceEventCallback");
    if (sub_10000E7E8(a6[3], a3) == 1)
    {
      if (a3 > 9)
      {
        if (a3 == 10)
        {
          sub_10010F8D4(a6, a6[5], a4, a1);
        }

        else if (a3 == 172)
        {
          sub_10010F244(a6, a4);
        }
      }

      else if (a3 == 8)
      {
        v14 = a6[5];
        v16 = a6[11];
        v15 = a6[12];
        a6[11] = 0;
        a6[12] = 0;
        if (v16)
        {
          v16(a6[3], v14, a1, v15);
        }

        sub_10002ECA0(a6[3]);
      }

      else if (a3 == 9)
      {
        v10 = a6[5];
        v12 = a6[7];
        v11 = a6[8];
        a6[7] = 0;
        a6[8] = 0;
        if (a4)
        {
          v13 = CFGetTypeID(a4);
          if (v13 == CFDictionaryGetTypeID())
          {
            a4 = sub_10000AD2C(kCFAllocatorDefault, a4);
          }

          else
          {
            a4 = 0;
          }
        }

        if (v12)
        {
          v12(a6[3], v10, a4, 0, a1, v11);
        }

        if (a4)
        {
          CFRelease(a4);
        }
      }
    }
  }
}

uint64_t sub_10010FB48(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 104) = a2;
  *(result + 112) = a3;
  return result;
}

uint64_t sub_10010FB50(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 120) = a2;
  *(result + 128) = a3;
  return result;
}

uint64_t sub_10010FB58(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 136) = a2;
  *(result + 144) = a3;
  return result;
}

uint64_t sub_10010FB60(int a1, const void *a2, CFTypeRef cf1)
{
  if (cf1)
  {
    v4 = CFEqual(cf1, kCFBooleanTrue) == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v6 = "Y";
    if (v4)
    {
      v6 = "N";
    }

    [off_100298C40 WFLog:3 message:{"%s: UUID %@, active %s", "WiFiVirtualInterfaceSetAppTrafficPolicy", a2, v6}];
  }

  objc_autoreleasePoolPop(v5);
  if (CFEqual(a2, @"CARPLAY_UUID"))
  {
    v7 = 6;
  }

  else if (CFEqual(a2, @"FACETIME_UUID"))
  {
    v7 = 10;
  }

  else
  {
    if (!CFEqual(a2, @"WiFiCallingUUID"))
    {
      if (CFEqual(a2, @"airplay"))
      {
        return 0;
      }

      else
      {
        return 4294963396;
      }
    }

    v7 = 11;
  }

  v8 = +[WiFiP2PSPITransactionRequestor shared];
  if (v4)
  {
    [v8 endTransaction:v7];
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10010FCF4;
    v10[3] = &unk_100262E60;
    v10[4] = v7;
    [v8 beginTransaction:v7 completionHandler:v10];
  }

  return 0;
}

void sub_10010FCF4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"Transaction %d abruptly ended because %d", *(a1 + 32), a2}];
    }

    objc_autoreleasePoolPop(v4);
  }
}

uint64_t sub_10010FD74(uint64_t a1, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  v5 = +[NSMutableArray array];
  v6 = Count;
  if (Count)
  {
    v7 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
      if (ValueAtIndex)
      {
        v9 = ValueAtIndex;
        v10 = CFGetTypeID(ValueAtIndex);
        if (v10 == CFDictionaryGetTypeID())
        {
          Value = CFDictionaryGetValue(v9, @"MWS_Channel_Number");
          valuePtr = -1431655766;
          if (Value)
          {
            v12 = Value;
            v13 = CFGetTypeID(Value);
            if (v13 == CFNumberGetTypeID())
            {
              CFNumberGetValue(v12, kCFNumberSInt32Type, &valuePtr);
              v14 = [WiFiChannel alloc];
              LOBYTE(v17) = 0;
              v15 = [v14 initWithChannelNumber:valuePtr bandwidth:1 is2_4GHz:valuePtr < 0xF is5GHz:valuePtr > 0xE is6GHz:0 isDFS:0 extensionChannelAbove:v17];
              [v5 addObject:v15];
            }
          }
        }
      }

      ++v7;
    }

    while (v6 != v7);
  }

  if ([*(a1 + 192) updateLTERestrictedChannels:v5 error:0])
  {
    return 0;
  }

  else
  {
    return 4294963365;
  }
}

uint64_t sub_10010FEC8(uint64_t a1, const void *a2, const __CFDictionary *a3, void (*a4)(void, const void *, void, void), uint64_t a5, const __CFString *a6)
{
  v11 = dispatch_semaphore_create(0);
  v29 = a2;
  if (a3 && CFDictionaryGetValue(a3, @"APPLE80211KEY_AWDL_INFO_ASSISTED_DISCOVERY_FOLLOW"))
  {
    valuePtr = 1;
    v12 = kCFAllocatorDefault;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!Mutable)
    {
      sub_1001ACF78();
      v25 = 4294963396;
      if (!v11)
      {
        return v25;
      }

      goto LABEL_30;
    }

    v14 = Mutable;
    v15 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
    if (v15)
    {
      v16 = v15;
      CFDictionarySetValue(v14, @"APPLE80211KEY_RANGING_FOLLOW_MODE", v15);
      CFRelease(v16);
    }

    Value = CFDictionaryGetValue(a3, @"AWDL_INFO_PEER_PREFERRED_BAND");
    if (Value)
    {
      v31 = 0;
      CFNumberGetValue(Value, kCFNumberSInt32Type, &v31);
      v31 = v31;
      v18 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v31);
      CFDictionarySetValue(v14, @"APPLE80211KEY_RANGING_FOLLOW_MODE_BAND", v18);
      if (v18)
      {
        CFRelease(v18);
      }
    }

    v19 = sub_10011029C(a1, a2, a3, kCFBooleanTrue);
    v20 = 1;
  }

  else
  {
    v19 = sub_100110400(a1, a2, a3, kCFBooleanTrue, a6);
    v14 = 0;
    v20 = 0;
    v12 = kCFAllocatorDefault;
  }

  *bytes = 0xC064696669775F06;
  v34 = 17563660;
  v21 = CFDataCreate(v12, bytes, 12);
  if (!v21)
  {
    goto LABEL_33;
  }

  v22 = [[AWDLServiceDiscoveryConfiguration alloc] initWithKey:v21];
  v23 = *(a1 + 208);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100110E28;
  v30[3] = &unk_10025ED68;
  v30[4] = v11;
  [v23 startServiceDiscoveryWithConfiguration:v22 completionHandler:v30];

  v24 = dispatch_time(0, 2000000000);
  if (dispatch_semaphore_wait(v11, v24))
  {
    sub_1001ACFE4();
LABEL_33:
    v25 = 4294963396;
    goto LABEL_23;
  }

  v25 = sub_100110E30(a1, v19);
  v26 = objc_autoreleasePoolPush();
  if (v25)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: APPLE80211_IOC_AWDL_PEER_TRAFFIC_REGISTRATION returned error %d.", "WiFiVirtualInterfaceStartAwdl", v25}];
    }

    objc_autoreleasePoolPop(v26);
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: AWDL brought up with wifid assisted policy %@", "WiFiVirtualInterfaceStartAwdl", v19}];
    }

    objc_autoreleasePoolPop(v26);
    if (v20)
    {
      sub_10014EB74(*(a1 + 24));
      v27 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: AWDL brought up with wifid follow mode %@", "WiFiVirtualInterfaceStartAwdl", v14}];
      }

      objc_autoreleasePoolPop(v27);
    }

    if (a4)
    {
      *(a1 + 224) = 1;
      a4(*(a1 + 24), v29, 0, 0);
    }

    v25 = 0;
  }

LABEL_23:
  if (v19)
  {
    CFRelease(v19);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v11)
  {
LABEL_30:
    dispatch_release(v11);
  }

  return v25;
}

__CFDictionary *sub_10011029C(uint64_t a1, const void *a2, uint64_t a3, const void *a4)
{
  values = 0;
  if (!a1)
  {
    sub_1001AD248();
LABEL_13:
    v8 = 0;
    goto LABEL_8;
  }

  if (!a2)
  {
    sub_1001AD1DC();
    goto LABEL_13;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v8 = Mutable;
  if (Mutable)
  {
    CFDictionarySetValue(Mutable, @"TR_SRV_NAME", @"ranging-Intiator");
    values = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (values)
    {
      v9 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
      if (v9)
      {
        v10 = v9;
        CFDictionarySetValue(v8, @"TR_PEER_CONTEXTS", v9);
        CFRelease(v10);
        CFDictionarySetValue(values, @"TR_IFNAME", a2);
        CFDictionarySetValue(v8, @"TR_ACTIVE", a4);
        if (!a3)
        {
          sub_1001AD044();
        }
      }

      else
      {
        sub_1001AD0A4();
      }
    }

    else
    {
      sub_1001AD104();
    }
  }

  else
  {
    sub_1001AD170();
  }

LABEL_8:
  if (values)
  {
    CFRelease(values);
  }

  return v8;
}

__CFDictionary *sub_100110400(void *a1, const void *a2, const __CFDictionary *a3, const void *a4, const __CFString *a5)
{
  values = 0;
  if (!a1)
  {
    sub_1001AD4B8();
LABEL_178:
    v11 = 0;
    goto LABEL_152;
  }

  if (!a2)
  {
    sub_1001AD44C();
    goto LABEL_178;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v11 = Mutable;
  if (!Mutable)
  {
    sub_1001AD3E0();
    goto LABEL_152;
  }

  CFDictionarySetValue(Mutable, @"TR_SRV_NAME", @"wifid-assisted-discovery");
  values = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!values)
  {
    sub_1001AD374();
    goto LABEL_152;
  }

  v12 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
  if (!v12)
  {
    sub_1001AD314();
    goto LABEL_152;
  }

  v13 = v12;
  CFDictionarySetValue(v11, @"TR_PEER_CONTEXTS", v12);
  CFRelease(v13);
  CFDictionarySetValue(values, @"TR_IFNAME", a2);
  CFDictionarySetValue(v11, @"TR_ACTIVE", a4);
  if (!a3)
  {
    sub_1001AD2B4();
    goto LABEL_152;
  }

  valuePtr = 1;
  if (a5 && CFStringCompare(a5, @"mobilewifitool", 0) == kCFCompareEqualTo)
  {
    valuePtr |= 0x80u;
  }

  v14 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  if (v14)
  {
    v15 = v14;
    CFDictionarySetValue(v11, @"TR_SESSION_FLAGS", v14);
    CFRelease(v15);
  }

  v113 = 0;
  v112 = 0;
  v111 = 0;
  v106 = sub_10010F604(a1);
  v110 = 0;
  Value = CFDictionaryGetValue(a3, @"AWDL_INFO_SELF");
  if (!Value)
  {
    v21 = a1[29];
    if (v21)
    {
      v22 = CFRetain(v21);
      v110 = v22;
      if (v22)
      {
        v30 = CFDictionaryGetValue(v22, @"AWDL_INFO_PEER_MASTER_CHANNEL");
        if (v30)
        {
          CFNumberGetValue(v30, kCFNumberSInt16Type, &v111);
        }

        v31 = CFDictionaryGetValue(v110, @"AWDL_INFO_PREFERRED_CHANNEL");
        if (v31)
        {
          CFNumberGetValue(v31, kCFNumberSInt16Type, &v111 + 2);
        }

        v20 = v110;
        goto LABEL_25;
      }
    }

    else
    {
      v63 = a1[2];
      Apple80211CopyAwdlPreferredChannels();
    }

    v32 = 0;
    goto LABEL_26;
  }

  v17 = Value;
  v18 = CFDictionaryGetValue(Value, @"AWDL_INFO_PEER_MASTER_CHANNEL");
  if (v18)
  {
    CFNumberGetValue(v18, kCFNumberSInt16Type, &v111);
  }

  v19 = CFDictionaryGetValue(v17, @"AWDL_INFO_PREFERRED_CHANNEL");
  if (v19)
  {
    CFNumberGetValue(v19, kCFNumberSInt16Type, &v111 + 2);
  }

  v20 = v17;
LABEL_25:
  v32 = CFDictionaryGetValue(v20, @"AWDL_INFO_EXT");
LABEL_26:
  v101 = v111;
  if (!sub_10014D6A8(a1[3], v23, v24, v25, v26, v27, v28, v29, v76, v78, v80, *v82, v82[4], v84, v86, v88, v90, v92, v94, v96, v98) || !v32 || (*buffer = -21846, CFDataGetLength(v32) != 2) || (v116.location = 0, v116.length = 2, CFDataGetBytes(v32, v116, buffer), (v33 = *buffer) == 0))
  {
    v33 = HIWORD(v111);
  }

  if (v110)
  {
    CFRelease(v110);
    v110 = 0;
  }

  v34 = CFDictionaryGetValue(a3, @"AWDL_INFO_ASSISTED_DISCOVERY_METRIC");
  v35 = v34;
  v103 = a5;
  v104 = a1;
  if (v34)
  {
    CFNumberGetValue(v34, kCFNumberSInt32Type, &v112 + 4);
    v36 = 2;
  }

  else
  {
    v36 = 0;
  }

  v102 = a4;
  v37 = CFDictionaryGetValue(a3, @"AWDL_INFO_SELF_IS_INITIATOR");
  v38 = v37;
  if (v37)
  {
    v105 = CFBooleanGetValue(v37);
  }

  else
  {
    v105 = 0xFFFFFFFFLL;
  }

  v39 = CFDictionaryGetValue(a3, @"AWDL_INFO_PEER_MASTER_CHANNEL");
  if (v39)
  {
    CFNumberGetValue(v39, kCFNumberSInt16Type, &v113);
    v100 = v113 > 0xEu;
  }

  else
  {
    v100 = 0;
  }

  v40 = CFDictionaryGetValue(a3, @"AWDL_INFO_PREFERRED_CHANNEL");
  if (v40)
  {
    CFNumberGetValue(v40, kCFNumberSInt16Type, &v113 + 2);
  }

  v41 = CFDictionaryGetValue(a3, @"AWDL_INFO_EXT");
  v49 = 255;
  if (sub_10014D6A8(*(v104 + 24), v42, v43, v44, v45, v46, v47, v48, v77, v79, v81, *v83, v83[4], v85, v87, v89, v91, v93, v95, v97, v99) && v41)
  {
    Length = CFDataGetLength(v41);
    *buffer = -21846;
    if (Length == 2)
    {
      v117.location = 0;
      v117.length = 2;
      CFDataGetBytes(v41, v117, buffer);
      if (*buffer)
      {
        v49 = *buffer;
      }

      else
      {
        v49 = HIWORD(v113);
      }
    }

    else
    {
      v49 = 0;
    }
  }

  v51 = CFDictionaryGetValue(a3, @"AWDL_INFO_SUPPORTED_CHANNEL_FLAGS");
  if (v51)
  {
    CFNumberGetValue(v51, kCFNumberSInt32Type, &v112);
  }

  else
  {
    v52 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: supported channel flags key not found", "__WiFiVirtualInterfaceCreateAssistedDiscoveryPolicyFromRequest"}];
    }

    objc_autoreleasePoolPop(v52);
    LODWORD(v112) = v106;
  }

  v53 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: self(metric=%d): isInitiator=%d preferred=%d master=%d secondary channel=%d flags=0x%x; peer(metric=%d): preferred=%d master=%d secondary channel=%d flags=0x%x", "__WiFiVirtualInterfaceCreateAssistedDiscoveryPolicyFromRequest", v36, v105, HIWORD(v111), v111, v33, v106, HIDWORD(v112), HIWORD(v113), v113, v49, v112}];
  }

  objc_autoreleasePoolPop(v53);
  v54 = v100;
  if (v101 <= 0xE)
  {
    v54 = 0;
  }

  if (!v54)
  {
    if (HIWORD(v111) >= 0xFu)
    {
      HIWORD(v111) = 0;
    }

    if (HIWORD(v113) >= 0xFu)
    {
      HIWORD(v113) = 0;
    }

    if (v111 >= 0xFu)
    {
      LOWORD(v111) = 0;
    }

    if (v113 >= 0xFu)
    {
      LOWORD(v113) = 0;
    }

    if (v33 > 0xEu)
    {
      v33 = 0;
    }

    if (v49 != 255 && v49 >= 0xFu)
    {
      v49 = 0;
    }

    v56 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: reset: self(metric=%d): isInitiator=%d preferred=%d master=%d secondary channel=%d; peer(metric=%d): preferred=%d  master=%d secondary channel=%d", "__WiFiVirtualInterfaceCreateAssistedDiscoveryPolicyFromRequest", v36, v105, HIWORD(v111), v111, v33, HIDWORD(v112), HIWORD(v113), v113, v49}];
    }

    objc_autoreleasePoolPop(v56);
  }

  v58 = v35 == 0;
  v57 = 255;
  v108 = 255;
  v58 = !v58 || HIDWORD(v112) == 2;
  v59 = !v58;
  if (v58)
  {
    v60 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: overriding preferred ranging channel to channel 6 for iPhone/iPad", "__WiFiVirtualInterfaceCreateAssistedDiscoveryPolicyFromRequest"}];
    }

    objc_autoreleasePoolPop(v60);
    v57 = 6;
    v108 = 6;
  }

  if (v38 && v105 || !v38 && v36 < SHIDWORD(v112))
  {
    if (v59)
    {
      v57 = HIWORD(v113);
      if (HIWORD(v113) || (v57 = HIWORD(v111), HIWORD(v111)) || (v57 = v113, v113) || (v57 = v111, v111))
      {
        v108 = v57;
      }

      else
      {
        v57 = 255;
      }
    }

    v62 = v102;
    v61 = v103;
    if (v49)
    {
      if (v49 == 255)
      {
LABEL_103:
        v107 = v57;
        v49 = v57;
        goto LABEL_115;
      }
    }

    else
    {
      if (v33)
      {
        v107 = v33;
        v49 = v33;
        goto LABEL_115;
      }

      if (v57 == 1)
      {
        v49 = 6;
      }

      else if (v57 > 6)
      {
        if (v57 > 0xB)
        {
          goto LABEL_103;
        }

        v49 = 1;
      }

      else
      {
        v49 = 11;
      }
    }

    v107 = v49;
LABEL_115:
    v64 = CFDictionaryGetValue(a3, @"AWDL_IF_MAC_ADDRESS");
    v65 = v64;
    if (v64)
    {
      CFRetain(v64);
    }

    goto LABEL_117;
  }

  v62 = v102;
  v61 = v103;
  if (v59)
  {
    v57 = HIWORD(v111);
    if (HIWORD(v111) || (v57 = HIWORD(v113), HIWORD(v113)) || (v57 = v111, v111) || (v57 = v113, v113))
    {
      v108 = v57;
    }

    else
    {
      v57 = 255;
    }
  }

  if (v49 == 255)
  {
    goto LABEL_163;
  }

  if (v33)
  {
LABEL_174:
    v107 = v33;
    goto LABEL_175;
  }

  if (v49)
  {
    v107 = v49;
    v33 = v49;
    goto LABEL_175;
  }

  if (v57 == 1)
  {
    v33 = 6;
    goto LABEL_174;
  }

  if (v57 <= 6)
  {
    v33 = 11;
    goto LABEL_174;
  }

  if (v57 <= 0xB)
  {
    v33 = 1;
    goto LABEL_174;
  }

LABEL_163:
  v107 = v57;
  v33 = v57;
LABEL_175:
  v65 = sub_1001AC1E0(v104);
  v49 = v33;
LABEL_117:
  if (v57 >= 0xF)
  {
    v66 = v112 & v106;
    v67 = (v112 & v106 & 1) != 0 ? 44 : 6;
    v68 = (v112 & v106 & 8) != 0 ? 149 : v67;
    if ((v57 - 36) <= 0xE && (v112 & v106 & 1) == 0 || (v57 - 50) <= 0xE && (v112 & v106 & 2) == 0 || (v57 - 100) <= 0x2C && (v112 & v106 & 4) == 0 || ((v57 - 166) < 0xFFE8u ? (v69 = v57 == 138) : (v69 = 1), v69 && (v112 & v106 & 8) == 0))
    {
      v70 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: using fallback channel %d because preferred channel %d is not supported (flags 0x%x)", "__WiFiVirtualInterfaceCreateAssistedDiscoveryPolicyFromRequest", v68, v57, v66}];
      }

      objc_autoreleasePoolPop(v70);
      v108 = v68;
      LOWORD(v57) = v68;
    }
  }

  if (v49 >= 0xFu)
  {
    v107 = v57;
  }

  v71 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &v108);
  v72 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &v107);
  v73 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: preferred AWDL discovery channel = %@ secondary channel = %@ and sync-peer %@", "__WiFiVirtualInterfaceCreateAssistedDiscoveryPolicyFromRequest", v71, v72, v65}];
  }

  objc_autoreleasePoolPop(v73);
  if (v65)
  {
    CFDictionarySetValue(values, @"TR_PEER_ADDRESS", v65);
    CFRelease(v65);
  }

  if (v71)
  {
    CFDictionarySetValue(v11, @"AWDL_TR_CHANNEL", v71);
    CFRelease(v71);
  }

  if (v72)
  {
    CFDictionarySetValue(v11, @"AWDL_TR_SEC_CHANNEL", v72);
    CFRelease(v72);
  }

  if (v62 && CFEqual(v62, kCFBooleanTrue))
  {
    v74 = +[WiFiUsageMonitor sharedInstance];
    [(WiFiUsageMonitor *)v74 rangingSessionRequestedWithSelfPreferredChannel:HIWORD(v111) selfMainChannel:v111 selfChannelFlags:v106 peerPreferredChannel:HIWORD(v113) peerMainChannel:v113 peerChannelFlags:v112 requester:v61];
  }

LABEL_152:
  if (values)
  {
    CFRelease(values);
  }

  return v11;
}

uint64_t sub_100110E30(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v3 = [[AWDLTrafficRegistrationConfiguration alloc] initWithDictionary:a2 isActive:&v8];
  if (v3)
  {
    v4 = *(a1 + 200);
    if (v8 == 1)
    {
      v5 = [v4 setTrafficRegistration:v3 error:0];
    }

    else
    {
      v5 = [v4 clearTrafficRegistration:v3 error:0];
    }

    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = 4294963365;
    }
  }

  else
  {
    sub_1001AD524();
    v6 = 4294963396;
  }

  return v6;
}

uint64_t sub_100110EC8(uint64_t a1, const void *a2, uint64_t a3)
{
  *bytes = 0xC064696669775F06;
  v18 = 17563660;
  if (a3 && sub_10000A540(a3, @"APPLE80211KEY_AWDL_INFO_ASSISTED_DISCOVERY_FOLLOW"))
  {
    valuePtr = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!Mutable)
    {
      sub_1001AD570();
LABEL_16:
      *(a1 + 224) = 0;
      return 4294963396;
    }

    v6 = Mutable;
    v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
    if (v7)
    {
      v8 = v7;
      CFDictionarySetValue(v6, @"APPLE80211KEY_RANGING_FOLLOW_MODE", v7);
      CFRelease(v8);
    }

    sub_10014EB74(*(a1 + 24));
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: AWDL bringdown with wifid follow mode %@", "WiFiVirtualInterfaceStopAwdl", v6}];
    }

    objc_autoreleasePoolPop(v9);
    CFRelease(v6);
    v10 = sub_10011029C(a1, a2, 0, kCFBooleanFalse);
  }

  else
  {
    v10 = sub_100110400(a1, a2, 0, kCFBooleanFalse, 0);
  }

  v11 = v10;
  if (v10)
  {
    sub_100110E30(a1, v10);
    CFRelease(v11);
  }

  v12 = CFDataCreate(kCFAllocatorDefault, bytes, 12);
  if (!v12)
  {
    goto LABEL_16;
  }

  v13 = v12;
  v14 = [[AWDLServiceDiscoveryConfiguration alloc] initWithKey:v12];
  [*(a1 + 208) stopServiceDiscoveryWithConfiguration:v14];

  *(a1 + 224) = 0;
  CFRelease(v13);
  return 0;
}

uint64_t sub_1001110D8(uint64_t a1, void *a2)
{
  result = 4294963396;
  if (a2)
  {
    v4 = *(a1 + 192);
    if (v4)
    {
      v6 = [v4 copyStatistics];
      *a2 = v6;
      if (v6)
      {
        return 0;
      }

      else
      {
        return 4294963365;
      }
    }
  }

  return result;
}

uint64_t sub_100111128(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 152) = a2;
  *(result + 160) = a3;
  return result;
}

uint64_t sub_100111130(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 168) = a2;
  *(result + 176) = a3;
  return result;
}

uint64_t sub_100111138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null virtInf.", "WiFiVirtualInterfaceSetIoctl"}];
    }

    goto LABEL_14;
  }

  if (!a4)
  {
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null property.", "WiFiVirtualInterfaceSetIoctl"}];
    }

LABEL_14:
    v7 = 4294963396;
LABEL_18:
    objc_autoreleasePoolPop(v9);
    return v7;
  }

  if (!*(a1 + 16))
  {
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Ioctls are not supported on this interface", "WiFiVirtualInterfaceSetIoctl"}];
    }

    v7 = 4294963393;
    goto LABEL_18;
  }

  for (i = 6; ; --i)
  {
    v6 = Apple80211Set();
    v7 = v6;
    if (v6 != -3905 && v6 != 61 && v6 != 16)
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

  return v7;
}

void sub_10011128C(uint64_t a1)
{
  if (!a1)
  {
    sub_1001AD608();
  }

  v2 = CFGetTypeID(a1);
  v3 = qword_100298B20;
  if (!qword_100298B20)
  {
    pthread_once(&stru_100297D70, sub_10010E31C);
    v3 = qword_100298B20;
  }

  if (v2 != v3)
  {
    sub_1001AD5DC();
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 32) = 0;
  }

  if (*(a1 + 16))
  {
    Apple80211EventMonitoringHalt();
    v5 = *(a1 + 16);
    Apple80211Close();
    *(a1 + 16) = 0;
  }

  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: calling WiFiP2PAWDLStateMonitor endMonitoring.", "__WiFiVirtualInterfaceRelease"}];
  }

  objc_autoreleasePoolPop(v6);
  [*(a1 + 192) endMonitoring];

  *(a1 + 192) = 0;
  *(a1 + 200) = 0;

  *(a1 + 184) = 0;
  *(a1 + 208) = 0;
  [*(a1 + 216) setVirtualInterface:0];

  *(a1 + 216) = 0;
  v7 = *(a1 + 232);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 232) = 0;
  }

  *(a1 + 48) = 0;
  *(a1 + 24) = 0;
}

uint64_t sub_1001113D0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(a2 + 32) == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }

    else
    {
      Value = CFDictionaryGetValue(v5, @"VIRT_IF_ROLE");
      v8 = *(a2 + 32);
      if (v8)
      {
        v9 = CFDictionaryGetValue(v8, @"VIRT_IF_ROLE");
      }

      else
      {
        v9 = 0;
      }

      result = CFEqual(Value, v9);
      if (result)
      {
        v10 = *(a1 + 32);
        if (v10)
        {
          v11 = CFDictionaryGetValue(v10, @"VIRT_IF_NAME");
        }

        else
        {
          v11 = 0;
        }

        v12 = *(a2 + 32);
        if (v12)
        {
          v13 = CFDictionaryGetValue(v12, @"VIRT_IF_NAME");
        }

        else
        {
          v13 = 0;
        }

        result = CFEqual(v11, v13);
        if (result)
        {
          sub_1001AD634(a1, a2, &v14);
          return v14;
        }
      }
    }
  }

  return result;
}

CFStringRef sub_1001114CC(uint64_t a1)
{
  valuePtr = -1431655766;
  *buffer = 0;
  v10 = 0;
  if (!a1)
  {
    goto LABEL_8;
  }

  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_8;
  }

  Value = CFDictionaryGetValue(v2, @"VIRT_IF_NAME");
  if (Value)
  {
    CFStringGetCString(Value, buffer, 16, 0);
  }

  v4 = *(a1 + 32);
  if (v4 && (v5 = CFDictionaryGetValue(v4, @"VIRT_IF_ROLE")) != 0)
  {
    CFNumberGetValue(v5, kCFNumberSInt32Type, &valuePtr);
    v6 = valuePtr;
  }

  else
  {
LABEL_8:
    v6 = 0;
    valuePtr = 0;
  }

  return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%-40s: ROLE: %d", buffer, v6);
}

uint64_t sub_1001115B0()
{
  result = qword_100298B28;
  if (!qword_100298B28)
  {
    pthread_once(&stru_100297D80, sub_1001115F8);
    return qword_100298B28;
  }

  return result;
}

uint64_t sub_1001115F8()
{
  result = _CFRuntimeRegisterClass();
  qword_100298B28 = result;
  return result;
}

void sub_100111620(void *a1)
{
  if (!a1)
  {
    sub_1001AE64C();
  }

  v2 = CFGetTypeID(a1);
  v3 = qword_100298B28;
  if (!qword_100298B28)
  {
    pthread_once(&stru_100297D80, sub_1001115F8);
    v3 = qword_100298B28;
  }

  if (v2 != v3)
  {
    sub_1001AE620();
  }

  v4 = a1[3];
  if (v4)
  {
    CFRelease(v4);
    a1[3] = 0;
  }

  v5 = a1[4];
  if (v5)
  {
    CFRelease(v5);
    a1[4] = 0;
  }
}

uint64_t sub_1001116B0(const __CFDictionary *a1, const __CFDictionary *a2)
{
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
    Value = CFDictionaryGetValue(a1, @"atjHistTblEntLastSeenTimeStamp");
    v5 = 0.0;
    AbsoluteTime = 0.0;
    if (Value)
    {
      AbsoluteTime = CFDateGetAbsoluteTime(Value);
    }

    v7 = CFDictionaryGetValue(a2, @"atjHistTblEntLastSeenTimeStamp");
    if (v7)
    {
      v5 = CFDateGetAbsoluteTime(v7);
    }

    v2 = -1;
    if (AbsoluteTime <= v5)
    {
      return 0;
    }
  }

  return v2;
}

uint64_t sub_100112320(uint64_t a1)
{
  v2 = [*(a1 + 32) callback];
  v3 = *(a1 + 48);
  v4 = *(a1 + 52);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) callbackContext];
  v7 = v2[2];

  return v7(v2, v3, v5, v4, v6);
}

void sub_10011299C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001129B8(uint64_t a1, void *a2)
{
  if ([a2 count])
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: delivered notification is still visible %@", "-[WiFiUserNotificationManager dispatchNotificationWithRecommendation:currentLocation:force:]_block_invoke", a2}];
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v5 = [objc_msgSend(*(a1 + 32) "notificationMapping")];
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: no delivered notifications, clearing visible request (%@) for recommendation %@", "-[WiFiUserNotificationManager dispatchNotificationWithRecommendation:currentLocation:force:]_block_invoke", objc_msgSend(*(a1 + 32), "visibleRequest"), v5}];
    }

    objc_autoreleasePoolPop(v6);
    [*(a1 + 32) setVisibleRequest:0];
    [objc_msgSend(*(a1 + 32) "notificationMapping")];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100112B4C;
    block[3] = &unk_100262F88;
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    dispatch_async(qword_100298C50, block);
  }
}

void sub_100112B60(uint64_t a1, void *a2)
{
  v4 = *(*(*(a1 + 56) + 8) + 40);
  v5 = objc_autoreleasePoolPush();
  if (a2)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Error: %@", "-[WiFiUserNotificationManager dispatchNotificationWithRecommendation:currentLocation:force:]_block_invoke", objc_msgSend(a2, "localizedDescription")}];
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Added RequestId: %@", "-[WiFiUserNotificationManager dispatchNotificationWithRecommendation:currentLocation:force:]_block_invoke", *(a1 + 32)}];
    }

    objc_autoreleasePoolPop(v5);
    [v4 setVisibleRequest:*(a1 + 32)];
    if (*(a1 + 64) == 1)
    {
      v6 = objc_alloc_init(NSMutableDictionary);
      [v6 setObject:objc_msgSend(*(a1 + 40) forKey:{"SSID"), @"ssid"}];
      [v6 setObject:*(a1 + 32) forKey:@"identifier"];
      [v6 setObject:&off_1002820D0 forKey:@"type"];
      v7 = *(a1 + 48);
      if (v7)
      {
        [v6 setObject:v7 forKey:@"location"];
      }

      [v4 _startTimerForNotificationWithUserInfo:v6];
      if (v6)
      {

        CFRelease(v6);
      }
    }
  }
}

void sub_100113050(uint64_t a1, void *a2)
{
  if ([a2 count])
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: delivered notification is still visible %@", "-[WiFiUserNotificationManager dispatchNotificationWithRandomMAC:]_block_invoke", a2}];
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    [*(a1 + 32) setVisibleRequest:0];
    [objc_msgSend(*(a1 + 32) "notificationMapping")];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100113158;
    block[3] = &unk_100261330;
    v6 = *(a1 + 32);
    dispatch_async(qword_100298C50, block);
  }
}

void sub_100113164(uint64_t a1, void *a2)
{
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = objc_autoreleasePoolPush();
  if (a2)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Error: %@", "-[WiFiUserNotificationManager dispatchNotificationWithRandomMAC:]_block_invoke_3", objc_msgSend(a2, "localizedDescription")}];
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Added RequestId: %@", "-[WiFiUserNotificationManager dispatchNotificationWithRandomMAC:]_block_invoke_3", *(a1 + 32)}];
    }

    objc_autoreleasePoolPop(v5);
    v6 = *(a1 + 32);

    [v4 setVisibleRequest:v6];
  }
}

void sub_1001136DC(uint64_t a1, void *a2)
{
  if ([a2 count])
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: delivered notification is still visible %@", "-[WiFiUserNotificationManager dispatchJoinAlertForNetwork:withProviderName:andReason:]_block_invoke", a2}];
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    [*(a1 + 32) setVisibleRequest:0];
    [objc_msgSend(*(a1 + 32) "notificationMapping")];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001137F4;
    block[3] = &unk_100263050;
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    dispatch_async(qword_100298C50, block);
  }
}

void sub_100113808(uint64_t a1, void *a2)
{
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = objc_autoreleasePoolPush();
  if (a2)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Error: %@", "-[WiFiUserNotificationManager dispatchJoinAlertForNetwork:withProviderName:andReason:]_block_invoke_3", objc_msgSend(a2, "localizedDescription")}];
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Added RequestId: %@", "-[WiFiUserNotificationManager dispatchJoinAlertForNetwork:withProviderName:andReason:]_block_invoke_3", *(a1 + 32)}];
    }

    objc_autoreleasePoolPop(v5);
    v6 = *(a1 + 32);

    [v4 setVisibleRequest:v6];
  }
}

void sub_100113D1C(uint64_t a1, void *a2)
{
  if ([a2 count])
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: delivered notification is still visible %@", "-[WiFiUserNotificationManager dispatchLowDataModeAlertForNetwork:withReason:]_block_invoke", a2}];
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    [*(a1 + 32) setVisibleRequest:0];
    [objc_msgSend(*(a1 + 32) "notificationMapping")];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100113E2C;
    block[3] = &unk_1002610F0;
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
    dispatch_async(qword_100298C50, block);
  }
}

void sub_100113E3C(uint64_t a1, void *a2)
{
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = objc_autoreleasePoolPush();
  if (a2)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Error: %@", "-[WiFiUserNotificationManager dispatchLowDataModeAlertForNetwork:withReason:]_block_invoke_3", objc_msgSend(a2, "localizedDescription")}];
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Added RequestId: %@", "-[WiFiUserNotificationManager dispatchLowDataModeAlertForNetwork:withReason:]_block_invoke_3", *(a1 + 32)}];
    }

    objc_autoreleasePoolPop(v5);
    v6 = *(a1 + 32);

    [v4 setVisibleRequest:v6];
  }
}

void sub_1001144B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001144D8(uint64_t a1, void *a2)
{
  if ([a2 count])
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: delivered notification is still visible %@", "-[WiFiUserNotificationManager dispatchNotificationWithColocatedScanResult:fromScanResult:]_block_invoke", a2}];
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    [*(a1 + 32) setVisibleRequest:0];
    [objc_msgSend(*(a1 + 32) "notificationMapping")];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001145E8;
    block[3] = &unk_100262558;
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
    dispatch_async(qword_100298C50, block);
  }
}

void sub_1001145F8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Did invoke -[UNUserNotificationCenter didReceiveNotificationResponse:withCompletionHandler:] with test action %@", "-[WiFiUserNotificationManager dispatchNotificationWithColocatedScanResult:fromScanResult:]_block_invoke_3", *(a1 + 32)}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10011466C(uint64_t a1, void *a2)
{
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = objc_autoreleasePoolPush();
  if (a2)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Error: %@", "-[WiFiUserNotificationManager dispatchNotificationWithColocatedScanResult:fromScanResult:]_block_invoke_4", objc_msgSend(a2, "localizedDescription")}];
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Added RequestId: %@", "-[WiFiUserNotificationManager dispatchNotificationWithColocatedScanResult:fromScanResult:]_block_invoke_4", *(a1 + 32)}];
    }

    objc_autoreleasePoolPop(v5);
    v6 = *(a1 + 32);

    [v4 setVisibleRequest:v6];
  }
}

void sub_100114B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100114B34(uint64_t a1, void *a2)
{
  if ([a2 count])
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: delivered notification is still visible %@", "-[WiFiUserNotificationManager dispatchNotificationWithAskToJoinHotspotRecommendation:]_block_invoke", a2}];
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    [*(a1 + 32) _cancelTimer];
    [*(a1 + 32) setVisibleRequest:0];
    v5 = [*(a1 + 32) notificationMapping];

    [v5 removeAllObjects];
  }
}

void sub_100114BF0(uint64_t a1, void *a2)
{
  v4 = *(*(*(a1 + 56) + 8) + 40);
  v5 = objc_autoreleasePoolPush();
  if (a2)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Error: %@", "-[WiFiUserNotificationManager dispatchNotificationWithAskToJoinHotspotRecommendation:]_block_invoke_2", objc_msgSend(a2, "localizedDescription")}];
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Added RequestId: %@", "-[WiFiUserNotificationManager dispatchNotificationWithAskToJoinHotspotRecommendation:]_block_invoke_2", *(a1 + 32)}];
    }

    objc_autoreleasePoolPop(v5);
    [v4 setVisibleRequest:*(a1 + 32)];
    if (*(a1 + 64) == 1)
    {
      v6 = objc_alloc_init(NSMutableDictionary);
      [v6 setObject:*(a1 + 40) forKey:@"ssid"];
      [v6 setObject:*(a1 + 32) forKey:@"identifier"];
      [v6 setObject:&off_1002820E8 forKey:@"type"];
      [v4 _startTimerForNotificationWithUserInfo:v6];
      if (v6)
      {
        CFRelease(v6);
      }
    }

    if (*(a1 + 48))
    {

      _CWFDidPresentPersonalHotspotNotificationForBrokenBackhaulNetworkName();
    }
  }
}

id sub_1001162E4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 doesContain:*(a1 + 64)];
  if (result)
  {
    [a2 timeSinceFirstDeferral:*(a1 + 64)];
    *(*(*(a1 + 40) + 8) + 24) = v9;
    v10 = *(*(*(a1 + 40) + 8) + 24);
    result = [*(a1 + 32) deferIntervalSecs];
    if (v10 >= v11)
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
      *(*(*(a1 + 56) + 8) + 24) = a3;
      if (([objc_msgSend(a2 "ssid")] & 1) == 0)
      {
        v12 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: %@ was a time-deferred network for %2.1f secs. No longer time-deferring", "-[WiFiTimeDeferredNetworksAJManager canDeferNetwork:withUsageRank:andMotionState:]_block_invoke", sub_10000A878(*(a1 + 64)), *(*(*(a1 + 40) + 8) + 24)}];
        }

        objc_autoreleasePoolPop(v12);
      }

      result = [a2 reset];
      *a4 = 1;
    }
  }

  return result;
}

id sub_1001167D0(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = *(a1[4] + 24);
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v15 != v11)
      {
        objc_enumerationMutation(v8);
      }

      result = [a2 doesContain:*(*(&v14 + 1) + 8 * v12)];
      if (result)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    [*(*(a1[5] + 8) + 40) addIndex:a3];
    [objc_msgSend(*(a1[4] + 16) objectAtIndex:{a3), "reset"}];
    result = [objc_msgSend(*(a1[4] + 16) objectAtIndex:{a3), "ssid"}];
    if (result)
    {
      [*(*(a1[6] + 8) + 40) appendFormat:@"%@", objc_msgSend(objc_msgSend(*(a1[4] + 16), "objectAtIndex:", a3), "ssid")];
      result = [*(a1[4] + 16) count];
      if ((a3 + 1) == result)
      {
        *a4 = 1;
      }

      else
      {
        return [*(*(a1[6] + 8) + 40) appendString:{@", "}];
      }
    }
  }

  return result;
}

void sub_100116A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100116AB0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 doesContain:*(a1 + 40)];
  if (result)
  {
    result = [a2 reset];
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

void sub_100116BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100116C14(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 doesContain:*(*(a1 + 32) + 32)];
  if (result)
  {
    result = [a2 reset];
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

id sub_100116E84(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 ssid];
  if (result)
  {
    result = [*(*(*(a1 + 32) + 8) + 40) appendFormat:@"%@", objc_msgSend(a2, "ssid")];
    if (a3 + 1 == *(*(*(a1 + 40) + 8) + 24))
    {
      *a4 = 1;
    }

    else
    {
      v9 = *(*(*(a1 + 32) + 8) + 40);

      return [v9 appendString:{@", "}];
    }
  }

  return result;
}

int64_t sub_100117388(id a1, id a2, id a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (v4 | v5)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (v4 && v5)
  {
    if ([v4 group])
    {
      v9 = (100 * (3 - [v4 group])) & 0xFCLL;
    }

    else
    {
      v9 = 0;
    }

    if ([v6 group])
    {
      v10 = (100 * (3 - [v6 group])) & 0xFCLL;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v4 batteryLife];
    if ([v11 integerValue] >= 20)
    {
      v12 = [v4 batteryLife];
      v9 += [v12 integerValue] / 10;
    }

    v13 = [v6 batteryLife];
    if ([v13 integerValue] >= 20)
    {
      v14 = [v6 batteryLife];
      v10 += [v14 integerValue] / 10;
    }

    v15 = [v4 networkType];
    v16 = [v4 signalStrength];
    v17 = v9 + v15 + [v16 integerValue];

    v18 = [v6 networkType];
    v19 = [v6 signalStrength];
    v20 = v10 + v18 + [v19 integerValue];

    if (v20 <= v17)
    {
      v21 = 0;
    }

    else
    {
      v21 = -1;
    }

    if (v20 < v17)
    {
      v8 = 1;
    }

    else
    {
      v8 = v21;
    }
  }

  return v8;
}

void sub_10011790C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10011793C(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 40;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 48;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;

  dispatch_semaphore_signal(*(a1 + 32));
}

id sub_100117B48(uint64_t a1)
{
  v2 = [*(a1 + 32) hotspotSession];
  [v2 startBrowsing];

  v3 = *(a1 + 32);

  return [v3 setScanning:1];
}

id sub_100117C20(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Stopping hotspot browsing (isBrowsing %d removeCache %d)", *(*(a1 + 32) + 8), *(a1 + 40)}];
  }

  objc_autoreleasePoolPop(v2);
  v3 = [*(a1 + 32) hotspotSession];
  [v3 stopBrowsing];

  result = [*(a1 + 32) setScanning:0];
  if (*(a1 + 40) == 1)
  {
    v5 = *(a1 + 32);

    return [v5 setNetworks:0];
  }

  return result;
}

uint64_t sub_10011851C()
{
  result = qword_100298B30;
  if (!qword_100298B30)
  {
    pthread_once(&stru_100297E50, sub_100118564);
    return qword_100298B30;
  }

  return result;
}

uint64_t sub_100118564()
{
  result = _CFRuntimeRegisterClass();
  qword_100298B30 = result;
  return result;
}

void sub_10011858C(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1)
  {
    *(a1 + 16) = a2;
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100118634;
    block[3] = &unk_10025EAD8;
    block[4] = a1;
    dispatch_async(global_queue, block);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_100118634(uint64_t a1)
{
  [*(*(a1 + 32) + 40) startMonitoring];
  v2 = *(a1 + 32);

  sub_100036664(v2);
}

void sub_100118674(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1)
  {
    [*(a1 + 40) stopMonitoring];
    *(a1 + 16) = 0;
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1001186C0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    *(result + 24) = a2;
    *(result + 32) = a3;
  }

  return result;
}

double sub_1001186CC(uint64_t a1)
{
  if (!a1)
  {
    sub_1001AEACC();
  }

  v2 = CFGetTypeID(a1);
  v3 = qword_100298B30;
  if (!qword_100298B30)
  {
    pthread_once(&stru_100297E50, sub_100118564);
    v3 = qword_100298B30;
  }

  if (v2 != v3)
  {
    sub_1001AEAA0();
  }

  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

BOOL sub_1001187D8()
{
  v0 = +[NSUserDefaults standardUserDefaults];
  v1 = [v0 stringForKey:@"DextCrashBoostMode"];
  v2 = v1;
  v3 = v1 && ![v1 caseInsensitiveCompare:@"Enable"];

  return v3;
}

id sub_100118858()
{
  v0 = +[NSUserDefaults standardUserDefaults];
  v1 = [v0 integerForKey:@"DextCrashPurgePeriodInMinutes"];

  return v1;
}

id sub_1001188A4()
{
  v0 = +[NSUserDefaults standardUserDefaults];
  v1 = [v0 objectForKey:@"DextCrashMaxFilesCount"];
  v2 = [v1 unsignedIntValue];

  return v2;
}

void sub_100118908(uint64_t *a1)
{
  v1 = *a1;
  *(a1 + 25) = 0;
  if (*(a1 + 48) == 1)
  {
    v2 = a1;
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s Begin", "dextCoreFileProcess"}];
    }

    objc_autoreleasePoolPop(v3);
    v4 = [NSString stringWithCString:v1 encoding:4];
    v5 = [NSURL URLWithString:v4];

    v6 = +[NSFileManager defaultManager];
    v55 = NSURLCreationDateKey;
    v7 = [NSArray arrayWithObjects:&v55 count:1];
    v8 = [v6 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:v7 options:4 error:0];

    if (v8 && [v8 count])
    {
      if (*(v2 + 53) == 1)
      {
        v9 = [NSPredicate predicateWithBlock:&stru_100263298];
        v10 = [v8 filteredArrayUsingPredicate:v9];

        *(v2 + 25) = [v10 count];
      }

      else
      {
        v11 = [NSPredicate predicateWithBlock:&stru_1002632B8];
        v10 = [v8 filteredArrayUsingPredicate:v11];

        v12 = [v10 sortedArrayUsingComparator:&stru_1002632F8];
        LODWORD(v11) = *(v2 + 8);
        v13 = [v12 count];
        if (v11 < 1441)
        {
          v47 = v13 <= *(v2 + 9) ? 0 : [v12 count] - *(v2 + 9);
          v13 = [v12 count];
          if (v13)
          {
            v40 = v10;
            v41 = v8;
            v42 = v5;
            v45 = 0;
            v14 = 0;
            v15 = 0;
            v43 = v1;
            v46 = v12;
            do
            {
              v16 = [v12 objectAtIndexedSubscript:v14];
              if (v14 >= v47)
              {
                v21 = [NSString stringWithUTF8String:v1];
                v22 = [NSMutableString stringWithString:v21];

                [v22 appendString:@"/"];
                if (*(v2 + 52))
                {
                  v23 = @"wifi-sunrise-dextcrash-";
                }

                else
                {
                  v23 = @"wifi-bcmwlan-dextcrash-";
                }

                [v22 appendString:v23];
                v51 = 0;
                v50 = 0;
                [v16 getResourceValue:&v51 forKey:NSURLCreationDateKey error:&v50];
                v24 = v51;
                v25 = v50;

                v26 = v24;
                v27 = objc_alloc_init(NSDateFormatter);
                [v27 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
                v28 = +[NSTimeZone systemTimeZone];
                [v27 setTimeZone:v28];

                v29 = [v27 stringFromDate:v26];

                [v22 appendString:v29];
                [v22 appendString:@".core"];
                v30 = [v16 path];
                [v6 moveItemAtPath:v30 toPath:v22 error:0];

                v49 = 66565;
                v31 = fsctl([v22 cStringUsingEncoding:4], 0xC0084A44uLL, &v49, 0);
                v53 = NSFilePosixPermissions;
                v54 = &off_100282100;
                v32 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
                v48 = v25;
                [v6 setAttributes:v32 ofItemAtPath:v22 error:&v48];
                v15 = v48;

                v33 = objc_autoreleasePoolPush();
                v34 = off_100298C40;
                if (off_100298C40)
                {
                  [v16 path];
                  v44 = v16;
                  v35 = v15;
                  v36 = v26;
                  v37 = v2;
                  v39 = v38 = v6;
                  [v34 WFLog:3 message:{"%s:process File:'%@' original path:'%@' fsctl ret:%d total_cnt:%lu purge_count:%ld", "dextCoreFileProcess", v22, v39, v31, objc_msgSend(v46, "count"), v47}];

                  v6 = v38;
                  v2 = v37;
                  v26 = v36;
                  v15 = v35;
                  v16 = v44;
                }

                objc_autoreleasePoolPop(v33);
                ++v45;

                v1 = v43;
              }

              else
              {
                v52 = v15;
                [v6 removeItemAtURL:v16 error:&v52];
                v17 = v52;

                v18 = objc_autoreleasePoolPush();
                v19 = off_100298C40;
                if (off_100298C40)
                {
                  v20 = [v16 path];
                  [v19 WFLog:3 message:{"%s removeFile path:'%@' error:%@ total_cnt:%lu purge_count:%ld", "dextCoreFileProcess", v20, v17, objc_msgSend(v46, "count"), v47}];
                }

                objc_autoreleasePoolPop(v18);
                v15 = v17;
              }

              ++v14;
              v12 = v46;
            }

            while (v14 < [v46 count]);

            v8 = v41;
            v5 = v42;
            v10 = v40;
            LOWORD(v13) = v45;
          }
        }

        *(v2 + 25) = v13;
      }
    }
  }
}

BOOL sub_100118F04(id a1, id a2, NSDictionary *a3)
{
  v3 = [a2 lastPathComponent];
  v4 = [v3 containsString:@"Alpha-"];

  return v4;
}

BOOL sub_100118F48(id a1, id a2, NSDictionary *a3)
{
  v3 = [a2 lastPathComponent];
  v4 = [v3 hasPrefix:@"wifi-"];

  return v4;
}

int64_t sub_100118F8C(id a1, NSURL *a2, NSURL *a3)
{
  v9 = 0;
  v4 = a3;
  [(NSURL *)a2 getResourceValue:&v9 forKey:NSURLCreationDateKey error:0];
  v8 = 0;
  v5 = v9;
  [(NSURL *)v4 getResourceValue:&v8 forKey:NSURLCreationDateKey error:0];

  v6 = [v5 compare:v8];
  return v6;
}

uint64_t sub_100119028(uint64_t a1, char a2)
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v4 = *(a1 + 40);
  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: WiFiDextCrashSoftError Enter", "WiFiDextCrashedSoftErrorHandler"}];
  }

  objc_autoreleasePoolPop(v5);
  if (v4 && (a2 & 1) == 0)
  {
    v6 = [v4 incrementCount];
    v7 = [v4 submitMetric];
    v8 = [v4 submitABCReportWithReason:0];
  }

  if (a2)
  {
    v9 = [NSString stringWithCString:*a1 encoding:4];
    v10 = [NSURL URLWithString:v9];

    v11 = +[NSFileManager defaultManager];
    v29 = NSURLCreationDateKey;
    v12 = [NSArray arrayWithObjects:&v29 count:1];
    v13 = [v11 contentsOfDirectoryAtURL:v10 includingPropertiesForKeys:v12 options:4 error:0];

    if (v13)
    {
      v14 = [v13 count] == 0;

      if (v14)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    v21 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: No Dext corefiles found isRetry:%d", "WiFiDextCrashedSoftErrorHandler", 1}];
    }

    goto LABEL_27;
  }

  sub_100118908(a1);
  if (!*(a1 + 50))
  {
    v21 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: No Dext corefiles found isRetry:%d", "WiFiDextCrashedSoftErrorHandler", 0}];
    }

    goto LABEL_27;
  }

LABEL_11:
  if (!v4)
  {
    goto LABEL_25;
  }

  v15 = +[NSUserDefaults standardUserDefaults];
  v16 = [v15 stringForKey:@"DextCrashUserNotification"];
  v17 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:2 message:{"%s WiFiDextCrashSoftError UserNotification setting:%@", "WiFiDextCrashSoftErrorPopupDisabled", v16}];
  }

  objc_autoreleasePoolPop(v17);
  if (v16 && ![v16 caseInsensitiveCompare:@"Disable"])
  {

LABEL_25:
    v21 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: WiFiDextCrashSoftError Disabled", "WiFiDextCrashedSoftErrorHandler"}];
    }

LABEL_27:
    objc_autoreleasePoolPop(v21);
    v20 = 0;
    goto LABEL_28;
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10011946C;
  v24[3] = &unk_100262938;
  v24[4] = &v25;
  if ([v4 askToLaunchTapToRadarWithMessage:@"WiFi DriverKit Processs Crash Detected" completionHandler:v24])
  {
    v18 = [NSURL URLWithString:@"tap-to-radar://new?Title=WiFi%20Dext%20Crash%20Detected&AutoDiagnostics=phone&Description=Dext%20crash%20detected%20Attaching%20coredumps&ComponentID=621547&ComponentName=WiFi%20Connectivity&ComponentVersion=iOS&Classification=Crash/Hang/Data%20Loss&ExtensionIdentifiers=com.apple.DiagnosticExtensions.WiFi"];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100119578;
    v23[3] = &unk_100262938;
    v23[4] = &v25;
    v19 = [v4 tapToRadarWithURL:v18 completionHandler:v23];
    v20 = *(v26 + 24);
  }

  else
  {
    v20 = *(v26 + 24);
  }

LABEL_28:

  _Block_object_dispose(&v25, 8);
  return v20 & 1;
}

void sub_100119444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10011946C(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s WiFiDextCrashSoftError askToLaunchTapToRadarWithMessage result:%@, error:%@", "WiFiDextCrashedSoftErrorHandler_block_invoke", v11, v5}];
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

void sub_100119578(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s WiFiDextCrashSoftError tapToRadarWithURL result:%@, error:%@", "WiFiDextCrashedSoftErrorHandler_block_invoke_2", v11, v5}];
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

void sub_1001196AC(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011972C;
  block[3] = &unk_10025ED68;
  block[4] = *(a1 + 32);
  dispatch_async(qword_100298C50, block);
}

id sub_10011972C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: xpc connection got invalidated", "-[WiFi3BarsObserver init]_block_invoke_2"}];
  }

  objc_autoreleasePoolPop(v2);
  v3 = *(a1 + 32);

  return [v3 _cleanupMaintenanceTask];
}

void sub_1001197A4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100119824;
  block[3] = &unk_10025ED68;
  block[4] = *(a1 + 32);
  dispatch_async(qword_100298C50, block);
}

id sub_100119824(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: xpc connection got interrupted", "-[WiFi3BarsObserver init]_block_invoke_4"}];
  }

  objc_autoreleasePoolPop(v2);
  v3 = *(a1 + 32);

  return [v3 _cleanupMaintenanceTask];
}

void sub_100119A70(uint64_t a1)
{
  [+[NSDate date](NSDate timeIntervalSinceDate:"timeIntervalSinceDate:", *(*(a1 + 32) + 8)];
  if (v2 >= 120.0)
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: activity exceeded max time of %d secs", "-[WiFi3BarsObserver _installDeferMonitorForActivity:proxy:]_block_invoke_2", 120}];
    }

    objc_autoreleasePoolPop(v5);
    [*(a1 + 40) cancelMaintenanceTask];
    [*(a1 + 32) _cleanupMaintenanceTask];
    if (!xpc_activity_set_state(*(a1 + 48), 5))
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: xpc_activity_set_state to Done failed", "-[WiFi3BarsObserver _installDeferMonitorForActivity:proxy:]_block_invoke_2"}];
      }

      objc_autoreleasePoolPop(v6);
    }
  }

  else if (xpc_activity_should_defer(*(a1 + 48)))
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: xpc wants to defer activity", "-[WiFi3BarsObserver _installDeferMonitorForActivity:proxy:]_block_invoke_2"}];
    }

    objc_autoreleasePoolPop(v3);
    if (xpc_activity_set_state(*(a1 + 48), 3))
    {
      [*(a1 + 40) cancelMaintenanceTask];
      v4 = *(a1 + 32);

      [v4 _cleanupMaintenanceTask];
    }
  }
}

uint64_t sub_100119C04(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: error getting remote object: %@", "-[WiFi3BarsObserver run3BarsObserver:withActivity:withCompletion:]_block_invoke", a2}];
  }

  objc_autoreleasePoolPop(v4);
  v5 = *(*(a1 + 32) + 16);

  return v5();
}

id sub_100119C94(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: finished running maintenance task", "-[WiFi3BarsObserver run3BarsObserver:withActivity:withCompletion:]_block_invoke_2"}];
  }

  objc_autoreleasePoolPop(v2);
  (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 32);

  return [v3 _cleanupMaintenanceTask];
}

void sub_100119E00(id a1, NSError *a2)
{
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: error getting synchronous remote object: %@", "-[WiFi3BarsObserver fetch3BarsNetworksForLocation:]_block_invoke", a2}];
  }

  objc_autoreleasePoolPop(v3);
}

void sub_100119EC4(id a1, NSError *a2)
{
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: error getting synchronous remote object: %@", "-[WiFi3BarsObserver prune3BarsNetworks:]_block_invoke", a2}];
  }

  objc_autoreleasePoolPop(v3);
}

void sub_100119F90(id a1, NSError *a2)
{
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: error getting synchronous remote object: %@", "-[WiFi3BarsObserver forceFetch3BarsNetworkMatchingBSSID:completionHandler:]_block_invoke", a2}];
  }

  objc_autoreleasePoolPop(v3);
}

void sub_10011A398(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = CFDateCreate(kCFAllocatorDefault, Current);
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(Mutable, @"countryCodeUserDefault", *(a1 + 32));
  CFDictionarySetValue(Mutable, @"countryCodeUserDefaultDate", v3);
  sub_10008A5A0(*(*(a1 + 40) + 8), Mutable);
  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s WiFiCC : Saving Country Code information to user defaults : [%@]", "-[WiFiLocaleManagerUser setUserDefaultCountryCode:]_block_invoke", *(a1 + 32)}];
  }

  objc_autoreleasePoolPop(v5);
  if (v3)
  {
    CFRelease(v3);
  }

  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void sub_10011A4B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v2 + 8);
  [*(v2 + 16) getLocaleSource];
  v5 = *(a1 + 56);
  sub_10015DED8();
  *(*(*(a1 + 48) + 8) + 24) = v6;
}

void sub_10011A6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10011A718(void *a1)
{
  result = sub_10015E124(*(a1[4] + 8), *(*(a1[6] + 8) + 40));
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

void sub_10011A8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

id sub_10011A8D4(void *a1)
{
  result = [*(*(a1[5] + 8) + 40) setSet:*(a1[4] + 24)];
  *(*(a1[6] + 8) + 24) = *(a1[4] + 32);
  return result;
}

void sub_10011AB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10011AB7C(void *a1)
{
  v2 = *(a1[4] + 8);
  v3 = *(*(a1[6] + 8) + 40);
  result = sub_10015E160();
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

uint64_t sub_10011ABC0()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = sub_100002BF0;
  v0 = qword_100298B48;
  v7 = sub_1000067D8;
  v8 = qword_100298B48;
  if (!qword_100298B48)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_10011AEB0;
    v2[3] = &unk_1002608E0;
    v2[4] = &v3;
    sub_10011AEB0(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_10011AC94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10011ACAC()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = sub_100002BF0;
  v0 = qword_100298B58;
  v7 = sub_1000067D8;
  v8 = qword_100298B58;
  if (!qword_100298B58)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_10011B060;
    v2[3] = &unk_1002608E0;
    v2[4] = &v3;
    sub_10011B060(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_10011AD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10011AD98(id a1, NSError *a2, NSArray *a3, NSURL *a4)
{
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:2 message:{"Log collection completed (event=DumpLogs error=%ld url=%@)", -[NSError code](a2, "code"), -[NSURL path](a4, "path")}];
  }

  objc_autoreleasePoolPop(v6);
}

void sub_10011AE24(id a1, NSError *a2, NSArray *a3, NSURL *a4)
{
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:2 message:{"Log collection completed (event=DatapathStall, error=%ld url=%@)", -[NSError code](a2, "code"), -[NSURL path](a4, "path")}];
  }

  objc_autoreleasePoolPop(v6);
}

Class sub_10011AEB0(uint64_t a1)
{
  sub_10011AF08();
  result = objc_getClass("W5Client");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_1001AF294();
  }

  qword_100298B48 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void sub_10011AF08()
{
  v0[0] = 0;
  if (!qword_100298B50)
  {
    v0[1] = _NSConcreteStackBlock;
    v0[2] = 3221225472;
    v0[3] = sub_10011AFF4;
    v0[4] = &unk_10025EAD8;
    v0[5] = v0;
    v0[7] = 0;
    v0[8] = 0;
    v0[6] = "/System/Library/PrivateFrameworks/WiFiVelocity.framework/WiFiVelocity";
    qword_100298B50 = _sl_dlopen();
  }

  if (!qword_100298B50)
  {
    sub_1001AF2FC(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t sub_10011AFF4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100298B50 = result;
  return result;
}

Class sub_10011B060(uint64_t a1)
{
  sub_10011AF08();
  result = objc_getClass("W5LogItemRequest");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_1001AF364();
  }

  qword_100298B58 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void sub_10011B80C(id a1)
{
  qword_100298B60 = [[WiFiUserInteractionMonitor alloc] _initPrivate];

  _objc_release_x1();
}

void sub_10011B84C(id a1, void *a2, unint64_t a3)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [a2 clients];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [v9 callback];
        (v10)[2](v10, [v9 context], a3);
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

void sub_10011B978(uint64_t a1)
{
  v2 = objc_alloc_init(CXCallObserver);
  [*(a1 + 32) setCallObserver:v2];

  v5 = [*(a1 + 32) callObserver];
  v3 = *(a1 + 32);
  v4 = [v3 internalQueue];
  [v5 setDelegate:v3 queue:v4];
}

void sub_10011BA0C(uint64_t a1)
{
  state64 = 0;
  if (notify_get_state(*(*(a1 + 32) + 48), &state64))
  {
    goto LABEL_8;
  }

  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: received %s (%llu)", "-[WiFiUserInteractionMonitor _initPrivate]_block_invoke_3", *(a1 + 48), state64}];
  }

  objc_autoreleasePoolPop(v2);
  v3 = state64;
  if (state64 == 1)
  {
    if (![*(a1 + 32) isInGameMode])
    {
      v15 = 1;
LABEL_26:
      [*(a1 + 32) setIsInGameMode:v15];
      v4 = 1;
      goto LABEL_9;
    }

    v3 = state64;
  }

  if (v3)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v14 = [*(a1 + 32) isInGameMode];
  v15 = 0;
  v4 = 0;
  if (v14)
  {
    goto LABEL_26;
  }

LABEL_9:
  v5 = *(a1 + 40);
  if (v5)
  {
    [v5 setBool:objc_msgSend(*(a1 + 32) forKey:{"isInGameMode"), @"GameMode"}];
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s Saving game mode:%d", "-[WiFiUserInteractionMonitor _initPrivate]_block_invoke_3", objc_msgSend(*(a1 + 32), "isInGameMode")}];
    }

    objc_autoreleasePoolPop(v6);
  }

  if (v4)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [*(a1 + 32) clients];
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = [v12 callback];
          (v13)[2](v13, [v12 context], 16);
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v9);
    }
  }
}

id sub_10011BC54(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Re-evaluating application state for captive websheet", "-[WiFiUserInteractionMonitor _initPrivate]_block_invoke_4"}];
  }

  objc_autoreleasePoolPop(v2);
  v3 = *(a1 + 32);

  return [v3 _notifyCaptiveWithApplicationState];
}

void sub_10011D3DC(uint64_t a1)
{
  v2 = [[LSApplicationRecord alloc] initWithBundleIdentifier:*(a1 + 32) allowPlaceholder:0 error:0];
  v3 = [*(a1 + 40) appAttributeLock];
  [v3 lock];

  v4 = [*(a1 + 40) appAttributes];
  [v4 setObject:&__kCFBooleanFalse forKey:*(a1 + 32)];

  if (v2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [v2 infoDictionary];
    v6 = [v5 objectForKey:@"UIBackgroundModes" ofClass:objc_opt_class()];

    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(*(&v15 + 1) + 8 * i) isEqualToString:@"voip"])
          {
            v11 = [*(a1 + 40) appAttributes];
            [v11 setObject:&__kCFBooleanTrue forKey:*(a1 + 32)];

            v12 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: detected %@ as VOIP app", "-[WiFiUserInteractionMonitor hasRealTimeAppProperty:]_block_invoke", *(a1 + 32)}];
            }

            objc_autoreleasePoolPop(v12);
            goto LABEL_14;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  v13 = [*(a1 + 40) pendingAppAttributeQueries];
  [v13 removeObject:*(a1 + 32)];

  v14 = [*(a1 + 40) appAttributeLock];
  [v14 unlock];
}

void sub_10011E980(uint64_t a1)
{
  [*(a1 + 32) updateConnectionState:objc_msgSend(objc_msgSend(*(a1 + 32) waitUntilDone:{"idsService"), "devices"), 1}];
  v2 = [*(a1 + 32) copyPairedDestinationID];
  v3 = [*(a1 + 32) getPairedVersionID];
  if (v2)
  {
    v4 = v3;
    v5 = [*(a1 + 32) managerQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10011EA50;
    block[3] = &unk_100262558;
    block[4] = *(a1 + 32);
    block[5] = v2;
    block[6] = v4;
    dispatch_sync(v5, block);
  }
}

void sub_10011EA60(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: knownNetworkStartPoint = %lu, knownNetworkList count= %lu, newReceivedNetworkRecords count = %lu", "__WiFiProcessKnownNetworkTimerCallback", *(a1 + 280), objc_msgSend(*(a1 + 264), "count"), objc_msgSend(*(a1 + 272), "count")}];
  }

  objc_autoreleasePoolPop(v2);
  if (*(a1 + 272))
  {

    *(a1 + 264) = [[NSArray alloc] initWithArray:*(a1 + 272) copyItems:1];
    *(a1 + 272) = 0;
  }

  v3 = *(a1 + 264);
  if (v3)
  {
    v4 = *(a1 + 280);
    if (v4 >= [v3 count])
    {
      v9 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: KnownNetworkList has been processed", "__WiFiProcessKnownNetworkTimerCallback"}];
      }

      objc_autoreleasePoolPop(v9);
      dispatch_source_set_timer(*(a1 + 256), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);

      *(a1 + 264) = 0;
      *(a1 + 280) = 0;
    }

    else
    {
      v5 = [*(a1 + 264) count];
      v6 = *(a1 + 280);
      if (&v5[-v6] >= 0xA)
      {
        v7 = 10;
      }

      else
      {
        v7 = &v5[-v6];
      }

      v8 = [*(a1 + 264) subarrayWithRange:?];
      *(a1 + 280) += v7;

      [a1 processReceivedKnownNetworksInBatch:v8];
    }
  }
}

void sub_10011EF40(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: devicePairedNanoregistryNotification from nanoregistry", "-[WiFiIDSSyncEngine registerForInitialSyncTrigger]_block_invoke"}];
  }

  objc_autoreleasePoolPop(v2);
  notify_cancel(*(a1 + 40));
  v3 = [*(a1 + 32) managerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011F008;
  block[3] = &unk_10025ED68;
  block[4] = *(a1 + 32);
  dispatch_sync(v3, block);
}

id sub_10011F0A4(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 addObserver:*(a1 + 32) selector:"enteredCompatibilityState:" name:NRPairedDeviceRegistryDeviceDidEnterCompatibilityStateNotification object:0];
  v3 = [+[NRPairedDeviceRegistry sharedInstance](NRPairedDeviceRegistry compatibilityState];
  v4 = *(a1 + 32);

  return [v4 checkIfSoftwareUpdateStateEntered:v3];
}

id sub_10011F5EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) objectForKeyedSubscript:@"V2"];

  return [v1 processReceivedKnownNetwork:v2];
}

void sub_100120B14(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) sendCurrentCompanionNetworkWithChannelUpdate:0];

  objc_autoreleasePoolPop(v2);
}

void sub_1001215A8(void *a1, const void *a2)
{
  v4 = [a1 objectForKey:@"NetworkAtLocationOfInterestType"];
  v5 = [a1 objectForKey:@"NetworkOfInterestHomeState"];
  if (v4)
  {
    sub_10000AD34(a2, @"NetworkAtLocationOfInterestType", v4);
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation : received LOI for network : <%@>", "__WiFiIDSSyncPopulateHomeProperty", sub_10000A878(a2)}];
    }

    objc_autoreleasePoolPop(v6);
  }

  if (v5)
  {
    sub_10000AD34(a2, @"NetworkOfInterestHomeState", v5);
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation : received NOI for network : <%@>", "__WiFiIDSSyncPopulateHomeProperty", sub_10000A878(a2)}];
    }

    objc_autoreleasePoolPop(v7);
  }
}

void sub_100122844(uint64_t a1)
{
  if ([*(a1 + 32) objectForKey:@"IS_NETWORK_CAPTIVE"])
  {
    v2 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{+[NSNull null](NSNull, "null"), @"V2", 0}];
    v3 = objc_alloc_init(NSMutableDictionary);
    v4 = v3;
    v5 = *(a1 + 56);
    if (v5 <= 2)
    {
      [v3 setObject:*(a1 + 32) forKeyedSubscript:off_1002635C0[v5]];
      [v2 setObject:v4 forKeyedSubscript:@"V2"];
    }

    NSLog(@"%s %@", "[WiFiIDSSyncEngine syncKnownWiFiNetwork:withOperation:]_block_invoke", v2);
    [*(a1 + 40) setLastSyncedKnownNetworkPayloadData:{+[NSKeyedArchiver archivedDataWithRootObject:requiringSecureCoding:error:](NSKeyedArchiver, "archivedDataWithRootObject:requiringSecureCoding:error:", v2, 1, 0)}];
    [*(a1 + 40) sendToGizmoOfDataType:3];

    v6 = *(*(*(a1 + 48) + 8) + 40);
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: captive determination is not present for %@, not syncing the network to gizmo yet!!", "-[WiFiIDSSyncEngine syncKnownWiFiNetwork:withOperation:]_block_invoke", objc_msgSend(*(a1 + 32), "objectForKey:", @"SSID_STR"}];
    }

    objc_autoreleasePoolPop(v7);
  }
}

void sub_100122A5C(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: role %ld, destinationID %@", "-[WiFiIDSSyncEngine syncKnownWiFiNetworks:]_block_invoke", objc_msgSend(*(a1 + 32), "role"), objc_msgSend(*(a1 + 32), "pairedDeviceDestinationID")}];
  }

  objc_autoreleasePoolPop(v2);
  if ([*(a1 + 32) role])
  {
    if (![*(a1 + 32) pairedDeviceDestinationID])
    {
      [*(a1 + 32) setIsWaitingForIdsMessageDelivery:1];
      goto LABEL_50;
    }

    if (sub_10008AD8C(70))
    {
      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: KnownNetworks sync is not OS-eligible", "-[WiFiIDSSyncEngine syncKnownWiFiNetworks:]_block_invoke"}];
      }

      objc_autoreleasePoolPop(v3);
      goto LABEL_50;
    }

    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x3052000000;
    v35[3] = sub_100002C00;
    v35[4] = sub_1000067E4;
    v35[5] = sub_10000D83C("[WiFiIDSSyncEngine syncKnownWiFiNetworks:]_block_invoke");
    v4 = +[NSMutableDictionary dictionary];
    v5 = sub_1000A6B78();
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v6)
    {
      v7 = *v32;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v32 != v7)
          {
            objc_enumerationMutation(v5);
          }

          [v4 setObject:*(*(&v31 + 1) + 8 * i) forKeyedSubscript:{objc_msgSend(*(*(&v31 + 1) + 8 * i), "objectForKeyedSubscript:", kSecAttrAccount)}];
        }

        v6 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v6);
    }

    v28 = [[NSMutableArray alloc] initWithCapacity:0];
    v9 = sub_100072D44([*(a1 + 32) manager]);
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: plist network count %lu", "-[WiFiIDSSyncEngine syncKnownWiFiNetworks:]_block_invoke", objc_msgSend(v9, "count")}];
    }

    objc_autoreleasePoolPop(v10);
    v11 = 0;
    v27 = 0;
    for (j = 0; ; ++j)
    {
      if (j >= [v9 count])
      {
        if (v27)
        {
          [*(a1 + 32) manager];
          sub_10015AD08();
          v23 = v22;
          v24 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: modDates have been added to network, changes written to plist: %d", "-[WiFiIDSSyncEngine syncKnownWiFiNetworks:]_block_invoke", v23}];
          }

          objc_autoreleasePoolPop(v24);
        }

        v25 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: ids sync %lu networks", "-[WiFiIDSSyncEngine syncKnownWiFiNetworks:]_block_invoke", objc_msgSend(v28, "count")}];
        }

        objc_autoreleasePoolPop(v25);
        v26 = [*(a1 + 32) serialIdsDispatchQ];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001230E4;
        block[3] = &unk_1002625D0;
        block[4] = *(a1 + 32);
        block[5] = v28;
        block[6] = v35;
        dispatch_async(v26, block);

        _Block_object_dispose(v35, 8);
        break;
      }

      v13 = [v9 objectAtIndex:j];
      if ([*(a1 + 32) skipSyncForNetwork:v13])
      {
        v14 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Skipping sync for network: <%@>", "-[WiFiIDSSyncEngine syncKnownWiFiNetworks:]_block_invoke", sub_10000A878(v13)}];
        }

        objc_autoreleasePoolPop(v14);
      }

      else
      {

        v15 = sub_1001266A8(v13, [*(a1 + 32) manager]);
        v11 = v15;
        if (v15 && sub_100127AB4(v15))
        {
          if (sub_1001B0388(v11))
          {
            v16 = sub_10002A1CC(v13);
            if (!v16)
            {
              continue;
            }

            [v11 setObject:v16 forKey:@"WiFiNetworkPasswordString"];
            if (!sub_1000A13F8(v13))
            {
              v17 = [objc_msgSend(v4 objectForKeyedSubscript:{sub_10000A878(v13)), "objectForKeyedSubscript:", kSecAttrModificationDate}];
              sub_1000A12E4(v13, v17);
              [*(a1 + 32) manager];
              sub_10007D980();
              v27 = 1;
            }
          }

          else
          {
            v16 = 0;
          }

          v18 = sub_10000A540(v13, @"NetworkOfInterestHomeState");
          if (v18)
          {
            [v11 setObject:v18 forKey:@"NetworkOfInterestHomeState"];
            v19 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation : syncing NOI for network : <%@>", "-[WiFiIDSSyncEngine syncKnownWiFiNetworks:]_block_invoke", sub_10000A878(v13)}];
            }

            objc_autoreleasePoolPop(v19);
          }

          v20 = sub_10000A540(v13, @"NetworkAtLocationOfInterestType");
          if (v20)
          {
            [v11 setObject:v20 forKey:@"NetworkAtLocationOfInterestType"];
            v21 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation : syncing LOI for network : <%@>", "-[WiFiIDSSyncEngine syncKnownWiFiNetworks:]_block_invoke", sub_10000A878(v13)}];
            }

            objc_autoreleasePoolPop(v21);
          }

          [v28 addObject:v11];
          if (v16)
          {
            CFRelease(v16);
          }
        }
      }
    }
  }

LABEL_50:
  objc_autoreleasePoolPop(context);
}

void sub_1001230E4(uint64_t a1)
{
  [*(a1 + 32) setLastSyncedKnownNetworksData:{+[NSKeyedArchiver archivedDataWithRootObject:](NSKeyedArchiver, "archivedDataWithRootObject:", *(a1 + 40))}];
  [*(a1 + 32) sendToGizmoOfDataType:0];

  v2 = *(*(*(a1 + 48) + 8) + 40);
}

uint64_t sub_100123630(uint64_t a1, uint64_t token)
{
  notify_suspend(token);
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: keychainChangedNotification (%d)", "-[WiFiIDSSyncEngine subscribeToKeychainChanges]_block_invoke", token}];
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) checkForWiFiPasswordChange];

  return notify_resume(token);
}

uint64_t sub_1001236C4(uint64_t a1, uint64_t token)
{
  notify_suspend(token);
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: kWiFiNotificationWiFiPasswordChanged (%d)", "-[WiFiIDSSyncEngine subscribeToKeychainChanges]_block_invoke_2", token}];
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) knownNetworksListChanged];

  return notify_resume(token);
}

void sub_100123A7C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) sendCurrentCompanionNetworkWithChannelUpdate:0];

  objc_autoreleasePoolPop(v2);
}

void sub_100123F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_100123F60(uint64_t a1)
{
  if ([*(*(*(a1 + 40) + 8) + 40) objectForKey:@"SSID_STR"])
  {
    v2 = [NSKeyedArchiver archivedDataWithRootObject:*(*(*(a1 + 40) + 8) + 40) requiringSecureCoding:1 error:0];
    if (!v2 || ![*(a1 + 32) lastSyncedKnownNetworksData] || !objc_msgSend(objc_msgSend(*(a1 + 32), "lastSyncedKnownNetworksData"), "isEqual:", v2))
    {
      [*(a1 + 32) setLastSyncedCompanionAssistedAutoJoinData:v2];
      [*(a1 + 32) sendToGizmoOfDataType:1];
      goto LABEL_11;
    }

    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: no new assisted autojoin data. Not sending.", "-[WiFiIDSSyncEngine sendCurrentCompanionNetworkWithChannelUpdate:]_block_invoke"}];
    }
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: ssid is not present for current network, not syncing the network to gizmo !!", "-[WiFiIDSSyncEngine sendCurrentCompanionNetworkWithChannelUpdate:]_block_invoke"}];
    }
  }

  objc_autoreleasePoolPop(v3);
LABEL_11:
  v4 = *(*(*(a1 + 40) + 8) + 40);
}

void sub_100124094(uint64_t a1)
{
  v2 = [NSKeyedArchiver archivedDataWithRootObject:*(*(*(a1 + 40) + 8) + 40) requiringSecureCoding:1 error:0];
  if (v2 && [*(a1 + 32) lastSyncedKnownNetworksData] && objc_msgSend(objc_msgSend(*(a1 + 32), "lastSyncedKnownNetworksData"), "isEqual:", v2))
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: no new assisted autojoin data. Not sending.", "-[WiFiIDSSyncEngine sendCurrentCompanionNetworkWithChannelUpdate:]_block_invoke_2"}];
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    [*(a1 + 32) setLastSyncedCompanionAssistedAutoJoinData:v2];
    [*(a1 + 32) sendToGizmoOfDataType:1];
  }

  v4 = *(*(*(a1 + 40) + 8) + 40);
}

id sub_100124264(uint64_t a1)
{
  [*(a1 + 32) setLastSyncedCompanionLocaleData:{+[NSKeyedArchiver archivedDataWithRootObject:requiringSecureCoding:error:](NSKeyedArchiver, "archivedDataWithRootObject:requiringSecureCoding:error:", *(*(a1 + 32) + 208), 1, 0)}];
  v2 = *(a1 + 32);

  return [v2 sendToGizmoOfDataType:2];
}

void sub_100125D60(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  if (a1)
  {
    [a1 setStateChangeCallback:a2];
    [a1 setStateChangeContext:a3];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null wifiIDSSyncEngine", "WiFiIDSSyncEngineRegisterStateChangeCallback"}];
    }

    objc_autoreleasePoolPop(v7);
  }

  objc_autoreleasePoolPop(v6);
}

WiFiIDSSyncEngine *sub_100125E10(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (objc_opt_class())
  {
    v5 = objc_alloc_init(WiFiIDSSyncEngine);
    [(WiFiIDSSyncEngine *)v5 initializeWithWiFiManager:a1 queue:a2];
  }

  else
  {
    v5 = 0;
  }

  objc_autoreleasePoolPop(v4);
  return v5;
}

void sub_100125E84(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1)
  {
    [a1 keychainAccessibleNow];
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null wifiIDSSyncEngine", "WiFiIDSSyncEngineNotifyKeychainAccessibleNow"}];
    }

    objc_autoreleasePoolPop(v3);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100125F14(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  if (a1)
  {
    if ([a1 role] && objc_msgSend(a1, "isKeychainUnlocked"))
    {
      [objc_msgSend(a1 "pairedDeviceVersionID")];
      if (v7 >= 10.0)
      {
        [a1 syncKnownWiFiNetwork:a2 withOperation:a3];
      }

      else
      {
        [a1 knownNetworksListChanged];
      }
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null wifiIDSSyncEngine", "WiFiIDSSyncEngineNotifyKnownNetworksChanged"}];
    }

    objc_autoreleasePoolPop(v8);
  }

  objc_autoreleasePoolPop(v6);
}

void sub_100125FF4(void *a1, const void *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (!a1)
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null wifiIDSSyncEngine", "WiFiIDSSyncEngineNotifyCurrentNetworkChange"}];
    }

    v7 = v8;
    goto LABEL_16;
  }

  v5 = [a1 currentNetwork];
  if (a2 && v5 && CFEqual([a1 currentNetwork], a2))
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: same network (%@), not notifying network change.", "WiFiIDSSyncEngineNotifyCurrentNetworkChange", sub_10000A878(a2)}];
    }

    v7 = v6;
LABEL_16:
    objc_autoreleasePoolPop(v7);
    goto LABEL_17;
  }

  if ([a1 currentNetwork])
  {
    CFRelease([a1 currentNetwork]);
    [a1 setCurrentNetwork:0];
  }

  [a1 setCurrentNetwork:a2];
  if (a2)
  {
    CFRetain([a1 currentNetwork]);
  }

  [a1 currentNetworkChanged];
LABEL_17:

  objc_autoreleasePoolPop(v4);
}

void sub_10012613C(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1)
  {
    [a1 currentNetworkChannelChanged];
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null wifiIDSSyncEngine", "WiFiIDSSyncEngineNotifyCurrentChannelChange"}];
    }

    objc_autoreleasePoolPop(v3);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001261CC(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1)
  {
    [a1 networkRemoved:a2];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null wifiIDSSyncEngine", "WiFiIDSSyncEngineNetworkRemoved"}];
    }

    objc_autoreleasePoolPop(v5);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_10012626C(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1)
  {
    [a1 sendLocaleToGizmo:a2];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null wifiIDSSyncEngine", "WiFiIDSSyncEngineNotifyLocaleChange"}];
    }

    objc_autoreleasePoolPop(v5);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_10012630C(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1)
  {
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null wifiIDSSyncEngine", "WiFiIDSSyncEngineRelease"}];
    }

    objc_autoreleasePoolPop(v3);
  }

  objc_autoreleasePoolPop(v2);
}

id sub_100126398(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1)
  {
    v5 = [a1 canAttemptAssociationBasedOnBssidGuessingForScannedNetwork:a2];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null wifiIDSSyncEngine", "WiFiIDSSyncEngineCanAttemptAssociationBasedOnBssidGuessing"}];
    }

    objc_autoreleasePoolPop(v6);
    v5 = 0;
  }

  objc_autoreleasePoolPop(v4);
  return v5;
}

void sub_100126438(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (!a1)
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null wifiIDSSyncEngine", "WiFiIDSSyncEngineSignalGuessingFailed", v7}];
    }

    goto LABEL_9;
  }

  v5 = sub_10000A540(a2, @"RSSI");
  if (v5)
  {
    valuePtr = 0.0;
    CFNumberGetValue(v5, kCFNumberFloatType, &valuePtr);
    if (valuePtr < -75.0)
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: ignoring this failure due to poor rssi %f", "WiFiIDSSyncEngineSignalGuessingFailed", valuePtr}];
      }

LABEL_9:
      objc_autoreleasePoolPop(v6);
      goto LABEL_10;
    }
  }

  [a1 incrementGuessingFailedCountForScannedNetworkWithBssid:{sub_10000A540(a2, @"BSSID"}];
LABEL_10:
  objc_autoreleasePoolPop(v4);
}

void sub_100126550(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1)
  {
    [a1 addToKnownNetworkGuessingDictionaryTheNetwork:a2];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null wifiIDSSyncEngine", "WiFiIDSSyncEngineSignalGuessingSucceeded"}];
    }

    objc_autoreleasePoolPop(v5);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_1001265F0(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([a1 receivedKnownNetworks] && sub_100088584(objc_msgSend(a1, "manager")))
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: apply receivedKnownNetworks", "WiFiIDSSyncReapplyLastSyncKnownNetworks"}];
    }

    objc_autoreleasePoolPop(v3);
    [a1 processReceivedKnownNetworks:{objc_msgSend(a1, "receivedKnownNetworks")}];
  }

  objc_autoreleasePoolPop(v2);
}

id sub_1001266A8(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [NSNumber numberWithBool:1];
  v6 = [NSNumber numberWithBool:0];
  if (!a1)
  {
    sub_1001B07CC();
LABEL_105:
    v9 = 0;
    goto LABEL_101;
  }

  if (!a2)
  {
    sub_1001B0760();
    goto LABEL_105;
  }

  v7 = v6;
  v8 = sub_10009D190();
  if (v8 != CFGetTypeID(a1))
  {
    sub_1001B04D8();
    goto LABEL_105;
  }

  v9 = [[NSMutableDictionary alloc] initWithCapacity:7];
  if (!v9)
  {
    sub_1001B06F4();
    goto LABEL_101;
  }

  v10 = sub_100017C00(a1);
  if (!v10)
  {
    sub_1001B0688();
    goto LABEL_101;
  }

  v11 = v10;
  Value = CFDictionaryGetValue(v10, @"SSID_STR");
  if (Value)
  {
    v13 = Value;
    v95 = v4;
    [v9 setObject:Value forKey:@"SSID_STR"];
    v14 = sub_100013F70(a1);
    v15 = v14;
    if (v14 && [(__CFArray *)v14 length])
    {
      [v9 setObject:v15 forKey:@"BSSID"];
    }

    v16 = CFDictionaryGetValue(v11, @"AP_MODE");
    if (v16)
    {
      [v9 setObject:v16 forKey:@"AP_MODE"];
      v17 = CFDictionaryGetValue(v11, @"UserDirected");
      v18 = v7;
      if (v17)
      {
        if (CFBooleanGetValue(v17))
        {
          v18 = v5;
        }

        else
        {
          v18 = v7;
        }
      }

      [v9 setObject:v18 forKey:@"UserDirected"];
      v19 = CFDictionaryGetValue(v11, @"enabled");
      if (!v19 || (v20 = CFBooleanGetValue(v19), v21 = v7, v20))
      {
        v21 = v5;
      }

      [v9 setObject:v21 forKey:@"enabled"];
      v22 = sub_10009DB7C(a1);
      v23 = @"WEP";
      if (v22)
      {
        [v9 setObject:v5 forKey:@"WEP"];
        v24 = CFDictionaryGetValue(v11, @"WEPType");
        if (v24)
        {
          [v9 setObject:v24 forKey:@"WEPType"];
        }

        v25 = CFDictionaryGetValue(v11, @"WEP_AUTH_Flags");
        if (!v25)
        {
LABEL_25:
          v28 = sub_10009E148(a1);
          v29 = sub_10001CF3C(a1);
          if (v28)
          {
            if (v29)
            {
              if (sub_10009EB90(a1))
              {
                v30 = CFDictionaryGetValue(v11, @"RSN_IE");
                if (!v30)
                {
                  goto LABEL_50;
                }

                v31 = v30;
                v32 = @"RSN_IE";
                v33 = v9;
                goto LABEL_36;
              }

              if (sub_10000A540(a1, @"ALLOW_WPA2_PSK"))
              {
                v40 = sub_10000C580(kCFAllocatorDefault, a1);
                sub_10009E158(v40, 1, 1);
                v41 = sub_100017C00(v40);
                v42 = CFDictionaryGetValue(v41, @"RSN_IE");
                if (v42)
                {
                  [v9 setObject:v42 forKey:@"RSN_IE"];
                  v43 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    contexta = v43;
                    [off_100298C40 WFLog:3 message:{"%s: inserted WPA2 auth, <%@> will be synced as a WPA2/WPA3 network", "WiFiNetworkSyncHelperCreateSyncableNetworkRecord", sub_10000A878(a1)}];
                    v43 = contexta;
                  }

                  objc_autoreleasePoolPop(v43);
                }

                if (v41)
                {
                  CFRelease(v41);
                }

                if (v40)
                {
                  CFRelease(v40);
                }
              }
            }

            else
            {
              v38 = CFDictionaryGetValue(v11, @"RSN_IE");
              if (v38)
              {
                [v9 setObject:v38 forKey:@"WPA3_RSN_IE"];
                v39 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: <%@> will be synced as a WPA3-only network", "WiFiNetworkSyncHelperCreateSyncableNetworkRecord", sub_10000A878(a1)}];
                }

                objc_autoreleasePoolPop(v39);
              }
            }
          }

          else if (v29)
          {
            v34 = CFDictionaryGetValue(v11, @"RSN_IE");
            if (v34)
            {
              [v9 setObject:v34 forKey:@"RSN_IE"];
            }

            v35 = CFDictionaryGetValue(v11, @"WPA_IE");
            if (v35)
            {
              v36 = v35;
              TypeID = CFDictionaryGetTypeID();
              if (sub_100058AF8(TypeID, v36))
              {
                v32 = @"WPA_IE";
                v33 = v9;
                v31 = v36;
LABEL_36:
                [v33 setObject:v31 forKey:v32];
              }
            }
          }

LABEL_50:
          if (sub_100009730(a1))
          {
            v44 = v5;
          }

          else
          {
            v44 = v7;
          }

          [v9 setObject:v44 forKey:@"IS_NETWORK_EAP"];
          if (sub_10000A604(a1))
          {
            v45 = v5;
          }

          else
          {
            v45 = v7;
          }

          [v9 setObject:v45 forKey:@"IS_PERSONAL_HOTSPOT"];
          if (sub_10009ED84(a1))
          {
            v46 = v5;
          }

          else
          {
            v46 = v7;
          }

          [v9 setObject:v46 forKey:@"IS_NETWORK_CONFIGURED"];
          v47 = sub_10013D5CC(a2);
          if (v47)
          {
            Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, v47);
            if (Copy)
            {
              v49 = Copy;
              v50 = CFDictionaryContainsKey(Copy, v13);
              CFRelease(v49);
              v51 = v5;
              if (v50)
              {
                goto LABEL_63;
              }
            }
          }

          else
          {
            sub_1001B0544();
          }

          v51 = v7;
LABEL_63:
          [v9 setObject:v51 forKey:@"IS_NETWORK_CUSTOMIZED"];
          if (sub_10009EF18(a1))
          {
            v52 = v5;
          }

          else
          {
            v52 = v7;
          }

          [v9 setObject:v52 forKey:@"IS_NETWORK_EXPIRABLE"];
          if (!&_CNForgetSSID)
          {
            goto LABEL_74;
          }

          if (sub_10000A540(a1, kCNSIsWhitelistedCaptiveNetworkProperty) == kCFBooleanTrue)
          {
            v54 = @"IS_NETWORK_WHITELISTING_CAPTIVE";
          }

          else
          {
            if (!sub_10009E7C8(a1))
            {
LABEL_74:
              if (sub_10009EDC4(a1))
              {
                v57 = v5;
              }

              else
              {
                v57 = v7;
              }

              [v9 setObject:v57 forKey:@"IS_NETWORK_APPBASED"];
              v58 = sub_10009DFC8(a1);
              if (v15)
              {
                v59 = v58;
                if ([(__CFArray *)v15 length])
                {
                  if (v59)
                  {
                    if ([(__CFArray *)v59 intValue]>= 15)
                    {
                      v60 = [(__CFArray *)v15 componentsSeparatedByString:@":"];
                      if ([v60 count] == 6)
                      {
                        v96 = -1431655766;
                        -[NSScanner scanHexInt:](+[NSScanner scannerWithString:](NSScanner, "scannerWithString:", [v60 lastObject]), "scanHexInt:", &v96);
                        v91 = [v60 objectAtIndex:0];
                        v61 = [v60 objectAtIndex:1];
                        v62 = [v60 objectAtIndex:2];
                        v63 = [v60 objectAtIndex:3];
                        v64 = [v60 objectAtIndex:4];
                        v92 = [NSString stringWithFormat:@"%@:%@:%@:%@:%@:%x", v91, v61, v62, v63, v64, (v96 - 1)];
                        v89 = [v60 objectAtIndex:0];
                        v65 = [v60 objectAtIndex:1];
                        v66 = [v60 objectAtIndex:2];
                        v67 = [v60 objectAtIndex:3];
                        v68 = [v60 objectAtIndex:4];
                        v90 = [NSString stringWithFormat:@"%@:%@:%@:%@:%@:%x", v89, v65, v66, v67, v68, (v96 - 2)];
                        v88 = [v60 objectAtIndex:0];
                        v69 = [v60 objectAtIndex:1];
                        v70 = [v60 objectAtIndex:2];
                        v71 = [v60 objectAtIndex:3];
                        v72 = [v60 objectAtIndex:4];
                        context = [NSString stringWithFormat:@"%@:%@:%@:%@:%@:%x", v88, v69, v70, v71, v72, (v96 + 1)];
                        v87 = [v60 objectAtIndex:0];
                        v73 = [v60 objectAtIndex:1];
                        v74 = [v60 objectAtIndex:2];
                        v75 = [v60 objectAtIndex:3];
                        v76 = [v60 objectAtIndex:4];
                        v77 = [NSString stringWithFormat:@"%@:%@:%@:%@:%@:%x", v87, v73, v74, v75, v76, (v96 + 2)];
                        [v9 setObject:v92 forKey:@"GUESSED_2ghzBSSID1"];
                        [v9 setObject:v90 forKey:@"GUESSED_2ghzBSSID2"];
                        [v9 setObject:context forKey:@"GUESSED_2ghzBSSID3"];
                        [v9 setObject:v77 forKey:@"GUESSED_2ghzBSSID4"];
                        v78 = objc_autoreleasePoolPush();
                        if (off_100298C40)
                        {
                          [off_100298C40 WFLog:3 message:{"%s: for 5ghz network <%@> %@: guess1 %@, guess2 %@, guess3 %@, guess4 %@", "WiFiNetworkSyncHelperCreateSyncableNetworkRecord", v13, v15, v92, v90, context, v77}];
                        }

                        objc_autoreleasePoolPop(v78);
                      }
                    }
                  }
                }
              }

              if (sub_1000A158C(a1) == 1)
              {
                [v9 setObject:v5 forKey:@"IS_NETWORK_CARPLAY_ONLY"];
              }

              [v9 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", sub_10001CE30(a1)), @"SHARE_MODE"}];
              [v9 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", sub_1000A1EB0(a1)), @"USER_ROLE"}];
              v4 = v95;
              if (sub_10000A540(a1, @"SaveDataMode"))
              {
                [v9 setObject:sub_10000A540(a1 forKey:{@"SaveDataMode", @"LOW_DATA_MODE"}];
              }

              [v9 setValue:sub_10000A540(a1 forKey:{@"addedAt", @"AddedAt"}];
              [v9 setValue:sub_10000A540(a1 forKey:{@"lastJoined", @"UserJoinedAt"}];
              v79 = sub_10001B368(a1);
              v80 = [v79 lastJoinedBySystemAtWeek];
              if (v80)
              {
                v80 = [NSNumber numberWithUnsignedInteger:v80];
              }

              [v9 setValue:v80 forKey:@"lastJoinedBySystemAtWeek"];
              v81 = [v79 was6GHzOnlyAtWeek];
              if (v81)
              {
                v81 = [NSNumber numberWithUnsignedInteger:v81];
              }

              [v9 setValue:v81 forKey:@"was6GHzOnlyAtWeek"];
              [v9 setValue:objc_msgSend(v79 forKey:{"seamlessSSIDList"), @"seamlessSSIDList"}];

              [v9 setObject:+[NSNumber numberWithUnsignedChar:](NSNumber forKey:{"numberWithUnsignedChar:", sub_10001D108(a1)), @"IS_PRIVACY_PROXY_ENABLED"}];
              if (sub_10000A540(a1, @"WiFiNetworkAttributeIsMoving"))
              {
                v82 = sub_10000A540(a1, @"WiFiNetworkAttributeIsMoving");
                v83 = [NSNumber numberWithBool:CFEqual(v82, kCFBooleanTrue) != 0];
              }

              else
              {
                v83 = 0;
              }

              if (sub_10000A540(a1, @"WiFiNetworkAttributeIsPublic"))
              {
                v84 = sub_10000A540(a1, @"WiFiNetworkAttributeIsPublic");
                v85 = [NSNumber numberWithBool:CFEqual(v84, kCFBooleanTrue) != 0];
              }

              else
              {
                v85 = 0;
              }

              [v9 setValue:v83 forKey:@"IS_MOVING"];
              [v9 setValue:v85 forKey:@"IS_PUBLIC"];
              goto LABEL_100;
            }

            v53 = sub_10009E718(a1);
            v54 = @"IS_NETWORK_CAPTIVE";
            if (!v53)
            {
              v55 = v9;
              v56 = v7;
LABEL_73:
              [v55 setObject:v56 forKey:v54];
              goto LABEL_74;
            }
          }

          v55 = v9;
          v56 = v5;
          goto LABEL_73;
        }

        v26 = v25;
        v23 = @"WEP_AUTH_Flags";
        v27 = v9;
      }

      else
      {
        v27 = v9;
        v26 = v7;
      }

      [v27 setObject:v26 forKey:v23];
      goto LABEL_25;
    }

    sub_1001B05B0();
    v4 = v95;
  }

  else
  {
    sub_1001B061C();
  }

LABEL_100:
  CFRelease(v11);
LABEL_101:
  objc_autoreleasePoolPop(v4);
  return v9;
}

void sub_100127238(uint64_t a1)
{
  if (a1)
  {

    sub_1000A2BC8(a1);
  }

  else
  {
    sub_1001B0838();
  }
}

_WORD *sub_100127264(_WORD *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v4 = Mutable;
      v5 = [a1 objectForKey:@"SSID_STR"];
      if (v5)
      {
        CFDictionarySetValue(v4, @"SSID_STR", v5);
        v6 = [a1 objectForKey:@"BSSID"];
        if (v6)
        {
          CFDictionarySetValue(v4, @"BSSID", v6);
        }

        v7 = [a1 objectForKey:@"AP_MODE"];
        if (v7)
        {
          CFDictionarySetValue(v4, @"AP_MODE", v7);
        }

        v8 = [a1 objectForKey:@"UserDirected"];
        if (v8)
        {
          if ([v8 BOOLValue])
          {
            v9 = &kCFBooleanTrue;
          }

          else
          {
            v9 = &kCFBooleanFalse;
          }

          CFDictionarySetValue(v4, @"UserDirected", *v9);
        }

        v10 = [a1 objectForKey:@"WEP"];
        if (v10 && [v10 BOOLValue])
        {
          CFDictionarySetValue(v4, @"WEP", kCFBooleanTrue);
          v11 = [a1 objectForKey:@"WEPType"];
          if (v11)
          {
            CFDictionarySetValue(v4, @"WEPType", v11);
          }

          v12 = [a1 objectForKey:@"WEP_AUTH_Flags"];
          if (v12)
          {
            CFDictionarySetValue(v4, @"WEP_AUTH_Flags", v12);
          }
        }

        v13 = [a1 objectForKey:@"WPA_IE"];
        if (v13)
        {
          CFDictionarySetValue(v4, @"WPA_IE", v13);
        }

        v14 = [a1 objectForKey:@"RSN_IE"];
        if (v14)
        {
          CFDictionarySetValue(v4, @"RSN_IE", v14);
        }

        v15 = [a1 objectForKey:@"WPA3_RSN_IE"];
        if (v15)
        {
          CFDictionarySetValue(v4, @"RSN_IE", v15);
        }

        v16 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s for <%@>", "WiFiNetworkSyncHelperCreateNetworkRef", objc_msgSend(a1, "objectForKey:", @"SSID_STR"}];
        }

        objc_autoreleasePoolPop(v16);
        v17 = [a1 objectForKey:@"SHARE_MODE"];
        if (v17)
        {
          CFDictionarySetValue(v4, @"ShareMode", v17);
        }

        v18 = [a1 objectForKey:@"USER_ROLE"];
        if (v18)
        {
          CFDictionarySetValue(v4, @"UserRole", v18);
        }

        v19 = [a1 objectForKey:@"LOW_DATA_MODE"];
        if (v19)
        {
          CFDictionarySetValue(v4, @"SaveDataMode", v19);
        }

        if (&_CNForgetSSID)
        {
          v20 = [a1 objectForKey:@"IS_NETWORK_WHITELISTING_CAPTIVE"];
          if (v20 && [v20 BOOLValue])
          {
            CFDictionarySetValue(v4, kCNSIsWhitelistedCaptiveNetworkProperty, kCFBooleanTrue);
          }

          v21 = [a1 objectForKey:@"IS_NETWORK_CAPTIVE"];
          if (v21 && [v21 BOOLValue])
          {
            CFDictionarySetValue(v4, kCNSCaptiveNetworkProperty, kCFBooleanTrue);
          }
        }

        v22 = [a1 objectForKey:@"IS_PERSONAL_HOTSPOT"];
        if (v22)
        {
          if ([v22 BOOLValue])
          {
            v23 = &kCFBooleanTrue;
          }

          else
          {
            v23 = &kCFBooleanFalse;
          }

          CFDictionarySetValue(v4, @"IsPersonalHotspot", *v23);
        }

        v24 = [a1 objectForKey:@"AddedAt"];
        if (v24)
        {
          CFDictionarySetValue(v4, @"addedAt", v24);
        }

        v25 = [a1 objectForKey:@"UserJoinedAt"];
        if (v25)
        {
          CFDictionarySetValue(v4, @"lastJoined", v25);
        }

        v26 = [a1 objectForKey:@"IS_PRIVACY_PROXY_ENABLED"];
        if (v26)
        {
          if ([v26 BOOLValue])
          {
            v27 = &kCFBooleanTrue;
          }

          else
          {
            v27 = &kCFBooleanFalse;
          }

          CFDictionarySetValue(v4, @"PrivacyProxyEnabled", *v27);
        }

        v28 = sub_10000AD2C(kCFAllocatorDefault, v4);
        v29 = sub_10001B368(v28);
        v30 = [a1 objectForKeyedSubscript:@"lastJoinedBySystemAtWeek"];
        if (v30)
        {
          v31 = v30;
          v32 = [v30 unsignedIntegerValue];
          if (v32 <= [v29 lastJoinedBySystemAtWeek])
          {
            v33 = [v29 lastJoinedBySystemAtWeek];
          }

          else
          {
            v33 = [v31 unsignedIntegerValue];
          }

          [v29 setLastJoinedBySystemAtWeek:v33];
        }

        v34 = [a1 objectForKeyedSubscript:@"was6GHzOnlyAtWeek"];
        if (v34)
        {
          v35 = v34;
          v36 = [v34 unsignedIntegerValue];
          if (v36 <= [v29 was6GHzOnlyAtWeek])
          {
            v37 = [v29 was6GHzOnlyAtWeek];
          }

          else
          {
            v37 = [v35 unsignedIntegerValue];
          }

          [v29 setWas6GHzOnlyAtWeek:v37];
        }

        v38 = [a1 objectForKeyedSubscript:@"seamlessSSIDList"];
        if (v38)
        {
          [v29 setSeamlessSSIDList:v38];
        }

        if (v28)
        {
          CFRelease(v28);
        }

        a1 = sub_100022854(v29, 0);
      }

      else
      {
        sub_1001B08A4();
        a1 = 0;
      }

      CFRelease(v4);
    }

    else
    {
      sub_1001B0910();
      a1 = 0;
    }
  }

  else
  {
    sub_1001B097C();
  }

  sub_100127238(a1);
  v39 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: network content to be returned to caller: %@", "WiFiNetworkSyncHelperCreateNetworkRef", a1}];
  }

  objc_autoreleasePoolPop(v39);
  objc_autoreleasePoolPop(v2);
  return a1;
}

void sub_10012780C(const void *a1, uint64_t a2)
{
  if (!a1)
  {
    sub_1001B0A54();
    return;
  }

  if (!a2)
  {
    sub_1001B09E8();
    return;
  }

  v4 = sub_10009D190();
  v5 = CFGetTypeID(a1);
  v6 = objc_autoreleasePoolPush();
  if (v4 == v5)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s", "WiFiNetworkSyncHelperAddNetworkToPlist"}];
    }

    objc_autoreleasePoolPop(v6);
    if (!sub_10009E148(a1) || sub_10001CF3C(a1) || sub_1000885E4(a2))
    {

      sub_100159BD0(a2, a1, 3);
      return;
    }

    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: WPA3 not supported, will not add WPA3-only network", "WiFiNetworkSyncHelperAddNetworkToPlist"}];
    }

    v8 = v7;
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: network object passed in is not WiFiNetwork type", "WiFiNetworkSyncHelperAddNetworkToPlist"}];
    }

    v8 = v6;
  }

  objc_autoreleasePoolPop(v8);
}

void sub_10012798C(const void *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v4 = sub_10009D190();
      v5 = CFGetTypeID(a1);
      v6 = objc_autoreleasePoolPush();
      if (v4 == v5)
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s", "WiFiNetworkSyncHelperRemoveNetworkFromPlist"}];
        }

        objc_autoreleasePoolPop(v6);

        sub_100081634(a2, a1, 4);
      }

      else
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: network object passed in is not WiFiNetwork type", "WiFiNetworkSyncHelperRemoveNetworkFromPlist"}];
        }

        objc_autoreleasePoolPop(v6);
      }
    }

    else
    {
      sub_1001B0AC0();
    }
  }

  else
  {
    sub_1001B0B2C();
  }
}

uint64_t sub_100127AB4(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (!a1)
  {
    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null syncFormattedNetworkRecord", "WiFiNetworkSyncHelperIsNetworkSyncable"}];
    }

    goto LABEL_40;
  }

  v3 = [a1 objectForKey:@"IS_NETWORK_EAP"];
  if (!v3)
  {
    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: missing WIFICLOUDSYNC_NETWORKKEY_ISEAP key, not syncable", "WiFiNetworkSyncHelperIsNetworkSyncable"}];
    }

    goto LABEL_40;
  }

  if ([v3 BOOLValue])
  {
    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: EAP network, not syncable", "WiFiNetworkSyncHelperIsNetworkSyncable"}];
    }

    goto LABEL_40;
  }

  v4 = [a1 objectForKey:@"IS_NETWORK_CUSTOMIZED"];
  if (!v4)
  {
    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: missing WIFICLOUDSYNC_NETWORKKEY_ISCUSTOMIZED key, not syncable", "WiFiNetworkSyncHelperIsNetworkSyncable"}];
    }

    goto LABEL_40;
  }

  if ([v4 BOOLValue])
  {
    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: customized network, not syncable", "WiFiNetworkSyncHelperIsNetworkSyncable"}];
    }

    goto LABEL_40;
  }

  v5 = [a1 objectForKey:@"IS_NETWORK_CONFIGURED"];
  if (!v5)
  {
    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: missing WIFICLOUDSYNC_NETWORKKEY_ISCONFIGURED key, not syncable", "WiFiNetworkSyncHelperIsNetworkSyncable"}];
    }

    goto LABEL_40;
  }

  if ([v5 BOOLValue])
  {
    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: configured network, not syncable", "WiFiNetworkSyncHelperIsNetworkSyncable"}];
    }

    goto LABEL_40;
  }

  v6 = [a1 objectForKey:@"AP_MODE"];
  if (v6 && [v6 intValue] != 2)
  {
    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: non-infrastructure network, not syncable", "WiFiNetworkSyncHelperIsNetworkSyncable"}];
    }

    goto LABEL_40;
  }

  v7 = [a1 objectForKey:@"IS_NETWORK_APPBASED"];
  if (v7 && [v7 BOOLValue])
  {
    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: app based network, not syncable", "WiFiNetworkSyncHelperIsNetworkSyncable"}];
    }

    goto LABEL_40;
  }

  v8 = [a1 objectForKey:@"IS_NETWORK_EXPIRABLE"];
  if (v8 && [v8 BOOLValue])
  {
    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: expirable network, not syncable", "WiFiNetworkSyncHelperIsNetworkSyncable"}];
    }

    goto LABEL_40;
  }

  v9 = [a1 objectForKey:@"IS_NETWORK_CARPLAY_ONLY"];
  if (v9 && [v9 BOOLValue])
  {
    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: carplay only network, not syncable", "WiFiNetworkSyncHelperIsNetworkSyncable"}];
    }

LABEL_40:
    objc_autoreleasePoolPop(v12);
    v10 = 0;
    goto LABEL_17;
  }

  v10 = 1;
LABEL_17:
  objc_autoreleasePoolPop(v2);
  return v10;
}

void sub_100127DE4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s", "WiFiCoexManagerRegister"}];
  }

  objc_autoreleasePoolPop(v2);
  if (&WCMEnabled)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    mach_service = xpc_connection_create_mach_service("com.apple.WirelessCoexManager", global_queue, 0);
    if (mach_service)
    {
      v5 = mach_service;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100128034;
      handler[3] = &unk_1002635D8;
      handler[4] = a1;
      xpc_connection_set_event_handler(mach_service, handler);
      xpc_connection_resume(v5);
      keys = "kWCMRegisterProcess_ProcessId";
      values = xpc_uint64_create(1uLL);
      v6 = xpc_dictionary_create(&keys, &values, 1uLL);
      v11[0] = "kMessageId";
      v11[1] = "kMessageArgs";
      object[0] = xpc_uint64_create(1uLL);
      object[1] = v6;
      v7 = xpc_dictionary_create(v11, object, 2uLL);
      xpc_connection_send_message(v5, v7);
      xpc_release(values);
      xpc_release(object[0]);
      xpc_release(v6);
      xpc_release(v7);
      sub_1000852A0(a1, v5);
      return;
    }

    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"Error: %s: failed to create xpc connection", "WiFiCoexManagerRegister"}];
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: WCM is disabled ", "WiFiCoexManagerRegister"}];
    }
  }

  objc_autoreleasePoolPop(v8);
}

void sub_100128034(uint64_t a1, xpc_object_t object)
{
  if (!object)
  {
    sub_1001B0B98();
    return;
  }

  v3 = *(a1 + 32);
  if (xpc_get_type(object) == &_xpc_type_error)
  {
    if (object == &_xpc_error_connection_interrupted)
    {
      v5 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Re-Register", "__WiFiCoexManagerHandleEvent"}];
      }

      objc_autoreleasePoolPop(v5);

      sub_100127DE4(v3);
    }

    else
    {
      if (object == &_xpc_error_termination_imminent)
      {
        v4 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: about to Die", "__WiFiCoexManagerHandleEvent"}];
        }
      }

      else
      {
        if (object != &_xpc_error_connection_invalid)
        {
          return;
        }

        v4 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{" %s: Invalid XPC Connection", "__WiFiCoexManagerHandleEvent"}];
        }
      }

      objc_autoreleasePoolPop(v4);
    }
  }
}

void sub_10012819C(xpc_object_t *a1)
{
  if (&WCMEnabled)
  {
    v2 = *a1;
    if (v2)
    {
      xpc_connection_cancel(v2);
      xpc_release(*a1);
      *a1 = 0;
      return;
    }

    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"Error: %s: coexMgrXpcConnection is null", "WiFiCoexManagerUnRegister"}];
    }
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: WCM is disabled ", "WiFiCoexManagerUnRegister"}];
    }
  }

  objc_autoreleasePoolPop(v3);
}

uint64_t sub_1001285A4(uint64_t a1)
{
  v1 = *(a1 + 20);
  if ((v1 - 69849) >= 0xFFFFFF61)
  {
    return *(&off_1002635F8 + 5 * (v1 - 69690) + 5);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001285E4(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 56)
  {
    v3 = -304;
    goto LABEL_9;
  }

  if (*(result + 38) << 16 != 1114112)
  {
    v3 = -300;
    goto LABEL_9;
  }

  if (*(result + 56) || *(result + 60) <= 0x1Fu)
  {
    v3 = -309;
LABEL_9:
    *(a2 + 32) = v3;
    goto LABEL_10;
  }

  *(a2 + 32) = 0x11000000000000;
  v4 = *(result + 12);
  v5 = *(result + 48);
  v6 = *(result + 52);
  v7 = *(result + 28);
  v8 = *(result + 92);
  v9[0] = *(result + 76);
  v9[1] = v8;
  result = sub_1000A7F40(v4, v5, v6, v7, (a2 + 28), (a2 + 48), v9);
  if (!result)
  {
    *(a2 + 40) = NDR_record;
    *a2 |= 0x80000000;
    *(a2 + 4) = 52;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_10:
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_1001286EC(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = result[3];
    result = sub_10017D9E4();
    *(a2 + 32) = result;
  }

  return result;
}

void sub_100128748(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  v3 = a1[3];
  sub_10017F598();
  if (v4)
  {
    *(a2 + 32) = v4;
LABEL_6:
    *(a2 + 24) = NDR_record;
    return;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
}

void sub_1001287F0(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 36)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  v3 = a1[3];
  v4 = a1[8];
  sub_10017F670();
  if (v5)
  {
    *(a2 + 32) = v5;
LABEL_6:
    *(a2 + 24) = NDR_record;
    return;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
}

void sub_1001288A0(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 1 || *(a1 + 4) != 56)
  {
    v7 = -304;
LABEL_9:
    *(a2 + 32) = v7;
    goto LABEL_10;
  }

  if (*(a1 + 39) != 1 || *(a1 + 40) != *(a1 + 52))
  {
    v7 = -300;
    goto LABEL_9;
  }

  *(a2 + 36) = 16777473;
  v3 = *(a1 + 12);
  v4 = *(a1 + 28);
  v5 = *(a1 + 40);
  sub_10017F170();
  if (v6)
  {
    *(a2 + 32) = v6;
LABEL_10:
    *(a2 + 24) = NDR_record;
    return;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
}

void sub_100128984(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 2 || *(a1 + 4) != 76)
  {
    v7 = -304;
LABEL_11:
    *(a2 + 32) = v7;
    *(a2 + 24) = NDR_record;
    return;
  }

  if (*(a1 + 39) != 1 || *(a1 + 55) != 1 || *(a1 + 40) != *(a1 + 68) || *(a1 + 56) != *(a1 + 72))
  {
    v7 = -300;
    goto LABEL_11;
  }

  v3 = *(a1 + 12);
  v4 = *(a1 + 28);
  v5 = *(a1 + 44);
  sub_10017F2E8();
  *(a2 + 32) = v6;
  *(a2 + 24) = NDR_record;
  if (!v6)
  {
    *(a2 + 4) = 40;
  }
}

uint64_t sub_100128A58(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 && *(result + 24) == 1 && *(result + 4) == 56)
  {
    if (*(result + 39) == 1 && *(result + 40) == *(result + 52))
    {
      v3 = *(result + 12);
      v4 = *(result + 28);
      result = sub_10017F768();
      *(a2 + 32) = result;
      return result;
    }

    v5 = -300;
  }

  else
  {
    v5 = -304;
  }

  *(a2 + 32) = v5;
  *(a2 + 24) = NDR_record;
  return result;
}

void sub_100128AEC(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 2 && *(a1 + 4) == 76)
  {
    if (*(a1 + 39) == 1 && *(a1 + 55) == 1 && *(a1 + 40) == *(a1 + 68) && *(a1 + 56) == *(a1 + 72))
    {
      v3 = *(a1 + 12);
      v4 = *(a1 + 28);
      v5 = *(a1 + 44);
      sub_10017F9AC();
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

void sub_100128BA0(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 56)
  {
    if (*(a1 + 39) == 1 && *(a1 + 40) == *(a1 + 52))
    {
      v3 = *(a1 + 12);
      v4 = *(a1 + 28);
      sub_10017FADC();
      *(a2 + 32) = v5;
      return;
    }

    v6 = -300;
  }

  else
  {
    v6 = -304;
  }

  *(a2 + 32) = v6;
  *(a2 + 24) = NDR_record;
}

void sub_100128C34(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 60)
  {
    if (*(a1 + 39) == 1 && *(a1 + 40) == *(a1 + 52))
    {
      v3 = *(a1 + 12);
      v4 = *(a1 + 28);
      v5 = *(a1 + 56);
      sub_10017FC3C();
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

void sub_100128CCC(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 60)
  {
    if (*(a1 + 39) == 1 && *(a1 + 40) == *(a1 + 52))
    {
      v3 = *(a1 + 12);
      v4 = *(a1 + 28);
      v5 = *(a1 + 56);
      sub_10017FD5C();
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

void sub_100128D64(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 56)
  {
    if (*(a1 + 39) == 1 && *(a1 + 40) == *(a1 + 52))
    {
      v3 = *(a1 + 12);
      v4 = *(a1 + 28);
      sub_10017FE70();
      *(a2 + 32) = v5;
      return;
    }

    v6 = -300;
  }

  else
  {
    v6 = -304;
  }

  *(a2 + 32) = v6;
  *(a2 + 24) = NDR_record;
}

void sub_100128DF8(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 60)
  {
    if (*(a1 + 39) == 1 && *(a1 + 40) == *(a1 + 52))
    {
      v3 = *(a1 + 12);
      v4 = *(a1 + 28);
      v5 = *(a1 + 56);
      sub_10017FF5C();
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

uint64_t sub_100128E90(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 && *(result + 24) == 1 && *(result + 4) == 64)
  {
    if (*(result + 39) == 1)
    {
      v3 = *(result + 40);
      if (v3 == *(result + 52))
      {
        result = sub_10018009C(*(result + 12), *(result + 28), v3, *(result + 56), *(result + 60));
        *(a2 + 32) = result;
        return result;
      }
    }

    v4 = -300;
  }

  else
  {
    v4 = -304;
  }

  *(a2 + 32) = v4;
  *(a2 + 24) = NDR_record;
  return result;
}

void sub_100128F28(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 1 || *(a1 + 4) != 56)
  {
    v6 = -304;
LABEL_9:
    *(a2 + 32) = v6;
    *(a2 + 24) = NDR_record;
    return;
  }

  if (*(a1 + 39) != 1 || *(a1 + 40) != *(a1 + 52))
  {
    v6 = -300;
    goto LABEL_9;
  }

  v3 = *(a1 + 12);
  v4 = *(a1 + 28);
  sub_1001802D8();
  *(a2 + 32) = v5;
  *(a2 + 24) = NDR_record;
  if (!v5)
  {
    *(a2 + 4) = 40;
  }
}

void sub_100128FDC(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 64)
  {
    if (*(a1 + 39) == 1 && *(a1 + 40) == *(a1 + 60))
    {
      v3 = *(a1 + 12);
      v4 = *(a1 + 52);
      v5 = *(a1 + 56);
      v6 = *(a1 + 28);
      sub_1001804B4();
      *(a2 + 32) = v7;
      return;
    }

    v8 = -300;
  }

  else
  {
    v8 = -304;
  }

  *(a2 + 32) = v8;
  *(a2 + 24) = NDR_record;
}

void sub_100129074(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 64)
  {
    if (*(a1 + 39) == 1 && *(a1 + 40) == *(a1 + 60))
    {
      v3 = *(a1 + 12);
      v4 = *(a1 + 52);
      v5 = *(a1 + 56);
      v6 = *(a1 + 28);
      sub_1001803B4();
      *(a2 + 32) = v7;
      return;
    }

    v8 = -300;
  }

  else
  {
    v8 = -304;
  }

  *(a2 + 32) = v8;
  *(a2 + 24) = NDR_record;
}

_DWORD *sub_10012910C(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = result[3];
    v4 = result[8];
    result = sub_1001805B4();
    *(a2 + 32) = result;
  }

  return result;
}

void sub_100129170(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = a1[3];
    v4 = a1[8];
    sub_10017DA24();
    *(a2 + 32) = v5;
  }
}

_DWORD *sub_1001291D4(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_10017DB28(result[3], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

void sub_100129250(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = a1[3];
    v4 = a1[8];
    sub_10017DBD4();
    *(a2 + 32) = v5;
  }
}

_DWORD *sub_1001292B4(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_10017DCD8(result[3], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

void sub_100129330(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = a1[3];
    v4 = a1[8];
    sub_10017E064();
    *(a2 + 32) = v5;
  }
}

_DWORD *sub_100129394(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = result[3];
    result = sub_10017E15C();
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

uint64_t sub_100129410(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 2 && *(a1 + 4) == 96)
  {
    if (*(a1 + 39) == 1 && *(a1 + 55) == 1 && *(a1 + 40) == *(a1 + 84) && *(a1 + 56) == *(a1 + 88))
    {
      v3 = *(a1 + 44);
      v5 = *(a1 + 56);
      v6 = *(a1 + 92);
      result = sub_10017E254(*(a1 + 12), *(a1 + 68), *(a1 + 72), *(a1 + 76), *(a1 + 80), *(a1 + 28));
    }

    else
    {
      result = 4294966996;
    }
  }

  else
  {
    result = 4294966992;
  }

  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_1001294D8(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_10017E41C(result[3], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

void sub_100129554(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = a1[3];
    v4 = a1[8];
    sub_10017E4C8();
    *(a2 + 32) = v5;
  }
}

void sub_1001295B8(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = a1[3];
    v4 = a1[8];
    sub_10017E75C();
    *(a2 + 32) = v5;
    *(a2 + 24) = NDR_record;
    if (!v5)
    {
      *(a2 + 4) = 40;
    }
  }
}

_DWORD *sub_10012963C(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_10017E878(result[3], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

_DWORD *sub_1001296B8(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_100180BD8(result[3], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

_DWORD *sub_100129734(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = result[3];
    v4 = result[8];
    result = sub_10017F018();
    *(a2 + 32) = result;
  }

  return result;
}

_DWORD *sub_100129798(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_10017F0C4(result[3], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

void sub_100129814(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = a1[3];
    v4 = a1[8];
    sub_1001806F0();
    *(a2 + 32) = v5;
  }
}

_DWORD *sub_100129878(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = result[3];
    result = sub_1001807D8();
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

_DWORD *sub_1001298F4(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = result[3];
    result = sub_10017DD84();
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

uint64_t sub_100129970(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 40)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = *(result + 12);
    v4 = *(result + 32);
    result = sub_10017DE7C();
    *(a2 + 32) = result;
  }

  return result;
}

_DWORD *sub_1001299D4(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = result[3];
    result = sub_10017DF78();
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 44;
    }
  }

  return result;
}

void sub_100129A50(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = a1[3];
    v4 = a1[8];
    sub_100180888();
    *(a2 + 32) = v5;
  }
}

_DWORD *sub_100129AB4(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = result[3];
    result = sub_100180974();
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

uint64_t sub_100129B30(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 40)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = *(result + 12);
    v4 = *(result + 32);
    result = sub_100180A24();
    *(a2 + 32) = result;
  }

  return result;
}

_DWORD *sub_100129B94(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_10017EA00(result[3], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

void sub_100129C10(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  v3 = a1[3];
  sub_10017EAAC();
  if (v4)
  {
    *(a2 + 32) = v4;
LABEL_6:
    *(a2 + 24) = NDR_record;
    return;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
}

uint64_t sub_100129CB8(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    result = 4294966992;
  }

  else
  {
    v3 = a1[3];
    result = sub_10017EBA4();
  }

  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_100129D10(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_10017EC88(result[3], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

_DWORD *sub_100129D8C(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  result = sub_10017ED34(result[3], (a2 + 28), (a2 + 52));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
  return result;
}

void sub_100129E34(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 1 || *(a1 + 4) != 56)
  {
    v6 = -304;
LABEL_9:
    *(a2 + 32) = v6;
    *(a2 + 24) = NDR_record;
    return;
  }

  if (*(a1 + 39) != 1 || *(a1 + 40) != *(a1 + 52))
  {
    v6 = -300;
    goto LABEL_9;
  }

  v3 = *(a1 + 12);
  v4 = *(a1 + 28);
  sub_10017EE24();
  *(a2 + 32) = v5;
  *(a2 + 24) = NDR_record;
  if (!v5)
  {
    *(a2 + 4) = 40;
  }
}

_DWORD *sub_100129EE8(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  result = sub_10017EF38(result[3], (a2 + 28), (a2 + 52));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
  return result;
}

uint64_t sub_100129F90(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 && *(result + 24) == 3 && *(result + 4) == 96)
  {
    if (*(result + 39) == 1 && *(result + 55) == 1 && *(result + 71) == 1 && *(result + 40) == *(result + 84) && *(result + 56) == *(result + 88) && *(result + 72) == *(result + 92))
    {
      v3 = *(result + 44);
      v4 = *(result + 60);
      result = sub_1001810E0(*(result + 12), *(result + 28));
      *(a2 + 32) = result;
      return result;
    }

    v5 = -300;
  }

  else
  {
    v5 = -304;
  }

  *(a2 + 32) = v5;
  *(a2 + 24) = NDR_record;
  return result;
}

void sub_10012A064(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 1 || *(a1 + 4) != 60)
  {
    v7 = -304;
LABEL_9:
    *(a2 + 32) = v7;
    *(a2 + 24) = NDR_record;
    return;
  }

  if (*(a1 + 39) != 1 || *(a1 + 40) != *(a1 + 52))
  {
    v7 = -300;
    goto LABEL_9;
  }

  v3 = *(a1 + 12);
  v4 = *(a1 + 28);
  v5 = *(a1 + 56);
  sub_10018183C();
  *(a2 + 32) = v6;
  *(a2 + 24) = NDR_record;
  if (!v6)
  {
    *(a2 + 4) = 40;
  }
}

void sub_10012A11C(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 56)
  {
    if (*(a1 + 39) == 1 && *(a1 + 40) == *(a1 + 52))
    {
      v3 = *(a1 + 12);
      v4 = *(a1 + 28);
      sub_100181278();
      *(a2 + 32) = v5;
      return;
    }

    v6 = -300;
  }

  else
  {
    v6 = -304;
  }

  *(a2 + 32) = v6;
  *(a2 + 24) = NDR_record;
}

void sub_10012A1B0(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 60)
  {
    if (*(a1 + 39) == 1 && *(a1 + 40) == *(a1 + 52))
    {
      v3 = *(a1 + 12);
      v4 = *(a1 + 28);
      v5 = *(a1 + 56);
      sub_100181398();
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

uint64_t sub_10012A31C(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 2 || *(result + 4) != 80)
  {
    v5 = -304;
LABEL_11:
    *(a2 + 32) = v5;
    *(a2 + 24) = NDR_record;
    return result;
  }

  if (*(result + 39) != 1 || *(result + 55) != 1 || (v3 = *(result + 40), v3 != *(result + 68)) || (v4 = *(result + 56), v4 != *(result + 76)))
  {
    v5 = -300;
    goto LABEL_11;
  }

  result = sub_1000A85C0(*(result + 12), *(result + 28), v3, *(result + 72), *(result + 44), v4, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t sub_10012A3F4(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 2 || *(result + 4) != 76)
  {
    v5 = -304;
LABEL_11:
    *(a2 + 32) = v5;
    *(a2 + 24) = NDR_record;
    return result;
  }

  if (*(result + 39) != 1 || *(result + 55) != 1 || (v3 = *(result + 40), v3 != *(result + 68)) || (v4 = *(result + 56), v4 != *(result + 72)))
  {
    v5 = -300;
    goto LABEL_11;
  }

  result = sub_1000A8D9C(*(result + 12), *(result + 28), v3, *(result + 44), v4, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t sub_10012A4C8(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 60)
  {
    v3 = -304;
LABEL_9:
    *(a2 + 32) = v3;
    goto LABEL_10;
  }

  if (*(result + 39) != 1 || *(result + 40) != *(result + 52))
  {
    v3 = -300;
    goto LABEL_9;
  }

  *(a2 + 36) = 16777473;
  result = sub_1000A930C(*(result + 12), *(result + 28), *(result + 40), *(result + 56), (a2 + 28), (a2 + 52), (a2 + 56));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_10:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 60;
  *(a2 + 24) = 1;
  return result;
}

uint64_t sub_10012A5B4(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 60)
  {
    v4 = -304;
LABEL_9:
    *(a2 + 32) = v4;
    *(a2 + 24) = NDR_record;
    return result;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 52)))
  {
    v4 = -300;
    goto LABEL_9;
  }

  result = sub_1000A961C(*(result + 12), *(result + 28), v3, *(result + 56), (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

void sub_10012A66C(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 56)
  {
    if (*(a1 + 39) == 1 && *(a1 + 40) == *(a1 + 52))
    {
      v3 = *(a1 + 12);
      v4 = *(a1 + 28);
      sub_100180ACC();
      *(a2 + 32) = v5;
      return;
    }

    v6 = -300;
  }

  else
  {
    v6 = -304;
  }

  *(a2 + 32) = v6;
  *(a2 + 24) = NDR_record;
}

void sub_10012A700(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 56)
  {
    if (*(a1 + 39) == 1 && *(a1 + 40) == *(a1 + 52))
    {
      v3 = *(a1 + 12);
      v4 = *(a1 + 28);
      sub_100180C84();
      *(a2 + 32) = v5;
      return;
    }

    v6 = -300;
  }

  else
  {
    v6 = -304;
  }

  *(a2 + 32) = v6;
  *(a2 + 24) = NDR_record;
}

void sub_10012A794(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = a1[3];
    v4 = a1[8];
    sub_100180D50();
    *(a2 + 32) = v5;
  }
}

void sub_10012A7F8(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 56)
  {
    if (*(a1 + 39) == 1 && *(a1 + 40) == *(a1 + 52))
    {
      v3 = *(a1 + 12);
      v4 = *(a1 + 28);
      sub_100180E54();
      *(a2 + 32) = v5;
      return;
    }

    v6 = -300;
  }

  else
  {
    v6 = -304;
  }

  *(a2 + 32) = v6;
  *(a2 + 24) = NDR_record;
}

uint64_t sub_10012A88C(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 56)
  {
    v3 = -304;
LABEL_9:
    *(a2 + 32) = v3;
    goto LABEL_10;
  }

  if (*(result + 39) != 1 || *(result + 40) != *(result + 52))
  {
    v3 = -300;
    goto LABEL_9;
  }

  *(a2 + 36) = 16777473;
  result = sub_1000A82C4(*(result + 12), *(result + 28), *(result + 40), (a2 + 28), (a2 + 52));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_10:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
  return result;
}

_DWORD *sub_10012A970(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  result = sub_100180F20(result[3], (a2 + 28), (a2 + 52));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
  return result;
}

_DWORD *sub_10012AA18(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  result = sub_100181000(result[3], (a2 + 28), (a2 + 52));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
  return result;
}

void sub_10012AAC0(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 1 || *(a1 + 4) != 56)
  {
    v6 = -304;
LABEL_9:
    *(a2 + 32) = v6;
    *(a2 + 24) = NDR_record;
    return;
  }

  if (*(a1 + 39) != 1 || *(a1 + 40) != *(a1 + 52))
  {
    v6 = -300;
    goto LABEL_9;
  }

  v3 = *(a1 + 12);
  v4 = *(a1 + 28);
  sub_10017E924();
  *(a2 + 32) = v5;
  *(a2 + 24) = NDR_record;
  if (!v5)
  {
    *(a2 + 4) = 40;
  }
}

uint64_t sub_10012AB74(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 3 || *(result + 4) != 96)
  {
    v6 = -304;
LABEL_13:
    *(a2 + 32) = v6;
    *(a2 + 24) = NDR_record;
    return result;
  }

  if (*(result + 39) != 1 || *(result + 55) != 1 || *(result + 71) != 1 || (v3 = *(result + 40), v3 != *(result + 84)) || (v4 = *(result + 56), v4 != *(result + 88)) || (v5 = *(result + 72), v5 != *(result + 92)))
  {
    v6 = -300;
    goto LABEL_13;
  }

  result = sub_1001819AC(*(result + 12), *(result + 28), v3, *(result + 44), v4, *(result + 60), v5, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t sub_10012AC68(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 2 || *(result + 4) != 80)
  {
    v5 = -304;
LABEL_11:
    *(a2 + 32) = v5;
    *(a2 + 24) = NDR_record;
    return result;
  }

  if (*(result + 39) != 1 || *(result + 55) != 1 || *(result + 40) != *(result + 68) || *(result + 56) != *(result + 76))
  {
    v5 = -300;
    goto LABEL_11;
  }

  v3 = *(result + 72);
  v4 = *(result + 44);
  result = sub_100181CDC(*(result + 12), *(result + 28));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

void sub_10012AE18(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 2 || *(a1 + 4) != 80)
  {
    v8 = -304;
LABEL_11:
    *(a2 + 32) = v8;
    *(a2 + 24) = NDR_record;
    return;
  }

  if (*(a1 + 39) != 1 || *(a1 + 55) != 1 || *(a1 + 40) != *(a1 + 68) || *(a1 + 56) != *(a1 + 72))
  {
    v8 = -300;
    goto LABEL_11;
  }

  v3 = *(a1 + 12);
  v4 = *(a1 + 28);
  v5 = *(a1 + 44);
  v6 = *(a1 + 76);
  sub_100182094();
  *(a2 + 32) = v7;
  *(a2 + 24) = NDR_record;
  if (!v7)
  {
    *(a2 + 4) = 40;
  }
}

void sub_10012AFFC(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 1 || *(a1 + 4) != 56)
  {
    v7 = -304;
LABEL_9:
    *(a2 + 32) = v7;
    goto LABEL_10;
  }

  if (*(a1 + 39) != 1 || *(a1 + 40) != *(a1 + 52))
  {
    v7 = -300;
    goto LABEL_9;
  }

  *(a2 + 36) = 16777473;
  v3 = *(a1 + 12);
  v4 = *(a1 + 28);
  v5 = *(a1 + 40);
  sub_100182654();
  if (v6)
  {
    *(a2 + 32) = v6;
LABEL_10:
    *(a2 + 24) = NDR_record;
    return;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
}

void sub_10012B0E0(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 2 || *(a1 + 4) != 76)
  {
    v7 = -304;
LABEL_11:
    *(a2 + 32) = v7;
    *(a2 + 24) = NDR_record;
    return;
  }

  if (*(a1 + 39) != 1 || *(a1 + 55) != 1 || *(a1 + 40) != *(a1 + 68) || *(a1 + 56) != *(a1 + 72))
  {
    v7 = -300;
    goto LABEL_11;
  }

  v3 = *(a1 + 12);
  v4 = *(a1 + 28);
  v5 = *(a1 + 44);
  sub_100182744();
  *(a2 + 32) = v6;
  *(a2 + 24) = NDR_record;
  if (!v6)
  {
    *(a2 + 4) = 40;
  }
}

uint64_t sub_10012B1B4(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 60)
  {
    v3 = -304;
LABEL_9:
    *(a2 + 32) = v3;
    goto LABEL_10;
  }

  if (*(result + 39) != 1 || *(result + 40) != *(result + 52))
  {
    v3 = -300;
    goto LABEL_9;
  }

  *(a2 + 36) = 16777473;
  result = sub_1000A91AC(*(result + 12), *(result + 28), *(result + 40), *(result + 56), (a2 + 28), (a2 + 52), (a2 + 56));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_10:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 60;
  *(a2 + 24) = 1;
  return result;
}

void sub_10012B2A0(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 56)
  {
    if (*(a1 + 39) == 1 && *(a1 + 40) == *(a1 + 52))
    {
      v3 = *(a1 + 12);
      v4 = *(a1 + 28);
      sub_100182894();
      *(a2 + 32) = v5;
      return;
    }

    v6 = -300;
  }

  else
  {
    v6 = -304;
  }

  *(a2 + 32) = v6;
  *(a2 + 24) = NDR_record;
}

void sub_10012B334(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 60)
  {
    if (*(a1 + 39) == 1 && *(a1 + 40) == *(a1 + 52))
    {
      v3 = *(a1 + 12);
      v4 = *(a1 + 28);
      v5 = *(a1 + 56);
      sub_100182960();
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

void sub_10012B3CC(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 60)
  {
    if (*(a1 + 39) == 1 && *(a1 + 40) == *(a1 + 52))
    {
      v3 = *(a1 + 12);
      v4 = *(a1 + 28);
      v5 = *(a1 + 56);
      sub_100182AA0();
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

void sub_10012B464(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  v3 = a1[3];
  sub_100182B6C();
  if (v4)
  {
    *(a2 + 32) = v4;
LABEL_6:
    *(a2 + 24) = NDR_record;
    return;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
}

_DWORD *sub_10012B50C(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_100182C3C(result[3], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

uint64_t sub_10012B588(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 && *(result + 24) == 1 && *(result + 4) == 60)
  {
    if (*(result + 39) == 1)
    {
      v3 = *(result + 40);
      if (v3 == *(result + 56))
      {
        result = sub_1000A9930(*(result + 12), *(result + 52), *(result + 28), v3);
        *(a2 + 32) = result;
        return result;
      }
    }

    v4 = -300;
  }

  else
  {
    v4 = -304;
  }

  *(a2 + 32) = v4;
  *(a2 + 24) = NDR_record;
  return result;
}

_DWORD *sub_10012B620(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = result[3];
    v4 = result[8];
    result = sub_100182300();
    *(a2 + 32) = result;
  }

  return result;
}

_DWORD *sub_10012B684(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = result[3];
    result = sub_1001823AC();
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

void sub_10012B700(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 2 || *(a1 + 4) != 76)
  {
    v9 = -304;
LABEL_11:
    *(a2 + 32) = v9;
    goto LABEL_12;
  }

  if (*(a1 + 39) != 1 || *(a1 + 55) != 1 || *(a1 + 40) != *(a1 + 68) || *(a1 + 56) != *(a1 + 72))
  {
    v9 = -300;
    goto LABEL_11;
  }

  *(a2 + 36) = 16777473;
  v3 = *(a1 + 12);
  v4 = *(a1 + 28);
  v5 = *(a1 + 40);
  v6 = *(a1 + 44);
  v7 = *(a1 + 56);
  sub_100182CE8();
  if (v8)
  {
    *(a2 + 32) = v8;
LABEL_12:
    *(a2 + 24) = NDR_record;
    return;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 60;
  *(a2 + 24) = 1;
}

void sub_10012B80C(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  v3 = a1[3];
  sub_100182EE8();
  if (v4)
  {
    *(a2 + 32) = v4;
LABEL_6:
    *(a2 + 24) = NDR_record;
    return;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
}

void sub_10012B8B4(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 1 || *(a1 + 4) != 56)
  {
    v7 = -304;
LABEL_9:
    *(a2 + 32) = v7;
    goto LABEL_10;
  }

  if (*(a1 + 39) != 1 || *(a1 + 40) != *(a1 + 52))
  {
    v7 = -300;
    goto LABEL_9;
  }

  *(a2 + 36) = 16777473;
  v3 = *(a1 + 12);
  v4 = *(a1 + 28);
  v5 = *(a1 + 40);
  sub_100182FE8();
  if (v6)
  {
    *(a2 + 32) = v6;
LABEL_10:
    *(a2 + 24) = NDR_record;
    return;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
}

uint64_t sub_10012B998(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 && *(result + 24) == 1 && *(result + 4) == 72)
  {
    if (*(result + 39) == 1 && *(result + 40) == *(result + 52))
    {
      v3 = *(result + 12);
      v4 = *(result + 28);
      result = sub_100183124(*(result + 56), *(result + 64));
      *(a2 + 32) = result;
      return result;
    }

    v5 = -300;
  }

  else
  {
    v5 = -304;
  }

  *(a2 + 32) = v5;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_10012BA30(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 52)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  result = sub_10018330C(*(result + 32), *(result + 40), *(result + 12), *(result + 48), (a2 + 28), (a2 + 52));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
  return result;
}

void sub_10012BAE4(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 1 || *(a1 + 4) != 56)
  {
    v7 = -304;
LABEL_9:
    *(a2 + 32) = v7;
    goto LABEL_10;
  }

  if (*(a1 + 39) != 1 || *(a1 + 40) != *(a1 + 52))
  {
    v7 = -300;
    goto LABEL_9;
  }

  *(a2 + 36) = 16777473;
  v3 = *(a1 + 12);
  v4 = *(a1 + 28);
  v5 = *(a1 + 40);
  sub_100183534();
  if (v6)
  {
    *(a2 + 32) = v6;
LABEL_10:
    *(a2 + 24) = NDR_record;
    return;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
}

uint64_t sub_10012BBC8(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 2 || *(result + 4) != 76)
  {
    v5 = -304;
LABEL_11:
    *(a2 + 32) = v5;
    *(a2 + 24) = NDR_record;
    return result;
  }

  if (*(result + 39) != 1 || *(result + 55) != 1 || (v3 = *(result + 40), v3 != *(result + 68)) || (v4 = *(result + 56), v4 != *(result + 72)))
  {
    v5 = -300;
    goto LABEL_11;
  }

  result = sub_100183670(*(result + 12), *(result + 28), v3, *(result + 44), v4, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

_DWORD *sub_10012BC9C(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  result = sub_1001838B0(result[3], (a2 + 28), (a2 + 52));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
  return result;
}

void sub_10012BD44(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  v3 = a1[3];
  sub_100183968();
  if (v4)
  {
    *(a2 + 32) = v4;
LABEL_6:
    *(a2 + 24) = NDR_record;
    return;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
}

void sub_10012BDEC(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = a1[3];
    v4 = a1[8];
    sub_100183A38();
    *(a2 + 32) = v5;
  }
}

_DWORD *sub_10012BE50(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = result[3];
    result = sub_100183B34();
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

_DWORD *sub_10012BECC(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = result[3];
    result = sub_100183C28();
    *(a2 + 32) = result;
  }

  return result;
}

_DWORD *sub_10012BF28(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = result[3];
    result = sub_100183D18();
    *(a2 + 32) = result;
  }

  return result;
}

_DWORD *sub_10012BF84(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = result[3];
    result = sub_100183E08();
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t sub_10012BFE0(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 40)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = *(result + 12);
    v4 = *(result + 32);
    result = sub_100183EF8();
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t sub_10012C044(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 44)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = *(result + 32);
    result = sub_100183FF4(*(result + 12), *(result + 40));
    *(a2 + 32) = result;
  }

  return result;
}

_DWORD *sub_10012C0AC(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = result[3];
    result = sub_100184100();
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t sub_10012C108(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 2 || *(result + 4) != 76)
  {
    v3 = -304;
LABEL_11:
    *(a2 + 32) = v3;
    goto LABEL_12;
  }

  if (*(result + 39) != 1 || *(result + 55) != 1 || *(result + 40) != *(result + 68) || *(result + 56) != *(result + 72))
  {
    v3 = -300;
    goto LABEL_11;
  }

  *(a2 + 36) = 16777473;
  result = sub_1001841F0(*(result + 12), *(result + 28), *(result + 40), *(result + 44), *(result + 56), a2 + 28, a2 + 52);
  if (result)
  {
    *(a2 + 32) = result;
LABEL_12:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
  return result;
}

void sub_10012C210(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 2 && *(a1 + 4) == 80)
  {
    if (*(a1 + 39) == 1 && *(a1 + 55) == 1 && *(a1 + 40) == *(a1 + 68) && *(a1 + 56) == *(a1 + 76))
    {
      v3 = *(a1 + 12);
      v4 = *(a1 + 28);
      v5 = *(a1 + 72);
      v6 = *(a1 + 44);
      sub_1001844D4();
      *(a2 + 32) = v7;
      return;
    }

    v8 = -300;
  }

  else
  {
    v8 = -304;
  }

  *(a2 + 32) = v8;
  *(a2 + 24) = NDR_record;
}

void sub_10012C2C8(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 1 || *(a1 + 4) != 56)
  {
    v6 = -304;
LABEL_9:
    *(a2 + 32) = v6;
    *(a2 + 24) = NDR_record;
    return;
  }

  if (*(a1 + 39) != 1 || *(a1 + 40) != *(a1 + 52))
  {
    v6 = -300;
    goto LABEL_9;
  }

  v3 = *(a1 + 12);
  v4 = *(a1 + 28);
  sub_1001845F0();
  *(a2 + 32) = v5;
  *(a2 + 24) = NDR_record;
  if (!v5)
  {
    *(a2 + 4) = 40;
  }
}

_DWORD *sub_10012C37C(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = result[3];
    result = sub_1001847E8();
    *(a2 + 32) = result;
  }

  return result;
}

_DWORD *sub_10012C3D8(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  result = sub_1001848D8(result[3], (a2 + 28), (a2 + 52));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
  return result;
}

_DWORD *sub_10012C480(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_1001849B8(result[3], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

_DWORD *sub_10012C4FC(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_100184A7C(result[3], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

_DWORD *sub_10012C578(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_100184C04(result[3], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

_DWORD *sub_10012C5F4(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_100184CC8(result[3], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

void sub_10012C670(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = a1[3];
    v4 = a1[8];
    sub_100184D8C();
    *(a2 + 32) = v5;
  }
}

_DWORD *sub_10012C6D4(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = result[3];
    result = sub_100184E78();
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

void sub_10012C750(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = a1[3];
    v4 = a1[8];
    sub_100184F28();
    *(a2 + 32) = v5;
  }
}

_DWORD *sub_10012C7B4(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = result[3];
    result = sub_100185010();
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

void sub_10012C830(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = a1[3];
    v4 = a1[8];
    sub_1001850C0();
    *(a2 + 32) = v5;
  }
}

uint64_t sub_10012C894(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 40)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = *(result + 12);
    v4 = *(result + 32);
    result = sub_1001851A8();
    *(a2 + 32) = result;
  }

  return result;
}

void sub_10012C8F8(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 1 || *(a1 + 4) != 60)
  {
    v7 = -304;
LABEL_9:
    *(a2 + 32) = v7;
    *(a2 + 24) = NDR_record;
    return;
  }

  if (*(a1 + 39) != 1 || *(a1 + 40) != *(a1 + 52))
  {
    v7 = -300;
    goto LABEL_9;
  }

  v3 = *(a1 + 12);
  v4 = *(a1 + 28);
  v5 = *(a1 + 56);
  sub_1001852A4();
  *(a2 + 32) = v6;
  *(a2 + 24) = NDR_record;
  if (!v6)
  {
    *(a2 + 4) = 40;
  }
}

void sub_10012C9B0(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 1 || *(a1 + 4) != 68)
  {
    v8 = -304;
LABEL_9:
    *(a2 + 32) = v8;
    *(a2 + 24) = NDR_record;
    return;
  }

  if (*(a1 + 39) != 1 || *(a1 + 40) != *(a1 + 52))
  {
    v8 = -300;
    goto LABEL_9;
  }

  v3 = *(a1 + 12);
  v4 = *(a1 + 28);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  sub_1001853A0();
  *(a2 + 32) = v7;
  *(a2 + 24) = NDR_record;
  if (!v7)
  {
    *(a2 + 4) = 40;
  }
}

_DWORD *sub_10012CA6C(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_100185508(result[3], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

_DWORD *sub_10012CAE8(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_1001855B8(result[3], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

uint64_t sub_10012CB64(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 3 || *(result + 4) != 96)
  {
    v5 = -304;
LABEL_13:
    *(a2 + 32) = v5;
    *(a2 + 24) = NDR_record;
    return result;
  }

  if (*(result + 39) != 1 || *(result + 55) != 1 || *(result + 71) != 1 || *(result + 40) != *(result + 84) || *(result + 56) != *(result + 88) || *(result + 72) != *(result + 92))
  {
    v5 = -300;
    goto LABEL_13;
  }

  v3 = *(result + 44);
  v4 = *(result + 60);
  result = sub_100185668(*(result + 12), *(result + 28));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

_DWORD *sub_10012CC58(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  result = sub_100185840(result[3], (a2 + 28), (a2 + 52));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
  return result;
}

_DWORD *sub_10012CD00(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_1001858FC(result[3], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

_DWORD *sub_10012CD7C(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_100184B40(result[3], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

void sub_10012CDF8(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = a1[3];
    v4 = a1[8];
    sub_1001859A8();
    *(a2 + 32) = v5;
  }
}

_DWORD *sub_10012CE5C(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_100185A94(result[3], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

void sub_10012CED8(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 1 || *(a1 + 4) != 56)
  {
    v7 = -304;
LABEL_9:
    *(a2 + 32) = v7;
    goto LABEL_10;
  }

  if (*(a1 + 39) != 1 || *(a1 + 40) != *(a1 + 52))
  {
    v7 = -300;
    goto LABEL_9;
  }

  *(a2 + 36) = 16777473;
  v3 = *(a1 + 12);
  v4 = *(a1 + 28);
  v5 = *(a1 + 40);
  sub_100185B40();
  if (v6)
  {
    *(a2 + 32) = v6;
LABEL_10:
    *(a2 + 24) = NDR_record;
    return;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
}

void sub_10012CFBC(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 56)
  {
    if (*(a1 + 39) == 1 && *(a1 + 40) == *(a1 + 52))
    {
      v3 = *(a1 + 12);
      v4 = *(a1 + 28);
      sub_100185C44();
      *(a2 + 32) = v5;
      return;
    }

    v6 = -300;
  }

  else
  {
    v6 = -304;
  }

  *(a2 + 32) = v6;
  *(a2 + 24) = NDR_record;
}

void sub_10012D050(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 56)
  {
    if (*(a1 + 39) == 1 && *(a1 + 40) == *(a1 + 52))
    {
      v3 = *(a1 + 12);
      v4 = *(a1 + 28);
      sub_100185D20();
      *(a2 + 32) = v5;
      return;
    }

    v6 = -300;
  }

  else
  {
    v6 = -304;
  }

  *(a2 + 32) = v6;
  *(a2 + 24) = NDR_record;
}

void sub_10012D0E4(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 56)
  {
    if (*(a1 + 39) == 1 && *(a1 + 40) == *(a1 + 52))
    {
      v3 = *(a1 + 12);
      v4 = *(a1 + 28);
      sub_100185DF0();
      *(a2 + 32) = v5;
      return;
    }

    v6 = -300;
  }

  else
  {
    v6 = -304;
  }

  *(a2 + 32) = v6;
  *(a2 + 24) = NDR_record;
}

void sub_10012D178(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 2 || *(a1 + 4) != 76)
  {
    v9 = -304;
LABEL_11:
    *(a2 + 32) = v9;
    goto LABEL_12;
  }

  if (*(a1 + 39) != 1 || *(a1 + 55) != 1 || *(a1 + 40) != *(a1 + 68) || *(a1 + 56) != *(a1 + 72))
  {
    v9 = -300;
    goto LABEL_11;
  }

  *(a2 + 36) = 16777473;
  v3 = *(a1 + 12);
  v4 = *(a1 + 28);
  v5 = *(a1 + 40);
  v6 = *(a1 + 44);
  v7 = *(a1 + 56);
  sub_10018600C();
  if (v8)
  {
    *(a2 + 32) = v8;
LABEL_12:
    *(a2 + 24) = NDR_record;
    return;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
}

void sub_10012D280(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 2 || *(a1 + 4) != 80)
  {
    v8 = -304;
LABEL_11:
    *(a2 + 32) = v8;
    *(a2 + 24) = NDR_record;
    return;
  }

  if (*(a1 + 39) != 1 || *(a1 + 55) != 1 || *(a1 + 40) != *(a1 + 68) || *(a1 + 56) != *(a1 + 76))
  {
    v8 = -300;
    goto LABEL_11;
  }

  v3 = *(a1 + 12);
  v4 = *(a1 + 28);
  v5 = *(a1 + 72);
  v6 = *(a1 + 44);
  sub_100185EC0();
  *(a2 + 32) = v7;
  *(a2 + 24) = NDR_record;
  if (!v7)
  {
    *(a2 + 4) = 40;
  }
}

void sub_10012D358(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 56)
  {
    if (*(a1 + 39) == 1 && *(a1 + 40) == *(a1 + 52))
    {
      v3 = *(a1 + 12);
      v4 = *(a1 + 28);
      sub_100186524();
      *(a2 + 32) = v5;
      return;
    }

    v6 = -300;
  }

  else
  {
    v6 = -304;
  }

  *(a2 + 32) = v6;
  *(a2 + 24) = NDR_record;
}

void sub_10012D3EC(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 2 && *(a1 + 4) == 76)
  {
    if (*(a1 + 39) == 1 && *(a1 + 55) == 1 && *(a1 + 40) == *(a1 + 68) && *(a1 + 56) == *(a1 + 72))
    {
      v3 = *(a1 + 12);
      v4 = *(a1 + 28);
      v5 = *(a1 + 44);
      sub_100186378();
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

_DWORD *sub_10012D4A0(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  result = sub_10017E5C8(result[3], (a2 + 28), (a2 + 52));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
  return result;
}

void sub_10012D548(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 1 || *(a1 + 4) != 56)
  {
    v6 = -304;
LABEL_9:
    *(a2 + 32) = v6;
    *(a2 + 24) = NDR_record;
    return;
  }

  if (*(a1 + 39) != 1 || *(a1 + 40) != *(a1 + 52))
  {
    v6 = -300;
    goto LABEL_9;
  }

  v3 = *(a1 + 12);
  v4 = *(a1 + 28);
  sub_10017E680();
  *(a2 + 32) = v5;
  *(a2 + 24) = NDR_record;
  if (!v5)
  {
    *(a2 + 4) = 40;
  }
}

void sub_10012D5FC(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 56)
  {
    if (*(a1 + 39) == 1 && *(a1 + 40) == *(a1 + 52))
    {
      v3 = *(a1 + 12);
      v4 = *(a1 + 28);
      sub_1001865F0();
      *(a2 + 32) = v5;
      return;
    }

    v6 = -300;
  }

  else
  {
    v6 = -304;
  }

  *(a2 + 32) = v6;
  *(a2 + 24) = NDR_record;
}

void sub_10012D690(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 1 || *(a1 + 4) != 56)
  {
    v6 = -304;
LABEL_9:
    *(a2 + 32) = v6;
    *(a2 + 24) = NDR_record;
    return;
  }

  if (*(a1 + 39) != 1 || *(a1 + 40) != *(a1 + 52))
  {
    v6 = -300;
    goto LABEL_9;
  }

  v3 = *(a1 + 12);
  v4 = *(a1 + 28);
  sub_100186700();
  *(a2 + 32) = v5;
  *(a2 + 24) = NDR_record;
  if (!v5)
  {
    *(a2 + 4) = 40;
  }
}

void sub_10012D744(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 60)
  {
    if (*(a1 + 39) == 1 && *(a1 + 40) == *(a1 + 56))
    {
      v3 = *(a1 + 12);
      v4 = *(a1 + 52);
      v5 = *(a1 + 28);
      sub_100186834();
    }

    else
    {
      v6 = -300;
    }
  }

  else
  {
    v6 = -304;
  }

  *(a2 + 32) = v6;
  *(a2 + 24) = NDR_record;
}

void sub_10012D7D8(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 56)
  {
    if (*(a1 + 39) == 1 && *(a1 + 40) == *(a1 + 52))
    {
      v3 = *(a1 + 12);
      v4 = *(a1 + 28);
      sub_100186950();
      *(a2 + 32) = v5;
      return;
    }

    v6 = -300;
  }

  else
  {
    v6 = -304;
  }

  *(a2 + 32) = v6;
  *(a2 + 24) = NDR_record;
}

_DWORD *sub_10012D86C(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_100186A1C(result[3], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

_DWORD *sub_10012D8E8(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_100186AC8(result[3], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

_DWORD *sub_10012D964(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = result[3];
    result = sub_100186B74();
    *(a2 + 32) = result;
  }

  return result;
}

_DWORD *sub_10012D9C0(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = result[3];
    result = sub_100186C74();
    *(a2 + 32) = result;
  }

  return result;
}

_DWORD *sub_10012DA1C(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = result[3];
    result = sub_100186D28();
    *(a2 + 32) = result;
  }

  return result;
}

void sub_10012DA78(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 1 || *(a1 + 4) != 56)
  {
    v6 = -304;
LABEL_9:
    *(a2 + 32) = v6;
    *(a2 + 24) = NDR_record;
    return;
  }

  if (*(a1 + 39) != 1 || *(a1 + 40) != *(a1 + 52))
  {
    v6 = -300;
    goto LABEL_9;
  }

  v3 = *(a1 + 12);
  v4 = *(a1 + 28);
  sub_100186DF4();
  *(a2 + 32) = v5;
  *(a2 + 24) = NDR_record;
  if (!v5)
  {
    *(a2 + 4) = 40;
  }
}

uint64_t sub_10012DB2C(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 36)
  {
    result = 4294966992;
  }

  else
  {
    v3 = a1[3];
    v4 = a1[8];
    result = sub_100186ED0();
  }

  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

void sub_10012DB8C(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 56)
  {
    if (*(a1 + 39) == 1 && *(a1 + 40) == *(a1 + 52))
    {
      v3 = *(a1 + 12);
      v4 = *(a1 + 28);
      sub_100186FE0();
      *(a2 + 32) = v5;
      return;
    }

    v6 = -300;
  }

  else
  {
    v6 = -304;
  }

  *(a2 + 32) = v6;
  *(a2 + 24) = NDR_record;
}

void sub_10012DC20(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777472;
  v3 = a1[3];
  sub_1001870B0();
  if (v4)
  {
    *(a2 + 32) = v4;
LABEL_6:
    *(a2 + 24) = NDR_record;
    return;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
}

void sub_10012DCC4(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 56)
  {
    if (*(a1 + 39) == 1 && *(a1 + 40) == *(a1 + 52))
    {
      v3 = *(a1 + 12);
      v4 = *(a1 + 28);
      sub_1001871B0();
    }

    else
    {
      v5 = -300;
    }
  }

  else
  {
    v5 = -304;
  }

  *(a2 + 32) = v5;
  *(a2 + 24) = NDR_record;
}

void sub_10012DD54(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = a1[3];
    v4 = a1[8];
    sub_100187270();
    *(a2 + 32) = v5;
  }
}

_DWORD *sub_10012DDB8(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = result[3];
    result = sub_100187378();
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

void sub_10012DE34(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 56)
  {
    if (*(a1 + 39) == 1 && *(a1 + 40) == *(a1 + 52))
    {
      v3 = *(a1 + 12);
      v4 = *(a1 + 28);
      sub_100187428();
      *(a2 + 32) = v5;
      return;
    }

    v6 = -300;
  }

  else
  {
    v6 = -304;
  }

  *(a2 + 32) = v6;
  *(a2 + 24) = NDR_record;
}

_DWORD *sub_10012DEC8(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 36)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = result[3];
    v4 = result[8];
    result = sub_1001874F4();
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t sub_10012DF2C(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 69849) >= 0xFFFFFF61 && (v5 = *(&off_1002635F8 + 5 * (v4 - 69690) + 5)) != 0)
  {
    v5(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = NDR_record;
    *(a2 + 32) = -303;
  }

  return result;
}

uint64_t sub_10012DFC8(int a1, vm_address_t a2, int a3, int a4, int a5, uint64_t a6, int a7, uint64_t a8, int a9, mach_msg_timeout_t a10)
{
  v16 = a2;
  v17 = 27918592;
  v18[0] = a3;
  *&v18[1] = a6;
  v18[3] = 27918592;
  v19[0] = a7;
  *&v19[1] = a8;
  v19[3] = 27918592;
  v20[0] = a9;
  *&v20[1] = NDR_record;
  v20[3] = a3;
  v20[4] = a4;
  v20[5] = a5;
  v20[6] = a7;
  v20[7] = a9;
  *msg = 0xAAAAAAAA80000013;
  *&msg[8] = a1;
  *&msg[12] = xmmword_1001CE8C0;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(msg);
  }

  v13 = mach_msg(msg, 2097169, 0x68u, 0, 0, a10, 0);
  if (v13 == 268435460)
  {
    if (v16 != a2)
    {
      mig_deallocate(v16, v18[0]);
    }

    if (*&v18[1] != a6)
    {
      mig_deallocate(*&v18[1], v19[0]);
    }

    if (*&v19[1] != a8)
    {
      mig_deallocate(*&v19[1], v20[0]);
    }
  }

  return v13;
}

uint64_t sub_10012E0E8(int a1, vm_address_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, int a8, mach_msg_timeout_t timeout)
{
  v15 = a2;
  v16 = 27918592;
  v17[0] = a3;
  *&v17[1] = a4;
  v17[3] = 27918592;
  v18[0] = a5;
  *&v18[1] = a6;
  v18[3] = 27918592;
  v19[0] = a7;
  *&v19[1] = NDR_record;
  v19[3] = a3;
  v19[4] = a5;
  v19[5] = a7;
  v19[6] = a8;
  *msg = 0xAAAAAAAA80000013;
  *&msg[8] = a1;
  *&msg[12] = xmmword_1001CE8E0;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(msg);
  }

  v12 = mach_msg(msg, 2097169, 0x64u, 0, 0, timeout, 0);
  if (v12 == 268435460)
  {
    if (v15 != a2)
    {
      mig_deallocate(v15, v17[0]);
    }

    if (*&v17[1] != a4)
    {
      mig_deallocate(*&v17[1], v18[0]);
    }

    if (*&v18[1] != a6)
    {
      mig_deallocate(*&v18[1], v19[0]);
    }
  }

  return v12;
}

uint64_t sub_10012E204(int a1, vm_address_t a2, int a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, mach_msg_timeout_t timeout)
{
  v15 = a2;
  v16 = 27918592;
  v17[0] = a3;
  *&v17[1] = a5;
  v17[3] = 27918592;
  v18[0] = a6;
  *&v18[1] = a7;
  v18[3] = 27918592;
  v19[0] = a8;
  *&v19[1] = NDR_record;
  v19[3] = a3;
  v19[4] = a4;
  v19[5] = a6;
  v19[6] = a8;
  *msg = 0xAAAAAAAA80000013;
  *&msg[8] = a1;
  *&msg[12] = xmmword_1001CE8F0;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(msg);
  }

  v12 = mach_msg(msg, 2097169, 0x64u, 0, 0, timeout, 0);
  if (v12 == 268435460)
  {
    if (v15 != a2)
    {
      mig_deallocate(v15, v17[0]);
    }

    if (*&v17[1] != a5)
    {
      mig_deallocate(*&v17[1], v18[0]);
    }

    if (*&v18[1] != a7)
    {
      mig_deallocate(*&v18[1], v19[0]);
    }
  }

  return v12;
}

uint64_t sub_10012E320(int a1, vm_address_t a2, int a3, int a4, uint64_t a5, int a6, mach_msg_timeout_t timeout)
{
  v15 = a2;
  v16 = 27918592;
  v17[0] = a3;
  *&v17[1] = a5;
  v17[3] = 27918592;
  v18[0] = a6;
  *&v18[1] = NDR_record;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a6;
  v12 = 0xAAAAAAAA80000013;
  v13 = a1;
  v14 = xmmword_1001CE900;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&v12);
  }

  v10 = mach_msg(&v12, 2097169, 0x50u, 0, 0, timeout, 0);
  if (v10 == 268435460)
  {
    if (v15 != a2)
    {
      mig_deallocate(v15, v17[0]);
    }

    if (*&v17[1] != a5)
    {
      mig_deallocate(*&v17[1], v18[0]);
    }
  }

  return v10;
}

uint64_t sub_10012E41C(mach_port_t a1, int a2, mach_msg_timeout_t timeout)
{
  v6 = NDR_record;
  v7 = a2;
  *&msg.msgh_bits = 0xAAAAAAAA00000013;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 96966;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 2097169, 0x24u, 0, 0, timeout, 0);
}

uint64_t sub_10012E4AC(int a1, vm_address_t a2, int a3, uint64_t a4, int a5, int a6, mach_msg_timeout_t timeout)
{
  v15 = a2;
  v16 = 27918592;
  v17[0] = a3;
  *&v17[1] = a4;
  v17[3] = 27918592;
  v18[0] = a5;
  *&v18[1] = NDR_record;
  v18[3] = a3;
  v18[4] = a5;
  v18[5] = a6;
  v12 = 0xAAAAAAAA80000013;
  v13 = a1;
  v14 = xmmword_1001CE920;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&v12);
  }

  v10 = mach_msg(&v12, 2097169, 0x50u, 0, 0, timeout, 0);
  if (v10 == 268435460)
  {
    if (v15 != a2)
    {
      mig_deallocate(v15, v17[0]);
    }

    if (*&v17[1] != a4)
    {
      mig_deallocate(*&v17[1], v18[0]);
    }
  }

  return v10;
}

uint64_t sub_10012E5A8(int a1, vm_address_t a2, int a3, uint64_t a4, int a5, int a6, mach_msg_timeout_t timeout)
{
  v15 = a2;
  v16 = 27918592;
  v17[0] = a3;
  *&v17[1] = a4;
  v17[3] = 27918592;
  v18[0] = a5;
  *&v18[1] = NDR_record;
  v18[3] = a3;
  v18[4] = a5;
  v18[5] = a6;
  v12 = 0xAAAAAAAA80000013;
  v13 = a1;
  v14 = xmmword_1001CE930;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&v12);
  }

  v10 = mach_msg(&v12, 2097169, 0x50u, 0, 0, timeout, 0);
  if (v10 == 268435460)
  {
    if (v15 != a2)
    {
      mig_deallocate(v15, v17[0]);
    }

    if (*&v17[1] != a4)
    {
      mig_deallocate(*&v17[1], v18[0]);
    }
  }

  return v10;
}

uint64_t sub_10012E6A4(int a1, vm_address_t a2, int a3, int a4, mach_msg_timeout_t timeout)
{
  v12 = a2;
  v13 = 27918592;
  v14[0] = a3;
  *&v14[1] = NDR_record;
  v14[3] = a3;
  v14[4] = a4;
  v9 = 0xAAAAAAAA80000013;
  v10 = a1;
  v11 = xmmword_1001CE940;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&v9);
  }

  v7 = mach_msg(&v9, 2097169, 0x3Cu, 0, 0, timeout, 0);
  if (v7 == 268435460 && v12 != a2)
  {
    mig_deallocate(v12, v14[0]);
  }

  return v7;
}

uint64_t sub_10012E774(int a1, int a2, vm_address_t a3, int a4, mach_msg_timeout_t timeout)
{
  v12 = a3;
  v13 = 27918592;
  v14[0] = a4;
  *&v14[1] = NDR_record;
  v14[3] = a2;
  v14[4] = a4;
  v9 = 0xAAAAAAAA80000013;
  v10 = a1;
  v11 = xmmword_1001CE950;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&v9);
  }

  v7 = mach_msg(&v9, 2097169, 0x3Cu, 0, 0, timeout, 0);
  if (v7 == 268435460 && v12 != a3)
  {
    mig_deallocate(v12, v14[0]);
  }

  return v7;
}

uint64_t sub_10012E844(int a1, vm_address_t a2, int a3, mach_msg_timeout_t timeout)
{
  v10 = 27918592;
  v11[0] = a3;
  v9 = a2;
  *&v11[1] = NDR_record;
  v11[3] = a3;
  *msg = 0xAAAAAAAA80000013;
  *&msg[8] = a1;
  *&msg[12] = xmmword_1001CE960;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(msg);
  }

  v6 = mach_msg(msg, 2097169, 0x38u, 0, 0, timeout, 0);
  if (v6 == 268435460 && v9 != a2)
  {
    mig_deallocate(v9, v11[0]);
  }

  return v6;
}

uint64_t sub_10012E914(mach_port_t a1, int a2, mach_msg_timeout_t timeout)
{
  v6 = NDR_record;
  v7 = a2;
  *&msg.msgh_bits = 0xAAAAAAAA00000013;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 96972;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 2097169, 0x24u, 0, 0, timeout, 0);
}

uint64_t sub_10012E9A4(int a1, vm_address_t a2, int a3, mach_msg_timeout_t timeout)
{
  v10 = 27918592;
  v11[0] = a3;
  v9 = a2;
  *&v11[1] = NDR_record;
  v11[3] = a3;
  *msg = 0xAAAAAAAA80000013;
  *&msg[8] = a1;
  *&msg[12] = xmmword_1001CE970;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(msg);
  }

  v6 = mach_msg(msg, 2097169, 0x38u, 0, 0, timeout, 0);
  if (v6 == 268435460 && v9 != a2)
  {
    mig_deallocate(v9, v11[0]);
  }

  return v6;
}

uint64_t sub_10012EA74(void *a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_3;
  }

  if (xpc_get_type(a1) != &_xpc_type_dictionary)
  {
    goto LABEL_3;
  }

  value = xpc_dictionary_get_value(a1, netrbClientLowLatencyFlowParam);
  if (!value)
  {
    goto LABEL_3;
  }

  v6 = value;
  if (xpc_get_type(value) != &_xpc_type_dictionary)
  {
    goto LABEL_3;
  }

  v31 = 0uLL;
  v30 = 0uLL;
  v7 = xpc_dictionary_get_value(v6, netrbClientIfnetTrafficDescriptorIpVersion);
  if (v7 && (v8 = v7, xpc_get_type(v7) == &_xpc_type_uint64))
  {
    v16 = xpc_uint64_get_value(v8);
    v17 = v16;
    if (v16 != 4 && v16 != 96)
    {
      goto LABEL_3;
    }

    if (a2)
    {
      *(a2 + 8) |= 1u;
      *(a2 + 9) = v16;
    }

    v18 = xpc_dictionary_get_value(v6, netrbClientIfnetTrafficDescriptorLocalIp);
    if (v18 && (v19 = v18, xpc_get_type(v18) == &_xpc_type_string))
    {
      string_ptr = xpc_string_get_string_ptr(v19);
      if (a2)
      {
        *(a2 + 8) |= 4u;
      }
    }

    else
    {
      sub_100136B44();
      string_ptr = 0;
    }

    v21 = xpc_dictionary_get_value(v6, netrbClientIfnetTrafficDescriptorRemoteIp);
    if (v21 && (v22 = v21, xpc_get_type(v21) == &_xpc_type_string))
    {
      v23 = xpc_string_get_string_ptr(v22);
      if (a2)
      {
        *(a2 + 8) |= 8u;
      }
    }

    else
    {
      sub_100136B44();
      v23 = 0;
    }

    if (v17 == 4)
    {
      if (string_ptr && inet_pton(2, string_ptr, &v31 + 12) != 1 || v23 && inet_pton(2, v23, &v30 + 12) != 1)
      {
        goto LABEL_3;
      }

      if (a2)
      {
        *(a2 + 24) = HIDWORD(v31);
        *(a2 + 40) = HIDWORD(v30);
      }
    }

    else
    {
      if (string_ptr && inet_pton(30, string_ptr, &v31) != 1 || v23 && inet_pton(30, v23, &v30) != 1)
      {
        goto LABEL_3;
      }

      if (a2)
      {
        v29 = v30;
        *(a2 + 12) = v31;
        *(a2 + 28) = v29;
      }
    }
  }

  else
  {
    sub_100136B00();
  }

  v9 = xpc_dictionary_get_value(v6, netrbClientIfnetTrafficDescriptorIpProtocol);
  if (v9 && (v10 = v9, xpc_get_type(v9) == &_xpc_type_uint64))
  {
    v24 = xpc_uint64_get_value(v10);
    if (v24 != 17 && v24 != 6)
    {
      goto LABEL_3;
    }

    if (a2)
    {
      *(a2 + 8) |= 2u;
      *(a2 + 10) = v24;
    }
  }

  else
  {
    sub_100136B44();
  }

  v11 = xpc_dictionary_get_value(v6, netrbClientIfnetTrafficDescriptorLocalPort);
  if (v11)
  {
    v12 = v11;
    if (xpc_get_type(v11) != &_xpc_type_uint64)
    {
      goto LABEL_3;
    }

    v13 = xpc_uint64_get_value(v12);
    if (v13 - 0x10000 < 0xFFFFFFFFFFFF0001)
    {
      goto LABEL_3;
    }

    if (a2)
    {
      *(a2 + 8) |= 0x10u;
      *(a2 + 44) = bswap32(v13) >> 16;
    }
  }

  else
  {
    sub_100136B44();
  }

  v14 = xpc_dictionary_get_value(v6, netrbClientIfnetTrafficDescriptorRemotePort);
  if (v14)
  {
    v15 = v14;
    if (xpc_get_type(v14) != &_xpc_type_uint64)
    {
      goto LABEL_3;
    }

    v28 = xpc_uint64_get_value(v15);
    if (v28 - 0x10000 < 0xFFFFFFFFFFFF0001)
    {
      goto LABEL_3;
    }

    if (a2)
    {
      *(a2 + 8) |= 0x20u;
      *(a2 + 46) = bswap32(v28) >> 16;
    }
  }

  else
  {
    sub_100136B00();
  }

  v26 = xpc_dictionary_get_value(v6, netrbClientIfnetTrafficDescriptorConnectionIdleTimeout);
  if (v26)
  {
    v27 = v26;
    if (xpc_get_type(v26) != &_xpc_type_uint64 || xpc_uint64_get_value(v27) >= 0x69781)
    {
LABEL_3:
      sub_100136B00();
      return 0;
    }
  }

  return 1;
}

uint64_t _NETRBNetworkCopy(uint64_t a1, uint64_t a2)
{
  if (qword_100298BC0 != -1)
  {
    sub_1001B0C04();
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 64);
  *(Instance + 48) = *(a2 + 48);
  *(Instance + 64) = v6;
  *(Instance + 16) = v4;
  *(Instance + 32) = v5;
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  *(Instance + 128) = *(a2 + 128);
  *(Instance + 96) = v8;
  *(Instance + 112) = v9;
  *(Instance + 80) = v7;
  *(Instance + 136) = 0;
  *(Instance + 144) = 0;
  v10 = *(a2 + 136);
  if (v10)
  {
    v11 = 0;
    do
    {
      v12 = malloc_type_malloc(0x18uLL, 0x10200400817995AuLL);
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = (Instance + 136);
      }

      v14 = *v10;
      v12[2] = *(v10 + 2);
      *v12 = v14;
      *v12 = *v13;
      *v13 = v12;
      v10 = *v10;
      v11 = v12;
    }

    while (v10);
  }

  v15 = *(a2 + 144);
  if (v15)
  {
    v16 = 0;
    do
    {
      v17 = malloc_type_malloc(0x20uLL, 0x10200401B9196EFuLL);
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = (Instance + 144);
      }

      v19 = v15[1];
      *v17 = *v15;
      v17[1] = v19;
      *v17 = *v18;
      *v18 = v17;
      v15 = *v15;
      v16 = v17;
    }

    while (v15);
  }

  return Instance;
}

void *_NETRBClientCreateInternal(NSObject *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 2000;
  v7 = 0;
  if (!sub_100136A60())
  {
    if (qword_100298B90 != -1)
    {
      sub_1001B0C18();
    }

    Instance = _CFRuntimeCreateInstance();
    v7 = Instance;
    if (Instance)
    {
      bzero((Instance + 16), 0x218uLL);
      if (a1)
      {
        v7[2] = a1;
        dispatch_retain(a1);
        if (a2)
        {
          v7[3] = _Block_copy(a2);
        }
      }

      if (qword_100298BA0 != -1)
      {
        sub_1001B0C40();
      }

      v10 = qword_100298BA8;
      if (!qword_100298BA8)
      {
        goto LABEL_19;
      }

      if (qword_100298BB0 != -1)
      {
        sub_1001B0C68();
      }

      if (qword_100298BB8)
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 0x40000000;
        block[2] = sub_10012F270;
        block[3] = &unk_100264F20;
        block[6] = v7;
        block[7] = qword_100298BB8;
        block[4] = &v17;
        block[5] = &v13;
        block[8] = v10;
        block[9] = a4;
        dispatch_sync(v10, block);
        if (*(v18 + 24) == 1 && (v14[3] | 2) == 0x7D2)
        {
          *(v18 + 24) = 0;
        }
      }

      else
      {
LABEL_19:
        sub_100136B00();
      }

      if ((v18[3] & 1) == 0)
      {
        CFRelease(v7);
        v7 = 0;
      }
    }

    else
    {
      v11 = __error();
      strerror(*v11);
      sub_100136B00();
    }
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  return v7;
}

void sub_10012F270(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = qword_100298B80;
  if (!qword_100298B80)
  {
    v7 = *(a1 + 56);
    v6 = *(a1 + 64);
    qword_100298B80 = CFArrayCreateMutable(kCFAllocatorDefault, 0, 0);
    if (!qword_100298B80)
    {
      v8 = __error();
      strerror(*v8);
      goto LABEL_12;
    }

    if (sub_100136E0C(v7, v6))
    {
      if (sub_100136BCC(v6))
      {
        v3 = qword_100298B80;
        goto LABEL_2;
      }

      sub_100136B00();
      sub_100137064();
    }

    else
    {
      sub_100136B00();
    }

    CFRelease(qword_100298B80);
    qword_100298B80 = 0;
    goto LABEL_16;
  }

LABEL_2:
  CFArrayAppendValue(v3, v2);
  *(*(*(a1 + 32) + 8) + 24) = 1;
  v4 = xpc_dictionary_create(0, 0, 0);
  if (!v4)
  {
    sub_10012F458(*(a1 + 48));
LABEL_12:
    sub_100136B00();
LABEL_16:
    *(*(*(a1 + 32) + 8) + 24) = 0;
    return;
  }

  v5 = v4;
  xpc_dictionary_set_uint64(v4, off_100298248, 0x3E8uLL);
  v9 = *(a1 + 48);
  sub_100136B44();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = sub_10012F4F4;
  v10[3] = &unk_100264EF8;
  v11 = *(a1 + 40);
  v12 = *(a1 + 72);
  *(*(*(a1 + 32) + 8) + 24) = sub_1001370C0(0, v5, v10);
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    sub_10012F458(*(a1 + 48));
  }

  xpc_release(v5);
}

void sub_10012F458(const void *a1)
{
  if (qword_100298B80 && CFArrayGetCount(qword_100298B80) >= 1)
  {
    v2 = 0;
    while (CFArrayGetValueAtIndex(qword_100298B80, v2) != a1)
    {
      if (++v2 >= CFArrayGetCount(qword_100298B80))
      {
        return;
      }
    }

    CFArrayRemoveValueAtIndex(qword_100298B80, v2);
    if (!CFArrayGetCount(qword_100298B80))
    {
      sub_100137064();
      sub_1001372C0();
      CFRelease(qword_100298B80);
      qword_100298B80 = 0;
    }
  }
}

void sub_10012F4F4(uint64_t a1, void *a2)
{
  v7 = *(a1 + 40);
  sub_100136B44();
  if (!a2)
  {
    goto LABEL_6;
  }

  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(a2, off_1002982B8);
  if (*(a1 + 48))
  {
    **(a1 + 48) = xpc_dictionary_get_uint64(a2, off_1002982A8);
  }

  if (*(*(*(a1 + 32) + 8) + 24) != 2001 || (v4 = *(a1 + 40), string = xpc_dictionary_get_string(a2, off_100298250), snprintf((v4 + 32), 0x100uLL, "%s", string), *(*(a1 + 40) + 288) = 1, *(*(*(a1 + 32) + 8) + 24) != 2001))
  {
LABEL_6:
    v6 = *(a1 + 40);

    sub_10012F458(v6);
  }
}