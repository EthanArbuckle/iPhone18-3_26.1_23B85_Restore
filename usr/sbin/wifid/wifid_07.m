void sub_10007D1E4(uint64_t a1, int a2, double a3)
{
  *(a1 + 912) = CFAbsoluteTimeGetCurrent() + a3;
  if (a2)
  {
    *(a1 + 904) = 0;
  }

  v6 = *(a1 + 888);
  v7 = dispatch_time(0, (a3 * 1000000000.0));
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
  if (a3 != 315360000.0)
  {
    v8 = CFDateCreate(kCFAllocatorDefault, *(a1 + 912));
    if (v8)
    {
      v9 = v8;
      v10 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"Disassociation timer scheduled to fire at %@", v9}];
      }

      objc_autoreleasePoolPop(v10);

      CFRelease(v9);
    }
  }
}

void sub_10007D2E8(uint64_t a1)
{
  v2 = *(a1 + 920);
  if (v2 == 3)
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"Disassociation timer already fired, so not resuming"}];
    }

    objc_autoreleasePoolPop(v6);
    sub_10000D4C0(a1, 0);

    sub_100074AB8(a1, "WiFiManagerResumeDisassociationTimer", 13595);
  }

  else
  {
    if (v2 == 1)
    {
      v5 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"Resuming disassociation timer with remaing interval of %f s", *(a1 + 904)}];
      }

      objc_autoreleasePoolPop(v5);
      v4 = *(a1 + 904);
      goto LABEL_12;
    }

    if (!v2 && (!*(a1 + 322) || *(a1 + 756) == 2))
    {
      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"Restart requested when Disassociation Timer is Idle. Starting timer"];
      }

      objc_autoreleasePoolPop(v3);
      v4 = *(a1 + 896);
LABEL_12:
      sub_10007D1E4(a1, 1, v4);
      *(a1 + 920) = 2;
    }
  }
}

void sub_10007D430(uint64_t a1)
{
  v2 = *(a1 + 2112);
  *(a1 + 2112) = v2 + 1;
  v3 = objc_autoreleasePoolPush();
  if (v2)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: refCount %ld", "WiFiManagerStartDiagnosticsTimer", *(a1 + 2112)}];
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"Starting Diagnostics Timer"];
    }

    objc_autoreleasePoolPop(v3);
    v4 = *(a1 + 2096);
    v5 = dispatch_time(0, (*(a1 + 2104) * 1000000000.0));
    dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
    context[0] = a1;
    context[1] = 0xAAAAAAAA00000015;
    context[2] = 0;
    context[3] = 1;
    context[4] = 0;
    CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
  }
}

void sub_10007D558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  CFSetApplyFunction(*(a1 + 144), sub_10007D594, v3);
}

void sub_10007D5C0(uint64_t a1, __CFString *a2)
{
  v3 = sub_10000715C(a1);
  CFStringAppend(a2, v3);

  CFStringAppend(a2, @" ");
}

void sub_10007D60C(uint64_t a1, const void *a2)
{
  if (a1 && a2)
  {
    v3 = sub_100010908(a1);

    sub_100062654(v3, a2, 1);
  }
}

void sub_10007D65C(uint64_t a1, const void *a2)
{
  CFSetAddValue(*(a1 + 168), a2);
  v3 = *(a1 + 24);

  sub_10000D4C0(a1, v3);
}

id sub_10007D6A4(uint64_t a1, uint64_t a2)
{
  *(a1 + 2793) = a2;
  v3 = +[WiFiUsageMonitor sharedInstance];

  return [(WiFiUsageMonitor *)v3 updateLinkRecoveryDisabled:a2];
}

uint64_t sub_10007D6E8(void *a1, const __CFString *a2, const void *a3)
{
  v4 = sub_10007393C(a1, a2, a3, 0);
  v5 = v4;
  if (v4)
  {
    sub_100070E8C(v4, 2, a1);
  }

  return v5;
}

uint64_t sub_10007D728(uint64_t result)
{
  if (result)
  {
    return *(result + 880);
  }

  return result;
}

uint64_t sub_10007D734(uint64_t result)
{
  if (result)
  {
    return *(result + 2793);
  }

  return result;
}

void sub_10007D744(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = *(a1 + 192);
  if (v6 && ((v9 = sub_1000A5010(v6), a2 == -1) || v9 == a2))
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: notificationId %d response %d", "WiFiManagerDispatchNotificationResponse", a2, a3}];
    }

    objc_autoreleasePoolPop(v11);
    v12 = *(a1 + 192);

    sub_1000A5230(v12, a3, a4);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"SpringBoard has responded to older request(%d). Ignoring.", a2}];
    }

    objc_autoreleasePoolPop(v10);
  }
}

void sub_10007D858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v9 = "yes";
    if (!*(a1 + 322))
    {
      v9 = "no";
    }

    [off_100298C40 WFLog:3 message:{"%s: priority %d, duration %u, type %@, external powered ? %s, battery level %u", "WiFiManagerIndicateCarPlayHIDEventReceived", a2, a3, a4, v9, *(a1 + 976)}];
    objc_autoreleasePoolPop(v8);
  }

  else
  {
    objc_autoreleasePoolPop(v8);
    if (!a1)
    {
      return;
    }
  }

  if (_os_feature_enabled_impl())
  {
    v11[0] = a2;
    v11[1] = a3;
    v12 = a4;
    if (*(a1 + 322) || *(a1 + 976) >= 0x15u)
    {
      context[0] = a1;
      context[1] = 0xAAAAAAAA0000007CLL;
      context[2] = v11;
      context[3] = 1;
      context[4] = 0;
      CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
    }
  }
}

void sub_10007D988(const void *a1)
{
  v2 = sub_10000A540(a1, @"WiFiNetworkPasswordString");
  if (v2)
  {
    sub_10009FBF4(a1, v2);

    sub_10000AD34(a1, @"WiFiNetworkPasswordString", 0);
  }
}

NSDictionary *__cdecl sub_10007D9F4(id a1, id a2)
{
  v2 = sub_100017C00(a2);

  return v2;
}

void sub_10007DA20(uint64_t a1)
{
  sub_10004D868(*(*(a1 + 32) + 1384), *(a1 + 40));
  CFRelease(*(a1 + 40));
  v2 = *(*(a1 + 32) + 1384);

  CFRelease(v2);
}

void sub_10007DA6C(uint64_t a1, const void *a2, int a3)
{
  values = 0;
  if (!a2)
  {
    sub_10016D270();
LABEL_18:
    Mutable = 0;
LABEL_21:
    v8 = 0;
    goto LABEL_9;
  }

  values = sub_100017C00(a2);
  if (!values)
  {
    sub_10016D204();
    goto LABEL_18;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    sub_10016D198();
    goto LABEL_21;
  }

  v7 = *off_100260D88[a3];
  if (!v7)
  {
    sub_10016D12C();
    goto LABEL_21;
  }

  v8 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
  if (v8)
  {
    CFDictionarySetValue(Mutable, v7, v8);
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: type %@ network %@", "__WiFiManagerDispatchClientsNetworksChangedEvent", v7, sub_10000A878(a2)}];
    }

    objc_autoreleasePoolPop(v9);
    context = Mutable;
    CFSetApplyFunction(*(a1 + 144), sub_100092BEC, &context);
  }

  else
  {
    sub_10016D0CC();
  }

LABEL_9:
  if (values)
  {
    CFRelease(values);
    values = 0;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t sub_10007DC04(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v258 = 0;
  v259[0] = -1;
  v7 = kCFAllocatorDefault;
  Current = CFAbsoluteTimeGetCurrent();
  v9 = CFDateCreate(kCFAllocatorDefault, Current);
  v10 = _os_feature_enabled_impl();
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    sub_10016D7D4();
    goto LABEL_364;
  }

  if (!a1)
  {
    sub_10016D768();
    goto LABEL_363;
  }

  if (sub_10000A154(a1))
  {
    goto LABEL_363;
  }

  if (!a2)
  {
    sub_10016D6FC();
    goto LABEL_363;
  }

  if (!sub_100020170(a1, 0))
  {
LABEL_363:
    CFRelease(Mutable);
LABEL_364:
    v180 = 0;
    if (!v9)
    {
      goto LABEL_361;
    }

    goto LABEL_360;
  }

  value = sub_10000A878(a2);
  v11 = sub_10009ED84(a2);
  if (a3 == 7 && v11)
  {
    *(a1 + 497) = 1;
    sub_10000AD34(a2, @"NetworkAddedByProfile", kCFBooleanTrue);
    if (sub_10009DBBC(a2))
    {
      sub_100163FB8();
      if (v259[0] != -1)
      {
        v17 = sub_10015CFDC(a1, a2, @"PresentInKnownNetworks", kCFBooleanFalse, v13, v14, v15, v16, key, v214, v215, v216, v217, v218, v219, v220, v222, v224, otherDate, v228, v230, v233, v237, cf, value, v248, v250, v252);
        v18 = objc_autoreleasePoolPush();
        v19 = off_100298C40;
        if (off_100298C40)
        {
          if (v17)
          {
            v20 = "%s: HS20 provisioning already exists. Removing existing provisioning and matched networks. provisioning profile : <%@>";
          }

          else
          {
            v20 = "%s: Unable to remove existing HS20 account <%@>";
          }

          key = "WiFiManagerAddPrivateMacNetwork";
          v214 = sub_10000A878(a2);
          [v19 WFLog:3 message:v20];
        }

        objc_autoreleasePoolPop(v18);
      }

      v21 = sub_100021720(a1);
      if (v21)
      {
        v22 = v21;
        if (sub_1000A2CFC(v21, a2))
        {
          v23 = objc_autoreleasePoolPush();
          v24 = off_100298C40;
          if (off_100298C40)
          {
            key = "WiFiManagerAddPrivateMacNetwork";
            v214 = sub_10000A878(v22);
            [v24 WFLog:3 message:" %s WFMacRandomisation : Disassociating because a HS2.0 profile is being added while being associated to the provisioned network <%@>"];
          }

          objc_autoreleasePoolPop(v23);
          sub_100074AB8(a1, "WiFiManagerAddPrivateMacNetwork", 30511);
        }
      }
    }

    else
    {
      v12 = sub_100021720(a1);
      sub_100163EFC(a1, a2);
      if (v12)
      {
        if (sub_1000A2CFC(v12, a2))
        {
          sub_10016D2DC(a1, a2);
        }

        CFRelease(v12);
      }

      sub_10015724C(a1);
      sub_100161270();
    }
  }

  v25 = objc_autoreleasePoolPush();
  v26 = off_100298C40;
  if (off_100298C40)
  {
    key = "WiFiManagerAddPrivateMacNetwork";
    v214 = sub_10000A878(a2);
    [v26 WFLog:3 message:" %s WFMacRandomisation : Checking if network already present : Retrieving private mac cache version of the network <%@>"];
  }

  objc_autoreleasePoolPop(v25);
  v27 = sub_1001640E4(a1, a2);
  v255 = v6;
  v253 = v9;
  if (!v27)
  {
    goto LABEL_35;
  }

  v28 = sub_10000C580(kCFAllocatorDefault, v27);
  v29 = sub_10000AFE4(a2);
  if (a3 != 7 && v29)
  {
    v36 = v10;
    v37 = v28;
    v38 = objc_autoreleasePoolPush();
    v39 = off_100298C40;
    if (off_100298C40)
    {
      v214 = sub_10000A878(a2);
      v215 = a3;
      key = "WiFiManagerAddPrivateMacNetwork";
      [v39 WFLog:3 message:" %s WFMacRandomisation : HS2.0 network <%@> add reason :<%u>. Merge HS20 records"];
    }

    objc_autoreleasePoolPop(v38);
    v28 = v37;
    sub_10000C5C0(v37, a2);
    v10 = v36;
    v7 = kCFAllocatorDefault;
  }

  if (!v28)
  {
LABEL_35:
    v40 = sub_10000AFE4(a2);
    if (a3 == 7 && v40)
    {
      v41 = sub_10000C580(v7, a2);
      v42 = objc_autoreleasePoolPush();
      v43 = off_100298C40;
      if (off_100298C40)
      {
        key = "WiFiManagerAddPrivateMacNetwork";
        v214 = sub_10000A878(a2);
        [v43 WFLog:3 message:" %s WFMacRandomisation : HS2.0 provisioning being added by profile addition. Storing the entire record: <%@>"];
      }

      objc_autoreleasePoolPop(v42);
    }

    else
    {
      if (value)
      {
        CFDictionarySetValue(Mutable, @"SSID_STR", value);
      }

      v41 = sub_10000AD2C(v7, Mutable);
    }

    if (v41)
    {
      v28 = 0;
      sub_1001641B4(v41, a2, v44, v45, v46, v47, v48, v49, key, v214, v215, SHIDWORD(v215), v216, v217, SHIDWORD(v217), v218, v219, SHIDWORD(v219), v220, v222, v224, otherDate, v228, v230, v233, v237, cf, value, v41, v250, v253);
      goto LABEL_46;
    }

    sub_10016D69C();
    v9 = v253;
    goto LABEL_363;
  }

  v41 = v28;
  sub_1001641B4(v28, a2, v30, v31, v32, v33, v34, v35, key, v214, v215, SHIDWORD(v215), v216, v217, SHIDWORD(v217), v218, v219, SHIDWORD(v219), v220, v222, v224, otherDate, v228, v230, v233, v237, cf, value, 0, v250, v253);
LABEL_46:
  v251 = v28;
  if (a3 > 7)
  {
    if (a3 > 10)
    {
      if (a3 == 11)
      {
        if (!sub_10000A540(v41, @"PRIVATE_MAC_ADDRESS"))
        {
          v91 = CFDictionaryCreateMutable(v7, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (sub_1000A2ED8(a2))
          {
            v92 = 2;
          }

          else
          {
            v92 = 3;
          }

          v93 = sub_100059228(v92);
          CFDictionarySetValue(v91, @"PRIVATE_MAC_ADDRESS_TYPE", v93);
          if (v93)
          {
            CFRelease(v93);
          }

          v95 = *(a1 + 416);
          v94 = *(a1 + 424);
          v96 = *(a1 + 464);
          v97 = sub_10000A878(a2);
          v98 = sub_100177A18(v94, v95, v96, v97);
          if (v98)
          {
            v170 = v98;
            v171 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s WFMacRandomisation : Generated private mac address <%@> for network<%@> with private MAC mode<%d>", "WiFiManagerAddPrivateMacNetwork", v170, sub_10000A878(a2), v92}];
            }

            objc_autoreleasePoolPop(v171);
            CFDictionarySetValue(v91, @"PRIVATE_MAC_ADDRESS_VALUE", v170);
            sub_10000AD34(v41, @"MacGenerationTimeStamp", v254);
            sub_10000AD34(v41, @"NoAssociationWithNewMac", kCFBooleanTrue);
            sub_10000AD34(v41, @"ResetCaptiveProbe", kCFBooleanTrue);
            sub_10000AD34(v41, @"RotationKeyUsed", *(a1 + 416));
            CFRelease(v170);
          }

          else
          {
            v99 = sub_100059228(1);
            CFDictionarySetValue(v91, @"PRIVATE_MAC_ADDRESS_TYPE", v99);
            if (v99)
            {
              CFRelease(v99);
            }

            CFDictionarySetValue(v91, @"PRIVATE_MAC_ADDRESS_VALUE", *(a1 + 464));
          }

          sub_10000AD34(v41, @"PRIVATE_MAC_ADDRESS", v91);
          if (v91)
          {
            CFRelease(v91);
          }
        }

        v169 = kCFBooleanTrue;
        v134 = @"PresentInKnownNetworks";
        v135 = v41;
        goto LABEL_262;
      }

      if (a3 == 12)
      {
        sub_10000AD34(v41, @"PresentInKnownNetworks", kCFBooleanTrue);
        if (sub_10000A540(v41, @"PRIVATE_MAC_ADDRESS"))
        {
          goto LABEL_263;
        }

        v112 = CFDictionaryCreateMutable(v7, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v113 = sub_100059228(1);
        CFDictionarySetValue(v112, @"PRIVATE_MAC_ADDRESS_TYPE", v113);
        CFDictionarySetValue(v112, @"PRIVATE_MAC_ADDRESS_VALUE", *(a1 + 464));
        sub_10000AD34(v41, @"PRIVATE_MAC_ADDRESS", v112);
        v114 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s WFMacRandomisation : Legacy Carplay network<%@> updated to tristate", "WiFiManagerAddPrivateMacNetwork", sub_10000A878(a2)}];
        }

        objc_autoreleasePoolPop(v114);
        if (v112)
        {
          CFRelease(v112);
        }

        if (!v113)
        {
          goto LABEL_263;
        }

        v115 = v113;
LABEL_285:
        CFRelease(v115);
        goto LABEL_263;
      }

      if (a3 != 13 || (LODWORD(valuePtr) = -1431655766, (v60 = sub_10000A540(a2, @"PRIVATE_MAC_ADDRESS")) == 0))
      {
LABEL_75:
        v61 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"WFMacRandomisation :%s:Invalid Add reason", "WiFiManagerAddPrivateMacNetwork"}];
        }

        objc_autoreleasePoolPop(v61);
        goto LABEL_263;
      }

      v128 = v60;
      v129 = CFDictionaryCreateMutable(v7, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v130 = CFDictionaryGetValue(v128, @"PRIVATE_MAC_ADDRESS_TYPE");
      if (CFNumberGetValue(v130, kCFNumberIntType, &valuePtr))
      {
        v131 = valuePtr;
      }

      else
      {
        v131 = 0;
      }

      v132 = CFDictionaryGetValue(v128, @"PRIVATE_MAC_SET_BY_USER");
      v87 = kCFBooleanTrue;
      if (v132 == kCFBooleanTrue)
      {
        sub_10000AD34(v41, @"PrivateMacPrefChanged", kCFBooleanTrue);
      }

      v133 = sub_100059228(v131);
      CFDictionarySetValue(v129, @"PRIVATE_MAC_ADDRESS_TYPE", v133);
      if (v133)
      {
        CFRelease(v133);
      }

      sub_10000AD34(v41, @"PRIVATE_MAC_ADDRESS", v129);
      if (v129)
      {
        CFRelease(v129);
      }

      v134 = @"PresentInKnownNetworks";
      v135 = v41;
    }

    else
    {
      if (a3 != 8)
      {
        if (a3 == 9)
        {
          if (v10)
          {
            v104 = sub_10000A540(v41, @"MacAddressRandomisationTagMigratedNetwork");
            if (!v104 || v104 != kCFBooleanTrue)
            {
              v105 = sub_10000A540(v41, @"PRIVATE_MAC_ADDRESS");
              if (v105)
              {
                MutableCopy = CFDictionaryCreateMutableCopy(v7, 0, v105);
              }

              else
              {
                MutableCopy = CFDictionaryCreateMutable(v7, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
              }

              v192 = MutableCopy;
              v193 = CFDictionaryGetValue(MutableCopy, @"PRIVATE_MAC_ADDRESS_VALID");
              if (v193 && (v194 = v193, v193 == kCFBooleanFalse))
              {
                v195 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s WFMacRandomisation : rotation upgrade for network<%@>, maintain switch OFF with HW MAC ", "WiFiManagerAddPrivateMacNetwork", sub_10000A878(a2)}];
                }

                objc_autoreleasePoolPop(v195);
                CFDictionarySetValue(v192, @"PRIVATE_MAC_ADDRESS_VALID", v194);
                CFDictionarySetValue(v192, @"PRIVATE_MAC_ADDRESS_VALUE", *(a1 + 464));
              }

              else
              {
                if (sub_1000A2ED8(a2))
                {
                  CFDictionarySetValue(v192, @"PRIVATE_MAC_ADDRESS_VALID", kCFBooleanTrue);
                  v196 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s WFMacRandomisation : rotation upgrade for network<%@>, using rotating MAC with switch ON ", "WiFiManagerAddPrivateMacNetwork", sub_10000A878(a2)}];
                  }
                }

                else
                {
                  CFDictionarySetValue(v192, @"PRIVATE_MAC_ADDRESS_VALID", kCFBooleanFalse);
                  v196 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s WFMacRandomisation : rotation upgrade for network<%@>, using static MAC with switch OFF ", "WiFiManagerAddPrivateMacNetwork", sub_10000A878(a2)}];
                  }
                }

                objc_autoreleasePoolPop(v196);
              }

              v134 = @"PRIVATE_MAC_ADDRESS";
              v135 = v41;
              v169 = v192;
              goto LABEL_262;
            }
          }
        }

        else
        {
          v50 = sub_10000A540(v41, @"PRIVATE_MAC_ADDRESS");
          v51 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s WFMacRandomisation : Attempting to tri state upgrade for network<%@>", "WiFiManagerAddPrivateMacNetwork", sub_10000A878(a2)}];
          }

          objc_autoreleasePoolPop(v51);
          if (v50)
          {
            sub_10016D44C();
          }
        }

        goto LABEL_263;
      }

      v86 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation : HS20 network <%@> being updated", "WiFiManagerAddPrivateMacNetwork", sub_10000A878(v41)}];
      }

      objc_autoreleasePoolPop(v86);
      v87 = sub_10000A540(a2, @"PrivateMacDefaultToOFF");
      v88 = sub_10000A540(a2, @"PrivateMacPrefChanged");
      v89 = sub_10000A540(a2, @"PrivateMacControlledDevice");
      if (v88)
      {
        v90 = kCFBooleanTrue;
        if (v88 == kCFBooleanTrue || !v87)
        {
          goto LABEL_263;
        }
      }

      else
      {
        if (!v87)
        {
          goto LABEL_263;
        }

        v90 = kCFBooleanTrue;
      }

      v241 = v89;
      v137 = CFDictionaryCreateMutable(v7, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v87 == v90)
      {
        v235 = sub_100059228(1);
        CFDictionarySetValue(v137, @"PRIVATE_MAC_ADDRESS_VALUE", *(a1 + 464));
        v138 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation : HS20 network <%@> default OFF provisioned", "WiFiManagerAddPrivateMacNetwork", sub_10000A878(v41)}];
        }

        objc_autoreleasePoolPop(v138);
      }

      else
      {
        v235 = sub_100059228(2);
        v172 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation : HS20 network <%@> default Rotating provisioned", "WiFiManagerAddPrivateMacNetwork", sub_10000A878(v41)}];
        }

        objc_autoreleasePoolPop(v172);
        v174 = *(a1 + 416);
        v173 = *(a1 + 424);
        v175 = *(a1 + 464);
        v176 = sub_10000A878(a2);
        v177 = sub_100177A18(v173, v174, v175, v176);
        v178 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s WFMacRandomisation : Generated private mac address <%@> for profile network<%@> ", "WiFiManagerAddPrivateMacNetwork", v177, sub_10000A878(a2)}];
        }

        objc_autoreleasePoolPop(v178);
        if (v177)
        {
          CFDictionarySetValue(v137, @"PRIVATE_MAC_ADDRESS_VALUE", v177);
          sub_10000AD34(v41, @"MacGenerationTimeStamp", v254);
          sub_10000AD34(v41, @"NoAssociationWithNewMac", v90);
          sub_10000AD34(v41, @"ResetCaptiveProbe", v90);
          sub_10000AD34(v41, @"RotationKeyUsed", *(a1 + 416));
          CFRelease(v177);
        }
      }

      sub_10000AD34(v41, @"PrivateMacFutureMacAddress", 0);
      CFDictionarySetValue(v137, @"PRIVATE_MAC_ADDRESS_TYPE", v235);
      sub_10000AD34(v41, @"PRIVATE_MAC_ADDRESS", v137);
      if (v137)
      {
        CFRelease(v137);
      }

      if (v235)
      {
        CFRelease(v235);
      }

      if (v241 && v241 == v90)
      {
        sub_10000AD34(v41, @"PrivateMacControlledDevice", v90);
      }

      sub_10000AD34(v41, @"MacAddressRandomisationTagMigratedNetwork", 0);
      sub_10000AD34(v41, @"MacAddressRandomisationClassificationAttempts", 0);
      sub_10000AD34(v41, @"PrivateMacJoinDateAfterUpgrade", 0);
      v135 = v41;
      v134 = @"PrivateMacDefaultToOFF";
    }

    v169 = v87;
    goto LABEL_262;
  }

  if (a3 <= 4)
  {
    switch(a3)
    {
      case 2:
        sub_10000AD34(v41, @"MacGenerationTimeStamp", v254);
        sub_10000AD34(v41, @"ResetCaptiveProbe", kCFBooleanTrue);
        sub_10000AD34(v41, @"NoAssociationWithNewMac", kCFBooleanTrue);
        v82 = sub_10000A540(a2, @"PRIVATE_MAC_ADDRESS");
        if (!v82)
        {
          goto LABEL_127;
        }

        v83 = v82;
        TypeID = CFDictionaryGetTypeID();
        if (TypeID != CFGetTypeID(v83))
        {
          goto LABEL_127;
        }

        sub_10000AD34(v41, @"PRIVATE_MAC_ADDRESS", v83);
        v85 = *(a1 + 416);
        break;
      case 3:
        sub_10000AD34(v41, @"MacGenerationTimeStamp", v254);
        sub_10000AD34(v41, @"NoAssociationWithNewMac", kCFBooleanTrue);
        v100 = sub_10000A540(a2, @"PRIVATE_MAC_ADDRESS");
        if (v100)
        {
          v101 = v100;
          v102 = CFDictionaryGetTypeID();
          if (v102 == CFGetTypeID(v101))
          {
            sub_10000AD34(v41, @"PRIVATE_MAC_ADDRESS", v101);
          }
        }

        v103 = sub_10000A540(a2, @"RotationKeyUsed");
        if (!v103)
        {
LABEL_127:
          sub_10000C614(v41, @"FailureCountThresholdCurrent", *(a1 + 440));
          goto LABEL_263;
        }

        v85 = v103;
        break;
      case 4:
        if (sub_10016D3F4(v41))
        {
          sub_10016D374();
        }

LABEL_78:
        v62 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"WFMacRandomisation :%s: Processing migrated network: <%@>", "WiFiManagerAddPrivateMacNetwork", sub_10000A878(v41)}];
        }

        objc_autoreleasePoolPop(v62);
        cfa = sub_10000A7CC(a2);
        v63 = sub_1000567D0(v41);
        v64 = CFAbsoluteTimeGetCurrent();
        v65 = CFDateCreate(v7, v64);
        v66 = sub_10000A878(a2);
        v67 = sub_10000DBF0(a2);
        v238 = sub_10009EB80(a2);
        v231 = sub_10009E148(a2);
        v68 = sub_100009730(a2);
        v234 = v63;
        if (sub_1000567D0(a2) || [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")] == 1 || (v69 = sub_10000A540(a2, @"addedAt"), v67 == 0.0))
        {
          v71 = 0;
          goto LABEL_86;
        }

        v221 = v66;
        otherDatea = v69;
        if (!v69)
        {
          v225 = 0;
          v70 = 0;
LABEL_292:
          v223 = 0;
LABEL_293:
          v229 = 1;
LABEL_294:
          v189 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"WFMacRandomisation : %s, current Date : [%@], recentlyAdded [%hhu], Timesinceadded :[%f], daysSinceAdded : [%d], FrequentlyUSed [%hhu]", "__WiFiManagerPrivateMacIsSpecialFrequentlyUsedNetwork", v65, v225, CFDateGetTimeIntervalSinceDate(v65, otherDatea), v70, v223}];
          }

          objc_autoreleasePoolPop(v189);
          if (v229)
          {
            v71 = 0;
          }

          else
          {
            v190 = objc_autoreleasePoolPush();
            if (!(v238 | v231) || v68)
            {
              if (off_100298C40)
              {
                v210 = v190;
                [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation : Frequently used network <%@>. suppoerts WPA2 : [%hhu], supports WPA3 : [%hhu], is EAP : [%hhu]", "__WiFiManagerPrivateMacIsSpecialFrequentlyUsedNetwork", v221, v238, v231, v68}];
                v190 = v210;
              }

              v71 = 0;
            }

            else
            {
              if (off_100298C40)
              {
                v191 = v190;
                [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation : frequently used, secure and non enterprise network <%@> ", "__WiFiManagerPrivateMacIsSpecialFrequentlyUsedNetwork", v221}];
                v190 = v191;
              }

              v71 = 1;
            }

            objc_autoreleasePoolPop(v190);
          }

LABEL_86:
          if (v65)
          {
            CFRelease(v65);
          }

          v72 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s WFMacRandomisation : migrated network type. isCarplay <%hhu>, isHome <%hhu>, isSpecialFrequentlyUsed <%hhu>", "WiFiManagerAddPrivateMacNetwork", cfa, v63, v71}];
          }

          objc_autoreleasePoolPop(v72);
          v73 = objc_autoreleasePoolPush();
          v74 = off_100298C40;
          if (off_100298C40)
          {
            v75 = sub_10000A540(a2, @"NetworkOfInterestHomeState");
            [v74 WFLog:3 message:{"%s WFMacRandomisation : migrated network Home state: from known networks <%@>, From privateMac cache <%@>, ", "WiFiManagerAddPrivateMacNetwork", v75, sub_10000A540(v41, @"NetworkOfInterestHomeState"}];
          }

          objc_autoreleasePoolPop(v73);
          v232 = sub_10001769C(a1, @"PrivateMacForceDisableForHome");
          v76 = sub_10001769C(a1, @"PrivateMacTurnOffCarplayNetworks");
          v239 = sub_10001769C(a1, @"ForceUseStaticMac");
          v77 = sub_10000A540(v41, @"NetworkUsedForSWUpgrade");
          v78 = sub_10000A540(v41, @"PrivateMacDefaultToOFF");
          v79 = sub_10000A540(v41, @"PrivateMacProfileDefaultInitialValue");
          if (v79)
          {
            sub_10000AD34(v41, @"PrivateMacProfileDefaultInitialValue", v79);
          }

          if (cfa)
          {
            if (v76 && v76 == kCFBooleanTrue)
            {
              sub_1001645AC(a1, v41);
              sub_10000AD34(v41, @"FeatureOffBySystemForCarplay", kCFBooleanTrue);
            }

            goto LABEL_220;
          }

          if (v78)
          {
            sub_10000AD34(v41, @"PrivateMacDefaultToOFF", v78);
            v136 = sub_10000A540(v41, @"PayloadUUID");
            if (!v136)
            {
              valuePtr = -1;
              if (sub_100072D44(a1))
              {
                sub_10015AADC();
              }

              goto LABEL_220;
            }

            v152 = v136;
            v153 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation : Found payloadUUID for network %@", "WiFiManagerAddPrivateMacNetwork", sub_10000A878(v41)}];
            }

            objc_autoreleasePoolPop(v153);
            sub_10000AD34(v41, @"PayloadUUID", v152);
            v81 = objc_autoreleasePoolPush();
            v154 = *(a1 + 1584);
            if ([v154 isMCInitialized] && ((objc_msgSend(v154, "isWiFiNetworkMDMNetwork:", v41) & 1) != 0 || objc_msgSend(v154, "isSupervisedDevice")))
            {
              v155 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation : Network <%@> has/had profile based disable key ", "WiFiManagerAddPrivateMacNetwork", sub_10000A878(v41)}];
              }

              objc_autoreleasePoolPop(v155);
              sub_1001645AC(a1, v41);
              *(a1 + 497) = 1;
            }
          }

          else
          {
            v80 = kCFBooleanTrue;
            if (!v77 || v77 != kCFBooleanTrue)
            {
              v144 = sub_1001647A0(a1, v41);
              if (!v144)
              {
                v145 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation : Network <%@> evaluated eligible for classification as FALSE. ", "WiFiManagerAddPrivateMacNetwork", sub_10000A878(v41)}];
                }

                objc_autoreleasePoolPop(v145);
              }

              if (v234 && v232 && v232 == kCFBooleanTrue)
              {
                v146 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s WFMacRandomisation : Skipping home network disable", "WiFiManagerAddPrivateMacNetwork"}];
                }

                objc_autoreleasePoolPop(v146);
                v80 = kCFBooleanTrue;
              }

              if (v144)
              {
                cfc = v80;
                v147 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation : Migrated Network <%@> eligible for classification. Tagged. ", "WiFiManagerAddPrivateMacNetwork", sub_10000A878(v41)}];
                }

                objc_autoreleasePoolPop(v147);
                v236 = sub_100021720(a1);
                v148 = CFDictionaryCreateMutable(v7, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                if (a3 == 5)
                {
                  v149 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation : Downgrading to physical MAC for setup network <%@>", "WiFiManagerAddPrivateMacNetwork", sub_10000A878(v41)}];
                  }

                  objc_autoreleasePoolPop(v149);
                  v150 = sub_100059228(1);
                  CFDictionarySetValue(v148, @"PRIVATE_MAC_ADDRESS_TYPE", v150);
                  CFDictionarySetValue(v148, @"PRIVATE_MAC_ADDRESS_VALUE", *(a1 + 464));
                  sub_10000AD34(v41, @"NetworkUsedForSWUpgrade", cfc);
                  v151 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"WFMacRandomisation :%s: Setup network detected <%@> and using physical MAC. Flag NetworkUsedForSWUpgrade", "WiFiManagerAddPrivateMacNetwork", sub_10000A878(v41)}];
                  }

                  objc_autoreleasePoolPop(v151);
                }

                else
                {
                  v205 = *(a1 + 416);
                  v204 = *(a1 + 424);
                  v206 = *(a1 + 464);
                  v207 = sub_10000A878(v41);
                  v208 = sub_100177A18(v204, v205, v206, v207);
                  v150 = sub_100059228(2);
                  CFDictionarySetValue(v148, @"PRIVATE_MAC_ADDRESS_TYPE", v150);
                  CFDictionarySetValue(v148, @"PRIVATE_MAC_ADDRESS_VALUE", v208);
                  sub_10000AD34(v41, @"RotationKeyUsed", *(a1 + 416));
                  if (v208)
                  {
                    CFRelease(v208);
                  }
                }

                if (v150)
                {
                  CFRelease(v150);
                }

                sub_10000AD34(v41, @"PrivateMacJoinDateAfterUpgrade", 0);
                sub_10000AD34(v41, @"MacAddressRandomisationTagMigratedNetwork", cfc);
                sub_10000C614(v41, @"MacAddressRandomisationClassificationAttempts", *(a1 + 396));
                sub_10000C614(v41, @"PrivateMacClassifyInterval", *(a1 + 392));
                sub_10000AD34(v41, @"PRIVATE_MAC_ADDRESS", v148);
                sub_10000AD34(v41, @"PresentInKnownNetworks", cfc);
                sub_10000AD34(v41, @"BlockRotation", cfc);
                sub_10000AD34(v41, @"PrivateMacFutureMacAddress", 0);
                sub_10000AD34(v41, @"privateMacSuccessfulAssocAtleastOnce", 0);
                if (v236)
                {
                  v209 = sub_10000A878(v236);
                  if (CFStringCompare(v209, valuea, 0) == kCFCompareEqualTo)
                  {
                    sub_10000AD34(v41, @"PrivateMacJoinDateAfterUpgrade", v254);
                  }
                }

                if (v148)
                {
                  CFRelease(v148);
                }

                if (v236)
                {
                  CFRelease(v236);
                }
              }

              goto LABEL_220;
            }

            v81 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation : Network <%@> used during setup already. Skip data migration.", "WiFiManagerAddPrivateMacNetwork", sub_10000A878(v41)}];
            }
          }

          objc_autoreleasePoolPop(v81);
LABEL_220:
          if (v239 && v239 == kCFBooleanTrue)
          {
            v156 = sub_10000A540(v41, @"RotationKeyUsed");
            v157 = *(a1 + 424);
            v158 = *(a1 + 464);
            v159 = sub_10000A878(v41);
            if (v156)
            {
              v160 = v156;
            }

            else
            {
              v160 = 0;
            }

            v161 = sub_100177A18(v157, v160, v158, v159);
            v162 = sub_10000A540(v41, @"PRIVATE_MAC_ADDRESS");
            if (v162)
            {
              v163 = v162;
              v164 = CFDictionaryGetTypeID();
              if (v164 == CFGetTypeID(v163))
              {
                v165 = CFDictionaryGetValue(v163, @"PRIVATE_MAC_ADDRESS_TYPE");
                if (v165 && sub_10000AC54(v165) == 3)
                {
                  v166 = CFDictionaryCreateMutable(v7, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                  v167 = sub_100059228(3);
                  CFDictionarySetValue(v166, @"PRIVATE_MAC_ADDRESS_TYPE", v167);
                  CFDictionarySetValue(v166, @"PRIVATE_MAC_ADDRESS_VALUE", v161);
                  sub_10000AD34(v41, @"PRIVATE_MAC_ADDRESS", v166);
                  v168 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"WFMacRandomisation :%s: Force moved network <%@> to use static MAC", "WiFiManagerAddPrivateMacNetwork", sub_10000A878(v41)}];
                  }

                  objc_autoreleasePoolPop(v168);
                  if (v166)
                  {
                    CFRelease(v166);
                  }

                  if (v167)
                  {
                    CFRelease(v167);
                  }
                }

                if (sub_10000A540(v41, @"PrivateMacFutureMacAddress"))
                {
                  sub_10000AD34(v41, @"PrivateMacFutureMacAddress", v161);
                }
              }
            }

            if (v161)
            {
              CFRelease(v161);
            }
          }

          v134 = @"TotalRotationsThisBuild";
          goto LABEL_240;
        }

        v70 = (CFDateGetTimeIntervalSinceDate(v65, v69) / 86400.0);
        if (!v70)
        {
LABEL_291:
          v225 = 0;
          goto LABEL_292;
        }

        v211 = v67 / v70;
        if (v70 <= 6)
        {
          if (v211 <= 14400.0)
          {
            v223 = 0;
            v225 = 1;
            goto LABEL_293;
          }

          v229 = 0;
          v225 = 1;
        }

        else
        {
          if (v211 <= 10800.0)
          {
            goto LABEL_291;
          }

          v225 = 0;
          v229 = 0;
        }

        v223 = 1;
        goto LABEL_294;
      default:
        goto LABEL_75;
    }

    sub_10000AD34(v41, @"RotationKeyUsed", v85);
    goto LABEL_127;
  }

  if (a3 == 5)
  {
    goto LABEL_78;
  }

  if (a3 == 6)
  {
    sub_10000AD34(v41, @"PresentInKnownNetworks", kCFBooleanTrue);
    v107 = sub_10000A540(v41, @"PRIVATE_MAC_ADDRESS");
    v240 = sub_10000A540(v41, @"NetworkUsedForSWUpgrade");
    if (v107 && (v108 = CFDictionaryGetTypeID(), v108 == CFGetTypeID(v107)))
    {
      v109 = CFDictionaryGetValue(v107, @"PRIVATE_MAC_ADDRESS_IN_USE");
      v110 = sub_10000ABFC(v109);
      cfb = CFDictionaryCreateMutableCopy(v7, 0, v107);
      v111 = v110 == 0;
    }

    else
    {
      cfb = 0;
      v111 = 1;
    }

    v116 = sub_10000A540(v41, @"MacAddressRandomisationTagMigratedNetwork");
    if (v116)
    {
      v117 = v116 == kCFBooleanTrue;
    }

    else
    {
      v117 = 0;
    }

    v118 = !v117;
    if (v111)
    {
      v119 = cfb;
      if (v118)
      {
        goto LABEL_283;
      }

      v120 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation : Migrated network <%@> associated successfully with physical Mac", "WiFiManagerAddPrivateMacNetwork", sub_10000A878(v41)}];
      }

      objc_autoreleasePoolPop(v120);
      if (!sub_10000A540(v41, @"PrivateMacJoinDateAfterUpgrade"))
      {
        sub_10000AD34(v41, @"PrivateMacJoinDateAfterUpgrade", v254);
      }

      if (v240 != kCFBooleanTrue)
      {
        goto LABEL_283;
      }

      v122 = *(a1 + 416);
      v121 = *(a1 + 424);
      v123 = *(a1 + 464);
      v124 = sub_10000A878(v41);
      v125 = sub_100177A18(v121, v122, v123, v124);
      if (!v125)
      {
        goto LABEL_283;
      }

      v126 = v125;
      sub_10000AD34(v41, @"PrivateMacFutureMacAddress", v125);
      sub_10000AD34(v41, @"MacGenerationTimeStamp", v254);
      sub_10000AD34(v41, @"ResetCaptiveProbe", kCFBooleanTrue);
      sub_10000AD34(v41, @"NoAssociationWithNewMac", kCFBooleanTrue);
      sub_10000AD34(v41, @"RotationKeyUsed", *(a1 + 416));
      v127 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation : Network <%@> used during setup marked to use private MAC next", "WiFiManagerAddPrivateMacNetwork", sub_10000A878(v41)}];
      }

      objc_autoreleasePoolPop(v127);
    }

    else
    {
      sub_10000AD34(v41, @"BlockRotation", 0);
      sub_10000AD34(v41, @"LinkDownTimestamp", 0);
      v139 = sub_10000A540(v41, @"NoAssociationWithNewMac");
      sub_10000C614(v41, @"FailureCountThresholdCurrent", *(a1 + 444));
      sub_10000AD34(v41, @"privateMacSuccessfulAssocAtleastOnce", kCFBooleanTrue);
      if (v139 && v139 == kCFBooleanTrue)
      {
        sub_10000AD34(v41, @"NoAssociationWithNewMac", kCFBooleanFalse);
        sub_10000AD34(v41, @"FirstJoinWithNewMacTimestamp", v254);
        sub_10000AD34(v41, @"PrivateMacFutureMacAddress", 0);
      }

      if (sub_10000A7CC(a2))
      {
        if (*(a1 + 385))
        {
          v140 = *(a1 + 424);
          v141 = *(a1 + 464);
          v142 = sub_10000A878(a2);
          v143 = sub_100177C58(v140, v141, v142);
          sub_10000AD34(v41, @"PrivateMacFutureMacAddress", v143);
          if (v143)
          {
            CFRelease(v143);
          }
        }
      }

      if (v118)
      {
        v119 = cfb;
        if ((v10 & 1) == 0 || !v240 || v240 != kCFBooleanTrue)
        {
          goto LABEL_283;
        }
      }

      else
      {
        v186 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation : Migrated network <%@> associated successfully with private Mac", "WiFiManagerAddPrivateMacNetwork", sub_10000A878(v41)}];
        }

        objc_autoreleasePoolPop(v186);
        sub_10000AD34(v41, @"MacAddressRandomisationTagMigratedNetwork", 0);
        sub_10000AD34(v41, @"MacAddressRandomisationClassificationAttempts", 0);
        sub_10000AD34(v41, @"PrivateMacJoinDateAfterUpgrade", 0);
        sub_10000AD34(v41, @"NetworkUsedForSWUpgrade", 0);
        v119 = cfb;
        if ((v10 & 1) == 0)
        {
          goto LABEL_283;
        }
      }

      if (sub_1000A2ED8(a2))
      {
        v187 = 2;
      }

      else
      {
        v187 = 3;
      }

      v126 = sub_100059228(v187);
      if (v119)
      {
        CFDictionarySetValue(v119, @"PRIVATE_MAC_ADDRESS_TYPE", v126);
        sub_10000AD34(v41, @"PRIVATE_MAC_ADDRESS", v119);
      }

      if (!v126)
      {
        goto LABEL_283;
      }
    }

    CFRelease(v126);
LABEL_283:
    if (!v119)
    {
      goto LABEL_263;
    }

    v115 = v119;
    goto LABEL_285;
  }

  sub_10000AD34(v41, @"PresentInKnownNetworks", kCFBooleanTrue);
  v52 = sub_10000C580(v7, a2);
  v53 = sub_10009ED84(a2);
  v54 = sub_10000AFE4(a2);
  v55 = sub_1000A1F04(a2);
  v56 = sub_10000A540(v41, @"PrivateMacDefaultToOFF");
  sub_10000AD34(v52, @"PrivateMacDefaultToOFF", v56);
  if (v52)
  {
    CFRelease(v52);
  }

  if (!v53 && !v54 && !v55)
  {
    goto LABEL_263;
  }

  v57 = CFDictionaryCreateMutable(v7, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!v57)
  {
    goto LABEL_322;
  }

  v58 = v57;
  if (!*(a1 + 384))
  {
LABEL_69:
    v59 = sub_100059228(1);
    CFDictionarySetValue(v58, @"PRIVATE_MAC_ADDRESS_TYPE", v59);
    CFDictionarySetValue(v58, @"PRIVATE_MAC_ADDRESS_VALUE", *(a1 + 464));
    if (!v59)
    {
      goto LABEL_321;
    }

    goto LABEL_320;
  }

  if (v56)
  {
    if (v56 == kCFBooleanTrue)
    {
      goto LABEL_69;
    }

    v188 = 2;
  }

  else if (sub_1000A2ED8(a2))
  {
    v188 = 2;
  }

  else
  {
    v188 = 3;
  }

  v197 = sub_100059228(v188);
  CFDictionarySetValue(v58, @"PRIVATE_MAC_ADDRESS_TYPE", v197);
  if (v197)
  {
    CFRelease(v197);
  }

  v198 = v56;
  v200 = *(a1 + 416);
  v199 = *(a1 + 424);
  v201 = *(a1 + 464);
  v202 = sub_10000A878(a2);
  v59 = sub_100177A18(v199, v200, v201, v202);
  v203 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s WFMacRandomisation : Generated private mac address <%@> for profile network<%@> ", "WiFiManagerAddPrivateMacNetwork", v59, sub_10000A878(a2)}];
  }

  objc_autoreleasePoolPop(v203);
  v56 = v198;
  if (!v59)
  {
    goto LABEL_321;
  }

  CFDictionarySetValue(v58, @"PRIVATE_MAC_ADDRESS_VALUE", v59);
  sub_10000AD34(v41, @"MacGenerationTimeStamp", v254);
  sub_10000AD34(v41, @"NoAssociationWithNewMac", kCFBooleanTrue);
  sub_10000AD34(v41, @"ResetCaptiveProbe", kCFBooleanTrue);
  sub_10000AD34(v41, @"RotationKeyUsed", *(a1 + 416));
LABEL_320:
  CFRelease(v59);
LABEL_321:
  sub_10000AD34(v41, @"PRIVATE_MAC_ADDRESS", v58);
  sub_10000C614(v41, @"FailureCountThresholdCurrent", *(a1 + 440));
  CFRelease(v58);
LABEL_322:
  if (v56)
  {
    sub_10000AD34(v41, @"MacAddressRandomisationTagMigratedNetwork", 0);
    sub_10000AD34(v41, @"MacAddressRandomisationClassificationAttempts", 0);
    sub_10000AD34(v41, @"PrivateMacJoinDateAfterUpgrade", 0);
    v134 = @"PrivateMacFutureMacAddress";
LABEL_240:
    v135 = v41;
    v169 = 0;
LABEL_262:
    sub_10000AD34(v135, v134, v169);
  }

LABEL_263:
  v179 = sub_100020170(a1, 0);
  v180 = v179;
  if (!v179)
  {
    v6 = v255;
    v182 = v251;
    v9 = v254;
LABEL_354:
    v185 = v249;
    goto LABEL_355;
  }

  sub_10000AACC(v179, a2, v259, &v258);
  v181 = objc_autoreleasePoolPush();
  v6 = v255;
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"WFMacRandomisation :%s:Adding network to private mac cache with reason <%u>  existingIndex %ld, insertIndex %ld", "WiFiManagerAddPrivateMacNetwork", a3, v259[0], v258}];
  }

  objc_autoreleasePoolPop(v181);
  if (v259[0] == -1)
  {
    CFArrayAppendValue(v180, v41);
  }

  else
  {
    CFArraySetValueAtIndex(v180, v259[0], v41);
  }

  v182 = v251;
  sub_1001610C0();
  v180 = v183;
  sub_100161270();
  v9 = v254;
  if (!v180)
  {
    goto LABEL_354;
  }

  v184 = objc_autoreleasePoolPush();
  v185 = v249;
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"WFMacRandomisation : Added/replaced network <%@> to list of known private mac networks", valuea}];
  }

  objc_autoreleasePoolPop(v184);
  v180 = 1;
LABEL_355:
  CFRelease(Mutable);
  if (v185)
  {
    CFRelease(v185);
  }

  if (v182)
  {
    CFRelease(v182);
  }

  if (v9)
  {
LABEL_360:
    CFRelease(v9);
  }

LABEL_361:
  objc_autoreleasePoolPop(v6);
  return v180;
}

uint64_t sub_100080058(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, void (*a5)(uint64_t, const void *, uint64_t, uint64_t), uint64_t a6)
{
  v10 = objc_autoreleasePoolPush();
  v96 = 0;
  v97 = 0;
  v95 = 0;
  if (!a1)
  {
    sub_10016D970();
    v29 = 0;
    v34 = 0;
    v18 = 0;
    goto LABEL_107;
  }

  v91 = a1;
  v92 = a3;
  if (!a4)
  {
    v80 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: options is NULL", "WiFiManagerAddNetworkAsync"}];
    }

LABEL_148:
    v31 = 4;
    goto LABEL_149;
  }

  if (sub_100080F4C(a1))
  {
    v80 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: restriction policy is active", "WiFiManagerAddNetworkAsync"}];
    }

    v31 = 5;
LABEL_149:
    objc_autoreleasePoolPop(v80);
    v29 = 0;
    v34 = 0;
    v18 = 0;
    a1 = 0;
    if (!a2)
    {
LABEL_105:
      if (a5)
      {
        a5(v91, v92, v31, a6);
      }

      goto LABEL_107;
    }

LABEL_104:
    sub_10014B32C(a2, v91, v92, v31);
    goto LABEL_105;
  }

  Value = CFDictionaryGetValue(a4, @"BundleIdentifier");
  if (!Value)
  {
    v80 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v31 = 4;
      [off_100298C40 WFLog:4 message:{"%s missing bundle identifier from request", "WiFiManagerAddNetworkAsync"}];
      goto LABEL_149;
    }

    goto LABEL_148;
  }

  v12 = Value;
  v89 = v10;
  theDict = a4;
  v86 = [NSMutableDictionary alloc];
  v13 = [NSString stringWithFormat:@"WiFiKnownNetworkAdded"];
  v14 = [NSString stringWithString:v12];
  v15 = [NSString stringWithString:sub_10000715C(a2)];
  v16 = [NSString stringWithString:sub_100080FC8(v12)];
  cf2 = v12;
  v17 = [NSString stringWithString:sub_1000810A0(v12)];
  v18 = [v86 initWithObjectsAndKeys:{v13, @"Operation", v14, @"AppBundleID", v15, @"Process", v16, @"BTTCCState", v17, @"LocalNetworkTCCState", +[NSString stringWithString:](NSString, "stringWithString:", @"kWiFiAddNetworkOriginatorUser", @"AddReason", +[NSString stringWithString:](NSString, "stringWithString:", @"kWiFiManagerAddNetworkResultSuccess", @"Result", +[NSString stringWithString:](NSString, "stringWithString:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"kWiFiNetworkAuthFlags%@", +[WAClient WANetworkAuthFlagsLabel:](WAClient, "WANetworkAuthFlagsLabel:", sub_10009F418(a3)))), @"SecurityType", 0}];
  v19 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Request to add network with content: %@", "WiFiManagerAddNetworkAsync", a3}];
  }

  objc_autoreleasePoolPop(v19);
  if (sub_10009DBBC(a3))
  {
    Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
    if (Mutable)
    {
      v21 = Mutable;
      sub_10017651C(a3, Mutable);
      v22 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: HS20 Account Info:%@", "WiFiManagerAddNetworkAsync", v21}];
      }

      objc_autoreleasePoolPop(v22);
      CFRelease(v21);
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Could not allocate buffer for HS 2.0 info", "WiFiManagerAddNetworkAsync"}];
      }

      objc_autoreleasePoolPop(v23);
    }
  }

  if (!CFDictionaryContainsKey(theDict, @"NetworkOriginator"))
  {
    goto LABEL_35;
  }

  v24 = CFDictionaryGetValue(theDict, @"NetworkOriginator");
  v25 = CFGetTypeID(v24);
  if (v25 != CFNumberGetTypeID())
  {
    sub_10016D904();
LABEL_35:
    v32 = 0;
    v87 = 0;
    v29 = 0;
    v33 = @"user";
    goto LABEL_36;
  }

  LODWORD(valuePtr[0]) = -1431655766;
  CFNumberGetValue(v24, kCFNumberIntType, valuePtr);
  if (LODWORD(valuePtr[0]) != 6 && LODWORD(valuePtr[0]) != 1)
  {
    goto LABEL_35;
  }

  v94 = 0;
  v26 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v12 allowPlaceholder:1 error:&v94];
  v27 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: error %@", "WiFiManagerAddNetworkAsync", v94}];
  }

  objc_autoreleasePoolPop(v27);
  if (!v26)
  {
    v94 = 0;
    v26 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v12 allowPlaceholder:1 error:&v94];
    v28 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: error %@", "WiFiManagerAddNetworkAsync", v94}];
    }

    objc_autoreleasePoolPop(v28);
    if (!v26)
    {
      v30 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%@ bundle identifier is not installed", v12}];
      }

      v29 = 0;
      v31 = 4;
      goto LABEL_33;
    }
  }

  v29 = [objc_msgSend(v26 "localizedName")];
  sub_10000AD34(a3, @"OriginatingApp", v29);

  valuePtr[0] = v91;
  valuePtr[1] = 0xAAAAAAAA00000034;
  v99 = 0;
  v100 = 0;
  valuePtr[2] = 0;
  CFSetApplyFunction(*(v91 + 112), sub_100003B88, valuePtr);
  if (v99)
  {
    v30 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"personal hotspot is active, denying join request from bundleId='%@'", v12}];
    }

    v31 = 7;
LABEL_33:
    v10 = v89;
    objc_autoreleasePoolPop(v30);
    v34 = 0;
    a1 = 0;
    v35 = 1;
    goto LABEL_99;
  }

  v32 = 1;
  v33 = @"3rd Party";
  v87 = 1;
LABEL_36:
  Count = CFArrayGetCount(*(v91 + 1784));
  if (Count >= 1)
  {
    v37 = Count;
    v38 = 0;
    while (1)
    {
      v39 = [CFArrayGetValueAtIndex(*(v91 + 1784) v38)];
      if (CFStringCompare(v12, v39, 0) == kCFCompareEqualTo)
      {
        break;
      }

      if (v37 == ++v38)
      {
        goto LABEL_40;
      }
    }

    v54 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"Add network async request is already queued for bundleId %@", v12}];
    }

    objc_autoreleasePoolPop(v54);
    v34 = 0;
    a1 = 0;
    v31 = 3;
    goto LABEL_98;
  }

LABEL_40:
  v40 = sub_10000AFE4(a3);
  if (v40)
  {
    v41 = v32;
  }

  else
  {
    v41 = 1;
  }

  [v18 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", v40), @"Hotspot20"}];
  v42 = objc_autoreleasePoolPush();
  if ((v41 & 1) == 0)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s HS20 network must use originator type kWiFiAddNetworkOriginator3rdParty", "WiFiManagerAddNetworkAsync"}];
    }

    objc_autoreleasePoolPop(v42);
    v34 = 0;
    a1 = 0;
    v31 = 4;
    goto LABEL_98;
  }

  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: adding ssid='%@' bundleId='%@' appName='%@' originator='%@' HS20=%d", "WiFiManagerAddNetworkAsync", sub_10000A878(v92), v12, v29, v33, v40}];
  }

  objc_autoreleasePoolPop(v42);
  v83 = CFDictionaryContainsKey(theDict, @"AddNetworkUseSSIDPrefix") != 0;
  if (v40)
  {
    v43 = *(v91 + 224);
    if (v43)
    {
      v44 = CFArrayGetCount(v43);
      if (v44 >= 1)
      {
        v45 = v44;
        v46 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v91 + 224), v46);
          v48 = sub_1000A1D68(ValueAtIndex);
          if (v48)
          {
            if (CFEqual(v48, v12) && sub_10009F5C0(v92, ValueAtIndex))
            {
              break;
            }
          }

          if (v45 == ++v46)
          {
            goto LABEL_54;
          }
        }

        v55 = CFArrayGetValueAtIndex(*(v91 + 224), v46);
        if (v55)
        {
          v56 = v55;
          v57 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: matching HS20 network found at index %ld: %@", "__WiFiManagerCopyExistingHS20Network", v46, v56}];
          }

          objc_autoreleasePoolPop(v57);
          v97 = CFRetain(v56);
          if (!v97)
          {
            goto LABEL_74;
          }

          goto LABEL_58;
        }
      }

LABEL_54:
      v49 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: no matching HS20 network found", "__WiFiManagerCopyExistingHS20Network"}];
      }

      objc_autoreleasePoolPop(v49);
    }

    else
    {
      sub_10016D840();
    }
  }

  else
  {
    sub_10015BCD0(v91, v92, &v97);
  }

  if (!v97)
  {
LABEL_74:
    v58 = 0;
    goto LABEL_83;
  }

LABEL_58:
  v50 = objc_autoreleasePoolPush();
  v51 = off_100298C40;
  if (off_100298C40)
  {
    if (v40)
    {
      v52 = "domain";
    }

    else
    {
      v52 = "SSID";
    }

    if (v40)
    {
      v53 = sub_10000A540(v92, @"DomainName");
    }

    else
    {
      v53 = sub_10000A878(v92);
    }

    [v51 WFLog:3 message:{"%s: Found existing network matching network to be added; %s %@", "WiFiManagerAddNetworkAsync", v52, v53}];
  }

  objc_autoreleasePoolPop(v50);
  v59 = sub_10009ED84(v97);
  v60 = sub_1000A1D68(v97);
  if (v60 && CFEqual(v60, v12))
  {
    v61 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: network is already owned by the same application.", "WiFiManagerAddNetworkAsync"}];
    }

    objc_autoreleasePoolPop(v61);
    v58 = 1;
    if (!v59)
    {
      goto LABEL_82;
    }

LABEL_91:
    v66 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: network is already an existing managed network", "WiFiManagerAddNetworkAsync"}];
    }

    objc_autoreleasePoolPop(v66);
    sub_1000813A4(v91, v92);
    v34 = 0;
    a1 = 0;
    v31 = 5;
    goto LABEL_98;
  }

  v58 = 0;
  if (v59)
  {
    goto LABEL_91;
  }

LABEL_82:
  v83 = 0;
LABEL_83:
  v62 = sub_100139860(v12, v92, &v96, &v95);
  v63 = v62;
  if (v62 == 1)
  {
    v64 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: '%@' is authorized to join '%@'", "WiFiManagerAddNetworkAsync", v12, v92}];
    }

    objc_autoreleasePoolPop(v64);
    if (!CFDictionaryGetValue(theDict, @"isAccessory"))
    {
      v65 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: '%@' did not use joinAccessory API with authorized accessory", "WiFiManagerAddNetworkAsync", v12}];
      }

      objc_autoreleasePoolPop(v65);
      v34 = 0;
      a1 = 0;
      v31 = 11;
LABEL_98:
      v10 = v89;
      v35 = v87;
      goto LABEL_99;
    }

    v69 = 6;
  }

  else
  {
    if (v62 == 2)
    {
      v67 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: '%@' is not authorized to join '%@'", "WiFiManagerAddNetworkAsync", v12, v92}];
      }

      objc_autoreleasePoolPop(v67);
      v34 = 0;
      a1 = 0;
      v31 = 10;
      goto LABEL_98;
    }

    if (v62 == 3)
    {
      sub_10016D8A0(v12);
    }

    v69 = v87;
  }

  [v18 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", v83), @"UsedPrefix"}];
  sub_1000A1CD8(v92, v12);
  v70 = v69;
  sub_1000A1DA4(v92, v69);
  sub_10015AC04();
  if (v58 && v71)
  {
    v72 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Already owned and associated to %@", "WiFiManagerAddNetworkAsync", sub_10000A878(v92)}];
    }

    objc_autoreleasePoolPop(v72);
    v34 = 0;
    a1 = 0;
    v31 = 6;
    v10 = v89;
  }

  else
  {
    v73 = CFDictionaryContainsKey(theDict, @"DisassociateOnSessionEnd");
    if (v73)
    {
      v74 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Session based add requested by %@", "WiFiManagerAddNetworkAsync", v12}];
      }

      objc_autoreleasePoolPop(v74);
    }

    v88 = v73;
    [v18 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", v73 != 0), @"SessionBased"}];
    if (v96)
    {
      sub_1000A38EC(v92, v96);
      v75 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: setting accessory display friendly name='%@' for %@", "WiFiManagerAddNetworkAsync", v96, sub_10000A878(v92)}];
      }

      objc_autoreleasePoolPop(v75);
    }

    if (v95)
    {
      sub_1000A3964(v92, v95);
      v76 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: setting accessory identifier='%@' for %@", "WiFiManagerAddNetworkAsync", v95, sub_10000A878(v92)}];
      }

      objc_autoreleasePoolPop(v76);
    }

    v77 = *(v91 + 324);
    v78 = *(v91 + 137);
    v79 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Add network async- prompting for user consent", "WiFiManagerAddNetworkAsync"}];
    }

    objc_autoreleasePoolPop(v79);
    LOBYTE(v82) = v63 == 1;
    BYTE2(v81) = v83;
    BYTE1(v81) = v88 != 0;
    LOBYTE(v81) = v78;
    v34 = [WiFiAddNetworkRequest initWithClient:"initWithClient:network:bundleId:localizedAppName:originator:poweredOff:wapi:sessionBased:useSSIDPrefix:callback:context:bypassPrompt:" network:a2 bundleId:v92 localizedAppName:cf2 originator:v29 poweredOff:v70 wapi:v77 == 0 sessionBased:v81 useSSIDPrefix:a5 callback:a6 context:v82 bypassPrompt:?];
    if (v34)
    {
      CFArrayAppendValue(*(v91 + 1784), v34);
      sub_10015BDA0();
      CFDictionaryContainsKey(theDict, @"DisassociateOnSessionEnd");
      v31 = 0;
      a1 = 1;
    }

    else
    {
      a1 = 0;
      v31 = 4;
    }

    v10 = v89;
  }

  v35 = v70;
LABEL_99:
  if (&_AnalyticsSendEventLazy && v18)
  {
    [v18 setObject:+[NSString stringWithString:](NSString forKey:{"stringWithString:", sub_100081234(v35)), @"AddReason"}];
    [v18 setObject:+[NSString stringWithString:](NSString forKey:{"stringWithString:", sub_100081254(v31)), @"Result"}];
    NSLog(@"CoreAnalytics metricsDict %@", v18);
    AnalyticsSendEventLazy();
  }

  if (v31)
  {
    if (!a2)
    {
      goto LABEL_105;
    }

    goto LABEL_104;
  }

LABEL_107:
  if (v97)
  {
    CFRelease(v97);
    v97 = 0;
  }

  if (v34)
  {
    CFRelease(v34);
  }

  objc_autoreleasePoolPop(v10);
  return a1;
}

const __CFArray *sub_100080F4C(uint64_t a1)
{
  result = *(a1 + 1704);
  if (result)
  {
    result = CFArrayGetCount(result);
    if (result)
    {
      Count = CFArrayGetCount(*(a1 + 1704));
      if (Count < 1)
      {
        return 0;
      }

      else
      {
        v4 = Count;
        v5 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 1704), v5);
          if (ValueAtIndex)
          {
            result = sub_1000418B0(ValueAtIndex);
            if (result == 1)
            {
              break;
            }
          }

          if (v4 == ++v5)
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

const __CFString *sub_100080FC8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (!&_TCCAccessCopyBundleIdentifiersForService)
  {
LABEL_7:
    v5 = @"BluetoothTCCUnknown";
    goto LABEL_8;
  }

  v3 = TCCAccessCopyBundleIdentifiersForService();
  v4 = TCCAccessCopyBundleIdentifiersDisabledForService();
  if (([v3 containsObject:a1] & 1) == 0)
  {
    if ([v4 containsObject:a1])
    {
      v5 = @"BluetoothTCCDisabled";
      NSLog(@"%s bundleId present in fDisallowedAppBundles %@", "__WiFiManagerBluetoothTCCState", a1);
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v5 = @"BluetoothTCCEnabled";
  NSLog(@"%s bundleId present in fAllowedAppBundles %@", "__WiFiManagerBluetoothTCCState", a1);
LABEL_8:
  objc_autoreleasePoolPop(v2);
  return v5;
}

const __CFString *sub_1000810A0(uint64_t a1)
{
  if (!objc_opt_class())
  {
    return @"LocalNetworkTCCUnknown";
  }

  v2 = +[NEPathController copyAggregatePathRules];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = @"LocalNetworkTCCUnknown";
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([objc_msgSend(v8 "matchSigningIdentifier")] && objc_msgSend(v8, "multicastPreferenceSet"))
        {
          v9 = [v8 denyMulticast];
          NSLog(@"%s bundleId has multicastAllow = %d set", "__WiFiManagerLocalNetworkTCCState", v9 ^ 1);
          if (v9)
          {
            v5 = @"LocalNetworkTCCDisabled";
          }

          else
          {
            v5 = @"LocalNetworkTCCEnabled";
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = @"LocalNetworkTCCUnknown";
  }

  return v5;
}

__CFString *sub_100081234(unsigned int a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return off_100260DA0[a1];
  }
}

const __CFString *sub_100081254(int a1)
{
  if (a1 <= 5)
  {
    v1 = @"kWiFiManagerAddNetworkResultRequestPending";
    v9 = @"kWiFiManagerAddNetworkResultInvalidBundleId";
    v10 = @"kWiFiManagerAddNetworkResultExistingNetwork";
    if (a1 != 5)
    {
      v10 = 0;
    }

    if (a1 != 4)
    {
      v9 = v10;
    }

    if (a1 != 3)
    {
      v1 = v9;
    }

    v5 = @"kWiFiManagerAddNetworkResultSuccess";
    v11 = @"kWiFiManagerAddNetworkResultUserCancelled";
    v12 = @"kWiFiManagerAddNetworkResultSystemCancelled";
    if (a1 != 2)
    {
      v12 = 0;
    }

    if (a1 != 1)
    {
      v11 = v12;
    }

    if (a1)
    {
      v5 = v11;
    }

    v8 = a1 <= 2;
  }

  else
  {
    v1 = @"kWiFiManagerAddNetworkResultAccessoryNetwork";
    v2 = @"kWiFiManagerAddNetworkResultUnknownError";
    if (a1 != 0x7FFFFFFF)
    {
      v2 = 0;
    }

    if (a1 != 11)
    {
      v1 = v2;
    }

    v3 = @"kWiFiManagerAddNetworkResultNetworkNotFound";
    v4 = @"kWiFiManagerAddNetworkResultAccessoryNotAuthorized";
    if (a1 != 10)
    {
      v4 = 0;
    }

    if (a1 != 9)
    {
      v3 = v4;
    }

    if (a1 <= 10)
    {
      v1 = v3;
    }

    v5 = @"kWiFiManagerAddNetworkResultAlreadyAssociated";
    v6 = @"kWiFiManagerAddNetworkResultAssociationFailed";
    v7 = @"kWiFiManagerAddNetworkResultApplicationIsNotInForeground";
    if (a1 != 8)
    {
      v7 = 0;
    }

    if (a1 != 7)
    {
      v6 = v7;
    }

    if (a1 != 6)
    {
      v5 = v6;
    }

    v8 = a1 <= 8;
  }

  if (v8)
  {
    return v5;
  }

  else
  {
    return v1;
  }
}

void sub_1000813A4(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    sub_10016DA48();
    return;
  }

  error = -1431655766;
  if (!a2)
  {
    sub_10016D9DC();
    v6 = 0;
    v7 = 0;
    Mutable = 0;
    goto LABEL_26;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable || !sub_10010E220())
  {
    v6 = 0;
    goto LABEL_23;
  }

  v5 = sub_10000A878(a2);
  v6 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%c%@%c", 8, v5, 127);
  if (!v6)
  {
LABEL_23:
    v7 = 0;
    goto LABEL_26;
  }

  v7 = CFStringCreateMutable(kCFAllocatorDefault, 0);
  if (!v7)
  {
    goto LABEL_26;
  }

  v8 = sub_10010E234(@"WIFI_JOIN_NETWORK_FAILURE_TITLE");
  if (!v8)
  {
    goto LABEL_26;
  }

  CFStringAppendFormat(v7, 0, v8, v6);
  if (sub_100035154(a2) <= -75)
  {
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: weak signal, adding message to alert", "__WiFiManagerDispatchForcedAssociationFailureNotification"}];
    }

    objc_autoreleasePoolPop(v9);
    v10 = sub_10010E234(@"WIFI_JOIN_NETWORK_FAILURE_BODY_WEAK_SIGNAL");
    if (v10)
    {
      CFDictionarySetValue(Mutable, kCFUserNotificationAlertMessageKey, v10);
    }
  }

  CFDictionarySetValue(Mutable, kCFUserNotificationAlertHeaderKey, v7);
  v11 = sub_10010E234(@"WIFI_FAILURE_OK");
  CFDictionarySetValue(Mutable, kCFUserNotificationDefaultButtonTitleKey, v11);
  v12 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0, &error, Mutable);
  if (!v12)
  {
LABEL_26:
    *(a1 + 1736) = 0u;
    sub_10015BDA0();
    if (!v6)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v13 = v12;
  RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v12, sub_100093284, 0);
  if (RunLoopSource)
  {
    v15 = RunLoopSource;
    *(a1 + 1736) = RunLoopSource;
    *(a1 + 1744) = v13;
    Main = CFRunLoopGetMain();
    CFRunLoopAddSource(Main, v15, kCFRunLoopDefaultMode);
  }

  else
  {
    *(a1 + 1736) = 0;
    *(a1 + 1744) = 0;
    CFRelease(v13);
    sub_10015BDA0();
  }

LABEL_16:
  CFRelease(v6);
LABEL_17:
  if (v7)
  {
    CFRelease(v7);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t sub_100081634(uint64_t a1, const void *a2, CFIndex a3)
{
  v6 = objc_autoreleasePoolPush();
  v53 = -1;
  if (!a1)
  {
    sub_10016DC78();
    goto LABEL_53;
  }

  if (!a2)
  {
    sub_10016DC0C();
    goto LABEL_53;
  }

  v7 = sub_10000AFE4(a2);
  idx = sub_10000A540(a2, @"DomainName");
  v8 = objc_autoreleasePoolPush();
  v9 = off_100298C40;
  if (off_100298C40)
  {
    if (v7)
    {
      v10 = "domain";
    }

    else
    {
      v10 = "SSID";
    }

    v11 = idx;
    if (!v7)
    {
      v11 = sub_10000A878(a2);
    }

    v36 = v10;
    v37 = v11;
    v35 = a3;
    [v9 WFLog:3 message:{"%s: reason %d, with %s %@", "WiFiManagerRemoveNetwork"}];
  }

  objc_autoreleasePoolPop(v8);
  if (sub_1000A158C(a2) == 2)
  {
    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v34 = "WiFiManagerRemoveNetwork";
      [off_100298C40 WFLog:3 message:"%s: Carplay network + UserConfigured"];
    }

    objc_autoreleasePoolPop(v12);
    switch(a3)
    {
      case 2:
        sub_10000AD34(a2, @"lastJoined", 0);
        v15 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: removed kWiFiPreferenceLastJoinedKey", "WiFiManagerRemoveNetwork"}];
        }

        objc_autoreleasePoolPop(v15);
        v16 = sub_100072D44(a1);
        if (v16)
        {
          sub_10016DBA8(v16, a2, &v53);
        }

        break;
      case 7:
        sub_1000A1628(a2);
        v17 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: removed CarPlay settings", "WiFiManagerRemoveNetwork"}];
        }

        objc_autoreleasePoolPop(v17);
        break;
      case 0x1B:
        goto LABEL_29;
      default:
        v13 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: unexpected reason %d", "WiFiManagerRemoveNetwork", a3}];
        }

        objc_autoreleasePoolPop(v13);
        v14 = 1;
        goto LABEL_27;
    }

    v14 = sub_100081EDC(a1, a2, 0);
    goto LABEL_27;
  }

  if (sub_1000A158C(a2) == 1)
  {
LABEL_29:
    sub_10015C274();
  }

  v19 = sub_10000A604(a2);
  if (a3 == 2 && v19)
  {
    sub_10000AD34(a2, @"AutoHotspotDisableWiFiAutoJoinUntilUserJoin", kCFBooleanTrue);
  }

  v20 = sub_100017CE4(a1, @"List of known networks");
  if (v20)
  {
    v25 = v20;
    if (sub_10014A48C(v20))
    {
      v26 = sub_10000D83C("WiFiManagerRemoveNetwork");
      v27 = sub_100072D44(a1);
      if (v27)
      {
        theArray = v27;
        if (a3 == 4)
        {
          sub_10015C418();
          context[0] = a1;
          context[1] = 0xAAAAAAAA00000050;
          context[2] = sub_10000A878(a2);
          context[3] = 1;
          context[4] = 0;
          CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
        }

        else
        {
          sub_10015AADC();
        }

        v28 = objc_autoreleasePoolPush();
        v29 = off_100298C40;
        v40 = v26;
        if (off_100298C40)
        {
          allocator = v25;
          if (v7)
          {
            v30 = "domain ";
          }

          else
          {
            v30 = "";
          }

          v31 = idx;
          if (!v7)
          {
            v31 = sub_10000A878(a2);
          }

          v36 = v30;
          v37 = v31;
          v35 = v53;
          [v29 WFLog:3 message:{"%s:existingIndex %ld of %s%@", "WiFiManagerRemoveNetwork"}];
          v25 = allocator;
        }

        objc_autoreleasePoolPop(v28);
      }

      sub_1000587F4(v25, 0);

      v14 = 0;
      goto LABEL_47;
    }
  }

LABEL_53:
  v14 = 0;
LABEL_47:
  sub_10015CFDC(a1, a2, @"PresentInKnownNetworks", kCFBooleanFalse, v21, v22, v23, v24, v34, v35, v36, v37, allocator, theArray, v40, idx, block, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
  if (!v32)
  {
    v33 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s:Unable to update known network property in private mac network record for <%@>", "WiFiManagerRemoveNetwork", 0}];
    }

    objc_autoreleasePoolPop(v33);
  }

LABEL_27:
  objc_autoreleasePoolPop(v6);
  return v14;
}

uint64_t sub_100081EDC(uint64_t a1, const void *a2, uint64_t a3)
{
  v3 = a1;
  if (!a1)
  {
    sub_10016DE2C();
    return v3;
  }

  v6 = objc_autoreleasePoolPush();
  if (!a2)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiManagerUpdateNetwork"}];
    }

    objc_autoreleasePoolPop(v6);
    return 0;
  }

  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: merge %d, %@", "WiFiManagerUpdateNetwork", a3, a2}];
  }

  objc_autoreleasePoolPop(v6);
  sub_10007D988(a2);
  v7 = sub_100017CE4(v3, @"List of known networks");
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  if (!sub_10014A48C(v7))
  {
    sub_10016DDC0();
    return 0;
  }

  v11 = sub_10000D83C("WiFiManagerUpdateNetwork");
  if (sub_100072D44(v3))
  {
    v9 = *(v3 + 312);
    sub_10015AADC();
    sub_10016DCE4(a2);
  }

  else
  {
    sub_10016DD54();
  }

  sub_1000587F4(v8, 0);

  return 0;
}

void sub_1000829D8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: network is app based, removing access in DA", "WiFiManagerRemoveNetwork_block_invoke"}];
  }

  objc_autoreleasePoolPop(v2);
  v3 = sub_1000A1D68(*(*(*(a1 + 32) + 8) + 24));
  sub_1001399FC(v3, *(*(*(a1 + 32) + 8) + 24));
  v4 = *(*(*(a1 + 32) + 8) + 24);
  if (v4)
  {
    CFRelease(v4);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void sub_100082A7C(uint64_t a1)
{
  sub_10004D93C(*(*(a1 + 32) + 1384), *(a1 + 40));
  CFRelease(*(a1 + 40));
  v2 = *(*(a1 + 32) + 1384);

  CFRelease(v2);
}

void sub_100082AC8(uint64_t a1, const void *a2, uint64_t a3)
{
  if (!a2)
  {
    return;
  }

  v4 = *(a1 + 216);
  if (!v4)
  {
    return;
  }

  v7 = sub_10000A878(a2);
  Value = CFDictionaryGetValue(v4, v7);
  SCPreferencesSynchronize(*(a1 + 1056));
  v9 = SCNetworkSetCopyAll(*(a1 + 1056));
  if (!v9)
  {
    return;
  }

  v10 = v9;
  v23 = a3;
  Count = CFArrayGetCount(v9);
  if (Count < 1)
  {
    goto LABEL_21;
  }

  v12 = Count;
  v13 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v10, v13);
    if (!ValueAtIndex)
    {
      goto LABEL_15;
    }

    v15 = ValueAtIndex;
    Name = SCNetworkSetGetName(ValueAtIndex);
    v17 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: set for network %@: %@", "__WiFiManagerApplyNetworkSettings", sub_10000A878(a2), Name}];
    }

    objc_autoreleasePoolPop(v17);
    if (!Value)
    {
      break;
    }

    if (SCNetworkSetGetSetID(v15))
    {
      SetID = SCNetworkSetGetSetID(v15);
      v19 = Value;
      goto LABEL_14;
    }

LABEL_15:
    if (v12 == ++v13)
    {
      goto LABEL_21;
    }
  }

  if (!Name)
  {
    goto LABEL_15;
  }

  SetID = Name;
  v19 = @"Automatic";
LABEL_14:
  if (!CFEqual(SetID, v19))
  {
    goto LABEL_15;
  }

  sub_10014A48C(*(a1 + 1056));
  v20 = sub_10000D83C("__WiFiManagerApplyNetworkSettings");
  v21 = SCNetworkSetSetCurrent(v15);
  v22 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: set %@ is now active for interface %@", "__WiFiManagerApplyNetworkSettings", Name, v23}];
  }

  objc_autoreleasePoolPop(v22);
  sub_1000587F4(*(a1 + 1056), v21);

LABEL_21:

  CFRelease(v10);
}

uint64_t sub_100082CC4(uint64_t a1, void *a2, int a3, char a4)
{
  if (a4)
  {
    context[0] = a1;
    context[1] = 0xAAAAAAAA00000016;
    context[2] = a2;
    context[3] = 1;
    context[4] = 0;
    CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      if (a3)
      {
        v11 = "Enabling";
      }

      else
      {
        v11 = "Disabling";
      }

      [off_100298C40 WFLog:3 message:{"Temporarily %s %@ from list of know networks", v11, sub_10000A878(a2)}];
    }

    objc_autoreleasePoolPop(v10);
    return 1;
  }

  else
  {
    sub_1000A0060(a2, a3, @"SetNetworkState");
    v7 = sub_100081EDC(a1, a2, 1);
    if (v7)
    {
      v8 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        if (a3)
        {
          v9 = "Enabled";
        }

        else
        {
          v9 = "Disabled";
        }

        [off_100298C40 WFLog:3 message:{"%s auto join for %@ (%@)", v9, sub_10000A878(a2), a2}];
      }

      objc_autoreleasePoolPop(v8);
    }

    if (a3)
    {
      sub_10000D1F8(a1, 1);
      if (_os_feature_enabled_impl())
      {
        sub_1000197A4(a1, 5);
      }

      else
      {
        sub_10007A1F4(a1, 2);
      }
    }
  }

  return v7;
}

uint64_t sub_100082E78(uint64_t a1, const void *a2)
{
  if (a1)
  {
    if (a2)
    {
      if (sub_100072D44(a1))
      {
        v4 = *(a1 + 312);
        sub_10015AADC();
        sub_10016DEF8(a2);
      }

      else
      {
        sub_10016DF68();
      }
    }

    else
    {
      sub_10016DFD4();
    }
  }

  else
  {
    sub_10016E040();
  }

  return 0;
}

void sub_10008305C(uint64_t a1)
{
  sub_10004D93C(*(*(a1 + 32) + 1384), *(a1 + 40));
  CFRelease(*(a1 + 40));
  v2 = *(*(a1 + 32) + 1384);

  CFRelease(v2);
}

void sub_1000830A8(uint64_t a1)
{
  sub_10004D868(*(*(a1 + 32) + 1384), *(a1 + 40));
  CFRelease(*(a1 + 40));
  v2 = *(*(a1 + 32) + 1384);

  CFRelease(v2);
}

void sub_1000830F4(uint64_t a1)
{
  v2 = sub_100072690(*(*(*(a1 + 32) + 8) + 24));
  sub_100070E8C(v2, 2, *(*(*(a1 + 32) + 8) + 24));
  sub_10007DA6C(*(*(*(a1 + 32) + 8) + 24), *(*(*(a1 + 40) + 8) + 24), 2);
  v3 = *(*(*(a1 + 40) + 8) + 24);
  if (v3)
  {
    CFRelease(v3);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v4 = *(*(*(a1 + 32) + 8) + 24);
  if (v4)
  {
    CFRelease(v4);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

uint64_t sub_100083194(void *a1, const __CFString *a2, uint64_t a3)
{
  if (!a1)
  {
    sub_10016E380();
    return 0;
  }

  if (!a2)
  {
    sub_10016E314();
    return 0;
  }

  v4 = a3;
  if (!a3)
  {
    sub_10016E2A8();
    return v4;
  }

  v6 = sub_10009D2E4(a2);
  if (!v6)
  {
    sub_10016E23C();
    return 0;
  }

  v7 = v6;
  v8 = sub_100017CE4(a1, @"List of known networks");
  if (!v8)
  {
LABEL_15:
    CFRelease(v7);
    return 0;
  }

  v9 = v8;
  if (!sub_10014A48C(v8))
  {
    sub_10016E1D0();
    goto LABEL_15;
  }

  v10 = sub_10000D83C("WiFiManagerUpdateNetworksGuessingFailureCount");
  if (sub_100072D44(a1))
  {
    sub_10015C418();
    sub_10016E16C(a2);
  }

  v4 = 0;
  sub_1000587F4(v9, 0);

  CFRelease(v7);
  return v4;
}

uint64_t sub_1000833F8(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1)
  {
    if (a2)
    {
      if (sub_100072D44(a1))
      {
        v4 = *(v2 + 312);
        sub_10015AADC();
        sub_10016E4AC(a2);
      }

      else
      {
        sub_10016E510();
      }
    }

    else
    {
      sub_10016E57C();
    }

    return 0;
  }

  else
  {
    sub_10016E5E8();
  }

  return v2;
}

uint64_t sub_100083510(uint64_t a1, void *a2)
{
  v4 = sub_10000D83C("WiFiManagerMergeKnownNetworksToList");
  if (!a1)
  {
    sub_10016E718();
    v33 = 0;
    goto LABEL_73;
  }

  v5 = objc_autoreleasePoolPush();
  if (!a2)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null path", "WiFiManagerMergeKnownNetworksToList"}];
    }

    objc_autoreleasePoolPop(v5);
    v33 = 0;
    a1 = 0;
    goto LABEL_73;
  }

  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"<%s> Merging known networks to backup file '%@'", "WiFiManagerMergeKnownNetworksToList", a2}];
  }

  objc_autoreleasePoolPop(v5);
  v6 = [[NSDictionary dictionaryWithContentsOfFile:?]];
  v7 = objc_autoreleasePoolPush();
  if (v6)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"<%s> Backup file contents: %@", "WiFiManagerMergeKnownNetworksToList", v6}];
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"<%s> Backup file at specified path does not exist '%@'", "WiFiManagerMergeKnownNetworksToList", a2}];
    }

    objc_autoreleasePoolPop(v7);
    v6 = objc_alloc_init(NSMutableDictionary);
  }

  if (([a2 hasSuffix:@"com.apple.wifi.plist"] & 1) != 0 || objc_msgSend(a2, "hasSuffix:", @"com.apple.wifi-networks.plist"))
  {
    v8 = [v6 objectForKey:@"List of known networks"];
    if (v8)
    {
      v9 = sub_10005894C(v8);
      goto LABEL_18;
    }
  }

  else if ([a2 hasSuffix:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.plist", CWFKnownNetworksStoreIdentifier)}])
  {
    v9 = sub_10015DD48(v6);
LABEL_18:
    Mutable = v9;
    if (v9)
    {
      goto LABEL_20;
    }
  }

  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
LABEL_20:
  v41 = a2;
  if (sub_1000243A0(a1))
  {
    v11 = sub_10015DD48([*(a1 + 1104) dictionaryRepresentation]);
    if (v11)
    {
      goto LABEL_26;
    }
  }

  else if ((sub_10016E654() & 1) == 0)
  {
    v11 = theArray;
    if (theArray)
    {
      goto LABEL_26;
    }
  }

  v11 = CFArrayCreate(kCFAllocatorDefault, 0, 0, &kCFTypeArrayCallBacks);
LABEL_26:
  v43 = v4;
  Count = CFArrayGetCount(v11);
  if (!Count || (v13 = Count, range = CFArrayGetCount(Mutable), v13 < 1))
  {
LABEL_58:
    v32 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"<%s> No new networks found in known networks list", "WiFiManagerMergeKnownNetworksToList"}];
    }

    a1 = 1;
    v33 = v6;
    v4 = v43;
    goto LABEL_69;
  }

  v14 = 0;
  v15 = 1;
  v44 = v11;
  while (2)
  {
    v42 = v15;
    v16 = v14;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v11, v16);
      if (ValueAtIndex)
      {
        break;
      }

LABEL_51:
      if (v13 == ++v16)
      {
        if (v42)
        {
          goto LABEL_58;
        }

        goto LABEL_61;
      }
    }

    v18 = ValueAtIndex;
    v19 = sub_1000A01EC(ValueAtIndex, 0);
    v20 = sub_1000A01EC(v18, 1);
    v21 = sub_10000A540(v18, @"prevJoined");
    v47.location = 0;
    v47.length = range;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(Mutable, v47, v18);
    if (FirstIndexOfValue != -1)
    {
      v23 = CFArrayGetValueAtIndex(Mutable, FirstIndexOfValue);
      if (v23)
      {
        v24 = v23;
        if (v19)
        {
          v25 = sub_1000A01EC(v23, 0);
          if (!v25 || CFDateCompare(v19, v25, 0) == kCFCompareGreaterThan)
          {
            v26 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: found newer auto-join date %@ for network %@", "__MergeNetworkLists", v19, sub_10000A878(v18)}];
            }

            objc_autoreleasePoolPop(v26);
            sub_1000A0170(v24, 0, v19);
            v11 = v44;
          }
        }

        if (v20)
        {
          v27 = sub_1000A01EC(v24, 1);
          if (!v27 || CFDateCompare(v20, v27, 0) == kCFCompareGreaterThan)
          {
            v28 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: found newer last-join date %@ for network %@", "__MergeNetworkLists", v20, sub_10000A878(v18)}];
            }

            objc_autoreleasePoolPop(v28);
            sub_1000A0170(v24, 1, v20);
            v11 = v44;
          }
        }

        if (v21)
        {
          v29 = sub_10000A540(v24, @"prevJoined");
          if (!v29 || CFDateCompare(v21, v29, 0) == kCFCompareGreaterThan)
          {
            v30 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: found newer prev-join date %@ for network %@", "__MergeNetworkLists", v21, sub_10000A878(v18)}];
            }

            objc_autoreleasePoolPop(v30);
            sub_10000AD34(v24, @"prevJoined", v21);
          }
        }
      }

      goto LABEL_51;
    }

    CFArrayAppendValue(Mutable, v18);
    v31 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: added network %@ to the list", "__MergeNetworkLists", sub_10000A878(v18)}];
    }

    objc_autoreleasePoolPop(v31);
    v15 = 0;
    v14 = v16 + 1;
    if (v13 - 1 != v16)
    {
      continue;
    }

    break;
  }

LABEL_61:
  if ([v41 hasSuffix:@"com.apple.wifi.plist"] & 1) != 0 || (objc_msgSend(v41, "hasSuffix:", @"com.apple.wifi-networks.plist"))
  {
    v34 = sub_10003524C(Mutable, 1);
    v33 = v6;
    v4 = v43;
    if (v34)
    {
      v35 = v34;
      [v6 setObject:v34 forKey:@"List of known networks"];
      CFRelease(v35);
    }
  }

  else
  {
    v33 = v6;
    v4 = v43;
    if (CFArrayGetCount(Mutable) >= 1)
    {
      v38 = 0;
      do
      {
        v39 = CFArrayGetValueAtIndex(Mutable, v38);
        if (v39)
        {
          v40 = sub_10001B368(v39);
          if (v40)
          {
            sub_10016E6B0(v40, v6);
          }
        }

        ++v38;
      }

      while (CFArrayGetCount(Mutable) > v38);
    }
  }

  a1 = [v33 writeToFile:v41 atomically:1];
  v32 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v36 = "FAILED to";
    if (a1)
    {
      v36 = "SUCCEEDED to";
    }

    [off_100298C40 WFLog:4 message:{"<%s> %s write backup file contents: %@", "WiFiManagerMergeKnownNetworksToList", v36, v33}];
  }

LABEL_69:
  objc_autoreleasePoolPop(v32);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v11)
  {
    CFRelease(v11);
  }

LABEL_73:

  return a1;
}

CFDictionaryRef sub_100083BE4()
{
  v0 = +[NSUserDefaults standardUserDefaults];
  if (!v0)
  {
    return 0;
  }

  v1 = [(NSUserDefaults *)v0 dictionaryForKey:@"countryCodeUserDefaultData"];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(v2))
  {
    return 0;
  }

  return CFDictionaryCreateCopy(kCFAllocatorDefault, v2);
}

CFStringRef sub_100083C6C()
{
  SystemEncoding = CFStringGetSystemEncoding();
  v1 = CFStringCreateWithCString(kCFAllocatorDefault, "WiFiManager-1980.15 Oct 22 2025 22:40:04", SystemEncoding);
  if (!v1)
  {
    v2 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"failed to format build info string"];
    }

    objc_autoreleasePoolPop(v2);
  }

  return v1;
}

void sub_100083CE8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      if (CFStringCreateMutable(kCFAllocatorDefault, 0))
      {
        sub_10016E784();
      }

      else
      {
        sub_10016E8FC();
      }
    }

    else
    {
      sub_10016E968();
    }
  }

  else
  {
    sub_10016E9D4();
  }
}

uint64_t sub_100083D54(uint64_t result)
{
  if (result)
  {
    return *(result + 2236);
  }

  return result;
}

__CFDictionary *sub_100083D60(uint64_t a1)
{
  if (*(a1 + 200))
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      valuePtr = [*(a1 + 200) getLocaleSource];
      v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
      if (v3)
      {
        v4 = v3;
        CFDictionaryAddValue(Mutable, @"LocaleSource", v3);
        CFRelease(v4);
      }

      [*(a1 + 200) getLocaleLastUpdatedTime];
      v10 = v5;
      v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &v10);
      if (v6)
      {
        v7 = v6;
        CFDictionaryAddValue(Mutable, @"LocaleLastTimeUpdated", v6);
        CFRelease(v7);
      }

      v8 = [*(a1 + 200) getLocaleCountryCode];
      if (v8)
      {
        CFDictionaryAddValue(Mutable, @"LocaleCountryCode", v8);
      }
    }

    else
    {
      sub_10016EA40();
    }
  }

  else
  {
    sub_10016EAAC();
    return 0;
  }

  return Mutable;
}

void sub_100083E8C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  context[0] = a1;
  context[1] = 0xAAAAAAAA00000072;
  memset(&context[2], 0, 24);
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
  if (&_WiFiCloudSyncEngineCreate)
  {
    if (qword_100298C58)
    {
      v3 = *(a1 + 1384);
      if (v3)
      {
        CFRetain(v3);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100084004;
        block[3] = &unk_10025EAD8;
        block[4] = a1;
        dispatch_async(qword_100298C58, block);
      }
    }
  }

  CFRetain(a1);
  v4 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10015E854;
  v5[3] = &unk_10025EAD8;
  v5[4] = a1;
  dispatch_async(v4, v5);
  if (_os_feature_enabled_impl())
  {
    dispatch_async(qword_100298C50, &stru_100260928);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100084004(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1384);
  v3 = WiFiCloudSyncEngineCopyCompleteKVS();
  if (v3)
  {
    v4 = v3;
    v5 = -[NSURL path]([(NSURL *)[+[NSFileManager defaultManager](NSFileManager containerURLForSecurityApplicationGroupIdentifier:"containerURLForSecurityApplicationGroupIdentifier:" URLByAppendingPathComponent:"URLByAppendingPathComponent:", @"com.apple.wifi.syncable-networks.legacy.plist"), "path"];
    if (v5)
    {
      v6 = v5;
      [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v5, 0];
      [v4 writeToFile:v6 atomically:1];
    }
  }

  v7 = *(*(a1 + 32) + 1384);
  v8 = WiFiCloudSyncEngineCopyCompleteKVS();
  if (v8)
  {
    v9 = v8;
    v10 = -[NSURL path]([(NSURL *)[+[NSFileManager defaultManager](NSFileManager containerURLForSecurityApplicationGroupIdentifier:"containerURLForSecurityApplicationGroupIdentifier:" URLByAppendingPathComponent:"URLByAppendingPathComponent:", @"com.apple.wifi.syncable-networks.plist"), "path"];
    if (v10)
    {
      v11 = v10;
      [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v10, 0];
      [v9 writeToFile:v11 atomically:1];
    }
  }

  v12 = *(*(a1 + 32) + 1384);

  CFRelease(v12);
}

CFDictionaryRef sub_100084120(void *a1, int a2)
{
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [(NSUserDefaults *)v4 dictionaryForKey:@"Custom network settings"];
  if (!v5)
  {
    v6 = sub_10001769C(a1, @"Custom network settings");
    if (v6)
    {
      [+[NSUserDefaults standardUserDefaults](NSUserDefaults setObject:"setObject:forKey:" forKey:v6, @"Custom network settings"];
      sub_10007393C(a1, @"Custom network settings", 0, a2);
      v5 = [(NSUserDefaults *)v4 dictionaryForKey:@"Custom network settings"];
      if (!v5)
      {
        return 0;
      }
    }

    else
    {
      v7 = [[NSUserDefaults alloc] initWithSuiteName:@"wifid"];
      if (!v7)
      {
        return 0;
      }

      v8 = v7;
      v9 = [v7 dictionaryForKey:@"Custom network settings"];
      if (v9)
      {
        v10 = v9;
        v11 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: found custom network settings list in legacy NSUserDefaults", "__WiFiManagerCopyCustomNetworkSettingsFromUserDefaults"}];
        }

        objc_autoreleasePoolPop(v11);
        [+[NSUserDefaults standardUserDefaults](NSUserDefaults setObject:"setObject:forKey:" forKey:v10, @"Custom network settings"];
        v5 = [(NSUserDefaults *)v4 dictionaryForKey:@"Custom network settings"];
      }

      else
      {
        v5 = 0;
      }

      if (!v5)
      {
        return 0;
      }
    }
  }

  return CFDictionaryCreateCopy(kCFAllocatorDefault, v5);
}

void sub_1000842B0(id a1)
{
  v1 = [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
  v2 = [+[NSFileManager defaultManager](NSFileManager containerURLForSecurityApplicationGroupIdentifier:"containerURLForSecurityApplicationGroupIdentifier:", @"group.com.apple.wifi.logs"];

  [v1 dumpLogs:v2];
}

void sub_100084310(uint64_t a1, CFDictionaryRef theDict)
{
  valuePtr = 0;
  if (theDict)
  {
    if (a1)
    {
      Value = CFDictionaryGetValue(theDict, @"WiFiTestCommandType");
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
        MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
        if (MutableCopy)
        {
          v6 = MutableCopy;
          if (valuePtr < 0x65)
          {
            switch(valuePtr)
            {
              case 2u:
                v7 = CFDictionaryGetValue(MutableCopy, @"wowStateOverride");
                if (v7)
                {
                  v8 = v7 == kCFBooleanTrue;
                  if (*(a1 + 1171) != v8)
                  {
                    *(a1 + 1171) = v8;
                    sub_10001F1EC(a1, 0, *(a1 + 1170), 2);
                  }
                }

                v9 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: WoW Parameters: WoWEnable %d WoWOverrideState %d lpasEnable %d", "__WiFiManagerSetWoWTestParams", *(a1 + 1168), *(a1 + 1171), *(a1 + 1170)}];
                }

                objc_autoreleasePoolPop(v9);
                break;
              case 5u:
                v10 = [(__CFDictionary *)MutableCopy objectForKeyedSubscript:@"builtInReceiver"];
                v11 = [(__CFDictionary *)v6 objectForKeyedSubscript:@"cellularTx"];
                v12 = [(__CFDictionary *)v6 objectForKeyedSubscript:@"shortCellularTx"];
                if (v10)
                {
                  v13 = [v10 intValue];
                  if (v13 == 1)
                  {
                    v14 = 1;
                  }

                  else
                  {
                    v14 = -1;
                  }

                  if (!v13)
                  {
                    v14 = 0;
                  }

                  *(a1 + 1572) = v14;
                }

                if (v11)
                {
                  v15 = [v11 intValue];
                  if (v15 == 1)
                  {
                    v16 = 1;
                  }

                  else
                  {
                    v16 = -1;
                  }

                  if (!v15)
                  {
                    v16 = 0;
                  }

                  *(a1 + 1576) = v16;
                }

                if (v12)
                {
                  v17 = [v12 intValue];
                  if (v17 == 1)
                  {
                    v18 = 1;
                  }

                  else
                  {
                    v18 = -1;
                  }

                  if (!v17)
                  {
                    v18 = 0;
                  }

                  *(a1 + 1580) = v18;
                }

                v19 = *(a1 + 32);
                context = _NSConcreteStackBlock;
                v22 = 3221225472;
                v23 = sub_100094F40;
                v24 = &unk_10025EAD8;
                v25 = a1;
                dispatch_async(v19, &context);
                break;
              case 1u:
                sub_10016EB18();
                break;
            }
          }

          else
          {
            context = a1;
            v22 = 0xAAAAAAAA00000038;
            v23 = MutableCopy;
            v24 = 1;
            v25 = 0;
            CFSetApplyFunction(*(a1 + 112), sub_100003B88, &context);
          }

          CFRelease(v6);
        }

        else
        {
          sub_10016EB54();
        }
      }

      else
      {
        sub_10016EBB4();
      }
    }

    else
    {
      sub_10016EC20();
    }
  }

  else
  {
    sub_10016EC8C();
  }
}

void *sub_1000845BC(uint64_t a1, const __CFDictionary *a2)
{
  v4 = objc_autoreleasePoolPush();
  valuePtr = 0;
  if (!a2)
  {
    sub_10016EE90();
LABEL_72:
    v9 = 0;
    goto LABEL_20;
  }

  if (!a1)
  {
    sub_10016EE24();
    goto LABEL_72;
  }

  Value = CFDictionaryGetValue(a2, @"WiFiTestCommandType");
  if (!Value)
  {
    sub_10016EDB8();
    goto LABEL_72;
  }

  CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, a2);
  if (!MutableCopy)
  {
    sub_10016ED58();
    goto LABEL_72;
  }

  v7 = MutableCopy;
  if (valuePtr >= 0x65)
  {
    context = a1;
    v39 = 0xAAAAAAAA00000038;
    v40 = MutableCopy;
    v41 = 1;
    v42 = 0;
    CFSetApplyFunction(*(a1 + 112), sub_100003B88, &context);
LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  if (valuePtr == 4)
  {
    v15 = objc_autoreleasePoolPush();
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v47 = 0;
    v16 = dispatch_semaphore_create(0);
    if (!+[WiFiAnalyticsManager sharedWiFiAnalyticsManager])
    {
      v19 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: sharedWiFiAnalyticsManager is nil", "__WiFiManagerDeviceAnalyticsTestParamsAndCopyResponse"}];
      }

      goto LABEL_66;
    }

    if (![+[WiFiAnalyticsManager sharedWiFiAnalyticsManager](WiFiAnalyticsManager "sharedWiFiAnalyticsManager")])
    {
      v19 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: analyticsClient is nil", "__WiFiManagerDeviceAnalyticsTestParamsAndCopyResponse"}];
      }

      goto LABEL_66;
    }

    if ([(__CFDictionary *)v7 objectForKey:@"dump"])
    {
      v17 = [+[WiFiAnalyticsManager sharedWiFiAnalyticsManager](WiFiAnalyticsManager "sharedWiFiAnalyticsManager")];
      context = _NSConcreteStackBlock;
      v39 = 3221225472;
      v40 = sub_1000936CC;
      v41 = &unk_100260CB0;
      v42 = v16;
      v43 = &v44;
      if (![v17 dumpDeviceAnalyticsToFileWithCompletion:&context])
      {
        goto LABEL_67;
      }

      v18 = dispatch_time(0, 60000000000);
      if (!dispatch_semaphore_wait(v16, v18))
      {
        goto LABEL_67;
      }

      v19 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:"Gave up waiting to get Device Analytics Store Dump. Bailing"];
      }

      goto LABEL_66;
    }

    if ([(__CFDictionary *)v7 objectForKey:@"adaptiveRoamParams"])
    {
      v20 = [objc_msgSend(+[WiFiAnalyticsManager sharedWiFiAnalyticsManager](WiFiAnalyticsManager "sharedWiFiAnalyticsManager")];
      v21 = objc_opt_new();
      [v21 setObject:+[NSNumber numberWithShort:](NSNumber forKeyedSubscript:{"numberWithShort:", objc_msgSend(v20, "rssiRoamTrigger")), @"roamTriggerRssi"}];
      [v21 setObject:objc_msgSend(v20 forKeyedSubscript:{"neighborChannels"), @"neighborChannels"}];
      [v21 setObject:objc_msgSend(v20 forKeyedSubscript:{"neighbors"), @"neighborBSSIDs"}];
      v45[3] = v21;
      v22 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s RoamTrigger :%d", "__WiFiManagerDeviceAnalyticsTestParamsAndCopyResponse", objc_msgSend(objc_msgSend(v21, "objectForKeyedSubscript:", @"roamTriggerRssi", "intValue")}];
      }

      objc_autoreleasePoolPop(v22);
      v23 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s neighborChannelsForBSS :%@", "__WiFiManagerDeviceAnalyticsTestParamsAndCopyResponse", objc_msgSend(v21, "objectForKeyedSubscript:", @"neighborChannels"}];
      }

      objc_autoreleasePoolPop(v23);
      v24 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s neighborsForBSS :%@", "__WiFiManagerDeviceAnalyticsTestParamsAndCopyResponse", objc_msgSend(v21, "objectForKeyedSubscript:", @"neighborBSSIDs"}];
      }

      objc_autoreleasePoolPop(v24);
      goto LABEL_67;
    }

    if ([(__CFDictionary *)v7 objectForKey:@"resetIntervals"])
    {
      v25 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Resetting configuration", "__WiFiManagerDeviceAnalyticsTestParamsAndCopyResponse"}];
      }

      objc_autoreleasePoolPop(v25);
      [+[WiFiManagerAnalytics sharedInstance](WiFiManagerAnalytics setDeviceAnalyticsConfiguration:"setDeviceAnalyticsConfiguration:", 0];
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
    }

    else
    {
      v26 = [(__CFDictionary *)v7 valueForKey:@"procIntervalSecs"];
      v27 = [(__CFDictionary *)v7 valueForKey:@"ageOutIntervalSecs"];
      v28 = [(__CFDictionary *)v7 valueForKey:@"ageOutTestDaysDiff"];
      v29 = [(__CFDictionary *)v7 valueForKey:@"roamSamples"];
    }

    if (v26 || v27 || v28)
    {
      v31 = +[NSMutableDictionary dictionary];
      if (v26)
      {
        [v26 doubleValue];
        if (v32 < 0.0)
        {
          v19 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s: invalid procIntervalSecs", "__WiFiManagerDeviceAnalyticsTestParamsAndCopyResponse"}];
          }

          goto LABEL_66;
        }

        [v31 setObject:v26 forKey:@"WA_DEVICE_ANALYTICS_PROCESSING_INTERVAL_SECS"];
      }

      if (v27)
      {
        [v27 doubleValue];
        if (v33 < 0.0)
        {
          v19 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s: invalid ageOutIntervalNum", "__WiFiManagerDeviceAnalyticsTestParamsAndCopyResponse"}];
          }

          goto LABEL_66;
        }

        [v31 setObject:v27 forKey:@"WA_DEVICE_ANALYTICS_AGE_OUT_INTERVAL"];
      }

      if (v28)
      {
        [v28 unsignedLongValue];
        [v31 setObject:v28 forKey:@"WA_DEVICE_ANALYTICS_CONFIG_AGE_OUT_TEST_DAYS_DIFF"];
      }

      if (v29)
      {
        [v29 unsignedLongValue];
        [v31 setObject:v29 forKey:@"WA_DEVICE_ANALYTICS_CONFIG_ROAM_SAMPLES"];
      }

      v34 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Setting configuration: %s", "__WiFiManagerDeviceAnalyticsTestParamsAndCopyResponse", -[NSString UTF8String](+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@", v31), "UTF8String")}];
      }

      objc_autoreleasePoolPop(v34);
      [+[WiFiManagerAnalytics sharedInstance](WiFiManagerAnalytics setDeviceAnalyticsConfiguration:"setDeviceAnalyticsConfiguration:", v31];
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: Invalid configuration %s", "__WiFiManagerDeviceAnalyticsTestParamsAndCopyResponse", -[NSString UTF8String](+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@", v7), "UTF8String")}];
      }

      objc_autoreleasePoolPop(v30);
    }

    v35 = +[WiFiManagerAnalytics sharedInstance];
    context = _NSConcreteStackBlock;
    v39 = 3221225472;
    v40 = sub_100093774;
    v41 = &unk_100260CD8;
    v42 = v16;
    v43 = &v44;
    [(WiFiManagerAnalytics *)v35 getDeviceAnalyticsConfigurationWithCompletion:&context];
    v36 = dispatch_time(0, 60000000000);
    if (!dispatch_semaphore_wait(v16, v36))
    {
LABEL_67:
      dispatch_release(v16);
      v9 = v45[3];
      _Block_object_dispose(&v44, 8);
      objc_autoreleasePoolPop(v15);
      goto LABEL_19;
    }

    v19 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:"Gave up waiting to getDeviceAnalyticsConfigurationWithCompletion. Bailing"];
    }

LABEL_66:
    objc_autoreleasePoolPop(v19);
    goto LABEL_67;
  }

  if (valuePtr != 5)
  {
    goto LABEL_18;
  }

  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = v8;
  if (!v8)
  {
    sub_10016ECF8();
    goto LABEL_19;
  }

  v10 = *(a1 + 1572) + 1;
  if (v10 <= 2)
  {
    [v8 setObject:off_100260E18[v10] forKeyedSubscript:@"builtInReceiver"];
  }

  v11 = *(a1 + 1576) + 1;
  if (v11 <= 2)
  {
    [v9 setObject:off_100260E18[v11] forKeyedSubscript:@"cellularTx"];
  }

  v12 = *(a1 + 1580);
  switch(v12)
  {
    case -1:
      v13 = @"disabled";
      goto LABEL_38;
    case 0:
      v13 = @"off";
      goto LABEL_38;
    case 1:
      v13 = @"on";
LABEL_38:
      [v9 setObject:v13 forKeyedSubscript:@"shortCellularTx"];
      break;
  }

LABEL_19:
  CFRelease(v7);
LABEL_20:
  objc_autoreleasePoolPop(v4);
  return v9;
}

void sub_100084E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100084E8C(CFArrayRef *a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Checking password and network status for %@", "WiFiManagerCheckForUnexpectedPasswordDelete", sub_10000A878(a2)}];
  }

  objc_autoreleasePoolPop(v4);
  v5 = a1 + 346;
  if (CFArrayGetCount(a1[346]))
  {
    sub_10016EEFC(a1 + 346);
LABEL_36:
    v13 = 0;
    v7 = 0;
    goto LABEL_21;
  }

  if (!sub_10009F2A4(a2))
  {
    sub_10016F138(a2);
    goto LABEL_36;
  }

  if (sub_100009730(a2))
  {
    sub_10016EF78(a2);
    goto LABEL_36;
  }

  v6 = sub_100020030(a1);
  v7 = v6;
  if (!v6)
  {
    sub_10016F0CC();
LABEL_42:
    v13 = 0;
    goto LABEL_21;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
  if (!ValueAtIndex)
  {
    sub_10016F060();
    goto LABEL_42;
  }

  v9 = ValueAtIndex;
  v10 = sub_1000C3F38(ValueAtIndex);
  v11 = objc_autoreleasePoolPush();
  if (!v10)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Most recently joined network is null", "WiFiManagerCheckForUnexpectedPasswordDelete"}];
    }

    objc_autoreleasePoolPop(v11);
    goto LABEL_42;
  }

  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Most recently joined network was: %@", "WiFiManagerCheckForUnexpectedPasswordDelete", v10}];
  }

  objc_autoreleasePoolPop(v11);
  v12 = sub_1000C4450(v9, a2);
  v13 = v12;
  if (!v12)
  {
    sub_10016EFF4();
    goto LABEL_21;
  }

  if (!CFEqual(v12, v10))
  {
LABEL_21:
    v15 = 0;
    goto LABEL_22;
  }

  v14 = sub_10002A1CC(a2);
  if (v14)
  {
    v15 = v14;
    v16 = objc_autoreleasePoolPush();
    v17 = off_100298C40;
    if (off_100298C40)
    {
      v18 = sub_10000A878(v13);
      v19 = sub_1000C3F38(v9);
      [v17 WFLog:3 message:{"%s: Not recording password for matchingNetworkCopy %@ and previously joined network %@", "WiFiManagerCheckForUnexpectedPasswordDelete", v18, sub_10000A878(v19)}];
    }

    objc_autoreleasePoolPop(v16);
    goto LABEL_22;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v15 = CFDateCreate(kCFAllocatorDefault, Current);
  sub_1000A12E4(v13, v15);
  CFArrayAppendValue(*v5, v13);
  v21 = objc_autoreleasePoolPush();
  v22 = off_100298C40;
  if (off_100298C40)
  {
    v23 = sub_10000A878(v13);
    [v22 WFLog:3 message:{"%s: Recording that the password for %@ is not in the keychain. Network count with deleted passwords is now %ld", "WiFiManagerCheckForUnexpectedPasswordDelete", v23, CFArrayGetCount(*v5)}];
  }

  objc_autoreleasePoolPop(v21);
  if (v15)
  {
    CFRelease(v15);
    goto LABEL_21;
  }

LABEL_22:
  v24 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Status of networks with deleted keychain password, count: %ld", "WiFiManagerCheckForUnexpectedPasswordDelete", CFArrayGetCount(*v5)}];
  }

  objc_autoreleasePoolPop(v24);
  if (v13)
  {
    CFRelease(v13);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v15)
  {

    CFRelease(v15);
  }
}

void sub_1000851A8(uint64_t a1, char a2)
{
  *(a1 + 1472) = a2;
  context[0] = a1;
  context[1] = 0xAAAAAAAA0000002ALL;
  context[2] = 0;
  context[3] = 1;
  context[4] = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
}

void sub_100085200(uint64_t a1, int a2, int a3, int a4, int a5)
{
  if (a1)
  {
    if (*(a1 + 1464) != a2 || *(a1 + 1468) != a3 || *(a1 + 1469) != a4 || *(a1 + 1470) != a5)
    {
      *(a1 + 1464) = a2;
      *(a1 + 1468) = a3;
      *(a1 + 1469) = a4;
      *(a1 + 1470) = a5;
      context[0] = a1;
      context[1] = 0xAAAAAAAA00000029;
      context[2] = 0;
      context[3] = 1;
      context[4] = 0;
      CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
    }
  }

  else
  {
    sub_10016F1B4();
  }
}

void sub_1000852A0(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s", "WiFiManagerSetCoexMgrXpcObj"}];
    }

    objc_autoreleasePoolPop(v4);
    *(a1 + 1400) = a2;
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null manager", "WiFiManagerSetCoexMgrXpcObj"}];
    }

    objc_autoreleasePoolPop(v4);
  }
}

void sub_100085360(uint64_t a1, int a2)
{
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v5 = "FALSE";
    if (a2)
    {
      v5 = "TRUE";
    }

    [off_100298C40 WFLog:3 message:{"%s: builtInReceiver = %s", "WiFiManagerSetBuiltInReceiver", v5}];
  }

  objc_autoreleasePoolPop(v4);
  *(a1 + 1560) = a2 != 0;
  *(a1 + 1564) = 1;
  *(a1 + 1568) = 0;
  context[0] = a1;
  context[1] = 0xAAAAAAAA00000009;
  context[2] = 0;
  context[3] = 1;
  context[4] = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
}

void sub_100085434(uint64_t a1, double a2)
{
  v3 = a2;
  if (a1)
  {
    v2[0] = a1;
    v2[1] = 0xAAAAAAAA0000005DLL;
    v2[2] = &v3;
    v2[3] = 1;
    v2[4] = 0;
    CFSetApplyFunction(*(a1 + 112), sub_100003B88, v2);
  }

  else
  {
    sub_10016F220();
  }
}

void sub_10008549C(uint64_t a1, char a2, char a3)
{
  if (a1)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_100085524;
      v5[3] = &unk_100260948;
      v6 = a2;
      v5[4] = a1;
      v7 = a3;
      dispatch_async(v4, v5);
    }
  }
}

void sub_100085524(uint64_t a1)
{
  v2 = *(a1 + 40) != 0;
  v3 = *(a1 + 32);
  if (*(v3 + 1564) != v2 || *(v3 + 1568) != *(a1 + 41))
  {
    *(v3 + 1564) = v2;
    *(v3 + 1568) = *(a1 + 41);
    context[0] = v3;
    context[1] = 0xAAAAAAAA00000009;
    context[2] = 0;
    context[3] = 1;
    context[4] = 0;
    CFSetApplyFunction(*(v3 + 112), sub_100003B88, context);
    v4 = *(a1 + 32);
    v5 = *(v4 + 1560);
    if (v5 != -1)
    {
      [*(v4 + 2656) setSARState:*(v4 + 1564) != 0 builtInReceiverOn:v5 != 0];
    }
  }
}

void sub_1000855E8(uint64_t a1, char a2, char a3)
{
  if (a1)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_100085670;
      v5[3] = &unk_100260948;
      v6 = a2;
      v7 = a3;
      v5[4] = a1;
      dispatch_async(v4, v5);
    }
  }
}

void sub_100085670(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v3 = "Active";
    if (!*(a1 + 40))
    {
      v3 = "Inactive";
    }

    if (*(a1 + 41))
    {
      v4 = "WiFi";
    }

    else
    {
      v4 = "Cellular";
    }

    [off_100298C40 WFLog:3 message:{"%s: WiFi Calling registration %s on %s", "WiFiManagerWiFiCallingIMSRegistrationCallback_block_invoke", v3, v4}];
  }

  objc_autoreleasePoolPop(v2);
  if (*(a1 + 40))
  {
    v5 = *(a1 + 41) == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 1170);

  sub_10001F1EC(v6, 0, v7, v5);
}

void sub_100085748(uint64_t a1, const void *a2, uint64_t a3, int a4, int a5)
{
  *(a1 + 2312) = 1;
  context[0] = a1;
  context[1] = 0xAAAAAAAA0000004BLL;
  context[2] = 0;
  context[3] = 1;
  context[4] = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
  if (sub_10000D690(a1))
  {
    sub_10015EDBC(a1);
    sub_10015EF18(a1, a3);
    if (a3)
    {
      v16 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Enable AutoJoin On Companion AAJ trigger", "WiFiManagerSetCompanionAssistedAutoJoin"}];
      }

      objc_autoreleasePoolPop(v16);
      sub_10000D4C0(a1, 1);
    }
  }

  *(a1 + 1664) = a2 != 0;
  v10 = *(a1 + 1672);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 1672) = 0;
  }

  if (a2)
  {
    v11 = CFRetain(a2);
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 1672) = v11;
  v12 = *(a1 + 1664);
  v13 = objc_autoreleasePoolPush();
  if (v12)
  {
    if (off_100298C40)
    {
      v14 = *(a1 + 16);
      if (*(a1 + 16))
      {
        v14 = *(a1 + 24) != 0;
      }

      [off_100298C40 WFLog:3 message:{"%s: is autojoin enabled %d", "WiFiManagerSetCompanionAssistedAutoJoin", v14}];
    }

    objc_autoreleasePoolPop(v13);
    if (*(a1 + 16) && *(a1 + 24))
    {
      *(a1 + 1688) = a4;
      *(a1 + 1692) = a5;
      v17 = *(a1 + 1680);
      v18 = dispatch_time(0, 30000000000);
      dispatch_source_set_timer(v17, v18, 0xFFFFFFFFFFFFFFFFLL, 0);
      sub_10015EFB0(a1, a5, 1);
      v19 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: ###START_CAAJ", "WiFiManagerSetCompanionAssistedAutoJoin"}];
      }

      objc_autoreleasePoolPop(v19);
    }
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: ###STOP_CAAJ", "WiFiManagerSetCompanionAssistedAutoJoin"}];
    }

    objc_autoreleasePoolPop(v13);
    dispatch_source_set_timer(*(a1 + 1680), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    sub_10015EFB0(a1, 0, 0);
  }

  sub_100070E8C(v15, 2, a1);
  sub_100072D44(a1);
  sub_1000731D0(a1, *(a1 + 232));
}

void sub_1000859C0(uint64_t a1)
{
  context[0] = a1;
  context[1] = 0xAAAAAAAA0000004BLL;
  context[2] = 0;
  context[3] = 1;
  context[4] = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
}

uint64_t sub_100085A14(uint64_t a1)
{
  if (CFSetGetCount(*(a1 + 152)))
  {
    return 1;
  }

  else
  {
    return [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
  }
}

uint64_t sub_100085A4C(uint64_t a1)
{
  if (CFSetGetCount(*(a1 + 176)))
  {
    return 1;
  }

  else
  {
    return [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
  }
}

uint64_t sub_100085A84(uint64_t a1)
{
  if (CFSetGetCount(*(a1 + 160)))
  {
    return 1;
  }

  else
  {
    return [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
  }
}

uint64_t sub_100085ABC(uint64_t a1)
{
  if (CFSetGetCount(*(a1 + 1176)))
  {
    return 1;
  }

  else
  {
    return [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
  }
}

uint64_t sub_100085AF4(uint64_t a1)
{
  if (sub_100085A84(a1) || sub_100085A14(a1) || sub_100085ABC(a1))
  {
    return 1;
  }

  return sub_100085A4C(a1);
}

uint64_t sub_100085B60(void *a1)
{
  v1 = sub_100085BDC(a1, @"WiFiCountryBandSupportKey", 3);
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: WiFiCC : CountryBandSupport = %d", "WiFiManagerGetCountryBandSupport", v1}];
  }

  objc_autoreleasePoolPop(v2);
  return v1;
}

uint64_t sub_100085BDC(void *a1, const __CFString *a2, uint64_t a3)
{
  v5 = sub_10001769C(a1, a2);
  if (v5)
  {
    v6 = v5;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v6))
    {
      valuePtr = -1431655766;
      if (CFNumberGetValue(v6, kCFNumberIntType, &valuePtr))
      {
        return valuePtr;
      }

      else
      {
        v8 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: out of range value for key %@; using %d", "__WiFiManagerGetCIntProperty", a2, a3}];
        }

        objc_autoreleasePoolPop(v8);
      }
    }
  }

  return a3;
}

void sub_100085C9C(uint64_t a1, uint64_t a2)
{
  if (a2 <= 0x64)
  {
    context[9] = v2;
    context[10] = v3;
    if (*(a1 + 1656) != a2)
    {
      kdebug_trace();
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"setting thermal index from %d to %d", *(a1 + 1656), a2}];
      }

      objc_autoreleasePoolPop(v6);
      *(a1 + 1656) = a2;
      context[0] = a1;
      context[1] = 0xAAAAAAAA00000044;
      context[2] = a2;
      context[3] = 1;
      context[4] = 0;
      CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
    }
  }
}

void sub_100085D7C(uint64_t a1, int a2, const __CFString *a3)
{
  kdebug_trace();
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"InCar notificaion received. UUID %@", a3}];
  }

  objc_autoreleasePoolPop(v6);

  sub_100085E20(a1, a2, a3);
}

void sub_100085E20(uint64_t a1, int a2, const __CFString *a3)
{
  if (*(a1 + 1608) != a2)
  {
    v23 = v3;
    v24 = v4;
    v6 = a2;
    if (a2 && a3)
    {
      sub_100070E8C(a1, 2, a1);
      sub_100072D44(a1);
      v8 = *(a1 + 232);
      Count = CFArrayGetCount(v8);
      if (Count < 1)
      {
        return;
      }

      v10 = Count;
      v11 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v8, v11);
        if (ValueAtIndex)
        {
          v13 = ValueAtIndex;
          v14 = sub_10000A540(ValueAtIndex, @"CARPLAY_UUID");
          if (v14)
          {
            if (CFStringCompare(v14, a3, 0) == kCFCompareEqualTo)
            {
              break;
            }
          }
        }

        if (v10 == ++v11)
        {
          return;
        }
      }

      if (!sub_10001CF90(v13))
      {
        v18 = sub_10000A540(v13, @"networkDisabledReason");
        if (v18)
        {
          if (CFStringCompare(v18, @"UserDisabledCarPlay", 0) == kCFCompareEqualTo)
          {
            v19 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: Re-enable auto join of network %@", "__WiFiManagerIsCarPlayAutoJoinEnabled", sub_10000A878(v13)}];
            }

            objc_autoreleasePoolPop(v19);
            sub_10009FEC0(v13, 1);
            sub_100081EDC(a1, v13, 1);
          }
        }
      }
    }

    v15 = *(a1 + 1616);
    if (v15)
    {
      CFRelease(v15);
      *(a1 + 1616) = 0;
    }

    *(a1 + 1608) = v6;
    sub_100070E8C(v15, 2, a1);
    sub_100072D44(a1);
    if (*(a1 + 1608))
    {
      *(a1 + 1616) = CFRetain(a3);
      if (*(a1 + 1409) && !*(a1 + 26))
      {
        *(a1 + 1608) = 0;
        *(a1 + 1624) = 1;
        return;
      }

      *(a1 + 1624) = 0;
      v16 = *(a1 + 1640);
      v17 = dispatch_time(0, 30000000000);
      dispatch_source_set_timer(v16, v17, 0xFFFFFFFFFFFFFFFFLL, 0);
      context = a1;
      v21 = 0xAAAAAA0100000042;
      v22 = 0xAAAAAAAA00000001;
    }

    else
    {
      dispatch_source_set_timer(*(a1 + 1640), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      context = a1;
      v21 = 0xAAAAAA0000000042;
      v22 = 0xAAAAAAAA00000000;
    }

    CFSetApplyFunction(*(a1 + 112), sub_100003B88, &context);
    sub_1000731D0(a1, *(a1 + 232));
    if (_os_feature_enabled_impl())
    {
      sub_1000084DC(a1);
    }
  }
}

void sub_1000860C8(const __CFArray *a1, const void *a2)
{
  if (a1)
  {
    v4 = sub_100021720(a1);
    if (v4)
    {
      v5 = v4;
      if (sub_1000A158C(v4) == 1 && sub_10001CF90(v5))
      {
        Current = CFAbsoluteTimeGetCurrent();
        v7 = CFDateCreate(kCFAllocatorDefault, Current);
        if (v7)
        {
          v8 = v7;
          sub_10000AD34(v5, @"networkDisabledTimestamp", v7);
          CFRelease(v8);
        }

        sub_10000AD34(v5, @"networkDisabledClientName", a2);
        sub_10000AD34(v5, @"networkDisabledReason", @"UserDisabledCarPlay");
        sub_10000AD34(v5, @"enabled", kCFBooleanFalse);
        sub_100081EDC(a1, v5, 1);
        v9 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Disabling CarPlay auto join until next incar comes.", "WiFiManagerDisableAutoJoinForCarPlay"}];
        }

        objc_autoreleasePoolPop(v9);
      }

      CFRelease(v5);
    }
  }
}

void sub_100086228(uint64_t a1, uint64_t val, char a3)
{
  state64 = 0;
  if (notify_is_valid_token(val))
  {
    notify_get_state(val, &state64);
    v6 = *(a1 + 32);
    if (v6)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100093B18;
      block[3] = &unk_100260D18;
      block[4] = a1;
      block[5] = state64;
      v9 = a3;
      dispatch_async(v6, block);
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: probably WiFiManager is in middle of closing.", "__WiFiManagerNotifyBatterySaverModeConfiguration"}];
      }

      objc_autoreleasePoolPop(v7);
    }
  }

  else
  {
    sub_10016F364(val);
  }
}

void sub_100086338(uint64_t a1, CFArrayRef theArray)
{
  MutableCopy = *(a1 + 1704);
  if (theArray)
  {
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
      *(a1 + 1704) = 0;
    }

    MutableCopy = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, theArray);
    *(a1 + 1704) = MutableCopy;
  }

  context[0] = a1;
  context[1] = 0xAAAAAAAA00000043;
  context[2] = MutableCopy;
  context[3] = 1;
  context[4] = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
}

CFArrayRef sub_1000863CC(uint64_t a1)
{
  v2 = *(a1 + 1704);
  if (!v2 || !CFArrayGetCount(v2))
  {
    return 0;
  }

  v3 = *(a1 + 1704);

  return CFArrayCreateCopy(kCFAllocatorDefault, v3);
}

void sub_100086430(uint64_t a1, int a2)
{
  v3 = a2;
  if (a1)
  {
    if (*(a1 + 2360) != a2)
    {
      *(a1 + 2360) = a2;
      v2[0] = a1;
      v2[1] = 0xAAAAAAAA00000052;
      v2[2] = &v3;
      v2[3] = 1;
      v2[4] = 0;
      CFSetApplyFunction(*(a1 + 112), sub_100003B88, v2);
    }
  }

  else
  {
    sub_10016F3D4();
  }
}

uint64_t sub_1000864A8(uint64_t a1)
{
  if (byte_100298C78)
  {
    return 0;
  }

  v2 = *(a1 + 120);
  if ((v2 - 1) < 3)
  {
    return 1;
  }

  if (v2 != 11)
  {
    return 0;
  }

  result = _os_feature_enabled_impl();
  if (result)
  {
    result = _os_feature_enabled_impl();
    if (result)
    {
      result = _os_feature_enabled_impl();
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL sub_10008653C(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = 0;
  if (a1 && a2)
  {
    if ([*(a1 + 1792) isAuthorized])
    {
      v5 = [WiFiLocationManager isLocationValid:a2 uptoSeconds:0 isHighAccuracy:3600.0]!= 0;
    }

    else
    {
      v5 = 0;
    }
  }

  objc_autoreleasePoolPop(v4);
  return v5;
}

id sub_1000865C0(uint64_t a1, id a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1)
  {
    if (a2)
    {
      a2 = [+[WiFiAnalyticsManager sharedWiFiAnalyticsManager](WiFiAnalyticsManager "sharedWiFiAnalyticsManager")];
    }

    else
    {
      sub_10016F440();
    }
  }

  else
  {
    sub_10016F4AC();
    a2 = 0;
  }

  objc_autoreleasePoolPop(v4);
  return a2;
}

void sub_100086648(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = objc_autoreleasePoolPush();
  if (a1)
  {
    if (a2)
    {
      if (fabs(a3) > 90.0)
      {
        sub_10016F584();
      }

      else if (fabs(a4) > 180.0)
      {
        sub_10016F518();
      }

      else
      {
        v9 = [[CLLocation alloc] initWithLatitude:a3 longitude:a4];
        sub_100147190();
      }
    }

    else
    {
      sub_10016F5F0();
    }
  }

  else
  {
    sub_10016F65C();
  }

  objc_autoreleasePoolPop(v8);
}

id sub_10008671C(id a1, double a2, double a3)
{
  v6 = objc_autoreleasePoolPush();
  if (!a1)
  {
    sub_10016F7A0();
    goto LABEL_5;
  }

  if (fabs(a2) > 90.0)
  {
    sub_10016F734();
LABEL_9:
    a1 = 0;
    goto LABEL_5;
  }

  if (fabs(a3) > 180.0)
  {
    sub_10016F6C8();
    goto LABEL_9;
  }

  v7 = [[CLLocation alloc] initWithLatitude:a2 longitude:a3];
  a1 = [+[WiFiAnalyticsManager sharedWiFiAnalyticsManager](WiFiAnalyticsManager "sharedWiFiAnalyticsManager")];

LABEL_5:
  objc_autoreleasePoolPop(v6);
  return a1;
}

id sub_1000867EC(uint64_t a1, id a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1)
  {
    if (a2)
    {
      a2 = [+[WiFiAnalyticsManager sharedWiFiAnalyticsManager](WiFiAnalyticsManager "sharedWiFiAnalyticsManager")];
    }

    else
    {
      sub_10016F80C();
    }
  }

  else
  {
    sub_10016F878();
    a2 = 0;
  }

  objc_autoreleasePoolPop(v4);
  return a2;
}

id sub_100086860(uint64_t a1, id a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1)
  {
    if (a2)
    {
      a2 = [+[WiFiAnalyticsManager sharedWiFiAnalyticsManager](WiFiAnalyticsManager "sharedWiFiAnalyticsManager")];
    }

    else
    {
      sub_10016F8E4();
    }
  }

  else
  {
    sub_10016F950();
    a2 = 0;
  }

  objc_autoreleasePoolPop(v4);
  return a2;
}

id sub_1000868D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  if (!a1)
  {
    sub_10016FA28();
LABEL_7:
    v7 = 0;
    goto LABEL_4;
  }

  if (!(a2 | a3))
  {
    sub_10016F9BC();
    goto LABEL_7;
  }

  v7 = [+[WiFiAnalyticsManager sharedWiFiAnalyticsManager](WiFiAnalyticsManager "sharedWiFiAnalyticsManager")];
LABEL_4:
  objc_autoreleasePoolPop(v6);
  return v7;
}

id sub_100086954(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1)
  {
    v5 = [+[WiFiAnalyticsManager sharedWiFiAnalyticsManager](WiFiAnalyticsManager "sharedWiFiAnalyticsManager")];
  }

  else
  {
    sub_10016FA94();
    v5 = 0;
  }

  objc_autoreleasePoolPop(v4);
  return v5;
}

id sub_1000869C0(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1)
  {
    v5 = [+[WiFiAnalyticsManager sharedWiFiAnalyticsManager](WiFiAnalyticsManager "sharedWiFiAnalyticsManager")];
  }

  else
  {
    sub_10016FB00();
    v5 = 0;
  }

  objc_autoreleasePoolPop(v4);
  return v5;
}

id sub_100086A2C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (!a1)
  {
    sub_10016FBD8();
LABEL_7:
    v12 = 0;
    goto LABEL_4;
  }

  v3 = [objc_msgSend(*(a1 + 1792) "latestLocation")];
  if (!v3)
  {
    sub_10016FB6C();
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [NSDictionary alloc];
  [v4 coordinate];
  v6 = [NSNumber numberWithDouble:?];
  [v4 coordinate];
  v8 = [NSNumber numberWithDouble:v7];
  [v4 horizontalAccuracy];
  v10 = [NSNumber numberWithInt:v9];
  [objc_msgSend(v4 "timestamp")];
  v12 = [v5 initWithObjectsAndKeys:{v6, @"latitude", v8, @"longitude", v10, @"accuracy", +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", v11), @"staleness", 0}];

LABEL_4:
  objc_autoreleasePoolPop(v2);
  return v12;
}

void sub_100086B70(uint64_t a1, double a2)
{
  if (a1)
  {
    if (a2 > 0.0)
    {
      return;
    }

    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: invalid geoTagsUnusedRetentionPeriodInSeconds %f", "WiFiManagerRemoveUnusedNetworkGeotags", *&a2}];
    }
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: manager is NULL", "WiFiManagerRemoveUnusedNetworkGeotags", v4}];
    }
  }

  objc_autoreleasePoolPop(v3);
}

void sub_100086C3C(uint64_t a1, uint64_t a2, double a3)
{
  if (a1)
  {
    if (a3 <= 0.0)
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: invalid geoTagsUnusedRetentionPeriodInSeconds %f", "WiFiManagerScheduleUnusedNetworkGeotagsRemovalTest", *&a3}];
      }
    }

    else
    {
      if (a2)
      {
        return;
      }

      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: invalid intervalMinutes %lu", "WiFiManagerScheduleUnusedNetworkGeotagsRemovalTest", 0}];
      }
    }
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: manager is NULL", "WiFiManagerScheduleUnusedNetworkGeotagsRemovalTest", v5}];
    }
  }

  objc_autoreleasePoolPop(v4);
}

void sub_100086D3C(uint64_t a1)
{
  if (!a1)
  {
    sub_10016FC44();
  }
}

__CFDictionary *sub_100086D60(uint64_t a1)
{
  if (!*(a1 + 1824))
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v3 = sub_10003EC9C(*(a1 + 1824));
    if (v3)
    {
      v4 = v3;
      v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, v3);
      if (!v5)
      {
        goto LABEL_19;
      }

      v6 = v5;
      CFDictionaryAddValue(Mutable, @"WiFiToggleErrorCounter", v5);
      CFRelease(v6);
      v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, v4 + 28);
      if (!v7)
      {
        goto LABEL_19;
      }

      v8 = v7;
      CFDictionaryAddValue(Mutable, @"WiFiToggleErrorUserConfirmCounter", v7);
      CFRelease(v8);
      v9 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, v4 + 4);
      if (!v9)
      {
        goto LABEL_19;
      }

      v10 = v9;
      CFDictionaryAddValue(Mutable, @"WiFiNoNetworksFoundErrorCounter", v9);
      CFRelease(v10);
      v11 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, v4 + 32);
      if (!v11)
      {
        goto LABEL_19;
      }

      v12 = v11;
      CFDictionaryAddValue(Mutable, @"WiFiNoNetworksFoundErrorUserConfirmCounter", v11);
      CFRelease(v12);
      v13 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, v4 + 8);
      if (!v13)
      {
        goto LABEL_19;
      }

      v14 = v13;
      CFDictionaryAddValue(Mutable, @"WiFiSlowAutoJoinErrorCounter", v13);
      CFRelease(v14);
      v15 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, v4 + 36);
      if (!v15)
      {
        goto LABEL_19;
      }

      v16 = v15;
      CFDictionaryAddValue(Mutable, @"WiFiSlowAutoJoinErrorUserConfirmCounter", v15);
      CFRelease(v16);
      v17 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, v4 + 12);
      if (!v17)
      {
        goto LABEL_19;
      }

      v18 = v17;
      CFDictionaryAddValue(Mutable, @"WiFiTxDataStallErrorCounter", v17);
      CFRelease(v18);
      v19 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, v4 + 40);
      if (!v19)
      {
        goto LABEL_19;
      }

      v20 = v19;
      CFDictionaryAddValue(Mutable, @"WiFiTxDataStallErrorUserConfirmCounter", v19);
      CFRelease(v20);
      v21 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, v4 + 16);
      if (!v21)
      {
        goto LABEL_19;
      }

      v22 = v21;
      CFDictionaryAddValue(Mutable, @"WiFiRxDataStallErrorCounter", v21);
      CFRelease(v22);
      v23 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, v4 + 44);
      if (v23)
      {
        v24 = v23;
        CFDictionaryAddValue(Mutable, @"WiFiRxDataStallErrorUserConfirmCounter", v23);
        CFRelease(v24);
      }

      else
      {
LABEL_19:
        sub_10016FCB0();
      }
    }

    else
    {
      sub_10016FD1C();
    }
  }

  else
  {
    sub_10016FD88();
  }

  return Mutable;
}

id sub_100087044(uint64_t a1)
{
  if (!a1)
  {
    sub_10016FE60();
    return 0;
  }

  v1 = *(a1 + 1824);
  if (!v1)
  {
    sub_10016FDF4();
    return 0;
  }

  return sub_10003EC9C(v1);
}

uint64_t sub_10008708C(uint64_t a1, _WORD *a2, void *a3)
{
  if (!a1)
  {
    sub_10016FF38();
    return 4294963396;
  }

  if (!a2 || !a3)
  {
    sub_10016FECC();
    return 4294963396;
  }

  result = 0;
  *a2 = *(a1 + 1488);
  *a3 = *(a1 + 1496);
  return result;
}

void sub_1000870E0(uint64_t a1)
{
  if (a1)
  {
    context[0] = a1;
    context[1] = 0xAAAAAAAA00000046;
    context[2] = 0;
    context[3] = 1;
    context[4] = 0;
    CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
  }

  else
  {
    sub_100170010();
  }
}

const __CFString *sub_100087140(int a1)
{
  if ((a1 + 1) > 9)
  {
    return @"Unknown";
  }

  else
  {
    return off_100260E30[a1 + 1];
  }
}

uint64_t sub_100087168(uint64_t result)
{
  if (result)
  {
    return *(result + 1056);
  }

  return result;
}

void sub_100087174(uint64_t a1)
{
  v2 = *(a1 + 216);
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s", "WiFiManagerRemoveOrphanedSCNetworkSets"}];
  }

  objc_autoreleasePoolPop(v4);
  v5 = SCNetworkSetCopyAll(*(a1 + 1056));
  v6 = v5;
  if (!v5 || !CFArrayGetCount(v5))
  {
    sub_1001700E8();
    if (v6)
    {
      goto LABEL_61;
    }

    goto LABEL_62;
  }

  v7 = SCNetworkSetCopyCurrent(*(a1 + 1056));
  cf = v7;
  if (v7)
  {
    Name = SCNetworkSetGetName(v7);
  }

  else
  {
    Name = 0;
  }

  if (CFArrayGetCount(v6) < 1)
  {
    v10 = 0;
    goto LABEL_56;
  }

  v38 = a1;
  v41 = Mutable;
  v9 = 0;
  v40 = 0;
  v10 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
    if (!ValueAtIndex)
    {
      v16 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: invalid set", "WiFiManagerRemoveOrphanedSCNetworkSets", v37}];
      }

      goto LABEL_21;
    }

    v12 = ValueAtIndex;
    v13 = SCNetworkSetGetName(ValueAtIndex);
    if (v13)
    {
      if (CFStringCompare(@"Automatic", v13, 0) == kCFCompareEqualTo)
      {
        sub_100087770(Mutable, v12);
        v40 = 1;
        goto LABEL_28;
      }

      if (Name && CFStringCompare(Name, v13, 0) == kCFCompareEqualTo)
      {
        sub_100087770(Mutable, v12);
        v16 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: set <%@> currently in use, skip", "WiFiManagerRemoveOrphanedSCNetworkSets", v13}];
        }

LABEL_21:
        objc_autoreleasePoolPop(v16);
        goto LABEL_28;
      }
    }

    SetID = SCNetworkSetGetSetID(v12);
    if (SetID)
    {
      v15 = SetID;
      if (v2 && CFDictionaryContainsValue(v2, SetID))
      {
        sub_100087770(Mutable, v12);
      }

      else
      {
        if (!v10)
        {
          v10 = CFArrayCreateMutable(kCFAllocatorDefault, 1, &kCFTypeArrayCallBacks);
        }

        v17 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: adding to purge list %@<%@>", "WiFiManagerRemoveOrphanedSCNetworkSets", v15, v13}];
        }

        objc_autoreleasePoolPop(v17);
        CFArrayAppendValue(v10, v12);
      }
    }

LABEL_28:
    ++v9;
  }

  while (CFArrayGetCount(v6) > v9);
  if (!v40)
  {
    goto LABEL_56;
  }

  v18 = *(v38 + 1056);
  if (!v18)
  {
    sub_10017007C();
    goto LABEL_56;
  }

  if (!v10 || (Count = CFArrayGetCount(v10), Count < 1))
  {
LABEL_54:
    v29 = *(v38 + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100093FBC;
    block[3] = &unk_10025EAD8;
    block[4] = v38;
    dispatch_async(v29, block);
    goto LABEL_56;
  }

  v20 = Count;
  v21 = 0;
  while (2)
  {
    v22 = CFArrayGetValueAtIndex(v10, v21);
    if (!v22)
    {
      v25 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: invalid set", "__WiFiManagerRemoveSCNetworkSets", v37}];
      }

LABEL_53:
      objc_autoreleasePoolPop(v25);
      if (v20 == ++v21)
      {
        goto LABEL_54;
      }

      continue;
    }

    break;
  }

  v23 = v22;
  if (SCNetworkSetGetName(v22))
  {
    v24 = SCNetworkSetGetName(v23);
    if (CFEqual(v24, @"Automatic"))
    {
      v25 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: skipping automatic set from removal! automatic/custom network set ID: %@", "__WiFiManagerRemoveSCNetworkSets", SCNetworkSetGetSetID(v23)}];
      }

      goto LABEL_53;
    }
  }

  v26 = sub_100093DE0(v23, Mutable);
  v27 = SCNetworkSetRemove(v23);
  v28 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: set removal status for %@: %d", "__WiFiManagerRemoveSCNetworkSets", SCNetworkSetGetSetID(v23), v27}];
  }

  objc_autoreleasePoolPop(v28);
  if (!(v26 | v27))
  {
    v25 = objc_autoreleasePoolPush();
    Mutable = v41;
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: no change", "__WiFiManagerRemoveSCNetworkSets", v37}];
    }

    goto LABEL_53;
  }

  Mutable = v41;
  if (SCPreferencesCommitChanges(v18))
  {
    if (!SCPreferencesApplyChanges(v18))
    {
      v34 = SCError();
      v35 = SCErrorString(v34);
      v32 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v36 = "SCError Unavailable";
        if (v35)
        {
          v36 = v35;
        }

        [off_100298C40 WFLog:4 message:{"%s: failed to apply changes %s", "__WiFiManagerRemoveSCNetworkSets", v36}];
      }

      goto LABEL_73;
    }

    v25 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: processed set(%@) and its associated services", "__WiFiManagerRemoveSCNetworkSets", SCNetworkSetGetSetID(v23)}];
    }

    goto LABEL_53;
  }

  v30 = SCError();
  v31 = SCErrorString(v30);
  v32 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v33 = "SCError Unavailable";
    if (v31)
    {
      v33 = v31;
    }

    [off_100298C40 WFLog:4 message:{"%s: failed to commit changes %s", "__WiFiManagerRemoveSCNetworkSets", v33}];
  }

LABEL_73:
  objc_autoreleasePoolPop(v32);
  Mutable = v41;
LABEL_56:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v6)
  {
LABEL_61:
    CFRelease(v6);
  }

LABEL_62:
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_100087770(__CFArray *a1, const __SCNetworkSet *a2)
{
  if (a1)
  {
    if (a2)
    {
      v6 = sub_10000D83C("__WiFiManagerHelperAddNetworkServicesFromSetToList");
      v4 = SCNetworkSetCopyServices(a2);
      if (v4)
      {
        v5 = v4;
        if (CFArrayGetCount(v4))
        {
          v8.length = CFArrayGetCount(v5);
          v8.location = 0;
          CFArrayAppendArray(a1, v5, v8);
        }

        CFRelease(v5);
      }

      else
      {
      }
    }

    else
    {
      sub_100170154();
    }
  }

  else
  {
    sub_1001701C0();
  }
}

void sub_100087844(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[214];
  v4 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        [objc_msgSend(objc_msgSend(v3 objectForKeyedSubscript:{v9), "objectForKeyedSubscript:", @"timestamp", "timeIntervalSinceNow"}];
        if (v10 < -21600.0)
        {
          [v4 addObject:v9];
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  if ([v4 count])
  {
    v11 = [v3 mutableCopy];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = [v4 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        for (j = 0; j != v13; j = j + 1)
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v4);
          }

          [v11 removeObjectForKey:*(*(&v16 + 1) + 8 * j)];
        }

        v13 = [v4 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v13);
    }

    sub_10007393C(a1, @"SessionBasedNetworkList", v11, 0);
    sub_100087A6C(a1, v11);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100087A6C(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    if (!cf || (v4 = *(a1 + 1712)) == 0 || !CFEqual(cf, v4))
    {
      v5 = *(a1 + 1712);
      if (v5)
      {
        CFRelease(v5);
        *(a1 + 1712) = 0;
      }

      if (cf)
      {
        *(a1 + 1712) = CFRetain(cf);
      }
    }
  }

  else
  {
    sub_10017022C();
  }
}

void sub_100087AD4(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: manager ref is null", "__WiFiManagerSetUserNotificationBlacklist", v7}];
    }

    goto LABEL_14;
  }

  v4 = *(a1 + 2432);
  if (cf && v4)
  {
    if ([v4 isEqualToDictionary:cf])
    {
      return;
    }

    v5 = *(a1 + 2432);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 2432) = 0;
    }
  }

  else if (!cf)
  {
    if (v4)
    {
      CFRelease(v4);
      v4 = 0;
    }

    goto LABEL_12;
  }

  v4 = CFRetain(cf);
LABEL_12:
  *(a1 + 2432) = v4;
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: updating blacklist: %@", "__WiFiManagerSetUserNotificationBlacklist", cf}];
  }

LABEL_14:

  objc_autoreleasePoolPop(v6);
}

void sub_100087BD8(uint64_t a1)
{
  if (!a1)
  {
    sub_100170A6C();
    return;
  }

  v1 = a1;
  +[NSDate timeIntervalSinceReferenceDate];
  v3 = v2;
  v4 = [(__SCPreferences *)sub_10001769C(v1 integerValue];
  v65 = v4;
  v66 = v1;
  if (v4 <= 11)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v6 = v5;
    v7 = *(v1 + 1064);
    v8 = *(v1 + 1072);
    v9 = sub_10000D83C("__WiFiManagerMigratePNLToStandaloneClassC");
    if (!sub_10014A48C(v7))
    {
      sub_100170448();
LABEL_19:

      v17 = objc_autoreleasePoolPush();
      v18 = off_100298C40;
      if (off_100298C40)
      {
        +[NSDate timeIntervalSinceReferenceDate];
        [v18 WFLog:3 message:{"%s: PNL migration to class C standalone plist took %fs", "WiFiManagerMigratePNL", v19 - v6}];
      }

      objc_autoreleasePoolPop(v17);
      v15 = v65;
      goto LABEL_22;
    }

    SCPreferencesSynchronize(v7);
    v10 = SCPreferencesCopyKeyList(v7);
    v11 = v10;
    if (v10)
    {
      v77.length = CFArrayGetCount(v10);
      v77.location = 0;
      if (!CFArrayContainsValue(v11, v77, @"List of known networks"))
      {
        v13 = 0;
        v14 = 1;
        goto LABEL_15;
      }

      Value = SCPreferencesGetValue(v7, @"List of known networks");
      if (!Value)
      {
        goto LABEL_9;
      }

      if (sub_10014A48C(v8))
      {
        if (!SCPreferencesSetValue(v8, @"List of known networks", Value))
        {
          sub_100170298();
          v14 = 0;
          v13 = 0;
          goto LABEL_11;
        }

LABEL_9:
        v13 = SCPreferencesRemoveValue(v7, @"List of known networks");
        if (v13)
        {
          v14 = 1;
          if (!Value)
          {
LABEL_15:
            v16 = (sub_1000587F4(v7, v13) & v14) == 0;
            v1 = v66;
            if (!v16)
            {
              sub_10007D6E8(v66, @"isWiFiPNLMigrationComplete", kCFBooleanTrue);
            }

            if (v11)
            {
              CFRelease(v11);
            }

            goto LABEL_19;
          }
        }

        else
        {
          sub_100170370();
          v14 = 0;
          if (!Value)
          {
            goto LABEL_15;
          }
        }

LABEL_11:
        v14 &= sub_1000587F4(v8, v13);
        goto LABEL_15;
      }

      sub_100170304();
    }

    else
    {
      sub_1001703DC();
    }

    v14 = 0;
    v13 = 0;
    goto LABEL_15;
  }

  v15 = v4;
  if (v4 <= 0xD)
  {
LABEL_22:
    +[NSDate timeIntervalSinceReferenceDate];
    v21 = v20;
    v22 = objc_autoreleasePoolPush();
    if (sub_10001769C(v1, @"isWiFiPNLMigrationComplete") == kCFBooleanTrue)
    {
      SCPreferencesSynchronize(*(v1 + 1072));
      v23 = sub_10001769C(v1, @"List of known networks");
      if (v23)
      {
        if (sub_10005894C(v23))
        {
          sub_1001704B4();
        }
      }
    }

    objc_autoreleasePoolPop(v22);
    v24 = [NSString stringWithFormat:@"/Library/Preferences/SystemConfiguration/%@", @"com.apple.wifi-networks.plist"];
    [+[NSFileManager defaultManager](NSFileManager copyItemAtPath:"copyItemAtPath:toPath:error:" toPath:v24 error:[(NSString *)v24 stringByAppendingPathExtension:@"backup"], 0];
    sub_10007393C(v1, @"List of known networks", 0, 0);
    v25 = objc_autoreleasePoolPush();
    v26 = off_100298C40;
    if (off_100298C40)
    {
      +[NSDate timeIntervalSinceReferenceDate];
      [v26 WFLog:3 message:{"%s: PNL migration to unified KVS took %fs", "WiFiManagerMigratePNL", v27 - v21}];
    }

    objc_autoreleasePoolPop(v25);
  }

  if (v15 <= 14)
  {
    context = objc_autoreleasePoolPush();
    +[NSDate timeIntervalSinceReferenceDate];
    v29 = v28;
    v30 = [*(v1 + 1104) dictionaryRepresentation];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v31 = [v30 allKeys];
    v32 = [v31 countByEnumeratingWithState:&v71 objects:v76 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v72;
      do
      {
        for (i = 0; i != v33; i = i + 1)
        {
          if (*v72 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v71 + 1) + 8 * i);
          v37 = [v30 objectForKeyedSubscript:v36];
          v38 = [[CWFNetworkProfile alloc] initWithExternalForm:v37];
          if (v38)
          {
            v39 = v38;
            [*(v66 + 1104) setObject:0 forKey:v36];
            [*(v66 + 1104) setObject:v37 forKey:{objc_msgSend(v39, "identifier")}];
          }
        }

        v33 = [v31 countByEnumeratingWithState:&v71 objects:v76 count:16];
      }

      while (v33);
    }

    v1 = v66;
    [*(v66 + 1104) synchronize];
    v40 = objc_autoreleasePoolPush();
    v41 = off_100298C40;
    if (off_100298C40)
    {
      +[NSDate timeIntervalSinceReferenceDate];
      [v41 WFLog:3 message:{"%s: Remove duplicate PNL entries took %fs", "WiFiManagerMigratePNL", v42 - v29}];
    }

    objc_autoreleasePoolPop(v40);
    objc_autoreleasePoolPop(context);
    v15 = v65;
  }

  if (v15 <= 22)
  {
    contexta = objc_autoreleasePoolPush();
    +[NSDate timeIntervalSinceReferenceDate];
    v44 = v43;
    v45 = [*(v1 + 1104) dictionaryRepresentation];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v46 = [v45 allKeys];
    v47 = [v46 countByEnumeratingWithState:&v67 objects:v75 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v68;
      do
      {
        for (j = 0; j != v48; j = j + 1)
        {
          if (*v68 != v49)
          {
            objc_enumerationMutation(v46);
          }

          v51 = *(*(&v67 + 1) + 8 * j);
          v52 = [[CWFNetworkProfile alloc] initWithExternalForm:{objc_msgSend(v45, "objectForKeyedSubscript:", v51)}];
          if (v52)
          {
            v53 = sub_100022854(v52, 0);
            if (v53)
            {
              v54 = v53;
              v55 = sub_10001B368(v53);
              if (v55)
              {
                v56 = v55;
                [*(v66 + 1104) setObject:0 forKey:v51];
                [*(v66 + 1104) setObject:objc_msgSend(v56 forKey:{"externalForm"), v51}];
              }

              CFRelease(v54);
            }
          }
        }

        v48 = [v46 countByEnumeratingWithState:&v67 objects:v75 count:16];
      }

      while (v48);
    }

    v1 = v66;
    [*(v66 + 1104) synchronize];
    v57 = objc_autoreleasePoolPush();
    v58 = off_100298C40;
    if (off_100298C40)
    {
      +[NSDate timeIntervalSinceReferenceDate];
      [v58 WFLog:3 message:{"%s: Migrate OS-specific attributes to CWFNetworkProfile took %fs", "WiFiManagerMigratePNL", v59 - v44}];
    }

    objc_autoreleasePoolPop(v57);
    objc_autoreleasePoolPop(contexta);
    v15 = v65;
  }

  if (v15 <= 27)
  {
    sub_1001705D4(v1);
  }

  v60 = objc_autoreleasePoolPush();
  v61 = off_100298C40;
  if (off_100298C40)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    [v61 WFLog:3 message:{"%s: Entire PNL update took %fs", "WiFiManagerMigratePNL", v62 - v3}];
  }

  objc_autoreleasePoolPop(v60);
}

uint64_t sub_10008831C(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 2288);
  }

  sub_100170AD8();
  return 0;
}

void sub_100088350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (byte_100298C79 && (a3 == 5 || !a3))
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Lockdown Mode is enabled, ignoring type %@(%d)", "WiFiManagerSimulateNotification", sub_1000591D8(a3), a3}];
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    sub_100170B44();
  }
}

uint64_t sub_100088414(uint64_t a1)
{
  result = sub_10000D83C("WiFiManagerGetKnownNetworksCache_block_invoke");
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

void sub_10008844C(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 232);
  if (v2 && CFArrayGetCount(v2) >= 401)
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s PNL greater than theshold (%d), won't end xpc_transaction", "WiFiManagerGetKnownNetworksCache_block_invoke_2", 400}];
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    v4 = *(*(*(a1 + 32) + 8) + 40);
  }
}

void sub_100088504(uint64_t a1)
{
  context[0] = a1;
  context[1] = 0xAAAAAAAA0000004ALL;
  context[2] = 0;
  context[3] = 1;
  context[4] = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
}

uint64_t sub_100088558(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 2289);
  }

  sub_100170E20();
  return 0;
}

void sub_100088594(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 1536) checkForWiFiPasswordChange];
  [*(a1 + 1536) syncKnownWiFiNetworks:0];

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1000885E4(uint64_t a1)
{
  context[0] = a1;
  context[1] = 0xAAAAAAAA00000053;
  v3 = 0;
  v4 = 0;
  context[2] = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
  return v3;
}

uint64_t sub_100088638(uint64_t a1)
{
  context[0] = a1;
  context[1] = 0xAAAAAAAA00000054;
  v3 = 0;
  v4 = 0;
  context[2] = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
  return v3;
}

uint64_t sub_10008868C(uint64_t a1)
{
  context[0] = a1;
  context[1] = 0xAAAAAAAA00000055;
  v3 = 0;
  v4 = 0;
  context[2] = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
  return v3;
}

uint64_t sub_1000886E0(uint64_t a1)
{
  context[0] = a1;
  context[1] = 0xAAAAAAAA00000057;
  v3 = 0;
  v4 = 0;
  context[2] = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
  return v3;
}

void sub_100088734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  valuePtr = a4;
  v8 = sub_10000715C(a2);
  v37 = 0;
  v38 = 0;
  v9 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Client '%@' requested %ds rate limit for event %d", "WiFiManagerEventSetRateLimit", v8, a4, a3}];
  }

  objc_autoreleasePoolPop(v9);
  if (a3 != 14 || (LODWORD(v37) = 5, a4))
  {
    v10 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", a3);
    if (!v10)
    {
      sub_1001710F0();
      return;
    }

    v11 = v10;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!Mutable)
    {
      sub_100171078(v11);
      return;
    }

    v13 = Mutable;
    v14 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    if (v14)
    {
      v15 = v14;
      CFDictionaryAddValue(v13, @"EventRateClientIntervalKey", v14);
      CFRelease(v15);
      v16 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &v38);
      if (v16)
      {
        v17 = v16;
        CFDictionaryAddValue(v13, @"EventRateClientPrevDispatchTimestampKey", v16);
        CFRelease(v17);
        v18 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (v18)
        {
          v19 = v18;
          CFDictionarySetValue(v18, v8, v13);
          v20 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v37);
          if (!v20)
          {
            sub_100171018();
            goto LABEL_21;
          }

          v21 = v20;
          CFDictionaryAddValue(v19, @"EventRateDefaultIntervalKey", v20);
          CFRelease(v21);
          v22 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &v38);
          if (!v22)
          {
            sub_100170FB8();
            goto LABEL_21;
          }

          v23 = v22;
          CFDictionaryAddValue(v19, @"EventRatePrevDispatchTimestampKey", v22);
          CFRelease(v23);
          v24 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v37 + 4);
          if (!v24)
          {
            sub_100170F58();
            goto LABEL_21;
          }

          v25 = v24;
          CFDictionaryAddValue(v19, @"EventRateRateDispachedCount", v24);
          CFRelease(v25);
          v26 = CFDictionaryContainsKey(*(a1 + 2368), v11);
          v27 = *(a1 + 2368);
          if (v26)
          {
            Value = CFDictionaryGetValue(v27, v11);
            if (Value)
            {
              v29 = Value;
              v30 = CFDictionaryGetValue(Value, v8);
              if (v30)
              {
                v31 = v30;
                v32 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
                if (v32)
                {
                  v33 = v32;
                  CFDictionarySetValue(v31, @"EventRateClientIntervalKey", v32);
                  CFRelease(v33);
                }

                else
                {
                  sub_100170EF8();
                }

                goto LABEL_21;
              }

              v27 = v29;
              v34 = v8;
              v35 = v13;
              goto LABEL_20;
            }

            v27 = *(a1 + 2368);
          }

          v34 = v11;
          v35 = v19;
LABEL_20:
          CFDictionarySetValue(v27, v34, v35);
LABEL_21:
          CFRelease(v11);
LABEL_22:
          CFRelease(v19);
          CFRelease(v13);
          return;
        }

        v36 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: null eventDict", "WiFiManagerEventSetRateLimit"}];
        }
      }

      else
      {
        v36 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: null number 2", "WiFiManagerEventSetRateLimit"}];
        }
      }
    }

    else
    {
      v36 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: null number", "WiFiManagerEventSetRateLimit"}];
      }
    }

    objc_autoreleasePoolPop(v36);
    v19 = v11;
    goto LABEL_22;
  }

  sub_10002ADEC(a1, a2);
}

uint64_t sub_100088B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  valuePtr = 0;
  v5 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", a3);
  if (v5)
  {
    v6 = v5;
    Value = CFDictionaryGetValue(*(a1 + 2368), v5);
    if (Value)
    {
      v8 = Value;
      v9 = sub_10000715C(a2);
      v10 = CFDictionaryGetValue(v8, v9);
      if (v10)
      {
        v11 = CFDictionaryGetValue(v10, @"EventRateClientIntervalKey");
        if (!CFNumberGetValue(v11, kCFNumberIntType, &valuePtr))
        {
          v12 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s: Failed to get value", "WiFiManagerEventGetRateLimit"}];
          }

          objc_autoreleasePoolPop(v12);
        }
      }
    }

    else
    {
      valuePtr = 0;
    }

    CFRelease(v6);
    return valuePtr;
  }

  else
  {
    sub_10017115C();
    return 0;
  }
}

uint64_t sub_100088C2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 2417);
  if (*(a1 + 2416))
  {
    if ((v3 & a2) != 0)
    {
      return 1;
    }

    if (*(a1 + 2417) <= 1u)
    {
      if (*(a1 + 2417))
      {
        goto LABEL_12;
      }

      v4 = 1;
    }

    else
    {
      switch(v3)
      {
        case 2:
          v6 = a2 == 4 || a2 == 1;
          goto LABEL_21;
        case 4:
          v4 = (a2 - 1) < 2;
          break;
        case 8:
LABEL_12:
          v6 = ((a2 - 2) & 0xFFFFFFFD) == 0;
LABEL_21:
          v4 = v6;
          break;
        default:
          v4 = 0;
          break;
      }
    }

    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: OpMode current state:%d  requested %d status %d", "WiFiManagerIsOpModeAllowed", *(a1 + 2417), a2, v4}];
    }

    objc_autoreleasePoolPop(v7);
    return v4;
  }

  v4 = v3 == 0;
  if (a2 == 1)
  {
    if (v3 != 2)
    {
      return v4;
    }

    return 1;
  }

  if (a2 == 2 && v3 == 1)
  {
    return 1;
  }

  return v4;
}

_DWORD *sub_100088D58(_DWORD *result, int a2, int a3)
{
  if (result[85] != a2)
  {
    result[85] = a2;
    v5 = @"Never";
    if (a2 == 1)
    {
      v5 = @"Ask to Join";
    }

    if (a2 == 2)
    {
      v6 = @"Automatic";
    }

    else
    {
      v6 = v5;
    }

    sub_10007393C(result, @"AutoInstantHotspot", v6, a3);
    [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
    v7 = +[WiFiXPCManager sharedXPCManager];

    return [v7 sendUserSettingsDidChangeEvent];
  }

  return result;
}

uint64_t sub_100088DF0(uint64_t result, int a2, int a3)
{
  if (*(result + 348) != a2)
  {
    *(result + 348) = a2;
    v4 = @"Never";
    if (a2 == 1)
    {
      v4 = @"Ask for Approval";
    }

    if (a2 == 2)
    {
      v5 = @"Automatic";
    }

    else
    {
      v5 = v4;
    }

    return sub_10007393C(result, @"ShareMyPersonalHotspot", v5, a3);
  }

  return result;
}

uint64_t sub_100088E40(uint64_t a1)
{
  v2 = sub_10001769C(a1, @"AutoInstantHotspot");
  if (v2)
  {
    v3 = v2;
    if (CFEqual(@"Never", v2))
    {
      v4 = 0;
    }

    else
    {
      v4 = 1;
      if (!CFEqual(@"Ask to Join", v3))
      {
        if (CFEqual(@"Automatic", v3))
        {
          v4 = 2;
        }

        else
        {
          v4 = 1;
        }
      }
    }
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 340) = v4;
  return v4;
}

uint64_t sub_100088EDC(uint64_t a1)
{
  v2 = sub_10001769C(a1, @"ShareMyPersonalHotspot");
  if (v2)
  {
    v3 = v2;
    if (CFEqual(@"Never", v2))
    {
      v4 = 0;
    }

    else
    {
      v4 = 1;
      if (!CFEqual(@"Ask for Approval", v3))
      {
        if (CFEqual(@"Automatic", v3))
        {
          v4 = 2;
        }

        else
        {
          v4 = 1;
        }
      }
    }
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 348) = v4;
  return v4;
}

void sub_100088F78(uint64_t a1, double a2)
{
  if (*(a1 + 2408) != a2)
  {
    *(a1 + 2408) = a2;
    sub_10007CBA8(a1, @"AutoInstantHotspotTriggerInterval", a2);
  }
}

void sub_100088F9C(uint64_t a1, int a2)
{
  v3 = a2;
  v2[0] = a1;
  v2[1] = 0xAAAAAAAA00000059;
  v2[3] = 0;
  v2[4] = 0;
  v2[2] = &v3;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, v2);
}

void sub_100088FF4(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (sub_100076C24(a1))
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: purging local store if it size exceeds %lu bytes", "WiFiManagerPrune3BarsNetworks", a2}];
    }

    objc_autoreleasePoolPop(v5);
    [+[WiFi3BarsObserver sharedWiFi3BarsObserver](WiFi3BarsObserver "sharedWiFi3BarsObserver")];
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_1000890A0(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 2424);
  }

  sub_1001711C8();
  return 0;
}

void sub_1000890CC(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 136) == 1 && [+[WiFiUserInteractionMonitor ctServerConnection] sharedInstance]
  {
    _CTServerConnectionCopyPacketContextInterfaceNameByServiceType();
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s called by %s: cellular interface name: %@", "WiFiManagerCopyCellularInterfaceName", a3, *a2}];
    }

    objc_autoreleasePoolPop(v5);
  }
}

CFArrayRef sub_100089198(void *a1)
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [(NSUserDefaults *)v2 arrayForKey:@"FamilyHotspotPreferences"];
  if (!v3)
  {
    v5 = sub_10001769C(a1, @"FamilyHotspotPreferences");
    if (!v5)
    {
      return 0;
    }

    sub_10008933C(a1, v5);
    sub_10007393C(a1, @"FamilyHotspotPreferences", 0, 0);
    v3 = [(NSUserDefaults *)v2 arrayForKey:@"FamilyHotspotPreferences"];
    if (!v3)
    {
      return 0;
    }
  }

  return CFArrayCreateCopy(kCFAllocatorDefault, v3);
}

CFDictionaryRef sub_10008925C(void *a1)
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [(NSUserDefaults *)v2 dictionaryForKey:@"InterfaceDataUsageV1"];
  if (!v3)
  {
    v5 = sub_10001769C(a1, @"InterfaceDataUsageV1");
    if (!v5)
    {
      return 0;
    }

    [+[NSUserDefaults standardUserDefaults](NSUserDefaults setObject:"setObject:forKey:" forKey:v5, @"InterfaceDataUsageV1"];
    sub_10007393C(a1, @"InterfaceDataUsageV1", 0, 0);
    v3 = [(NSUserDefaults *)v2 dictionaryForKey:@"InterfaceDataUsageV1"];
    if (!v3)
    {
      return 0;
    }
  }

  return CFDictionaryCreateCopy(kCFAllocatorDefault, v3);
}

void sub_10008933C(void *a1, uint64_t a2)
{
  [+[NSUserDefaults standardUserDefaults](NSUserDefaults setObject:"setObject:forKey:" forKey:a2, @"FamilyHotspotPreferences"];
  v3 = objc_autoreleasePoolPush();
  Current = CFAbsoluteTimeGetCurrent();
  v5 = CFDateCreate(kCFAllocatorDefault, Current);
  if (v5)
  {
    v6 = v5;
    sub_10007393C(a1, @"FamilyHotspotPreferencesUpdateTimestamp", v5, 0);
    CFRelease(v6);
  }

  objc_autoreleasePoolPop(v3);
}

uint64_t sub_1000893E8(void *a1)
{
  [+[NSUserDefaults standardUserDefaults](NSUserDefaults setObject:"setObject:forKey:" forKey:0, @"UserNotificationBlacklist"];

  return sub_10007393C(a1, @"UserNotificationBlacklist", 0, 0);
}

id sub_100089454(uint64_t a1, uint64_t a2)
{
  v3 = +[NSUserDefaults standardUserDefaults];

  return [(NSUserDefaults *)v3 setObject:a2 forKey:@"Custom network settings"];
}

uint64_t sub_1000894A0(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v23 = 0;
  v24 = &v23;
  v25 = 0x3052000000;
  v26 = sub_100002B40;
  v27 = sub_100006758;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3052000000;
  v20 = sub_100002B40;
  v21 = sub_100006758;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v3 = sub_10008925C(a1);
  if (v3)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v18[5] = v4;
    if (v4)
    {
      v5 = dispatch_semaphore_create(0);
      global_queue = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100089724;
      block[3] = &unk_100260998;
      block[6] = &v17;
      block[7] = &v13;
      block[8] = &v23;
      block[9] = a1;
      block[4] = v3;
      block[5] = v5;
      dispatch_async(global_queue, block);
      v7 = dispatch_time(0, 1000000000);
      if (dispatch_semaphore_wait(v5, v7))
      {
        v8 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: timed out waiting for data usage.", "WiFiManagerCopyHotspotDataUsage"}];
        }

        objc_autoreleasePoolPop(v8);
        *(v14 + 24) = 1;
      }

      dispatch_release(v5);
    }
  }

  v9 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: returning data usage info %@", "WiFiManagerCopyHotspotDataUsage", v24[5]}];
  }

  objc_autoreleasePoolPop(v9);
  v10 = v24[5];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);
  objc_autoreleasePoolPop(v2);
  return v10;
}

void sub_1000896F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

intptr_t sub_100089724(uint64_t a1)
{
  v2 = *(*(a1 + 72) + 2760);
  if (v2 && (v3 = [v2 cellularICCID]) != 0)
  {
    v4 = v3;
    v5 = [*(a1 + 32) objectForKey:v3];
    if (v5)
    {
      v6 = v5;
      v7 = objc_alloc_init(CoreTelephonyClient);
      if (v7)
      {
        v8 = v7;
        v16 = 0;
        v9 = [v7 billingCycleEndDatesForLastPeriods:2 error:&v16];
        v10 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: error %@, billing periods %@", "WiFiManagerCopyHotspotDataUsage_block_invoke", v16, v9}];
        }

        objc_autoreleasePoolPop(v10);
      }

      else
      {
        v9 = 0;
      }

      if (_os_feature_enabled_impl())
      {
        v11 = sub_10008990C(*(a1 + 72));
        if (!v9)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v11 = 0;
        if (!v9)
        {
LABEL_19:
          sub_100161AC0(*(*(*(a1 + 48) + 8) + 40), v6, 0, 0, v11);
          goto LABEL_15;
        }
      }

      if ([v9 count])
      {
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100162494;
        v15[3] = &unk_100260970;
        v12 = *(a1 + 48);
        v15[5] = v11;
        v15[6] = v12;
        v15[4] = v6;
        [v9 enumerateObjectsWithOptions:2 usingBlock:v15];
        goto LABEL_15;
      }

      goto LABEL_19;
    }

    sub_100171234(v4);
  }

  else
  {
    sub_1001712A4();
  }

LABEL_15:
  v13 = *(*(*(a1 + 48) + 8) + 40);
  if (*(*(*(a1 + 56) + 8) + 24))
  {
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 40) = v13;
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

id sub_10008990C(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_10008925C(a1);
  if (v3)
  {
    v4 = v3;
    v5 = [(__CFDictionary *)v3 objectForKey:@"PHClients"];
  }

  else
  {
    v5 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v5;
}

uint64_t sub_100089978(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 352);
  }

  sub_100171310();
  return 0;
}

CFDictionaryRef sub_1000899A4(void *a1, int a2)
{
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [(NSUserDefaults *)v4 dictionaryForKey:@"UserNotificationBlacklist"];
  if (!v5)
  {
    v7 = sub_10001769C(a1, @"UserNotificationBlacklist");
    if (!v7)
    {
      return 0;
    }

    [+[NSUserDefaults standardUserDefaults](NSUserDefaults setObject:"setObject:forKey:" forKey:v7, @"UserNotificationBlacklist"];
    sub_10007393C(a1, @"UserNotificationBlacklist", 0, a2);
    v5 = [(NSUserDefaults *)v4 dictionaryForKey:@"UserNotificationBlacklist"];
    if (!v5)
    {
      return 0;
    }
  }

  return CFDictionaryCreateCopy(kCFAllocatorDefault, v5);
}

id sub_100089A84(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1 && (v3 = *(a1 + 2352)) != 0)
  {
    v4 = [v3 appInForeground];
  }

  else
  {
    sub_10017137C();
    v4 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v4;
}

id sub_100089AD8(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = sub_10008925C(a1);
  if (v4)
  {
    v18 = v2;
    v17 = v4;
    v5 = [(__CFDictionary *)v4 objectForKey:@"PHClients"];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v19 = *v25;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v24 + 1) + 8 * i);
          v10 = [objc_msgSend(v5 objectForKeyedSubscript:{v9), "objectForKeyedSubscript:", @"DataUsageMACAddresses"}];
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v21;
            do
            {
              for (j = 0; j != v12; j = j + 1)
              {
                if (*v21 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                [v3 setObject:v9 forKeyedSubscript:*(*(&v20 + 1) + 8 * j)];
              }

              v12 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v12);
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v7);
    }

    v2 = v18;
  }

  v15 = [v3 copy];

  objc_autoreleasePoolPop(v2);
  return v15;
}

id sub_100089CDC(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = sub_10008925C(a1);
  if (v4)
  {
    v5 = v4;
    v6 = [(__CFDictionary *)v4 objectForKey:@"PHClients"];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v3 setObject:objc_msgSend(objc_msgSend(v6 forKeyedSubscript:{"objectForKeyedSubscript:", *(*(&v13 + 1) + 8 * v10)), "objectForKeyedSubscript:", @"DataUsageMACAddresses", *(*(&v13 + 1) + 8 * v10)}];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  v11 = [v3 copy];

  objc_autoreleasePoolPop(v2);
  return v11;
}

id sub_100089E54(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(NSMutableDictionary);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [a1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(a1);
        }

        [v3 setObject:objc_msgSend(objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *(*(&v10 + 1) + 8 * v7)), "objectForKeyedSubscript:", @"DataUsageMACAddresses", *(*(&v10 + 1) + 8 * v7)}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [a1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v8 = [v3 copy];

  objc_autoreleasePoolPop(v2);
  return v8;
}

void sub_100089FA8(uint64_t a1)
{
  v5 = objc_alloc_init(WiFiWalletSource);
  v2 = [objc_msgSend(v5 "expiredWalletIDs")];
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[4] = v2;
    block[5] = v5;
    block[2] = sub_10008A074;
    block[3] = &unk_1002609C0;
    block[6] = v3;
    dispatch_async(v4, block);
  }

  else
  {
  }
}

void sub_10008A074(uint64_t a1)
{
  Count = CFArrayGetCount(*(*(a1 + 48) + 224));
  if (Count >= 1)
  {
    v3 = Count;
    for (i = 0; i != v3; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 48) + 224), i);
      v6 = sub_1001778C0(ValueAtIndex);
      if (v6 && [*(a1 + 32) containsObject:v6])
      {
        sub_100081634(*(a1 + 48), ValueAtIndex, 20);
        v7 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Purging Known Network : [ %@ ]", "WiFiManagerPurgeExpiredKnownNetworks_block_invoke_2", sub_10000A878(ValueAtIndex)}];
        }

        objc_autoreleasePoolPop(v7);
      }
    }
  }

  v8 = *(a1 + 40);
}

void sub_10008A188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  context[0] = a2;
  context[1] = a3;
  context[2] = a4;
  CFSetApplyFunction(*(a1 + 144), sub_10008A1C8, context);
}

void sub_10008A1C8(uint64_t a1, uint64_t *a2)
{
  if (a2 && *a2 && (v3 = a2[1]) != 0)
  {
    v4 = a2[2];
    v5 = *a2;

    sub_10014B02C(a1, v5, v3, v4);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Invalid arguments", "__WiFiManagerDispatchTdConfirmedEvent"}];
    }

    objc_autoreleasePoolPop(v6);
  }
}

void sub_10008A260(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  if (a1)
  {
    if (a4 || *(a1 + 1700) != a2)
    {
      *(a1 + 1700) = a2;
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v7 = "enabled";
        if (!a2)
        {
          v7 = "disabled";
        }

        [off_100298C40 WFLog:3 message:{"%s: Battery saver mode is now %s", "WiFiManagerSetBatterySaveMode", v7}];
      }

      objc_autoreleasePoolPop(v6);
      context[0] = a1;
      context[1] = 0xAAAAAAAA00000040;
      context[2] = a2;
      context[3] = 1;
      context[4] = 0;
      CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
      [*(a1 + 2656) updateWowState:*(a1 + 1168) != 0 lpasState:*(a1 + 1184) != 0 lowPowerState:*(a1 + 1170) != 0 batterySaverState:*(a1 + 1700) != 0];
    }
  }

  else
  {
    sub_100171454();
  }
}

void sub_10008A384(const __CFArray *a1, const __CFBoolean *a2)
{
  v4 = +[NSUserDefaults standardUserDefaults];
  if (a2)
  {
    v5 = v4;
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a2))
    {
      [(NSUserDefaults *)v5 setBool:kCFBooleanTrue == a2 forKey:@"PerpetualWiFiScanEnabled"];
      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v8 = "DISABLED";
        if (kCFBooleanTrue == a2)
        {
          v8 = "ENABLED";
        }

        [off_100298C40 WFLog:3 message:{"Setting perpetual WiFi scan mode %s", v8}];
      }

      objc_autoreleasePoolPop(v7);
      if (kCFBooleanTrue == a2)
      {
        sub_1001714C0(a1);
      }
    }
  }
}

void sub_10008A46C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Stand-alone LPAS Test mode is not supported on this platform", "__WiFiManagerSetStandAloneLPASTestMode"}];
  }

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_10008A4D8(uint64_t a1)
{
  context[0] = a1;
  context[1] = 0xAAAAAAAA00000086;
  v3 = 0;
  v4 = 0;
  context[2] = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
  return v3;
}

id sub_10008A52C(uint64_t a1)
{
  if (!a1)
  {
    sub_100171514();
    return 0;
  }

  if (!*(a1 + 2236))
  {
    return 0;
  }

  v2 = *(a1 + 200);

  return [v2 getLocaleCountryCode];
}

void sub_10008A56C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(a1 + 200);

    [v3 determineAndSetLocale:a2];
  }

  else
  {
    sub_100171580();
  }
}

void sub_10008A5A0(int a1, CFDictionaryRef theDict)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"countryCodeUserDefault");
    if (Value)
    {
      v4 = Value;
      if (CFStringCompare(Value, @"XZ", 0) && CFStringCompare(v4, &stru_1002680F8, 0) && CFStringCompare(v4, @"X0", 0) && CFStringCompare(v4, @"X2", 0) && CFStringCompare(v4, @"X3", 0))
      {
        v5 = +[NSUserDefaults standardUserDefaults];
        if (v5)
        {

          [(NSUserDefaults *)v5 setObject:theDict forKey:@"countryCodeUserDefaultData"];
        }
      }

      else
      {
        v6 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{" Skipping saving country code [%@] to user defaults", v4}];
        }

        objc_autoreleasePoolPop(v6);
      }
    }
  }
}

uint64_t sub_10008A6E4(uint64_t a1)
{
  context[0] = a1;
  context[1] = 0xAAAAAAAA0000008ELL;
  v3 = 0;
  v4 = 0;
  context[2] = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
  return v3;
}

uint64_t sub_10008A738()
{
  values = @"AppleSunriseHALDevice";
  keys = @"IOClass";
  v0 = kCFAllocatorDefault;
  v48 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  keys = @"IOPropertyMatch";
  v1 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &v48, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v48)
  {
    CFRelease(v48);
    v48 = 0;
  }

  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v1);
  v3 = objc_autoreleasePoolPush();
  if (MatchingService)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s dataClass %s\n", "WiFiManagerPopulateCalData", "BWC2"}];
    }

    objc_autoreleasePoolPop(v3);
    v4 = CFStringCreateWithCString(0, "BWC2", 0);
    v5 = AMFDRSealingMapCopyLocalDictForClass();
    if (v5)
    {
      v30 = v4;
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s successful fdr\n", "WiFiManagerPopulateCalData"}];
      }

      objc_autoreleasePoolPop(v6);
      v7 = 0;
      v8 = &dword_1002609E0;
      v9 = 4;
      do
      {
        v10 = *(v8 + 2);
        v11 = CFStringCreateWithCString(v0, v10, 0x8000100u);
        CFProperty = IORegistryEntryCreateCFProperty(MatchingService, v11, v0, 0);
        if (CFProperty)
        {
          v13 = CFProperty;
          v14 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: cal data %s is already available.\n", "WiFiManagerPopulateCalData", v10}];
          }

          objc_autoreleasePoolPop(v14);
          if (v11)
          {
            CFRelease(v11);
          }

          CFRelease(v13);
          v7 = *v8 | v7;
        }

        else
        {
          v31 = v7;
          v15 = MatchingService;
          v16 = *(v8 + 1);
          v17 = CFStringCreateWithCString(v0, v16, 0x8000100u);
          v18 = v5;
          Value = CFDictionaryGetValue(v5, v17);
          v20 = objc_autoreleasePoolPush();
          if (Value)
          {
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: populate cal data key %s\n", "WiFiManagerPopulateCalData", v10}];
            }

            objc_autoreleasePoolPop(v20);
            MatchingService = v15;
            IORegistryEntrySetCFProperty(v15, v11, Value);
            v7 = *v8 | v31;
            v5 = v18;
          }

          else
          {
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: %s failed get value\n", "WiFiManagerPopulateCalData", v16}];
            }

            objc_autoreleasePoolPop(v20);
            MatchingService = v15;
            v5 = v18;
            v7 = v31;
          }

          v0 = kCFAllocatorDefault;
          if (v17)
          {
            CFRelease(v17);
          }

          if (v11)
          {
            CFRelease(v11);
          }
        }

        v8 += 6;
        --v9;
      }

      while (v9);
      v21 = (v7 & 0xC) == 0 || (~v7 & 3) != 0;
      v22 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s success, loadedCal = %x, result = %d\n", "WiFiManagerPopulateCalData", v7, v21}];
      }

      objc_autoreleasePoolPop(v22);
      v23 = !v21;
      v4 = v30;
    }

    else
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      *buffer = 0u;
      v33 = 0u;
      v24 = CFRetain(0);
      v25 = CFErrorCopyDescription(v24);
      if (v25)
      {
        v26 = v25;
        CFStringGetCString(v25, buffer, 256, 0x8000100u);
        CFRelease(v26);
      }

      v27 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s Error! Loading FDR Calibration data got error %s\n", "WiFiManagerPopulateCalData", buffer}];
      }

      objc_autoreleasePoolPop(v27);
      CFRelease(v24);
      v23 = 0;
    }

    if (v4)
    {
      CFRelease(v4);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    IOObjectRelease(MatchingService);
    if (v23)
    {
      return 0;
    }
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s Failed to find service\n", "WiFiManagerPopulateCalData"}];
    }

    objc_autoreleasePoolPop(v3);
  }

  v29 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s failed\n", "WiFiManagerPopulateCalData"}];
  }

  objc_autoreleasePoolPop(v29);
  return 1;
}

id sub_10008AC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 1880);
  if (v4)
  {

    return [v4 getServiceFor:a2 withServiceKey:a3];
  }

  else
  {
    CWFErrorDescription();

    return CWFErrorWithDescription();
  }
}

id sub_10008ACCC(uint64_t a1)
{
  if (!a1)
  {
    sub_1001715EC();
    return 0;
  }

  if (!+[WiFiSoftApUsageMonitor sharedInstance])
  {
    return 0;
  }

  v1 = +[WiFiSoftApUsageMonitor sharedInstance];

  return [(WiFiSoftApUsageMonitor *)v1 statsDictionary];
}

void sub_10008AD28(uint64_t a1)
{
  if (a1)
  {
    if (+[WiFiSoftApUsageMonitor sharedInstance])
    {
      v1 = +[WiFiSoftApUsageMonitor sharedInstance];

      [(WiFiSoftApUsageMonitor *)v1 resetStats];
    }
  }

  else
  {
    sub_100171658();
  }
}

uint64_t sub_10008AD80(uint64_t result)
{
  if (result)
  {
    return *(result + 1948);
  }

  return result;
}

uint64_t sub_10008AD8C(uint64_t a1)
{
  if (!&_os_eligibility_get_domain_answer)
  {
    sub_1001716C4();
    return 0;
  }

  domain_answer = os_eligibility_get_domain_answer();
  v3 = objc_autoreleasePoolPush();
  if (domain_answer)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Failed to get OS eligibility domain %llu (errno=%d, %s)", "WiFiManagerIsDomainEligible", a1, domain_answer, strerror(domain_answer), 0}];
    }

    objc_autoreleasePoolPop(v3);
    return 0;
  }

  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: OS eligibility domain %llu=%llu", "WiFiManagerIsDomainEligible", a1, 0}];
  }

  objc_autoreleasePoolPop(v3);
  return 0;
}

__CFArray *sub_10008AE84(char *a1, uint64_t a2)
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    v5 = a2 < 1;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    do
    {
      v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, a1);
      if (v6)
      {
        v7 = v6;
        CFArrayAppendValue(Mutable, v6);
        CFRelease(v7);
      }

      a1 += 8;
      --a2;
    }

    while (a2);
  }

  return Mutable;
}

void sub_10008AF24(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  sub_100076304(a1, *(a1 + 32));
  v3 = *(a1 + 1680);
  if (v3)
  {
    dispatch_release(v3);
    *(a1 + 1680) = 0;
  }

  v4 = *(a1 + 1640);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 1640) = 0;
  }

  v5 = *(a1 + 1592);
  if (v5)
  {
    dispatch_release(v5);
    *(a1 + 1592) = 0;
  }

  v6 = *(a1 + 1416);
  if (v6)
  {
    dispatch_release(v6);
    *(a1 + 1416) = 0;
  }

  v7 = *(a1 + 2096);
  if (v7)
  {
    dispatch_release(v7);
    *(a1 + 2096) = 0;
  }

  v8 = *(a1 + 888);
  if (v8)
  {
    dispatch_release(v8);
    *(a1 + 888) = 0;
  }

  sub_1000970EC(a1 + 1896);
  v9 = *(a1 + 1440);
  if (v9)
  {
    dispatch_release(v9);
    *(a1 + 1440) = 0;
  }

  v10 = *(a1 + 2592);
  if (v10)
  {
    dispatch_release(v10);
    *(a1 + 2592) = 0;
  }

  v11 = *(a1 + 472);
  if (v11)
  {
    dispatch_release(v11);
    *(a1 + 472) = 0;
  }

  v12 = *(a1 + 940);
  if (v12)
  {
    IOObjectRelease(v12);
  }

  v13 = *(a1 + 936);
  if (v13)
  {
    IOObjectRelease(v13);
  }

  v14 = *(a1 + 952);
  if (v14)
  {
    IOObjectRelease(v14);
    *(a1 + 952) = 0;
  }

  v15 = *(a1 + 956);
  if (v15)
  {
    IOObjectRelease(v15);
  }

  v16 = *(a1 + 944);
  if (v16)
  {
    IOObjectRelease(v16);
  }

  v17 = *(a1 + 968);
  if (v17)
  {
    IOObjectRelease(v17);
  }

  v18 = *(a1 + 972);
  if (v18)
  {
    IOObjectRelease(v18);
  }

  v19 = *(a1 + 992);
  if (v19)
  {
    IOObjectRelease(v19);
  }

  v20 = *(a1 + 996);
  if (v20)
  {
    IOObjectRelease(v20);
  }

  v21 = *(a1 + 1000);
  if (v21)
  {
    IOObjectRelease(v21);
  }

  v22 = *(a1 + 2728);
  if (v22)
  {
    [v22 removeAllObjects];
  }

  v23 = *(a1 + 2736);
  if (v23)
  {
    [v23 removeAllObjects];
  }

  v24 = *(a1 + 928);
  if (v24)
  {
    IONotificationPortDestroy(v24);
  }

  v25 = *(a1 + 1008);
  if (v25)
  {
    IONotificationPortDestroy(v25);
  }

  v26 = *(a1 + 1056);
  if (v26)
  {
    CFRelease(v26);
    *(a1 + 1056) = 0;
  }

  v27 = *(a1 + 1064);
  if (v27)
  {
    CFRelease(v27);
    *(a1 + 1064) = 0;
  }

  v28 = *(a1 + 1072);
  if (v28)
  {
    CFRelease(v28);
    *(a1 + 1072) = 0;
  }

  v29 = *(a1 + 1096);
  if (v29)
  {
    CFRelease(v29);
    *(a1 + 1096) = 0;
  }

  v30 = *(a1 + 1088);
  if (v30)
  {
    CFRelease(v30);
    *(a1 + 1088) = 0;
  }

  v31 = *(a1 + 1080);
  if (v31)
  {
    CFRelease(v31);
    *(a1 + 1080) = 0;
  }

  *(a1 + 1104) = 0;
  *(a1 + 1112) = 0;

  *(a1 + 1128) = 0;
  v32 = *(a1 + 216);
  if (v32)
  {
    CFRelease(v32);
    *(a1 + 216) = 0;
  }

  v33 = *(a1 + 224);
  if (v33)
  {
    CFRelease(v33);
    *(a1 + 224) = 0;
  }

  v34 = *(a1 + 232);
  if (v34)
  {
    CFRelease(v34);
    *(a1 + 232) = 0;
  }

  v35 = *(a1 + 264);
  if (v35)
  {
    CFRelease(v35);
    *(a1 + 264) = 0;
  }

  v36 = *(a1 + 112);
  if (v36)
  {
    CFRelease(v36);
    *(a1 + 112) = 0;
  }

  v37 = *(a1 + 104);
  if (v37)
  {
    CFRelease(v37);
    *(a1 + 104) = 0;
  }

  v38 = *(a1 + 144);
  if (v38)
  {
    CFRelease(v38);
    *(a1 + 144) = 0;
  }

  v39 = *(a1 + 152);
  if (v39)
  {
    CFRelease(v39);
    *(a1 + 152) = 0;
  }

  v40 = *(a1 + 160);
  if (v40)
  {
    CFRelease(v40);
    *(a1 + 160) = 0;
  }

  v41 = *(a1 + 168);
  if (v41)
  {
    CFRelease(v41);
    *(a1 + 168) = 0;
  }

  v42 = *(a1 + 184);
  if (v42)
  {
    CFRelease(v42);
    *(a1 + 184) = 0;
  }

  v43 = *(a1 + 1176);
  if (v43)
  {
    CFRelease(v43);
    *(a1 + 1176) = 0;
  }

  v44 = *(a1 + 1200);
  if (v44)
  {
    CFRelease(v44);
    *(a1 + 1200) = 0;
  }

  v45 = *(a1 + 88);
  if (v45)
  {
    CFRelease(v45);
    *(a1 + 88) = 0;
  }

  v46 = *(a1 + 208);
  if (v46)
  {
    CFRelease(v46);
    *(a1 + 208) = 0;
  }

  *(a1 + 200) = 0;
  v47 = *(a1 + 1320);
  if (v47)
  {
    CFRelease(v47);
    *(a1 + 1320) = 0;
  }

  v48 = *(a1 + 1344);
  if (v48)
  {
    CFRelease(v48);
    *(a1 + 1344) = 0;
  }

  v49 = *(a1 + 1448);
  if (v49)
  {
    CFRelease(v49);
    *(a1 + 1448) = 0;
  }

  v50 = *(a1 + 1480);
  if (v50)
  {
    CFRelease(v50);
    *(a1 + 1480) = 0;
  }

  v51 = *(a1 + 1784);
  if (v51)
  {
    CFRelease(v51);
    *(a1 + 1784) = 0;
  }

  sub_10012630C(*(a1 + 1536));
  v52 = *(a1 + 1552);
  if (v52)
  {
    CFRelease(v52);
    *(a1 + 1552) = 0;
  }

  v53 = *(a1 + 2160);
  if (v53)
  {
    [v53 setHandler:0];
    [*(a1 + 2160) invalidate];
    *(a1 + 2160) = 0;
  }

  v54 = *(a1 + 1752);
  if (v54)
  {
    CFRelease(v54);
    *(a1 + 1752) = 0;
  }

  v55 = *(a1 + 1760);
  if (v55)
  {
    CFRelease(v55);
    *(a1 + 1760) = 0;
  }

  v56 = *(a1 + 1776);
  if (v56)
  {
    dispatch_release(v56);
    *(a1 + 1776) = 0;
  }

  v57 = *(a1 + 2168);
  if (v57)
  {
    [v57 invalidate];
    v58 = *(a1 + 2168);
    if (v58)
    {
      CFRelease(v58);
      *(a1 + 2168) = 0;
    }
  }

  v59 = *(a1 + 424);
  if (v59)
  {
    CFRelease(v59);
    *(a1 + 424) = 0;
  }

  v60 = *(a1 + 416);
  if (v60)
  {
    CFRelease(v60);
    *(a1 + 416) = 0;
  }

  v61 = *(a1 + 464);
  if (v61)
  {
    CFRelease(v61);
    *(a1 + 464) = 0;
  }

  v62 = *(a1 + 360);
  if (v62)
  {
    CFRelease(v62);
    *(a1 + 360) = 0;
  }

  v63 = *(a1 + 1704);
  if (v63)
  {
    CFRelease(v63);
    *(a1 + 1704) = 0;
  }

  v64 = *(a1 + 1712);
  if (v64)
  {
    CFRelease(v64);
    *(a1 + 1712) = 0;
  }

  v65 = *(a1 + 2184);
  if (v65)
  {
    CFRelease(v65);
    *(a1 + 2184) = 0;
  }

  v66 = *(a1 + 2192);
  if (v66)
  {
    CFRelease(v66);
    *(a1 + 2192) = 0;
  }

  v67 = *(a1 + 2200);
  if (v67)
  {
    CFRelease(v67);
    *(a1 + 2200) = 0;
  }

  *(a1 + 1720) = 0;
  *(a1 + 1824) = 0;

  *(a1 + 1832) = 0;
  *(a1 + 1840) = 0;

  *(a1 + 1856) = 0;
  *(a1 + 1864) = 0;

  *(a1 + 1936) = 0;
  *(a1 + 2784) = 0;

  *(a1 + 1872) = 0;
  v68 = *(a1 + 1880);
  if (v68)
  {

    *(a1 + 1880) = 0;
  }

  v69 = *(a1 + 1888);
  if (v69)
  {

    *(a1 + 1888) = 0;
  }

  *(a1 + 2336) = 0;
  qword_100298598 = 0;
  v70 = *(a1 + 2304);
  if (v70)
  {
    CFRelease(v70);
    *(a1 + 2304) = 0;
  }

  v71 = *(a1 + 176);
  if (v71)
  {
    CFRelease(v71);
    *(a1 + 176) = 0;
  }

  v72 = *(a1 + 2368);
  if (v72)
  {
    CFRelease(v72);
    *(a1 + 2368) = 0;
  }

  v73 = *(a1 + 328);
  if (v73)
  {
    CFRelease(v73);
    *(a1 + 328) = 0;
  }

  v74 = *(a1 + 2504);
  if (v74)
  {
    CFRelease(v74);
    *(a1 + 2504) = 0;
  }

  if (&_ct_green_tea_logger_destroy)
  {
    v75 = *(a1 + 2280);
    ct_green_tea_logger_destroy();
  }

  *(a1 + 2280) = 0;
  v76 = *(a1 + 2424);
  if (v76)
  {
    CFRelease(v76);
    *(a1 + 2424) = 0;
  }

  v77 = *(a1 + 2256);
  if (v77)
  {
    CFRelease(v77);
    *(a1 + 2256) = 0;
  }

  v78 = *(a1 + 2664);
  if (v78)
  {
    CFRelease(v78);
    *(a1 + 2664) = 0;
  }

  v79 = *(a1 + 2744);
  if (v79)
  {
    CFRelease(v79);
    *(a1 + 2744) = 0;
  }

  v80 = *(a1 + 2752);
  if (v80)
  {
    CFRelease(v80);
    *(a1 + 2752) = 0;
  }

  v81 = *(a1 + 2768);
  if (v81)
  {
    CFRelease(v81);
    *(a1 + 2768) = 0;
  }

  v82 = *(a1 + 1296);
  if (v82)
  {

    *(a1 + 1296) = 0;
  }

  v83 = *(a1 + 1304);
  if (v83)
  {

    *(a1 + 1304) = 0;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10008B538(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  if (!a4)
  {
    sub_1001718F4();
    return;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a4 + 1784), 0);
  v9 = [ValueAtIndex sessionBased];
  v10 = [ValueAtIndex network];
  if (!v10)
  {
    v25 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: request network is null", "__WiFiDeviceManagerForcedAssociationCallback"}];
    }

    goto LABEL_37;
  }

  v11 = [ValueAtIndex client];
  if (!v11)
  {
    v25 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: client is null", "__WiFiDeviceManagerForcedAssociationCallback"}];
    }

LABEL_37:
    v12 = 0;
    v23 = 0x7FFFFFFFLL;
    goto LABEL_41;
  }

  v12 = v11;
  if (a2)
  {
    v25 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: failed to association error %d", "__WiFiDeviceManagerForcedAssociationCallback", a2}];
    }

    v23 = 7;
LABEL_41:
    objc_autoreleasePoolPop(v25);
    v26 = [ValueAtIndex bypassPrompt];
    v24 = a2 == 0;
    if (a2 && (v26 & 1) == 0)
    {
      if (v9)
      {
        sub_100171808(a4);
      }

      sub_1000813A4(a4, a3);
    }

    if (!v12)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  sub_100189AE8();
  if (v9)
  {
    v13 = [ValueAtIndex bundleId];
    v14 = objc_autoreleasePoolPush();
    if (v13)
    {
      *(a4 + 1760) = v13;
      CFRetain(v13);
      *(a4 + 1752) = v10;
      CFRetain(v10);
      [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
      v15 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: start monitoring application state for %@", "__WiFiManagerStartMonitoringSessionBasedApplication", *(a4 + 1760)}];
      }

      objc_autoreleasePoolPop(v15);
      v16 = [[NSArray alloc] initWithObjects:{v13, 0}];
      if (objc_opt_class())
      {
        v17 = [BKSApplicationStateMonitor alloc];
        v18 = [v17 initWithBundleIDs:v16 states:BKSApplicationStateAll];
        *(a4 + 2168) = v18;
        if (v18)
        {
          v29 = _NSConcreteStackBlock;
          v30 = 3221225472;
          v31 = sub_10008BE28;
          v32 = &unk_100260AC8;
          v33 = a4;
          [v18 setHandler:&v29];
          if (!v16)
          {
LABEL_13:
            objc_autoreleasePoolPop(v14);
            goto LABEL_14;
          }

LABEL_12:
          CFRelease(v16);
          goto LABEL_13;
        }

        sub_100171730();
      }

      CFRelease(v13);
    }

    else
    {
      sub_10017179C();
      v16 = 0;
    }

    CFRelease(v10);
    if (!v16)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  v19 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: request.bypassPrompt=%d assocResult=%d", "__WiFiDeviceManagerForcedAssociationCallback", objc_msgSend(ValueAtIndex, "bypassPrompt"), 0}];
  }

  objc_autoreleasePoolPop(v19);
  if ([ValueAtIndex bypassPrompt])
  {
    v20 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: showing app join notification for %@", "__WiFiDeviceManagerForcedAssociationCallback", v10}];
    }

    objc_autoreleasePoolPop(v20);
    sub_1000DDF10(a1, v10);
    if (sub_100177FFC(v10))
    {
      v21 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: accessory network (%@) is unsecured", "__WiFiDeviceManagerForcedAssociationCallback", v10}];
      }

      objc_autoreleasePoolPop(v21);
      v22 = 3;
    }

    else
    {
      v22 = 1;
    }

    v29 = 0;
    v30 = &v29;
    v31 = 0x3052000000;
    v32 = sub_100002B40;
    v33 = sub_100006758;
    v34 = [ValueAtIndex bundleId];
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v28[3] = v10;
    CFRetain(v10);
    CFRetain(*(v30 + 40));
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10008BDB4;
    block[3] = &unk_100260AA8;
    block[6] = v10;
    block[7] = v22;
    block[4] = &v29;
    block[5] = v28;
    dispatch_async(qword_100298C50, block);
    _Block_object_dispose(v28, 8);
    _Block_object_dispose(&v29, 8);
  }

  [ValueAtIndex bypassPrompt];
  v23 = 0;
  v24 = 1;
LABEL_26:
  sub_10014B32C(v12, a4, v10, v23);
LABEL_27:
  if ([ValueAtIndex callback])
  {
    ([ValueAtIndex callback])(a4, v10, v23, objc_msgSend(ValueAtIndex, "context"));
  }

  CFArrayRemoveValueAtIndex(*(a4 + 1784), 0);
  if (v24)
  {
    sub_10015BDA0();
  }
}

void sub_10008BA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10008BAA0(uint64_t a1, uint64_t a2, const __CFArray *a3, uint64_t a4, uint64_t a5)
{
  if (!a5)
  {
    sub_100171A38();
    return;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a5 + 1784), 0);
  v9 = [ValueAtIndex network];
  if (v9)
  {
    v10 = [ValueAtIndex client];
    if (v10)
    {
      v11 = v10;
      if (a2 == 3)
      {
        v12 = 0;
        v13 = 6;
      }

      else
      {
        if (a2)
        {
          v23 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s: failed to scan error %d", "__WiFiManagerAddNetworkScanCallback", a2}];
          }

          v13 = 7;
        }

        else
        {
          if ([ValueAtIndex usingPrefix])
          {
            v14 = sub_10000A878(v9);
          }

          else
          {
            v14 = 0;
          }

          Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
          if (Mutable)
          {
            v12 = Mutable;
            if (a3 && CFArrayGetCount(a3) >= 1)
            {
              v16 = 0;
              do
              {
                v17 = CFArrayGetValueAtIndex(a3, v16);
                if (v17)
                {
                  v18 = v17;
                  if (sub_10000A878(v17))
                  {
                    v19 = sub_10000A878(v18);
                    if (CFStringCompare(v19, v14, 0) == kCFCompareEqualTo)
                    {
                      goto LABEL_31;
                    }

                    v20 = sub_10000A878(v18);
                    if (CFStringHasPrefix(v20, v14))
                    {
                      CFArrayAppendValue(v12, v18);
                    }
                  }
                }

                ++v16;
              }

              while (v16 < CFArrayGetCount(a3));
            }

            if (CFArrayGetCount(v12))
            {
              v21 = CFArrayGetValueAtIndex(v12, 0);
              if (v21)
              {
                v18 = v21;
LABEL_31:
                v22 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: found network %@ matching prefix %@", "__WiFiManagerAddNetworkScanCallback", sub_10000A878(v18), v14}];
                }

                objc_autoreleasePoolPop(v22);
                [ValueAtIndex setNetworkMatchingPrefix:v18];
                sub_10015BDA0();
                goto LABEL_27;
              }
            }

            v13 = 9;
            goto LABEL_23;
          }

          v23 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s: null matchingResults", "__WiFiManagerAddNetworkScanCallback"}];
          }

          v13 = 9;
        }

        objc_autoreleasePoolPop(v23);
        v12 = 0;
      }

LABEL_23:
      sub_10014B32C(v11, a5, v9, v13);
      goto LABEL_24;
    }

    sub_100171960();
  }

  else
  {
    sub_1001719CC();
  }

  v12 = 0;
  v13 = 9;
LABEL_24:
  if ([ValueAtIndex callback])
  {
    ([ValueAtIndex callback])(a5, v9, v13, objc_msgSend(ValueAtIndex, "context"));
  }

  CFArrayRemoveValueAtIndex(*(a5 + 1784), 0);
  if (v12)
  {
LABEL_27:

    CFRelease(v12);
  }
}

void sub_10008BDB4(uint64_t a1)
{
  sub_100139B28(*(*(*(a1 + 32) + 8) + 40), *(a1 + 48), *(a1 + 56));
  v2 = *(*(*(a1 + 40) + 8) + 24);
  if (v2)
  {
    CFRelease(v2);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v3 = *(*(*(a1 + 32) + 8) + 40);
  if (v3)
  {
    CFRelease(v3);
    *(*(*(a1 + 32) + 8) + 40) = 0;
  }
}

void sub_10008BE28(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008BE9C;
  v4[3] = &unk_10025F5F8;
  v4[4] = a2;
  v4[5] = v2;
  dispatch_async(v3, v4);
}

void sub_10008BE9C(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:@"SBApplicationStateDisplayIDKey"];
  v5 = a1 + 32;
  v3 = *(a1 + 32);
  v4 = *(v5 + 8);
  v6 = objc_autoreleasePoolPush();
  if (v3)
  {
    if ([v3 objectForKey:@"SBApplicationStateKey"])
    {
      LODWORD(v3) = [objc_msgSend(v3 objectForKey:{@"SBApplicationStateKey", "intValue"}];
    }

    else
    {
      LODWORD(v3) = 0;
    }
  }

  else
  {
    sub_100171AA4();
  }

  objc_autoreleasePoolPop(v6);
  if (!v4)
  {
    sub_100171B10();
    return;
  }

  v7 = objc_autoreleasePoolPush();
  if (!v2)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: bundle id is null", "__WiFiManagerSessionBasedApplicationStateChange"}];
    }

    v11 = v7;
    goto LABEL_17;
  }

  if (off_100298C40)
  {
    if ((v3 - 1) > 7)
    {
      v8 = @"Unknown";
    }

    else
    {
      v8 = off_100260E80[v3 - 1];
    }

    [off_100298C40 WFLog:3 message:{"%s: bundleId %@ state %@", "__WiFiManagerSessionBasedApplicationStateChange", v2, v8}];
  }

  objc_autoreleasePoolPop(v7);
  v9 = *(v4 + 1768);
  if (v3 != 8 && *(v4 + 1768))
  {
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: state change ignored, timer running for disassociation", "__WiFiManagerSessionBasedApplicationStateChange"}];
    }

LABEL_16:
    v11 = v10;
LABEL_17:

    objc_autoreleasePoolPop(v11);
    return;
  }

  if (v3 != 8 || !*(v4 + 1768))
  {
    if (v3 == 8 || *(v4 + 1768))
    {
      return;
    }

    v13 = *(v4 + 1776);
    v14 = dispatch_time(0, 15000000000);
    dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, 0);
    *(v4 + 1768) = 1;
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: starting timer for disassociation", "__WiFiManagerSessionBasedApplicationStateChange"}];
    }

    goto LABEL_16;
  }

  v12 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: application became active, cancelling disassociation timer", "__WiFiManagerSessionBasedApplicationStateChange"}];
  }

  objc_autoreleasePoolPop(v12);
  dispatch_source_set_timer(*(v4 + 1776), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  *(v4 + 1768) = 0;
}

void sub_10008C100(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    sub_1001666E8(a2);
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

uint64_t sub_10008C170(uint64_t a1)
{
  memset(v8, 0, 44);
  *buffer = 0;
  v7 = 0;
  v2 = socket(2, 2, 0);
  if (v2 == -1)
  {
    sub_100171BDC();
    return 0;
  }

  else
  {
    v3 = v2;
    if (a1)
    {
      CFStringGetCString(a1, buffer, 16, 0);
      if (buffer[0])
      {
        __strlcpy_chk();
        if (ioctl(v3, 0xC02C6938uLL, v8))
        {
          v4 = 0;
        }

        else
        {
          v4 = (v8[1] & 0xE0) == 128;
        }

        a1 = v4;
      }

      else
      {
        sub_100171B7C();
        a1 = 0;
      }
    }

    close(v3);
  }

  return a1;
}

uint64_t sub_10008C278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 1950);
  *a3 = v3;
  if (v3 == 1)
  {
    v4 = *(a2 + 1951);
    v5 = *(a2 + 1967);
    v6 = *(a2 + 1983);
    *(a3 + 49) = *(a2 + 1999);
    *(a3 + 33) = v6;
    *(a3 + 17) = v5;
    *(a3 + 1) = v4;
    v7 = *(a2 + 2015);
    v8 = *(a2 + 2031);
    v9 = *(a2 + 2047);
    *(a3 + 113) = *(a2 + 2063);
    *(a3 + 97) = v9;
    *(a3 + 81) = v8;
    *(a3 + 65) = v7;
  }

  return *(a2 + 2648);
}

void sub_10008C2C4(void *a1, uint64_t a2, uint64_t a3)
{
  context[0] = a3;
  context[1] = 0xAAAAAAAA0000002FLL;
  v7 = 0;
  v8 = 0;
  context[2] = 0;
  CFSetApplyFunction(*(a3 + 112), sub_100003B88, context);
  v5 = v7;
  *(a3 + 324) = v7;
  if (v5 == 1)
  {
    sub_100171C48(a3);
  }

  CFSetApplyFunction(*(a3 + 144), sub_10008FC70, a1);
}

void sub_10008C35C(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a2 + 1217);
  *(a2 + 1217) = a3;
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v7 = "disabled";
    if (*(a2 + 1219) == 1)
    {
      v8 = "enabled";
    }

    else
    {
      v8 = "disabled";
    }

    if (*(a2 + 1217) == 1)
    {
      v7 = "enabled";
    }

    [off_100298C40 WFLog:3 message:{"%s: MIS Discovery Req state %s Current state %s", "__WiFiManagerDeviceMISDiscoverStateChangeCallback", v8, v7}];
  }

  objc_autoreleasePoolPop(v6);
  if (v5 != a3 && objc_opt_class())
  {
    v9 = qword_100298C50;

    dispatch_async(v9, &stru_100260AE8);
  }
}

void sub_10008C450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[0] = a1;
  v4[1] = a3;
  CFSetApplyFunction(*(a4 + 144), sub_10009046C, v4);
}

void sub_10008C48C(uint64_t a1, uint64_t a2, const void **a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v7 = a3;
  sub_100082AC8(a6, a3, a2);
  if (!sub_10000A154(v6))
  {
    v35 = sub_1001640E4(v6, v7);
    v36 = v35;
    if (v35)
    {
      v37 = sub_10000A540(v35, @"PRIVATE_MAC_ADDRESS");
      v38 = v37;
      if (v37)
      {
        Value = CFDictionaryGetValue(v37, @"PRIVATE_MAC_ADDRESS_TYPE");
        v40 = sub_10000A540(v36, @"IsPrivateMacAddressCarriedOver");
        if (v40)
        {
          v41 = v40 == kCFBooleanTrue;
        }

        else
        {
          v41 = 0;
        }

        v42 = v41;
LABEL_49:
        if (sub_10000A540(v7, @"COLOCATED_NETWORK_SCOPE_ID"))
        {
          if (Value && sub_10000AC54(Value) != 1 && (sub_100171CA0(v6, v7, v36, &context) & 1) == 0)
          {
LABEL_183:
            CFRelease(context);
          }
        }

        else if (Value && ((sub_10000AC54(Value) != 1) & v42) == 1 && (sub_100171D88(v38, v6, v36, &context) & 1) == 0)
        {
          goto LABEL_183;
        }

        if (!v7)
        {
          return;
        }

        v43 = sub_10000A878(v7);
        if (*(v6 + 497))
        {
          sub_100171E64(v6, (v6 + 497));
        }

        if ((!*(v6 + 496) || ![+[WiFiUserInteractionMonitor isSetupCompleted] sharedInstance]&& *(v6 + 384))
        {
          sub_100171EF0();
        }

        if (!sub_10000AFE4(v7))
        {
LABEL_64:
          v44 = kCFAllocatorDefault;
          Current = CFAbsoluteTimeGetCurrent();
          cfa = CFDateCreate(kCFAllocatorDefault, Current);
          v46 = +[NSUserDefaults standardUserDefaults];
          v47 = _os_feature_enabled_impl();
          if (sub_10000A154(v6))
          {
LABEL_167:
            if (cfa)
            {
              CFRelease(cfa);
            }

            v87 = *(v6 + 432);
            if (v87)
            {
              CFRelease(v87);
              *(v6 + 432) = 0;
            }

            v88 = sub_10000A878(v7);
            *(v6 + 432) = CFStringCreateCopy(v44, v88);
            goto LABEL_29;
          }

          v48 = sub_10000A878(v7);
          v49 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            v113 = "__WiFiManagerUpdatePrivateMac";
            v114 = v48;
            [off_100298C40 WFLog:3 message:" %s WFMacRandomisation : Retrieving private mac cache version of the network <%@>"];
          }

          v123 = v48;
          objc_autoreleasePoolPop(v49);
          v50 = sub_1001640E4(v6, v7);
          if (sub_10001D200(v7) || sub_10001D200(v50))
          {
            if (_os_feature_enabled_impl())
            {
              v51 = 1;
            }

            else
            {
              v51 = [(NSUserDefaults *)v46 BOOLForKey:@"PrivateMACAirplayNetworkEnabled"];
            }
          }

          else
          {
            v51 = 0;
          }

          idx = kCFBooleanFalse;
          v52 = sub_100022834(v7) || sub_100022834(v50);
          allocatora = kCFAllocatorDefault;
          if (v50 && (v53 = sub_10009D190(), v53 == CFGetTypeID(v50)))
          {
            v54 = v6;
            TypeID = sub_10000A540(v50, @"PRIVATE_MAC_ADDRESS");
            v56 = sub_10000A540(v50, @"MacAddressRandomisationTagMigratedNetwork");
            v57 = sub_10000A540(v50, @"ResetCaptiveProbe");
            v58 = sub_10000A540(v50, @"PrivateMacFutureMacAddress");
            v59 = sub_10000A540(v50, @"FailureThresholdMet");
            if (!TypeID)
            {
              Mutable = 0;
              v67 = 1;
              HIDWORD(v120) = 1;
              goto LABEL_112;
            }

            MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, TypeID);
            Mutable = MutableCopy;
            if (v58)
            {
              CFDictionarySetValue(MutableCopy, @"PRIVATE_MAC_ADDRESS_VALUE", v58);
              CFDictionarySetValue(Mutable, @"PRIVATE_MAC_ADDRESS_IN_USE", v58);
            }

            else
            {
              v68 = CFDictionaryGetValue(TypeID, @"PRIVATE_MAC_ADDRESS_VALUE");
              if (v68)
              {
                CFDictionarySetValue(Mutable, @"PRIVATE_MAC_ADDRESS_IN_USE", v68);
              }

              v58 = 0;
            }

            LOBYTE(TypeID) = 0;
            HIDWORD(v120) = 1;
          }

          else
          {
            Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            if (v47)
            {
              if (sub_1000A2ED8(v7))
              {
                v62 = 2;
              }

              else
              {
                v62 = 3;
              }
            }

            else
            {
              v62 = 3;
            }

            v63 = sub_100059228(v62);
            CFDictionarySetValue(Mutable, @"PRIVATE_MAC_ADDRESS_TYPE", v63);
            if (v63)
            {
              CFRelease(v63);
            }

            v64 = *(v6 + 424);
            if (v51)
            {
              v58 = sub_100177C58(v64, *(v6 + 464), v48);
              sub_10000AD34(v7, @"RotationKeyUsed", 0);
              v65 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                v114 = v58;
                v116 = v48;
                [off_100298C40 WFLog:3 message:{"%s WFMacRandomisation : Generated private mac address <%@> for airplay network <%@> ", "__WiFiManagerUpdatePrivateMac"}];
              }
            }

            else if (v52)
            {
              v58 = sub_100177C58(v64, *(v6 + 464), v48);
              sub_10000AD34(v7, @"RotationKeyUsed", 0);
              v65 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                v114 = v58;
                v116 = v48;
                [off_100298C40 WFLog:3 message:{"%s WFMacRandomisation : Generated private mac address <%@> for accessory network <%@> ", "__WiFiManagerUpdatePrivateMac"}];
              }
            }

            else
            {
              v58 = sub_100177A18(v64, *(v6 + 416), *(v6 + 464), v48);
              v65 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                v114 = v58;
                v116 = v48;
                [off_100298C40 WFLog:3 message:{"%s WFMacRandomisation : Generated private mac address <%@> for network <%@> ", "__WiFiManagerUpdatePrivateMac"}];
              }
            }

            objc_autoreleasePoolPop(v65);
            if (v58)
            {
              CFDictionarySetValue(Mutable, @"PRIVATE_MAC_ADDRESS_VALUE", v58);
              CFDictionarySetValue(Mutable, @"PRIVATE_MAC_ADDRESS_IN_USE", v58);
              sub_10000AD34(v7, @"MacGenerationTimeStamp", cfa);
              sub_10000AD34(v7, @"NoAssociationWithNewMac", kCFBooleanTrue);
              sub_10000AD34(v7, @"RotationKeyUsed", *(v6 + 416));
              CFRelease(v58);
              v54 = v6;
              if (!sub_10007DC04(v6, v7, 3))
              {
                v66 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  v113 = v48;
                  [off_100298C40 WFLog:3 message:"WFMacRandomisation : Updated join network <%@> with private mac but unable to set it to cache"];
                }

                objc_autoreleasePoolPop(v66);
              }

              v58 = 0;
            }

            else
            {
              v54 = v6;
            }

            v59 = 0;
            HIDWORD(v120) = 0;
            LOBYTE(TypeID) = 1;
            v56 = kCFBooleanFalse;
            v57 = kCFBooleanFalse;
          }

          if (Mutable)
          {
            v97 = TypeID;
            sub_10000AD34(v7, @"PRIVATE_MAC_ADDRESS", Mutable);
            sub_10015CFDC(v54, v7, @"PRIVATE_MAC_ADDRESS", Mutable, v98, v99, v100, v101, v113, v114, v116, v117, v118, v119, v120, kCFBooleanFalse, v48, kCFAllocatorDefault, cfa, v129, v131, context, v133, v134, v135, v136, v137, v138);
            if (!v102)
            {
              v103 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                v113 = v123;
                [off_100298C40 WFLog:3 message:"WFMacRandomisation : Updated existing private cache network <%@> but unable to set it to cache"];
              }

              objc_autoreleasePoolPop(v103);
            }

            v67 = 0;
            LOBYTE(TypeID) = v97;
          }

          else
          {
            v67 = 1;
          }

LABEL_112:
          if (sub_10000A7CC(v7))
          {
            sub_100171FD4(v7, v54);
            if (v67)
            {
              goto LABEL_165;
            }
          }

          else if (v67)
          {
            goto LABEL_165;
          }

          if (!*(v54 + 384))
          {
            sub_10017202C(Mutable, v54, v7, v123);
          }

          if (v56 && v56 == kCFBooleanTrue)
          {
            if (v58)
            {
              v69 = TypeID;
              TypeID = CFDataGetTypeID();
              v41 = TypeID == CFGetTypeID(v58);
              LOBYTE(TypeID) = v69;
              if (v41)
              {
                TypeID = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  v114 = v123;
                  v116 = v58;
                  v113 = "__WiFiManagerUpdatePrivateMac";
                  [off_100298C40 WFLog:3 message:" %s WFMacRandomisation : Attempting association for migrated network <%@> re-trying random MAC <%@>"];
                }

                objc_autoreleasePoolPop(TypeID);
                LOBYTE(TypeID) = v69;
              }
            }

            sub_10000AD34(v7, @"MacAddressRandomisationTagMigratedNetwork", v56);
          }

          if (v59 && v59 == kCFBooleanTrue)
          {
            sub_100172148(v123, v54, v7, idx);
            if (v57)
            {
LABEL_128:
              if (v57 == kCFBooleanTrue)
              {
                v70 = 1;
              }

              else
              {
                v70 = TypeID;
              }

              if (v70)
              {
                goto LABEL_172;
              }

              goto LABEL_165;
            }
          }

          else if (v57)
          {
            goto LABEL_128;
          }

          if ((v120 & 0x100000000) == 0)
          {
LABEL_172:
            context = v54;
            v133 = 0xAAAAAAAA00000070;
            v134 = v7;
            v135 = 1;
            v136 = 0;
            CFSetApplyFunction(*(v54 + 112), sub_100003B88, &context);
            v89 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              v113 = v123;
              [off_100298C40 WFLog:3 message:"WFMacRandomisation : DHCP released for network <%@>"];
            }

            objc_autoreleasePoolPop(v89);
            sub_10015CFDC(v54, v7, @"ResetCaptiveProbe", idx, v90, v91, v92, v93, v113, v114, v116, v117, v118, v119, v120, idx, v123, allocatora, cfa, v129, v131, context, v133, v134, v135, v136, v137, v138);
            v95 = v94;
            v96 = objc_autoreleasePoolPush();
            if (v95)
            {
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation : Cleared the property kWiFiPrivateMacResetCaptiveProbe in private mac network record for <%@>", "__WiFiManagerUpdatePrivateMac", sub_10000A878(v7)}];
              }
            }

            else if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"WFMacRandomisation : Updated kWiFiPrivateMacResetCaptiveProbe keys for network <%@> but unable to set it to cache", v124, v115}];
            }

            objc_autoreleasePoolPop(v96);
          }

LABEL_165:
          v6 = v54;
          v44 = allocatora;
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          goto LABEL_167;
        }

        sub_100020170(v6);
        v82 = v81;
        v83 = sub_10000AA64(*(v6 + 360), v7);
        v131 = 0;
        context = -1;
        if (v83)
        {
          v84 = v83;
          v85 = v6;
          v86 = sub_10000A540(v83, @"PrivateMacPrefChanged");
          if (v86 && v86 == kCFBooleanTrue || sub_10000A540(v84, @"PrivateMacDefaultToOFF"))
          {
LABEL_160:
            v6 = v85;
            goto LABEL_64;
          }

          v104 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            v114 = v43;
            [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation : HS20 network <%@> Will check provisioning for private MAC default OFF property", "__WiFiManagerWillAssociateCallback"}];
          }
        }

        else
        {
          v104 = objc_autoreleasePoolPush();
          v85 = v6;
          if (off_100298C40)
          {
            v114 = v43;
            [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation : New HS20 network <%@> Will check provisioning for private MAC default OFF property", "__WiFiManagerWillAssociateCallback"}];
          }
        }

        objc_autoreleasePoolPop(v104);
        sub_100163FB8();
        if (context != -1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v82, context);
          v106 = objc_autoreleasePoolPush();
          v107 = off_100298C40;
          if (off_100298C40)
          {
            v116 = sub_10000A878(ValueAtIndex);
            v117 = sub_1000A11B4(v7);
            v113 = "__WiFiManagerWillAssociateCallback";
            v114 = v43;
            [v107 WFLog:3 message:"%s: WFMacRandomisation : HS20 network <%@> found (provisioned). Profile from private Mac Cache : <%@>. Sanity check : is found earlier to be provisioned? <%hhu>"];
          }

          objc_autoreleasePoolPop(v106);
          if (ValueAtIndex)
          {
            v108 = sub_10000A540(ValueAtIndex, @"PrivateMacDefaultToOFF");
            if (v108)
            {
              v109 = v108;
              v110 = sub_10000A540(ValueAtIndex, @"PrivateMacControlledDevice");
              sub_10000AD34(v7, @"PrivateMacDefaultToOFF", v109);
              if (v110 && v110 == kCFBooleanTrue)
              {
                sub_10000AD34(v7, @"PrivateMacControlledDevice", kCFBooleanTrue);
              }

              v111 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                v114 = v43;
                v116 = v109;
                v113 = "__WiFiManagerWillAssociateCallback";
                [off_100298C40 WFLog:3 message:"%s: WFMacRandomisation : kWiFiPrivateMacProfileDefaultFeatureToDisable in account profile. Copied over to network <%@>. Flag : <%@>"];
              }

              objc_autoreleasePoolPop(v111);
              if (!sub_10007DC04(v85, v7, 8))
              {
                v112 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  v113 = v43;
                  [off_100298C40 WFLog:4 message:"WFMacRandomisation : Unable to add new network (%@) to Private Mac network List"];
                }

                objc_autoreleasePoolPop(v112);
              }
            }
          }
        }

        goto LABEL_160;
      }

      Value = 0;
    }

    else
    {
      Value = 0;
      v38 = 0;
    }

    v42 = 0;
    goto LABEL_49;
  }

  if (sub_10000A154(v6))
  {
    v9 = sub_10001A9BC(v7);
    v10 = sub_1000C4450(a1, v7);
    if (v10)
    {
      v11 = sub_10001B368(v7);
    }

    else
    {
      v11 = 0;
    }

    v12 = [objc_msgSend(+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
    v13 = [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
    v14 = v11;
    if (!v11)
    {
      v14 = [v9 networkProfile];
    }

    v15 = [v13 temporaryUserSettingForNetworkProfile:v14];
    v16 = CWFPrivateMACShouldEnablePrivateMACAddressForEvaluation();
    v130 = v6;
    if (!v6 || *(v6 + 496) && [+[WiFiUserInteractionMonitor isSetupCompleted] sharedInstance]
    {
      v17 = v7;
      v18 = 0;
      v19 = v11 == 0;
      v20 = v12 != 1 || v11 == 0;
      v21 = v20 | v16;
      if (v15 != 1)
      {
        v19 = 0;
      }

      v22 = "NOT ";
      if (v21)
      {
        allocator = v15;
        cf = v12;
        v23 = 0;
        if (!v19)
        {
          v24 = sub_100021720(v130);
          v25 = v24;
          if (v24)
          {
            v26 = sub_10001A9BC(v24);
            v27 = sub_1000C4450(a1, v25);
            v28 = v27;
            v29 = v17;
            if (v27)
            {
              v122 = sub_10001B368(v27);
            }

            else
            {
              v122 = 0;
            }
          }

          else
          {
            v26 = 0;
            v122 = 0;
            v28 = 0;
            v29 = v17;
          }

          v71 = sub_10000A540(v29, @"COLOCATED_NETWORK_SCOPE_ID");
          v72 = v26;
          if (v71 && v26)
          {
            v73 = [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
            v74 = v122;
            v75 = v122;
            if (!v122)
            {
              v75 = [v72 networkProfile];
            }

            v23 = [v73 privateMACAddressForNetworkProfile:v75];
            v76 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s Will carry over previous private MAC address for seamless transition (mac=%@, network=%@)", "__WiFiManagerUnifiedPrivateMACManagerWillAssociate", v23, v9}];
            }

            objc_autoreleasePoolPop(v76);
          }

          else
          {
            v77 = [v11 copy];
            [v77 setLastJoinedByUserAt:0];
            [v77 setLastJoinedBySystemAt:0];
            [v77 setLastDisconnectTimestamp:0];
            if (((v12 == 1) & v16) == 1)
            {
              [v77 setPrivateMACAddressEvaluationState:0];
            }

            v78 = [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
            if (!v77)
            {
              v77 = [v9 networkProfile];
            }

            v23 = [v78 privateMACAddressForNetworkProfile:v77];
            v74 = v122;
          }

          if (v25)
          {
            CFRelease(v25);
          }

          if (v28)
          {
            CFRelease(v28);
          }

          v18 = +[NSMutableDictionary dictionary];
          [v18 setValue:CWFEthernetAddressDataFromString() forKey:@"PRIVATE_MAC_ADDRESS_VALUE"];
          v79 = cf;
          if (!v11)
          {
            v79 = allocator;
          }

          if (v79 == 3)
          {
            v80 = &__kCFBooleanFalse;
          }

          else
          {
            v80 = &__kCFBooleanTrue;
          }

          [v18 setValue:v80 forKey:@"PRIVATE_MAC_ADDRESS_VALID"];
          v22 = "";
        }
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v17 = v7;
      v18 = 0;
      v23 = 0;
      v22 = "NOT ";
    }

    sub_10000AD34(v17, @"PRIVATE_MAC_ADDRESS", v18);
    v30 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s Will %suse private MAC address for association (mac=%@, macData=%@, network=%@)", "__WiFiManagerUnifiedPrivateMACManagerWillAssociate", v22, v23, CWFHexadecimalStringFromData(), v9}];
    }

    objc_autoreleasePoolPop(v30);
    v31 = [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
    v32 = v11;
    if (!v11)
    {
      v32 = [v9 networkProfile];
    }

    [v31 setNetworkIDForAssociationWithMACAddress:v23 networkProfile:v32];

    v7 = v17;
    v6 = v130;
    if (v10)
    {
      CFRelease(v10);
    }
  }

  if (v7)
  {
LABEL_29:
    if (*(v6 + 1216))
    {
      if (!*(v6 + 2416) || (v33 = *(v6 + 2417), v33 <= 0xE) && ((1 << v33) & 0x5440) != 0)
      {
        v34 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: MIS state is enabled. Force-disabling before association.", "__WiFiManagerWillAssociateCallback"}];
        }

        objc_autoreleasePoolPop(v34);
        sub_10007B77C(v6, 0, 0);
      }
    }
  }
}