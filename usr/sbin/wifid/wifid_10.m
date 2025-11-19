void sub_1000B2BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B2C28(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a3)
  {
    return sub_10013D4BC(*(a3 + 120), a2, a4);
  }

  return result;
}

void sub_1000B2C3C(uint64_t a1, const void *a2, uint64_t a3, int a4, uint64_t a5)
{
  v9 = objc_autoreleasePoolPush();
  if (a3)
  {
    if (a2)
    {
      v10 = sub_100007D90(a3, a2, 1);
      v11 = sub_10000A540(v10, @"BSSID");
      if (v11)
      {
        if (!v10)
        {
          goto LABEL_16;
        }

        v12 = v11;
        v13 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: LQAMgr Trigger Disconnected and Blacklisted Network %@", "__WiFiLQAMgrTrigDiscEventCallback", sub_10000A878(v10)}];
        }

        objc_autoreleasePoolPop(v13);
        sub_1000B9DC8(a3, a2, 1000, "__WiFiLQAMgrTrigDiscEventCallback", 10443);
        v14 = sub_10001A9BC(v10);
        v15 = sub_1000BE2EC(a3, 6, a4, v12, 1);
        [*(a3 + 6720) setNetworkDenyListInfo:v15 forScanResult:v14];
        -[WiFiUsageMonitor setTdLogic_deferJoin:perBSSID:](+[WiFiUsageMonitor sharedInstance](WiFiUsageMonitor, "sharedInstance"), "setTdLogic_deferJoin:perBSSID:", 60 * [*(a3 + 6720) denyListThresholdForReason:6 forSSIDThresholds:1], 60 * objc_msgSend(*(a3 + 6720), "denyListThresholdForReason:forSSIDThresholds:", 6, 0));
        v16 = *(a3 + 9096);
        if (v16)
        {
          [v16 startCellularDataUsageAccountingPostTD:v14 withMinRSSI:-85];
        }

        if (*(a3 + 6280))
        {
          v17 = *(a3 + 4616);
          if (v17)
          {
            v17(a3, 6, a5, *(a3 + 4624));
          }

          else
          {
            v18 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: softErrorManagerService callback is NULL!", "__WiFiDeviceManagerTriggerDisconnectNotification"}];
            }

            objc_autoreleasePoolPop(v18);
          }
        }

        goto LABEL_15;
      }

      if (!sub_1001998AC(v10))
      {
LABEL_15:
        CFRelease(v10);
      }
    }

    else
    {
      sub_100199918();
    }
  }

  else
  {
    sub_100199984();
  }

LABEL_16:

  objc_autoreleasePoolPop(v9);
}

void sub_1000B2E74(int a1, uint64_t a2, uint64_t a3, const __CFDictionary *cf)
{
  valuePtr = 0;
  if (a3)
  {
    if (cf && (v7 = CFGetTypeID(cf), v7 == CFDictionaryGetTypeID()))
    {
      Value = CFDictionaryGetValue(cf, @"LEAKY_AP_STATS_VER");
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
        if (valuePtr == 2)
        {
          v11 = *(a3 + 4552);
          if (v11)
          {
            v11(a3, a2, *(a3 + 4560), cf);
          }
        }

        else
        {
          if (valuePtr == 1)
          {
            v9 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"Ignoring Leaky AP report version %d", valuePtr}];
            }
          }

          else
          {
            v9 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"Unknown LEaky AP report version %d", valuePtr}];
            }
          }

          objc_autoreleasePoolPop(v9);
        }
      }

      else
      {
        sub_1001999F0();
      }
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s:NULL event Data", "__WiFiDeviceManagerLeakyAPEventCallback"}];
      }

      objc_autoreleasePoolPop(v10);
    }
  }

  else
  {
    sub_100199A5C();
  }
}

void sub_1000B2FF8(uint64_t a1, void *a2)
{
  v11 = 0x12C00000020;
  v12 = 1300;
  valuePtr = 1;
  if (a2)
  {
    if (a2[15])
    {
      v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
      if (v3)
      {
        v4 = v3;
        v5 = a2[8];
        v6 = sub_100006F88(v5);
        sub_100006F94(v5, v6, 538, 0, v4);
        CFRelease(v4);
      }

      if (!a2[704])
      {
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        a2[704] = Mutable;
        if (sub_1000D2E38(a2, Mutable, 5, &v11, 3u, 1u, 0, 0))
        {
          v8 = a2[704];
          if (v8)
          {
            CFRelease(v8);
            a2[704] = 0;
          }

          v9 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s: Triggering Active Probe failed!", "__WiFiDeviceManagerActiveProbeQueryCallback"}];
          }

          objc_autoreleasePoolPop(v9);
        }
      }
    }

    else
    {
      sub_100199AC8();
    }
  }

  else
  {
    sub_100199B34();
  }
}

uint64_t sub_1000B3174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = *(a4 + 4568);
    if (v4)
    {
      return v4(a4, a2, a3, *(a4 + 4576));
    }
  }

  return result;
}

void sub_1000B3194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4;
  if (a3)
  {
    v4 = *(a3 + 4616);
    if (v4)
    {
      v4(a3, 5, &v6, *(a3 + 4624));
    }

    else
    {
      v5 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: softErrorManagerService callback is NULL!", "__WiFiDeviceManagerSymptomsEventCallback", v6}];
      }

      objc_autoreleasePoolPop(v5);
    }
  }

  else
  {
    sub_100199BA0();
  }
}

void sub_1000B323C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    if (a4)
    {
      v4 = *(a3 + 4616);
      if (v4)
      {
        v5 = *(a3 + 4624);

        v4(a3, 4, a4, v5);
      }

      else
      {
        v6 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: softErrorManagerService callback is NULL!", "__WiFiDeviceManagerTxFailEventCallback"}];
        }

        objc_autoreleasePoolPop(v6);
      }
    }

    else
    {
      sub_100199C0C();
    }
  }

  else
  {
    sub_100199C78();
  }
}

void sub_1000B3308(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4)
{
  valuePtr = 0;
  if (!a3)
  {
    sub_100199EF0();
    return;
  }

  if (!a1)
  {
    sub_100199E84();
    return;
  }

  v8 = sub_100063B0C(a1);
  if (!a4)
  {
    sub_100199E18();
LABEL_59:
    v33 = 0;
    v13 = 0;
    goto LABEL_60;
  }

  Value = CFDictionaryGetValue(a4, @"ROAMEDEVENT_STATUS");
  if (!Value)
  {
    sub_100199DA4();
    goto LABEL_59;
  }

  CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  sub_1000659E8(a1, valuePtr == 0);
  v10 = 0;
  if (((valuePtr + 528350197) > 0x3E || ((1 << (valuePtr - 11)) & 0x73C0000000000017) == 0) && valuePtr != -528350204)
  {
    v10 = 1;
  }

  v11 = CFDictionaryGetValue(a4, @"ROAMEDEVENT_ORIGIN_ADDR");
  v12 = sub_100007D90(a3, a2, 1);
  if (v12)
  {
    v13 = v12;
    v45 = v10;
    v44 = v11;
    sub_100063B6C(*(a3 + 64), v12);
    context = objc_autoreleasePoolPush();
    if (sub_10006373C(*(a3 + 64)))
    {
      v14 = CFDictionaryGetValue(a4, @"ROAM_STATUS_SUBSTATE_INFO");
      if (v14)
      {
        v15 = v14;
        v16 = [v14 objectForKey:@"ROAM_STATUS_SUBSTATE_FLAGS"];
        if (v16)
        {
          if ([v16 intValue])
          {
            v17 = [v15 objectForKey:@"BSSID"];
            if (v17)
            {
              v18 = v17;
              v49 = 0;
              v48 = 0;
              v19 = [v17 bytes];
              if (v48 != *v19 || v49 != v19[2])
              {
                v21 = ether_ntoa([v18 bytes]);
                v22 = v21 ? [NSString stringWithUTF8String:v21]: 0;
                v23 = sub_1000EB3B0(v15, v22);
                if (v23)
                {
                  v24 = v23;
                  if ([v23 count])
                  {
                    v43 = v8;
                    v25 = sub_10000C580(kCFAllocatorDefault, v13);
                    sub_10000AD34(v25, @"BSSID", v22);
                    v42 = v25;
                    v26 = sub_10001A9BC(v25);
                    if ([v24 count])
                    {
                      v27 = 0;
                      do
                      {
                        v28 = sub_1000BE2EC(a3, 8, [v24 objectAtIndex:v27], v22, 2);
                        [*(a3 + 6720) setNetworkDenyListInfo:v28 forScanResult:v26];

                        ++v27;
                      }

                      while (v27 < [v24 count]);
                    }

                    v29 = *(a3 + 7480);
                    if (v29)
                    {
                      [v29 addFaultEvent:9 forInterface:sub_100006F88(*(a3 + 64))];
                    }

                    v8 = v43;
                    if (v42)
                    {
                      CFRelease(v42);
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
        sub_100199CE4();
      }
    }

    objc_autoreleasePoolPop(context);
    if (sub_100064A58(a1))
    {
      v30 = +[WiFiRoamManager sharedWiFiRoamManager];
      v31 = v45;
      if (!v30)
      {
        sub_100199D44();
        v33 = 0;
        goto LABEL_60;
      }

      v32 = v30;
      if (v45)
      {
        v33 = sub_100061768(*(a3 + 64));
      }

      else
      {
        v33 = 0;
      }

      [v32 setRoamStatus:a4 withBeaconCache:v33 forInterface:a2];
      if (![v32 canSubmitMetrics])
      {
LABEL_41:
        v34 = *(a3 + 4616);
        if (v34)
        {
          v34(a3, 11, 0, *(a3 + 4624));
        }

        else
        {
          v35 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: softErrorManagerService callback is NULL!", "__WiFiDeviceManagerRoamStatusEventCallback"}];
          }

          objc_autoreleasePoolPop(v35);
        }

        v36 = *(a3 + 4680);
        if (v36)
        {
          v36(a3, *(a3 + 4688), a4);
        }

        if (valuePtr)
        {
          v37 = 1;
        }

        else
        {
          v38 = *(a3 + 9080);
          v39 = dispatch_time(0, 1000000000);
          dispatch_source_set_timer(v38, v39, 0xFFFFFFFFFFFFFFFFLL, 0);
          v37 = valuePtr != 0;
        }

        if ((v31 & v37 & (v8 != 0)) == 1)
        {
          if (!v33)
          {
            v33 = sub_100061768(*(a3 + 64));
          }

          v40 = sub_10001A9BC(v8);
          [v40 scanResultWithMatchingKnownNetworkProfile:sub_10001B368(v8)];
          [objc_msgSend(*(a3 + 8936) "knownNetworks")];
          v41 = [CWFKnownNetworksSupportingSeamlessSSIDTransitionForScanResult() valueForKey:@"SSID"];
          [+[WiFiUsageMonitor sharedInstance](WiFiUsageMonitor updateKnownNetworksSupportingSeamless:"updateKnownNetworksSupportingSeamless:forBSS:andSSID:beaconCache:" forBSS:v41 andSSID:v44 beaconCache:sub_10000A878(v13), v33];
          goto LABEL_61;
        }

LABEL_60:
        if (!v8)
        {
LABEL_62:
          if (v13)
          {
            CFRelease(v13);
          }

          if (v33)
          {
            CFRelease(v33);
          }

          return;
        }

LABEL_61:
        CFRelease(v8);
        goto LABEL_62;
      }
    }

    else
    {
      v33 = 0;
      v31 = v45;
    }

    sub_1000E3144(a3, v13, a4);
    goto LABEL_41;
  }
}

void sub_1000B381C(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4)
{
  v7 = objc_autoreleasePoolPush();
  if (!a3)
  {
    sub_10019A034();
    goto LABEL_68;
  }

  v8 = sub_100007D90(a3, a2, 1);
  if (!v8)
  {
    sub_100199FC8();
    goto LABEL_68;
  }

  v9 = v8;
  v10 = malloc_type_malloc(0x38uLL, 0x10600406BF8FC03uLL);
  if (v10)
  {
    v11 = v10;
    *(v10 + 6) = 0;
    *(v10 + 1) = 0u;
    *(v10 + 2) = 0u;
    *v10 = 0u;
    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: received action frame event for network %@: %@", "__WiFiDeviceManagerActionFrameEventCallback", sub_10000A878(v9), a4}];
    }

    objc_autoreleasePoolPop(v12);
    v13 = sub_100013F70(v9);
    if (v13)
    {
      v14 = v13;
      v15 = CFGetTypeID(v13);
      if (v15 == CFStringGetTypeID())
      {
        memset(buffer, 170, 19);
        CFStringGetCString(v14, buffer, 19, 0);
        v16 = ether_aton(buffer);
        if (!v16)
        {
          goto LABEL_15;
        }

        v17 = v16;
        v18 = kCFAllocatorDefault;
        v19 = 6;
LABEL_13:
        v14 = CFDataCreate(v18, v17, v19);
        if (!v14)
        {
LABEL_15:
          Value = CFDictionaryGetValue(a4, @"CATEGORY_CODE");
          if (Value)
          {
            CFNumberGetValue(Value, kCFNumberSInt8Type, v11 + 8);
          }

          v22 = CFDictionaryGetValue(a4, @"ACTION_CODE");
          if (v22)
          {
            CFNumberGetValue(v22, kCFNumberSInt8Type, v11 + 9);
          }

          v23 = CFDictionaryGetValue(a4, @"DIALOG_TOKEN");
          if (v23)
          {
            CFNumberGetValue(v23, kCFNumberSInt8Type, v11 + 10);
          }

          v24 = CFDictionaryGetValue(a4, @"PREF_CANDIDATE_INCLUDED");
          if (v24)
          {
            CFNumberGetValue(v24, kCFNumberSInt8Type, v11 + 18);
          }

          v25 = CFDictionaryGetValue(a4, @"ABRIDGED");
          if (v25)
          {
            CFNumberGetValue(v25, kCFNumberSInt8Type, v11 + 19);
          }

          v26 = CFDictionaryGetValue(a4, @"DISASSOC_IMMINENT");
          if (v26)
          {
            CFNumberGetValue(v26, kCFNumberSInt8Type, v11 + 20);
          }

          v27 = CFDictionaryGetValue(a4, @"BSS_TERM_INCLUDED");
          if (v27)
          {
            CFNumberGetValue(v27, kCFNumberSInt8Type, v11 + 21);
          }

          v28 = CFDictionaryGetValue(a4, @"ESS_TERM_INCLUDED");
          if (v28)
          {
            CFNumberGetValue(v28, kCFNumberSInt8Type, v11 + 22);
          }

          v29 = CFDictionaryGetValue(a4, @"DISASSOC_TIMEOUT");
          if (v29)
          {
            CFNumberGetValue(v29, kCFNumberSInt16Type, v11 + 14);
          }

          v30 = CFDictionaryGetValue(a4, @"VALIDITY_INTERVAL");
          if (v30)
          {
            CFNumberGetValue(v30, kCFNumberSInt8Type, v11 + 16);
          }

          v31 = CFDictionaryGetValue(a4, @"BTM_RSP_STATUS");
          if (v31)
          {
            CFNumberGetValue(v31, kCFNumberSInt8Type, v11 + 11);
          }

          v32 = CFDictionaryGetValue(a4, @"BSS_TERM_DELAY");
          if (v32)
          {
            CFNumberGetValue(v32, kCFNumberSInt8Type, v11 + 17);
          }

          *(v11 + 1) = sub_1000097F8(a3, v9, 0);
          v33 = sub_100014000(v9);
          if (v33)
          {
            CFNumberGetValue(v33, kCFNumberSInt32Type, v11 + 24);
          }

          v34 = sub_1000A028C(v9);
          if (v34)
          {
            CFNumberGetValue(v34, kCFNumberSInt32Type, v11 + 36);
          }

          *(v11 + 7) = sub_1000365A0(v9);
          *(v11 + 8) = sub_1000A02C4(v9);
          v35 = sub_10000A540(v9, @"WPS_PROB_RESP_IE");
          if (v35)
          {
            v36 = v35;
            v37 = CFDictionaryGetValue(v35, @"IE_KEY_WPS_MODEL_NAME");
            if (v37 && (v38 = v37, TypeID = CFStringGetTypeID(), TypeID == CFGetTypeID(v38)))
            {
              Copy = CFStringCreateCopy(kCFAllocatorDefault, v38);
            }

            else
            {
              v41 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:4 message:{"%s: bad type for wpsModelName. Not a CFString or NULL", "__WiFiDeviceManagerActionFrameEventCallback"}];
              }

              objc_autoreleasePoolPop(v41);
              Copy = 0;
            }

            *(v11 + 5) = Copy;
            v42 = CFDictionaryGetValue(v36, @"IE_KEY_WPS_MODEL_NUM");
            if (v42 && (v43 = v42, v44 = CFStringGetTypeID(), v44 == CFGetTypeID(v43)))
            {
              v45 = CFStringCreateCopy(kCFAllocatorDefault, v43);
            }

            else
            {
              v46 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:4 message:{"%s: bad type for wpsModelNumber. Not a CFString or NULL", "__WiFiDeviceManagerActionFrameEventCallback"}];
              }

              objc_autoreleasePoolPop(v46);
              v45 = 0;
            }

            *(v11 + 6) = v45;
          }

          v47 = *(a3 + 7480);
          if (v47)
          {
            v48 = v11[9];
            if (v48 == 8)
            {
              [v47 sentBssTransitionResponse:a2 status:v11[11] terminationDelayRequested:v11[17] != 0];
            }

            else if (v48 == 7)
            {
              [v47 receivedBssTransitionRequest:a2 candidateListIncluded:v11[18] != 0 isAbridged:v11[19] != 0 disassociationImminent:v11[20] != 0 bssTerminationIncluded:v11[21] != 0 essDisassociationImminent:v11[22] != 0];
            }
          }

          sub_100054B50(v11);
          v49 = *(v11 + 5);
          if (v49)
          {
            CFRelease(v49);
            *(v11 + 5) = 0;
          }

          v50 = *(v11 + 6);
          if (v50)
          {
            CFRelease(v50);
          }

          free(v11);
          goto LABEL_67;
        }

LABEL_14:
        v52.location = 0;
        v52.length = 3;
        CFDataGetBytes(v14, v52, v11);
        CFRelease(v14);
        goto LABEL_15;
      }

      v20 = CFGetTypeID(v14);
      if (v20 == CFDataGetTypeID())
      {
        CFRetain(v14);
        goto LABEL_14;
      }
    }

    buffer[0] = 0;
    v18 = kCFAllocatorDefault;
    v17 = buffer;
    v19 = 1;
    goto LABEL_13;
  }

  sub_100199F5C();
LABEL_67:
  CFRelease(v9);
LABEL_68:
  objc_autoreleasePoolPop(v7);
}

uint64_t sub_1000B3DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 4648);
  if (v5)
  {
    return v5(a5, a2, *(a5 + 4656), a3);
  }

  return result;
}

void sub_1000B3DF4(int a1, int a2, CFDictionaryRef theDict, uint64_t a4, uint64_t a5)
{
  Value = CFDictionaryGetValue(theDict, @"SOFTAP_LPM");
  if (Value)
  {
    v7 = Value;
    if (CFEqual(Value, kCFBooleanFalse))
    {
      v8 = *(a5 + 5276);
      if (v8 && !IOPMAssertionRelease(v8))
      {
        v9 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"All Clients in Sleep/Inactive Mode, Releasing Power Assertion for SoftAP LPM\n"}];
        }

LABEL_14:
        objc_autoreleasePoolPop(v9);
        *(a5 + 5276) = 0;
      }
    }

    else if (CFEqual(v7, kCFBooleanTrue) && *(a5 + 5267) && !*(a5 + 5276))
    {
      v10 = *(a5 + 64);
      v11 = sub_100060E7C();
      v12 = IOPMAssertionCreateWithName(@"NoIdleSleepAssertion", 0xFFu, v11, (a5 + 5276));
      v9 = objc_autoreleasePoolPush();
      if (v12)
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"Unable to prevent idle sleep during MIS Session, error=%d", v12}];
        }

        goto LABEL_14;
      }

      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"Clients are in active mode, Holding Power Assertion for SoftAP LPM\n"}];
      }

      objc_autoreleasePoolPop(v9);
    }
  }
}

void sub_1000B3F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_autoreleasePoolPush();
  v6 = sub_100007D90(a3, a2, 1);
  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = v6;
  v8 = objc_autoreleasePoolPush();
  v9 = sub_100017C00(v7);
  v10 = [[NSMutableDictionary alloc] initWithDictionary:v9];
  v11 = *(a3 + 64);
  if (!v11)
  {
    if (!*(a3 + 1264))
    {
      goto LABEL_6;
    }

LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  *(a3 + 1264) = -1;
  bzero((a3 + 1268), 0x808uLL);
  v12 = sub_10014ED54(v11);
  *(a3 + 1264) = v12;
  if (v12)
  {
    goto LABEL_8;
  }

LABEL_6:
  if (!*(a3 + 1268))
  {
    goto LABEL_8;
  }

  v13 = [NSData dataWithBytes:a3 + 1272 length:?];
LABEL_9:
  v14 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCharType, (a3 + 3320));
  if (v14)
  {
    v15 = v14;
    [v10 setObject:v14 forKeyedSubscript:@"IS_BEACON_AT_HE_RATE"];
    CFRelease(v15);
  }

  [*(a3 + 7480) updateBeaconInfo:v13 andParsedIE:v10 forInterface:sub_100006F88(*(a3 + 64))];
  if (v9)
  {
    CFRelease(v9);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  objc_autoreleasePoolPop(v8);
  if (*(a3 + 1264))
  {
    v16 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s unable to fetch RawBeacon (err:%d)", "__WiFiDeviceFetchCurrentBeaconData", *(a3 + 1264)}];
    }

    objc_autoreleasePoolPop(v16);
  }

  CFRelease(v7);
LABEL_20:
  sub_1000BC974(a3);
  sub_1000196FC(a3);

  objc_autoreleasePoolPop(v5);
}

void sub_1000B4144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_os_feature_enabled_impl())
  {
    sub_100019814(a3, 0x29uLL);
  }

  v4 = *(a3 + 4920);
  if (v4)
  {
    v5 = *(a3 + 4928);

    v4(a3, v5);
  }
}

void sub_1000B41B4(uint64_t a1, uint64_t a2, const __CFDictionary *a3, uint64_t a4, uint64_t a5)
{
  valuePtr = 0;
  v38 = 0;
  v7 = (a5 + 4096);
  v36 = 0;
  value = 0;
  v35 = 0;
  v8 = sub_100007D90(a5, a2, 1);
  ValueIfPresent = CFDictionaryGetValueIfPresent(a3, @"INTERNET_ACCESS", &value);
  v10 = value;
  if (ValueIfPresent)
  {
    v11 = value == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = *(a5 + 5648);
    if (v12)
    {
      if (CFEqual(value, v12))
      {
        goto LABEL_28;
      }

      v10 = value;
    }

    v13 = v7[1171];
    *(a5 + 5648) = v10;
    if (v8)
    {
      if (v13)
      {
        v14 = 3;
      }

      else
      {
        v14 = 0;
      }

      v15 = sub_1000A158C(v8);
      if ((v15 - 1) <= 1)
      {
        v16 = v15;
        if (*(a5 + 5648))
        {
          v17 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            if (*(a5 + 5648) == kCFBooleanTrue)
            {
              v18 = "SET";
            }

            else
            {
              v18 = "ZERO";
            }

            [off_100298C40 WFLog:3 message:{"%s: internetAccess bit %s", "__WiFiDeviceManagerWiFiNetworkIeUpdateCallback", v18}];
          }

          objc_autoreleasePoolPop(v17);
        }

        if (v16 == 1)
        {
          v14 = 3;
        }

        else
        {
          v14 = 0;
        }
      }

      v19 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v20 = "kSCNetworkServicePrimaryRankDefault";
        if (v14 == 3)
        {
          v20 = "kSCNetworkServicePrimaryRankNever";
        }

        [off_100298C40 WFLog:3 message:{"%s: setting interface rank %s", "__WiFiDeviceManagerWiFiNetworkIeUpdateCallback", v20}];
      }

      objc_autoreleasePoolPop(v19);
      sub_1000BFD00(a5, v8, 1, v14);
    }
  }

LABEL_28:
  CFDictionaryGetValueIfPresent(a3, @"kWiFiHostApWiFiNetworkIeValidKey", &v35);
  if (!v35 || !*(a5 + 6884) || !v7[2880])
  {
    goto LABEL_42;
  }

  v21 = CFDictionaryGetValue(a3, @"WiFiHostApWiFiNetworkIeSsidKey");
  if (!v21)
  {
    v32 = objc_autoreleasePoolPush();
    v33 = off_100298C40;
    if (off_100298C40)
    {
      v34 = "Failed to get Network SSID Info";
      goto LABEL_57;
    }

LABEL_58:
    objc_autoreleasePoolPop(v32);
    goto LABEL_59;
  }

  v22 = v21;
  v23 = CFDictionaryGetValue(a3, @"WiFiHostApWiFiNetworkIeFlagKey");
  if (!v23 || (CFNumberGetValue(v23, kCFNumberSInt16Type, &valuePtr), (v24 = CFDictionaryGetValue(a3, @"WiFiHostApWiFiNetworkIeBatteryKey")) == 0))
  {
    v32 = objc_autoreleasePoolPush();
    v33 = off_100298C40;
    if (off_100298C40)
    {
      v34 = "Failed to get Network Flag Info";
LABEL_57:
      [v33 WFLog:3 message:v34];
      goto LABEL_58;
    }

    goto LABEL_58;
  }

  CFNumberGetValue(v24, kCFNumberSInt8Type, &v38);
  v7[2970] = v38;
  *(a5 + 7064) = valuePtr;
  v25 = *(a5 + 7056);
  if (v25)
  {
    CFRelease(v25);
    *(a5 + 7056) = 0;
  }

  *(a5 + 7056) = sub_10009D2E4(v22);
  v26 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{" Update Personal Hotspot Network IE received. wifi network %@\n", v22}];
  }

  objc_autoreleasePoolPop(v26);
  if (_os_feature_enabled_impl())
  {
    if (!*(a5 + 3336))
    {
      sub_100019814(a5, 0x1CuLL);
    }
  }

  else
  {
    sub_1000B6EBC(a5);
  }

LABEL_42:
  if (!v7[1568] || !CFDictionaryGetValueIfPresent(a3, @"DIRECTED_NETWORK", &v36) || v36 == kCFBooleanTrue || (Count = CFArrayGetCount(*(a5 + 3584)), !v8) || (v28.length = Count) == 0)
  {
LABEL_59:
    if (!v8)
    {
      return;
    }

    goto LABEL_60;
  }

  v28.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(a5 + 3584), v28, v8);
  if (FirstIndexOfValue != -1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a5 + 3584), FirstIndexOfValue);
    if (ValueAtIndex)
    {
      if (sub_10001CB84(ValueAtIndex))
      {
        v31 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"Correcting directed property for broadcast network %@", sub_10000A878(v8)}];
        }

        objc_autoreleasePoolPop(v31);
        v7[1568] = 0;
        sub_10009E6F0(v8, 0);
        sub_1000C5B3C(a5, v8);
      }
    }
  }

LABEL_60:
  CFRelease(v8);
}

void sub_1000B45C8(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4)
{
  v7 = objc_autoreleasePoolPush();
  valuePtr = 0;
  Current = CFAbsoluteTimeGetCurrent();
  if (!a3)
  {
    sub_10019A4A8();
    goto LABEL_35;
  }

  if (!a2)
  {
    sub_10019A43C();
    goto LABEL_35;
  }

  v9 = Current;
  Value = CFDictionaryGetValue(a4, @"SLOWWIFI_IS_BAP_AP");
  if (!Value)
  {
    sub_10019A3D0();
    goto LABEL_35;
  }

  v11 = Value;
  v12 = CFDictionaryGetValue(a4, @"SLOWWIFI_ACTION_REASON");
  CFNumberGetValue(v12, kCFNumberIntType, &valuePtr + 4);
  v13 = CFDictionaryGetValue(a4, @"SLOWWIFI_ACTION_STAGE");
  CFNumberGetValue(v13, kCFNumberIntType, &valuePtr);
  if (!CFEqual(v11, kCFBooleanFalse))
  {
    v16 = *(a3 + 7480);
    if (v16)
    {
      [v16 addFaultEvent:10 forInterface:sub_100006F88(*(a3 + 64))];
    }

    v17 = CFDictionaryGetValue(a4, @"SLOWWIFI_RECOVERY_ENABLED");
    if (!v17)
    {
      sub_10019A370();
      goto LABEL_35;
    }

    if (!CFEqual(v17, kCFBooleanTrue))
    {
      sub_10019A310();
      goto LABEL_35;
    }

    if (!v12)
    {
      sub_10019A2B0();
      goto LABEL_35;
    }

    v18 = sub_100007D90(a3, a2, 1);
    if (!v18)
    {
      sub_10019A250();
      goto LABEL_35;
    }

    v15 = v18;
    v19 = sub_10000A540(v18, @"BSSID");
    if (v19)
    {
      v20 = v19;
      v21 = CFDictionaryGetValue(a4, @"SLOWWIFI_BSSID");
      if (v21)
      {
        v22 = v21;
        if (CFEqual(v20, v21))
        {
          v23 = sub_10000C580(kCFAllocatorDefault, v15);
          v24 = sub_10001A9BC(v23);
          v25 = sub_1000A39A0(v23);
          v26 = objc_autoreleasePoolPush();
          if (v25)
          {
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"%s: SlowWiFi detection blacklisted BSSID:%@", "__WiFiDeviceManagerHandleSlowWiFiEvent", v22}];
            }

            objc_autoreleasePoolPop(v26);
            v27 = sub_1000BE2EC(a3, 8, SHIDWORD(valuePtr), v22, 2);
            [*(a3 + 6720) setNetworkDenyListInfo:v27 forScanResult:v24];
            [*(a3 + 6720) setNetworkDenyListInfo:v27 forScanResult:v24];
            [*(a3 + 6720) setNetworkDenyListInfo:v27 forScanResult:v24];

            if (!v23)
            {
              goto LABEL_23;
            }
          }

          else
          {
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s, network does not support slow wifi recovery", "__WiFiDeviceManagerHandleSlowWiFiEvent"}];
            }

            objc_autoreleasePoolPop(v26);
            if (!v23)
            {
              goto LABEL_23;
            }
          }

          CFRelease(v23);
LABEL_23:

          goto LABEL_24;
        }

        v39 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s, event BSSID not equal to current BSSID", "__WiFiDeviceManagerHandleSlowWiFiEvent"}];
        }
      }

      else
      {
        v39 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s, event BSSID is NULL", "__WiFiDeviceManagerHandleSlowWiFiEvent"}];
        }
      }
    }

    else
    {
      v39 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s, current BSSID is NULL", "__WiFiDeviceManagerHandleSlowWiFiEvent"}];
      }
    }

    objc_autoreleasePoolPop(v39);
    goto LABEL_34;
  }

  v14 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, SlowWiFiEvent not due to AP", "__WiFiDeviceManagerHandleSlowWiFiEvent"}];
  }

  objc_autoreleasePoolPop(v14);
  v15 = *(a3 + 7480);
  if (v15)
  {
    [v15 addFaultEvent:19 forInterface:sub_100006F88(*(a3 + 64))];
    v15 = 0;
  }

LABEL_24:
  v28 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"SlowWiFi: stage:%d reason:%d", valuePtr, HIDWORD(valuePtr)}];
  }

  objc_autoreleasePoolPop(v28);
  if (valuePtr >= 2 && SHIDWORD(valuePtr) <= 14 && HIDWORD(valuePtr) != 13)
  {
    v29 = *(a3 + 7384);
    v30 = objc_autoreleasePoolPush();
    if (!v29)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"SlowWiFiHUD: action:%d reason:%d HUD_update:start", valuePtr, HIDWORD(valuePtr)}];
      }

      objc_autoreleasePoolPop(v30);
      *(a3 + 7344) = v9;
      v31 = HIDWORD(valuePtr);
      *(a3 + 7376) = valuePtr;
      *(a3 + 7380) = v31;
      *(a3 + 7368) = 35;
      v32 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"SlowWiFi HUD: starting display"];
      }

      objc_autoreleasePoolPop(v32);
      v33 = objc_autoreleasePoolPush();
      *(a3 + 7320) = 0;
      v34 = [NSString stringWithFormat:@"Slow WiFi: %llus", *(a3 + 7360)];
      if (!*(a3 + 7384))
      {
        v35 = v34;
        *(a3 + 7384) = 1;
        if (MGGetBoolAnswer())
        {
          v36 = *(a3 + 4616);
          if (v36)
          {
            v36(a3, 17, v35, *(a3 + 4624));
          }
        }

        v37 = *(a3 + 7352);
        v38 = dispatch_time(0, 1000000000);
        dispatch_source_set_timer(v37, v38, 0xFFFFFFFFFFFFFFFFLL, 0);
      }

      objc_autoreleasePoolPop(v33);
      if (v15)
      {
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"SlowWiFiHUD: previous_stage:%d current_stage:%d previous_reason:%d current_reason:%d remaining_display_duration:%lld current_HUD_update:increment timeSinceFirstNotification:%lld", *(a3 + 7376), valuePtr, *(a3 + 7380), HIDWORD(valuePtr), *(a3 + 7368), (v9 - *(a3 + 7344))}];
    }

    objc_autoreleasePoolPop(v30);
    *(a3 + 7368) = 35;
  }

  if (v15)
  {
LABEL_34:
    CFRelease(v15);
  }

LABEL_35:
  objc_autoreleasePoolPop(v7);
}

void sub_1000B4B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  valuePtr = -1;
  v4 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  if (a3)
  {
    v5 = *(a3 + 64);
    v6 = sub_100006F88(v5);
    sub_100006F94(v5, v6, 536, 0, v4);
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_1000B4BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 && (v3 = *(a3 + 4616)) != 0)
  {
    v3(a3, 16, a2, *(a3 + 4624));
  }

  else
  {
    sub_1000D79C8(a3, -1);
  }
}

void sub_1000B4BD4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = objc_autoreleasePoolPush();
  if (a3)
  {
    if (a4)
    {
      if (sub_10006373C(a1))
      {
        v9 = [a4 objectForKey:@"PRUNEEVENT_REASON"];
        v10 = [a4 objectForKey:@"BSSID"];
        if (v10)
        {
          if (v9)
          {
            v11 = v10;
            if ([v9 intValue] == -528337897)
            {
              v12 = sub_1000078F4(a1, a2);
              if (v12)
              {
                v13 = v12;
                v14 = ether_ntoa([v11 bytes]);
                if (v14)
                {
                  v14 = [NSString stringWithUTF8String:v14];
                }

                sub_10000AD34(v13, @"BSSID", v14);
                v15 = sub_10001A9BC(v13);
                if (v15)
                {
                  v16 = v15;
                  [*(a3 + 6720) processDenyListedBSSForMetrics:v15];
                  CFRelease(v16);
                }

                else
                {
                  sub_10019A514();
                }

                CFRelease(v13);
              }

              else
              {
                sub_10019A514();
              }
            }
          }
        }
      }

      else
      {
        sub_10019A580();
      }
    }

    else
    {
      sub_10019A5EC();
    }
  }

  else
  {
    sub_10019A658();
  }

  objc_autoreleasePoolPop(v8);
}

void sub_1000B4D24(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = objc_autoreleasePoolPush();
    if (a4)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"Traffic Info Event Dictionary %@", a4}];
      }

      objc_autoreleasePoolPop(v6);
      v7 = [a4 objectForKey:@"CRITICAL_TRAFFIC_STATE"];
      v8 = [a4 objectForKey:@"NON_CRITICAL_TRAFFIC_STATE"];
      LOBYTE(v7) = [v7 intValue];
      v9 = v7 | ([v8 intValue] << 8);
      v10 = *(a3 + 120);

      sub_100048B24(v10, v9);
    }

    else
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s dict is NULL", "__WiFiDeviceManagerHandleTrafficInfoEvent"}];
      }

      objc_autoreleasePoolPop(v6);
    }
  }

  else
  {
    sub_10019A6C4();
  }
}

void sub_1000B4E50(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = objc_autoreleasePoolPush();
  if (a3)
  {
    if (a4)
    {
      v8 = sub_100007D90(a3, a2, 1);
      if (v8)
      {
        v9 = v8;
        v10 = [a4 objectForKey:@"BEACON_CACHE_UPDATED_EVENT_NUM_CHAN"];
        v11 = [a4 objectForKey:@"BEACON_CACHE_UPDATED_EVENT_STATUS"];
        if (v10)
        {
          if (v11)
          {
            if ([v11 unsignedIntValue])
            {
              sub_10019A730();
            }

            else if ([v10 unsignedIntValue] <= 1)
            {
              sub_10019A808();
            }

            else
            {
              Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
              if (Mutable)
              {
                v13 = Mutable;
                sub_1000616F4(*(a3 + 64));
                if (CFArrayGetCount(v13))
                {
                  v14 = sub_10014DA18(*(a3 + 64));
                  if (v14)
                  {
                    v15 = v14;
                    v16 = sub_100044704(*(a3 + 120));
                    if (v16)
                    {
                      v17 = v16;
                      sub_10005700C(v9, v15, v16);
                      CFRelease(v15);
                      v15 = v17;
                    }

                    CFRelease(v15);
                  }
                }

                CFRelease(v13);
              }

              else
              {
                sub_10019A79C();
              }
            }
          }

          else
          {
            sub_10019A874();
          }
        }

        else
        {
          sub_10019A8E0();
        }

        CFRelease(v9);
      }

      else
      {
        sub_10019A94C();
      }
    }

    else
    {
      sub_10019A9B8();
    }
  }

  else
  {
    sub_10019AA24();
  }

  objc_autoreleasePoolPop(v7);
}

uint64_t sub_1000B4FE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  result = a3[513];
  if (result)
  {
    v9 = a3[513];
    v7 = sub_100006F88(a3[8]);
    v8 = a3[514];

    return v9(a3, v7, a4, 0, v8);
  }

  return result;
}

void sub_1000B5054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a3 + 7464);
    if (v4)
    {
      Length = CFStringGetLength(v4);
      v6 = Length == 0;
      v7 = Length != 0;
    }

    else
    {
      v7 = 0;
      v6 = 1;
    }

    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: countryCodeDidBecomeAvailable=%d __WiFiDeviceManagerGetMISGlobalState=%d manager->mis.misEnabled=%d manager->softapUserPreferredBand=%d manager->mis.misChannel=%d", "__WiFiDeviceManagerProcessSupportedChannelInfoChangedEvent", v7, sub_10018A684(a3), *(a3 + 5267), *(a3 + 7144), *(a3 + 5264)}];
    }

    objc_autoreleasePoolPop(v8);
    if (!v6 && sub_10018A684(a3) && *(a3 + 5267) && *(a3 + 7144) != 1 && *(a3 + 5264) <= 0xEu)
    {
      v9 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: country code changed to %@ while SoftAP hotspot is in 2.4GHz. Restarting to select new channel...", "__WiFiDeviceManagerProcessSupportedChannelInfoChangedEvent", *(a3 + 7464)}];
      }

      objc_autoreleasePoolPop(v9);

      sub_1000C47C0(a3, 1);
    }
  }

  else
  {
    sub_10019AA90();
  }
}

uint64_t sub_1000B51C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = *(a4 + 4872);
    if (v4)
    {
      return v4(a4, a2, a3, *(a4 + 4096));
    }
  }

  return result;
}

uint64_t sub_1000B51E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = *(a4 + 4904);
    if (v4)
    {
      return v4(a4, a2, a3, *(a4 + 4096));
    }
  }

  return result;
}

void sub_1000B5204(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  if (a4)
  {
    *(a4 + 3865) = 0;
    *(a4 + 3836) = 0u;
    *(a4 + 3852) = 0u;
    if (a3)
    {
      v4 = *a3;
      v5 = a3[1];
      *(a4 + 3865) = *(a3 + 29);
      *(a4 + 3836) = v4;
      *(a4 + 3852) = v5;
    }

    sub_1000196FC(a4);
  }
}

uint64_t sub_1000B5238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    return (*(a6 + 4968))(a6, a2, a3, a4, a5, *(a6 + 4976));
  }

  return result;
}

void sub_1000B5254(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, CFTypeRef *a5)
{
  if (!a3)
  {
    sub_10019ABD4();
    return;
  }

  if (!a4)
  {
    sub_10019AB68();
    return;
  }

  if (!a5)
  {
    sub_10019AAFC();
    return;
  }

  *a5 = 0;
  v7 = *(a3 + 3672);
  if (v7)
  {
    Count = CFArrayGetCount(*(a3 + 3672));
    v24.location = 0;
    v24.length = Count;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v7, v24, a4);
    if (FirstIndexOfValue != -1)
    {
      v10 = FirstIndexOfValue;
      ValueAtIndex = CFArrayGetValueAtIndex(v7, FirstIndexOfValue);
      v12 = sub_10000A540(a4, @"HS20AccountName");
      v13 = sub_10000A540(ValueAtIndex, @"HS20AccountName");
      if (!v12 && v13 && sub_10009FE08(ValueAtIndex))
      {
        v14 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: immediately matched HS2.0 account %@, returning %@", "__WiFiDeviceManagerRequestForNextMatchingHS20AccountCallback", sub_10000A878(ValueAtIndex), ValueAtIndex}];
        }

        objc_autoreleasePoolPop(v14);
        v15 = ValueAtIndex;
        goto LABEL_24;
      }

      v16 = v10 + 1;
      if (v10 + 1 < Count)
      {
        do
        {
          v17 = CFArrayGetValueAtIndex(v7, v16);
          if (v17)
          {
            v18 = v17;
            if (sub_10009F5C0(a4, v17))
            {
              v19 = sub_10009FE08(v18);
              v20 = objc_autoreleasePoolPush();
              v21 = off_100298C40;
              if (v19)
              {
                if (off_100298C40)
                {
                  v23 = sub_10000A878(v18);
                  [v21 WFLog:3 message:{"%s: found HS2.0 account %@ matching %@, returning %@", "__WiFiDeviceManagerRequestForNextMatchingHS20AccountCallback", v23, sub_10000A878(a4), v18}];
                }

                objc_autoreleasePoolPop(v20);
                v15 = v18;
LABEL_24:
                *a5 = CFRetain(v15);
                return;
              }

              if (off_100298C40)
              {
                v22 = sub_10000A878(v18);
                [v21 WFLog:3 message:{"%s: next HS2.0 account %@ matching %@ has no credentials, skipping", "__WiFiDeviceManagerRequestForNextMatchingHS20AccountCallback", v22, sub_10000A878(a4)}];
              }

              objc_autoreleasePoolPop(v20);
            }
          }

          ++v16;
        }

        while (Count != v16);
      }
    }
  }
}

uint64_t sub_1000B5490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v5 = *(a5 + 4504);
    if (v5)
    {
      return v5(a5, a2, a3, *(a5 + 4512));
    }
  }

  return result;
}

void sub_1000B54AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  valuePtr = 0;
  if (!a2)
  {
    sub_10019AD60();
    return;
  }

  v8 = objc_autoreleasePoolPush();
  if (a5)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s:Notification %@ received", "__WiFiDeviceManagerRoamNotificationCallback", a3}];
    }

    objc_autoreleasePoolPop(v8);
    Value = CFDictionaryGetValue(a5, @"com.apple.wifid.wifiroammangerroamtype");
    v8 = objc_autoreleasePoolPush();
    if (Value)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: kWiFiRoamManagerRoamTypeKey value is %@", "__WiFiDeviceManagerRoamNotificationCallback", Value}];
      }

      v23 = -1431655766;
      objc_autoreleasePoolPop(v8);
      CFNumberGetValue(Value, kCFNumberCharType, &valuePtr);
      v10 = CFDictionaryGetValue(a5, @"com.apple.wifid.wifiroammangerroamreason");
      v11 = objc_autoreleasePoolPush();
      if (v10)
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: kWiFiRoamManagerRoamReasonKey value is %@", "__WiFiDeviceManagerRoamNotificationCallback", v10}];
        }

        objc_autoreleasePoolPop(v11);
        CFNumberGetValue(v10, kCFNumberIntType, &v23);
        if (valuePtr < 3u)
        {
          Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (Mutable)
          {
            v13 = Mutable;
            v22 = -1;
            *bytes = -1;
            v14 = CFDataCreate(kCFAllocatorDefault, bytes, 6);
            if (v14)
            {
              v15 = v14;
              CFDictionaryAddValue(v13, @"BSSID", v14);
              v16 = CFNumberCreate(0, kCFNumberCharType, &valuePtr);
              if (v16)
              {
                v17 = v16;
                CFDictionaryAddValue(v13, @"BAND_PREFERENCE", v16);
                CFRelease(v17);
                v18 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s:calling DeviceSetRoam with :%@", "__WiFiDeviceManagerRoamNotificationCallback", v13}];
                }

                objc_autoreleasePoolPop(v18);
                sub_100064730(*(a2 + 64), v13);
              }

              else
              {
                sub_10019AC40();
              }

              CFRelease(v15);
            }

            else
            {
              sub_10019ACA0();
            }

            CFRelease(v13);
          }

          else
          {
            sub_10019AD00();
          }

          return;
        }

        v19 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: Invalid band preference", "__WiFiDeviceManagerRoamNotificationCallback"}];
        }

        v20 = v19;
      }

      else
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: numRef for kWiFiRoamManagerRoamReason is NULL", "__WiFiDeviceManagerRoamNotificationCallback"}];
        }

        v20 = v11;
      }

      objc_autoreleasePoolPop(v20);
      return;
    }

    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: numRef for kWiFiRoamManagerRoamType is NULL", "__WiFiDeviceManagerRoamNotificationCallback"}];
    }
  }

  else if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: userInfo is NULL", "__WiFiDeviceManagerRoamNotificationCallback"}];
  }

  objc_autoreleasePoolPop(v8);
}

void sub_1000B57AC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (a3)
  {

    sub_10018987C(a3, a4, a5);
  }

  else
  {
    sub_10019ADCC();
  }
}

void sub_1000B57E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = *(a4 + 7480);
    if (v4)
    {
      [v4 updateScanForwardStats:?];
    }
  }
}

void sub_1000B57F8(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = *(a4 + 7480);
    if (v4)
    {
      [v4 updateWithRoamingSuppression:*a3];
    }
  }
}

void sub_1000B5810(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000B1BFC(a2, @"TriggerWatchdog");
    *(a2 + 3545) = 1;
  }

  else
  {
    sub_10019AE38();
  }
}

void sub_1000B5854(uint64_t a1)
{
  if (a1)
  {
    v2 = (a1 + 4096);
    v3 = *(a1 + 5265);
    v4 = *(a1 + 5266);
    v5 = *(a1 + 5269);
    if (*(a1 + 5280) == 5)
    {
      sub_10018A9A0(a1, 0, 0, 1, @"wifid");
      v18 = *(a1 + 5320);
      if (!v18 || !CFSetGetCount(v18))
      {
        v19 = *(a1 + 5328);
        if (!v19 || !CFSetGetCount(v19))
        {
          v20 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:"No Discovery Client"];
          }

          objc_autoreleasePoolPop(v20);
          v5 = 0;
          v2[1173] = 0;
        }
      }
    }

    if (*(a1 + 4184))
    {
      sub_10018A7CC(a1, 0);
      (*(a1 + 4184))(a1, *(a1 + 4192), v5);
    }

    v6 = v4 + v3;
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v8 = "Enabled";
      if (v2[1171])
      {
        v9 = "Enabled";
      }

      else
      {
        v9 = "Disabled";
      }

      if (!v5)
      {
        v8 = "Disabled";
      }

      [off_100298C40 WFLog:3 message:{"MIS idle timer expired. MIS is %s, associated clients = %d, nan associated clients = %d, discovery is %s", v9, v6, v2[1170], v8}];
    }

    objc_autoreleasePoolPop(v7);
    v13 = (~v2[3057] & 5) == 0 && ((v10 = *(a1 + 5336)) == 0 || !CFSetGetCount(v10)) && ((v11 = *(a1 + 5352)) == 0 || !CFSetGetCount(v11)) && ((v12 = *(a1 + 5360)) == 0 || !CFSetGetCount(v12)) && *(a1 + 5280) == 4;
    if (v2[1174])
    {
      goto LABEL_21;
    }

    if (!v2[1171])
    {
      goto LABEL_53;
    }

    v16 = !v13;
    if (!v6)
    {
      v16 = 0;
    }

    if (!v16 && !v5)
    {
LABEL_21:
      v14 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"MIS idle timer expired (inRecovery: %d) (Concurrent Mode: %d), disabling tethering", v2[1174], v13}];
      }

      objc_autoreleasePoolPop(v14);
      v32 = 0;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      DWORD2(v21) = 2;
      if ([*(a1 + 6832) isNANPublisherStarted])
      {
        LODWORD(v28) = 2;
        *(&v28 + 1) = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@", @"Idle Timer expired");
        *(&v29 + 1) = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@", @"User request");
        *(&v27 + 1) = sub_100058B68();
      }

      sub_1000C67C8(a1, &v21);
      sub_1000C6C3C(a1);
    }

    else
    {
LABEL_53:
      if (_os_feature_enabled_impl() && v2[1171] && !v2[1170])
      {
        v17 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:"NANPHS: stopping NAN Publisher after idle time expired \n"];
        }

        objc_autoreleasePoolPop(v17);
        [*(a1 + 6832) stopPublisherForPHSOverNAN];
        v2[1338] = 0;
        sub_1000ED7E8(a1, 0);
        sub_1000BBAE0(a1, 8, 0);
        v32 = 0;
        v30 = 0u;
        v31 = 0u;
        *&v28 = 8;
        v29 = 0u;
        v26 = 0u;
        *&v27 = 0;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        *(&v28 + 1) = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@", @"All Nan Clients Left");
        *(&v27 + 1) = sub_100058B68();
        sub_1000C67C8(a1, &v21);
      }
    }

    *(a1 + 5280) = 0;
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: manager is NULL", "__WiFiDeviceManagerMISIdleTimerCallback"}];
    }

    objc_autoreleasePoolPop(v15);
  }
}

void sub_1000B5C4C(uint64_t a1)
{
  v1 = *(a1 + 5368);
  Current = CFAbsoluteTimeGetCurrent();
  v3 = dispatch_time(0, ((Current + 315360000.0) * 1000000000.0));
  dispatch_source_set_timer(v1, v3, 0xFFFFFFFFFFFFFFFFLL, 0);
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Timer Expired\n", "__WiFiDeviceManagerBroadcastToHiddenTimerCallback"}];
  }

  objc_autoreleasePoolPop(v4);

  sub_10018AA68();
}

void sub_1000B5D04(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: timeout - resetting critical phase state", "__WiFiDeviceManagerPriorityLinkSetupPhaseTimerCallback"}];
  }

  objc_autoreleasePoolPop(v2);
  *(a1 + 5576) = 0;
}

void sub_1000B5D70(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: timeout - calling __WiFiDeviceManagerEvaluate24GHzInfraNetworkState", "__WiFiDeviceManager24GHzInfraNetworkCriticalTimerCallback"}];
  }

  objc_autoreleasePoolPop(v2);
  sub_100021870(a1, 0);
  *(a1 + 8712) = 0;
}

uint64_t sub_1000B5DE8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: CarPlay HID session timed out", "__WiFiDeviceManagerCarPlayHidSessionTimerCallback"}];
  }

  objc_autoreleasePoolPop(v2);
  result = sub_10014EDCC(*(a1 + 64));
  *(a1 + 8752) = 0;
  return result;
}

void sub_1000B5E60(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: timed out", "__WiFiDeviceManagerCarPlayLinkDownMonitorTimerCallback"}];
  }

  objc_autoreleasePoolPop(v2);
  v3 = *(a1 + 1016);
  if (v3)
  {
    sub_1000E1AA4(a1, v3, 1021, 0);
    v4 = *(a1 + 1016);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 1016) = 0;
    }
  }
}

void sub_1000B5EEC(uint64_t a1)
{
  sub_1000D1094(a1, 0, 1);
  v1 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Power save deferral for CarPlay Bonjour HS timed out", "__WiFiDeviceManagerPowerSaveDeferralTimerCallback"}];
  }

  objc_autoreleasePoolPop(v1);
}

void sub_1000B5F64(uint64_t a1)
{
  v72 = 0uLL;
  v2 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 64);
    v5 = sub_100006F88(v4);
    v6 = sub_10005B37C(v4, v5, "dump", "lpc", 0, v3, 0x400u);
    if (!v6)
    {
      v3[1023] = 0;
      v7 = [[NSString alloc] initWithCString:v3 encoding:4];
      if (!v7)
      {
        sub_10019AF1C();
LABEL_35:
        free(v3);
        return;
      }

      v8 = v7;
      v9 = [NSRegularExpression regularExpressionWithPattern:@"valid (\\d)" options:0 error:0];
      v10 = 0;
      if (v9)
      {
        v11 = -[NSRegularExpression matchesInString:options:range:](v9, "matchesInString:options:range:", v8, 0, 0, [v8 length]);
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v12 = [(NSArray *)v11 countByEnumeratingWithState:&v64 objects:v71 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = 0;
          v15 = *v65;
          do
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v65 != v15)
              {
                objc_enumerationMutation(v11);
              }

              v17 = [*(*(&v64 + 1) + 8 * i) rangeAtIndex:1];
              v14 |= [objc_msgSend(v8 substringWithRange:{v17, v18), "isEqualToString:", @"1"}];
            }

            v13 = [(NSArray *)v11 countByEnumeratingWithState:&v64 objects:v71 count:16];
          }

          while (v13);
          if (v14)
          {
            v19 = [NSRegularExpression regularExpressionWithPattern:@"min_offset -(\\d+.\\d)dB" options:0 error:0];
            v10 = 0;
            if (v19)
            {
              v20 = -[NSRegularExpression matchesInString:options:range:](v19, "matchesInString:options:range:", v8, 0, 0, [v8 length]);
              v60 = 0u;
              v61 = 0u;
              v62 = 0u;
              v63 = 0u;
              v21 = [(NSArray *)v20 countByEnumeratingWithState:&v60 objects:v70 count:16];
              if (v21)
              {
                v22 = v21;
                v23 = *v61;
                do
                {
                  for (j = 0; j != v22; j = j + 1)
                  {
                    if (*v61 != v23)
                    {
                      objc_enumerationMutation(v20);
                    }

                    v25 = [*(*(&v60 + 1) + 8 * j) rangeAtIndex:1];
                    [objc_msgSend(v8 substringWithRange:{v25, v26), "doubleValue"}];
                  }

                  v10 = v27;
                  v22 = [(NSArray *)v20 countByEnumeratingWithState:&v60 objects:v70 count:16];
                }

                while (v22);
              }
            }

            v9 = [NSRegularExpression regularExpressionWithPattern:@"Rates\\W+TX\\s+:(\\s+\\d+\\(\\d+%\\)){3}\\s+(\\d+)\\(\\d+%\\)" options:0 error:0];
            v51 = a1;
            if (v9)
            {
              v28 = -[NSRegularExpression matchesInString:options:range:](v9, "matchesInString:options:range:", v8, 0, 0, [v8 length]);
              v56 = 0u;
              v57 = 0u;
              v58 = 0u;
              v59 = 0u;
              v29 = [(NSArray *)v28 countByEnumeratingWithState:&v56 objects:v69 count:16];
              if (v29)
              {
                v30 = v29;
                v31 = *v57;
                do
                {
                  for (k = 0; k != v30; k = k + 1)
                  {
                    if (*v57 != v31)
                    {
                      objc_enumerationMutation(v28);
                    }

                    v33 = [*(*(&v56 + 1) + 8 * k) rangeAtIndex:2];
                    v35 = [objc_msgSend(v8 substringWithRange:{v33, v34), "longLongValue"}];
                  }

                  v9 = v35;
                  v30 = [(NSArray *)v28 countByEnumeratingWithState:&v56 objects:v69 count:16];
                }

                while (v30);
              }

              else
              {
                v9 = 0;
              }
            }

            v38 = [NSRegularExpression regularExpressionWithPattern:@"Offsets\\W+TX\\s+:\\s+\\d+\\((\\d+)%\\)\\s+\\d+\\((\\d+)%\\)\\s+\\d+\\((\\d+)%\\)\\s+\\d+\\((\\d+)%\\)" options:0 error:0];
            if (v38)
            {
              v39 = -[NSRegularExpression matchesInString:options:range:](v38, "matchesInString:options:range:", v8, 0, 0, [v8 length]);
              v52 = 0u;
              v53 = 0u;
              v54 = 0u;
              v55 = 0u;
              v40 = [(NSArray *)v39 countByEnumeratingWithState:&v52 objects:v68 count:16];
              if (v40)
              {
                v41 = v40;
                v42 = *v53;
                do
                {
                  for (m = 0; m != v41; m = m + 1)
                  {
                    if (*v53 != v42)
                    {
                      objc_enumerationMutation(v39);
                    }

                    v44 = *(*(&v52 + 1) + 8 * m);
                    v45 = &v72;
                    for (n = 1; n != 5; ++n)
                    {
                      v47 = [v44 rangeAtIndex:n];
                      *v45 = [objc_msgSend(v8 substringWithRange:{v47, v48), "intValue"}];
                      v45 = (v45 + 4);
                    }
                  }

                  v41 = [(NSArray *)v39 countByEnumeratingWithState:&v52 objects:v68 count:16];
                }

                while (v41);
              }
            }

            *(v51 + 1048) = 1;
            *(v51 + 1056) = v10;
            *(v51 + 1064) = v72;
            *(v51 + 1080) = v9;
            v36 = "yes";
            goto LABEL_32;
          }
        }

        v9 = 0;
      }

      v36 = "no";
LABEL_32:
      v37 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: is LPC valid ? %s, min_offset -%.1f dB, topMcsTxCount %llu (AMPDU), txOffset %d:%d:%d:%d (%%)", "__WiFiDeviceManagerGetLPCStats", v36, v10, v9, v72, DWORD1(v72), DWORD2(v72), HIDWORD(v72)}];
      }

      objc_autoreleasePoolPop(v37);
      goto LABEL_35;
    }

    v49 = v6;
    sub_10019AEA4(v3);
  }

  else
  {
    sub_10019AF88();
    v49 = 4294963395;
  }

  v50 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: error %d", "__WiFiDeviceManagerGetLPCStats", v49}];
  }

  objc_autoreleasePoolPop(v50);
}

void sub_1000B6550(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Assoc timeout timer fired, triggering CoreCapture", "__WiFiDeviceManagerAssocStateTimerCallback"}];
  }

  objc_autoreleasePoolPop(v2);

  sub_1000D578C(a1);
}

void sub_1000B65C8(uint64_t a1)
{
  v2 = *(a1 + 3336);
  v3 = objc_autoreleasePoolPush();
  if (v2 == 16)
  {
    if (off_100298C40)
    {
      v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v8 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v3);
    if (_os_feature_enabled_impl())
    {
      v5 = *(a1 + 8976);
      if (v5)
      {
        CWFErrorDescription();
        v6 = CWFErrorWithDescription();
        (*(v5 + 16))(v5, v6, 0);
        _Block_release(*(a1 + 8976));
        *(a1 + 8976) = 0;
      }
    }

    if (*(a1 + 3336) == 16)
    {
      sub_1000B6E20(a1, 0);
    }

    *(a1 + 3336) = sub_10018DA2C(a1);
    *(a1 + 6952) = 0;
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Scanning Hotspot Device timeout in state %@.", "__WiFiDeviceManagerScanHotspotDeviceTimeoutCallback", sub_1000AA864(*(a1 + 3336))}];
    }

    objc_autoreleasePoolPop(v3);
  }
}

CFAbsoluteTime sub_1000B6814(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = sub_100006F88(v2);
  v4 = sub_1000078F4(v2, v3);
  if (!v4)
  {
    v12 = *(a1 + 6896);
    v13 = dispatch_time(0, 315360000000000000);
    dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0);
    result = CFAbsoluteTimeGetCurrent() + 315360000.0;
    *(a1 + 6904) = result;
    return result;
  }

  v5 = v4;
  if (sub_10000A604(v4))
  {
    if ((*(a1 + 8904) & 1) != 0 || *(a1 + 3466) || [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor isAnyCallInProgress]|| [+[WiFiUserInteractionMonitor isUsingSustainedWiFiData] sharedInstance]
    {
      sub_10019AFF4();
      v10 = v14;
      goto LABEL_11;
    }

    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Device in Lock state over %d minutes. Disconnect from Personal Hotspot!!", "__WiFiDeviceManagerAutoHotspotLockStateTimeoutCallback", *(a1 + 5448) / 0x3CuLL}];
    }

    objc_autoreleasePoolPop(v6);
    v7 = sub_100006F88(*(a1 + 64));
    sub_1000B9DC8(a1, v7, 1034, "__WiFiDeviceManagerAutoHotspotLockStateTimeoutCallback", 37551);
  }

  v8 = *(a1 + 6896);
  v9 = dispatch_time(0, 315360000000000000);
  dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
  v10 = CFAbsoluteTimeGetCurrent() + 315360000.0;
LABEL_11:
  *(a1 + 6904) = v10;

  CFRelease(v5);
  return result;
}

void sub_1000B69D0(uint64_t a1, char a2, NSObject **cf)
{
  if (cf)
  {
    if (cf[30])
    {
      CFRetain(cf);
      v6 = cf[30];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000B6B08;
      block[3] = &unk_100260D18;
      v7 = *(a1 + 32);
      block[4] = cf;
      block[5] = v7;
      v10 = a2;
      dispatch_async(v6, block);
      return;
    }

    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null queue.", "WiFiDeviceManagerCreate_block_invoke_2"}];
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null deviceManager", "WiFiDeviceManagerCreate_block_invoke_2"}];
    }
  }

  objc_autoreleasePoolPop(v8);
}

void sub_1000B6B08(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[30])
  {
    v3 = *(a1 + 40);
    v4 = *(v3 + 3336);
    dispatch_source_set_timer(*(v3 + 6888), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      if (*(a1 + 48))
      {
        v6 = "found";
      }

      else
      {
        v6 = "not found";
      }

      [off_100298C40 WFLog:3 message:{"%s: hotspot networks %s", "WiFiDeviceManagerCreate_block_invoke_3", v6}];
    }

    objc_autoreleasePoolPop(v5);
    if (*(a1 + 48) == 1)
    {
      v7 = [*(*(a1 + 40) + 6824) copySortedHotspotDevicesByAutoPreferences];
      v8 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: sorted hotspot device list %@", "WiFiDeviceManagerCreate_block_invoke_3", v7}];
      }

      objc_autoreleasePoolPop(v8);
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v7);
            }

            CFArrayAppendValue(*(*(a1 + 40) + 6920), *(*(&v16 + 1) + 8 * i));
          }

          v10 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v10);
      }

      *(*(a1 + 40) + 6928) = CFAbsoluteTimeGetCurrent();
    }

    else
    {
      v7 = 0;
    }

    if (_os_feature_enabled_impl())
    {
      v13 = *(*(a1 + 40) + 8976);
      if (v13)
      {
        (*(v13 + 16))(v13, 0, v7);
        _Block_release(*(*(a1 + 40) + 8976));
        *(*(a1 + 40) + 8976) = 0;
      }
    }

    if ((v4 - 20) > 0xFFFFFFFB)
    {
      if (sub_1000B6E8C(*(a1 + 40)))
      {
        sub_1000B6EBC(*(a1 + 40));
      }

      else
      {
        v15 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Auto hotspot attempt canceled because user auto join is disabled.", "WiFiDeviceManagerCreate_block_invoke_3"}];
        }

        objc_autoreleasePoolPop(v15);
      }
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Received Update Hotspot Devices in state %d", "WiFiDeviceManagerCreate_block_invoke_3", v4}];
      }

      objc_autoreleasePoolPop(v14);
      sub_1000B6E20(*(a1 + 40), 0);
    }

    CFRelease(*(a1 + 32));
  }

  else
  {

    CFRelease(v2);
  }
}

CFAbsoluteTime sub_1000B6E20(uint64_t a1, int a2)
{
  v3 = *(a1 + 6824);
  if (a2)
  {
    [v3 startBrowsing];
    result = CFAbsoluteTimeGetCurrent();
    *(a1 + 7040) = result;
    ++*(a1 + 6236);
  }

  else if ([v3 isScanning])
  {
    [*(a1 + 6824) stopBrowsing];
    result = *(a1 + 6240) + CFAbsoluteTimeGetCurrent() - *(a1 + 7040);
    *(a1 + 6240) = result;
  }

  return result;
}

uint64_t sub_1000B6E8C(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 6344);
  }

  sub_10019B0A8();
  return 0;
}

void sub_1000B6EBC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v185 = [NSString stringWithFormat:@"%s: current state: %@", "__WiFiDeviceManagerStateMachineRun", sub_1000AA864(*(a1 + 3336))];
    v184 = [+[NSString stringWithFormat:](NSString UTF8String:@"{%@+} %@"];
    v3 = [NSString stringWithFormat:@"%s"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v184 = [(NSString *)v3 UTF8String];
      *buf = 136446210;
      *&buf[4] = [[NSString stringWithFormat:?]];
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v2);
  v4 = (a1 + 3336);
  v5 = *(a1 + 3336);
  v214 = (a1 + 3336);
  if (v5 > 11)
  {
    if (v5 > 15)
    {
      if (v5 <= 17)
      {
        if (v5 != 16)
        {
          goto LABEL_106;
        }

        if (_os_feature_enabled_impl())
        {
          goto LABEL_380;
        }

        v97 = sub_1000E596C(a1);
        goto LABEL_157;
      }

      if (v5 == 18)
      {
        v97 = sub_1000E61CC(a1, *(a1 + 6984));
LABEL_157:
        *(a1 + 3336) = v97;
        if (v97 > 1)
        {
          goto LABEL_339;
        }

LABEL_333:
        v148 = off_1002600F8;
        goto LABEL_334;
      }

      if (v5 != 19)
      {
        goto LABEL_339;
      }

      if (*(a1 + 7088))
      {
        v57 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Waiting on Enable Remote Hotspot", "__WiFiDeviceManagerProcessEnableRemoteHotspotWaiting"}];
        }

        objc_autoreleasePoolPop(v57);
LABEL_332:
        if (*v4 > 1)
        {
          goto LABEL_339;
        }

        goto LABEL_333;
      }

      v149 = *(a1 + 6984);
      if (*(a1 + 7072))
      {
        v150 = [objc_msgSend(*(a1 + 6824) getHotspotDeviceName:{*(a1 + 6984)), "copy"}];
        if ([*(a1 + 7072) code] == -71146)
        {
          v176 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:"Connection Failure: Server blocked"];
          }

          objc_autoreleasePoolPop(v176);
          CFArrayAppendValue(*(a1 + 7000), v149);
          sub_1000B6E20(a1, 0);
          *(a1 + 6952) = 0;
          *(a1 + 6960) = 0;
          *(a1 + 3336) = 0;
          sub_100193BAC();
          *(a1 + 6984) = 0;
        }

        v151 = *(a1 + 6960);
        v152 = objc_autoreleasePoolPush();
        if (v151)
        {
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"Error (%@) enabling hotspot... Retry %d", *(a1 + 7072), *(a1 + 6960)}];
          }

          objc_autoreleasePoolPop(v152);
          --*(a1 + 6960);
          *(a1 + 3336) = 18;
          sub_1000B6EBC(a1);
        }

        else
        {
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"Error (%@) enabling hotspot after max retry", *(a1 + 7072)}];
          }

          objc_autoreleasePoolPop(v152);
          sub_1000B6E20(a1, 0);
          *(a1 + 3336) = 0;
          *(a1 + 6952) = 0;
          sub_100193BAC();
        }

        *(a1 + 6536) = [*(a1 + 7072) code];
        *(a1 + 6544) = [*(a1 + 6824) isFamilyHotspot:v149];
        sub_100146CAC((a1 + 6536));

        goto LABEL_298;
      }

      if (*(a1 + 7080))
      {
        v177 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"Hotspot Enabled %@", *(a1 + 7080)}];
        }

        objc_autoreleasePoolPop(v177);
        v178 = [*(a1 + 7080) objectForKey:{@"ssid", sub_1000B6E20(a1, 0)}];
        v179 = sub_10009D2E4(v178);
        if (v179)
        {
          v180 = v179;
          sub_10009FBF4(v179, [*(a1 + 7080) objectForKey:@"password"]);
          sub_10000AD34(v180, @"CHANNEL", [*(a1 + 7080) objectForKey:@"channel"]);
          v181 = *(a1 + 6936);
          if (v181)
          {
            CFRelease(v181);
          }

          *(a1 + 6936) = v180;
          *(a1 + 7096) = CFAbsoluteTimeGetCurrent();
          v182 = sub_100193CE8(a1, *(a1 + 6936), *(a1 + 7048));
          if (!v182)
          {
            *(a1 + 3336) = 20;
            *(a1 + 6536) = 0;
            *(a1 + 6544) = [*(a1 + 6824) isFamilyHotspot:v149];
            *(a1 + 6545) = 1;
            sub_1000EC5CC(a1, @"userJoinScanning", 0);
LABEL_298:

            *(a1 + 7080) = 0;
            goto LABEL_332;
          }

          sub_10019B114(a1, v182);
        }

        sub_10019B16C((a1 + 7080));
      }

      *(a1 + 6952) = 0;
      goto LABEL_332;
    }

    if (v5 > 13)
    {
      if (v5 == 14)
      {
LABEL_106:
        v10 = sub_1000E54AC(a1);
LABEL_147:
        *(a1 + 3336) = v10;
        goto LABEL_336;
      }

LABEL_146:
      v10 = sub_1000E3DB4(a1, *(a1 + 1240), *(a1 + 1248), *(a1 + 1232));
      goto LABEL_147;
    }

    if (v5 == 12)
    {
      goto LABEL_146;
    }

    if (_os_feature_enabled_impl())
    {
      goto LABEL_380;
    }

    rangeb = *(a1 + 3400);
    if (rangeb)
    {
      sub_10019B208((a1 + 3400));
    }

    else
    {
      v154 = *(a1 + 3392);
      if (v154)
      {
        if (!*(a1 + 1168))
        {
          *(a1 + 1168) = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
          v154 = *(a1 + 3392);
        }

        if (CFArrayGetCount(v154))
        {
          if (CFArrayGetCount(*(a1 + 3672)))
          {
            Count = CFArrayGetCount(*(a1 + 3392));
            if (!Count)
            {
              sub_10019B268();
              goto LABEL_344;
            }

            v156 = Count;
            Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
            if (!Mutable)
            {
LABEL_344:
              sub_10019B30C();
              goto LABEL_346;
            }

            v158 = Mutable;
            if (v156 >= 1)
            {
              for (i = 0; v156 != i; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 3392), i);
                if (ValueAtIndex)
                {
                  v161 = ValueAtIndex;
                  if (sub_10001CF90(ValueAtIndex))
                  {
                    v162 = *(a1 + 3688);
                    v226.length = CFArrayGetCount(v162);
                    v226.location = 0;
                    if (CFArrayGetFirstIndexOfValue(v162, v226, v161) == -1)
                    {
                      if (!sub_1000A11B4(v161))
                      {
                        continue;
                      }

                      if (sub_1000E0A04(a1, v161, 0))
                      {
                        v227.length = CFArrayGetCount(v158);
                        v227.location = 0;
                        if (CFArrayContainsValue(v158, v227, v161))
                        {
                          continue;
                        }

                        CFArrayAppendValue(v158, v161);
                        v163 = objc_autoreleasePoolPush();
                        if (off_100298C40)
                        {
                          [off_100298C40 WFLog:3 message:{"%s: found provisioned network %@, adding to tmp array", "__WiFiDeviceManagerFilterProvisionedHS20Networks", sub_10000A878(v161)}];
                        }
                      }

                      else
                      {
                        v163 = objc_autoreleasePoolPush();
                        if (off_100298C40)
                        {
                          [off_100298C40 WFLog:3 message:{"%s: Provisioned HS2.0 network %@ not eligible for aj", "__WiFiDeviceManagerFilterProvisionedHS20Networks", sub_10000A878(v161)}];
                        }
                      }
                    }

                    else
                    {
                      v163 = objc_autoreleasePoolPush();
                      if (off_100298C40)
                      {
                        [off_100298C40 WFLog:3 message:{"%s: HS2.0 network %@ is in disabled network list", "__WiFiDeviceManagerFilterProvisionedHS20Networks", sub_10000A878(v161)}];
                      }
                    }
                  }

                  else
                  {
                    v163 = objc_autoreleasePoolPush();
                    if (off_100298C40)
                    {
                      [off_100298C40 WFLog:3 message:{"%s: network is disabled %@", "__WiFiDeviceManagerFilterProvisionedHS20Networks", sub_10000A878(v161)}];
                    }
                  }

                  objc_autoreleasePoolPop(v163);
                  v4 = (a1 + 3336);
                }
              }
            }

            CFArrayRemoveAllValues(*(a1 + 3392));
            if (!CFArrayGetCount(v158))
            {
              sub_10019B2B4(v158);
              goto LABEL_344;
            }

            v165 = *(a1 + 3392);
            v228.length = CFArrayGetCount(v158);
            v228.location = 0;
            CFArrayAppendArray(v165, v158, v228);
            CFRelease(v158);
            v166 = *(a1 + 1168);
            v167 = *(a1 + 3392);
            v229.length = CFArrayGetCount(v167);
            v229.location = 0;
            CFArrayAppendArray(v166, v167, v229);
          }

          else
          {
            sub_10019B358();
          }
        }

        else
        {
          sub_10019B3A4();
        }
      }

      else
      {
        sub_10019B3F0();
      }
    }

LABEL_346:
    v168 = *(a1 + 3392);
    if (v168)
    {
      CFRelease(v168);
      *(a1 + 3392) = 0;
    }

    v169 = CFArrayGetCount(*(a1 + 3616));
    if (v169)
    {
      v170 = v169;
      v171 = *(a1 + 1168);
      if (!v171)
      {
        v171 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        *(a1 + 1168) = v171;
        if (!v171)
        {
          sub_10019B43C();
          goto LABEL_357;
        }
      }

      v230.location = 0;
      v230.length = v170;
      CFArrayAppendArray(v171, *(a1 + 3616), v230);
      v172 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Appending deffered networks to candidates list", "__WiFiDeviceManagerProcessGasResponses"}];
      }

      objc_autoreleasePoolPop(v172);
    }

    CFArrayRemoveAllValues(*(a1 + 3608));
    CFArrayRemoveAllValues(*(a1 + 3616));
    [*(a1 + 3704) clearScanResultsForAutoJoinSessionReset];
    sub_1000E9010(a1, *(a1 + 1168));
    v173 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s:%d manager->state.scan.candidates.networks %@", "__WiFiDeviceManagerProcessGasResponses", 27707, *(a1 + 1168)}];
    }

    objc_autoreleasePoolPop(v173);
    if (sub_100192B7C(a1))
    {
      goto LABEL_285;
    }

LABEL_357:
    v174 = a1;
    v175 = rangeb;
    goto LABEL_358;
  }

  if (v5 > 5)
  {
    if (_os_feature_enabled_impl())
    {
      goto LABEL_380;
    }

    v11 = *(a1 + 1152);
    v12 = *(a1 + 1144);
    v13 = CFArrayGetCount(*(a1 + 3672));
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v185 = [NSString stringWithFormat:@"%s: current state: %@", "__WiFiDeviceManagerProcessMultiStageScanResults", sub_1000AA864(*v4)];
      v184 = [+[NSString stringWithFormat:](NSString UTF8String:@"{%@*} %@"];
      v15 = [NSString stringWithFormat:@"%s"];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v184 = [(NSString *)v15 UTF8String];
        v16 = [[NSString stringWithFormat:?]];
        *buf = 136446210;
        *&buf[4] = v16;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v14);
    if (v12)
    {
      v183 = *(a1 + 3344);
      if (v183)
      {
        CFArrayRemoveAllValues(v183);
      }
    }

    else
    {
      if (*v4 == 11)
      {
        v11 = *(a1 + 1160);
      }

      if (v11)
      {
        if ((*v4 & 0xFFFFFFFE) == 0xA)
        {
          sub_1001926B0(a1);
          *(a1 + 3352) = CFAbsoluteTimeGetCurrent();
        }

        if (*(a1 + 1168) || (v17 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks), (*(a1 + 1168) = v17) != 0))
        {
          sub_1000E8804(a1, v11);
          v18 = CFArrayGetCount(v11);
          v19 = CFArrayGetCount(*(a1 + 3624));
          v20 = objc_autoreleasePoolPush();
          v21 = off_100298C40;
          if (off_100298C40)
          {
            v187 = v13 > 0;
            v188 = sub_10000A878(*(a1 + 3432));
            v185 = v18;
            v186 = v19;
            v184 = "__WiFiDeviceManagerProcessMultiStageScanResults";
            [v21 WFLog:3 message:{"%s: scanned# %ld, known# %ld, isHS20AccountConfigured %d, topRankedKnownNetwork %@"}];
          }

          objc_autoreleasePoolPop(v20);
          v22 = v13 <= 0 && v19 == 0;
          if (!v22 && v18 >= 1)
          {
            v23 = 0;
            v24 = kCFAllocatorDefault;
            do
            {
              v25 = CFArrayGetValueAtIndex(v11, v23);
              if (v25)
              {
                v26 = v25;
                sub_1000E6914(a1, v25);
                if (sub_1000E0A04(a1, v26, 0))
                {
                  if (v13 >= 1 && sub_10000AFE4(v26))
                  {
                    CFArrayAppendValue(*(a1 + 1168), v26);
                  }

                  else
                  {
                    v27 = *(a1 + 3432);
                    if (v27 && (*v214 == 9 || *v214 == 7))
                    {
                      if (CFEqual(v27, v26) == 1)
                      {
                        *buf = -1431655766;
                        sub_100190654(a1, v26, 1, buf, v28, v29, v30, v31, v184, v185, v186, SHIDWORD(v186), v187, SHIDWORD(v187), v188, v189, v190, v192, v193, v194, idx, cf, v199, v201, v204, context);
                        v33 = v32;
                        v34 = sub_100034EEC(v26, @"RSSI");
                        v35 = objc_autoreleasePoolPush();
                        v36 = off_100298C40;
                        if (v34 >= v33)
                        {
                          if (off_100298C40)
                          {
                            v50 = v35;
                            v184 = "__WiFiDeviceManagerProcessMultiStageScanResults";
                            v185 = sub_10000A878(v26);
                            [v36 WFLog:3 message:"%s: found the top network to match scanned network %@"];
                            v35 = v50;
                          }

                          objc_autoreleasePoolPop(v35);
                          CFArrayAppendValue(*(a1 + 1168), *(a1 + 3432));
                          v42 = *(a1 + 3432);
                          v24 = kCFAllocatorDefault;
LABEL_69:
                          v43 = sub_10000C580(v24, v26);
                          if (v43)
                          {
                            v44 = v43;
                            sub_10009D854(v43, v42);
                            v45 = *(a1 + 1168);
                            v222.length = CFArrayGetCount(v45);
                            v222.location = 0;
                            FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v45, v222, v44);
                            v47 = *(a1 + 1168);
                            if (FirstIndexOfValue == -1)
                            {
                              CFArrayAppendValue(v47, v44);
                            }

                            else
                            {
                              v48 = CFArrayGetValueAtIndex(v47, FirstIndexOfValue);
                              v49 = sub_10009E654(v48, @"Strength");
                              if (v49 < sub_10009E654(v44, @"Strength"))
                              {
                                CFArraySetValueAtIndex(*(a1 + 1168), FirstIndexOfValue, v44);
                              }
                            }

                            CFRelease(v44);
                          }

                          goto LABEL_75;
                        }

                        if (off_100298C40)
                        {
                          v37 = v35;
                          context = sub_10000A878(v26);
                          v38 = sub_100034EEC(v26, @"RSSI");
                          if ((*buf - 1) > 3)
                          {
                            v39 = 0;
                          }

                          else
                          {
                            v39 = off_100262378[*buf - 1];
                          }

                          v186 = v39;
                          v187 = v33;
                          v185 = v38;
                          [v36 WFLog:4 message:{"Filtered top network %@ with RSSI %ld (%@ threshold %d)", context}];
                          v35 = v37;
                        }

                        objc_autoreleasePoolPop(v35);
                        v24 = kCFAllocatorDefault;
                      }
                    }

                    else
                    {
                      v221.location = 0;
                      v221.length = v19;
                      v40 = CFArrayGetFirstIndexOfValue(*(a1 + 3624), v221, v26);
                      if (v40 != -1)
                      {
                        v41 = CFArrayGetValueAtIndex(*(a1 + 3624), v40);
                        if (v41)
                        {
                          v42 = v41;
                          if (!sub_10000A7CC(v41) || sub_1000A1470(v26))
                          {
                            goto LABEL_69;
                          }
                        }
                      }
                    }
                  }
                }
              }

LABEL_75:
              ++v23;
            }

            while (v18 != v23);
          }

          sub_1000E8A6C(a1);
          [*(a1 + 3704) setScanResultsWithAutoJoinSessionCompletion:v11 complete:0];
          sub_1000E9010(a1, *(a1 + 1168));
          sub_1000E9010(a1, *(a1 + 3616));
          sub_1000E9010(a1, *(a1 + 3608));
          v4 = (a1 + 3336);
          v12 = 0;
          if (sub_100192B7C(a1))
          {
            goto LABEL_285;
          }
        }
      }
    }

    v147 = sub_1000EB018(a1, v12);
    goto LABEL_286;
  }

  if ((v5 - 2) < 3)
  {
    if (_os_feature_enabled_impl())
    {
      goto LABEL_380;
    }

    v51 = *(a1 + 1152);
    v52 = *(a1 + 1144);
    v53 = CFArrayGetCount(*(a1 + 3672));
    v205 = CFStringCreateMutable(kCFAllocatorDefault, 0);
    v191 = v52;
    if (!v51 || v52)
    {
      goto LABEL_372;
    }

    v220 = 0;
    v218 = 0u;
    v219 = 0u;
    *buf = 0u;
    sub_1001926B0(a1);
    v54 = *(a1 + 3336);
    if (v54 == 4 || v54 == 2)
    {
      v55 = *(a1 + 1208);
      if (v55)
      {
        CFRelease(v55);
        *(a1 + 1208) = 0;
      }
    }

    v56 = *(a1 + 1168);
    if (!v56)
    {
      v56 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      *(a1 + 1168) = v56;
    }

    if (*(a1 + 1224))
    {
      if (!v56)
      {
        goto LABEL_372;
      }
    }

    else
    {
      v92 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      *(a1 + 1224) = v92;
      v56 = *(a1 + 1168);
      if (!v56 || !v92)
      {
LABEL_372:
        if (v205)
        {
          CFRelease(v205);
        }

LABEL_374:
        v174 = a1;
        v175 = v191;
        if (!v191)
        {
          v147 = sub_1000EA21C(a1);
          goto LABEL_286;
        }

LABEL_358:
        v147 = sub_1000D7FA8(v174, v175);
        goto LABEL_286;
      }
    }

    v93 = *(a1 + 3336);
    if (*(a1 + 5680) && v93 == 3)
    {
      v94 = CFArrayGetCount(v56);
      v95 = CFArrayGetCount(*(a1 + 3616)) + v94;
      if (!(v95 + CFArrayGetCount(*(a1 + 3608))))
      {
        v209 = 0;
        v96 = v205;
LABEL_166:
        sub_1000E8804(a1, v51);
        v100 = CFArrayGetCount(v51);
        v101 = CFArrayGetCount(*(a1 + 3600));
        v102 = CFArrayGetCount(*(a1 + 3592));
        v210 = 0;
        rangea = v102;
        v103 = v53 <= 0 && v102 == 0;
        if (!v103 && v100 >= 1)
        {
          v210 = 0;
          for (j = 0; j != v100; ++j)
          {
            v105 = CFArrayGetValueAtIndex(v51, j);
            if (!v105)
            {
              continue;
            }

            v106 = v105;
            if (*v4 == 2)
            {
              v107 = sub_10000A540(v105, @"CHANNEL");
              LODWORD(valuePtr) = 0;
              if (v107)
              {
                CFNumberGetValue(v107, kCFNumberSInt32Type, &valuePtr);
                if ((LODWORD(valuePtr) - 1) <= 0xC)
                {
                  ++*&buf[4 * (LODWORD(valuePtr) - 1)];
                }
              }
            }

            if (!sub_1000E0A04(a1, v106, 0))
            {
              continue;
            }

            if (v53 >= 1 && sub_10000AFE4(v106))
            {
              CFArrayAppendValue(*(a1 + 1168), v106);
            }

            else if (sub_10001CDD8(v106))
            {
              if (v101)
              {
                if (CFArrayGetCount(*(a1 + 3600)) < 1)
                {
LABEL_188:
                  if (v96)
                  {
                    sub_100192784(a1, v106, v96);
                  }
                }

                else
                {
                  v108 = 0;
                  while (1)
                  {
                    v109 = CFArrayGetValueAtIndex(*(a1 + 3600), v108);
                    if (!v109)
                    {
                      break;
                    }

                    if (sub_10009F48C(v109, v106))
                    {
                      goto LABEL_209;
                    }

                    if (++v108 >= CFArrayGetCount(*(a1 + 3600)))
                    {
                      goto LABEL_188;
                    }
                  }

                  v120 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:4 message:{"knownHiddenNetwork is NULL!, Added the hidden scan result"}];
                  }

                  objc_autoreleasePoolPop(v120);
LABEL_209:
                  if (v209)
                  {
                    CFArrayAppendValue(*(a1 + 1168), v106);
                  }

                  v210 = (v210 + 1);
                }

LABEL_212:
                v4 = (a1 + 3336);
              }
            }

            else
            {
              v224.location = 0;
              v224.length = rangea;
              v110 = CFArrayGetFirstIndexOfValue(*(a1 + 3592), v224, v106);
              if (v110 != -1)
              {
                v111 = CFArrayGetValueAtIndex(*(a1 + 3592), v110);
                if (v111)
                {
                  v112 = v111;
                  if (!sub_10000A7CC(v111) || sub_1000A1470(v106))
                  {
                    sub_1000E6914(a1, v106);
                    if (sub_1000E0A04(a1, v106, 0))
                    {
                      v113 = sub_10000C580(kCFAllocatorDefault, v106);
                      if (v113)
                      {
                        v114 = v113;
                        sub_10009D854(v113, v112);
                        v115 = *(a1 + 1168);
                        v225.length = CFArrayGetCount(v115);
                        v225.location = 0;
                        v116 = CFArrayGetFirstIndexOfValue(v115, v225, v114);
                        if (v116 == -1)
                        {
                          v121 = CFStringCreateMutable(kCFAllocatorDefault, 0);
                          v4 = (a1 + 3336);
                          v203 = v121;
                          if (*v214 == 3)
                          {
                            if (v121)
                            {
                              sub_100192890(a1, v114, v121);
                              v126 = objc_autoreleasePoolPush();
                              if (off_100298C40)
                              {
                                v127 = v126;
                                [off_100298C40 WFLog:4 message:{"AJScan: Network found on 5Ghz only: {{ %@ }}", v203}];
                                v126 = v127;
                              }

                              objc_autoreleasePoolPop(v126);
                            }

                            ++*(a1 + 5908);
                            v122 = objc_autoreleasePoolPush();
                            if (v209)
                            {
                              if (off_100298C40)
                              {
                                [off_100298C40 WFLog:4 message:{"AJScan: Used Network found on 5Ghz: {{ %@ }}", v203}];
                              }

                              objc_autoreleasePoolPop(v122);
                              CFArrayAppendValue(*(a1 + 1168), v114);
                            }

                            else
                            {
                              if (off_100298C40)
                              {
                                [off_100298C40 WFLog:4 message:{"AJScan: Missed Network found on 5Ghz: {{ %@ }}", v203}];
                              }

                              objc_autoreleasePoolPop(v122);
                            }

                            v4 = (a1 + 3336);
                          }

                          else
                          {
                            CFArrayAppendValue(*(a1 + 1168), v114);
                          }

                          if (v203)
                          {
                            CFRelease(v203);
                          }
                        }

                        else
                        {
                          idxa = v116;
                          v200 = CFArrayGetValueAtIndex(*(a1 + 1168), v116);
                          sub_10000C614(v200, @"AJFoundOnDualBand", 1);
                          sub_10000C614(v114, @"AJFoundOnDualBand", 1);
                          v117 = CFStringCreateMutable(kCFAllocatorDefault, 0);
                          v118 = CFStringCreateMutable(kCFAllocatorDefault, 0);
                          v202 = v117;
                          if (v117 && v118)
                          {
                            v123 = v118;
                            sub_100192890(a1, v200, v117);
                            sub_100192890(a1, v114, v123);
                            v124 = objc_autoreleasePoolPush();
                            if (off_100298C40)
                            {
                              v125 = v124;
                              [off_100298C40 WFLog:3 message:{"AJScan: Network found on two bands: {{ %@ }}, {{ %@ }}", v202, v123}];
                              v124 = v125;
                            }

                            objc_autoreleasePoolPop(v124);
                            v118 = v123;
                          }

                          cfa = v118;
                          v119 = sub_10009E654(v200, @"Strength");
                          if (v119 < sub_10009E654(v114, @"Strength"))
                          {
                            CFArraySetValueAtIndex(*(a1 + 1168), idxa, v114);
                          }

                          v96 = v205;
                          if (v202)
                          {
                            CFRelease(v202);
                          }

                          v4 = (a1 + 3336);
                          if (cfa)
                          {
                            CFRelease(cfa);
                          }

                          ++*(a1 + 5912);
                        }

                        CFRelease(v114);
                        continue;
                      }
                    }
                  }
                }

                goto LABEL_212;
              }
            }
          }
        }

        if (v96)
        {
          if (CFStringGetLength(v96))
          {
            v128 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"Skipped the non-matching hidden networks - %@", v205}];
            }

            objc_autoreleasePoolPop(v128);
          }

          CFRelease(v205);
        }

        if (*v4 == 3 && CFArrayGetCount(*(a1 + 1168)) >= 1)
        {
          v129 = 0;
          do
          {
            v130 = CFArrayGetValueAtIndex(*(a1 + 1168), v129);
            if (sub_100018030(v130) == 1 && !sub_100034EEC(v130, @"AJFoundOnDualBand") && !sub_10001CDD8(v130))
            {
              v131 = CFStringCreateMutable(kCFAllocatorDefault, 0);
              ++*(a1 + 5916);
              if (v131)
              {
                v132 = v131;
                sub_100192890(a1, v130, v131);
                v133 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:4 message:{"AJScan: Network found on 2Ghz only: {{ %@ }}", v132}];
                }

                objc_autoreleasePoolPop(v133);
                CFRelease(v132);
              }
            }

            ++v129;
          }

          while (v129 < CFArrayGetCount(*(a1 + 1168)));
        }

        sub_1000E8A6C(a1);
        [*(a1 + 3704) setScanResultsWithAutoJoinSessionCompletion:v51 complete:1];
        if (*(a1 + 3336) == 2)
        {
          v134 = 0;
          v135 = 0;
          v136 = 0;
          do
          {
            v137 = *&buf[v134];
            if (v137 > 9)
            {
              v135 = 1;
            }

            if (v137 > v136)
            {
              v136 = *&buf[v134];
            }

            v134 += 4;
          }

          while (v134 != 52);
          v138 = v136 << 16;
        }

        else
        {
          v138 = 0;
          v135 = 0;
        }

        v139 = CFArrayGetCount(*(a1 + 1168));
        v140 = v139 - v210;
        v141 = CFArrayGetCount(*(a1 + 3616));
        v142 = CFArrayGetCount(*(a1 + 3608));
        v143 = v142;
        v144.i64[0] = __PAIR64__(v141, v142);
        v144.i64[1] = __PAIR64__(v140, v210);
        *(a1 + 5920) = vaddq_s32(*(a1 + 5920), v144);
        if (*(a1 + 3336) == 2)
        {
          v145 = v138 | (2 * (v210 != 0)) | (8 * (v135 != 0));
          if (v139 != v210)
          {
            ++v145;
          }

          *(a1 + 6208) = v145 | (16 * (v141 != 0)) | (4 * (v142 != 0));
          if ((v210 || v139 || v141 || v142 || v135 || *(a1 + 5680) || *(a1 + 3360)) && !sub_1000E6D08(a1, 0))
          {
            v146 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"AJScan: Found {%ld Nw, %d hidden %ld HS, %ld HS20, busych %d, force %d} 2.4Ghz network, triggering 5Ghz scan\n", v140, v210, v141, v143, v135, *(a1 + 3360)}];
            }

            objc_autoreleasePoolPop(v146);
            if (v210)
            {
              ++*(a1 + 5888);
            }

            v4 = (a1 + 3336);
            if (v139 == v210)
            {
              if (!v141)
              {
LABEL_279:
                if (!v143)
                {
LABEL_281:
                  if (v135)
                  {
                    ++*(a1 + 5900);
                  }

                  v147 = sub_100191434(a1);
LABEL_286:
                  *v4 = v147;
                  if (v147 > 1)
                  {
                    goto LABEL_339;
                  }

                  goto LABEL_287;
                }

LABEL_280:
                ++*(a1 + 5892);
                goto LABEL_281;
              }
            }

            else
            {
              ++*(a1 + 5904);
              if (!v141)
              {
                goto LABEL_279;
              }
            }

            ++*(a1 + 5896);
            if (!v143)
            {
              goto LABEL_281;
            }

            goto LABEL_280;
          }
        }

        sub_1000E9010(a1, *(a1 + 1168));
        sub_1000E9010(a1, *(a1 + 3616));
        sub_1000E9010(a1, *(a1 + 3608));
        sub_1000E9494(*(a1 + 1168), 1, (a1 + 1208));
        v4 = (a1 + 3336);
        if (!sub_100192B7C(a1))
        {
          goto LABEL_374;
        }

LABEL_285:
        v147 = sub_1000E9864(a1);
        goto LABEL_286;
      }

      v93 = *v4;
    }

    v96 = v205;
    if (v93 - 3 <= 1)
    {
      *(a1 + 3352) = CFAbsoluteTimeGetCurrent();
    }

    v209 = 1;
    goto LABEL_166;
  }

  if (v5 < 2)
  {
    if (!_os_feature_enabled_impl())
    {
      CFArrayRemoveAllValues(*(a1 + 3608));
      CFArrayRemoveAllValues(*(a1 + 3616));
      [*(a1 + 3704) clearScanResultsForAutoJoinSessionReset];
      v6 = sub_100009664(*(a1 + 64));
      sub_100146540(a1, v6, 0);
      buf[0] = 0;
      v7 = sub_1000E63A0(a1, buf);
      if (*(a1 + 32) && *(a1 + 33) && *(a1 + 176) == 3 && buf[0] && !v7 && !*(a1 + 3360) && *(a1 + 192) != 14 && *(a1 + 5592) != 1)
      {
        v8 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:"Falling to 2Ghz scan to save power"];
        }

        objc_autoreleasePoolPop(v8);
        *(a1 + 28) = 1;
      }

      if (*(a1 + 24) && sub_10005B850(*(a1 + 64)) && (*(a1 + 5592) == 1 || *(a1 + 5576) || !*(a1 + 28)))
      {
        v9 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"Attempting multi-stage auto join mStageAutoJoinAttempts=%d", *(a1 + 28)}];
        }

        objc_autoreleasePoolPop(v9);
        v10 = sub_1000E345C(a1);
      }

      else
      {
        v153 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"Fallback to existing auto-join mStageAutoJoinAttempts=%d", *(a1 + 28)}];
        }

        objc_autoreleasePoolPop(v153);
        v10 = sub_100191434(a1);
      }

      goto LABEL_147;
    }

    goto LABEL_380;
  }

  if (v5 != 5)
  {
    goto LABEL_339;
  }

  if (_os_feature_enabled_impl())
  {
LABEL_380:
    sub_10019B1A0((a1 + 3336));
    goto LABEL_335;
  }

  v58 = *(a1 + 1152);
  v59 = *(a1 + 1144);
  v60 = objc_autoreleasePoolPush();
  if (v59)
  {
    v98 = sub_1000D7FA8(a1, v59);
  }

  else
  {
    v61 = *(a1 + 3600);
    v62 = *(a1 + 1200);
    *(a1 + 1200) = v62 + 1;
    v63 = CFArrayGetValueAtIndex(v61, v62);
    if (v58)
    {
      v64 = v63;
      if (v63)
      {
        sub_1000E8804(a1, v58);
        sub_1000E9494(v58, 0, 0);
        if (*(a1 + 1168) || (v65 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks), (*(a1 + 1168) = v65) != 0))
        {
          v66 = CFArrayGetCount(v58);
          if (v66)
          {
            v67 = v66;
            v223.location = 0;
            v223.length = v66;
            if (CFArrayGetFirstIndexOfValue(v58, v223, v64) != -1)
            {
              range = CFArrayGetCount(*(a1 + 1168));
              if (v67 >= 1)
              {
                for (k = 0; k != v67; ++k)
                {
                  v69 = CFArrayGetValueAtIndex(v58, k);
                  if (v69)
                  {
                    v74 = v69;
                    v216 = 0;
                    sub_100190654(a1, v69, 1, &v216, v70, v71, v72, v73, v184, v185, v186, SHIDWORD(v186), v187, SHIDWORD(v187), v188, v189, v190, v192, v193, v194, idx, cf, v199, v201, v204, context);
                    v76 = v75;
                    if (sub_100034EEC(v74, @"RSSI") >= v75)
                    {
                      v82 = sub_10000C580(kCFAllocatorDefault, v74);
                      if (v82)
                      {
                        v83 = v82;
                        v208 = v60;
                        sub_10009D854(v82, v64);
                        v84 = v83;
                        if (sub_10000A540(v83, @"BSSID"))
                        {
                          v85 = *(a1 + 1176);
                          if (v85 < range)
                          {
                            do
                            {
                              v86 = CFArrayGetValueAtIndex(*(a1 + 1168), v85);
                              if (v86)
                              {
                                v87 = v86;
                                if (sub_10009F48C(v86, v74))
                                {
                                  v88 = sub_10001A9BC(v87);
                                  if (![*(a1 + 6720) isNetworkInDenyListedState:1 scanResult:v88])
                                  {
                                    goto LABEL_143;
                                  }

                                  *buf = 0;
                                  valuePtr = 0.0;
                                  if ([*(a1 + 6720) isNetworkDenyListedForAutoJoinDueToTrigDisc:v88 RSSI:buf timestamp:&valuePtr])
                                  {
                                    if (sub_1000C59AC(a1, v87, *buf, valuePtr))
                                    {
                                      goto LABEL_143;
                                    }
                                  }

                                  else
                                  {
                                    if (sub_100190354(a1, v87))
                                    {
LABEL_143:

                                      CFArraySetValueAtIndex(*(a1 + 1168), v85, v84);
                                      break;
                                    }

                                    v89 = objc_autoreleasePoolPush();
                                    if (off_100298C40)
                                    {
                                      context = v89;
                                      v90 = v87;
                                      v91 = off_100298C40;
                                      v184 = sub_10000A878(v90);
                                      [v91 WFLog:3 message:"Skipping problematic network %@ for auto-join"];
                                      v89 = context;
                                    }

                                    objc_autoreleasePoolPop(v89);
                                  }
                                }
                              }

                              ++v85;
                            }

                            while (range != v85);
                          }
                        }

                        CFRelease(v84);
                        v60 = v208;
                      }
                    }

                    else
                    {
                      v77 = v60;
                      v78 = objc_autoreleasePoolPush();
                      v79 = off_100298C40;
                      if (off_100298C40)
                      {
                        v207 = sub_10000A878(v74);
                        v80 = sub_100034EEC(v74, @"RSSI");
                        if ((v216 - 1) > 3)
                        {
                          v81 = 0;
                        }

                        else
                        {
                          v81 = off_100262378[v216 - 1];
                        }

                        v186 = v81;
                        v187 = v76;
                        v185 = v80;
                        [v79 WFLog:4 message:{"Filtered hidden network %@ with RSSI %ld (%@ threshold %d)", v207}];
                      }

                      objc_autoreleasePoolPop(v78);
                      v60 = v77;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v98 = sub_1000EA750(a1, *(a1 + 1216));
  }

  v99 = v98;
  objc_autoreleasePoolPop(v60);
  v4 = (a1 + 3336);
  *v214 = v99;
  if (v99 > 1)
  {
    goto LABEL_339;
  }

LABEL_287:
  v148 = off_10025FC08;
LABEL_334:
  sub_1000ED650(a1, *v148, 0, 0);
LABEL_335:
  v10 = *v4;
LABEL_336:
  if (v10 <= 1)
  {
    v164 = *(a1 + 3328);
    if (v164)
    {

      *(a1 + 3328) = 0;
    }

    return;
  }

LABEL_339:
  if (!*(a1 + 3328))
  {
    *(a1 + 3328) = sub_10000D83C("__WiFiDeviceManagerStateMachineRun");
  }
}

id sub_1000B8D04(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: BssBlacklist expiry timer fired", "__WiFiDeviceManagerBssBlacklistExpiryTimerCallback"}];
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 6720) removeExpiredDenyListedState:2];
  v3 = *(a1 + 6720);

  return [v3 removeExpiredDenyListedState:1];
}

id sub_1000B8D8C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: EAPATNotifBlacklist expiry timer fired", "__WiFiDeviceManagerEAPATNotifBlacklistExpiryTimerCallback"}];
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 6720) removeExpiredDenyListedState:4];
  *(a1 + 7448) = 0;
  return result;
}

void sub_1000B8E04(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (!a1)
  {
    sub_10019B49C();
    goto LABEL_12;
  }

  v3 = *(a1 + 7320) + 1;
  *(a1 + 7320) = v3;
  if (*(a1 + 7328))
  {
    if (!sub_10013F1C0(*(a1 + 120)))
    {
LABEL_11:
      sub_1000F1200(a1);
      goto LABEL_12;
    }

    v4 = [NSString stringWithFormat:@"DNS Stall: %llus", *(a1 + 7320)];
  }

  else
  {
    v4 = [NSString stringWithFormat:@"Data Stall: %llus", v3];
  }

  v5 = v4;
  if (!*(a1 + 7333))
  {
    goto LABEL_11;
  }

  if (MGGetBoolAnswer())
  {
    v6 = *(a1 + 4616);
    if (v6)
    {
      v6(a1, 18, v5, *(a1 + 4624));
    }
  }

  v7 = *(a1 + 7312);
  v8 = dispatch_time(0, 1000000000);
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
LABEL_12:

  objc_autoreleasePoolPop(v2);
}

void sub_1000B8F20(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1)
  {
    v3 = *(a1 + 7360);
    v4 = vaddq_s64(v3, xmmword_1001CE750);
    *(a1 + 7360) = v4;
    if (v3.i64[1] >= 2 && (v5 = [NSString stringWithFormat:@"Slow WiFi: %llus", v4.i64[0]], *(a1 + 7384)))
    {
      v6 = v5;
      if (MGGetBoolAnswer())
      {
        v7 = *(a1 + 4616);
        if (v7)
        {
          v7(a1, 17, v6, *(a1 + 4624));
        }
      }

      v8 = *(a1 + 7352);
      v9 = dispatch_time(0, 1000000000);
      dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
    }

    else
    {
      sub_1000F12E0(a1);
    }
  }

  else
  {
    sub_10019B4E8();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000B9020(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: settlement status=%ld userInfo='%@'", "__WiFiDeviceManagerHandleSettlementChange", a2, a3}];
  }

  objc_autoreleasePoolPop(v6);
  if (*(v5 + 4440))
  {
    v7 = [a3 mutableCopy];
    [v7 setObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:", a2), @"settlement"}];
    v8 = sub_100009664(*(v5 + 64));
    (*(v5 + 4440))(v5, v8, *(v5 + 4448), 7, v7);
    if (v7)
    {

      CFRelease(v7);
    }
  }
}

void sub_1000B913C(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: entering", "WiFiDeviceManagerScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v7);
  if (a2)
  {
    if (!*(a1 + 16) || *(a1 + 240))
    {
      v8 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: exiting, Error: not opened or queue already assigned", "WiFiDeviceManagerScheduleWithQueue"}];
      }

      goto LABEL_10;
    }

    *(a1 + 240) = a2;
    *(a1 + 248) = a3;
    sub_10005DB7C(*(a1 + 64), a2);
    sub_100044400(*(a1 + 120), *(a1 + 240));
    v9 = *(a1 + 320);
    if (v9)
    {
      dispatch_activate(v9);
    }

    v10 = *(a1 + 368);
    if (v10)
    {
      dispatch_activate(v10);
    }

    if (*(a1 + 5512) || !sub_100060108(*(a1 + 64)) && !sub_100061274(*(a1 + 64)))
    {
      goto LABEL_29;
    }

    context.version = 0;
    memset(&context.retain, 0, 24);
    context.info = a1;
    v11 = SCDynamicStoreCreate(kCFAllocatorDefault, @"WiFiDeviceManager", sub_1000BAD7C, &context);
    *(a1 + 5512) = v11;
    if (v11)
    {
      sub_1000BB710(a1);
      if (!SCDynamicStoreSetDispatchQueue(*(a1 + 5512), *(a1 + 240)))
      {
        v13 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: Error setting dynamic store queue.", "WiFiDeviceManagerScheduleWithQueue"}];
        }

        objc_autoreleasePoolPop(v13);
      }

      v14 = *(a1 + 5512);
      if (SCDynamicStoreSetDisconnectCallBack())
      {
        goto LABEL_29;
      }

      v12 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: Error subscribing to the dynamic store disconnect event.", "WiFiDeviceManagerScheduleWithQueue"}];
      }
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: SCDynamicStoreCreate failed", "WiFiDeviceManagerScheduleWithQueue"}];
      }
    }

    objc_autoreleasePoolPop(v12);
LABEL_29:
    v15 = *(a1 + 5288);
    if (v15)
    {
      dispatch_activate(v15);
    }

    v16 = *(a1 + 5368);
    if (v16)
    {
      dispatch_activate(v16);
    }

    v17 = *(a1 + 5584);
    if (v17)
    {
      dispatch_activate(v17);
    }

    v18 = *(a1 + 8704);
    if (v18)
    {
      dispatch_activate(v18);
    }

    v19 = *(a1 + 8744);
    if (v19)
    {
      dispatch_activate(v19);
    }

    v20 = *(a1 + 1040);
    if (v20)
    {
      dispatch_activate(v20);
    }

    v21 = *(a1 + 9208);
    if (v21)
    {
      dispatch_activate(v21);
    }

    v22 = *(a1 + 1096);
    if (v22)
    {
      dispatch_activate(v22);
    }

    v23 = *(a1 + 5600);
    if (v23)
    {
      dispatch_activate(v23);
    }

    v24 = *(a1 + 6888);
    if (v24)
    {
      dispatch_activate(v24);
    }

    v25 = *(a1 + 6896);
    if (v25)
    {
      dispatch_activate(v25);
    }

    v26 = *(a1 + 7432);
    if (v26)
    {
      dispatch_activate(v26);
    }

    v27 = *(a1 + 7456);
    if (v27)
    {
      dispatch_activate(v27);
    }

    v28 = *(a1 + 7312);
    if (v28)
    {
      dispatch_activate(v28);
    }

    v29 = *(a1 + 7352);
    if (v29)
    {
      dispatch_activate(v29);
    }

    v30 = *(a1 + 5480);
    if (v30)
    {
      v32 = [v30 setupDevice:a1];
      v31 = objc_autoreleasePoolPush();
      if (v32)
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt batteryManager setup", "WiFiDeviceManagerScheduleWithQueue"}];
        }
      }

      else if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt batteryManager setup failed. WiFi will default to full throttle", "WiFiDeviceManagerScheduleWithQueue"}];
      }
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: WiFiBatteryMgmt No Battery Power Manager support from CoreOS. WiFi will default to full throttle.", "WiFiDeviceManagerScheduleWithQueue"}];
      }
    }

    objc_autoreleasePoolPop(v31);
    v33 = sub_10000A9DC(*(a1 + 64));
    if (v33)
    {
      v34 = *(a1 + 4952);
      if (v34)
      {
        v34(a1, *(a1 + 4960));
      }

      v35 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: WiFiCC : Attempted setting available country code", "WiFiDeviceManagerScheduleWithQueue"}];
      }

      objc_autoreleasePoolPop(v35);
    }

    sub_1000BB91C(v33, a1, 0);
    v36 = *(a1 + 64);
    v37 = sub_100006F88(v36);
    v38 = sub_1000078F4(v36, v37);
    if (v38)
    {
      v39 = v38;
      v40 = sub_10000A7CC(v38);
      v41 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: associated to %@, isCarplay %d", "WiFiDeviceManagerScheduleWithQueue", sub_10000A878(v39), v40}];
      }

      objc_autoreleasePoolPop(v41);
      v42 = 1;
      *(a1 + 3467) = 1;
      *(a1 + 5568) = v40;
      [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor updateIsCarPlay:"updateIsCarPlay:", v40 != 0];
      if (!sub_10017764C(v39))
      {
        v42 = [+[WiFiAnalyticsManager sharedWiFiAnalyticsManager](WiFiAnalyticsManager "sharedWiFiAnalyticsManager")];
      }

      sub_1000BBA10(a1, v42);
      sub_1000BBAE0(a1, 1, 1);
      if (!*(a1 + 3468))
      {
        sub_1000BBCEC(a1);
      }

      CFRelease(v39);
    }

    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_10000F40C;
    v62[3] = &unk_1002615C8;
    v62[4] = a1;
    [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor registerStateChangeCallback:"registerStateChangeCallback:withCallbackContext:" withCallbackContext:v62, a1];
    if ([+[WiFiUserInteractionMonitor isWiFiCallInProgress] sharedInstance]
    {
      *(a1 + 3465) = 1;
      v43 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: call active", "WiFiDeviceManagerScheduleWithQueue"}];
      }

      objc_autoreleasePoolPop(v43);
    }

    else
    {
      *(a1 + 3465) = 0;
      v44 = *(a1 + 7480);
      if (v44)
      {
        [v44 setCallState:*(a1 + 3464) != 0];
      }
    }

    sub_100188DD8(a1);
    if (_os_feature_enabled_impl())
    {
      v45 = [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
      *(a1 + 8936) = v45;
      if (v45 && (v46 = objc_alloc_init(NSMutableDictionary), (*(a1 + 9008) = v46) != 0))
      {
        context.version = _NSConcreteStackBlock;
        context.info = 3221225472;
        context.retain = sub_100194CC0;
        context.release = &unk_100261DC8;
        context.copyDescription = a1;
        [*(a1 + 8936) setAllowAutoJoinHandler:&context];
        handler = _NSConcreteStackBlock;
        v78 = 3221225472;
        v79 = sub_10019598C;
        v80 = &unk_100261DE8;
        v81 = a1;
        [*(a1 + 8936) setAllowKnownNetworkHandler:&handler];
        v72 = _NSConcreteStackBlock;
        v73 = 3221225472;
        v74 = sub_100195D04;
        v75 = &unk_100261E08;
        v76 = a1;
        [*(a1 + 8936) setScanForNetworksHandler:&v72];
        v71[0] = _NSConcreteStackBlock;
        v71[1] = 3221225472;
        v71[2] = sub_1001966E8;
        v71[3] = &unk_100261E28;
        v71[4] = a1;
        [*(a1 + 8936) setPerformGASQueryHandler:v71];
        v70[0] = _NSConcreteStackBlock;
        v70[1] = 3221225472;
        v70[2] = sub_1000F71BC;
        v70[3] = &unk_100261E48;
        v70[4] = a1;
        [*(a1 + 8936) setAllowJoinCandidateHandler:v70];
        v69[0] = _NSConcreteStackBlock;
        v69[1] = 3221225472;
        v69[2] = sub_100196B6C;
        v69[3] = &unk_100261E68;
        v69[4] = a1;
        [*(a1 + 8936) setAssociateToNetworkHandler:v69];
        v68[0] = _NSConcreteStackBlock;
        v68[1] = 3221225472;
        v68[2] = sub_10019712C;
        v68[3] = &unk_100261E88;
        v68[4] = a1;
        [*(a1 + 8936) setAllowAutoHotspotHandler:v68];
        v67[0] = _NSConcreteStackBlock;
        v67[1] = 3221225472;
        v67[2] = sub_1001976D4;
        v67[3] = &unk_100261EA8;
        v67[4] = a1;
        [*(a1 + 8936) setAllowHotspotHandler:v67];
        v66[0] = _NSConcreteStackBlock;
        v66[1] = 3221225472;
        v66[2] = sub_100197C58;
        v66[3] = &unk_100261EC8;
        v66[4] = a1;
        [*(a1 + 8936) setBrowseForHotspotsHandler:v66];
        v65[0] = _NSConcreteStackBlock;
        v65[1] = 3221225472;
        v65[2] = sub_100197EA0;
        v65[3] = &unk_100261EE8;
        v65[4] = a1;
        [*(a1 + 8936) setConnectToHotspotHandler:v65];
        v64[0] = _NSConcreteStackBlock;
        v64[1] = 3221225472;
        v64[2] = sub_1001980D0;
        v64[3] = &unk_100261F08;
        v64[4] = a1;
        [*(a1 + 8936) setEventHandler:v64];
        v63[0] = _NSConcreteStackBlock;
        v63[1] = 3221225472;
        v63[2] = sub_10019859C;
        v63[3] = &unk_100261F28;
        v63[4] = a1;
        [*(a1 + 8936) setUpdateKnownNetworkHandler:v63];
        CFRetain(a1);
        [*(a1 + 8936) setTargetQueue:*(a1 + 240)];
        [*(a1 + 8936) setLockdownModeEnabled:byte_100298C79 != 0];
        v47 = "SUCCEEDED";
      }

      else
      {
        v47 = "FAILED";
      }

      v48 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"UAJM setup %s", v47}];
      }

      objc_autoreleasePoolPop(v48);
      sub_1000085EC(a1);
      sub_100019814(a1, 8uLL);
    }

    if (*(a1 + 441))
    {
      sub_100008DCC(a1, 6);
    }

    if (*(a1 + 9128))
    {
      sub_10019B534();
    }

    else
    {
      v49 = socket(32, 3, 1);
      if (v49 < 0)
      {
        sub_10019B5F4();
      }

      else
      {
        v50 = v49;
        v72 = (&_mh_execute_header + 1);
        LODWORD(v73) = 2;
        if (ioctl(v49, 0x800C6502uLL, &v72))
        {
          v51 = objc_autoreleasePoolPush();
          v52 = off_100298C40;
          if (off_100298C40)
          {
            v53 = __error();
            [v52 WFLog:4 message:{"%s: SIOCSKEVFILT failed (%s)", "__WiFiDeviceManagerSetupKernelEventMonitor", strerror(*v53)}];
          }

          objc_autoreleasePoolPop(v51);
        }

        else
        {
          v59 = dispatch_source_create(&_dispatch_source_type_read, v50, 0, *(a1 + 240));
          *(a1 + 9128) = v59;
          if (v59)
          {
            handler = _NSConcreteStackBlock;
            v78 = 3221225472;
            v79 = sub_1000F8194;
            v80 = &unk_100261F70;
            LODWORD(v81) = v50;
            dispatch_source_set_cancel_handler(v59, &handler);
            v60 = *(a1 + 9128);
            context.version = _NSConcreteStackBlock;
            context.info = 3221225472;
            context.retain = sub_1000F819C;
            context.release = &unk_100260C48;
            v83 = v50;
            context.copyDescription = a1;
            dispatch_source_set_event_handler(v60, &context);
            dispatch_activate(*(a1 + 9128));
            v61 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: kernel event monitor started", "__WiFiDeviceManagerSetupKernelEventMonitor"}];
            }

            objc_autoreleasePoolPop(v61);
            sub_1001988A0(a1);
          }

          else
          {
            sub_10019B594();
          }
        }
      }
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, sub_1000BC5A0, @"com.apple.siri.connection.timeout", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v55 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v55, a1, sub_1000BC664, @"com.apple.apsd.connection-failure-notification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v56 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v56, a1, sub_1000BC728, @"com.apple.airplay.connection.stalled", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v57 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v57, a1, sub_1000BC7EC, @"com.apple.airplay.bufferedaudiounderrun", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v58 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v58, a1, sub_1000BC8B0, @"com.apple.airplay.realTimeAudioUnderrun", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    sub_1000BC974(a1);
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: exiting", "WiFiDeviceManagerScheduleWithQueue"}];
    }

    goto LABEL_10;
  }

  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: exiting, Error: no queue", "WiFiDeviceManagerScheduleWithQueue"}];
  }

LABEL_10:
  objc_autoreleasePoolPop(v8);
  objc_autoreleasePoolPop(v6);
}

void sub_1000B9DC8(uint64_t a1, const void *a2, uint64_t a3, const char *a4, uint64_t a5)
{
  if (*(a1 + 256))
  {
    return;
  }

  v10 = *(a1 + 3936);
  if (v10)
  {
    v10(a1, a2, 0, 0, 0, *(a1 + 3944));
  }

  v11 = sub_100007D90(a1, a2, 1);
  v12 = objc_autoreleasePoolPush();
  v13 = off_100298C40;
  if (off_100298C40)
  {
    v14 = sub_100058CA4(a3);
    v15 = "";
    if (a4)
    {
      v15 = a4;
    }

    [v13 WFLog:3 message:{"%s: network=%@ reason=%@(%d) asked to Disassociate by <%s:%d> ", "WiFiDeviceManagerDisassociate", v11, v14, a3, v15, a5}];
  }

  objc_autoreleasePoolPop(v12);
  if (*(a1 + 7480))
  {
    v16 = sub_100006F88(*(a1 + 64));
    v17 = *(a1 + 7480);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000C98C8;
    v27[3] = &unk_100261650;
    v28 = a3;
    v27[4] = v17;
    v27[5] = v16;
    sub_1000C4084(a1, v11, v27);
  }

  if (sub_100009730(v11))
  {
    sub_100062654(*(a1 + 64), v11, 0);
  }

  if ([*(a1 + 6832) isClientAssociated])
  {
    if (a3 != 1027)
    {
      *(a1 + 6624) = 1;
      v18 = *(a1 + 6632);
      if (v18)
      {
        CFRelease(v18);
        *(a1 + 6632) = 0;
      }

      *(a1 + 6632) = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@", @"User Initiated");
      *(a1 + 6568) = sub_100058B68();
      [*(a1 + 6832) stopSubscriberForPHSOverNAN];
      if (!v11)
      {
        return;
      }

LABEL_26:
      CFRelease(v11);
      return;
    }

LABEL_25:
    if (!v11)
    {
      return;
    }

    goto LABEL_26;
  }

  if (a3 == 1011)
  {
    sub_1000BE1E0(a1, v11, 0);
  }

  sub_1000626A4(*(a1 + 64), a2, 0, a3);
  sub_10013E4AC(*(a1 + 120), 0, 1, 0, a3);
  *(a1 + 6680) = -1;
  if (!*(a1 + 3920))
  {
    goto LABEL_25;
  }

  if (*(a1 + 240))
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    if (a2)
    {
      v19 = CFRetain(a2);
      v24[3] = v19;
    }

    CFRetain(a1);
    v20 = *(a1 + 240);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C992C;
    block[3] = &unk_10025EFD8;
    block[4] = &v23;
    block[5] = a1;
    dispatch_async(v20, block);
    _Block_object_dispose(&v23, 8);
    goto LABEL_25;
  }

  v21 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: runloop not yet setup. Invoking didAssociate callback directly.", "WiFiDeviceManagerDisassociate"}];
  }

  objc_autoreleasePoolPop(v21);
  (*(a1 + 3920))(a1, a2, 0, 0, 0, *(a1 + 3928));
  if (v11)
  {
    goto LABEL_26;
  }
}

void sub_1000BA11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000BA134(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v24 = 0;
  v25 = &v24;
  v26 = 0x3052000000;
  v27 = sub_100002B80;
  v28 = sub_100006788;
  v29 = 0;
  if (a1)
  {
    if (sub_10006373C(*(a1 + 64)))
    {
      v3 = sub_10018E710(a1, &off_100282718);
      v4 = v3;
      if (v3)
      {
        if (CFDictionaryContainsKey(v3, @"networks"))
        {
          v5 = [(__CFDictionary *)v4 objectForKeyedSubscript:@"networks"];
          v6 = [(__CFDictionary *)v4 objectForKeyedSubscript:@"reasons"];
          if (v5 && (v7 = v6, v8 = [v5 count], v8 == objc_msgSend(v7, "count")) && objc_msgSend(v7, "count"))
          {
            v9 = +[NSMutableArray array];
            v25[5] = v9;
            v23[0] = _NSConcreteStackBlock;
            v23[1] = 3221225472;
            v23[2] = sub_1000DA2EC;
            v23[3] = &unk_1002617B8;
            v23[4] = &v24;
            [v5 enumerateObjectsUsingBlock:v23];
          }

          else
          {
            v21 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s No networks denylisted in BSS and AutoJoin denylists", "WiFiDeviceManagerProcessBSSAndAutoJoinDenyListUpdate"}];
            }

            objc_autoreleasePoolPop(v21);
          }

          if (*(a1 + 7440) && [*(a1 + 7440) isEqualToSet:{+[NSSet setWithArray:](NSSet, "setWithArray:", v25[5])}])
          {
            v10 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s No change in DenyListed BSSIDSet. Skipping driver update. %@", "WiFiDeviceManagerProcessBSSAndAutoJoinDenyListUpdate", *(a1 + 7440)}];
            }

            objc_autoreleasePoolPop(v10);
          }

          else
          {
            v11 = +[NSMutableDictionary dictionary];
            v12 = v25[5];
            if (v12 && [v12 count])
            {
              [v11 setObject:+[NSNumber numberWithUnsignedChar:](NSNumber forKey:{"numberWithUnsignedChar:", 3), @"IO80211InterfaceBssidBlacklistMode"}];
              [v11 setObject:v25[5] forKey:@"IO80211InterfaceBssidBlacklistBssids"];
              v13 = *(a1 + 7440);
              if (v13)
              {
                CFRelease(v13);
                *(a1 + 7440) = 0;
              }

              *(a1 + 7440) = CFSetCreateCopy(kCFAllocatorDefault, [NSSet setWithArray:v25[5]]);
              if (*(a1 + 7424))
              {
                v14 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: DenyListed BSSIDSet expiry timer already running", "WiFiDeviceManagerProcessBSSAndAutoJoinDenyListUpdate"}];
                }
              }

              else
              {
                *(a1 + 7424) = 1;
                v16 = *(a1 + 7432);
                v17 = dispatch_time(0, 600000000000);
                dispatch_source_set_timer(v16, v17, 0xFFFFFFFFFFFFFFFFLL, 0);
                v14 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: DenyListed BSSIDSet expiry timer set to fire in %f seconds from now", "WiFiDeviceManagerProcessBSSAndAutoJoinDenyListUpdate", 0x4082C00000000000}];
                }
              }
            }

            else
            {
              [v11 setObject:+[NSNumber numberWithUnsignedChar:](NSNumber forKey:{"numberWithUnsignedChar:", 0), @"IO80211InterfaceBssidBlacklistMode"}];
              v15 = *(a1 + 7440);
              if (v15)
              {
                CFRelease(v15);
                *(a1 + 7440) = 0;
              }

              *(a1 + 7424) = 0;
              dispatch_source_set_timer(*(a1 + 7432), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
              v14 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: DenyListed BSSIDSet expiry timer set to fire never", "WiFiDeviceManagerProcessBSSAndAutoJoinDenyListUpdate"}];
              }
            }

            objc_autoreleasePoolPop(v14);
            v18 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: %@", "WiFiDeviceManagerProcessBSSAndAutoJoinDenyListUpdate", v11}];
            }

            objc_autoreleasePoolPop(v18);
            v19 = *(a1 + 64);
            v20 = sub_100006F88(v19);
            sub_100006F94(v19, v20, 372, 0, v11);
          }
        }

        else
        {
          v22 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s networks key missing", "WiFiDeviceManagerProcessBSSAndAutoJoinDenyListUpdate"}];
          }

          objc_autoreleasePoolPop(v22);
        }

        CFRelease(v4);
      }
    }
  }

  _Block_object_dispose(&v24, 8);
  objc_autoreleasePoolPop(v2);
}

void sub_1000BA5FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000BA620(uint64_t a1)
{
  v2 = *(a1 + 240);
  if (v2)
  {
    sub_1000BA690(a1, v2);
  }

  v3 = *(a1 + 5536);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 5536) = 0;
  }

  v4 = *(a1 + 5656);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 5656) = 0;
  }

  sub_10005EA44(*(a1 + 64));
  result = [*(a1 + 5480) resetDevice];
  *(a1 + 5480) = 0;
  *(a1 + 16) = 0;
  return result;
}

void sub_1000BA690(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v57 = "WiFiDeviceManagerUnscheduleFromQueue";
    [off_100298C40 WFLog:4 message:"%s: entering"];
  }

  objc_autoreleasePoolPop(v4);
  if (*(a1 + 16) && *(a1 + 240) == a2)
  {
    sub_1000BC9D0(a1);
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterRemoveObserver(LocalCenter, a1, @"com.apple.wifid.wifiroammanagerroamnotification", 0);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, a1, @"com.apple.siri.connection.timeout", 0);
    v8 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v8, a1, @"com.apple.apsd.connection-failure-notification", 0);
    v9 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v9, a1, @"com.apple.airplay.connection.stalled", 0);
    v10 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v10, a1, @"com.apple.airplay.bufferedaudiounderrun", 0);
    v11 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v11, a1, @"com.apple.airplay.realTimeAudioUnderrun", 0);
    SCDynamicStoreSetDispatchQueue(*(a1 + 5512), 0);
    v12 = *(a1 + 368);
    if (v12)
    {
      dispatch_source_cancel(v12);
    }

    v13 = *(a1 + 320);
    if (v13)
    {
      dispatch_source_cancel(v13);
    }

    v14 = *(a1 + 5288);
    if (v14)
    {
      dispatch_source_cancel(v14);
    }

    v15 = *(a1 + 5368);
    if (v15)
    {
      dispatch_source_cancel(v15);
    }

    v16 = *(a1 + 5584);
    if (v16)
    {
      dispatch_source_cancel(v16);
    }

    v17 = *(a1 + 8704);
    if (v17)
    {
      dispatch_source_cancel(v17);
    }

    v18 = *(a1 + 8744);
    if (v18)
    {
      dispatch_source_cancel(v18);
    }

    v19 = *(a1 + 1040);
    if (v19)
    {
      dispatch_source_cancel(v19);
    }

    v20 = *(a1 + 9208);
    if (v20)
    {
      dispatch_source_cancel(v20);
    }

    v21 = *(a1 + 1096);
    if (v21)
    {
      dispatch_source_cancel(v21);
    }

    v22 = *(a1 + 5600);
    if (v22)
    {
      dispatch_source_cancel(v22);
    }

    v23 = *(a1 + 6888);
    if (v23)
    {
      dispatch_source_cancel(v23);
    }

    v24 = *(a1 + 6896);
    if (v24)
    {
      dispatch_source_cancel(v24);
    }

    v25 = *(a1 + 7432);
    if (v25)
    {
      dispatch_source_cancel(v25);
    }

    v26 = *(a1 + 7456);
    if (v26)
    {
      dispatch_source_cancel(v26);
    }

    v27 = *(a1 + 7312);
    if (v27)
    {
      dispatch_source_cancel(v27);
    }

    v28 = *(a1 + 7352);
    if (v28)
    {
      dispatch_source_cancel(v28);
    }

    v29 = *(a1 + 9080);
    if (v29)
    {
      dispatch_source_cancel(v29);
      dispatch_release(*(a1 + 9080));
      *(a1 + 9080) = 0;
    }

    v30 = *(a1 + 7168);
    if (v30)
    {
      [v30 abort];

      *(a1 + 7168) = 0;
    }

    v31 = *(a1 + 9104);
    if (v31)
    {
      dispatch_source_cancel(v31);
    }

    v32 = *(a1 + 9112);
    if (v32)
    {
      dispatch_source_cancel(v32);
    }

    v33 = *(a1 + 3816);
    if (v33)
    {
      dispatch_source_cancel(v33);
      dispatch_release(*(a1 + 3816));
      *(a1 + 3816) = 0;
    }

    if (sub_1000600FC(*(a1 + 64)))
    {
      sub_10014C1C0(*(a1 + 64), v34, v35, v36, v37, v38, v39, v40, v57, block, v59, v60, v61, v62, v63, v64, v65, v66);
      sub_1000BCA70(a1, v41);
    }

    if (+[WiFiAIRAgent sharedInstance](WiFiAIRAgent, "sharedInstance") && [+[WiFiAIRAgent isInterfaceRankingInProgress] sharedInstance]
    {
      sub_1000158B8(*(a1 + 120), 0, 0);
      [+[WiFiAIRAgent sharedInstance](WiFiAIRAgent terminateRequest];
    }

    [*(a1 + 6720) removeDenyListStateWithDenyListRemoveReason:7];
    v42 = *(a1 + 240);
    sub_10005EAC8(*(a1 + 64));
    sub_10004456C(*(a1 + 120), *(a1 + 240));
    if (_os_feature_enabled_impl())
    {
      [*(a1 + 8936) setScanForNetworksHandler:0];
      [*(a1 + 8936) setPerformGASQueryHandler:0];
      [*(a1 + 8936) setAllowAutoJoinHandler:0];
      [*(a1 + 8936) setAllowKnownNetworkHandler:0];
      [*(a1 + 8936) setAllowJoinCandidateHandler:0];
      [*(a1 + 8936) setJoinCandidateComparator:0];
      [*(a1 + 8936) setAssociateToNetworkHandler:0];
      [*(a1 + 8936) setAllowAutoHotspotHandler:0];
      [*(a1 + 8936) setAllowHotspotHandler:0];
      [*(a1 + 8936) setBrowseForHotspotsHandler:0];
      [*(a1 + 8936) setConnectToHotspotHandler:0];
      [*(a1 + 8936) setUpdateKnownNetworkHandler:0];
      [*(a1 + 8936) setKnownNetworkComparator:0];
      [*(a1 + 8936) setEventHandler:0];
      *(a1 + 8936) = 0;
      v43 = *(a1 + 9040);
      if (v43)
      {
        CWFErrorDescription();
        v44 = CWFErrorWithDescription();
        (*(v43 + 16))(v43, v44, 0, 0);
        _Block_release(*(a1 + 9040));
        *(a1 + 9040) = 0;

        *(a1 + 9048) = 0;
      }

      v45 = *(a1 + 9056);
      if (v45)
      {
        CWFErrorDescription();
        v46 = CWFErrorWithDescription();
        (*(v45 + 16))(v45, v46, 0, 0);
        _Block_release(*(a1 + 9056));
        *(a1 + 9056) = 0;

        *(a1 + 9064) = 0;
      }

      v47 = *(a1 + 8952);
      if (v47)
      {
        CWFErrorDescription();
        v48 = CWFErrorWithDescription();
        (*(v47 + 16))(v47, v48);
        _Block_release(*(a1 + 8952));
        *(a1 + 8952) = 0;
        v49 = *(a1 + 8944);
        if (v49)
        {
          CFRelease(v49);
          *(a1 + 8944) = 0;
        }
      }

      v50 = *(a1 + 8976);
      if (v50)
      {
        CWFErrorDescription();
        v51 = CWFErrorWithDescription();
        (*(v50 + 16))(v50, v51, 0);
        _Block_release(*(a1 + 8976));
        *(a1 + 8976) = 0;
      }

      v52 = *(a1 + 8968);
      if (v52)
      {
        CWFErrorDescription();
        v53 = CWFErrorWithDescription();
        (*(v52 + 16))(v52, v53);
        _Block_release(*(a1 + 8968));
        *(a1 + 8968) = 0;

        *(a1 + 8960) = 0;
      }

      *(a1 + 9008) = 0;
      *(a1 + 9016) = 0;
      CFRelease(a1);
    }

    [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor unregisterStateChangeCallback:"unregisterStateChangeCallback:", a1];
    sub_100189040(a1);
    [objc_msgSend(+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
    [objc_msgSend(+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
    if (*(a1 + 6792))
    {
      CFRelease(a1);
      *(a1 + 6792) = 0;
    }

    if (*(a1 + 248))
    {
      CFRetain(a1);
      v55 = *(a1 + 240);
      v54 = *(a1 + 248);
      block = _NSConcreteStackBlock;
      v59 = 3221225472;
      v60 = sub_1000BCBB8;
      v61 = &unk_10025EAD8;
      v62 = a1;
      dispatch_group_notify(v54, v55, &block);
    }

    else
    {
      *(a1 + 240) = 0;
    }

    v56 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: exiting", "WiFiDeviceManagerUnscheduleFromQueue"}];
    }

    objc_autoreleasePoolPop(v56);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: exiting, Error: not opened or unmatched queues", "WiFiDeviceManagerUnscheduleFromQueue"}];
    }

    objc_autoreleasePoolPop(v5);
  }
}

void sub_1000BAD7C(int a1, CFArrayRef theArray, uint64_t a3)
{
  if (a3)
  {
    if (theArray && CFArrayGetCount(theArray) >= 1)
    {
      v5 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v5);
        if (ValueAtIndex)
        {
          v7 = ValueAtIndex;
          TypeID = CFStringGetTypeID();
          if (CFGetTypeID(v7) == TypeID)
          {
            if (CFEqual(v7, @"com.apple.sharing"))
            {
              break;
            }
          }
        }

        if (++v5 >= CFArrayGetCount(theArray))
        {
          goto LABEL_9;
        }
      }

      if (*(a3 + 208))
      {
        v12 = *(a3 + 3512) == 0;
      }

      else
      {
        v12 = 0;
      }

      if (*(a3 + 3467))
      {
        v26 = !sub_10005A910(*(a3 + 64));
      }

      else
      {
        v26 = 0;
      }

      v27 = SCDynamicStoreKeyCreate(kCFAllocatorDefault, @"%@", @"com.apple.sharing");
      if (v27)
      {
        v28 = v27;
        v29 = SCDynamicStoreCopyValue(*(a3 + 5512), v27);
        if (v29)
        {
          v30 = v29;
          Value = CFDictionaryGetValue(v29, @"AutoUnlockInProgress");
          if (Value && CFEqual(Value, kCFBooleanTrue))
          {
            if (*(a3 + 3336) != 0 || v26)
            {
              v32 = sub_100009664(*(a3 + 64));
              sub_1000C9A74(a3, v32, 1014);
              sub_1000BCD2C(a3);
            }

            v33 = 1;
            v34 = 1;
          }

          else
          {
            v35 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: Auto-unlock not in progress. Resuming auto-join attempt.", "__WiFiDeviceManagerDynamicStoreCallback"}];
            }

            objc_autoreleasePoolPop(v35);
            v33 = 0;
            v34 = 0;
          }

          sub_1000D07C8(a3, v33);
          CFRelease(v30);
        }

        else
        {
          v34 = 0;
        }

        CFRelease(v28);
      }

      else
      {
        v34 = 0;
      }

      sub_10002BFB4(a3, v34 | v12);
      v11 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: awdlMacAddressInUse=%d isDeviceLockedAndSuspendable=%d shouldDisassociate=%d", "__WiFiDeviceManagerDynamicStoreCallback", v34, v12, v26}];
      }

      goto LABEL_16;
    }

LABEL_9:
    v9 = (a3 + 64);
    if (!sub_100060108(*(a3 + 64)))
    {
      v10 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:"__WiFiDeviceManagerDynamicStoreCallback: MIS not supported on device"];
      }

      objc_autoreleasePoolPop(v10);
      v72 = 0;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      valuePtr = 0u;
      DWORD1(valuePtr) = 3;
      sub_1000C67C8(a3, &valuePtr);
      return;
    }

    v13 = *(a3 + 5409);
    v14 = sub_10018A684(a3);
    if (!v14)
    {
      *(a3 + 5410) = 0;
      *(a3 + 5408) = 0;
    }

    if (objc_opt_class())
    {
      dispatch_async(qword_100298C50, &stru_100261B80);
    }

    LOBYTE(valuePtr) = 0;
    *v73 = 0;
    v15 = *(a3 + 5512);
    if (!v15)
    {
      sub_10019B734();
      goto LABEL_65;
    }

    if (!qword_100298688)
    {
      sub_10019B6C8();
      goto LABEL_65;
    }

    v16 = SCDynamicStoreCopyValue(v15, qword_100298688);
    if (!v16)
    {
      sub_10019B65C();
      goto LABEL_65;
    }

    v17 = v16;
    v18 = CFGetTypeID(v16);
    if (v18 == CFDictionaryGetTypeID())
    {
      v19 = CFDictionaryGetValue(v17, @"Hosts");
      if (v19)
      {
        v20 = v19;
        v21 = CFGetTypeID(v19);
        if (v21 == CFDictionaryGetTypeID())
        {
          v22 = CFDictionaryGetValue(v20, @"Type");
          if (v22)
          {
            v23 = v22;
            v24 = CFGetTypeID(v22);
            if (v24 == CFDictionaryGetTypeID())
            {
              v25 = CFDictionaryGetValue(v23, @"AirPort");
              if (v25)
              {
                CFNumberGetValue(v25, kCFNumberSInt8Type, &valuePtr);
              }

              else
              {
                LOBYTE(valuePtr) = *(a3 + 5408);
              }

              v36 = CFDictionaryGetValue(v23, @"Bluetooth");
              if (v36)
              {
                CFNumberGetValue(v36, kCFNumberSInt8Type, &v73[1]);
              }

              else
              {
                v73[1] = *(a3 + 5409);
              }

              v37 = CFDictionaryGetValue(v23, @"USB-Ethernet");
              if (v37)
              {
                CFNumberGetValue(v37, kCFNumberSInt8Type, v73);
              }

              else
              {
                v73[0] = *(a3 + 5410);
              }

              v38 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: client count: WiFi %d, BT %d, USB %d ", "__WiFiDeviceManagerHotspotTransportTypeMetric", valuePtr, v73[1], v73[0]}];
              }

              objc_autoreleasePoolPop(v38);
              v39 = malloc_type_malloc(3uLL, 0x100004033FC2DF1uLL);
              v40 = valuePtr;
              *v39 = valuePtr;
              v41 = v73[1];
              v39[1] = v73[1];
              v42 = v73[0];
              v39[2] = v73[0];
              *(a3 + 5408) = v40;
              *(a3 + 5409) = v41;
              *(a3 + 5410) = v42;
              sub_1001455B4();
              CFRelease(v17);
              free(v39);
LABEL_65:
              if (v13 != *(a3 + 5409))
              {
                *(a3 + 5460) = 1;
              }

              if (v14)
              {
                v43 = sub_100006F88(*(a3 + 64));
                v44 = sub_100007D90(a3, v43, 1);
                if (v44)
                {
                  v45 = v44;
                  if (*(a3 + 5409) != -*(a3 + 5408))
                  {
                    v46 = objc_autoreleasePoolPush();
                    if (off_100298C40)
                    {
                      [off_100298C40 WFLog:3 message:{"MIS client count: wifi=%d bt=%d. Checking whether to disconnect from %@", *(a3 + 5408), *(a3 + 5409), sub_10000A878(v45)}];
                    }

                    objc_autoreleasePoolPop(v46);
                    if (sub_1000C7464(a3, 4))
                    {
                      sub_1000BFD00(a3, v45, 1, 3);
                      v47 = objc_autoreleasePoolPush();
                      if (off_100298C40)
                      {
                        [off_100298C40 WFLog:3 message:{"%s: setting interface rank %s : reason %s ", "__WiFiDeviceManagerDynamicStoreCallback", "kSCNetworkServicePrimaryRankNever", " Concurrency"}];
                      }

                      objc_autoreleasePoolPop(v47);
                    }

                    else
                    {
                      v48 = sub_100006F88(*(a3 + 64));
                      sub_1000B9DC8(a3, v48, 1007, "__WiFiDeviceManagerDynamicStoreCallback", 26030);
                    }
                  }

                  CFRelease(v45);
                }
              }

              v49 = *(a3 + 5268);
              if (v14 == v49)
              {
                sub_10019B7A0();
                if ((v55 & 1) == 0)
                {
LABEL_100:
                  [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
                  sub_1000BD310(a3, 2, "__WiFiDeviceManagerDynamicStoreCallback");
                  return;
                }
              }

              else
              {
                *(a3 + 5268) = v14;
                v50 = *(a3 + 5267);
                v51 = objc_autoreleasePoolPush();
                if (v14 == v50)
                {
                  if (off_100298C40)
                  {
                    if (v14)
                    {
                      v52 = "Enabled";
                    }

                    else
                    {
                      v52 = "Disabled";
                    }

                    v53 = *v9;
                    [off_100298C40 WFLog:3 message:{"MIS is already %s on %@", v52, sub_100060E7C()}];
                  }

                  objc_autoreleasePoolPop(v51);
                  return;
                }

                if (!v14)
                {
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:"MIS Disabled: Attempting to disable MIS Service"];
                  }

                  objc_autoreleasePoolPop(v51);
                  v72 = 0;
                  v70 = 0u;
                  v71 = 0u;
                  v68 = 0u;
                  v69 = 0u;
                  v66 = 0u;
                  v67 = 0u;
                  v64 = 0u;
                  v65 = 0u;
                  v62 = 0u;
                  v63 = 0u;
                  valuePtr = 0u;
                  DWORD2(valuePtr) = 5;
                  LODWORD(v68) = 5;
                  *(&v68 + 1) = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@", @"Dynamic Store");
                  sub_1000C67C8(a3, &valuePtr);
                  *(a3 + 5432) = 0;
                  sub_1000C6C3C(a3);
LABEL_90:
                  v54 = _os_feature_enabled_impl();
                  if (v14 != v49 && v54)
                  {
                    sub_100019814(a3, 0xAuLL);
                    return;
                  }

                  goto LABEL_100;
                }

                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"MIS Enabled: Attempting to enable MIS Service, misIsHidden %d misBcastClients %ld misIsNANPHS %d", *(a3 + 5308), CFSetGetCount(*(a3 + 5320)), *(a3 + 5434)}];
                }

                objc_autoreleasePoolPop(v51);
                v72 = 0;
                v70 = 0u;
                v71 = 0u;
                v68 = 0u;
                v69 = 0u;
                v66 = 0u;
                v67 = 0u;
                v64 = 0u;
                v65 = 0u;
                v62 = 0u;
                v63 = 0u;
                valuePtr = 0u;
                LODWORD(valuePtr) = 4;
                sub_1000C67C8(a3, &valuePtr);
                sub_1000C7790(a3);
                sub_10018A7CC(a3, 1);
              }

              if (*(a3 + 5409) != -*(a3 + 5408))
              {
                return;
              }

              goto LABEL_90;
            }

            v56 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: invalid typeDict", "__WiFiDeviceManagerHotspotTransportTypeMetric"}];
            }
          }

          else
          {
            v56 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: null typeDict", "__WiFiDeviceManagerHotspotTransportTypeMetric"}];
            }
          }
        }

        else
        {
          v56 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: invalid hostsDict", "__WiFiDeviceManagerHotspotTransportTypeMetric"}];
          }
        }
      }

      else
      {
        v56 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: null hostsDict", "__WiFiDeviceManagerHotspotTransportTypeMetric"}];
        }
      }
    }

    else
    {
      v56 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: invalid misDict", "__WiFiDeviceManagerHotspotTransportTypeMetric"}];
      }
    }

    objc_autoreleasePoolPop(v56);
    CFRelease(v17);
    goto LABEL_65;
  }

  v11 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"__WiFiDeviceManagerDynamicStoreCallback: manager reference is NULL", v57, v58, v59, v60}];
  }

LABEL_16:

  objc_autoreleasePoolPop(v11);
}

void sub_1000BB710(SCDynamicStoreRef *a1)
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    v3 = Mutable;
    v4 = SCDynamicStoreKeyCreate(kCFAllocatorDefault, @"com.apple.sharing");
    if (v4)
    {
      v5 = v4;
      CFArrayAppendValue(v3, v4);
      CFRelease(v5);
    }

    if (qword_100298688)
    {
      CFArrayAppendValue(v3, qword_100298688);
      if (CFArrayGetCount(v3) > 0)
      {
        SCDynamicStoreSetNotificationKeys(a1[689], v3, 0);
      }

      CFRelease(v3);
    }

    else
    {
      v7[0] = 0;
      v7[1] = v7;
      v7[2] = 0x2020000000;
      v7[3] = CFRetain(v3);
      CFRetain(a1);
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1000F05FC;
      v6[3] = &unk_10025EFD8;
      v6[4] = v7;
      v6[5] = a1;
      dispatch_async(qword_100298C50, v6);
      CFRelease(v3);
      _Block_object_dispose(v7, 8);
    }
  }
}

void sub_1000BB884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000BB89C(uint64_t a1, SCDynamicStoreRef *a2)
{
  if (a2)
  {

    sub_1000BB710(a2);
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

uint64_t sub_1000BB90C(uint64_t result)
{
  if (result)
  {
    return sub_10000A9DC(*(result + 64));
  }

  return result;
}

void sub_1000BB91C(uint64_t a1, const void *a2, uint64_t a3)
{
  v5 = objc_autoreleasePoolPush();
  if (&_MRMediaRemoteGetNowPlayingApplicationPlaybackState && a2)
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: %@", "__WiFiDeviceManagerNowPlayingStateDidChange", a3}];
    }

    objc_autoreleasePoolPop(v6);
    CFRetain(a2);
    MRMediaRemoteGetNowPlayingApplicationPlaybackState();
  }

  objc_autoreleasePoolPop(v5);
}

uint64_t sub_1000BBA10(uint64_t a1, char a2)
{
  *(a1 + 3468) = a2;
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    if (*(a1 + 3468))
    {
      v4 = "TRUE";
    }

    else
    {
      v4 = "FALSE";
    }

    [off_100298C40 WFLog:3 message:{"%s: isOnMovingNetwork: %s", "__WiFiDeviceManagerMovingNetworkNotifyFamily", v4}];
  }

  objc_autoreleasePoolPop(v3);
  v5 = *(a1 + 64);
  v6 = sub_100006F88(v5);
  if (*(a1 + 3468))
  {
    v7 = &kCFBooleanTrue;
  }

  else
  {
    v7 = &kCFBooleanFalse;
  }

  v8 = *v7;

  return sub_100006F94(v5, v6, 471, 0, v8);
}

char *sub_1000BBAE0(char *result, char a2, int a3)
{
  v3 = result + 4096;
  v4 = result[7153];
  if (a3)
  {
    v5 = v4 | a2;
  }

  else
  {
    v5 = v4 & ~a2;
  }

  if (v5 == v4)
  {
    return result;
  }

  v8 = result;
  v9 = objc_autoreleasePoolPush();
  v10 = off_100298C40;
  if (off_100298C40)
  {
    v11 = sub_100058F60(v3[3057]);
    [v10 WFLog:3 message:{"%s: current state %@(%d) new state %@(%d)", "WiFiDeviceManagerUpdateOpMode", v11, v3[3057], sub_100058F60(v5), v5}];
  }

  objc_autoreleasePoolPop(v9);
  v3[3057] = v5;
  v12 = *(v8 + 4696);
  if (v12)
  {
    v12(v8, v3[3056], v5, *(v8 + 4704));
  }

  if ((a2 & 4) != 0)
  {
    v13 = sub_100006F88(*(v8 + 64));
    v14 = sub_100007D90(v8, v13, 1);
    v15 = v14;
    if (v3[3056] && (v5 & 1) != 0 && v14)
    {
      if (a3)
      {
        v16 = 3;
      }

      else
      {
        v16 = 0;
      }

      sub_1000BFD00(v8, v14, 1, v16);
      v17 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v18 = "kSCNetworkServicePrimaryRankNever";
        if (!a3)
        {
          v18 = "kSCNetworkServicePrimaryRankDefault";
        }

        [off_100298C40 WFLog:3 message:{"%s: setting interface rank %s : reason %s ", "WiFiDeviceManagerUpdateOpMode", v18, " Concurrency"}];
      }

      objc_autoreleasePoolPop(v17);
    }

    else if (!v14)
    {
LABEL_23:
      sub_1000D7150(v8);
      goto LABEL_24;
    }

    CFRelease(v15);
    goto LABEL_23;
  }

LABEL_24:
  if ((a2 & 2) != 0 && (v3[3057] & 8) != 0)
  {
    v20 = 0u;
    v21 = 0;
    memset(v19, 0, sizeof(v19));
    LOBYTE(v20) = 1;
    sub_1000C67C8(v8, v19);
  }

  result = [*(v8 + 6832) isClientAssociated];
  if (result)
  {
    v3[2545] = 1;
  }

  return result;
}

void sub_1000BBCEC(unsigned __int8 *a1)
{
  if (&_MRMediaRemoteGetNowPlayingApplicationPlaybackState)
  {
    v2 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s, isCarplay %d, user forced %d", "__WiFiDeviceManagerAddMediaPlaybackStateObserver", a1[5568], a1[3469]}];
    }

    objc_autoreleasePoolPop(v2);
    if (!a1[5568] && !a1[3469])
    {
      MRMediaRemoteRegisterForNowPlayingNotifications();
      LocalCenter = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterAddObserver(LocalCenter, a1, sub_1000BB91C, kMRMediaRemoteNowPlayingApplicationIsPlayingDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

      sub_1000BB91C(v4, a1, @"Reading Initial State");
    }
  }
}

void sub_1000BBDEC(uint64_t a1, int a2)
{
  v4 = objc_autoreleasePoolPush();
  if (_os_feature_enabled_impl())
  {
    sub_10019B98C();
    goto LABEL_87;
  }

  if (a2 == 6)
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s trigger is kWiFiMetricsNetworkTransitionNetworkOfInterest, reset last transtion scan time + time since linkup so we attempt transtion regardles of last attempt time", "__WiFiDeviceManagerAttemptNetworkTransition"}];
    }

    objc_autoreleasePoolPop(v5);
    *(a1 + 3472) = 0;
    *(a1 + 3456) = 0;
    *(a1 + 3448) = 0;
    if (!*(a1 + 6688))
    {
      goto LABEL_12;
    }

LABEL_8:
    v6 = (a1 + 6688);
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s Not attempting transition when colocatedScopeTransition network  %@ is set.. Bailing", "__WiFiDeviceManagerAttemptNetworkTransition", sub_10000A878(*v6)}];
    }

    objc_autoreleasePoolPop(v7);
    goto LABEL_87;
  }

  if (*(a1 + 6688))
  {
    goto LABEL_8;
  }

  if (!sub_1000F37B8(a1))
  {
    sub_10019B848();
    goto LABEL_87;
  }

LABEL_12:
  v8 = sub_10001A904(a1);
  if (!v8)
  {
    v11 = (a1 + 3424);
    if (*(a1 + 3440))
    {
      goto LABEL_62;
    }

    goto LABEL_55;
  }

  [WiFiLocationManager logLocation:v8 addPrefixString:@"__WiFiDeviceManagerAttemptNetworkTransition"];
  v9 = [WiFiLocationManager isLocationValid:v8 uptoSeconds:1 isHighAccuracy:900.0];
  v10 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: isLocValid %d", "__WiFiDeviceManagerAttemptNetworkTransition", v9}];
  }

  objc_autoreleasePoolPop(v10);
  v11 = (a1 + 3424);
  v12 = *(a1 + 3440);
  if (!v12)
  {
    if (v9)
    {
      v14 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: did not try location based logic last time we auto joined", "__WiFiDeviceManagerAttemptNetworkTransition"}];
      }

      goto LABEL_25;
    }

LABEL_55:
    v25 = *(a1 + 6704);
    v26 = objc_autoreleasePoolPush();
    if (!v25)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: did not try location based logic last time and don't have valid location to try now", "__WiFiDeviceManagerAttemptNetworkTransition"}];
      }

      objc_autoreleasePoolPop(v26);
      if (v8)
      {
        CFRelease(v8);
      }

      goto LABEL_87;
    }

    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: did not try location based logic last time we auto joined and don't have a valid location. Will attempt transition anyways as preferAutoJoinHomeNetwork", "__WiFiDeviceManagerAttemptNetworkTransition"}];
    }

    objc_autoreleasePoolPop(v26);
    if (!v8)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  if (v9)
  {
    [v12 distanceFromLocation:v8];
    if (v13 > 30.0)
    {
      v14 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: moved significantly since the last location", "__WiFiDeviceManagerAttemptNetworkTransition"}];
      }

LABEL_25:
      objc_autoreleasePoolPop(v14);
LABEL_26:
      v15 = [+[WiFiAnalyticsManager sharedWiFiAnalyticsManager](WiFiAnalyticsManager "sharedWiFiAnalyticsManager")];
      v16 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: score sorted networks %@", "__WiFiDeviceManagerAttemptNetworkTransition", v15}];
      }

      objc_autoreleasePoolPop(v16);
      v17 = *(a1 + 3440);
      if (v17)
      {
        CFRelease(v17);
      }

      *(a1 + 3440) = v8;
      CFRetain(v8);
      if (v15 && CFArrayGetCount(v15) && CFArrayGetCount(v15) >= 1)
      {
        for (i = 0; CFArrayGetCount(v15) > i; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v15, i);
          if (ValueAtIndex)
          {
            v20 = ValueAtIndex;
            if (CFArrayGetCount(*(a1 + 3576)) >= 1)
            {
              v21 = 0;
              do
              {
                v22 = CFArrayGetValueAtIndex(*(a1 + 3576), v21);
                if (CFEqual(v20, v22))
                {
                  goto LABEL_48;
                }
              }

              while (CFArrayGetCount(*(a1 + 3576)) > ++v21);
            }

            if (CFArrayGetCount(*(a1 + 3584)) >= 1)
            {
              v23 = 0;
              do
              {
                v22 = CFArrayGetValueAtIndex(*(a1 + 3584), v23);
                if (CFEqual(v20, v22))
                {
                  goto LABEL_48;
                }
              }

              while (CFArrayGetCount(*(a1 + 3584)) > ++v23);
            }

            if (CFArrayGetCount(*(a1 + 3688)) >= 1)
            {
              v24 = 0;
              while (1)
              {
                v22 = CFArrayGetValueAtIndex(*(a1 + 3688), v24);
                if (CFEqual(v20, v22))
                {
                  break;
                }

                if (CFArrayGetCount(*(a1 + 3688)) <= ++v24)
                {
                  goto LABEL_49;
                }
              }

LABEL_48:
              sub_10000C5C0(v20, v22);
            }
          }

LABEL_49:
          ;
        }
      }

      if (*v11)
      {
        CFRelease(*v11);
        *v11 = 0;
      }

      if (v15)
      {
        *v11 = v15;
        CFRetain(v15);
        CFRelease(v15);
      }

      goto LABEL_61;
    }

    if (*(a1 + 3448) == -1)
    {
      v37 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: switched network/roamed since the last attempt", "__WiFiDeviceManagerAttemptNetworkTransition"}];
      }

      objc_autoreleasePoolPop(v37);
      *(a1 + 3448) = 0;
      goto LABEL_26;
    }
  }

LABEL_61:
  CFRelease(v8);
LABEL_62:
  if (*v11 && CFArrayGetCount(*v11))
  {
    if (!*(a1 + 6704))
    {
      v27 = CFArrayGetValueAtIndex(*v11, 0);
      if (v27)
      {
        v28 = v27;
        if (sub_10017764C(v27) || [+[WiFiAnalyticsManager sharedWiFiAnalyticsManager](WiFiAnalyticsManager "sharedWiFiAnalyticsManager")])
        {
          v38 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: top network <%@> is a moving network", "__WiFiDeviceManagerAttemptNetworkTransition", sub_10000A878(v28)}];
          }
        }

        else if (sub_10001CF90(v28) && sub_1000E0A04(a1, v28, 0))
        {
          v29 = sub_100177510(*(a1 + 3624), v28);
          if (v29 != -1)
          {
            v30 = CFArrayGetValueAtIndex(*(a1 + 3624), v29);
            goto LABEL_85;
          }

          v38 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: top network <%@> does not exist in known networks list, onto the next one ", "__WiFiDeviceManagerAttemptNetworkTransition", sub_10000A878(v28)}];
          }
        }

        else
        {
          v38 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: top network %@ is not eligible for aj ", "__WiFiDeviceManagerAttemptNetworkTransition", sub_10000A878(v28)}];
          }
        }

        objc_autoreleasePoolPop(v38);
      }

LABEL_106:
      sub_10019B8B4();
      goto LABEL_87;
    }

LABEL_73:
    v31 = *(a1 + 3576);
    if (v31)
    {
      Count = CFArrayGetCount(v31);
      Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      if (Count)
      {
        v34 = *(a1 + 3576);
        v41.length = CFArrayGetCount(v34);
        v41.location = 0;
        CFArrayAppendArray(Mutable, v34, v41);
      }
    }

    else
    {
      Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    }

    if (*v11 && CFArrayGetCount(*v11))
    {
      v35 = *v11;
      v42.length = CFArrayGetCount(*v11);
      v42.location = 0;
      CFArrayAppendArray(Mutable, v35, v42);
    }

    if (CFArrayGetCount(Mutable))
    {
      v40.length = CFArrayGetCount(Mutable);
      v40.location = 0;
      CFArraySortValues(Mutable, v40, sub_1000A09FC, 0);
      v36 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: NOI home-state sorted networks %@", "__WiFiDeviceManagerAttemptNetworkTransition", Mutable}];
      }

      objc_autoreleasePoolPop(v36);
      v30 = CFArrayGetValueAtIndex(Mutable, 0);
      if (Mutable)
      {
        goto LABEL_84;
      }
    }

    else
    {
      v30 = 0;
      if (Mutable)
      {
LABEL_84:
        CFRelease(Mutable);
      }
    }

LABEL_85:
    if (v30)
    {
      sub_1000F3A78(a1, v30);
      goto LABEL_87;
    }

    goto LABEL_106;
  }

  if (*(a1 + 6704))
  {
    goto LABEL_73;
  }

  sub_10019B920();
LABEL_87:

  objc_autoreleasePoolPop(v4);
}

void sub_1000BC57C(uint64_t a1, uint64_t a2, CFTypeRef cf)
{
  if (a1 && *(a1 + 441))
  {
    if (a2 == 1)
    {
      sub_100008CA8(a1, cf);
    }

    else
    {
      sub_100008DCC(a1, a2);
    }
  }
}

void sub_1000BC5A0(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Fault Notification com.apple.siri.connection.timeout", "__WiFiDeviceManagerHandleSiriTimedOutNotification"}];
  }

  objc_autoreleasePoolPop(v3);
  if (a2)
  {
    v4 = *(a2 + 240);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F8658;
    block[3] = &unk_10025EAD8;
    block[4] = a2;
    dispatch_async(v4, block);
  }

  else
  {
    sub_10019B9F8();
  }
}

void sub_1000BC664(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Fault Notification com.apple.apsd.connection-failure-notification", "__WiFiDeviceManagerHandleApsdTimedOutNotification"}];
  }

  objc_autoreleasePoolPop(v3);
  if (a2)
  {
    v4 = *(a2 + 240);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F86C8;
    block[3] = &unk_10025EAD8;
    block[4] = a2;
    dispatch_async(v4, block);
  }

  else
  {
    sub_10019BA64();
  }
}

void sub_1000BC728(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Fault Notification com.apple.airplay.connection.stalled", "__WiFiDeviceManagerHandleAirplayConnectionStallNotification"}];
  }

  objc_autoreleasePoolPop(v3);
  if (a2)
  {
    v4 = *(a2 + 240);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F8738;
    block[3] = &unk_10025EAD8;
    block[4] = a2;
    dispatch_async(v4, block);
  }

  else
  {
    sub_10019BAD0();
  }
}

void sub_1000BC7EC(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Fault Notification com.apple.airplay.bufferedaudiounderrun", "__WiFiDeviceManagerHandleAirplayBufferedAudioUnderrunNotification"}];
  }

  objc_autoreleasePoolPop(v3);
  if (a2)
  {
    v4 = *(a2 + 240);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F87A8;
    block[3] = &unk_10025EAD8;
    block[4] = a2;
    dispatch_async(v4, block);
  }

  else
  {
    sub_10019BB3C();
  }
}

void sub_1000BC8B0(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Fault Notification com.apple.airplay.realTimeAudioUnderrun", "__WiFiDeviceManagerHandleAirplayRealtimeAudioUnderrunNotification"}];
  }

  objc_autoreleasePoolPop(v3);
  if (a2)
  {
    v4 = *(a2 + 240);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F8824;
    block[3] = &unk_10025EAD8;
    block[4] = a2;
    dispatch_async(v4, block);
  }

  else
  {
    sub_10019BBA8();
  }
}

void sub_1000BC974(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_autoreleasePoolPush();
  if (a1)
  {
    sub_10019BC14();
  }

  else
  {
    sub_10019BCFC(v3);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000BC9D0(const void *a1)
{
  if (&_MRMediaRemoteGetNowPlayingApplicationPlaybackState)
  {
    v2 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s", "__WiFiDeviceManagerRemoveMediaPlaybackStateObserver"}];
    }

    objc_autoreleasePoolPop(v2);
    MRMediaRemoteUnregisterForNowPlayingNotifications();
    LocalCenter = CFNotificationCenterGetLocalCenter();
    v4 = kMRMediaRemoteNowPlayingApplicationIsPlayingDidChangeNotification;

    CFNotificationCenterRemoveObserver(LocalCenter, a1, v4, 0);
  }
}

void sub_1000BCBB8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v1[30] = 0;
  CFRelease(v1);
}

void sub_1000BCBC4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = objc_autoreleasePoolPush();
    if (a2)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: %@", "WiFiDeviceManagerSetIDSSyncEngineRef", sub_100009664(*(a1 + 64))}];
      }

      objc_autoreleasePoolPop(v4);
      *(a1 + 6648) = a2;
      return;
    }

    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null ids sync ref", "WiFiDeviceManagerSetIDSSyncEngineRef"}];
    }
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null manager", "WiFiDeviceManagerSetIDSSyncEngineRef"}];
    }
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_1000BCCD4(uint64_t result)
{
  if (*(result + 3361))
  {
    v1 = result;
    *(result + 3361) = 0;
    result = sub_1000BCD2C();
    if (*(v1 + 5480))
    {

      return sub_1000BD184(v1);
    }
  }

  return result;
}

void sub_1000BCD2C(uint64_t a1)
{
  if (!*(a1 + 3336))
  {
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      return;
    }

    goto LABEL_23;
  }

  v2 = *(a1 + 1168);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 1168) = 0;
  }

  sub_1000BDEA8(a1, 0);
  sub_10006265C(*(a1 + 64));
  v3 = *(a1 + 3336);
  if ((v3 - 16) <= 4)
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: in %@ state, aborting", "WiFiDeviceManagerAbort", sub_1000AA864(*(a1 + 3336))}];
    }

    objc_autoreleasePoolPop(v4);
    if (*(a1 + 3336) == 17 && _os_feature_enabled_impl())
    {
      [*(a1 + 6776) dismissJoinAlerts];
    }

    sub_1000B6E20(a1, 0);
    *(a1 + 7088) = 0;
    v3 = *(a1 + 3336);
  }

  if ((v3 - 12) >= 0xFFFFFFF6)
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"Scanning in progress, next system wake should not defer AJ scan"}];
    }

    objc_autoreleasePoolPop(v5);
    *(a1 + 7416) = 0;
    v3 = *(a1 + 3336);
  }

  if (v3 == 1)
  {
    dispatch_source_set_timer(*(a1 + 320), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  v7 = (a1 + 224);
  v6 = *(a1 + 224);
  *(a1 + 3336) = 0;
  if (!v6)
  {
LABEL_23:
    if (_os_feature_enabled_impl())
    {
      v8 = *(a1 + 8936);
      v21 = NSLocalizedDescriptionKey;
      v22 = @"WiFiDeviceManagerAbort()";
      [v8 cancelAutoJoinWithUUID:0 error:+[NSError errorWithDomain:code:userInfo:](NSError reply:{"errorWithDomain:code:userInfo:", NSPOSIXErrorDomain, 53, +[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v22, &v21, 1)), 0}];
      v9 = *(a1 + 9040);
      if (v9)
      {
        CWFErrorDescription();
        v10 = CWFErrorWithDescription();
        (*(v9 + 16))(v9, v10, 0, 0);
        _Block_release(*(a1 + 9040));
        *(a1 + 9040) = 0;

        *(a1 + 9048) = 0;
      }

      v11 = *(a1 + 9056);
      if (v11)
      {
        CWFErrorDescription();
        v12 = CWFErrorWithDescription();
        (*(v11 + 16))(v11, v12, 0, 0);
        _Block_release(*(a1 + 9056));
        *(a1 + 9056) = 0;

        *(a1 + 9064) = 0;
      }

      v13 = *(a1 + 8952);
      if (v13)
      {
        CWFErrorDescription();
        v14 = CWFErrorWithDescription();
        (*(v13 + 16))(v13, v14);
        _Block_release(*(a1 + 8952));
        *(a1 + 8952) = 0;
        v15 = *(a1 + 8944);
        if (v15)
        {
          CFRelease(v15);
          *(a1 + 8944) = 0;
        }
      }

      v16 = *(a1 + 8976);
      if (v16)
      {
        CWFErrorDescription();
        v17 = CWFErrorWithDescription();
        (*(v16 + 16))(v16, v17, 0);
        _Block_release(*(a1 + 8976));
        *(a1 + 8976) = 0;
      }

      v18 = *(a1 + 8968);
      if (v18)
      {
        CWFErrorDescription();
        v19 = CWFErrorWithDescription();
        (*(v18 + 16))(v18, v19);
        _Block_release(*(a1 + 8968));
        *(a1 + 8968) = 0;

        *(a1 + 8960) = 0;
      }
    }

    goto LABEL_35;
  }

  if (sub_1000A4FF8(v6))
  {
    if (sub_1000A5000(*v7) != 2)
    {
      if (*v7)
      {
        CFRelease(*v7);
        *v7 = 0;
      }

      goto LABEL_23;
    }

    sub_10019BD64();
  }

  else
  {
    sub_10019BDF4((a1 + 224));
  }

LABEL_35:
  sub_1000ED650(a1, @"autoJoinAborted", 0, 0);
  v20 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"Aborted current auto-join session."];
  }

  objc_autoreleasePoolPop(v20);
}

void sub_1000BD310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000BD374(a1, a2, a3);
  sub_1000BD584(a1, 1, a3);
  if (!*(a1 + 3336))
  {

    sub_1000BDEA8(a1, 0);
  }
}

void sub_1000BD374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s called by %s", "__WiFiDeviceManagerResetRetryIntervals", a3}];
  }

  objc_autoreleasePoolPop(v6);
  if (a1)
  {
    *(a1 + 5704) = a2;
    if (a2 == 2)
    {
      *(a1 + 3352) = 0;
    }

    valuePtr = NAN;
    v7 = *(a1 + 328);
    if (v7 && (Count = CFArrayGetCount(v7), (v9 = *(a1 + 336)) != 0) && a2 != 2 && (v10 = *(a1 + 344), v10 != 0.0) && (v11 = Count) != 0)
    {
      if (v9 >= Count)
      {
        v9 = Count - 1;
        *(a1 + 336) = Count - 1;
      }

      v12 = 1;
      if (a2 == 1 && v10 >= 5.0)
      {
        if (*(a1 + 400))
        {
          v12 = 2;
        }

        else
        {
          *(a1 + 344) = 0x4014000000000000;
        }
      }

      if (v9 >= 1)
      {
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 328), v9);
          if (ValueAtIndex)
          {
            CFNumberGetValue(ValueAtIndex, kCFNumberDoubleType, &valuePtr);
            if (valuePtr > 0.0 && valuePtr <= *(a1 + 344))
            {
              break;
            }
          }

          v14 = *(a1 + 336);
          v9 = v14 - 1;
          *(a1 + 336) = v14 - 1;
        }

        while (v14 > 1);
      }

      if (*(a1 + 356) < v12)
      {
        *(a1 + 356) = v12;
      }

      if (*(a1 + 6884) && !sub_100064A78(*(a1 + 64)) && *(a1 + 6952) == 0.0)
      {
        *(a1 + 6952) = *(a1 + 6944);
      }

      v15 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: resetType=%d, retryIndex=%ld, quickRetry=%d, lastInterval=%f, intervals=(%ld) autoHSInterval=(%f)", "__WiFiDeviceManagerResetRetryIntervals", a2, *(a1 + 336), *(a1 + 356), *(a1 + 344), v11, *(a1 + 6952)}];
      }

      objc_autoreleasePoolPop(v15);
    }

    else
    {
      *(a1 + 356) = 0;
      *(a1 + 336) = 0;
      *(a1 + 344) = 0;
    }

    v16 = *(a1 + 3336);
    if (v16 == 1)
    {
      dispatch_source_set_timer(*(a1 + 320), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      v16 = 0;
    }

    *(a1 + 3336) = v16;
  }
}

void sub_1000BD584(uint64_t a1, int a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s called by %s", "__WiFiDeviceManagerAutoAssociate", a3}];
  }

  objc_autoreleasePoolPop(v6);
  if (_os_feature_enabled_impl())
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s not allowed with Unified Auto-Join", "__WiFiDeviceManagerAutoAssociate"}];
    }

    v8 = v7;
LABEL_7:

    objc_autoreleasePoolPop(v8);
    return;
  }

  CFArrayRemoveAllValues(*(a1 + 1160));
  sub_1000ED650(a1, @"kWiFiAutoJoinStatusBegan", 0, 0);
  if (CFAbsoluteTimeGetCurrent() > *(a1 + 6904))
  {
    context = dispatch_get_context(*(a1 + 6896));
    sub_1000B6814(context);
  }

  if (!*(a1 + 3361))
  {
    v15 = objc_autoreleasePoolPush();
    v16 = off_100298C40;
    if (off_100298C40)
    {
      v17 = "Auto association attempt canceled because auto join is disabled.";
LABEL_26:
      [v16 WFLog:3 message:v17];
    }

LABEL_27:
    v18 = v15;
LABEL_28:
    objc_autoreleasePoolPop(v18);
    v19 = off_10025FBF8;
LABEL_35:
    v21 = *v19;

    sub_1000ED650(a1, v21, 0, 0);
    return;
  }

  if (!*(a1 + 6344))
  {
    v10 = *(a1 + 5576);
    v11 = objc_autoreleasePoolPush();
    if (!v10)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"Auto association attempt canceled because user auto join is disabled."];
      }

      v18 = v11;
      goto LABEL_28;
    }

    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"User auto join preference bypassed because device is in priority-link setup phase/carplay"];
    }

    objc_autoreleasePoolPop(v11);
  }

  if (*(a1 + 20) != 1)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = off_100298C40;
    if (off_100298C40)
    {
      v17 = "Auto association attempt canceled because device is not powered.";
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  if (*(a1 + 256))
  {
    v12 = objc_autoreleasePoolPush();
    v13 = off_100298C40;
    if (off_100298C40)
    {
      v14 = "Auto association attempt canceled because WiFi tethering is enabled.";
LABEL_32:
      [v13 WFLog:3 message:{v14, v41, v42, v43, v44}];
      goto LABEL_33;
    }

    goto LABEL_33;
  }

  if (*(a1 + 257))
  {
    v12 = objc_autoreleasePoolPush();
    v13 = off_100298C40;
    if (off_100298C40)
    {
      v14 = "Auto association attempt canceled because WiFi Direct Mode is enabled.";
      goto LABEL_32;
    }

LABEL_33:
    v20 = v12;
LABEL_34:
    objc_autoreleasePoolPop(v20);
    v19 = off_10025FC00;
    goto LABEL_35;
  }

  if (*(a1 + 3336))
  {
    v22 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"Auto association attempt canceled because auto join state is %@.", sub_1000AA864(*(a1 + 3336))}];
    }

    objc_autoreleasePoolPop(v22);
    if (*(a1 + 3336) == 2)
    {
      v23 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"Setting forced Allband scan flag"];
      }

      objc_autoreleasePoolPop(v23);
      *(a1 + 3360) = 1;
    }

    return;
  }

  if ((*(a1 + 5267) || sub_100025A5C(a1) || *(a1 + 5392) || *(a1 + 5409) != -*(a1 + 5408)) && (!*(a1 + 7152) || !sub_1000C7464(a1, 1)))
  {
    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"Auto association attempt canceled because MIS is enabled. MIS client count: wifi=%d bt=%d misBlockScan=%d MIS discovery state = %d", *(a1 + 5408), *(a1 + 5409), *(a1 + 5376), *(a1 + 5269)}];
    }

    goto LABEL_33;
  }

  if ((*(a1 + 5468) == 102 && (*(a1 + 5464) & 1) != 0 || *(a1 + 50)) && *(a1 + 5592) != 1 && !*(a1 + 37))
  {
    v12 = objc_autoreleasePoolPush();
    v13 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_33;
    }

    v14 = "Auto association attempt canceled because BT SCO is enabled";
    goto LABEL_32;
  }

  if (sub_100025AB8(a1) && sub_1000C905C(a1))
  {
    v12 = objc_autoreleasePoolPush();
    v13 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_33;
    }

    v14 = "Auto association attempt canceled because hosted AWDL session is active";
    goto LABEL_32;
  }

  if (sub_100025988(a1))
  {
    v12 = objc_autoreleasePoolPush();
    v13 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_33;
    }

    v14 = "Auto-join deferral is active, will not continue auto-join";
    goto LABEL_32;
  }

  if (*(a1 + 6976) && *(a1 + 5576))
  {
    v12 = objc_autoreleasePoolPush();
    v13 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_33;
    }

    v14 = "Associated in Auto Hotspot Mode and waiting for IP";
    goto LABEL_32;
  }

  v24 = *(a1 + 64);
  v25 = sub_100006F88(v24);
  v26 = sub_1000078F4(v24, v25);
  if (v26)
  {
    v27 = v26;
    if (!*(a1 + 6976) || *(a1 + 176) == 1 && !*(a1 + 7056))
    {
      v31 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Already connected to %@.", "__WiFiDeviceManagerAutoAssociate", sub_10000A878(v27)}];
      }

      objc_autoreleasePoolPop(v31);
      sub_1000ED650(a1, @"autoJoinAlreadyAssoicated", v27, 0);

      CFRelease(v27);
      return;
    }

    CFRelease(v26);
  }

  v28 = *(a1 + 5488);
  v29 = objc_autoreleasePoolPush();
  if (!v28)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"Auto association attempt canceled because thermal index (%d) is below disabled threshold (%d).", *(a1 + 5488), 0}];
    }

    v20 = v29;
    goto LABEL_34;
  }

  v30 = *(a1 + 5480);
  if (v30 && ([v30 isPowerResourceAvailable:0] & 1) == 0)
  {
    v36 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:" WiFiBatteryMgmt : Auto association attempt canceled because Battery resource is not available."];
    }

    objc_autoreleasePoolPop(v36);
    if (![objc_msgSend(*(a1 + 5480) "pendingRequests")])
    {
      sub_1000ED650(a1, @"autoJoinNotPermitted", 0, 0);
    }

    v8 = v29;
    goto LABEL_7;
  }

  objc_autoreleasePoolPop(v29);
  if (!*(a1 + 3536) && *(a1 + 3540) == -528336895)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_33;
    }

    v14 = "Auto association attempt canceled because of Driver Watchdog";
    goto LABEL_32;
  }

  v32 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v33 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v46 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v32);
  v34 = objc_autoreleasePoolPush();
  [*(a1 + 6720) removeExpiredDenyListedState:3];
  objc_autoreleasePoolPop(v34);
  sub_1000C0414(a1);
  if (*(a1 + 24))
  {
    v35 = sub_10005B850(*(a1 + 64));
    if (a2)
    {
      if (v35)
      {
        *(a1 + 28) = 0;
      }
    }
  }

  if (*(a1 + 104) || !sub_10019004C(a1))
  {
    [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
    sub_1000B6EBC(a1);
  }

  else
  {
    v37 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v38 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v39 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
        *buf = 136446210;
        v46 = v39;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v37);
    *(a1 + 3336) = sub_10018DA2C(a1);
    v40 = *(a1 + 356);
    if (v40)
    {
      *(a1 + 356) = v40 - 1;
    }
  }
}

void sub_1000BDEA8(uint64_t a1, unsigned int a2)
{
  if (byte_100298C79)
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Lockdown Mode is enabled, ignoring SetATJOneShot %ld", "__WiFiDeviceManagerSetATJOneShot", a2}];
    }

    objc_autoreleasePoolPop(v3);
  }

  else if (*(a1 + 104) != a2)
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v6 = "Enabling";
      if (!a2)
      {
        v6 = "Disabling";
      }

      [off_100298C40 WFLog:3 message:{"%s one-shot ATJ", v6}];
    }

    objc_autoreleasePoolPop(v5);
    *(a1 + 104) = a2;
    if (a2)
    {
      *(a1 + 192) = 1;
      if (_os_feature_enabled_impl())
      {

        sub_100019814(a1, 15);
      }

      else
      {
        [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];

        sub_1000BD310(a1, 2, "__WiFiDeviceManagerSetATJOneShot");
      }
    }
  }
}

uint64_t sub_1000BE054(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = sub_100006F88(v1);

  return sub_100006F94(v1, v2, 512, 0, kCFBooleanTrue);
}

void sub_1000BE0A8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: reseting userCancelled networks", "__WiFiDeviceManagerResetUserCancelledNetworks"}];
    }

    objc_autoreleasePoolPop(v2);
    v3 = *(a1 + 3552);

    CFSetRemoveAllValues(v3);
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: manager is nil", "__WiFiDeviceManagerResetUserCancelledNetworks"}];
    }

    objc_autoreleasePoolPop(v2);
  }
}

uint64_t sub_1000BE168(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 3936) = a2;
  *(result + 3944) = a3;
  return result;
}

uint64_t sub_1000BE174(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4760) = a2;
  *(result + 4768) = a3;
  return result;
}

uint64_t sub_1000BE180(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 3952) = a2;
  *(result + 3960) = a3;
  return result;
}

uint64_t sub_1000BE18C(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 3968) = a2;
  *(result + 3976) = a3;
  return result;
}

uint64_t sub_1000BE198(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 3984) = a2;
  *(result + 3992) = a3;
  return result;
}

uint64_t sub_1000BE1A4(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4000) = a2;
  *(result + 4016) = a3;
  return result;
}

uint64_t sub_1000BE1B0(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4040) = a2;
  *(result + 4048) = a3;
  return result;
}

uint64_t sub_1000BE1BC(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4056) = a2;
  *(result + 4064) = a3;
  return result;
}

uint64_t sub_1000BE1C8(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4280) = a2;
  *(result + 4288) = a3;
  return result;
}

uint64_t sub_1000BE1D4(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 4440) = a2;
  *(result + 4448) = a3;
  return result;
}

void sub_1000BE1E0(uint64_t a1, const void *a2, int a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = sub_10001A9BC(a2);
  v8 = sub_1000BE2EC(a1, 0, 0, 0, 5);
  [*(a1 + 6720) setNetworkDenyListInfo:v8 forScanResult:v7];
  if (a3)
  {
    v9 = *(a1 + 64);
    v10 = sub_100006F88(v9);
    v11 = sub_1000078F4(v9, v10);
    if (v11 && CFEqual(a2, v11) && [*(a1 + 6720) enabled])
    {
      v12 = sub_100006F88(*(a1 + 64));
      sub_1000B9DC8(a1, v12, 1002, "WiFiDeviceManagerTemporarilyDisableNetwork", 5977);
    }
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    CFRelease(v11);
  }

  objc_autoreleasePoolPop(v6);
}

id sub_1000BE2EC(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_autoreleasePoolPush();
  if (a1)
  {
    a1 = objc_alloc_init(CWFNetworkDenyListInfo);
    [a1 setReason:a2];
    [a1 setReasonData:a3];
    [a1 setBSSID:a4];
    [a1 setState:a5];
  }

  else
  {
    sub_10019BF40();
  }

  objc_autoreleasePoolPop(v10);
  return a1;
}

void sub_1000BE388(uint64_t a1, const __CFArray *a2)
{
  v3 = a1;
  v4 = (a1 + 5264);
  v148 = 0;
  v5 = _os_feature_enabled_impl();
  if (v3 && v5)
  {
    v6 = objc_autoreleasePoolPush();
    if (a2)
    {
      v7 = +[NSMutableSet set];
      if (CFArrayGetCount(a2) >= 1)
      {
        v8 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, v8);
          if (_os_feature_enabled_impl())
          {
            v10 = ValueAtIndex == 0;
          }

          else
          {
            v10 = 1;
          }

          if (v10 || sub_1000A158C(ValueAtIndex) != 1 || *(v3 + 5592) == 1 || v4[304])
          {
            v11 = sub_10001B368(ValueAtIndex);
            if (v11)
            {
              v12 = v11;
              if ([v11 isCarPlayNetwork] && objc_msgSend(v12, "carplayUUID") && (*(v3 + 5592) == 1 || v4[304]))
              {
                [v12 setAutoJoinDisabled:0];
              }

              [v7 addObject:v12];
            }
          }

          ++v8;
        }

        while (v8 < CFArrayGetCount(a2));
      }
    }

    else
    {
      v7 = 0;
    }

    [*(v3 + 8936) setKnownNetworks:v7];
    objc_autoreleasePoolPop(v6);
  }

  v13 = sub_100006F88(*(v3 + 64));
  v14 = sub_100007D90(v3, v13, 1);
  sub_1000196FC(v3);
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v16 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v17 = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  if (Mutable)
  {
    v18 = v16 == 0;
  }

  else
  {
    v18 = 1;
  }

  theSet = v17;
  if (v18 || v17 == 0)
  {
    sub_10019C614();
    v138 = 0;
    v139 = 0;
    v134 = 0;
    goto LABEL_255;
  }

  theArray = a2;
  v20 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v21 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v139 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  cf1 = v20;
  if (v20)
  {
    v22 = v21 == 0;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    sub_10019C4B4();
    v138 = 0;
    goto LABEL_250;
  }

  v138 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (v138)
  {
    v23 = sub_10000A878(v14);
    v24 = 1;
    v143 = v14;
    if (v23)
    {
      v25 = *(v3 + 6728);
      if (v25)
      {
        if (CFEqual(v23, *(v3 + 6728)))
        {
          v26 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: '%@' removed via iCloud, shouldDisassociate = FALSE", "WiFiDeviceManagerSetNetworks", v25}];
          }

          objc_autoreleasePoolPop(v26);
          v24 = 0;
          v14 = v143;
        }
      }
    }

    if (v14 && !sub_1000BFB18(v3, v14) && !sub_1000BFBBC(v3, v14))
    {
      sub_10019C520();
      v24 = valuePtr[0];
    }

    v136 = v16;
    v137 = Mutable;
    v145 = v21;
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v28 = Count;
        v29 = 0;
        v30 = 0;
        while (1)
        {
          v31 = CFArrayGetValueAtIndex(theArray, v29);
          if (v31)
          {
            break;
          }

LABEL_104:
          if (v28 == ++v29)
          {
            v48 = v30 != 0;
            Mutable = v137;
            v21 = v145;
            goto LABEL_110;
          }
        }

        v32 = v31;
        v33 = *(v3 + 3560);
        if (v33 && CFEqual(v33, v32))
        {
          v30 = 1;
        }

        if (v24)
        {
          if (!v14)
          {
            v24 = 0;
            goto LABEL_80;
          }

          if (CFEqual(v14, v32))
          {
            v24 = 0;
          }
        }

        else
        {
          v24 = 0;
          if (!v14)
          {
            goto LABEL_80;
          }
        }

        if (!sub_10000AFE4(v14) || !sub_10000AFE4(v32))
        {
LABEL_73:
          if (sub_10009E67C(v14))
          {
            v38 = sub_10001CA74(v14);
            v39 = sub_10001CA74(v32);
            if (CFEqual(v38, v39))
            {
              v40 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: connected to the same ambiguous SSID network %@, shouldDisassociate = FALSE", "WiFiDeviceManagerSetNetworks", sub_10000A878(v32)}];
              }

              objc_autoreleasePoolPop(v40);
              v24 = 0;
              v14 = v143;
            }
          }

          if (CFEqual(v14, v32))
          {
            sub_100189100(v3, v32);
          }

LABEL_80:
          if (sub_10009DBBC(v32))
          {
            if (!sub_10006125C(*(v3 + 64)))
            {
              v46 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: device does not support HS2.0. Will not program HS2.0 account", "WiFiDeviceManagerSetNetworks"}];
              }

              objc_autoreleasePoolPop(v46);
              goto LABEL_104;
            }

            v41 = CFStringCreateMutable(kCFAllocatorDefault, 0);
            if (!v41)
            {
              v134 = 0;
              Mutable = v137;
              goto LABEL_208;
            }

            v42 = v41;
            sub_10017651C(v32, v41);
            v43 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: Adding HS20 Account: %@", "WiFiDeviceManagerSetNetworks", v42}];
            }

            objc_autoreleasePoolPop(v43);
            CFRelease(v42);
            if (sub_10001CF90(v32))
            {
              v44 = cf1;
            }

            else
            {
              v44 = v139;
            }
          }

          else
          {
            if (sub_10001CF90(v32))
            {
              if (sub_100177324(v32))
              {
                v45 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: %@ is disabled until first user join", "WiFiDeviceManagerSetNetworks", sub_10000A878(v32)}];
                }
              }

              else
              {
                if (!sub_10017740C(v32))
                {
                  CFArrayAppendValue(v137, v32);
                  if (CFSetContainsValue(*(v3 + 3552), v32))
                  {
                    CFSetAddValue(theSet, v32);
                  }

                  if (sub_10001CB84(v32))
                  {
                    CFArrayAppendValue(v16, v32);
                  }

                  goto LABEL_104;
                }

                v45 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: skipping infrequently joined public network %@", "WiFiDeviceManagerSetNetworks", sub_10000A878(v32)}];
                }
              }

              objc_autoreleasePoolPop(v45);
              goto LABEL_103;
            }

            v47 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: skipping disabled network %@", "WiFiDeviceManagerSetNetworks", sub_10000A878(v32)}];
            }

            objc_autoreleasePoolPop(v47);
            v44 = v138;
          }

          CFArrayAppendValue(v44, v32);
LABEL_103:
          v14 = v143;
          goto LABEL_104;
        }

        v34 = sub_10009DF00(v32);
        v35 = sub_10009DF00(v14);
        v36 = v35;
        if (v35 && v34)
        {
          if (CFEqual(v35, v34))
          {
            v37 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: connected to the same HS2.0 BSSID, shouldDisassociate = FALSE", "WiFiDeviceManagerSetNetworks"}];
            }

            objc_autoreleasePoolPop(v37);
            v24 = 0;
          }
        }

        else if (!v35)
        {
LABEL_70:
          if (v34)
          {
            CFRelease(v34);
          }

          v14 = v143;
          goto LABEL_73;
        }

        CFRelease(v36);
        goto LABEL_70;
      }

      v48 = 0;
LABEL_110:
      if (*(v3 + 3560) && !v48)
      {
        v49 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: previous network %@ forgotten/disabled.", "WiFiDeviceManagerSetNetworks", sub_10000A878(*(v3 + 3560))}];
        }

        objc_autoreleasePoolPop(v49);
        v50 = *(v3 + 3560);
        v14 = v143;
        if (v50)
        {
          CFRelease(v50);
          *(v3 + 3560) = 0;
        }
      }
    }

    else
    {
      sub_10019BFAC();
    }

    v51 = !CFEqual(Mutable, *(v3 + 3576)) || !CFEqual(v16, *(v3 + 3584)) || CFEqual(cf1, *(v3 + 3672)) == 0;
    v134 = v51;
    CFArrayRemoveAllValues(*(v3 + 3576));
    CFArrayRemoveAllValues(*(v3 + 3584));
    CFArrayRemoveAllValues(*(v3 + 3672));
    CFArrayRemoveAllValues(*(v3 + 3680));
    CFArrayRemoveAllValues(*(v3 + 3384));
    CFArrayRemoveAllValues(*(v3 + 3688));
    v52 = *(v3 + 3576);
    v160.length = CFArrayGetCount(Mutable);
    v160.location = 0;
    CFArrayAppendArray(v52, Mutable, v160);
    v53 = *(v3 + 3584);
    v161.length = CFArrayGetCount(v16);
    v161.location = 0;
    CFArrayAppendArray(v53, v16, v161);
    v54 = *(v3 + 3672);
    v162.length = CFArrayGetCount(cf1);
    v162.location = 0;
    CFArrayAppendArray(v54, cf1, v162);
    v133 = v3;
    v55 = *(v3 + 3680);
    v163.length = CFArrayGetCount(v139);
    v163.location = 0;
    CFArrayAppendArray(v55, v139, v163);
    v56 = CFArrayGetCount(cf1);
    if (v56)
    {
      v57 = v56;
      LOWORD(valuePtr[0]) = 268;
      value = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, valuePtr);
      if (value)
      {
        LOWORD(valuePtr[0]) = 3;
        v58 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, valuePtr);
        if (!v58)
        {
          v69 = value;
LABEL_153:
          CFRelease(v69);
          goto LABEL_154;
        }

        v59 = v58;
        v132 = v24;
        LOWORD(valuePtr[0]) = 263;
        v60 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, valuePtr);
        if (v60 && (LOWORD(valuePtr[0]) = 264, v61 = cf1, (v140 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, valuePtr)) != 0))
        {
          LOWORD(valuePtr[0]) = 261;
          v62 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, valuePtr);
          if (v62)
          {
            v63 = v62;
            if (v57 >= 1)
            {
              for (i = 0; i != v57; ++i)
              {
                v65 = CFArrayGetValueAtIndex(v61, i);
                if (v65)
                {
                  v66 = v65;
                  if (sub_10000A540(v65, @"DomainName"))
                  {
                    v156.length = CFArrayGetCount(v145);
                    v156.location = 0;
                    if (!CFArrayContainsValue(v145, v156, value))
                    {
                      CFArrayAppendValue(v145, value);
                    }
                  }

                  if (sub_10000A540(v66, @"NaiRealmName"))
                  {
                    v157.length = CFArrayGetCount(v145);
                    v157.location = 0;
                    if (!CFArrayContainsValue(v145, v157, v60))
                    {
                      CFArrayAppendValue(v145, v60);
                    }
                  }

                  if (sub_10000A540(v66, @"MCCandMNC"))
                  {
                    v158.length = CFArrayGetCount(v145);
                    v158.location = 0;
                    if (!CFArrayContainsValue(v145, v158, v140))
                    {
                      CFArrayAppendValue(v145, v140);
                    }
                  }

                  v61 = cf1;
                  if (sub_10000A540(v66, @"RoamingConsortiumOIs"))
                  {
                    v159.length = CFArrayGetCount(v145);
                    v159.location = 0;
                    if (!CFArrayContainsValue(v145, v159, v63))
                    {
                      CFArrayAppendValue(v145, v63);
                    }
                  }
                }
              }
            }

            v21 = v145;
            if (CFArrayGetCount(v145))
            {
              CFArrayAppendValue(v145, v59);
              v67 = objc_autoreleasePoolPush();
              v14 = v143;
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: created queries %@", "__WiFiDeviceManagerPrepareHS20Queries", v145}];
              }
            }

            else
            {
              v67 = objc_autoreleasePoolPush();
              v14 = v143;
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: Nothing to query about", "__WiFiDeviceManagerPrepareHS20Queries", v130}];
              }
            }

            objc_autoreleasePoolPop(v67);
            v68 = v140;
            v69 = v63;
          }

          else
          {
            v69 = 0;
            v68 = v140;
          }
        }

        else
        {
          v69 = 0;
          v68 = 0;
        }

        CFRelease(value);
        CFRelease(v59);
        if (v60)
        {
          CFRelease(v60);
        }

        if (v68)
        {
          CFRelease(v68);
        }

        Mutable = v137;
        v24 = v132;
        if (v69)
        {
          goto LABEL_153;
        }
      }
    }

LABEL_154:
    v3 = v133;
    v70 = *(v133 + 3384);
    v164.length = CFArrayGetCount(v21);
    v164.location = 0;
    CFArrayAppendArray(v70, v21, v164);
    v71 = *(v133 + 3688);
    v165.length = CFArrayGetCount(v138);
    v165.location = 0;
    CFArrayAppendArray(v71, v138, v165);
    v72 = *(v133 + 3552);
    if (v72)
    {
      CFRelease(v72);
    }

    *(v133 + 3552) = theSet;
    if (v14 && !v134 && sub_10000A7CC(v14))
    {
      sub_1000BFD00(v133, v14, 0, 0);
      sub_1000C007C(v133, v14);
    }

    sub_1000C0314(v133);
    *(v133 + 6680) = sub_100189234(v133, v14);
    if (v134 || *(v133 + 5592) == 1 && (*(v133 + 1112) & 1) == 0)
    {
      if (v24)
      {
LABEL_164:
        sub_1000BCD2C(v133);
        goto LABEL_165;
      }

      if (v14)
      {
        if ((_os_feature_enabled_impl() & 1) == 0)
        {
          v84 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: known network list changed while associated, updating autojoin network list", "WiFiDeviceManagerSetNetworks"}];
          }

          objc_autoreleasePoolPop(v84);
          sub_1000C0414(v133);
        }
      }

      else if (*(v133 + 5592) == 1)
      {
        goto LABEL_164;
      }

LABEL_165:
      if (_os_feature_enabled_impl())
      {
        sub_1000C0414(v133);
      }

      if (*(v133 + 5592) == 1)
      {
        sub_10014EF78(*(v133 + 64));
        v73 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Aborting scan...", "WiFiDeviceManagerSetNetworks"}];
        }

        objc_autoreleasePoolPop(v73);
        if (theArray)
        {
          if (CFArrayGetCount(theArray) == 1)
          {

            *(v133 + 1120) = 0;
            v74 = CFArrayGetValueAtIndex(theArray, 0);
            if (v74)
            {
              v75 = sub_10000A540(v74, @"CARPLAY_PPID");
              if (v75)
              {
                *(v133 + 1120) = [v75 mutableCopy];
              }

              v76 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: CarPlay PPID %@", "WiFiDeviceManagerSetNetworks", *(v133 + 1120)}];
              }

              objc_autoreleasePoolPop(v76);
            }
          }
        }
      }

      *(v133 + 28) = 0;
      sub_1000BD374(v133, 2, "WiFiDeviceManagerSetNetworks");
      if (v14)
      {
        v77 = sub_100014000(v14);
        if (v77)
        {
          CFNumberGetValue(v77, kCFNumberIntType, &v148);
        }

        v78 = objc_autoreleasePoolPush();
        v79 = off_100298C40;
        if (!off_100298C40)
        {
          Mutable = v137;
          goto LABEL_192;
        }

        v80 = sub_10000A878(v143);
        v81 = v148;
        v82 = sub_100014000(v143);
        v83 = sub_100018030(v82);
        Mutable = v137;
      }

      else
      {
        v85 = objc_autoreleasePoolPush();
        v78 = v85;
        v79 = off_100298C40;
        if (!off_100298C40)
        {
          objc_autoreleasePoolPop(v85);
          v14 = v143;
          goto LABEL_198;
        }

        v83 = 0xFFFFFFFFLL;
        v80 = @"None";
        v81 = v148;
      }

      [v79 WFLog:3 message:{"%s: currentNetwork: %@, channel: %d band: %d shouldDisassociate %d", "WiFiDeviceManagerSetNetworks", v80, v81, v83, v24}];
      v16 = v136;
      v21 = v145;
LABEL_192:
      objc_autoreleasePoolPop(v78);
      v14 = v143;
      if (v143 && v24)
      {
        v86 = sub_100006F88(*(v133 + 64));
        sub_1000B9DC8(v133, v86, 1003, "WiFiDeviceManagerSetNetworks", 6461);
      }

LABEL_198:
      if (*(v133 + 5592) != 1)
      {
        goto LABEL_251;
      }

      *(v133 + 1104) = 0;
      if (!v4[1888] || !v4[3] || *v4 < 0xFu || (v4[1889] & 4) == 0)
      {
        v87 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: 5Ghz MIS is inactive\n", "__WiFiDeviceManagerSwitchMISChannelForCarPlayJoin"}];
        }

LABEL_205:
        objc_autoreleasePoolPop(v87);
        goto LABEL_251;
      }

      if (CFArrayGetCount(theArray) == 1)
      {
        v88 = CFArrayGetValueAtIndex(theArray, 0);
        if (sub_10000A7CC(v88))
        {
          if (sub_10000A540(v88, @"CHANNEL"))
          {
            v89 = sub_100034EEC(v88, @"CHANNEL");
            v149 = v89;
            if (v89 <= 0x23)
            {
              sub_10019C328();
              goto LABEL_246;
            }

            v90 = sub_10000A540(v88, @"networkKnownBSSListKey");
            if (v90)
            {
              v91 = v90;
              if (CFArrayGetCount(v90) >= 1)
              {
                v92 = 0;
                while (1)
                {
                  v93 = CFArrayGetValueAtIndex(v91, v92);
                  v94 = CFDictionaryGetValue(v93, @"CHANNEL");
                  v95 = CFDictionaryGetValue(v93, @"CHANNEL_FLAGS");
                  if (v94)
                  {
                    if (v95)
                    {
                      CFNumberGetValue(v94, kCFNumberSInt32Type, &v149);
                      if (v149 < 0xF)
                      {
                        break;
                      }
                    }
                  }

                  if (CFArrayGetCount(v91) <= ++v92)
                  {
                    goto LABEL_220;
                  }
                }

                sub_10019C078();
LABEL_246:
                v14 = v143;
LABEL_208:
                v16 = v136;
                v21 = v145;
LABEL_251:
                v121 = cf1;
                if (!cf1)
                {
                  goto LABEL_253;
                }

                goto LABEL_252;
              }
            }

LABEL_220:
            if (!v4[1888] || !sub_1000C7464(v133, 1))
            {
              sub_10019C2C8();
              goto LABEL_246;
            }

            v14 = v143;
            v16 = v136;
            v21 = v145;
            if (!sub_10005F438(*(v133 + 64), v89))
            {
              sub_10019C264(v89);
              goto LABEL_251;
            }

            if (sub_10005F338(*(v133 + 64), v89))
            {
              sub_10019C0D8(v89);
              goto LABEL_251;
            }

            if (sub_1000CEE58(v133, v89))
            {
              sub_10019C13C(v89);
              goto LABEL_251;
            }

            if (*v4 == v89)
            {
LABEL_243:
              *(v133 + 1104) = 1;
              v87 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: Allow 5Ghz CarPlay & Hotspot concurrent mode\n", "__WiFiDeviceManagerSwitchMISChannelForCarPlayJoin"}];
              }

              goto LABEL_205;
            }

            if (*(v133 + 5312) == 80)
            {
              v96 = 1040;
            }

            else
            {
              v96 = 18;
            }

            v151 = v96;
            v152 = v89;
            v150 = 1;
            v97 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            if (!v97)
            {
              sub_10019C204();
              goto LABEL_251;
            }

            v98 = v97;
            v99 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v152);
            if (v99)
            {
              v100 = v99;
              CFDictionarySetValue(v98, @"IO80211InterfaceSoftAPCSAChannel", v99);
              CFRelease(v100);
              v101 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v151);
              if (v101)
              {
                v102 = v101;
                CFDictionarySetValue(v98, @"IO80211InterfaceSoftAPCSAChannelFlag", v101);
                CFRelease(v102);
                v103 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v150);
                if (v103)
                {
                  v104 = v103;
                  CFDictionarySetValue(v98, @"IO80211InterfaceSoftAPCSASwitchCount", v103);
                  CFRelease(v104);
                  CFDictionarySetValue(v98, @"IO80211InterfaceSoftAPCSAForceDisconnect", kCFBooleanFalse);
                  v105 = *(v133 + 64);
                  v106 = sub_100006F88(v105);
                  v107 = sub_100006F94(v105, v106, 349, 0, v98);
                  if (v107)
                  {
                    v128 = v107;
                    v127 = objc_autoreleasePoolPush();
                    if (off_100298C40)
                    {
                      [off_100298C40 WFLog:4 message:{"%s: Failed to switch MIS channel to %d, err %d", "__WiFiDeviceManagerSwitchMISChannel", v152, v128}];
                    }
                  }

                  else
                  {
                    LODWORD(valuePtr[0]) = 1;
                    v154 = v151;
                    v155[0] = v152;
                    v153 = 7;
                    v108 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                    if (v108)
                    {
                      v109 = v108;
                      v110 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, v155);
                      if (!v110)
                      {
                        goto LABEL_288;
                      }

                      v111 = v110;
                      CFDictionarySetValue(v109, @"IO80211InterfaceVirtualIfStateChannel", v110);
                      CFRelease(v111);
                      v112 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v154);
                      if (!v112)
                      {
                        goto LABEL_288;
                      }

                      v113 = v112;
                      CFDictionarySetValue(v109, @"IO80211InterfaceVirtualIfStateChannelFlag", v112);
                      CFRelease(v113);
                      v114 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, valuePtr);
                      if (!v114)
                      {
                        goto LABEL_288;
                      }

                      v115 = v114;
                      CFDictionarySetValue(v109, @"IO80211InterfaceVirtualIfStateIsActive", v114);
                      CFRelease(v115);
                      v116 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &v153);
                      if (v116)
                      {
                        v117 = v116;
                        CFDictionarySetValue(v109, @"IO80211InterfaceVirtualIfStateIsType", v116);
                        CFRelease(v117);
                        v118 = *(v133 + 64);
                        v119 = sub_100006F88(v118);
                        v120 = sub_100006F94(v118, v119, 503, 0, v109);
                        if (!v120)
                        {
                          CFRelease(v109);
                          *v4 = v152;
                          if (+[WiFiSoftApStateMonitor sharedInstance])
                          {
                            [+[WiFiSoftApStateMonitor sharedInstance](WiFiSoftApStateMonitor setMisChannel:"setMisChannel:", *v4];
                          }

                          CFRelease(v98);
                          v14 = v143;
                          goto LABEL_243;
                        }

                        v126 = v120;
                        sub_10019C1A0(v120);
                      }

                      else
                      {
LABEL_288:
                        v126 = 4294963396;
                      }

                      CFRelease(v109);
                    }

                    else
                    {
                      v129 = objc_autoreleasePoolPush();
                      if (off_100298C40)
                      {
                        [off_100298C40 WFLog:4 message:{"%s Failed to create dict", "__WiFiDeviceManagerUpdateSoftApState"}];
                      }

                      objc_autoreleasePoolPop(v129);
                      v126 = 4294963396;
                    }

                    v127 = objc_autoreleasePoolPush();
                    if (off_100298C40)
                    {
                      [off_100298C40 WFLog:4 message:{"%s: Failed to update softap state, err %d", "__WiFiDeviceManagerSwitchMISChannel", v126, v131}];
                    }
                  }

                  objc_autoreleasePoolPop(v127);
                  v3 = v133;
                  v16 = v136;
                  Mutable = v137;
                  v21 = v145;
                }
              }
            }

            CFRelease(v98);
          }

          else
          {
            sub_10019C388();
          }
        }

        else
        {
          sub_10019C3E8();
        }
      }

      else
      {
        sub_10019C018();
      }

      v14 = v143;
      goto LABEL_251;
    }

LABEL_250:
    v134 = 0;
    goto LABEL_251;
  }

  sub_10019C448();
  v134 = 0;
  v138 = 0;
  v121 = v20;
LABEL_252:
  CFRelease(v121);
LABEL_253:
  if (v21)
  {
    CFRelease(v21);
  }

LABEL_255:
  if (v14)
  {
    CFRelease(v14);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v139)
  {
    CFRelease(v139);
  }

  if (v138)
  {
    CFRelease(v138);
  }

  *(v3 + 192) = 14;
  if (!_os_feature_enabled_impl())
  {
    [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
    sub_1000BD310(v3, 0, "WiFiDeviceManagerSetNetworks");
    goto LABEL_274;
  }

  if (*(v3 + 5592) == 1)
  {
    v122 = v3;
    v123 = 32;
  }

  else if (v4[3669])
  {
    v122 = v3;
    v123 = 33;
  }

  else
  {
    if (!v134)
    {
      goto LABEL_274;
    }

    v122 = v3;
    v123 = 5;
  }

  sub_100019814(v122, v123);
LABEL_274:
  if (v4[3952])
  {
    v124 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: there is already a WiFiDeviceManagerSetBackgroundScan scheduled", "WiFiDeviceManagerSetNetworks"}];
    }
  }

  else
  {
    if (*(v3 + 240))
    {
      valuePtr[0] = 0;
      valuePtr[1] = valuePtr;
      valuePtr[2] = 0x2020000000;
      valuePtr[3] = CFRetain(v3);
      v125 = *(v3 + 240);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000C0C50;
      block[3] = &unk_1002608E0;
      block[4] = valuePtr;
      dispatch_async(v125, block);
      _Block_object_dispose(valuePtr, 8);
    }

    else
    {
      sub_1000C0CA0(v3);
    }

    v4[3952] = 1;
    v124 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: WiFiDeviceManagerSetBackgroundScan scheduled", "WiFiDeviceManagerSetNetworks"}];
    }
  }

  objc_autoreleasePoolPop(v124);
}

BOOL sub_1000BFB18(void *a1, const void *a2)
{
  v4 = a1[447];
  v8.length = CFArrayGetCount(v4);
  v8.location = 0;
  if (CFArrayContainsValue(v4, v8, a2))
  {
    return 1;
  }

  v5 = a1[461];
  v9.length = CFArrayGetCount(v5);
  v9.location = 0;
  if (CFArrayContainsValue(v5, v9, a2))
  {
    return 1;
  }

  v7 = a1[448];
  v10.length = CFArrayGetCount(v7);
  v10.location = 0;
  return CFArrayContainsValue(v7, v10, a2) != 0;
}

uint64_t sub_1000BFBBC(uint64_t a1, const void *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = sub_10000AFE4(a2);
  if (result)
  {
    v5 = *(a1 + 3672);
    v7.length = CFArrayGetCount(v5);
    v7.location = 0;
    if (CFArrayContainsValue(v5, v7, a2))
    {
      return 1;
    }

    else
    {
      v6 = *(a1 + 3680);
      v8.length = CFArrayGetCount(v6);
      v8.location = 0;
      return CFArrayContainsValue(v6, v8, a2) != 0;
    }
  }

  return result;
}

void sub_1000BFC58(uint64_t a1, const void *a2)
{
  v4 = *(a1 + 3560);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 3560) = 0;
  }

  if (a2)
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s, %@", "WiFiDeviceManagerSetPreviousNetwork", a2}];
    }

    objc_autoreleasePoolPop(v5);
    v6 = sub_10000B3A8(a1, a2, 1);
    *(a1 + 3560) = v6;
    if (!v6)
    {
      *(a1 + 3560) = CFRetain(a2);
    }
  }
}

void sub_1000BFD00(uint64_t *a1, const void *a2, char a3, int a4)
{
  if (!a2)
  {
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: no link on interface. Setting primary to never.", "__WiFiDeviceManagerSetInterfaceRank"}];
    }

    objc_autoreleasePoolPop(v14);
    if (a1[692])
    {
      v10 = 0;
      v13 = 0;
      v11 = 2863311530;
      v8 = a1 + 692;
      v12 = 3;
      if ((a3 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

LABEL_47:
    sub_10019C680();
    return;
  }

  if (!a1[692])
  {
    goto LABEL_47;
  }

  v8 = a1 + 692;
  v9 = sub_10000B3A8(a1, a2, 1);
  v10 = v9;
  if (!v9)
  {
    v12 = 0;
    v13 = 0;
    v11 = 2863311530;
    if ((a3 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_10:
    v12 = a4;
    if (a4)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v11 = sub_1000A158C(v9);
  v12 = 0;
  v13 = (v11 - 1) < 2;
  if (a3)
  {
    goto LABEL_10;
  }

LABEL_13:
  a1[706] = 0;
  if (v10)
  {
    if ((v11 - 1) <= 1)
    {
      v18 = sub_10000A540(a2, @"11U_INTERWORKING_IE");
      if (v18)
      {
        Value = CFDictionaryGetValue(v18, @"INTERWORKING_ACCESS_INTERNET");
        a1[706] = Value;
        if (Value)
        {
          v20 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            if (a1[706] == kCFBooleanTrue)
            {
              v21 = "SET";
            }

            else
            {
              v21 = "ZERO";
            }

            [off_100298C40 WFLog:3 message:{"%s: internetAccess bit %s for network %@", "__WiFiDeviceManagerSetInterfaceRank", v21, sub_10000A878(a2)}];
          }

          objc_autoreleasePoolPop(v20);
        }
      }

      if (v11 == 1)
      {
        v12 = 3;
      }

      else
      {
        v12 = 0;
      }

      v22 = a1[547];
      if (v22)
      {
        v22(a1, 0, a1[548], v11);
      }

      v13 = 1;
    }

    sub_100189100(a1, v10);
    if (v12)
    {
      goto LABEL_18;
    }
  }

  else if (v12)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (!v13 && _os_feature_enabled_impl() && +[WiFiAIRAgent sharedInstance])
  {
    if ([+[WiFiAIRAgent isInterfaceRankingInProgress] sharedInstance]
    {
      [+[WiFiAIRAgent sharedInstance](WiFiAIRAgent terminateRequest];
    }

    sub_1000158B8(a1[15], 1, 0);
    v23 = a1[692];
    SCNetworkInterfaceSetPrimaryRank();
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000E18F8;
    v24[3] = &unk_100261950;
    v25 = 0;
    v24[4] = a1;
    v24[5] = a2;
    [+[WiFiAIRAgent sharedInstance](WiFiAIRAgent waitForConfirmationWithTimeout:"waitForConfirmationWithTimeout:withBssEnvironment:withMgrCallback:" withBssEnvironment:a2 withMgrCallback:sub_100190914(a1, a2), v24];
    if (v10)
    {
      goto LABEL_24;
    }

    return;
  }

LABEL_18:
  v15 = *v8;
  SCNetworkInterfaceSetPrimaryRank();
  v16 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    if (v12)
    {
      v17 = "kSCNetworkServicePrimaryRankNever";
    }

    else
    {
      v17 = "kSCNetworkServicePrimaryRankDefault";
    }

    [off_100298C40 WFLog:3 message:{"%s: setting interface rank %s for network %@", "__WiFiDeviceManagerSetInterfaceRank", v17, sub_10000A878(a2)}];
  }

  objc_autoreleasePoolPop(v16);
  if (v10)
  {
LABEL_24:
    CFRelease(v10);
  }
}

void sub_1000C007C(uint64_t a1, const void *a2)
{
  valuePtr = 0;
  if (!a1)
  {
    sub_10019C968();
    return;
  }

  if (!*(a1 + 5536))
  {
    sub_10019C8FC();
    return;
  }

  if (!*(a1 + 5512))
  {
    sub_10019C890();
    return;
  }

  v3 = sub_10000B3A8(a1, a2, 1);
  if (!v3)
  {
    sub_10019C824();
    return;
  }

  v4 = v3;
  v5 = sub_1000A158C(v3);
  v20 = v5;
  v6 = sub_100009664(*(a1 + 64));
  if (v6)
  {
    NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, v6, kSCEntNetAirPort);
    if (NetworkInterfaceEntity)
    {
      v8 = NetworkInterfaceEntity;
      v9 = SCDynamicStoreCopyValue(*(a1 + 5512), NetworkInterfaceEntity);
      if (v9)
      {
        v10 = v9;
        Value = CFDictionaryGetValue(v9, @"WiFiNetworkType");
        if (Value)
        {
          CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
          v12 = valuePtr;
        }

        else
        {
          v12 = 0;
        }

        if (v12 != v5)
        {
          v13 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: update the network type from %d to %d", "__WiFiDeviceManagerUpdateDynamicStoreNetworkEntry", valuePtr, v5}];
          }

          objc_autoreleasePoolPop(v13);
          MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v10);
          if (MutableCopy)
          {
            v15 = MutableCopy;
            v16 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v20);
            if (v16)
            {
              v17 = v16;
              CFDictionarySetValue(v15, @"WiFiNetworkType", v16);
              SCDynamicStoreSetValue(*(a1 + 5512), v8, v15);
              CFRelease(v15);
              CFRelease(v17);
            }

            else
            {
              sub_10019C6EC(v15);
            }
          }

          else
          {
            sub_10019C758();
          }
        }

        CFRelease(v10);
      }

      else
      {
        sub_10019C7B8();
      }

      CFRelease(v4);
      CFRelease(v8);
      return;
    }

    v18 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: stateKey is NULL.", "__WiFiDeviceManagerUpdateDynamicStoreNetworkEntry"}];
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: interfaceName is NULL.", "__WiFiDeviceManagerUpdateDynamicStoreNetworkEntry"}];
    }
  }

  objc_autoreleasePoolPop(v18);

  CFRelease(v4);
}

void sub_1000C0314(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [NSMutableArray arrayWithArray:*(a1 + 3576)];
  [(NSMutableArray *)v3 addObjectsFromArray:*(a1 + 3672)];
  v9.length = [(NSMutableArray *)v3 count];
  v9.location = 0;
  CFArraySortValues(v3, v9, sub_1000A072C, 0);
  if ([(NSMutableArray *)v3 count])
  {
    v4 = 0;
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = [(NSMutableArray *)v3 objectAtIndexedSubscript:v4];
      if (sub_10000DBF0(v7) != 0.0 && sub_1000A23AC(v7) != v6)
      {
        sub_1000A23A4(v7, v6++);
      }

      v4 = ++v5;
    }

    while ([(NSMutableArray *)v3 count]> v5);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000C0414(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: updating filtered networks list", "__WiFiDeviceManagerFilterNetworks"}];
  }

  objc_autoreleasePoolPop(v2);
  CFArrayRemoveAllValues(*(a1 + 3624));
  CFArrayRemoveAllValues(*(a1 + 3592));
  v3 = *(a1 + 3560);
  if (v3 && sub_10000A604(v3) && (sub_10000A540(*(a1 + 3560), @"WiFiInstantHotspotJoining") == kCFBooleanTrue || sub_10000A540(*(a1 + 3560), @"WiFiAutoInstantHotspotJoining") == kCFBooleanTrue))
  {
    v4 = sub_10000A540(*(a1 + 3560), @"lastDisconnectReasonKey");
    if (v4)
    {
      valuePtr = -1431655766;
      CFNumberGetValue(v4, kCFNumberIntType, &valuePtr);
      if (valuePtr >= 3)
      {
        if (valuePtr == 1019 || valuePtr == 1034)
        {
          v14 = 0;
          v47 = 1;
          goto LABEL_20;
        }
      }

      else
      {
        v5 = sub_10000A540(*(a1 + 3560), @"lastDisconnectTimestampKey");
        if (v5)
        {
          v6 = v5;
          Current = CFAbsoluteTimeGetCurrent();
          if (Current - CFDateGetAbsoluteTime(v6) < 300.0)
          {
            v8 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              v9 = sub_10000A878(*(a1 + 3560));
              v10 = valuePtr;
              v11 = CFAbsoluteTimeGetCurrent();
              v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                v13 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
                *buf = 136446210;
                v50 = v13;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
              }
            }

            objc_autoreleasePoolPop(v8);
            v47 = 0;
            goto LABEL_19;
          }
        }
      }
    }
  }

  v47 = 1;
LABEL_19:
  v14 = 1;
LABEL_20:
  Count = CFArrayGetCount(*(a1 + 3576));
  if (Count >= 1)
  {
    v16 = Count;
    for (i = 0; i != v16; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 3576), i);
      if (ValueAtIndex)
      {
        v19 = ValueAtIndex;
        if (sub_1000E0A04(a1, ValueAtIndex, 1))
        {
          if (!*(a1 + 6976) || (v20 = sub_100006F88(*(a1 + 64)), (v21 = sub_100007D90(a1, v20, 1)) == 0) || (v22 = v21, v23 = sub_10001CA74(v21), v24 = sub_10001CA74(v19), LODWORD(v23) = CFEqual(v23, v24), CFRelease(v22), !v23))
          {
            if ((v14 & 1) != 0 || (v25 = *(a1 + 3560)) == 0 || (v26 = sub_10001CA74(v25), v27 = sub_10001CA74(v19), !CFEqual(v26, v27)))
            {
              CFArrayAppendValue(*(a1 + 3592), v19);
              CFArrayAppendValue(*(a1 + 3624), v19);
            }
          }
        }

        else
        {
          v28 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            v29 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v30 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
              *buf = 136446210;
              v50 = v30;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
            }
          }

          objc_autoreleasePoolPop(v28);
        }
      }
    }
  }

  CFArrayRemoveAllValues(*(a1 + 3600));
  v31 = CFArrayGetCount(*(a1 + 3584));
  if (v31 >= 1)
  {
    v32 = v31;
    for (j = 0; j != v32; ++j)
    {
      v34 = CFArrayGetValueAtIndex(*(a1 + 3584), j);
      if (v34)
      {
        v35 = v34;
        if (sub_1000E0A04(a1, v34, 1))
        {
          CFArrayAppendValue(*(a1 + 3600), v35);
          v51.length = CFArrayGetCount(*(a1 + 3624));
          v51.location = 0;
          if (CFArrayGetFirstIndexOfValue(*(a1 + 3624), v51, v35) == -1)
          {
            CFArrayAppendValue(*(a1 + 3624), v35);
          }
        }

        else
        {
          v36 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            v37 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v38 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
              *buf = 136446210;
              v50 = v38;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
            }
          }

          objc_autoreleasePoolPop(v36);
        }
      }
    }
  }

  if ((v47 & 1) == 0)
  {
    v39 = *(a1 + 3560);
    if (v39)
    {
      CFArrayAppendValue(*(a1 + 3600), v39);
      v52.length = CFArrayGetCount(*(a1 + 3624));
      v52.location = 0;
      if (CFArrayGetFirstIndexOfValue(*(a1 + 3624), v52, *(a1 + 3560)) == -1)
      {
        CFArrayAppendValue(*(a1 + 3624), *(a1 + 3560));
      }
    }
  }

  v40 = CFArrayGetCount(*(a1 + 3624));
  if (v40)
  {
    v53.length = v40;
    v53.location = 0;
    CFArraySortValues(*(a1 + 3624), v53, sub_1000A07EC, 0);
  }

  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  if (Mutable)
  {
    v42 = Mutable;
    v43 = *(a1 + 3624);
    if (v43 && CFArrayGetCount(v43) > 0)
    {
      sub_10019C9D4();
    }

    v44 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v45 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v46 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
        *buf = 136446210;
        v50 = v46;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v44);
    CFRelease(v42);
  }
}

void sub_1000C0C50(uint64_t a1)
{
  sub_1000C0CA0(*(*(*(a1 + 32) + 8) + 24));
  v2 = *(*(*(a1 + 32) + 8) + 24);
  if (v2)
  {
    CFRelease(v2);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

uint64_t sub_1000C0CA0(uint64_t a1)
{
  v1 = a1;
  v2 = (a1 + 5528);
  v3 = objc_autoreleasePoolPush();
  v2[3688] = 0;
  if (!sub_100029A74(*(v1 + 64)))
  {
    v34 = 0;
    goto LABEL_110;
  }

  if (*(v1 + 20) == 1)
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    v72 = v2;
    if (*(v1 + 176))
    {
      if (sub_1000B6E8C(v1))
      {
        theArray = Mutable;
        v70 = v3;
        v5 = sub_100006F88(*(v1 + 64));
        v6 = sub_100007D90(v1, v5, 1);
        Count = CFArrayGetCount(*(v1 + 3576));
        value = v6;
        if (Count < 1)
        {
          v73 = 0;
        }

        else
        {
          v8 = Count;
          v9 = 0;
          v73 = 0;
          v10 = &off_100298C40;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(v1 + 3576), v9);
            if (ValueAtIndex)
            {
              v12 = ValueAtIndex;
              v13 = sub_10001A9BC(ValueAtIndex);
              v80 = [*(v1 + 6720) isNetworkInDenyListedState:3 scanResult:v13];
              v78 = [*(v1 + 6720) isNetworkInDenyListedState:1 scanResult:v13];
              v77 = [*(v1 + 6720) isNetworkDenyListedForAutoJoinDueToTrigDisc:v13 RSSI:0 timestamp:0];
              v14 = sub_10001B368(v12);
              if (v14)
              {
                v79 = [*(v1 + 8936) isKnownNetworkDisallowed:v14];
              }

              else
              {
                v15 = objc_autoreleasePoolPush();
                if (*v10)
                {
                  [*v10 WFLog:4 message:{"%s: Unable to create CWFNetworkProfile. Skipping isKnownNetworkDisallowed check", "WiFiDeviceManagerSetBackgroundScan"}];
                }

                objc_autoreleasePoolPop(v15);
                v79 = 0;
              }

              v16 = 1;
              if (v6 && byte_100298C79)
              {
                v17 = sub_10000A878(v6);
                v18 = sub_10000A878(v12);
                if (CFStringCompare(v17, v18, 0))
                {
                  v19 = sub_10001B368(v12);
                  v16 = [v19 isAllowedInLockdownMode];
                }

                else
                {
                  v16 = 1;
                }
              }

              v20 = sub_10000AA64(*(v1 + 3752), v12);
              if (v20)
              {
                v21 = v20;
                v22 = sub_10000A540(v20, @"NetworkUsedForSWUpgrade");
                v23 = sub_10000A540(v21, @"PRIVATE_MAC_ADDRESS");
                if (v23)
                {
                  v24 = CFDictionaryGetValue(v23, @"PRIVATE_MAC_ADDRESS_TYPE");
                  if (v24)
                  {
                    if (sub_10000AC54(v24) == 1)
                    {
                      if (v22)
                      {
                        if (v6)
                        {
                          if (v22 == kCFBooleanTrue)
                          {
                            v25 = sub_10000A878(v6);
                            v26 = sub_10000A878(v21);
                            if (CFStringCompare(v25, v26, 0) == kCFCompareEqualTo)
                            {
                              v27 = objc_autoreleasePoolPush();
                              if (*v10)
                              {
                                context = v27;
                                [*v10 WFLog:3 message:{"%s WFMacRandomisation : Forcing bg scan set for current network <%@>", "WiFiDeviceManagerSetBackgroundScan", sub_10000A878(v21)}];
                                v27 = context;
                              }

                              objc_autoreleasePoolPop(v27);
                              v73 = 1;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }

              if ((v80 & 1) != 0 || sub_10000C894(v12) || !sub_10009E83C(v12) || !v16 || v79 || (v78 & 1) != 0 && !v77)
              {
                v28 = objc_autoreleasePoolPush();
                v29 = *v10;
                if (*v10)
                {
                  contexta = v13;
                  v30 = v1;
                  v31 = v10;
                  v32 = v8;
                  v33 = sub_10000A878(v12);
                  v69 = sub_10000C894(v12);
                  v68 = v33;
                  v8 = v32;
                  v10 = v31;
                  v1 = v30;
                  v6 = value;
                  v13 = contexta;
                  [v29 WFLog:4 message:{"%s: network %@ excluded from BGScan: isWoWBlacklisted=%d isAJBlacklisted=%d isTDBlacklisted=%d isAdHoc=%d isWoWAllowed=%d isAutoJoinAllowedInLockdownMode=%d isKnownNetworkDisallowed=%d", "WiFiDeviceManagerSetBackgroundScan", v68, v80, v78, v77, v69, sub_10009E83C(v12), v16, v79}];
                }

                objc_autoreleasePoolPop(v28);
              }

              else
              {
                CFArrayAppendValue(theArray, v12);
              }
            }

            ++v9;
          }

          while (v8 != v9);
        }

        Mutable = theArray;
        v40 = CFArrayGetCount(theArray);
        if (v40)
        {
          v81.location = 0;
          v81.length = v40;
          CFArraySortValues(theArray, v81, sub_1000A07EC, 0);
        }

        v41 = sub_10001A9BC(value);
        v42 = [*(v1 + 6720) isNetworkInDenyListedState:3 scanResult:v41];
        if (!value)
        {
          v3 = v70;
LABEL_68:
          if (v40 >= 17)
          {
            v83.length = v40 - 16;
            v83.location = 16;
            CFArrayReplaceValues(theArray, v83, 0, 0);
          }

          v46 = CFArrayGetCount(theArray);
          if (v46 >= 1)
          {
            v47 = v46;
            v48 = 0;
            while (1)
            {
              v49 = CFArrayGetValueAtIndex(theArray, v48);
              v50 = sub_10000A878(v49);
              if ([*(v1 + 6720) isNetworkDenyListedForAutoJoinDueToTrigDisc:v41 RSSI:0 timestamp:0])
              {
                if (CFSetContainsValue(*(v1 + 3648), v49))
                {
                  v51 = v73;
                }

                else
                {
                  v51 = 1;
                }

                v73 = v51;
              }

              if (([*(v1 + 6720) isNetworkDenyListedForAutoJoinDueToTrigDisc:v41 RSSI:0 timestamp:0] & 1) == 0)
              {
                v52 = CFSetContainsValue(*(v1 + 3648), v49);
                v53 = v73;
                if (v52)
                {
                  v53 = 1;
                }

                v73 = v53;
              }

              if ((sub_100189D00(v1, v49) || sub_10000D9C8(v49) || sub_10000AFE4(v49)) && !CFSetContainsValue(*(v1 + 3656), v49))
              {
                break;
              }

              if (!sub_100189D00(v1, v49) && !sub_10000D9C8(v49) && !sub_10000AFE4(v49) && CFSetContainsValue(*(v1 + 3656), v49))
              {
                v54 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s Force reprogram Bgscan list for clear hotspot %@", "WiFiDeviceManagerSetBackgroundScan", v50}];
                }

                goto LABEL_93;
              }

              if (v47 == ++v48)
              {
                goto LABEL_94;
              }
            }

            v54 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s Force reprogram Bgscan list for hotspot %@", "WiFiDeviceManagerSetBackgroundScan", v50}];
            }

LABEL_93:
            objc_autoreleasePoolPop(v54);
            v73 = 1;
          }

LABEL_94:

          v39 = v73 != 0;
LABEL_95:
          v55 = *(v1 + 3640);
          if (CFArrayGetCount(v55) > 359)
          {
            v56.length = 360;
          }

          else
          {
            v56.length = CFArrayGetCount(*(v1 + 3640));
          }

          v56.location = 0;
          CFArrayAppendArray(Mutable, v55, v56);
          if (CFEqual(Mutable, *(v1 + 3632)) == 0 || v39)
          {
            v58 = sub_100189D74(v1, Mutable);
            if (v58)
            {
              v60 = *(v1 + 64);
              v61 = sub_100006F88(v60);
              v62 = sub_100061310(v60, v61);
              if (v62)
              {
                v34 = v62;
                v63 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:4 message:{"__WiFiDeviceSetBackgroundScan returned err=%d", v34}];
                }

                objc_autoreleasePoolPop(v63);
              }

              else
              {
                CFArrayRemoveAllValues(*(v1 + 3632));
                v66 = *(v1 + 3632);
                v84.length = CFArrayGetCount(Mutable);
                v84.location = 0;
                CFArrayAppendArray(v66, Mutable, v84);
                sub_1000C5CBC(v1);
                v34 = 0;
              }

              goto LABEL_104;
            }
          }

          else if (*v72 == v72[1])
          {
            v57 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"No Change in Background Scan Networks, Skip Re-Programming Background Scan\n"}];
            }

            objc_autoreleasePoolPop(v57);
            v58 = 0;
          }

          else
          {
            v58 = sub_100189D74(v1, Mutable);
            if (v58)
            {
              v64 = *(v1 + 64);
              v65 = sub_100006F88(v64);
              v34 = sub_100061310(v64, v65);
              goto LABEL_104;
            }
          }

          v34 = 4294963396;
LABEL_104:
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          if (v58)
          {
            CFRelease(v58);
          }

          if (value)
          {
            CFRelease(value);
          }

          goto LABEL_110;
        }

        v43 = v42;
        if (sub_10000AFE4(value))
        {
          v3 = v70;
          if (v43)
          {
LABEL_59:
            v44 = value;
LABEL_66:
            if (sub_10009E718(v44))
            {
              sub_100189430(v1);
            }

            goto LABEL_68;
          }
        }

        else
        {
          v3 = v70;
          if (!sub_10009E718(value) | v43 & 1)
          {
            goto LABEL_59;
          }
        }

        v82.location = 0;
        v82.length = v40;
        v44 = value;
        if (!CFArrayContainsValue(theArray, v82, value))
        {
          CFArrayInsertValueAtIndex(theArray, 0, value);
          v45 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: adding Captive/HS2.0 network %@ to PNO list", "WiFiDeviceManagerSetBackgroundScan", sub_10000A878(value)}];
          }

          objc_autoreleasePoolPop(v45);
          ++v40;
          v73 = 1;
        }

        goto LABEL_66;
      }

      v36 = objc_autoreleasePoolPush();
      v37 = off_100298C40;
      if (off_100298C40)
      {
        v67 = "WiFiDeviceManagerSetBackgroundScan";
        v38 = "%s: User disabled auto join. Skip programming SSID into background scan";
        goto LABEL_51;
      }
    }

    else
    {
      v36 = objc_autoreleasePoolPush();
      v37 = off_100298C40;
      if (off_100298C40)
      {
        v38 = "Device is inactive since boot. Skip programming SSID into background scan";
LABEL_51:
        [v37 WFLog:3 message:{v38, v67}];
      }
    }

    objc_autoreleasePoolPop(v36);
    value = 0;
    v39 = 0;
    goto LABEL_95;
  }

  v35 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"Device NOT POWERED. Skip programming Background Scan"];
  }

  objc_autoreleasePoolPop(v35);
  v34 = 4294963396;
LABEL_110:
  objc_autoreleasePoolPop(v3);
  return v34;
}