const __CFArray *sub_100013F70(const __CFArray *result)
{
  if (result)
  {
    v1 = result;
    result = sub_10000A540(result, @"BSSID");
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

            return CFDictionaryGetValue(result, @"BSSID");
          }
        }
      }
    }
  }

  return result;
}

const void *sub_100014000(uint64_t a1)
{
  if (a1)
  {

    return sub_10000A540(a1, @"CHANNEL");
  }

  else
  {
    sub_1001787F0();
    return 0;
  }
}

const __CFString *sub_100014038(int a1)
{
  v2 = objc_autoreleasePoolPush();
  if ((a1 - 1) > 5)
  {
    v3 = @"Unknown";
  }

  else
  {
    v3 = *(&off_100260F30 + (a1 - 1));
  }

  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t sub_10001408C(uint64_t a1, const void *a2)
{
  v4 = sub_100007060(a1, a2);
  if (!v4)
  {
    sub_100155F94(a2);
    return 0;
  }

  v5 = CFGetTypeID(v4);
  if (v5 == sub_100006F40())
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: not supported on virtual interface %@", "WiFiDeviceCopyLQMSummary", a2}];
    }

    objc_autoreleasePoolPop(v6);
    v7 = 4294963393;
LABEL_17:
    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: returned error %d", "WiFiDeviceCopyLQMSummary", v7}];
    }

    objc_autoreleasePoolPop(v12);
    return 0;
  }

  for (i = 6; ; --i)
  {
    v9 = *(a1 + 16);
    v10 = Apple80211CopyValue();
    v7 = v10;
    if (v10 <= 15)
    {
      if (v10 != -3905)
      {
        break;
      }
    }

    else if (v10 != 61 && v10 != 16)
    {
      goto LABEL_17;
    }

    if (!i)
    {
      break;
    }

    usleep(0x7A120u);
  }

  if (v10)
  {
    goto LABEL_17;
  }

  return 0;
}

uint64_t sub_1000141C0(uint64_t a1, uint64_t a2)
{
  v32 = 0;
  valuePtr = 0;
  v31 = 0;
  v30 = 0;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  value = 0;
  v24 = 0;
  number = 0;
  v22 = 0;
  v23 = 0;
  v20 = 0;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v17 = 0;
  theDict = 0;
  if (!a1)
  {
    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: WiFiLQAMgrRef is NULL", "__WiFiLQAMgrExtractFromLqm"}];
    }

    goto LABEL_15;
  }

  if (!a2)
  {
    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: metrics is NULL", "__WiFiLQAMgrExtractFromLqm"}];
    }

    goto LABEL_15;
  }

  if (*(a1 + 24))
  {
    CFAbsoluteTimeGetCurrent();
    Count = CFArrayGetCount(*(a1 + 24));
    if (Count <= 0)
    {
      *(a2 + 36) = -1;
      v7 = (a2 + 36);
    }

    else
    {
      v5 = Count;
      v6 = 0;
      v14 = CFArrayGetValueAtIndex(*(a1 + 24), 0) != 0;
      *(a2 + 36) = -1;
      v7 = (a2 + 36);
      do
      {
        if (CFArrayGetValueAtIndex(*(a1 + 24), v6))
        {
          v8 = sub_10000DA8C();
          CFDictionaryGetValueIfPresent(v8, @"LQMTIMESTAMP", v9);
          v10 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            sub_10004B898();
            [v11 WFLog:? message:?];
          }

          objc_autoreleasePoolPop(v10);
        }

        ++v6;
      }

      while (v5 != v6);
    }

    *v7 = *v7;
    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: LQAManager No LQMDicts", "__WiFiLQAMgrExtractFromLqm"}];
    }

LABEL_15:
    objc_autoreleasePoolPop(v12);
  }

  return 0;
}

uint64_t sub_100014814(uint64_t a1)
{
  valuePtr = 0;
  value = 0;
  v2 = *(a1 + 24);
  if (!v2 || CFArrayGetCount(v2) <= 0)
  {
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s, LQAManager: No LQM report histogram", "__WiFiLQAMgrIsLinkHighCCA24GHzWithRealTime"}];
    }

    goto LABEL_17;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), 0);
  if (!ValueAtIndex)
  {
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s, LQAManager: Latest LQM Report is NULL", "__WiFiLQAMgrIsLinkHighCCA24GHzWithRealTime"}];
    }

LABEL_17:
    objc_autoreleasePoolPop(v9);
    return 0;
  }

  v4 = ValueAtIndex;
  v5 = sub_100014994(a1);
  result = 0;
  if (!*(a1 + 3257) || !v5)
  {
    return result;
  }

  if (sub_100018030(*(a1 + 48)) != 1)
  {
    return 0;
  }

  ValueIfPresent = CFDictionaryGetValueIfPresent(v4, @"CCA", &value);
  result = 0;
  if (!ValueIfPresent || !value)
  {
    return result;
  }

  CFNumberGetValue(value, kCFNumberIntType, &valuePtr);
  if (valuePtr < 50)
  {
    return 0;
  }

  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Operating in high CCA 2.4GHz link  %d", "__WiFiLQAMgrIsLinkHighCCA24GHzWithRealTime", valuePtr}];
  }

  objc_autoreleasePoolPop(v8);
  return 1;
}

BOOL sub_100014994(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    return *(result + 3258) == 1 && !sub_10000A7CC(*(result + 48)) && *(v1 + 2842) == 0;
  }

  return result;
}

uint64_t sub_1000149E8()
{
  if ([+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor isCarPlay]|| [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor isMediaPlaying]|| [+[WiFiUserInteractionMonitor isAirplayActiveOverInfra] sharedInstance]
  {
    v0 = 1;
  }

  else
  {
    v0 = [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor isRealTimeAppActive];
  }

  v1 = [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor isInHomeScreen];
  v2 = [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor isAVConferenceActive];
  if (v0)
  {
    v3 = 0;
  }

  else
  {
    v3 = v1;
  }

  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v5 = "Foreground";
    if (v3)
    {
      v5 = "Background";
    }

    v6 = "yes";
    if (v1)
    {
      v7 = "no";
    }

    else
    {
      v7 = "yes";
    }

    if (v2)
    {
      v8 = "yes";
    }

    else
    {
      v8 = "no";
    }

    if (!v0)
    {
      v6 = "no";
    }

    [off_100298C40 WFLog:3 message:{"%s: app state for DPS action : %s isAnyAppInFG:%s isFTactive:%s isLatencySensitiveAppActive:%s", "WiFiDeviceManagerGetAppState", v5, v7, v8, v6}];
  }

  v9 = v1 ^ 1;
  objc_autoreleasePoolPop(v4);
  if (v3)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0x1000000;
  }

  v11 = v10 | (v0 << 16);
  if (v2)
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  return v12 | v9 | v11;
}

void sub_100014B54(uint64_t a1, uint64_t a2, void *a3, const __CFDictionary *a4)
{
  if (a3)
  {
    v7 = a3[543];
    if (v7)
    {
      v7(a3, a2, a3[544], a4);
    }

    [+[WiFiRoamManager sharedWiFiRoamManager](WiFiRoamManager "sharedWiFiRoamManager")];
    v8 = a3[15];

    sub_100015130(v8, a4);
  }
}

void sub_100014BD8(int a1, uint64_t a2, uint64_t a3, CFDictionaryRef theDict)
{
  v38 = 0;
  v37 = 0;
  v36 = 0;
  value = 0;
  v35 = 0;
  v32 = 0;
  number = 0;
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  if (a3 && theDict)
  {
    valuePtr = -86;
    v7 = CFDictionaryGetValue(theDict, @"ASR_SESSION_STATE");
    if (v7)
    {
      CFNumberGetValue(v7, kCFNumberSInt8Type, &valuePtr);
      v8 = *(a3 + 2472);
      v9 = v8;
      if (v8 != valuePtr)
      {
        v10 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"11ax ASR session: new-state = 0x%x, prev-state = 0x%x", valuePtr, *(a3 + 2472)}];
        }

        objc_autoreleasePoolPop(v10);
        v9 = *(a3 + 2472);
        v8 = valuePtr;
      }

      if (!v9 && v8)
      {
        *(a3 + 2480) = CFAbsoluteTimeGetCurrent();
        v11 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:"11ax ASR session: STARTED"];
        }

        objc_autoreleasePoolPop(v11);
        v9 = *(a3 + 2472);
        v8 = valuePtr;
      }

      if (v9 && !v8)
      {
        v12 = CFAbsoluteTimeGetCurrent() - *(a3 + 2480);
        v13 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"11ax ASR session: duration = %f seconds", *&v12}];
        }

        objc_autoreleasePoolPop(v13);
        sub_100147A7C(v12);
        LOBYTE(v8) = valuePtr;
      }

      *(a3 + 2472) = v8;
    }

    v14 = CFDictionaryGetValue(theDict, @"RT_TRAFFIC_STATE");
    v15 = v14;
    if (v14)
    {
      CFNumberGetValue(v14, kCFNumberSInt8Type, &v38 + 1);
    }

    ValueIfPresent = CFDictionaryGetValueIfPresent(theDict, @"QUAL_SCORE", &value);
    v17 = 0;
    if (ValueIfPresent)
    {
      v18 = 0;
      if (value)
      {
        if (CFDictionaryGetValueIfPresent(value, @"CHANQUAL_SCORE", &number) && number)
        {
          CFNumberGetValue(number, kCFNumberSInt8Type, &v38);
        }

        if (CFDictionaryGetValueIfPresent(value, @"TX_LATENCY_SCORE", &v30) && v30)
        {
          CFNumberGetValue(v30, kCFNumberSInt8Type, &v37 + 1);
        }

        if (CFDictionaryGetValueIfPresent(value, @"RX_LATENCY_SCORE", &v29) && v29)
        {
          CFNumberGetValue(v29, kCFNumberSInt8Type, &v37);
        }

        if (CFDictionaryGetValueIfPresent(value, @"TX_LOSS_SCORE", &v28) && v28)
        {
          CFNumberGetValue(v28, kCFNumberSInt8Type, &v36 + 1);
        }

        if (CFDictionaryGetValueIfPresent(value, @"RX_LOSS_SCORE", &v27) && v27)
        {
          CFNumberGetValue(v27, kCFNumberSInt8Type, &v36);
        }

        if (CFDictionaryGetValueIfPresent(value, @"P95_TX_LATENCY_SCORE", &v32) && v32)
        {
          CFNumberGetValue(v32, kCFNumberSInt32Type, &v35 + 4);
        }

        v19 = CFDictionaryGetValueIfPresent(value, @"LINK_RECOMMENDATION_FLAGS", &v31);
        v17 = 0;
        v18 = v31;
        if (v19 && v31)
        {
          CFNumberGetValue(v31, kCFNumberSInt32Type, &v35);
          v18 = v31;
          v17 = v35;
        }
      }
    }

    else
    {
      v18 = 0;
    }

    v20 = 0x7FFFFFFFFFFFFFFFLL;
    if (number)
    {
      v21 = v38;
    }

    else
    {
      v21 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v30)
    {
      v22 = SHIBYTE(v37);
    }

    else
    {
      v22 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v29)
    {
      v23 = v37;
    }

    else
    {
      v23 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v28)
    {
      v24 = SHIBYTE(v36);
    }

    else
    {
      v24 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      v25 = v36;
    }

    else
    {
      v25 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v32)
    {
      v26 = SHIDWORD(v35);
    }

    else
    {
      v26 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (!v18)
    {
      v17 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      v20 = HIBYTE(v38);
    }

    [*(a3 + 2656) updateWithChQualScore:v21 txLatencyScore:v22 rxLatencyScore:v23 txLossScore:v24 rxLossScore:v25 txLatencyP95:v26 linkRecommendationFlags:v17 rtTrafficStatus:v20 forInterface:a2];
  }
}

void sub_100014F88(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  if (a1)
  {
    if (a3)
    {
      if (*(a1 + 208) && (v6 = CFDictionaryGetValue(*(a1 + 216), @"recommendationFlags")) != 0)
      {
        v7 = v6;
        MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, a3);
        v9 = MutableCopy;
        if (MutableCopy)
        {
          Value = CFDictionaryGetValue(MutableCopy, @"QUAL_SCORE");
          v11 = Value ? CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, Value) : CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          v12 = v11;
          if (v11)
          {
            CFDictionarySetValue(v11, @"LINK_RECOMMENDATION_FLAGS", v7);
            CFDictionarySetValue(v9, @"QUAL_SCORE", v12);
            v13 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: hi-jacking real-time session recommendation flags: %@", "__WiFiDeviceRealtimeSessionEvent", v9}];
            }

            objc_autoreleasePoolPop(v13);
            CFRelease(v12);
          }
        }
      }

      else
      {
        v9 = 0;
      }

      v14 = *(a1 + 4200);
      if (v14)
      {
        if (v9)
        {
          v15 = v9;
        }

        else
        {
          v15 = a3;
        }

        v14(a1, a2, *(a1 + 4208), v15);
      }

      if (v9)
      {

        CFRelease(v9);
      }
    }

    else
    {
      sub_1001566D4();
    }
  }

  else
  {
    sub_100156740();
  }
}

void sub_100015130(uint64_t a1, CFDictionaryRef theDict)
{
  valuePtr = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  number = 0;
  value = 0;
  if (a1 && theDict)
  {
    if (*(a1 + 64))
    {
      v4 = CFDictionaryGetValue(theDict, @"RT_TRAFFIC_STATE");
      if (v4)
      {
        CFNumberGetValue(v4, kCFNumberSInt8Type, &valuePtr + 1);
      }

      ValueIfPresent = CFDictionaryGetValueIfPresent(theDict, @"QUAL_SCORE", &value);
      v6 = value;
      if (ValueIfPresent && value)
      {
        if (CFDictionaryGetValueIfPresent(value, @"CHANQUAL_SCORE", &number) && number)
        {
          CFNumberGetValue(number, kCFNumberSInt8Type, &valuePtr);
        }

        if (CFDictionaryGetValueIfPresent(value, @"TX_LATENCY_SCORE", &number) && number)
        {
          CFNumberGetValue(number, kCFNumberSInt8Type, &v42 + 1);
        }

        if (CFDictionaryGetValueIfPresent(value, @"RX_LATENCY_SCORE", &number) && number)
        {
          CFNumberGetValue(number, kCFNumberSInt8Type, &v42);
        }

        if (CFDictionaryGetValueIfPresent(value, @"TX_LOSS_SCORE", &number) && number)
        {
          CFNumberGetValue(number, kCFNumberSInt8Type, &v41 + 1);
        }

        if (CFDictionaryGetValueIfPresent(value, @"RX_LOSS_SCORE", &number) && number)
        {
          CFNumberGetValue(number, kCFNumberSInt8Type, &v41);
        }

        if (CFDictionaryGetValueIfPresent(value, @"P95_TX_LATENCY_SCORE", &number) && number)
        {
          CFNumberGetValue(number, kCFNumberSInt32Type, &v40 + 4);
        }

        if (CFDictionaryGetValueIfPresent(value, @"LINK_RECOMMENDATION_FLAGS", &number) && number)
        {
          CFNumberGetValue(number, kCFNumberSInt32Type, &v40);
        }

        v6 = value;
      }

      if (v6)
      {
        v7 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: channel score: chq=%u, tx-lat=%u, rx-lat=%u, tx-loss=%u, rx-loss=%u, txPer=%.1f%%, p95-lat=%u, RT=0x%x, link-recommendation=0x%x\n", "WiFiLQAMgrLinkRecommendationNotify", valuePtr, SHIBYTE(v42), v42, SHIBYTE(v41), v41, *(a1 + 2968), HIDWORD(v40), HIBYTE(valuePtr), v40}];
        }

        objc_autoreleasePoolPop(v7);
        *(a1 + 2961) = valuePtr;
        *(a1 + 2962) = HIBYTE(v42);
        *(a1 + 2963) = v42;
        *(a1 + 2964) = HIBYTE(v41);
        *(a1 + 2965) = v41;
        *(a1 + 2960) = HIBYTE(valuePtr);
        v8 = v40;
        *(a1 + 2952) = HIDWORD(v40);
        *(a1 + 2956) = v8;
        Current = CFAbsoluteTimeGetCurrent();
        v9 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &Current);
        if (!v9)
        {
          v31 = objc_autoreleasePoolPush();
          v32 = sub_10000FBF8();
          if (v32)
          {
            [v32 WFLog:4 message:{"%s, LQAManager: CFNumberCreate for timestamp failed", "WiFiLQAMgrLinkRecommendationNotify"}];
          }

          v14 = 0;
          goto LABEL_70;
        }

        v10 = sub_10000836C();
        MutableCopy = CFDictionaryCreateMutableCopy(v10, v11, v12);
        v14 = MutableCopy;
        if (!value)
        {
          v33 = objc_autoreleasePoolPush();
          v34 = sub_10000FBF8();
          if (v34)
          {
            [v34 WFLog:4 message:{"%s, LQAManager: CFDictionaryCreateMutableCopy failed", "WiFiLQAMgrLinkRecommendationNotify", v35}];
          }

          goto LABEL_70;
        }

        CFDictionaryAddValue(MutableCopy, @"kWiFiLqaMgrLqmSampleLocalTimestamp", v9);
        CFArrayInsertValueAtIndex(*(a1 + 64), 0, v14);
        Count = CFArrayGetCount(*(a1 + 64));
        v16 = CFAbsoluteTimeGetCurrent();
        v36 = 0.0;
        if (Count >= 7)
        {
          v17 = v16;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 64), Count - 1);
            if (!ValueAtIndex)
            {
              break;
            }

            v19 = CFDictionaryGetValue(ValueAtIndex, @"kWiFiLqaMgrLqmSampleLocalTimestamp");
            if (!v19)
            {
              v25 = objc_autoreleasePoolPush();
              v26 = sub_10000FBF8();
              if (v26)
              {
                [v26 WFLog:4 message:{"%s ChanQualityTimestampNumRef numberRef is NULL at index:%ld!", "WiFiLQAMgrLinkRecommendationNotify", Count - 1}];
              }

              goto LABEL_70;
            }

            CFNumberGetValue(v19, kCFNumberDoubleType, &v36);
            if (v36 == 0.0)
            {
              v27 = objc_autoreleasePoolPush();
              v28 = sub_10000FBF8();
              if (v28)
              {
                [v28 WFLog:4 message:{"%s ChanQualityTimestampValue Value is NULL at index:%ld!", "WiFiLQAMgrLinkRecommendationNotify", Count - 1}];
              }

              goto LABEL_70;
            }

            v16 = v17 - v36;
            if (Count > 0x1D || v16 > 6.0)
            {
              CFArrayRemoveValueAtIndex(*(a1 + 64), Count - 1);
              Count = CFArrayGetCount(*(a1 + 64));
              if (Count > 6)
              {
                continue;
              }
            }

            goto LABEL_48;
          }

          v23 = objc_autoreleasePoolPush();
          v24 = sub_10000FBF8();
          if (v24)
          {
            [v24 WFLog:4 message:{"%s, LQAManager: channel quality Report at %ld index is NULL", "WiFiLQAMgrLinkRecommendationNotify", Count - 1}];
          }

LABEL_70:
          objc_autoreleasePoolPop(a1);
          if (!v9)
          {
LABEL_60:
            if (v14)
            {
              CFRelease(v14);
            }

            return;
          }

LABEL_59:
          CFRelease(v9);
          goto LABEL_60;
        }
      }

      else
      {
        v14 = 0;
        v9 = 0;
        v16 = 0.0;
        *(a1 + 2952) = 0u;
      }

LABEL_48:
      if ([+[WiFiUserInteractionMonitor isRealTimeAppActive:v16]])
      {
        v21 = 0;
      }

      else
      {
        v21 = sub_10000A7CC(*(a1 + 48)) || *(a1 + 2842) || *(a1 + 2960) == 0;
      }

      v22 = [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor isInHomeScreen];
      if (v21 && ((v22 & 1) != 0 || *(a1 + 2804) > -70))
      {
        sub_10001577C(a1);
        if (!v9)
        {
          goto LABEL_60;
        }
      }

      else
      {
        sub_100034774(a1);
        if (!v9)
        {
          goto LABEL_60;
        }
      }

      goto LABEL_59;
    }

    v29 = objc_autoreleasePoolPush();
    v30 = sub_10000FBF8();
    if (v30)
    {
      [v30 WFLog:4 message:{"%s, LQAManager: NULL channel quality metrics array", "WiFiLQAMgrLinkRecommendationNotify"}];
    }

    objc_autoreleasePoolPop(a1);
  }
}

void sub_10001577C(uint64_t a1)
{
  if (!*(a1 + 2994) && *(a1 + 2804))
  {
    v2 = ![+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor isRealTimeAppActive]&& (sub_10000A7CC(*(a1 + 48)) || *(a1 + 2842) || *(a1 + 2960) == 0);
    v3 = [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor isInHomeScreen];
    if (v2 && ((v3 & 1) != 0 || *(a1 + 2804) >= -69))
    {
      *(a1 + 3216) = 0;
      if (!+[WiFiAIRAgent sharedInstance](WiFiAIRAgent, "sharedInstance") || ![+[WiFiAIRAgent isInterfaceRankingInProgress] sharedInstance]
      {
        v4 = sub_1000158B8(a1, 0, 0);
        if (v4)
        {
          v5 = v4;
          v6 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s: ERROR: %d Failed to disable rapid LQM", "__WiFiLQAMgrSetDefaultLQMInterval", v5}];
          }

          objc_autoreleasePoolPop(v6);
        }
      }
    }
  }
}

uint64_t sub_1000158B8(uint64_t a1, uint64_t a2, const __CFString *a3)
{
  if (!a1)
  {
    sub_10014384C();
    return 4294963396;
  }

  if (!*(a1 + 116))
  {
    return 4294963393;
  }

  if (*(a1 + 112) == a2)
  {
    if (!a3)
    {
      return 0;
    }

    v6 = *(a1 + 120);
    v7 = sub_10000715C(a3);
    result = CFSetContainsValue(v6, v7);
    if (a2)
    {
      if (!result)
      {
        v9 = *(a1 + 120);
        v10 = sub_10000715C(a3);
        CFSetAddValue(v9, v10);
        v11 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Added '%@'", "WiFiLQAMgrSetLQMInterval", sub_10000715C(a3)}];
        }

LABEL_45:
        objc_autoreleasePoolPop(v11);
        v25 = objc_autoreleasePoolPush();
        v26 = objc_alloc_init(NSMutableString);
        valuePtr = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v27 = *(a1 + 120);
        v28 = [v27 countByEnumeratingWithState:&valuePtr objects:value count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v41;
          do
          {
            for (i = 0; i != v29; i = i + 1)
            {
              if (*v41 != v30)
              {
                objc_enumerationMutation(v27);
              }

              [v26 appendString:*(*(&valuePtr + 1) + 8 * i)];
              [v26 appendString:@" "];
            }

            v29 = [v27 countByEnumeratingWithState:&valuePtr objects:value count:16];
          }

          while (v29);
        }

        objc_autoreleasePoolPop(v25);
        v32 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: %ld Rapid LQM clients [%@] \n", "WiFiLQAMgrSetLQMInterval", CFSetGetCount(*(a1 + 120)), v26}];
        }

        objc_autoreleasePoolPop(v32);
        if (v26)
        {
          CFRelease(v26);
        }
      }

      return 0;
    }

LABEL_42:
    if (!result)
    {
      return result;
    }

    v23 = *(a1 + 120);
    v24 = sub_10000715C(a3);
    CFSetRemoveValue(v23, v24);
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Removed '%@'", "WiFiLQAMgrSetLQMInterval", sub_10000715C(a3)}];
    }

    goto LABEL_45;
  }

  if (a2 == 1)
  {
    LODWORD(valuePtr) = 0;
    value[0] = 0;
    v14 = *(a1 + 24);
    if (v14)
    {
      if (CFArrayGetCount(v14))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), 0);
        if (ValueAtIndex && CFDictionaryGetValueIfPresent(ValueAtIndex, @"RSSI", value) && value[0])
        {
          CFNumberGetValue(value[0], kCFNumberIntType, &valuePtr);
          v16 = 0;
          v17 = 1;
          if (a3 && valuePtr >= -69)
          {
            v18 = sub_10014B420(a3);
            v17 = v18 != 0;
            v16 = v18 == 0;
          }

          if (a3 && v17 && *(a1 + 136) != 0.0 && CFAbsoluteTimeGetCurrent() - *(a1 + 136) <= 10.0)
          {
            v33 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"ERROR: %s: Too frequent LQM interval change not allowed", "__WiFiLQAMgrIsIntervalChangeAllowed"}];
            }

            objc_autoreleasePoolPop(v33);
          }

          else if (!v16)
          {
            v34 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: Enabling Rapid LQM", "WiFiLQAMgrSetLQMInterval"}];
            }

            objc_autoreleasePoolPop(v34);
            result = sub_10013CFC8(a1, 1.0);
            if (a3 && !result)
            {
              v35 = *(a1 + 120);
              v36 = sub_10000715C(a3);
              if (!CFSetContainsValue(v35, v36))
              {
                v37 = *(a1 + 120);
                v38 = sub_10000715C(a3);
                CFSetAddValue(v37, v38);
                v39 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: Added '%@'", "WiFiLQAMgrSetLQMInterval", sub_10000715C(a3)}];
                }

                objc_autoreleasePoolPop(v39);
              }

              return 0;
            }

            return result;
          }
        }
      }

      else
      {
        sub_1001436F4();
      }
    }

    else
    {
      sub_100143760();
    }

    v19 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: ERROR: Interval change not allowed", "WiFiLQAMgrSetLQMInterval"}];
    }

    objc_autoreleasePoolPop(v19);
    return 4294963390;
  }

  if (a2)
  {
    v20 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: ERROR: %d is invalid LQM interval", "WiFiLQAMgrSetLQMInterval", a2}];
    }

    objc_autoreleasePoolPop(v20);
    return 4294963396;
  }

  v12 = *(a1 + 120);
  if (a3)
  {
    v13 = sub_10000715C(a3);
    result = CFSetContainsValue(v12, v13);
    if (!result)
    {
      goto LABEL_39;
    }

    if (CFSetGetCount(*(a1 + 120)) != 1)
    {
LABEL_38:
      result = 0;
LABEL_39:
      if (!a3)
      {
        return result;
      }

      goto LABEL_40;
    }
  }

  else if (CFSetGetCount(*(a1 + 120)))
  {
    return 0;
  }

  if (*(a1 + 3216))
  {
    goto LABEL_38;
  }

  sub_1001437CC(a1, value);
  result = LODWORD(value[0]);
  if (a3)
  {
LABEL_40:
    if (result)
    {
      return result;
    }

    v21 = *(a1 + 120);
    v22 = sub_10000715C(a3);
    result = CFSetContainsValue(v21, v22);
    goto LABEL_42;
  }

  return result;
}

void sub_100015E28(void *value@<X0>, unsigned int a2@<W8>)
{
  v5 = *(v3 + 8 * a2);

  CFDictionaryAddValue(v2, v5, value);
}

id sub_100015E94@<X0>(void *a1@<X0>, int w8_0@<W8>)
{

  return [a1 numberWithBool:w8_0 != 0];
}

void sub_100015ED0(uint64_t a1)
{
  ++*(a1 + 1600);
  p_cache = &OBJC_METACLASS___WiFiUserNotificationManager.cache;
  if (*(a1 + 1408))
  {
    goto LABEL_227;
  }

  if (MKBUserUnlockedSinceBoot())
  {
    v3 = MKBGetDeviceLockState() == 1;
    v4 = objc_autoreleasePoolPush();
    v5 = off_100298C40;
    if (off_100298C40)
    {
      [+[NSProcessInfo processInfo](NSProcessInfo systemUptime];
      [v5 WFLog:3 message:{"%s: First unlock polled %.2fs since boot", "__WiFiManagerHeartBeatFire", v6}];
    }

    objc_autoreleasePoolPop(v4);
    sub_10002B170(a1, v3, 1);
  }

  if (*(a1 + 1408))
  {
LABEL_227:
    if (*(a1 + 248) <= 0x13uLL)
    {
      if ([+[WiFiUserInteractionMonitor isSetupCompleted] sharedInstance]
      {
        v7 = *(a1 + 232);
        if (!v7 || !CFArrayGetCount(v7))
        {
          sub_100072D44(a1);
          v8 = *(a1 + 232);
          if (v8 && CFArrayGetCount(v8))
          {
            v9 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: Setting %d known networks", "__WiFiManagerHeartBeatFire", CFArrayGetCount(*(a1 + 232))}];
            }

            objc_autoreleasePoolPop(v9);
            sub_1000731D0(a1, *(a1 + 232));
          }

          ++*(a1 + 248);
        }
      }
    }

    if (*(a1 + 1408))
    {
      if (*(a1 + 256) <= 0x13uLL)
      {
        v10 = *(a1 + 360);
        if (!v10 || !CFArrayGetCount(v10))
        {
          sub_10016B54C(a1, a1 + 360, (a1 + 256));
        }
      }
    }
  }

  context[0] = a1;
  context[1] = 0xAAAAAAAA0000003ELL;
  context[2] = 0;
  context[3] = 1;
  context[4] = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
  [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor runPeriodicTasks];
  if (*(a1 + 1216) || *(a1 + 1217))
  {
    v11 = *(a1 + 2760);
    if (v11 && (v12 = [v11 cellularICCID]) != 0)
    {
      v13 = v12;
      v14 = sub_10008925C(a1);
      if (v14)
      {
        v15 = v14;
        MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v14);
        CFRelease(v15);
      }

      else
      {
        MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      }

      Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      Value = CFDictionaryGetValue(MutableCopy, v13);
      if (Value)
      {
        v19 = Value;
        if (CFArrayGetCount(Value) >= 1)
        {
          v20 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v19, v20);
            if (ValueAtIndex)
            {
              v22 = ValueAtIndex;
              v23 = CFDictionaryGetValue(ValueAtIndex, @"DataUsageDate");
              if (!v23 || (v24 = v23, Current = CFAbsoluteTimeGetCurrent(), Current - CFDateGetAbsoluteTime(v24) <= 5356800.0))
              {
                v26 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v22);
                if (v26)
                {
                  v27 = v26;
                  CFArrayAppendValue(Mutable, v26);
                  CFRelease(v27);
                }
              }
            }

            ++v20;
          }

          while (v20 < CFArrayGetCount(v19));
        }
      }

      if (_os_feature_enabled_impl())
      {
        v28 = CFDictionaryGetValue(MutableCopy, @"PHClients");
        p_cache = &OBJC_METACLASS___WiFiUserNotificationManager.cache;
        if (v28)
        {
          v29 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v28);
        }

        else
        {
          v29 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        }

        v30 = v29;
      }

      else
      {
        v30 = 0;
        p_cache = (&OBJC_METACLASS___WiFiUserNotificationManager + 16);
      }

      v95 = a1;
      v96 = 0xAAAAAAAA00000064;
      v97 = Mutable;
      v98 = 0;
      v99 = v30;
      CFSetApplyFunction(*(a1 + 112), sub_100003B88, &v95);
      CFDictionarySetValue(MutableCopy, v13, Mutable);
      if (v30)
      {
        CFDictionarySetValue(MutableCopy, @"PHClients", v30);
        CFRelease(v30);
      }

      [+[NSUserDefaults standardUserDefaults](NSUserDefaults setObject:"setObject:forKey:" forKey:MutableCopy, @"InterfaceDataUsageV1"];
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }
    }

    else
    {
      sub_10016B604();
    }
  }

  if (*(a1 + 2329))
  {
    if (!*(a1 + 26) || *(a1 + 2793))
    {
LABEL_59:
      if (*(a1 + 2793) || !*(a1 + 26))
      {
        v36 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v37 = "disabled";
          if (*(a1 + 2793))
          {
            v38 = "disabled";
          }

          else
          {
            v38 = "enabled";
          }

          if (*(a1 + 26))
          {
            v37 = "enabled";
          }

          [off_100298C40 WFLog:4 message:{"%s: link recovery is currently %s and auto-join is currently %s, hence home transition is suppressed", "__WiFiManagerHeartBeatFire", v38, v37}];
        }

        objc_autoreleasePoolPop(v36);
      }

      goto LABEL_69;
    }

    v31 = objc_autoreleasePoolPush();
    v32 = +[NSDate date];
    v33 = v32;
    if (*(a1 + 2336))
    {
      [(NSDate *)v32 timeIntervalSinceDate:?];
      if (v34 <= *(a1 + 2344))
      {
        goto LABEL_58;
      }

      v35 = *(a1 + 2336);
    }

    else
    {
      v35 = 0;
    }

    *(a1 + 2336) = [(NSDate *)v33 copy];
    if (_os_feature_enabled_impl())
    {
      sub_1000197A4(a1, 28);
    }

    else
    {
      v95 = a1;
      v96 = 0xAAAAAAAA0000004FLL;
      v97 = 0;
      v98 = 1;
      v99 = 0;
      CFSetApplyFunction(*(a1 + 112), sub_100003B88, &v95);
    }

LABEL_58:
    objc_autoreleasePoolPop(v31);
    if (!*(a1 + 2329))
    {
      goto LABEL_69;
    }

    goto LABEL_59;
  }

LABEL_69:
  if (MGGetBoolAnswer() && !*(a1 + 2528) && *(a1 + 2520) != 0.0 && *(a1 + 2516))
  {
    v41 = CFAbsoluteTimeGetCurrent();
    v42 = *(a1 + 2520);
    v43 = v41 <= v42 ? v42 - v41 : v41 - v42;
    if (!*(a1 + 322) || v43 > 1800.0)
    {
      v44 = *(a1 + 1584);
      if ([v44 isMegaWiFiProfileInstalled])
      {
        [v44 uninstallMegaWiFiProfile];
        v45 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: MegaWiFiProfile has been uninstalled, charging=%d timeElapsed=%d", "__WiFiManagerHeartBeatFire", *(a1 + 322), v43}];
        }

        objc_autoreleasePoolPop(v45);
      }

      *(a1 + 2520) = 0;
      *(a1 + 2516) = 0;
    }
  }

  if ([objc_msgSend(p_cache + 83 "sharedInstance")] && !*(a1 + 496) && MKBUserUnlockedSinceBoot() == 1)
  {
    *(a1 + 496) = 1;
    v39 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation : kWiFiPrivateMacFirstUnlockAfterSWUpgrade is : <%hhu>", "__WiFiManagerHeartBeatFire", *(a1 + 496)}];
    }

    objc_autoreleasePoolPop(v39);
  }

  [*(a1 + 960) checkForTimeout];
  v40 = *(a1 + 1600);
  if (__ROR8__(0xAAAAAAAAAAAAAAABLL * v40, 1) <= 0x2AAAAAAAAAAAAAAAuLL)
  {
    sub_1000241AC(a1, 1, 0, 0);
    v95 = a1;
    v96 = 0xAAAAAAAA0000003DLL;
    v97 = 0;
    v98 = 1;
    v99 = 0;
    CFSetApplyFunction(*(a1 + 112), sub_100003B88, &v95);
    v40 = *(a1 + 1600);
  }

  if (__ROR8__(0xAAAAAAAAAAAAAAABLL * v40, 2) <= 0x1555555555555555uLL)
  {
    sub_10003480C();
    if (!v46)
    {
      sub_10016B664(a1);
    }

    v47 = CFAbsoluteTimeGetCurrent();
    v48 = CFDateCreate(kCFAllocatorDefault, v47);
    if (+[WiFiSoftApUsageMonitor sharedInstance])
    {
      v49 = [+[WiFiSoftApUsageMonitor sharedInstance](WiFiSoftApUsageMonitor statsDictionary];
      v50 = CFDictionaryGetValue(v49, kSoftApStatsValid);
      if (v50)
      {
        if (v50 == kCFBooleanTrue)
        {
          v51 = CFDictionaryGetValue(v49, kSoftApOldestActiveTime);
          if (v51)
          {
            if (CFDateGetTimeIntervalSinceDate(v48, v51) >= 1209600.0)
            {
              [+[WiFiSoftApUsageMonitor sharedInstance](WiFiSoftApUsageMonitor resetStats];
            }
          }
        }
      }
    }

    if (v48)
    {
      CFRelease(v48);
    }

    v52 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Check for networks with deleted keychain password, count: %ld", "WiFiManagerCheckDeletedPasswordNetworks", CFArrayGetCount(*(a1 + 2768))}];
    }

    objc_autoreleasePoolPop(v52);
    if (CFArrayGetCount(*(a1 + 2768)) >= 1)
    {
      v53 = CFArrayGetValueAtIndex(*(a1 + 2768), 0);
      v54 = objc_autoreleasePoolPush();
      if (v53)
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Checking network %@ to see if we need to prompt for the missing password TTR", "WiFiManagerCheckDeletedPasswordNetworks", sub_10000A878(v53)}];
        }

        objc_autoreleasePoolPop(v54);
        v55 = sub_100020030(a1);
        v56 = v55;
        if (v55)
        {
          v57 = CFArrayGetValueAtIndex(v55, 0);
          if (v57)
          {
            v58 = sub_1000C4450(v57, v53);
            if (v58)
            {
              v59 = v58;
              v60 = sub_10002A1CC(v53);
              if (sub_10009F2A4(v53) && v60)
              {
                v61 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: Password for %@ is now present in the keychain. No need to remember it for missing password purposes", "WiFiManagerCheckDeletedPasswordNetworks", sub_10000A878(v53)}];
                }

                objc_autoreleasePoolPop(v61);
                CFArrayRemoveAllValues(*(a1 + 2768));
              }

              else
              {
                v63 = CFAbsoluteTimeGetCurrent();
                v64 = CFDateCreate(kCFAllocatorDefault, v63);
                v65 = sub_1000A13F8(v53);
                v66 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: Checking password mod date %@ against current time", "WiFiManagerCheckDeletedPasswordNetworks", v65}];
                }

                objc_autoreleasePoolPop(v66);
                if (v65 && CFDateGetTimeIntervalSinceDate(v64, v65) > 900.0)
                {
                  v67 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: %@ is present in known networks and its password has not been in the keychain for > %d seconds in the keychain. Prompting user for TTR", "WiFiManagerCheckDeletedPasswordNetworks", sub_10000A878(v53), 900}];
                  }

                  objc_autoreleasePoolPop(v67);
                  *(a1 + 2776) = v53;
                  if (sub_10010D744(a1 + 2776))
                  {
                    v68 = objc_autoreleasePoolPush();
                    if (off_100298C40)
                    {
                      [off_100298C40 WFLog:3 message:{"%s: User accepted the TTR prompt. Removing all entries from the networksWithDeletedKeychainPassword array", "WiFiManagerCheckDeletedPasswordNetworks"}];
                    }

                    objc_autoreleasePoolPop(v68);
                    CFArrayRemoveAllValues(*(a1 + 2768));
                  }
                }

                p_cache = (&OBJC_METACLASS___WiFiUserNotificationManager + 16);
                if (v64)
                {
                  CFRelease(v64);
                }
              }

LABEL_141:
              v69 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: End of deleted password network checks, network count: %ld", "WiFiManagerCheckDeletedPasswordNetworks", CFArrayGetCount(*(a1 + 2768))}];
              }

              objc_autoreleasePoolPop(v69);
              if (v56)
              {
                CFRelease(v56);
              }

              if (v60)
              {
                CFRelease(v60);
              }

              if (v59)
              {
                CFRelease(v59);
              }

              if (*(a1 + 2792))
              {
                goto LABEL_182;
              }

              v70 = CFStringCreateWithCString(kCFAllocatorDefault, "", 0x8000100u);
              LOBYTE(v95) = 0;
              LOBYTE(context[0]) = 0;
              v71 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: Start", "WiFiManagerMigrateWiFiKeychainEntries"}];
              }

              objc_autoreleasePoolPop(v71);
              if (*(a1 + 2792))
              {
                v74 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: Empty account name password migration already completed", "WiFiManagerMigrateWiFiKeychainEntries"}];
                }

                v93 = 0;
              }

              else
              {
                v72 = sub_1000A59B0(v70, &v95, 0.1);
                v73 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: passwordFetchTimedOut: %d", "WiFiManagerMigrateWiFiKeychainEntries", v95}];
                }

                objc_autoreleasePoolPop(v73);
                if (v95)
                {
                  v84 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: Empty account name password fetch timed out", "WiFiManagerMigrateWiFiKeychainEntries"}];
                  }

                  v85 = 0;
                  v83 = 0;
                  goto LABEL_175;
                }

                v74 = objc_autoreleasePoolPush();
                if (v72)
                {
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: emptyStringAccountPassword is: %s", "WiFiManagerMigrateWiFiKeychainEntries", "non-null"}];
                  }

                  objc_autoreleasePoolPop(v74);
                  v75 = *(a1 + 232);
                  if (!v75 || !CFArrayGetCount(v75))
                  {
                    v83 = 0;
                    *(a1 + 2792) = 0;
LABEL_177:
                    CFRelease(v72);
LABEL_178:
                    if (v83)
                    {
                      CFRelease(v83);
                    }

                    if (!v70)
                    {
                      goto LABEL_182;
                    }

LABEL_181:
                    CFRelease(v70);
LABEL_182:
                    if (*(a1 + 1217) && [*(a1 + 1296) count] && ((objc_msgSend(objc_msgSend(p_cache + 83, "sharedInstance"), "isInHomeScreen") & 1) != 0 || *(a1 + 1392) != 1 || *(a1 + 808)))
                    {
                      v86 = [*(a1 + 1296) copy];
                      v95 = _NSConcreteStackBlock;
                      v96 = 3221225472;
                      v97 = sub_100093840;
                      v98 = &unk_100260CF8;
                      v99 = a1;
                      [v86 enumerateKeysAndObjectsUsingBlock:&v95];
                    }

                    return;
                  }

                  Count = CFArrayGetCount(*(a1 + 232));
                  if (Count < 1)
                  {
                    v83 = 0;
LABEL_172:
                    v84 = objc_autoreleasePoolPush();
                    if (off_100298C40)
                    {
                      [off_100298C40 WFLog:3 message:{"%s: No known network matched criteria for empty-account migration", "WiFiManagerMigrateWiFiKeychainEntries"}];
                    }

                    v85 = 1;
                  }

                  else
                  {
                    v77 = Count;
                    v78 = 0;
                    v79 = 1;
                    while (1)
                    {
                      v80 = CFArrayGetValueAtIndex(*(a1 + 232), v78);
                      if (v80)
                      {
                        v81 = v80;
                        if (sub_1000A1E74(v80) == 1 && sub_10009F2A4(v81))
                        {
                          v82 = sub_10000A878(v81);
                          if (CFStringCompare(v82, v70, 0) == kCFCompareEqualTo)
                          {
                            break;
                          }
                        }
                      }

                      v79 = ++v78 < v77;
                      if (v77 == v78)
                      {
                        v83 = 0;
LABEL_169:
                        p_cache = (&OBJC_METACLASS___WiFiUserNotificationManager + 16);
                        goto LABEL_172;
                      }
                    }

                    v87 = objc_autoreleasePoolPush();
                    if (off_100298C40)
                    {
                      [off_100298C40 WFLog:3 message:{"%s: Found network profile with empty string account name: %@", "WiFiManagerMigrateWiFiKeychainEntries", sub_10002A2C0(v81)}];
                    }

                    objc_autoreleasePoolPop(v87);
                    v88 = objc_autoreleasePoolPush();
                    if (off_100298C40)
                    {
                      [off_100298C40 WFLog:3 message:{"%s: Checking if empty-string account password has already been migrated", "WiFiManagerMigrateWiFiKeychainEntries"}];
                    }

                    objc_autoreleasePoolPop(v88);
                    v83 = sub_10009F954(v81, &v95, 0.1);
                    v89 = objc_autoreleasePoolPush();
                    if (off_100298C40)
                    {
                      v90 = "non-null";
                      if (!v83)
                      {
                        v90 = "null";
                      }

                      [off_100298C40 WFLog:3 message:{"%s: attempted migrated password fetch returned, passwordFetchTimedOut: %d, migratedPassword is: %s", "WiFiManagerMigrateWiFiKeychainEntries", v95, v90}];
                    }

                    objc_autoreleasePoolPop(v89);
                    if (v95)
                    {
                      v91 = objc_autoreleasePoolPush();
                      if (off_100298C40)
                      {
                        [off_100298C40 WFLog:3 message:{"%s: password fetch for %@ timed out", "WiFiManagerMigrateWiFiKeychainEntries", sub_10002A2C0(v81)}];
                      }

                      objc_autoreleasePoolPop(v91);
                      if (!v79)
                      {
                        goto LABEL_169;
                      }

                      goto LABEL_200;
                    }

                    if (v83)
                    {
                      v84 = objc_autoreleasePoolPush();
                      if (off_100298C40)
                      {
                        [off_100298C40 WFLog:3 message:{"%s: keychain entry for %@ already present, migration complete", "WiFiManagerMigrateWiFiKeychainEntries", sub_10002A2C0(v81)}];
                      }
                    }

                    else
                    {
                      sub_10009FAEC(v81, v72, context, 0.1);
                      v92 = LOBYTE(context[0]);
                      v84 = objc_autoreleasePoolPush();
                      v83 = off_100298C40;
                      if (v92)
                      {
                        if (off_100298C40)
                        {
                          [off_100298C40 WFLog:3 message:{"%s: Attempted password set/migration for %@ timed out", "WiFiManagerMigrateWiFiKeychainEntries", sub_10002A2C0(v81)}];
                        }

                        objc_autoreleasePoolPop(v84);
                        v83 = 0;
                        if (!v79)
                        {
                          goto LABEL_169;
                        }

LABEL_200:
                        v85 = 0;
                        p_cache = (&OBJC_METACLASS___WiFiUserNotificationManager + 16);
LABEL_176:
                        *(a1 + 2792) = v85;
                        if (!v72)
                        {
                          goto LABEL_178;
                        }

                        goto LABEL_177;
                      }

                      if (off_100298C40)
                      {
                        [off_100298C40 WFLog:3 message:{"%s: password for %@ successfully migrated", "WiFiManagerMigrateWiFiKeychainEntries", sub_10002A2C0(v81)}];
                        v83 = 0;
                      }
                    }

                    v85 = 1;
                    p_cache = (&OBJC_METACLASS___WiFiUserNotificationManager + 16);
                  }

LABEL_175:
                  objc_autoreleasePoolPop(v84);
                  goto LABEL_176;
                }

                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"%s: No AirPort keychain entry with an empty account name. Migration complete.", "WiFiManagerMigrateWiFiKeychainEntries"}];
                }

                v93 = 1;
              }

              objc_autoreleasePoolPop(v74);
              *(a1 + 2792) = v93;
              if (!v70)
              {
                goto LABEL_182;
              }

              goto LABEL_181;
            }

            v62 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: Network %@ is no longer in the known networks list. No need to remember it for missing password purposes. ", "WiFiManagerCheckDeletedPasswordNetworks", sub_10000A878(v53)}];
            }

            objc_autoreleasePoolPop(v62);
            CFArrayRemoveAllValues(*(a1 + 2768));
          }

          else
          {
            sub_10016B6A8();
          }
        }

        else
        {
          sub_10016B708();
        }

LABEL_140:
        v60 = 0;
        v59 = 0;
        goto LABEL_141;
      }

      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: null networkWithDeletedKeychainPassword", "WiFiManagerCheckDeletedPasswordNetworks"}];
      }

      objc_autoreleasePoolPop(v54);
    }

    v56 = 0;
    goto LABEL_140;
  }
}

void sub_100016F64(uint64_t a1)
{
  if (*(a1 + 6660))
  {
    if (*(a1 + 6664) != 0.0)
    {
      v2 = CFAbsoluteTimeGetCurrent() - *(a1 + 6664);
      if (v2 >= 10.0)
      {
        v3 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Auto Join PM Assertion timeout autoJoinPMAssertionTimestamp:%f timeSincePMAssertion:%f", "WiFiDeviceManagerJoinPMAssertionExpirationHandler", *(a1 + 6664), *&v2}];
        }

        objc_autoreleasePoolPop(v3);
        v4 = *(a1 + 6672);

        sub_1000D23FC(a1, v4, 1);
      }
    }
  }
}

void sub_100017544(void *a1, CFDictionaryRef theDict)
{
  valuePtr = 0;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"CCA");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberSInt8Type, &valuePtr);
      v4 = valuePtr;
      Current = CFAbsoluteTimeGetCurrent();
      v6 = Current;
      v7 = a1 + 224;
      v8 = a1[285];
      v9 = a1[286];
      if (v8)
      {
        v10 = v9 - 1;
        if (!v9)
        {
          v10 = 29;
        }

        v11 = &v7[2 * v10];
        v13 = v11[1];
        v12 = v11 + 1;
        v14 = Current - v13;
        v15 = -(v6 - v13);
        if (v6 - v13 < 0.0)
        {
          v14 = v15;
        }

        if (v14 < 5.0)
        {
          v16 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"Too frequent(%f secs) CCA event from driver\n", v6 - *v12}];
          }

          objc_autoreleasePoolPop(v16);
          v9 = a1[286];
          v8 = a1[285];
        }
      }

      if (v9 == 30)
      {
        v9 = 0;
      }

      v17 = &v7[2 * v9];
      *v17 = v4;
      v17[1] = v6;
      if (v8 > 29)
      {
        if (v9 == a1[284])
        {
          if (v9 == 29)
          {
            v18 = 0;
          }

          else
          {
            v18 = v9 + 1;
          }

          a1[284] = v18;
        }
      }

      else
      {
        a1[285] = v8 + 1;
      }

      a1[286] = v9 + 1;
    }

    else
    {
      sub_1001564E0();
    }
  }

  else
  {
    sub_100156538();
  }
}

const __SCPreferences *sub_10001769C(void *a1, const __CFString *a2)
{
  result = sub_100017CE4(a1, a2);
  if (result)
  {
    v4 = result;
    v5 = sub_10000D83C("__WiFiManagerGetProperty");
    Value = SCPreferencesGetValue(v4, a2);

    return Value;
  }

  return result;
}

const __CFDictionary *sub_1000176F8(uint64_t a1)
{
  if (!a1)
  {
    v12 = objc_autoreleasePoolPush();
    v15 = off_100298C40;
    if (off_100298C40)
    {
      v16 = "%s: WiFiLQAMgrRef is NULL";
LABEL_10:
      v17 = v12;
      [v15 WFLog:4 message:{v16, "WiFiLQAMgrCopyCoalescedUndispatchedLQMEvent"}];
      v12 = v17;
    }

LABEL_11:
    Copy = 0;
    goto LABEL_5;
  }

  v1 = *(a1 + 160);
  if (!v1)
  {
    v12 = objc_autoreleasePoolPush();
    v15 = off_100298C40;
    if (off_100298C40)
    {
      v16 = "%s: coalescedUndispatchedLQMEvent is NULL";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, v1);
  Value = CFDictionaryGetValue(Copy, @"RSSI");
  v23 = CFDictionaryGetValue(Copy, @"CCA");
  v22 = CFDictionaryGetValue(Copy, @"SNR");
  v21 = CFDictionaryGetValue(Copy, @"TXFAIL");
  v20 = CFDictionaryGetValue(Copy, @"TXFRAMES");
  v19 = CFDictionaryGetValue(Copy, @"TXFWFRAMES");
  v3 = CFDictionaryGetValue(Copy, @"TXFWFAIL");
  v4 = CFDictionaryGetValue(Copy, @"TXRETRANS");
  v5 = CFDictionaryGetValue(Copy, @"RXFRAMES");
  v6 = CFDictionaryGetValue(Copy, @"RXRETRYFRMS");
  v7 = CFDictionaryGetValue(Copy, @"RXBEACONFRMS");
  v8 = CFDictionaryGetValue(Copy, @"RXBEACONSCHED");
  v9 = CFDictionaryGetValue(Copy, @"RXRATE");
  v10 = CFDictionaryGetValue(Copy, @"TXRATE");
  v11 = CFDictionaryGetValue(Copy, @"TXFBRATE");
  v12 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v18 = v5;
    v13 = v12;
    [off_100298C40 WFLog:3 message:{"%s: Rssi: %@ Snr:%@ Cca: %@ TxFrames: %@ TxFail: %@ BcnRx: %@ BcnSch: %@  RxFrames: %@ RxRetries: %@ TxRate: %@ RxRate: %@ FBRate: %@ TxFwFrms: %@ TxFwFail:%@ TxRetries: %@", "WiFiLQAMgrCopyCoalescedUndispatchedLQMEvent", Value, v22, v23, v20, v21, v7, v8, v18, v6, v10, v9, v11, v19, v3, v4}];
    v12 = v13;
  }

LABEL_5:
  objc_autoreleasePoolPop(v12);
  return Copy;
}

void sub_10001797C(uint64_t a1, const __CFDictionary **a2)
{
  if (a1)
  {
    if (a2)
    {
      *a2 = sub_1000176F8(*(a1 + 120));
    }

    else
    {
      sub_1001A1FC4();
    }
  }

  else
  {
    sub_1001A2030();
  }
}

void sub_1000179CC(uint64_t a1, int a2)
{
  if (a1)
  {
    if (a2 == 14)
    {
      context[0] = a1;
      context[1] = 0xAAAAAAAA00000060;
      context[2] = 0;
      context[3] = 1;
      context[4] = 0;
      CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
    }
  }

  else
  {
    sub_100170E8C();
  }
}

void sub_100017A34(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 160);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 160) = 0;
    }
  }

  else
  {
    sub_100143CE4();
  }
}

void sub_100017A70(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 120);

    sub_100017A34(v2);
  }

  else
  {
    sub_1001A209C();
  }
}

uint64_t sub_100017AA0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5)
{
  *a4 = 0;
  *a5 = 0;

  return sub_10000FFF0();
}

CFPropertyListRef sub_100017AC4(UInt8 *bytes, CFIndex length)
{
  if (!bytes || !length)
  {
    if ((bytes == 0) != (length == 0) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10014A750();
    }

    return 0;
  }

  v2 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, bytes, length, kCFAllocatorNull);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  error = 0;
  v4 = CFPropertyListCreateWithData(kCFAllocatorDefault, v2, 1uLL, 0, &error);
  if (error)
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: CFPropertyListCreateWithData returned with error %@", "_WiFiCopyUnserialized", error}];
    }

    objc_autoreleasePoolPop(v5);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10014A7D8(&error);
    }

    CFRelease(error);
  }

  CFRelease(v3);
  return v4;
}

void sub_100017C18(const void *a1, vm_offset_t *a2, mach_msg_type_number_t *a3)
{
  v5 = sub_10000EDD8(kCFAllocatorDefault, a1);
  if (v5)
  {
    v6 = v5;
    dataCnt = -1431655766;
    *a3 = CFDataGetLength(v5);
    v7 = mach_task_self_;
    BytePtr = CFDataGetBytePtr(v6);
    v9 = vm_read(v7, BytePtr, *a3, a2, &dataCnt);
    CFRelease(v6);
    if (v9)
    {
      *a2 = 0;
    }

    *a3 = dataCnt;
  }
}

vm_address_t sub_100017CC0(vm_address_t address, vm_size_t size)
{
  if (address)
  {
    if (size)
    {
      return vm_deallocate(mach_task_self_, address, size);
    }
  }

  return address;
}

void *sub_100017CE4(void *a1, CFStringRef theString1)
{
  v2 = a1;
  valuePtr = 0;
  if (a1)
  {
    if (CFStringCompare(theString1, @"isWiFiPNLMigrationComplete", 0))
    {
      v4 = sub_10000D83C("__WiFiManagerGetWiFiNetworksOrPreferencesRef");
      v5 = v2 + 133;
      Value = SCPreferencesGetValue(v2[133], @"isWiFiPNLMigrationComplete");
      if (Value)
      {
        v7 = Value;
        TypeID = CFNumberGetTypeID();
        if (TypeID == CFGetTypeID(v7))
        {
          CFNumberGetValue(v7, kCFNumberIntType, &valuePtr);
          if (!valuePtr)
          {
            goto LABEL_18;
          }

LABEL_13:
          if (CFStringCompare(theString1, @"List of known networks", 0))
          {
            if (CFStringCompare(theString1, @"List of scanned networks with private mac", 0) == kCFCompareEqualTo)
            {
              v5 = v2 + 136;
            }
          }

          else
          {
            v5 = v2 + 134;
          }

          goto LABEL_18;
        }

        v9 = CFBooleanGetTypeID();
        if (v9 == CFGetTypeID(v7))
        {
          IntValue = CFEqual(v7, kCFBooleanTrue);
        }

        else
        {
          v11 = CFStringGetTypeID();
          if (v11 != CFGetTypeID(v7))
          {
            goto LABEL_18;
          }

          IntValue = CFStringGetIntValue(v7);
        }

        valuePtr = IntValue;
        if (IntValue)
        {
          goto LABEL_13;
        }
      }

LABEL_18:
      v2 = *v5;

      return v2;
    }

    return v2[133];
  }

  return v2;
}

uint64_t sub_100017E88(uint64_t a1)
{
  valuePtr = 0;
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  if (!v2)
  {
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s, LQAManager: LQM table is NULL", "__WiFiLQAMgrGetLongWindowRSSI"}];
    }

    goto LABEL_23;
  }

  if (!*(a1 + 48))
  {
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s, LQAManager: Current Network is NULL", "__WiFiLQAMgrGetLongWindowRSSI"}];
    }

    goto LABEL_23;
  }

  Count = CFArrayGetCount(v2);
  if (!Count)
  {
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s, LQAManager: No LQM reports available", "__WiFiLQAMgrGetLongWindowRSSI"}];
    }

LABEL_23:
    objc_autoreleasePoolPop(v10);
    return 0;
  }

  v4 = Count;
  if (Count < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), v5);
    if (!ValueAtIndex)
    {
      break;
    }

    Value = CFDictionaryGetValue(ValueAtIndex, @"RSSI");
    if (!Value)
    {
      goto LABEL_15;
    }

    CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
    v6 = (valuePtr + v6);
    if (v4 == ++v5)
    {
      v5 = v4;
      return v6 / v5;
    }
  }

  v9 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, LQAManager: LQM Report at %ld index is NULL", "__WiFiLQAMgrGetLongWindowRSSI", v5}];
  }

  objc_autoreleasePoolPop(v9);
LABEL_15:
  if (v5)
  {
    return v6 / v5;
  }

  return v6;
}

uint64_t sub_100018030(uint64_t result)
{
  v11 = 0;
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    v3 = qword_1002985E0;
    if (!qword_1002985E0)
    {
      sub_1000083FC();
      pthread_once(v4, v5);
      v3 = qword_1002985E0;
    }

    if (v2 == v3)
    {
      v6 = sub_10000A540(v1, @"CHANNEL");
      v7 = sub_10000A540(v1, @"CHANNEL_FLAGS");
      if (v7)
      {
        valuePtr = 0;
        CFNumberGetValue(v7, kCFNumberIntType, &valuePtr);
        if ((valuePtr & 8) != 0)
        {
          return 1;
        }

        if ((valuePtr & 0x10) != 0)
        {
          return 2;
        }

        if ((valuePtr & 0x2000) != 0)
        {
          return 3;
        }
      }

      v1 = v6;
      if (!v6)
      {
        return 0;
      }
    }

    else
    {
      v8 = CFGetTypeID(v1);
      if (v8 != CFNumberGetTypeID())
      {
        return 0;
      }
    }

    CFNumberGetValue(v1, kCFNumberIntType, &v11);
    if (v11)
    {
      if (v11 < 15)
      {
        return 1;
      }

      v9 = 0;
      while (v11 != dword_100297AA8[v9])
      {
        if (++v9 == 33)
        {
          return 0;
        }
      }

      return 2;
    }

    return 0;
  }

  return result;
}

uint64_t sub_100018164(uint64_t a1)
{
  v2 = _os_feature_enabled_impl();
  if (!a1)
  {
    goto LABEL_40;
  }

  v3 = v2;
  if ((_os_feature_enabled_impl() & 1) == 0 && !_os_feature_enabled_impl())
  {
    goto LABEL_40;
  }

  if (sub_10000A7CC(*(a1 + 48)) || sub_10000A604(*(a1 + 48)))
  {
    goto LABEL_40;
  }

  v4 = *(a1 + 3257);
  if (*(a1 + 3257))
  {
    if (sub_100018030(*(a1 + 48)) == 1)
    {
      v4 = 6;
    }

    else
    {
      v4 = 0;
    }
  }

  if (*(a1 + 2804) >= *(a1 + 656) + v4)
  {
LABEL_40:
    v9 = 0;
    v5 = 0;
    v6 = 0;
    goto LABEL_41;
  }

  v5 = [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor isCarModeActive]|| (*(a1 + 2784) & 0xFFFD) == 4;
  if (sub_1000A37CC(*(a1 + 48)))
  {
    v6 = *(a1 + 2784) == 2;
  }

  else
  {
    v6 = 0;
  }

  if ([+[WiFiUserInteractionMonitor isRealTimeAppActive] sharedInstance]
  {
    v7 = 1;
    if (!v3)
    {
LABEL_19:
      v8 = 0;
      goto LABEL_22;
    }
  }

  else
  {
    v7 = *(a1 + 2960) != 0;
    if (!v3)
    {
      goto LABEL_19;
    }
  }

  v8 = (*(a1 + 2956) >> 1) & 1;
LABEL_22:
  LODWORD(v9) = v7 & v8;
  if (*(a1 + 248))
  {
    if (*(a1 + 56))
    {
      v10 = 1;
    }

    else
    {
      v10 = v7 & v8;
    }

    if (*(a1 + 2784) == 2)
    {
      LODWORD(v9) = 1;
    }

    else
    {
      LODWORD(v9) = v10;
    }
  }

  if (sub_100014814(a1))
  {
    v9 = 1;
  }

  else
  {
    v9 = v9;
  }

  if (sub_1001408E0(a1, 2))
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Potential data stall detected when there is realtime traffic", "__WiFiLQAMgrDetectPotentialDataStallOnRealTimeTraffic"}];
    }

    objc_autoreleasePoolPop(v11);
    v12 = v5 || v6;
    v9 = 1;
    goto LABEL_36;
  }

LABEL_41:
  v12 = v5 || v6;
  if ((v9 & 1) == 0 && !v5 && !v6)
  {
    v14 = 0;
    return v14 & 1;
  }

LABEL_36:
  v13 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: inHighMobility:%d isUsingPublicNetwork:%d tdMonitoringRequired:%d", "__WiFiLQAMgrIsUnderEvaluationForFastDisconnect", v5, v6, v9}];
  }

  objc_autoreleasePoolPop(v13);
  v14 = v9 | v12;
  return v14 & 1;
}

id sub_10001839C(uint64_t a1)
{
  if (!&_managed_event_fetch)
  {
    return 0;
  }

  if (!a1)
  {
    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: LQAMgr is NULL", "__WiFiLQAMgrCheckReassoc"}];
    }

    goto LABEL_41;
  }

  if (*(a1 + 2842))
  {
    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: isAwdlRealTimeModeActive", "__WiFiLQAMgrCheckReassoc"}];
    }

LABEL_41:
    objc_autoreleasePoolPop(v12);
    return 0;
  }

  if (*(a1 + 230) < 3)
  {
    return 0;
  }

  if (*(a1 + 648))
  {
    if (*(a1 + 2852))
    {
      if ((~*(a1 + 2848) & 3) == 0)
      {
        v2 = *(a1 + 2804);
        if (v2 > -65)
        {
          v3 = *(a1 + 2844);
          v4 = v2 - v3;
          if (v2 - v3 < 0)
          {
            v4 = v3 - v2;
          }

          if (v4 >= 0xA)
          {
            v5 = *(a1 + 230);
            if (v5 == 4 || (v5 == 3 ? (v6 = v2 <= v3) : (v6 = 1), !v6))
            {
              v9 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:4 message:{"%s: Attempting host triggered roam to 5GHz band due to RSSI change on 2.4GHz(Env: %d linkUpRssi: %d lastRssi: %d)", "__WiFiLQAMgrCheckPref5GhzReAssoc", *(a1 + 230), *(a1 + 2844), *(a1 + 2804)}];
              }

              objc_autoreleasePoolPop(v9);
              result = [+[WiFiRoamManager sharedWiFiRoamManager](WiFiRoamManager "sharedWiFiRoamManager")];
              if (result)
              {
                result = 0;
                *(a1 + 2852) = 0;
              }

              return result;
            }
          }
        }
      }
    }
  }

  if (*(a1 + 2804) >= -65)
  {
    return 0;
  }

  if (CFAbsoluteTimeGetCurrent() - *(a1 + 3264) < 5.0)
  {
    return 0;
  }

  *(a1 + 3264) = CFAbsoluteTimeGetCurrent();
  if (*(a1 + 208))
  {
    return 0;
  }

  if (!*(a1 + 2840))
  {
    *(a1 + 500) = 0;
    v10 = sub_100008BAC(12);
    if (sub_100140BCC(v10, v11))
    {
      result = 0;
      *(a1 + 208) = 1;
      return result;
    }

    if (*(a1 + 208))
    {
      return 0;
    }
  }

  result = sub_10004928C(a1);
  if (result)
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Attempting host triggered roam based on MacStats", "__WiFiLQAMgrCheckReassoc"}];
    }

    objc_autoreleasePoolPop(v8);
    return [+[WiFiRoamManager sharedWiFiRoamManager](WiFiRoamManager "sharedWiFiRoamManager")];
  }

  return result;
}

void sub_100018614(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  if (a3)
  {
    if (a4)
    {
      v12 = 0xAAAAAAAAAAAAAA01;
      context[0] = a3;
      context[1] = a1;
      cf = sub_10000EDD8(kCFAllocatorDefault, a4);
      Count = CFSetGetCount(*(a3 + 144));
      v13 = 0;
      v14 = 0;
      v11 = Count;
      CFSetApplyFunction(*(a3 + 144), sub_1000186E8, context);
      if (cf)
      {
        CFRelease(cf);
      }

      [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
    }

    v8 = *(a3 + 1824);
    if (v8)
    {
      sub_1000191F8(a3, v8, 12, a4);
    }
  }
}

void sub_1000186E8(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return;
  }

  v3 = *a2;
  if (!*a2)
  {
    return;
  }

  if (!*(a2 + 8))
  {
    return;
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
    return;
  }

  v6 = *(a2 + 32);
  if (v6 == 1)
  {
    v7 = *(a2 + 16);
    if (v7)
    {
      BytePtr = CFDataGetBytePtr(*(a2 + 16));
      Length = CFDataGetLength(v7);
      v10 = sub_100017AC4(BytePtr, Length);
      if (v10)
      {
        v11 = v10;
        context = *&v3;
        v50 = 0xAAAAAAAA0000005ELL;
        cf = v10;
        v52 = 1;
        v53 = 0;
        CFSetApplyFunction(*(v3 + 112), sub_100003B88, &context);
        CFRelease(v11);
      }

      else
      {
        sub_100172EC8();
      }
    }

    else
    {
      sub_100172F34();
    }

    *(a2 + 32) = 0;
    v3 = *a2;
    v4 = *(a2 + 24);
  }

  context = 0.0;
  v12 = sub_10000715C(a1);
  v13 = v12;
  valuePtr = 0;
  if (v12)
  {
    if (CFStringCompare(v12, @"SpringBoard", 1uLL) == kCFCompareEqualTo || CFStringCompare(v13, @"symptomsd", 1uLL) == kCFCompareEqualTo || (v14 = 1, CFStringCompare(v13, @"WirelessRadioManagerd", 1uLL) == kCFCompareEqualTo))
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 1;
  }

  v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", 14);
  if (v15)
  {
    Value = CFDictionaryGetValue(*(v3 + 2368), v15);
    if (Value)
    {
      v17 = Value;
      v18 = CFDictionaryGetValue(Value, @"EventRateRateDispachedCount");
      if (!v18 || !CFNumberGetValue(v18, kCFNumberIntType, &valuePtr))
      {
        sub_100172FA0();
        v30 = 0;
        v32 = 1;
LABEL_53:
        CFRelease(v15);
        goto LABEL_54;
      }

      Current = CFAbsoluteTimeGetCurrent();
      v19 = CFDictionaryGetValue(v17, v13);
      if (v19)
      {
        v20 = v19;
        v21 = CFDictionaryGetValue(v19, @"EventRateClientPrevDispatchTimestampKey");
        if (!v21 || !CFNumberGetValue(v21, kCFNumberDoubleType, &context))
        {
          goto LABEL_47;
        }

        v47 = 0;
        v22 = CFDictionaryGetValue(v20, @"EventRateClientIntervalKey");
        if (v22 && CFNumberGetValue(v22, kCFNumberIntType, &v47))
        {
          if (context == 0.0 || Current - context < 0.01 || Current - context > v47 + -0.1)
          {
            ++valuePtr;
            v23 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &Current);
            if (v23)
            {
              v24 = v23;
              CFDictionarySetValue(v20, @"EventRateClientPrevDispatchTimestampKey", v23);
              CFDictionarySetValue(v17, v13, v20);
              CFRelease(v24);
            }

LABEL_75:
            v30 = 1;
            goto LABEL_48;
          }

          if ((v14 & 1) == 0)
          {
            v27 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"%s: Client RLEvent %d NOT allowed - %@ Remaining: %2.4f Interval: %2.2f clientCount: %d numClients: %d", "__WiFiManagerEventIsRateDispatchable", 14, v13, Current - (context + v47), v47, valuePtr, v4}];
            }

LABEL_79:
            v29 = v27;
            goto LABEL_46;
          }

          goto LABEL_47;
        }

        v28 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: ERROR: client interval not set", "__WiFiManagerEventIsRateDispatchable"}];
        }
      }

      else
      {
        v25 = CFDictionaryGetValue(v17, @"EventRatePrevDispatchTimestampKey");
        if (!v25 || !CFNumberGetValue(v25, kCFNumberDoubleType, &context))
        {
          goto LABEL_47;
        }

        v47 = 0;
        v26 = CFDictionaryGetValue(v17, @"EventRateDefaultIntervalKey");
        if (v26 && CFNumberGetValue(v26, kCFNumberIntType, &v47))
        {
          if ((context == 0.0 || Current - context < 0.5 || Current - context > v47 + -0.5) && valuePtr <= v4)
          {
            if (!valuePtr)
            {
              v38 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &Current);
              if (v38)
              {
                v39 = v38;
                CFDictionarySetValue(v17, @"EventRatePrevDispatchTimestampKey", v38);
                CFDictionarySetValue(*(v3 + 2368), v15, v17);
                CFRelease(v39);
              }
            }

            ++valuePtr;
            goto LABEL_75;
          }

          if ((v14 & 1) == 0)
          {
            v27 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:2 message:{"%s: Event %d not allowed - %@ Remaining: %2.4f DefInterval: %2.2f clientCount: %d numClients: %d", "__WiFiManagerEventIsRateDispatchable", 14, v13, Current - (context + v47), v47, valuePtr, v4}];
            }

            goto LABEL_79;
          }

LABEL_47:
          v30 = 0;
LABEL_48:
          if (v4 <= valuePtr)
          {
            valuePtr = 0;
          }

          v31 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
          CFDictionarySetValue(v17, @"EventRateRateDispachedCount", v31);
          CFDictionarySetValue(*(v3 + 2368), v15, v17);
          if (v31)
          {
            CFRelease(v31);
          }

          v32 = v30;
          goto LABEL_53;
        }

        v28 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: ERROR: default interval not set", "__WiFiManagerEventIsRateDispatchable"}];
        }
      }

      v29 = v28;
LABEL_46:
      objc_autoreleasePoolPop(v29);
      goto LABEL_47;
    }
  }

  else
  {
    sub_100173000();
  }

  v40 = CFAbsoluteTimeGetCurrent();
  Current = v40;
  v41 = *(v3 + 2376);
  v42 = v41 == 0.0;
  v43 = v40 - v41;
  if (!v42 && v43 >= 0.5 && v43 <= 4.5)
  {
    v30 = 0;
  }

  else
  {
    if (v6)
    {
      *(v3 + 2376) = v40;
    }

    v30 = 1;
  }

  v32 = v30;
  if (v15)
  {
    goto LABEL_53;
  }

LABEL_54:
  if (!v32)
  {
    goto LABEL_64;
  }

  if (!v30)
  {
    ++*(a2 + 40);
    sub_1000179C0(a1, *(a2 + 8), *(a2 + 16));
    return;
  }

  v33 = (a2 + 48);
  v34 = *(a2 + 48);
  if (v34)
  {
    goto LABEL_63;
  }

  v35 = *a2;
  if (*a2)
  {
    Current = 0.0;
    context = *&v35;
    v50 = 0xAAAAAAAA0000005FLL;
    cf = &Current;
    v52 = 1;
    v53 = 0;
    CFSetApplyFunction(*(v35 + 112), sub_100003B88, &context);
    if (cf)
    {
      v34 = sub_10000EDD8(kCFAllocatorDefault, cf);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v34)
      {
        *v33 = v34;
LABEL_63:
        sub_1000179C0(a1, *(a2 + 8), v34);
        goto LABEL_64;
      }

      v46 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: null serializedEventData", "__WiFiManagerEventCopyCoalescedUndispatchedEventData"}];
      }
    }

    else
    {
      v46 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: null data.arg", "__WiFiManagerEventCopyCoalescedUndispatchedEventData"}];
      }
    }

    objc_autoreleasePoolPop(v46);
    *v33 = 0;
  }

  else
  {
    sub_100173060((a2 + 48));
  }

LABEL_64:
  v36 = *(a2 + 40) + 1;
  *(a2 + 40) = v36;
  if (v36 == *(a2 + 24))
  {
    if (v30)
    {
      sub_1000179CC(*a2, 14);
    }

    v37 = *(a2 + 48);
    if (v37)
    {
      CFRelease(v37);
      *(a2 + 48) = 0;
    }
  }
}

BOOL sub_100018E08(void *a1, double *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a1)
  {
    v5 = sub_100018E90(a1, @"DisableSoftErrorReporting", 0);
    if (a2)
    {
      v6 = sub_100095074();
      *a2 = sub_100019400(v6, v7, v8);
    }
  }

  else
  {
    v5 = 0;
  }

  objc_autoreleasePoolPop(v4);
  return v5;
}

BOOL sub_100018E90(void *a1, const __CFString *a2, SInt32 a3)
{
  v4 = sub_10001769C(a1, a2);
  valuePtr = a3;
  if (v4)
  {
    v5 = v4;
    TypeID = CFNumberGetTypeID();
    if (TypeID != CFGetTypeID(v5))
    {
      v7 = CFBooleanGetTypeID();
      if (v7 == CFGetTypeID(v5))
      {
        IntValue = CFEqual(v5, kCFBooleanTrue);
      }

      else
      {
        v9 = CFStringGetTypeID();
        if (v9 != CFGetTypeID(v5))
        {
          return a3 != 0;
        }

        IntValue = CFStringGetIntValue(v5);
      }

      a3 = IntValue;
      return a3 != 0;
    }

    CFNumberGetValue(v5, kCFNumberIntType, &valuePtr);
    a3 = valuePtr;
  }

  return a3 != 0;
}

void sub_100018F5C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained wifiSoftErrorEventHandler:*(a1 + 40) eventType:*(a1 + 56) eventData:*(a1 + 48)];
}

void sub_100018FB0(uint64_t a1, CFDictionaryRef theDict)
{
  if (a1)
  {
    if (theDict)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
      if (MutableCopy)
      {
        v5 = MutableCopy;
        if (*(a1 + 160) || (Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks), (*(a1 + 160) = Mutable) != 0))
        {
          for (i = 0; i != 9; ++i)
          {
            value = 0;
            valuePtr = 0;
            v8 = off_10025EF08[i];
            if (CFDictionaryGetValueIfPresent(theDict, v8, &value))
            {
              v9 = value == 0;
            }

            else
            {
              v9 = 1;
            }

            if (!v9)
            {
              CFNumberGetValue(value, kCFNumberIntType, &valuePtr);
              number = 0;
              v15 = 0;
              if (CFDictionaryGetValueIfPresent(*(a1 + 160), v8, &number))
              {
                v10 = number == 0;
              }

              else
              {
                v10 = 1;
              }

              if (!v10)
              {
                CFNumberGetValue(number, kCFNumberIntType, &v15);
              }

              v15 += valuePtr;
              v11 = CFNumberCreate(0, kCFNumberIntType, &v15);
              CFDictionarySetValue(*(a1 + 160), v8, v11);
              CFDictionarySetValue(v5, v8, v11);
              if (v11)
              {
                CFRelease(v11);
              }
            }
          }

          v12 = *(a1 + 160);
          if (v12)
          {
            CFRelease(v12);
            *(a1 + 160) = 0;
          }

          v13 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v5);
          *(a1 + 160) = v13;
          if (!v13)
          {
            v14 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"%s coalescedUndispatchedLQMEvent is NULL!!!", "WiFiLQAMgrCoalesceUndispatchedLQMEvent"}];
            }

            objc_autoreleasePoolPop(v14);
          }
        }

        else
        {
          sub_100143AC8();
        }

        CFRelease(v5);
      }

      else
      {
        sub_100143B34();
      }
    }

    else
    {
      sub_100143BA0();
    }
  }

  else
  {
    sub_100143C0C();
  }
}

void sub_1000191B4(uint64_t a1, const __CFDictionary *a2)
{
  if (a1 && a2)
  {
    v2 = *(a1 + 120);

    sub_100018FB0(v2, a2);
  }

  else
  {
    sub_1001A1F58();
  }
}

void sub_1000191F8(void *a1, void *a2, int a3, CFTypeRef a4)
{
  v8 = objc_initWeak(&location, a2);

  if (!a2)
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s:SoftErrorManagerRef is NULL!", "WiFiSoftErrorManagerEvent"}];
    }

    goto LABEL_14;
  }

  if (!a1)
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: deviceManager is NULL!", "WiFiSoftErrorManagerEvent"}];
    }

LABEL_14:
    objc_autoreleasePoolPop(v11);
    goto LABEL_9;
  }

  if (a3 == 4)
  {
    goto LABEL_7;
  }

  if (a3 != 12 && a3 != 6)
  {
    goto LABEL_8;
  }

  if (a4)
  {
LABEL_7:
    a4 = CFRetain(a4);
LABEL_8:
    v9 = objc_loadWeakRetained(&location);
    [v9 updateReportingPreference];

    v10 = qword_100298C50;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100018F5C;
    block[3] = &unk_10025EBE8;
    objc_copyWeak(v13, &location);
    v14 = a3;
    v13[1] = a1;
    v13[2] = a4;
    dispatch_async(v10, block);
    objc_destroyWeak(v13);
  }

LABEL_9:
  objc_destroyWeak(&location);
}

uint64_t sub_100019400(void *a1, const __CFString *a2, uint64_t a3)
{
  v4 = sub_10001769C(a1, a2);
  valuePtr = a3;
  if (v4)
  {
    v5 = v4;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v5))
    {
      CFNumberGetValue(v5, kCFNumberCFIndexType, &valuePtr);
      return valuePtr;
    }
  }

  return a3;
}

void sub_100019470(uint64_t a1, int a2, uint64_t a3, int a4, const __CFBoolean *value)
{
  if (!a3)
  {
    return;
  }

  valuePtr = -21846;
  if (a4 <= 3)
  {
    switch(a4)
    {
      case 0:
        v8 = *(a3 + 2088);
        v11 = off_10025F9A8;
        goto LABEL_21;
      case 2:
        valuePtr = value;
        v14 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &valuePtr);
        CFDictionarySetValue(*(a3 + 2088), @"DiagnosticsBssEnv", v14);
        if (v14)
        {
          CFRelease(v14);
        }

        break;
      case 3:
        v8 = *(a3 + 2088);
        v11 = off_10025F9E0;
LABEL_21:
        v9 = *v11;
        v12 = value;
LABEL_22:
        CFDictionarySetValue(v8, v9, v12);
        break;
    }
  }

  else
  {
    if (a4 <= 5)
    {
      if (a4 == 4)
      {
        CFDictionarySetValue(*(a3 + 2088), @"DiagnosticsScan", value);
        v8 = *(a3 + 2088);
        v9 = @"DiagnosticsScanDone";
        v10 = &kCFBooleanFalse;
      }

      else
      {
        v8 = *(a3 + 2088);
        v9 = @"DiagnosticsScanDone";
        v10 = &kCFBooleanTrue;
      }

      v12 = *v10;
      goto LABEL_22;
    }

    if (a4 == 6)
    {
      v13 = [CFArrayGetValueAtIndex(value 1)];
      v8 = *(a3 + 2088);
      if (v13)
      {
        v11 = off_10025F9E8;
      }

      else
      {
        v11 = off_10025F9F0;
      }

      goto LABEL_21;
    }

    if (a4 == 7)
    {
      v8 = *(a3 + 2088);
      v11 = off_10025F9F8;
      goto LABEL_21;
    }
  }

  v15 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, (a3 + 1044));
  CFDictionarySetValue(*(a3 + 2088), @"DiagnosticsBluetooth", v15);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(a3 + 2088);
  v17 = sub_100014038(*(a3 + 1488));
  CFDictionarySetValue(v16, @"DiagnosticsMotion", v17);
  if (*(a3 + 2112))
  {
    v18 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: diagnostics report %@", "__WiFiManagerDiagnosticsStartCallback", *(a3 + 2088)}];
    }

    objc_autoreleasePoolPop(v18);
    v19 = *(a3 + 2088);
    context = a1;
    cf = sub_10000EDD8(kCFAllocatorDefault, v19);
    CFSetApplyFunction(*(a3 + 144), sub_100090C5C, &context);
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void sub_1000196FC(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_100006F88(*(a1 + 64));
    v3 = sub_100007D90(a1, v2, 1);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = objc_autoreleasePoolPush();
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null manager.", "WiFiDeviceManagerForceUpdateCachedCurrentNetwork"}];
    }
  }

  objc_autoreleasePoolPop(v4);
}

void sub_1000197A4(uint64_t a1, uint64_t a2)
{
  v7[5] = a2;
  v3 = _os_feature_enabled_impl();
  if (a1)
  {
    if (v3)
    {
      v7[0] = a1;
      v7[1] = 0xAAAAAAAA00000078;
      sub_1000084CC();
      v4 = *(a1 + 112);
      sub_1000083DC();
      CFSetApplyFunction(v5, v6, v7);
    }
  }
}

void sub_100019814(uint64_t a1, unint64_t a2)
{
  v98 = 0;
  v99 = &v98;
  v100 = 0x3052000000;
  v101 = sub_100002B80;
  v102 = sub_100006788;
  v103 = 0;
  context = objc_autoreleasePoolPush();
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: AUTO-JOIN: Triggered (trigger=%d)", "WiFiDeviceManagerStartAutoJoinAndReply", a2}];
  }

  objc_autoreleasePoolPop(v4);
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v75 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: UAJM feature is disabled", "WiFiDeviceManagerStartAutoJoinAndReply"}];
    }

    goto LABEL_135;
  }

  if (!a1)
  {
    v75 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: manager is null", "WiFiDeviceManagerStartAutoJoinAndReply"}];
    }

    goto LABEL_135;
  }

  if (!*(a1 + 8936))
  {
    v75 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: UAJM is null", "WiFiDeviceManagerStartAutoJoinAndReply"}];
    }

    goto LABEL_135;
  }

  if (a2 == 32 && *(a1 + 1112) == 1)
  {
    v75 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: CarPlay join is already in progress.", "WiFiDeviceManagerStartAutoJoinAndReply"}];
    }

    goto LABEL_135;
  }

  sub_100006F88(*(a1 + 64));
  if (*(a1 + 20) != 1)
  {
    v75 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: WiFi is OFF", "WiFiDeviceManagerStartAutoJoinAndReply"}];
    }

LABEL_135:
    objc_autoreleasePoolPop(v75);
    Mutable = 0;
    goto LABEL_106;
  }

  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    goto LABEL_106;
  }

  v6 = *(a1 + 64);
  v7 = sub_100006F88(v6);
  v8 = sub_10001A6E4(v6, v7, Mutable);
  if (v8)
  {
    v76 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: FAILED to get supported channels (err=%d)", "WiFiDeviceManagerStartAutoJoinAndReply", v8}];
    }

    goto LABEL_132;
  }

  if (!CFArrayGetCount(Mutable))
  {
    v76 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Supported channels list is empty", "WiFiDeviceManagerStartAutoJoinAndReply"}];
    }

LABEL_132:
    objc_autoreleasePoolPop(v76);
    goto LABEL_106;
  }

  v9 = +[NSMutableArray array];
  v10 = 0;
  v89 = (a1 + 5576);
  while (v10 < CFArrayGetCount(Mutable))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v10);
    if (ValueAtIndex)
    {
      v12 = objc_alloc_init(CWFChannel);
      [v12 setChannel:{objc_msgSend(CFDictionaryGetValue(ValueAtIndex, @"SUP_CHANNEL", "unsignedIntegerValue")}];
      [v12 setFlags:{objc_msgSend(CFDictionaryGetValue(ValueAtIndex, @"SUP_CHANNEL_FLAGS", "unsignedIntValue")}];
      [v9 addObject:v12];
    }

    ++v10;
  }

  if ([v9 count])
  {
    [*(a1 + 8936) setSupportedChannels:{+[NSMutableSet setWithArray:](NSMutableSet, "setWithArray:", v9)}];
  }

  v13 = sub_10001A904(a1);
  [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];

  sub_1000BC974(a1);
  v14 = objc_alloc_init(CWFAutoJoinParameters);
  [v14 setMode:1];
  [v14 setTrigger:a2];
  if (*(a1 + 5592) != 1 && !*v89)
  {
    if (*(a1 + 8933) && *(a1 + 8912))
    {
      v30 = objc_alloc_init(CWFChannel);
      [v30 setChannel:{objc_msgSend(*(a1 + 8912), "unsignedIntegerValue")}];
      [v30 setFlags:{objc_msgSend(*(a1 + 8920), "unsignedIntValue")}];
      v106 = v30;
      v31 = [NSArray arrayWithObjects:&v106 count:1];
    }

    else
    {
      if (a2 != 55)
      {
        v29 = 0;
        goto LABEL_62;
      }

      v32 = objc_alloc_init(CWFChannel);
      [v32 setChannel:*(a1 + 3888)];
      [v32 setFlags:*(a1 + 3892)];
      v105 = v32;
      v31 = [NSArray arrayWithObjects:&v105 count:1];
    }

    v29 = v31;
    goto LABEL_62;
  }

  v15 = [objc_msgSend(*(a1 + 8936) "knownNetworks")];
  if ([v15 isCarPlay])
  {
    v16 = sub_100022854(v15, 0);
    if (v16)
    {
      v17 = objc_alloc_init(CWFChannel);
      if (v17)
      {
        v18 = sub_10000A540(v16, @"CHANNEL");
        if (v18)
        {
          [v17 setChannel:{objc_msgSend(v18, "unsignedIntegerValue")}];
          [v17 setFlags:0];
          v19 = sub_10000A540(v16, @"CHANNEL_FLAGS");
          if (v19)
          {
            valuePtr = 0;
            CFNumberGetValue(v19, kCFNumberIntType, &valuePtr);
            if ((valuePtr & 0x2000) != 0)
            {
              [v17 setFlags:0x2000];
            }
          }

          if (![v17 flags])
          {
            if ([v17 channel] >= 0xF)
            {
              v20 = 16;
            }

            else
            {
              v20 = 8;
            }

            [v17 setFlags:v20];
          }
        }

        if (!sub_1000A14BC(v16))
        {
          goto LABEL_58;
        }

        v21 = sub_10000A540(v16, @"networkKnownBSSListKey");
        v22 = v21;
        if (!v21 || CFArrayGetCount(v21) < 2 || CFArrayGetCount(v22) < 1)
        {
          goto LABEL_58;
        }

        v23 = 0;
        while (1)
        {
          v24 = CFArrayGetValueAtIndex(v22, v23);
          v25 = v24;
          if (v24)
          {
            Value = CFDictionaryGetValue(v24, @"CHANNEL");
            v27 = CFDictionaryGetValue(v25, @"CHANNEL_FLAGS");
            if (Value)
            {
              v28 = v27;
              if (v27)
              {
                valuePtr = 0;
                CFNumberGetValue(v27, kCFNumberIntType, &valuePtr);
                if ((valuePtr & 0x2010) != 0)
                {
                  break;
                }
              }
            }
          }

          if (CFArrayGetCount(v22) <= ++v23)
          {
            goto LABEL_58;
          }
        }

        CFNumberGetValue(v28, kCFNumberIntType, &valuePtr);
        if ((valuePtr & 0x2000) != 0)
        {
          v33 = 0x2000;
        }

        else
        {
          v33 = 16;
        }

        [v17 setFlags:v33];
        [v17 setChannel:{objc_msgSend(Value, "unsignedIntegerValue")}];
        v34 = objc_autoreleasePoolPush();
        v35 = off_100298C40;
        if (off_100298C40)
        {
          v36 = [v17 channel];
          v80 = [v17 flags];
          [v35 WFLog:3 message:{"%s: override the preferred channel to (channel %lu, flags %x)", "__WiFiDeviceManagerGetCarPlayPreferredChannel", v36}];
        }
      }

      else
      {
        v34 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: network or carPlayChannel is null", "__WiFiDeviceManagerGetCarPlayPreferredChannel"}];
        }
      }

      objc_autoreleasePoolPop(v34);
LABEL_58:
      v37 = objc_autoreleasePoolPush();
      v38 = off_100298C40;
      if (off_100298C40)
      {
        v39 = [v17 channel];
        v80 = [v17 flags];
        [v38 WFLog:3 message:{"%s: CarPlay network channel %lu, flags %x", "WiFiDeviceManagerStartAutoJoinAndReply", v39}];
      }

      objc_autoreleasePoolPop(v37);
      v107 = v17;
      v29 = [NSArray arrayWithObjects:&v107 count:1];
      *(a1 + 1108) = [v17 flags];
      CFRelease(v16);
      goto LABEL_61;
    }
  }

  v29 = 0;
LABEL_61:
  *(a1 + 1112) = 1;
LABEL_62:
  [v14 setPreferredChannels:v29];
  if (a2 == 7 || a2 == 2 && ((v40 = *(a1 + 3560)) == 0 || !sub_10000A7CC(v40) || (*(a1 + 1032) & 1) == 0))
  {
    v41 = sub_10000B3A8(a1, *(a1 + 3560), 0);
    v42 = v41;
    if (v41)
    {
      v43 = sub_10001B368(v41);
      if (v43)
      {
        if (sub_10000A604(v42) && (sub_10000A540(v42, @"WiFiInstantHotspotJoining") == kCFBooleanTrue || sub_10000A540(v42, @"WiFiAutoInstantHotspotJoining") == kCFBooleanTrue))
        {
          v44 = sub_10000A540(v42, @"lastDisconnectReasonKey");
          if (v44)
          {
            v45 = sub_10000A540(v42, @"lastDisconnectTimestampKey");
            if (v45)
            {
              v104 = -1431655766;
              CFNumberGetValue(v44, kCFNumberIntType, &v104);
              if (v104 <= 2)
              {
                Current = CFAbsoluteTimeGetCurrent();
                if (Current - CFDateGetAbsoluteTime(v45) < 300.0)
                {
                  v47 = objc_autoreleasePoolPush();
                  v48 = v47;
                  if (off_100298C40)
                  {
                    v84 = v47;
                    v49 = sub_10000A878(v42);
                    v50 = v104;
                    v51 = CFAbsoluteTimeGetCurrent();
                    v82 = v51 - CFDateGetAbsoluteTime(v45);
                    v80 = v50;
                    v52 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s", [[NSString stringWithFormat:?];
                    v53 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
                    v48 = v84;
                    if (v53)
                    {
                      v54 = [+[NSString stringWithFormat:](NSString UTF8String:@"[WiFiPolicy] %s"];
                      valuePtr = 136446210;
                      v109 = v54;
                      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}s", &valuePtr, 0xCu);
                      v48 = v84;
                    }
                  }

                  objc_autoreleasePoolPop(v48);
                  [v43 setHiddenState:1];
                }
              }
            }
          }
        }

        [v14 setTargetNetworkProfile:v43];
      }

      CFRelease(v42);
    }
  }

  if (*(a1 + 3470))
  {
    v55 = 4;
    goto LABEL_84;
  }

  if (a2 > 0x37 || ((1 << a2) & 0xC0000100000084) == 0)
  {
    if (*(a1 + 176) != 3 && (![*(a1 + 8936) associatedNetwork] || (a2 - 9 > 0x3B || ((1 << (a2 - 9)) & 0xC031802478E0001) == 0) && !CWFIsAutoJoinRetryTrigger()))
    {
LABEL_85:
      if (a2 == 39)
      {
        *(a1 + 6696) = 1;
      }

      goto LABEL_89;
    }

    v55 = 2;
LABEL_84:
    [v14 setMode:v55];
    goto LABEL_85;
  }

LABEL_89:
  v56 = sub_10000D83C("WiFiDeviceManagerStartAutoJoinAndReply");
  CFRetain(a1);
  if (_os_feature_enabled_impl())
  {
    v57 = sub_10001D430(*(a1 + 6872));
    v58 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: prefer 6E enabled %d", "WiFiDeviceManagerStartAutoJoinAndReply", v57 == 0}];
    }

    objc_autoreleasePoolPop(v58);
    [*(a1 + 8936) setMaxCompatibilityEnabled:v57 == 0];
  }

  if (_os_feature_enabled_impl() && _os_feature_enabled_impl() && *(a1 + 8984) == 4)
  {
    sub_1000D7FA8(a1, 0);
  }

  v59 = *(a1 + 8936);
  v91 = _NSConcreteStackBlock;
  v92 = 3221225472;
  v93 = &sub_10001D604;
  v94 = &unk_100261DA8;
  v96 = &v98;
  v97 = a1;
  v95 = v56;
  v60 = [v59 performAutoJoinWithParameters:v14 reply:&v91];
  v99[5] = v60;
  if (v60 || (CFRelease(a1), v99[5]))
  {
    if (!*(a1 + 8984))
    {
      if ([+[WiFiUserInteractionMonitor isSetupCompleted] sharedInstance]
      {
        if (a2 <= 0x28 && ((1 << a2) & 0x10000010104) != 0)
        {
          v61 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: AUTO-JOIN: Auto-join is running (trigger=%ld), defer user-interactive scans", "__WiFiDeviceManagerUnifiedAutoJoinShouldDeferUserInteractiveScan", a2}];
          }

          objc_autoreleasePoolPop(v61);
          v62 = *(a1 + 64);
          v78 = [v99[5] UUIDString];
          v63 = [NSString stringWithFormat:@"%@/%@"];
          sub_10001D70C(v62, 0, v63, 10, v64, v65, v66, v67, @"AutoJoin", v78, v80, *&v82, v84, context, HIDWORD(context), v89, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101);
          v68 = *(a1 + 64);
          v79 = [v99[5] UUIDString];
          v69 = [NSString stringWithFormat:@"%@/%@"];
          sub_10001D70C(v68, 9, v69, 10, v70, v71, v72, v73, @"AutoJoin", v79, v81, v83, v85, contexta, context_4, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101);
        }
      }

      else
      {
        v77 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: AUTO-JOIN: Setup not completed, allow user-interactive scans", "__WiFiDeviceManagerUnifiedAutoJoinShouldDeferUserInteractiveScan"}];
        }

        objc_autoreleasePoolPop(v77);
      }
    }
  }

LABEL_106:
  if (!v99[5])
  {
    v74 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: AUTO-JOIN: FAILED to start auto-join (trigger=%d)", "WiFiDeviceManagerStartAutoJoinAndReply", a2}];
    }

    objc_autoreleasePoolPop(v74);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  objc_autoreleasePoolPop(context);
  _Block_object_dispose(&v98, 8);
}

void sub_10001A68C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001A6E4(uint64_t a1, const void *a2, __CFArray *a3)
{
  theArray = 0;
  if (!a3)
  {
    return 4294963396;
  }

  v6 = sub_100007060(a1, a2);
  v7 = v6;
  if (!v6)
  {
    sub_1001521B0(a2);
    return v7;
  }

  v8 = CFGetTypeID(v6);
  if (v8 == sub_100006F40())
  {
    v7 = sub_10010F400(v7, 254, 0, &theArray);
LABEL_23:
    MutableCopy = theArray;
    if (theArray)
    {
      goto LABEL_24;
    }
  }

  else
  {
    for (i = 6; ; --i)
    {
      v10 = *(a1 + 16);
      v11 = Apple80211CopyValue();
      v7 = v11;
      if (v11 <= 15)
      {
        if (v11 != -3905)
        {
          break;
        }
      }

      else if (v11 != 61 && v11 != 16)
      {
        goto LABEL_17;
      }

      if (!i)
      {
        break;
      }

      usleep(0x7A120u);
    }

    if (!v11)
    {
      goto LABEL_23;
    }

LABEL_17:
    v13 = *(a1 + 4984);
    if (v13 && CFArrayGetCount(v13))
    {
      v14 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: failed getting HW supported channels, err=%d, returning cached HW channels (count=%ld)", "WiFiDeviceSupportedChannels", v7, CFArrayGetCount(*(a1 + 4984))}];
      }

      objc_autoreleasePoolPop(v14);
      MutableCopy = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, *(a1 + 4984));
      v7 = 0;
      theArray = MutableCopy;
      if (MutableCopy)
      {
LABEL_24:
        Count = CFArrayGetCount(MutableCopy);
        if (Count >= 1)
        {
          v17 = Count;
          for (j = 0; j != v17; ++j)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, j);
            if (ValueAtIndex)
            {
              v20 = ValueAtIndex;
              if (CFDictionaryGetValue(ValueAtIndex, @"SUP_CHANNEL"))
              {
                CFArrayAppendValue(a3, v20);
              }
            }
          }
        }

        if (theArray)
        {
          CFRelease(theArray);
        }
      }
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"Could not read APPLE80211_IOC_HW_SUPPORTED_CHANNELS err=%d", v7}];
      }

      objc_autoreleasePoolPop(v21);
    }
  }

  return v7;
}

id sub_10001A904(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_autoreleasePoolPush();
  v4 = [*(a1 + 5672) isAuthorized];
  objc_autoreleasePoolPop(v3);
  if (v4)
  {
    v5 = [objc_msgSend(*(a1 + 5672) "latestLocation")];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: not authorized to use location", "WiFiDeviceManagerCopyLeechedLocation"}];
    }

    objc_autoreleasePoolPop(v6);
    v5 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v5;
}

id sub_10001A9BC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (sub_10001B188() && (v3 = sub_10001B274(), a1) && v3 && (Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, *(a1 + 16))) != 0)
  {
    v5 = Copy;
    context = v2;
    v6 = [sub_10000A540(a1 @"HS20GasResponse")];
    [v6 setObject:0 forKeyedSubscript:@"ANQP_STATUS"];
    [v6 setObject:0 forKeyedSubscript:@"BSSID"];
    [v6 setObject:0 forKeyedSubscript:@"CHANNEL"];
    [v6 setObject:0 forKeyedSubscript:@"CHANNEL_FLAGS"];
    v7 = [(__CFDictionary *)v5 mutableCopy];
    [v7 setObject:v6 forKeyedSubscript:@"ANQP_PARSED"];
    v8 = +[NSMutableDictionary dictionary];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = +[CWFScanResult supportedOSSpecificKeys];
    v10 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v28;
      do
      {
        v13 = 0;
        do
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [v8 setObject:sub_10000A540(a1 forKeyedSubscript:{*(*(&v27 + 1) + 8 * v13)), *(*(&v27 + 1) + 8 * v13)}];
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v11);
    }

    if ([v8 count])
    {
      v14 = v8;
    }

    else
    {
      v14 = 0;
    }

    [v7 setObject:v14 forKeyedSubscript:sub_10001B274()];
    v34[0] = @"IsWiFiNetworkShareble";
    v34[1] = @"NetworkOriginator";
    v34[2] = @"CaptiveBypass";
    v34[3] = @"DiagnosticsBssEnv";
    v34[4] = @"DisableWiFiAutoJoinUntilFirstUserJoin";
    v34[5] = @"DisplayedOperatorName";
    v34[6] = @"DomainName";
    v34[7] = @"HS20GasResponse";
    v34[8] = @"HS20HomeOperatorNetwork";
    v34[9] = @"HS20ProvisionedNetwork";
    v34[10] = @"HS2NetworkBadge";
    v34[11] = @"HS20AccountName";
    v34[12] = @"MCCandMNC";
    v34[13] = @"NaiRealmName";
    v34[14] = @"NetworkAtLocationOfInterestType";
    v34[15] = @"WiFiNetworkAttributeHighPopularity";
    v34[16] = @"WiFiNetworkAttributeHighQuality";
    v34[17] = @"WiFiNetworkAttributeIsMoving";
    v34[18] = @"WiFiNetworkAttributeIsPotentiallyCaptive";
    v34[19] = @"WiFiNetworkAttributeIsPotentiallyMoving";
    v34[20] = @"WiFiNetworkAttributeIsSuspicious";
    v34[21] = @"WiFiNetworkAttributeIsTCPGood";
    v34[22] = @"WiFiNetworkAttributeLowPopularity";
    v34[23] = @"WiFiNetworkAttributeLowQuality";
    v34[24] = @"WiFiNetworkAttributePopularityScore";
    v34[25] = @"WiFiNetworkAttributeProminentDisplay";
    v34[26] = @"WiFiNetworkAttributeQualityScore";
    v34[27] = @"WiFiNetworkAttributeSource";
    v34[28] = @"BundleIdentifier";
    v34[29] = @"SIMIdentifiers";
    v34[30] = @"WiFiNetworkDisabledUntilDate";
    v34[31] = @"EnterpriseProfile";
    v34[32] = @"WiFiNetworkExpirationDate";
    v34[33] = @"NetworkForcedHomeFix";
    v34[34] = @"kWiFiNetworkLastHomeForceFixDateKey";
    v34[35] = @"NetworkOfInterestHomeState";
    v34[36] = @"NetworkOfInterestWorkState";
    v34[37] = @"WiFiNetworkPasswordModificationDate";
    v34[38] = @"PayloadIdentifier";
    v34[39] = @"CarrierPayloadIdentifierTelemetryApproved";
    v34[40] = @"PayloadUUID";
    v34[41] = @"SaveDataMode";
    v34[42] = @"NetworkQualityResponsiveness";
    v34[43] = @"NetworkQualityDate";
    v34[44] = @"ShareableEAPConfig";
    v34[45] = @"ShareableEAPTrustExceptions";
    v34[46] = @"ShareableStatus";
    v34[47] = @"ShareMode";
    v34[48] = @"kWiFiNetworkSSIDHarvestStatusKey";
    v34[49] = @"UserRole";
    v34[50] = @"WalletIdentifier";
    v34[51] = @"addedAt";
    v34[52] = @"knownBSSUpdatedDate";
    v34[53] = @"lastAutoJoined";
    v34[54] = @"lastJoined";
    v34[55] = @"lastRoamed";
    v34[56] = @"lastUpdated";
    v34[57] = @"WiFiManagerKnownNetworksEventType";
    v34[58] = @"networkDisabledClientName";
    v34[59] = @"networkDisabledReason";
    v34[60] = @"networkDisabledTimestamp";
    v34[61] = @"enabled";
    v34[62] = @"networkKnownBSSListKey";
    v34[63] = @"scanWasDirected";
    v34[64] = @"prevJoined";
    v34[65] = @"UserDirected";
    v34[66] = @"WasHiddenBefore";
    v34[67] = @"networkUsage";
    v34[68] = @"RoamingConsortiumOIs";
    v34[69] = @"SPRoaming";
    v34[70] = @"PolicyUUID";
    v34[71] = @"PrivacyProxyEnabled";
    v34[72] = @"TransitionDisabledFlags";
    v34[73] = @"Standalone";
    v34[74] = @"PublicAirPlayNetwork";
    v34[75] = @"PrivacyProxyBlockedReason";
    v34[76] = @"FilteredNetwork";
    v34[77] = @"DNSFailures";
    v34[78] = @"lastTputMeasurementDate";
    v34[79] = @"lastTputMeasurementResults";
    v34[80] = @"WiFiNetworkTDOverrideCount";
    v34[81] = @"WiFiNetworkTDOverrideTimestamp";
    v15 = [NSArray arrayWithObjects:v34 count:82];
    if (&_CNForgetSSID)
    {
      v33[0] = kCNSCaptiveNetworkProperty;
      v33[1] = kCNSNetworkWasCaptiveProperty;
      v15 = [(NSArray *)v15 arrayByAddingObjectsFromArray:[NSArray arrayWithObjects:v33 count:2]];
    }

    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v24;
      do
      {
        v19 = 0;
        do
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [v7 setObject:0 forKeyedSubscript:*(*(&v23 + 1) + 8 * v19)];
          v19 = v19 + 1;
        }

        while (v17 != v19);
        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v17);
    }

    v20 = [objc_alloc(sub_10001B188()) initWithScanRecord:v7 includeProperties:0];
    objc_autoreleasePoolPop(context);
    CFRelease(v5);
  }

  else
  {
    objc_autoreleasePoolPop(v2);
    return 0;
  }

  return v20;
}

uint64_t sub_10001B188()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = sub_100002B60;
  v0 = qword_100298630;
  v7 = sub_100006770;
  v8 = qword_100298630;
  if (!qword_100298630)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_1000A3EF4;
    v2[3] = &unk_1002608E0;
    v2[4] = &v3;
    sub_1000A3EF4(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_10001B25C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001B274()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_100298638;
  v6 = qword_100298638;
  if (!qword_100298638)
  {
    v1 = sub_1000A3AE4();
    v4[3] = dlsym(v1, "CWFScanResultPropertyOSSpecificAttributesKey");
    qword_100298638 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    sub_100179DAC();
  }

  return *v0;
}

void sub_10001B350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_10001B368(CFDictionaryRef *a1)
{
  context = objc_autoreleasePoolPush();
  if (!a1 || !sub_10001CC5C())
  {
    v90 = 0;
    goto LABEL_165;
  }

  v2 = objc_alloc_init(sub_10001CC5C());
  [v2 setSSID:sub_10001CA74(a1)];
  sub_10000AFE4(a1);
  [v2 setSupportedSecurityTypes:0];
  v90 = v2;
  if (!sub_10000D970(a1))
  {
    if (sub_10001CB28(a1))
    {
      v6 = v2;
      v7 = 768;
    }

    else
    {
      if (!sub_100009780(a1[2]))
      {
        if (CFDictionaryGetValue(a1[2], @"WEP") != kCFBooleanTrue)
        {
          goto LABEL_14;
        }

        [v2 setSupportedSecurityTypes:{objc_msgSend(v2, "supportedSecurityTypes") | 1}];
        if (sub_100009730(a1))
        {
          v83 = v2;
          v84 = 5;
        }

        else
        {
          v85 = sub_10000A540(a1, @"WEP_AUTH_Flags");
          if (!v85)
          {
            goto LABEL_14;
          }

          v86 = v85;
          v87 = [v85 intValue];
          [v86 intValue];
          v88 = [v86 intValue];
          if (v87)
          {
            if ((v88 & 4) == 0)
            {
              goto LABEL_14;
            }

            v83 = v90;
            v84 = 3;
          }

          else
          {
            if ((v88 & 4) == 0)
            {
              goto LABEL_14;
            }

            v83 = v90;
            v84 = 4;
          }
        }

        [v83 setWEPSubtype:v84];
        goto LABEL_14;
      }

      v7 = [v2 supportedSecurityTypes] | 0x100;
      v6 = v2;
    }

    [v6 setSupportedSecurityTypes:v7];
    goto LABEL_14;
  }

  [v2 setSupportedSecurityTypes:{objc_msgSend(v2, "supportedSecurityTypes") | 2}];
  v3 = [sub_10000A540(a1 @"WAPI")];
  if ((~v3 & 0xB) != 0)
  {
    if ((~v3 & 7) != 0)
    {
      goto LABEL_14;
    }

    v4 = v2;
    v5 = 1;
  }

  else
  {
    v4 = v2;
    v5 = 2;
  }

  [v4 setWAPISubtype:v5];
LABEL_14:
  v8 = sub_10000A540(a1, @"RSN_IE");
  if (v8)
  {
    v9 = [v8 objectForKey:@"IE_KEY_RSN_AUTHSELS"];
    if (([v9 containsObject:&off_1002811E8] & 1) != 0 || objc_msgSend(v9, "containsObject:", &off_100281200))
    {
      [v90 setSupportedSecurityTypes:{objc_msgSend(v90, "supportedSecurityTypes") | 0x80}];
    }

    if (([v9 containsObject:&off_100281218] & 1) != 0 || (objc_msgSend(v9, "containsObject:", &off_100281230) & 1) != 0 || (objc_msgSend(v9, "containsObject:", &off_100281248) & 1) != 0 || objc_msgSend(v9, "containsObject:", &off_100281260))
    {
      [v90 setSupportedSecurityTypes:{objc_msgSend(v90, "supportedSecurityTypes") | 0x20}];
    }

    if (([v9 containsObject:&off_100281278] & 1) != 0 || (objc_msgSend(v9, "containsObject:", &off_100281290) & 1) != 0 || (objc_msgSend(v9, "containsObject:", &off_1002812A8) & 1) != 0 || objc_msgSend(v9, "containsObject:", &off_1002812C0))
    {
      [v90 setSupportedSecurityTypes:{objc_msgSend(v90, "supportedSecurityTypes") | 0x40}];
      if (sub_10000B0AC(a1[2]))
      {
        [v90 setSupportedSecurityTypes:{objc_msgSend(v90, "supportedSecurityTypes") | 0x10}];
      }
    }

    if (([v9 containsObject:&off_1002812D8] & 1) != 0 || (objc_msgSend(v9, "containsObject:", &off_1002812F0) & 1) != 0 || objc_msgSend(v9, "containsObject:", &off_100281308))
    {
      [v90 setSupportedSecurityTypes:{objc_msgSend(v90, "supportedSecurityTypes") | 0x10}];
    }
  }

  v10 = sub_10000A540(a1, @"WPA_IE");
  if (v10)
  {
    v11 = [v10 objectForKey:@"IE_KEY_WPA_AUTHSELS"];
    if (([v11 containsObject:&off_100281218] & 1) != 0 || objc_msgSend(v11, "containsObject:", &off_100281230))
    {
      [v90 setSupportedSecurityTypes:{objc_msgSend(v90, "supportedSecurityTypes") | 8}];
    }

    if ([v11 containsObject:&off_1002812D8])
    {
      [v90 setSupportedSecurityTypes:{objc_msgSend(v90, "supportedSecurityTypes") | 4}];
    }
  }

  if (![v90 supportedSecurityTypes])
  {
    [v90 setSupportedSecurityTypes:512];
  }

  if (&_CNForgetSSID)
  {
    v12 = +[NSMutableDictionary dictionary];
    [v12 setObject:sub_10000A540(a1 forKeyedSubscript:{kCNSCaptiveNetworkProperty), kCNSCaptiveNetworkProperty}];
    [v12 setObject:sub_10000A540(a1 forKeyedSubscript:{kCNSCaptivePortalAPIProperty), kCNSCaptivePortalAPIProperty}];
    [v12 setObject:sub_10000A540(a1 forKeyedSubscript:{kCNSCaptivePortalUserPortalURLProperty), kCNSCaptivePortalUserPortalURLProperty}];
    [v12 setObject:sub_10000A540(a1 forKeyedSubscript:{kCNSCaptivePortalVenueInfoURLProperty), kCNSCaptivePortalVenueInfoURLProperty}];
    [v12 setObject:sub_10000A540(a1 forKeyedSubscript:{kCNSCaptivePortalCanExtendSessionProperty), kCNSCaptivePortalCanExtendSessionProperty}];
    [v12 setObject:sub_10000A540(a1 forKeyedSubscript:{kCNSCaptivePortalSessionExpirationProperty), kCNSCaptivePortalSessionExpirationProperty}];
    [v12 setObject:sub_10000A540(a1 forKeyedSubscript:{kCNSNetworkWasCaptiveProperty), kCNSNetworkWasCaptiveProperty}];
    [v12 setObject:sub_10000A540(a1 forKeyedSubscript:{kCNSDisabledByCaptiveProperty), kCNSDisabledByCaptiveProperty}];
    [v12 setObject:sub_10000A540(a1 forKeyedSubscript:{kCNSCaptiveBypassProperty), kCNSCaptiveBypassProperty}];
    [v12 setObject:sub_10000A540(a1 forKeyedSubscript:{kCNSIsWhitelistedCaptiveNetworkProperty), kCNSIsWhitelistedCaptiveNetworkProperty}];
    [v12 setObject:sub_10000A540(a1 forKeyedSubscript:{kCNSWhitelistedCaptiveNetworkProbeDateProperty), kCNSWhitelistedCaptiveNetworkProbeDateProperty}];
    [v12 setObject:sub_10000A540(a1 forKeyedSubscript:{kCNSBrokenBackhaulPromptDateProperty), kCNSBrokenBackhaulPromptDateProperty}];
    [v12 setObject:sub_10000A540(a1 forKeyedSubscript:{kCNSBrokenBackhaulUseCellularProperty), kCNSBrokenBackhaulUseCellularProperty}];
    [v12 setObject:sub_10000A540(a1 forKeyedSubscript:{kCNSCaptiveNetworkWebSheetLoginDateProperty), kCNSCaptiveNetworkWebSheetLoginDateProperty}];
    [v12 setObject:sub_10000A540(a1 forKeyedSubscript:{@"DisabledByCaptiveReason", @"DisabledByCaptiveReason"}];
    if ([v12 count])
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    [v90 setCaptiveProfile:v13];
  }

  if (sub_10001CB84(a1))
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  [v90 setHiddenState:v14];
  v15 = sub_10000A540(a1, @"WasHiddenBefore");
  if (v15)
  {
    [v90 setWasHiddenBefore:v15];
  }

  if (sub_10001CE30(a1) == 2)
  {
    [v90 setPasswordSharingDisabled:1];
  }

  if (sub_10000A540(a1, @"PayloadUUID"))
  {
    [v90 setPayloadUUID:{sub_10000A540(a1, @"PayloadUUID"}];
  }

  if (sub_10000A540(a1, @"PayloadIdentifier"))
  {
    [v90 setPayloadIdentifier:{sub_10000A540(a1, @"PayloadIdentifier"}];
  }

  [v90 setAutoJoinDisabled:!sub_10001CF90(a1)];
  v16 = sub_10001CFD8(a1);
  if (v16 == 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = 2 * (v16 == 2);
  }

  [v90 setLowDataMode:v17];
  [v90 setBundleID:{sub_10000A540(a1, @"BundleIdentifier"}];
  [v90 setLastJoinedBySystemAt:{sub_10000A540(a1, @"lastAutoJoined"}];
  [v90 setLastJoinedByUserAt:{sub_10000A540(a1, @"lastJoined"}];
  v18 = [sub_10000A540(a1 @"WiFiManagerKnownNetworksEventType")];
  v19 = [sub_10000A540(a1 @"WiFiNetworkAttributeSource")];
  v20 = [sub_10000A540(a1 @"NetworkOriginator")];
  v21 = v20;
  if (v20 <= 1)
  {
    if (v20)
    {
      if (v20 != 1)
      {
        goto LABEL_69;
      }

      goto LABEL_66;
    }

    if ([v90 bundleID])
    {
      v22 = 14;
      goto LABEL_76;
    }

LABEL_69:
    v22 = 17;
    if (v21 == 3)
    {
      goto LABEL_76;
    }

    if (v19 == 1)
    {
      goto LABEL_76;
    }

    v22 = 21;
    if (v21 == 7 || v19 == 3)
    {
      goto LABEL_76;
    }

    if (v21 == 4)
    {
      v22 = 7;
      goto LABEL_76;
    }

    if (v18 == 30)
    {
      v22 = 22;
      goto LABEL_76;
    }

    if (v21 == 5)
    {
      v22 = 12;
      goto LABEL_76;
    }

    if ([v90 payloadUUID])
    {
LABEL_176:
      v22 = 9;
      goto LABEL_76;
    }

    v22 = 16;
    if (v18 == 14 || v19 == 2)
    {
      goto LABEL_76;
    }

    if (v18 <= 5)
    {
      switch(v18)
      {
        case 1:
          v22 = 5;
          goto LABEL_76;
        case 3:
          v22 = 8;
          goto LABEL_76;
        case 5:
          v22 = 13;
          goto LABEL_76;
      }
    }

    else if (v18 > 16)
    {
      if (v18 == 17)
      {
        goto LABEL_176;
      }

      if (v18 == 28)
      {
        v22 = 19;
        goto LABEL_76;
      }
    }

    else
    {
      if (v18 == 6)
      {
        v22 = 6;
        goto LABEL_76;
      }

      if (v18 == 11)
      {
        v22 = 11;
        goto LABEL_76;
      }
    }

    v22 = 0;
    goto LABEL_76;
  }

  if (v20 == 2)
  {
    v22 = 10;
    goto LABEL_76;
  }

  if (v20 != 6)
  {
    goto LABEL_69;
  }

LABEL_66:
  v22 = 15;
LABEL_76:
  [v90 setAddReason:v22];
  [v90 setAddedAt:{sub_10000A540(a1, @"addedAt"}];
  [v90 setUpdatedAt:{sub_10000A540(a1, @"lastUpdated"}];
  [v90 setEAPProfile:{objc_msgSend(sub_10000A540(a1, @"EnterpriseProfile", "objectForKeyedSubscript:", @"EAPClientConfiguration"}];
  [v90 setDomainName:{sub_10000A540(a1, @"DomainName"}];
  [v90 setDisplayedOperatorName:{sub_10000A540(a1, @"DisplayedOperatorName"}];
  [v90 setServiceProviderRoamingEnabled:{sub_10000A540(a1, @"SPRoaming"}];
  [v90 setCellularNetworkInfo:{sub_10000A540(a1, @"MCCandMNC"}];
  [v90 setNAIRealmNameList:{sub_10000A540(a1, @"NaiRealmName"}];
  [v90 setRoamingConsortiumList:{sub_10000A540(a1, @"RoamingConsortiumOIs"}];
  [v90 setUserPreferredNetworkNames:{sub_10000A540(a1, @"userPreferredNetworkNames"}];
  [v90 setUserPreferredPasspointDomains:{sub_10000A540(a1, @"userPreferredPasspointDomains"}];
  [v90 setNetworkGroupID:{sub_10000A540(a1, @"networkGroupID"}];
  [v90 setNetworkGroupPriority:{objc_msgSend(sub_10000A540(a1, @"networkGroupPriority", "unsignedIntegerValue")}];
  [v90 setLastDiscoveredAt:{sub_10000A540(a1, @"discoveredAt"}];
  v23 = sub_10000A540(a1, @"TransitionDisabledFlags");
  if (v23)
  {
    [v90 setTransitionDisabledFlags:{objc_msgSend(v23, "unsignedIntValue")}];
  }

  [v90 setStandalone6G:{sub_10000A540(a1, @"Standalone"}];
  v24 = sub_10000A540(a1, @"networkKnownBSSListKey");
  if (v24)
  {
    v25 = v24;
    if (CFArrayGetCount(v24))
    {
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      obj = v25;
      v94 = [(__CFArray *)v25 countByEnumeratingWithState:&v104 objects:v121 count:16];
      if (v94)
      {
        v95 = 0;
        v93 = *v105;
        v92 = CWFCoreWiFiSpecificAttributesKey;
        do
        {
          for (i = 0; i != v94; i = i + 1)
          {
            if (*v105 != v93)
            {
              objc_enumerationMutation(obj);
            }

            v27 = *(*(&v104 + 1) + 8 * i);
            valuePtr = 0;
            p_valuePtr = &valuePtr;
            v115 = 0x3052000000;
            v116 = sub_100002B60;
            v28 = qword_100298608;
            v117 = sub_100006770;
            v118 = qword_100298608;
            if (!qword_100298608)
            {
              v108 = _NSConcreteStackBlock;
              v109 = 3221225472;
              v110 = sub_1000A3C40;
              v111 = &unk_1002608E0;
              v112 = &valuePtr;
              sub_1000A3C40(&v108);
              v28 = *(p_valuePtr + 40);
            }

            _Block_object_dispose(&valuePtr, 8);
            v29 = objc_alloc_init(v28);
            [v27 objectForKeyedSubscript:@"BSSID"];
            [v29 setBSSID:CWFCorrectEthernetAddressString()];
            v30 = [v27 objectForKeyedSubscript:@"CHANNEL"];
            v31 = [v27 objectForKeyedSubscript:@"CHANNEL_FLAGS"];
            if (v30)
            {
              v32 = v31;
              if (v31)
              {
                v33 = objc_alloc_init(sub_10001D01C());
                [v33 setChannel:{objc_msgSend(v30, "integerValue")}];
                [v33 setFlags:{objc_msgSend(v32, "unsignedIntValue")}];
                [v29 setChannel:v33];
              }
            }

            if ([v29 BSSID] && objc_msgSend(v29, "channel"))
            {
              [v29 setLastAssociatedAt:{objc_msgSend(v27, "objectForKeyedSubscript:", @"lastRoamed"}];
              v34 = [v27 objectForKeyedSubscript:@"networkLocnLat"];
              v35 = [v27 objectForKeyedSubscript:@"networkLocnLong"];
              v36 = [v27 objectForKeyedSubscript:@"networkLocnAccuracy"];
              v37 = [v27 objectForKeyedSubscript:@"networkLocnTimestamp"];
              if (v34)
              {
                if (v35)
                {
                  if (v36)
                  {
                    v38 = v37;
                    if (v37)
                    {
                      valuePtr = 0;
                      p_valuePtr = &valuePtr;
                      v115 = 0x3052000000;
                      v116 = sub_100002B60;
                      v39 = qword_100298618;
                      v117 = sub_100006770;
                      v118 = qword_100298618;
                      if (!qword_100298618)
                      {
                        v108 = _NSConcreteStackBlock;
                        v109 = 3221225472;
                        v110 = sub_1000A3CF0;
                        v111 = &unk_1002608E0;
                        v112 = &valuePtr;
                        sub_1000A3CF0(&v108);
                        v39 = *(p_valuePtr + 40);
                      }

                      _Block_object_dispose(&valuePtr, 8);
                      v40 = [v39 alloc];
                      [v34 doubleValue];
                      v42 = v41;
                      [v35 doubleValue];
                      v44 = v43;
                      v108 = 0;
                      v109 = &v108;
                      v110 = 0x2020000000;
                      v45 = off_100298628;
                      v111 = off_100298628;
                      if (!off_100298628)
                      {
                        valuePtr = _NSConcreteStackBlock;
                        p_valuePtr = 3221225472;
                        v115 = sub_1000A3EA4;
                        v116 = &unk_1002608E0;
                        v117 = &v108;
                        v46 = sub_1000A3D48();
                        v47 = dlsym(v46, "CLLocationCoordinate2DMake");
                        *(*(v117 + 1) + 24) = v47;
                        off_100298628 = *(*(v117 + 1) + 24);
                        v45 = *(v109 + 24);
                      }

                      _Block_object_dispose(&v108, 8);
                      if (!v45)
                      {
                        sub_100179CD8();
                      }

                      v48 = v45(v42, v44);
                      v50 = v49;
                      [v36 doubleValue];
                      [v29 setLocation:{objc_msgSend(v40, "initWithCoordinate:altitude:horizontalAccuracy:verticalAccuracy:timestamp:", v38, v48, v50, 0.0, v51, 0.0)}];
                    }
                  }
                }
              }

              v52 = [v27 objectForKeyedSubscript:@"colocated2GHzRNRChannel"];
              v53 = [v27 objectForKeyedSubscript:@"colocated2GHzRNRChannelFlags"];
              if (v52)
              {
                v54 = v53;
                if (v53)
                {
                  v55 = objc_alloc_init(sub_10001D01C());
                  [v55 setChannel:{objc_msgSend(v52, "integerValue")}];
                  [v55 setFlags:{objc_msgSend(v54, "unsignedIntValue")}];
                  [v29 setColocated2GHzRNRChannel:v55];
                }
              }

              v56 = [v27 objectForKeyedSubscript:@"colocated5GHzRNRChannel"];
              v57 = [v27 objectForKeyedSubscript:@"colocated5GHzRNRChannelFlags"];
              if (v56)
              {
                v58 = v57;
                if (v57)
                {
                  v59 = objc_alloc_init(sub_10001D01C());
                  [v59 setChannel:{objc_msgSend(v56, "integerValue")}];
                  [v59 setFlags:{objc_msgSend(v58, "unsignedIntValue")}];
                  [v29 setColocated5GHzRNRChannel:v59];
                }
              }

              [v29 setAWDLRealTimeModeTimestamp:{objc_msgSend(v27, "objectForKeyedSubscript:", @"AWDLRealTimeModeTimestamp"}];
              [v29 setIPv4NetworkSignature:{objc_msgSend(v27, "objectForKeyedSubscript:", @"IPv4NetworkSignature"}];
              [v29 setIPv6NetworkSignature:{objc_msgSend(v27, "objectForKeyedSubscript:", @"IPv6NetworkSignature"}];
              [v29 setDHCPServerID:{objc_msgSend(v27, "objectForKeyedSubscript:", @"DHCPServerID"}];
              [v29 setDHCPv6ServerID:{objc_msgSend(v27, "objectForKeyedSubscript:", @"DHCPv6ServerID"}];
              v60 = +[NSMutableDictionary dictionary];
              v102 = 0u;
              v103 = 0u;
              v100 = 0u;
              v101 = 0u;
              v61 = +[CWFBSS supportedOSSpecificKeys];
              v62 = [v61 countByEnumeratingWithState:&v100 objects:v120 count:16];
              if (v62)
              {
                v63 = *v101;
                do
                {
                  for (j = 0; j != v62; j = j + 1)
                  {
                    if (*v101 != v63)
                    {
                      objc_enumerationMutation(v61);
                    }

                    [v60 setObject:sub_10000A540(a1 forKeyedSubscript:{*(*(&v100 + 1) + 8 * j)), *(*(&v100 + 1) + 8 * j)}];
                  }

                  v62 = [v61 countByEnumeratingWithState:&v100 objects:v120 count:16];
                }

                while (v62);
              }

              if ([v60 count])
              {
                v65 = v60;
              }

              else
              {
                v65 = 0;
              }

              [v29 setOSSpecificAttributes:v65];
              [v29 setCoreWiFiSpecificAttributes:{objc_msgSend(v27, "objectForKeyedSubscript:", v92)}];
              v66 = v95;
              if (!v95)
              {
                v66 = +[NSMutableSet set];
              }

              v95 = v66;
              [v66 addObject:v29];
            }
          }

          v94 = [(__CFArray *)obj countByEnumeratingWithState:&v104 objects:v121 count:16];
        }

        while (v94);
      }

      else
      {
        v95 = 0;
      }

      [v90 setBSSList:v95];
    }
  }

  [v90 setPrivacyProxyEnabled:sub_10001D108(a1)];
  [v90 setPrivacyProxyBlockedReason:{sub_10000A540(a1, @"PrivacyProxyBlockedReason"}];
  if (sub_10000A540(a1, @"WiFiNetworkAttributeIsMoving"))
  {
    v67 = sub_10000A540(a1, @"WiFiNetworkAttributeIsMoving");
    if (CFEqual(v67, kCFBooleanTrue))
    {
      v68 = 1;
    }

    else
    {
      v68 = 2;
    }
  }

  else
  {
    v68 = 0;
  }

  [v90 setMovingAttribute:v68];
  if (sub_10000A540(a1, @"WiFiNetworkAttributeIsPublic"))
  {
    v69 = sub_10000A540(a1, @"WiFiNetworkAttributeIsPublic");
    if (CFEqual(v69, kCFBooleanTrue))
    {
      v70 = 1;
    }

    else
    {
      v70 = 2;
    }
  }

  else
  {
    v70 = 0;
  }

  [v90 setPublicAttribute:v70];
  [v90 setCarplayUUID:{sub_10000A540(a1, @"CARPLAY_UUID"}];
  [v90 setCarplayNetwork:sub_10000A7CC(a1) != 0];
  [v90 setPersonalHotspot:sub_10000A604(a1) != 0];
  [v90 setNANServiceID:{sub_10000A540(a1, @"WiFiNetworkNANServiceID"}];
  [v90 setPublicAirPlayNetwork:sub_10001D200(a1) != 0];
  [v90 setDNSHeuristicsFilteredNetwork:{sub_10000A540(a1, @"FilteredNetwork"}];
  [v90 setDNSHeuristicsFailureStateInfo:{sub_10000A540(a1, @"DNSFailures"}];
  if (sub_10001D2A4(a1) == 1)
  {
    v71 = 1;
  }

  else
  {
    v71 = 2 * (sub_10001D2A4(a1) == 2);
  }

  [v90 setNetworkOfInterestWorkState:v71];
  if (sub_10000FC60(a1) == 1)
  {
    v72 = 1;
  }

  else if (sub_10000FC60(a1) == 2)
  {
    v72 = 2;
  }

  else if (sub_10000FC60(a1) == 3)
  {
    v72 = 3;
  }

  else
  {
    v72 = 0;
  }

  [v90 setNetworkOfInterestHomeState:v72];
  v73 = sub_10000A540(a1, @"WiFiNetworkExpirationDate");
  if (v73)
  {
    valuePtr = 0;
    CFNumberGetValue(v73, kCFNumberDoubleType, &valuePtr);
    v74 = CFDateCreate(kCFAllocatorDefault, *&valuePtr);
    if (v74)
    {
      [v90 setExpirationDate:v74];
      CFRelease(v74);
    }
  }

  v75 = +[NSMutableDictionary dictionary];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v76 = +[CWFNetworkProfile supportedOSSpecificKeys];
  v77 = [v76 countByEnumeratingWithState:&v96 objects:v119 count:16];
  if (v77)
  {
    v78 = *v97;
    do
    {
      for (k = 0; k != v77; k = k + 1)
      {
        if (*v97 != v78)
        {
          objc_enumerationMutation(v76);
        }

        [v75 setObject:sub_10000A540(a1 forKeyedSubscript:{*(*(&v96 + 1) + 8 * k)), *(*(&v96 + 1) + 8 * k)}];
      }

      v77 = [v76 countByEnumeratingWithState:&v96 objects:v119 count:16];
    }

    while (v77);
  }

  if ([v75 count])
  {
    v80 = v75;
  }

  else
  {
    v80 = 0;
  }

  [v90 setOSSpecificAttributes:v80];
  [v90 setCoreWiFiSpecificAttributes:{sub_10000A540(a1, CWFCoreWiFiSpecificAttributesKey)}];
  if (sub_10001D308(a1))
  {
    if (CFDictionaryContainsKey(a1[2], @"PayloadUUID"))
    {
      [v90 setAllowedBeforeFirstUnlock:1];
    }

    else
    {
      v81 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Network is AllowedBeforeFirstUnlock but NOT setting the flag. Network is not profile-based.", "WiFiNetworkCreateCoreWiFiNetworkProfile"}];
      }

      objc_autoreleasePoolPop(v81);
    }
  }

LABEL_165:
  objc_autoreleasePoolPop(context);
  return v90;
}

const __CFString *sub_10001CA74(const void *a1)
{
  result = sub_10000A540(a1, @"SSID");
  if (!result)
  {
    result = sub_10000A878(a1);
    if (result)
    {
      result = CFStringCreateExternalRepresentation(kCFAllocatorDefault, result, 0x8000100u, 0);
      if (result)
      {
        v3 = result;
        sub_10000AD34(a1, @"SSID", result);
        CFRelease(v3);

        return sub_10000A540(a1, @"SSID");
      }
    }
  }

  return result;
}

uint64_t sub_10001CB28(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    Value = CFDictionaryGetValue(v1, @"SCAN_RESULT_OWE_MULTI_SSID");
    LOBYTE(result) = sub_10001CD48(Value);
    if (!result)
    {
      v3 = CFDictionaryGetValue(v1, @"ALLOW_OWE_TSN");
      LOBYTE(result) = sub_10001CD48(v3);
    }
  }

  return result;
}

uint64_t sub_10001CB84(const void *a1)
{
  v2 = sub_10000A540(a1, @"UserDirected");
  v3 = sub_10001CD48(v2);
  if (v3 || !sub_10001CBF8(a1))
  {
    v4 = 0;
  }

  else
  {
    sub_10000AD34(a1, @"UserDirected", kCFBooleanTrue);
    v4 = 1;
  }

  if (v3)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

BOOL sub_10001CBF8(const void *a1)
{
  v2 = sub_10000A540(a1, @"HIDDEN_NETWORK");
  if (sub_10001CD48(v2))
  {
    return 1;
  }

  v3 = sub_10000A540(a1, @"scanWasDirected");
  return sub_10001CD48(v3) || sub_10001CDD8(a1);
}

uint64_t sub_10001CC5C()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = sub_100002B60;
  v0 = qword_1002985F8;
  v7 = sub_100006770;
  v8 = qword_1002985F8;
  if (!qword_1002985F8)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_1000A3A8C;
    v2[3] = &unk_1002608E0;
    v2[4] = &v3;
    sub_1000A3A8C(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_10001CD30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const __CFNumber *sub_10001CD48(const __CFNumber *result)
{
  valuePtr = 0;
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v1, kCFNumberCFIndexType, &valuePtr);
      return valuePtr;
    }

    else
    {
      v3 = CFGetTypeID(v1);
      if (v3 == CFBooleanGetTypeID())
      {
        return (kCFBooleanTrue == v1);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL sub_10001CDD8(const void *a1)
{
  v1 = sub_10000A878(a1);
  if (v1 && (v2 = v1, !CFEqual(v1, &stru_1002680F8)))
  {
    return CFEqual(v2, @" ") != 0;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_10001CE30(uint64_t a1)
{
  valuePtr = 3;
  v2 = sub_10000A540(a1, @"ShareMode");
  if (v2)
  {
    CFNumberGetValue(v2, kCFNumberIntType, &valuePtr);
  }

  v3 = a1 && CFDictionaryContainsKey(*(a1 + 16), @"PayloadUUID");
  v4 = sub_100009730(a1);
  v5 = sub_10001CF3C(a1);
  if (a1)
  {
    v6 = CFDictionaryGetValue(*(a1 + 16), @"WEP") == kCFBooleanTrue;
    v7 = sub_10000A754(*(a1 + 16)) == 0;
  }

  else
  {
    v6 = 0;
    v7 = 1;
  }

  v8 = v5 == 0 && v7;
  if (v4)
  {
    v8 = 1;
  }

  if (((v3 || v6) | v8))
  {
    return 1;
  }

  else
  {
    return valuePtr;
  }
}

uint64_t sub_10001CF3C(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (sub_10000B044(v1))
    {
      return 1;
    }

    else
    {

      return sub_10000B0AC(v1);
    }
  }

  return result;
}

const __CFNumber *sub_10001CFD8(uint64_t a1)
{
  valuePtr = 0;
  result = sub_10000A540(a1, @"SaveDataMode");
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
    return valuePtr;
  }

  return result;
}

uint64_t sub_10001D01C()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = sub_100002B60;
  v0 = qword_100298610;
  v7 = sub_100006770;
  v8 = qword_100298610;
  if (!qword_100298610)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_1000A3C98;
    v2[3] = &unk_1002608E0;
    v2[4] = &v3;
    sub_1000A3C98(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_10001D0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_10001D108(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_10001D1DC(a1);
    if (CFDictionaryContainsKey(v1, @"PrivacyProxyEnabled"))
    {
      v2 = sub_1000086AC();
      return sub_10000A540(v2, v3) == kCFBooleanTrue;
    }
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkGetPrivacyProxyEnabled"}];
    }

    objc_autoreleasePoolPop(v5);
  }

  return 1;
}

const void *sub_10001D1E8(uint64_t a1)
{

  return sub_10000FF3C(v1, a1);
}

uint64_t sub_10001D200(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_10001D1DC(a1);
    result = CFDictionaryContainsKey(v1, @"PublicAirPlayNetwork");
    if (result)
    {
      v3 = sub_1000086AC();
      return sub_10000A540(v3, v4) == kCFBooleanTrue;
    }
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiNetworkIsPublicAirPlayNetwork"}];
    }

    objc_autoreleasePoolPop(v5);
    return 0;
  }

  return result;
}

const __CFNumber *sub_10001D2A4(uint64_t a1)
{
  valuePtr = 0;
  if (a1)
  {
    result = sub_10000A540(a1, @"NetworkOfInterestWorkState");
    if (result)
    {
      Value = CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
      if (valuePtr - 3 >= 0xFFFFFFFE || Value == 0)
      {
        return valuePtr;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    sub_1001799E4();
    return 0;
  }

  return result;
}

const __CFBoolean *sub_10001D308(uint64_t a1)
{
  if (a1)
  {
    result = sub_10000A540(a1, @"networkIsAllowedBeforeFirstUnlock");
    if (result)
    {
      v3 = result;
      return (CFDictionaryContainsKey(*(a1 + 16), @"PayloadUUID") && v3 == kCFBooleanTrue);
    }
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null networkRef", "WiFiNetworkIsAllowedBeforeFirstUnlock"}];
    }

    objc_autoreleasePoolPop(v5);
    return 0;
  }

  return result;
}

uint64_t sub_10001D3BC(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: NULL Device Manager !", "WiFiDeviceManagerSetTrafficEngrAppInfo"}];
  }

  objc_autoreleasePoolPop(v2);
  return 4294963396;
}

void sub_10001D438(uint64_t a1, const __CFString *a2, int a3)
{
  if ((a3 == 4 || a3 == 1) && [+[WiFiUserInteractionMonitor isRealTimeAppActive] sharedInstance]
  {
    if (a2)
    {
      v5 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"[TrafficEngineering]: Currently Running Critical Apps %@", a2}];
      }

      objc_autoreleasePoolPop(v5);
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  length = CFStringFind(a2, @"icloud.restore", 1uLL).length;
  v8 = CFStringFind(a2, @"mobile.backup", 1uLL).length;
  v9 = CFStringFind(a2, @"nfa", 1uLL).length;
  v10 = (CFStringFind(a2, @"druva", 1uLL).length | v9 | v8 | length) != 0;
  if (a2 && v10)
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"[TrafficEngineering]: Currently Running NonCritical Apps %@", a2}];
    }

    objc_autoreleasePoolPop(v11);
  }

  *(a1 + 2514) = v6;
  *(a1 + 2515) = v10;

  sub_10001D5A4(a1);
}

void sub_10001D5A4(uint64_t a1)
{
  if (a1)
  {
    context[0] = a1;
    context[1] = 0xAAAAAAAA0000007BLL;
    context[2] = 0;
    context[3] = 1;
    context[4] = 0;
    CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
  }

  else
  {
    sub_1001713E8();
  }
}

void sub_10001D70C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, int a14, unsigned int valuePtr, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_10000FDC0();
  a26 = v27;
  a27 = v32;
  valuePtr = v29;
  a13 = v31;
  if (!v28)
  {
    objc_autoreleasePoolPush();
    v53 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_33;
    }

    v54 = "%s: NULL device";
LABEL_32:
    [v53 WFLog:3 message:v54];
    goto LABEL_33;
  }

  v33 = v30;
  if (!v30)
  {
    objc_autoreleasePoolPush();
    v53 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_33;
    }

    v54 = "%s: NULL UUID";
    goto LABEL_32;
  }

  v34 = v31;
  if ((v31 & 0x8000000000000000) == 0)
  {
    v35 = v28;
    if (sub_10001D9F0(v28, v30, v29) == v31)
    {
      goto LABEL_20;
    }

    v36 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    if (!v36)
    {
      goto LABEL_20;
    }

    v37 = v36;
    Value = CFDictionaryGetValue(*(v35 + 25), v33);
    if (Value)
    {
      Mutable = Value;
      CFRetain(Value);
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionarySetValue(*(v35 + 25), v33, Mutable);
      if (!Mutable)
      {
        v52 = v37;
        goto LABEL_19;
      }
    }

    v40 = sub_100008684();
    v43 = sub_10001D9F0(v40, v41, v42);
    if (v34)
    {
      v44 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCFIndexType, &a13);
      if (!v44)
      {
LABEL_17:
        CFRelease(Mutable);
        CFRelease(v37);
        if (!v44)
        {
LABEL_20:
          sub_100008690();
          return;
        }

        v52 = v44;
LABEL_19:
        CFRelease(v52);
        goto LABEL_20;
      }

      CFDictionarySetValue(Mutable, v37, v44);
    }

    else
    {
      CFDictionaryRemoveValue(Mutable, v37);
      if (!CFDictionaryGetCount(Mutable))
      {
        CFDictionaryRemoveValue(*(v35 + 25), v33);
      }

      v44 = 0;
    }

    v45 = objc_autoreleasePoolPush();
    v46 = off_100298C40;
    if (off_100298C40)
    {
      sub_1000262B0(valuePtr);
      [v46 WFLog:3 message:{"Updated minimum command queue priority for UUID '%@' (%ld -> %ld, type=%@)"}];
    }

    objc_autoreleasePoolPop(v45);
    v47 = sub_100008684();
    if (v43 != sub_10001D9F0(v47, v48, v49))
    {
      v50 = objc_autoreleasePoolPush();
      v51 = off_100298C40;
      if (off_100298C40)
      {
        sub_1000262B0(valuePtr);
        [v51 WFLog:3 message:{"Updated prevailing minimum command queue priority (%ld -> %ld, type=%@)"}];
      }

      objc_autoreleasePoolPop(v50);
      sub_1001AB638(*(v35 + 22));
    }

    goto LABEL_17;
  }

  objc_autoreleasePoolPush();
  v53 = off_100298C40;
  if (off_100298C40)
  {
    v54 = "%s: invalid priority (%ld)";
    goto LABEL_32;
  }

LABEL_33:
  sub_100008690();

  objc_autoreleasePoolPop(v55);
}

CFNumberRef sub_10001D9F0(CFNumberRef result, const void *a2, int a3)
{
  valuePtr = a3;
  v17 = 0;
  if (result)
  {
    v4 = result;
    result = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    if (result)
    {
      v5 = result;
      v6 = *(v4 + 25);
      if (a2)
      {
        Value = CFDictionaryGetValue(v6, a2);
        if (Value)
        {
          v8 = CFDictionaryGetValue(Value, v5);
          if (v8)
          {
            CFNumberGetValue(v8, kCFNumberCFIndexType, &v17);
          }
        }
      }

      else
      {
        Count = CFDictionaryGetCount(v6);
        if (Count)
        {
          v10 = Count;
          __chkstk_darwin();
          v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
          memset(v12, 170, v11);
          CFDictionaryGetKeysAndValues(*(v4 + 25), v12, 0);
          if (v10 >= 1)
          {
            v13 = 0;
            do
            {
              v14 = CFDictionaryGetValue(*(v4 + 25), *v12);
              if (v14)
              {
                v15 = CFDictionaryGetValue(v14, v5);
                if (v15)
                {
                  v16 = 0;
                  CFNumberGetValue(v15, kCFNumberCFIndexType, &v16);
                  if (v16 > v13)
                  {
                    v13 = v16;
                  }

                  v17 = v13;
                }
              }

              ++v12;
              --v10;
            }

            while (v10);
          }
        }
      }

      CFRelease(v5);
      return v17;
    }
  }

  return result;
}

uint64_t sub_10001DB70()
{
  v2 = *(v0 + 2804);
  v3 = *(v0 + 200);
  v4 = *(v0 + 40);
  return v1;
}

void sub_10001DB90(const void *a1)
{

  sub_100017C18(a1, v2, v1);
}

void sub_10001DBAC(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  if (!a1 || !a2 || !a3)
  {
    v18 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: CATSUpdate P2P Invalid arguments", "WiFiDeviceManagerCatsP2PUpdate"}];
    }

    goto LABEL_25;
  }

  v5 = +[WiFiP2PSPITransactionRequestor shared];
  if (!v5)
  {
    v18 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Fails to create WiFiP2PSPITransactionRequestor", "WiFiDeviceManagerCatsP2PUpdate"}];
    }

    goto LABEL_25;
  }

  v6 = v5;
  valuePtr = 0;
  Value = CFDictionaryGetValue(a3, @"CATS_APP_PRIORITY");
  if (!Value)
  {
    v18 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: CATSUpdate APPLE80211KEY_CATS_APP_PRIORITY key not found", "WiFiDeviceManagerCatsP2PUpdate"}];
    }

LABEL_25:

    objc_autoreleasePoolPop(v18);
    return;
  }

  CFNumberGetValue(Value, kCFNumberCharType, &valuePtr);
  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: CATSUpdate appPolicy (%d -> %d)", "WiFiDeviceManagerCatsP2PUpdate", *(a2 + 443), valuePtr}];
  }

  objc_autoreleasePoolPop(v8);
  v20 = 0;
  v9 = CFDictionaryGetValue(a3, @"CATS_APP_BITMAP");
  if (v9)
  {
    CFNumberGetValue(v9, kCFNumberLongLongType, &v20);
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: CATSUpdate appBitMap (0x%llx -> 0x%llx)", "WiFiDeviceManagerCatsP2PUpdate", *(a2 + 448), v20}];
    }

    objc_autoreleasePoolPop(v10);
    v11 = *(a2 + 448);
    v12 = v20;
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: CATSUpdate coPresenceBitChanged=%d gameBitChanged=%d", "WiFiDeviceManagerCatsP2PUpdate", ((v12 ^ v11) >> 6) & 1, ((v12 ^ v11) >> 7) & 1}];
    }

    objc_autoreleasePoolPop(v13);
    v14 = *(a2 + 443);
    if (v14 != valuePtr && v14 <= 3)
    {
      [v6 endTransaction:qword_1001CE7C0[*(a2 + 443)]];
      if (valuePtr > 1u)
      {
        if (valuePtr == 3)
        {
          v15 = &stru_100261D80;
          v16 = v6;
          v17 = 12;
        }

        else
        {
          if (valuePtr != 2)
          {
            return;
          }

          v15 = &stru_100261D20;
          v16 = v6;
          v17 = 1;
        }
      }

      else if (valuePtr)
      {
        if (valuePtr != 1)
        {
          return;
        }

        v15 = &stru_100261D40;
        v16 = v6;
        v17 = 2;
      }

      else
      {
        v15 = &stru_100261D60;
        v16 = v6;
        v17 = 3;
      }

      [v16 beginTransaction:v17 completionHandler:v15];
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: CATSUpdate APPLE80211KEY_CATS_APP_BITMAP key not found", "WiFiDeviceManagerCatsP2PUpdate"}];
    }

    objc_autoreleasePoolPop(v19);
  }
}

void sub_10001DEC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  if (a1 && a2 && a3)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: CATSUpdate UCM\n", "WiFiDeviceManagerCatsUcmUpdate"}];
    }

    objc_autoreleasePoolPop(v6);
    v7 = *(a2 + 4824);
    if (v7)
    {

      v7(a1, a2, a3);
      return;
    }

    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: catsUcmUpdate callback is NULL!", "WiFiDeviceManagerCatsUcmUpdate"}];
    }
  }

  else if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: CATSUpdate UCM Invalid arguments", "WiFiDeviceManagerCatsUcmUpdate"}];
  }

  objc_autoreleasePoolPop(v6);
}

void sub_10001DFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && a3)
  {
    context[0] = a1;
    context[1] = a2;
    context[2] = a3;
    CFSetApplyFunction(*(a1 + 144), sub_10001E09C, context);
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Invalid arguments", "WiFiManagerCatsUcmUpdate"}];
    }

    objc_autoreleasePoolPop(v3);
  }
}

void sub_10001E09C(uint64_t a1, void *a2)
{
  if (a1 && a2 && *a2 && a2[1])
  {
    v3 = a2[2];
    v4 = a2[1];

    sub_10001E090(a1, v4, v3);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Invalid arguments", "__WiFiManagerDispatchCatsUcmUpdateEvent"}];
    }

    objc_autoreleasePoolPop(v5);
  }
}

void sub_10001E138(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  v6 = objc_autoreleasePoolPush();
  if (a1 && a2 && a3)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: CATSUpdate Scan Manager\n", "WiFiDeviceManagerCatsScanUpdate"}];
    }

    objc_autoreleasePoolPop(v6);
    valuePtr = 0;
    Value = CFDictionaryGetValue(a3, @"CATS_APP_PRIORITY");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberCharType, &valuePtr);
      *(a2 + 424) = valuePtr;
      v8 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: CATSUpdate appPolicy=%d", "WiFiDeviceManagerCatsScanUpdate", valuePtr}];
      }

      objc_autoreleasePoolPop(v8);
      return;
    }

    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: CATSUpdate APPLE80211KEY_CATS_APP_PRIORITY key not found", "WiFiDeviceManagerCatsScanUpdate"}];
    }

    v9 = v10;
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: CATSUpdate Scan Manager Invalid arguments", "WiFiDeviceManagerCatsScanUpdate"}];
    }

    v9 = v6;
  }

  objc_autoreleasePoolPop(v9);
}

CFDictionaryRef sub_10001E2A4(const __CFAllocator *a1, int a2, int a3, int a4, const CFDictionaryKeyCallBacks *a5, const CFDictionaryValueCallBacks *a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *values)
{

  return CFDictionaryCreate(a1, (v14 - 40), &values, 2, a5, a6);
}

void sub_10001E2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16)
{

  sub_10007B98C(v19, v16, v18, v17, a16, a6);
}

void sub_10001E2FC(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: CATSUpdate P2P Error: %ld\n", "__CatsP2PUpdateCallback", a1}];
    }

    objc_autoreleasePoolPop(v2);
  }
}

id sub_10001E79C(void *a1, const char *a2)
{

  return [a1 WFLog:4 message:v2];
}

CFComparisonResult sub_10001E7FC(uint64_t a1, const __CFString *a2)
{

  return CFStringCompare(v2, a2, 0);
}

uint64_t sub_10001E814(const __CFString *a1)
{
  if (CFStringCompare(a1, @"MWS_BT_COEX_ULOFDMA_DISABLE", 0) == kCFCompareEqualTo)
  {
    return 358;
  }

  if (CFStringCompare(a1, @"MWS_RC1_COEX_ULOFDMA_DISABLE", 0) == kCFCompareEqualTo)
  {
    return 519;
  }

  if (CFStringCompare(a1, @"MWS_RC2_COEX_ULOFDMA_DISABLE", 0) == kCFCompareEqualTo)
  {
    return 520;
  }

  if (CFStringCompare(a1, @"MWS_LE_SCAN_PARAM_INFO", 0) == kCFCompareEqualTo)
  {
    return 521;
  }

  if (CFStringCompare(a1, @"MWSType7BITMAPWiFiEnh", 0) == kCFCompareEqualTo)
  {
    return 540;
  }

  if (CFStringCompare(a1, @"MWSCOEXBITMAPWiFiEnh", 0) == kCFCompareEqualTo)
  {
    return 541;
  }

  if (CFStringCompare(a1, @"MWSOCLBITMAPWiFiEnh", 0) == kCFCompareEqualTo)
  {
    return 542;
  }

  if (CFStringCompare(a1, @"MWS_RFEM_CONFIG_Enh", 0) == kCFCompareEqualTo)
  {
    return 543;
  }

  if (CFStringCompare(a1, @"MWS_ASSOC_PROTECTION_BITMAP_Enh", 0) == kCFCompareEqualTo)
  {
    return 544;
  }

  if (CFStringCompare(a1, @"MWS_SCAN_FREQ_Enh", 0) == kCFCompareEqualTo)
  {
    return 545;
  }

  if (CFStringCompare(a1, @"MWS_SCAN_FREQ_MODE_Enh", 0) == kCFCompareEqualTo)
  {
    return 546;
  }

  if (CFStringCompare(a1, @"MWS_CONDITION_ID_BITMAP_Enh", 0) == kCFCompareEqualTo)
  {
    return 547;
  }

  if (CFStringCompare(a1, @"MWS_ANTENNA_SELECTION_Enh", 0) == kCFCompareEqualTo)
  {
    return 548;
  }

  if (CFStringCompare(a1, @"MWS_TIME_SHARING_Enh", 0) == kCFCompareEqualTo)
  {
    return 539;
  }

  if (CFStringCompare(a1, @"APPLE80211KEY_MWS_ACCESSORY_COEX_CONFIG", 0))
  {
    return 0;
  }

  return 459;
}

uint64_t sub_10001EA10(uint64_t a1, const void *a2, const void *a3, uint64_t a4)
{
  v8 = sub_100007060(a1, a2);
  v9 = v8;
  if (!v8)
  {
    sub_1001521B0(a2);
    return v9;
  }

  v10 = CFGetTypeID(v8);
  if (v10 == sub_100006F40())
  {
    sub_10010F2E0(v9, a3, a4);
    return 0;
  }

  v12 = CFGetTypeID(a3);
  if (v12 == CFNumberGetTypeID())
  {
    valuePtr = 0;
    if (!CFNumberGetValue(a3, kCFNumberIntType, &valuePtr))
    {
      return 0;
    }

    for (i = 6; ; --i)
    {
      v14 = *(a1 + 16);
      v15 = Apple80211Set();
      v9 = v15;
      if (v15 != -3905 && v15 != 61 && v15 != 16)
      {
        break;
      }

      if (!i)
      {
        break;
      }

      usleep(0x7A120u);
    }
  }

  else
  {
    v17 = CFGetTypeID(a3);
    if (v17 != CFStringGetTypeID())
    {
      return 0;
    }

    if (CFEqual(a3, @"IO80211InterfaceBGScanParams") || CFEqual(a3, @"IO80211InterfaceBGDynamicProfileParams"))
    {
      for (j = 6; ; --j)
      {
        v19 = *(a1 + 16);
        v20 = Apple80211Set();
        v9 = v20;
        if (v20 != -3905 && v20 != 61 && v20 != 16)
        {
          break;
        }

        if (!j)
        {
          break;
        }

        usleep(0x7A120u);
      }
    }

    else
    {
      for (k = 6; ; --k)
      {
        v23 = *(a1 + 16);
        v24 = Apple80211SetProperty();
        v9 = v24;
        if (v24 != -3905 && v24 != 61 && v24 != 16)
        {
          break;
        }

        if (!k)
        {
          break;
        }

        usleep(0x7A120u);
      }
    }

    if (v9)
    {
      v26 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"WiFiDeviceSetProperty", a3, v9}];
      }

      objc_autoreleasePoolPop(v26);
    }
  }

  return v9;
}

CFNumberRef sub_10001EC30(uint64_t a1, uint64_t a2, const void *a3)
{

  return CFNumberCreate(v3, kCFNumberIntType, a3);
}

CFStringRef sub_10001EC48(uint64_t a1, const char *a2)
{

  return CFStringCreateWithCString(v2, a2, 0x8000100u);
}

void sub_10001EC7C()
{
  v1 = *(v0 - 96);
  v2 = *(v0 - 108);
  *(v0 - 104);
  v3 = *(v0 - 100);
}

void sub_10001ECAC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    context[0] = a1;
    context[1] = 0xAAAAAAAA0000006BLL;
    context[2] = a2;
    context[3] = 1;
    context[4] = 0;
    CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
  }

  else
  {
    sub_10016BF38();
  }
}

uint64_t sub_10001ED0C(uint64_t result, uint64_t a2)
{
  if (result && a2)
  {
    v3 = *(result + 64);
    v4 = sub_100006F88(v3);

    return sub_100006F94(v3, v4, 484, 0, a2);
  }

  return result;
}

uint64_t sub_10001ED70(uint64_t a1, const void *a2)
{

  return CFDictionaryGetValueIfPresent(v2, a2, (v3 - 112));
}

void sub_10001EDD0(uint64_t a1, uint64_t a2)
{
  context[0] = a1;
  context[1] = 0xAAAAAAAA00000067;
  context[3] = 0;
  context[4] = 0;
  context[2] = a2;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
}

void sub_10001EE20(uint64_t a1, const void *a2)
{
  if (a1)
  {
    if (a2)
    {
      CFDictionaryRemoveValue(*(a1 + 7160), a2);
    }
  }
}

void sub_10001EE34(uint64_t a1, io_registry_entry_t a2, int a3)
{
  if (!a1 || !a2)
  {
    return;
  }

  v6 = sub_10000D83C("__WiFiManagerBatteryEventCallback");
  v7 = *(a1 + 322);
  valuePtr = 0;
  properties[0] = 0;
  Current = CFAbsoluteTimeGetCurrent();
  v9 = *(a1 + 984);
  if (v9 != 0.0 && Current < v9)
  {
    goto LABEL_28;
  }

  CFProperties = IORegistryEntryCreateCFProperties(a2, properties, kCFAllocatorDefault, 0);
  if (CFProperties)
  {
    v12 = 1;
  }

  else
  {
    v12 = properties[0] == 0;
  }

  if (v12)
  {
    sub_1001732EC(CFProperties);
LABEL_57:
    v15 = 0;
    goto LABEL_16;
  }

  Value = CFDictionaryGetValue(properties[0], @"CurrentCapacity");
  if (!Value)
  {
    goto LABEL_57;
  }

  if (!CFNumberGetValue(Value, kCFNumberIntType, &valuePtr))
  {
    goto LABEL_57;
  }

  v14 = CFDictionaryGetValue(properties[0], @"MaxCapacity");
  if (!v14 || !CFNumberGetValue(v14, kCFNumberIntType, &valuePtr + 4))
  {
    goto LABEL_57;
  }

  v15 = 1;
LABEL_16:
  if (properties[0])
  {
    CFRelease(properties[0]);
    properties[0] = 0;
  }

  v16 = *(a1 + 976);
  if (v15)
  {
    v17 = (100 * valuePtr) / HIDWORD(valuePtr);
    *(a1 + 976) = v17;
    *(a1 + 984) = Current + (60 * (v17 / 0xA));
    if (v16 <= 9)
    {
      if (v17 < 0xA)
      {
        goto LABEL_28;
      }
    }

    else if (v17 >= 0xA)
    {
      goto LABEL_28;
    }
  }

  else
  {
    *(a1 + 976) = 0;
    *(a1 + 984) = 0;
    if (v16 <= 9)
    {
      goto LABEL_28;
    }
  }

  v18 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Battery state has changed. Remaining %d percent", *(a1 + 976)}];
  }

  objc_autoreleasePoolPop(v18);
LABEL_28:
  if (a3 == -536723200)
  {
    CFProperty = IORegistryEntryCreateCFProperty(a2, @"ExternalConnected", kCFAllocatorDefault, 0);
    v20 = CFProperty;
    if (CFProperty && CFEqual(CFProperty, kCFBooleanTrue))
    {
      if (!*(a1 + 322))
      {
        v21 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:"External power source attached"];
        }

        objc_autoreleasePoolPop(v21);
        if ((*(a1 + 800) & 0xF) == 0 && *(a1 + 756) != 2)
        {
          sub_10000D278(a1);
        }

        *(a1 + 322) = 1;
      }
    }

    else
    {
      if (*(a1 + 322))
      {
        *(a1 + 322) = 0;
        v22 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:"External power source removed"];
        }

        objc_autoreleasePoolPop(v22);
        if ((*(a1 + 800) & 0xF) == 0)
        {
          sub_100006910(a1);
        }
      }

      if (!v20)
      {
        if (!*(a1 + 976))
        {
          v23 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: externally powered platform. Cancelling disassociation timer.", "__WiFiManagerBatteryEventCallback"}];
          }

          objc_autoreleasePoolPop(v23);
          if ((*(a1 + 800) & 0xF) == 0 && *(a1 + 756) != 2)
          {
            sub_10000D278(a1);
          }

          *(a1 + 322) = 1;
        }

        goto LABEL_45;
      }
    }

    CFRelease(v20);
  }

LABEL_45:
  sub_10001F1EC(a1, 0, *(a1 + 1170), 2);
  properties[0] = a1;
  properties[1] = 0xAAAAAAAA0000004ALL;
  properties[2] = 0;
  properties[3] = 1;
  properties[4] = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, properties);
  sub_10001F734(a1, *(a1 + 322), *(a1 + 976));
  if (v7 != *(a1 + 322))
  {
    sub_1000084DC(a1);
  }
}

void sub_10001F1EC(uint64_t a1, const void *a2, int a3, int a4)
{
  Count = CFSetGetCount(*(a1 + 1176));
  if (a2)
  {
    v9 = CFSetContainsValue(*(a1 + 1176), a2);
    if (a3)
    {
      if (v9)
      {
        return;
      }

      CFSetAddValue(*(a1 + 1176), a2);
    }

    else
    {
      if (!v9)
      {
        return;
      }

      CFSetRemoveValue(*(a1 + 1176), a2);
    }
  }

  v10 = [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
  v11 = v10;
  v34 = v10;
  if (*(a1 + 1171))
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v14 = CFSetGetCount(*(a1 + 1176));
    v15 = (v14 != 0) | v11;
    v13 = (v14 != 0) | v11 & 1;
    if (v15)
    {
      v12 = v14;
    }

    else
    {
      v12 = 0;
    }
  }

  v16 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"manager->wow.lpasSetting %d CFSetGetCount(manager->wow.wowClients) %ld isWowActivityRegistered=%d manager->wow.overrideWoWState %d manager->externalPower %d manager->iokit.battery.chargeLevel %d", *(a1 + 1170), CFSetGetCount(*(a1 + 1176)), v34, *(a1 + 1171), *(a1 + 322), *(a1 + 976)}];
  }

  objc_autoreleasePoolPop(v16);
  v17 = *(a1 + 1170);
  if (!*(a1 + 1170) || (CFSetGetCount(*(a1 + 1176)) != 0) | v34 & 1 && (v17 = *(a1 + 1171), !*(a1 + 1171)))
  {
LABEL_20:
    if (a4)
    {
      goto LABEL_21;
    }

LABEL_25:
    v18 = 1;
    goto LABEL_26;
  }

  if (*(a1 + 322) || *(a1 + 976) >= 0xAu)
  {
    v17 = 1;
    goto LABEL_20;
  }

  v17 = 0;
  if (!a4)
  {
    goto LABEL_25;
  }

LABEL_21:
  if (a4 == 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *(a1 + 1172);
  }

LABEL_26:
  if (*(a1 + 1168) != v13 || *(a1 + 1184) != v17 || *(a1 + 1172) != v18)
  {
    *(a1 + 1169) = v13;
    *(a1 + 1184) = v17;
    *(a1 + 1172) = v18;
    context[0] = a1;
    context[1] = 0xAAAAAAAA00000007;
    context[2] = 0;
    context[3] = 1;
    context[4] = 0;
    CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
    v36[0] = a1;
    v36[1] = 0xAAAAAAAA00000030;
    v37 = 0;
    v38 = 0;
    v36[2] = 0;
    CFSetApplyFunction(*(a1 + 112), sub_100003B88, v36);
    v19 = v37;
    *(a1 + 1168) = v37;
    if (!a2 || *(a1 + 1169) == v19)
    {
      if (!v19)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v20 = *(a1 + 1176);
      if (a3)
      {
        CFSetRemoveValue(v20, a2);
      }

      else
      {
        CFSetAddValue(v20, a2);
      }

      if (!*(a1 + 1168))
      {
        goto LABEL_48;
      }
    }

    if (CFSetGetCount(*(a1 + 1176)))
    {
      v21 = objc_autoreleasePoolPush();
      v22 = off_100298C40;
      if (off_100298C40)
      {
        v23 = CFSetGetCount(*(a1 + 1176));
        v24 = "Enabled";
        if (*(a1 + 1184))
        {
          v25 = "Enabled";
        }

        else
        {
          v25 = "Disabled";
        }

        if (*(a1 + 1171))
        {
          v26 = "Enabled";
        }

        else
        {
          v26 = "Disabled";
        }

        if (!*(a1 + 1172))
        {
          v24 = "Disabled";
        }

        [v22 WFLog:3 message:{"WoW Enabled by %ld Clients, lpas is %s, WoW Override is %s, Captive %s", v23, v25, v26, v24}];
      }

LABEL_58:
      objc_autoreleasePoolPop(v21);
      if (!*(a1 + 26) && !*(a1 + 1409) && (*(a1 + 1168) || *(a1 + 1184)))
      {
        v32 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          if (*(a1 + 1168))
          {
            v33 = "WoW";
          }

          else
          {
            v33 = "LPAS";
          }

          [off_100298C40 WFLog:3 message:{"%s: re-enabling auto-join for %s", "WiFiManagerSetWoWState", v33}];
        }

        objc_autoreleasePoolPop(v32);
        sub_10000D4C0(a1, 1);
      }

      [*(a1 + 2656) updateWowState:*(a1 + 1168) != 0 lpasState:*(a1 + 1184) != 0 lowPowerState:*(a1 + 1170) != 0 batterySaverState:*(a1 + 1700) != 0];
      goto LABEL_69;
    }

LABEL_48:
    v21 = objc_autoreleasePoolPush();
    v27 = off_100298C40;
    if (off_100298C40)
    {
      v28 = CFSetGetCount(*(a1 + 1176));
      v29 = "Enabled";
      if (*(a1 + 1184))
      {
        v30 = "Enabled";
      }

      else
      {
        v30 = "Disabled";
      }

      if (*(a1 + 1171))
      {
        v31 = "Enabled";
      }

      else
      {
        v31 = "Disabled";
      }

      if (!*(a1 + 1172))
      {
        v29 = "Disabled";
      }

      [v27 WFLog:3 message:{"WoW Disabled, %ld WoW Clients, lpas is %s, WoW Override is %s, Captive %s", v28, v30, v31, v29}];
    }

    goto LABEL_58;
  }

LABEL_69:
  if (a2)
  {
    if (Count != v12)
    {
      LOBYTE(v36[0]) = *(a1 + 1168);
      CFSetApplyFunction(*(a1 + 144), sub_10009208C, v36);
    }
  }
}

uint64_t sub_10001F66C(uint64_t result, int a2)
{
  if (result)
  {
    v3 = result;
    *(result + 3512) = a2;
    v4 = *(result + 64);
    v5 = sub_100006F88(v4);
    v6 = &kCFBooleanTrue;
    if (!a2)
    {
      v6 = &kCFBooleanFalse;
    }

    sub_100006F94(v4, v5, 483, 0, *v6);
    v7 = *(v3 + 7480);
    if (v7)
    {
      [v7 setDeviceChargingState:*(v3 + 3512) != 0];
    }

    sub_10001F71C(*(v3 + 120), *(v3 + 3512));
    v8 = *(v3 + 64);
    v9 = *(v3 + 3512);

    return sub_10001F728(v8, v9);
  }

  return result;
}

uint64_t sub_10001F71C(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 2800) = a2;
  }

  return result;
}

void sub_10001F734(const __CFArray *a1, uint64_t a2, int a3)
{
  v77 = a3;
  context = objc_autoreleasePoolPush();
  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"Posting metrics for AJ"];
  }

  objc_autoreleasePoolPop(v5);
  valuePtr = 115;
  v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  v7 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"External power state is %d", a2, context}];
  }

  objc_autoreleasePoolPop(v7);
  v8 = sub_100020030(a1);
  if (!v8)
  {
    sub_100148988();
    if (v6)
    {
      goto LABEL_87;
    }

    goto LABEL_88;
  }

  v9 = v8;
  p_class_meths = &OBJC_PROTOCOL___CXCallObserverDelegate.class_meths;
  if (!qword_1002984F8)
  {
    sub_10014893C();
    goto LABEL_86;
  }

  if (*(qword_1002984F8 + 64) == a2)
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"External power state is same as before %d, bailing out", *(qword_1002984F8 + 64)}];
    }

    objc_autoreleasePoolPop(v11);
    goto LABEL_86;
  }

  *(qword_1002984F8 + 64) = a2;
  Current = CFAbsoluteTimeGetCurrent();
  if (CFArrayGetCount(v9) < 1)
  {
    goto LABEL_86;
  }

  v12 = 0;
  v65 = kWAMessageMetricNameAJPowerMetric;
  v66 = v6;
  v67 = v9;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v9, v12);
    if (ValueAtIndex)
    {
      break;
    }

LABEL_75:
    if (++v12 >= CFArrayGetCount(v9))
    {
      goto LABEL_86;
    }
  }

  v14 = sub_100010908(ValueAtIndex);
  if (!v14)
  {
    sub_1001488F0();
    goto LABEL_86;
  }

  v15 = v14;
  v16 = sub_100006F88(v14);
  v17 = sub_100022108(v15, v16, v6);
  if (!v17)
  {
    sub_1001488A4();
    goto LABEL_86;
  }

  v18 = v17;
  v68 = v12;
  Count = CFDictionaryGetCount(v17);
  v20 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
  bzero(v20, 8 * Count);
  v21 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
  bzero(v21, 8 * Count);
  cf = v18;
  CFDictionaryGetKeysAndValues(v18, v20, v21);
  v22 = p_class_meths[159];
  if (!LOBYTE(v22[8].entrysize))
  {
    p_class_meths[159][7] = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v49 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &Current);
    CFDictionaryAddValue(*&p_class_meths[159][7], @"metricsTotalTime", v49);
    if (v49)
    {
      CFRelease(v49);
    }

    v50 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v77);
    CFDictionaryAddValue(*&p_class_meths[159][7], @"initialChargeLevel", v50);
    if (v50)
    {
      CFRelease(v50);
    }

    if (Count >= 1)
    {
      v51 = 0;
      v71 = v21;
      do
      {
        if (!CFStringHasPrefix(*(v20 + v51), @"CACHED") && !CFEqual(*(v20 + v51), @"AutoHotspotLPHSPowerStats"))
        {
          v52 = CFEqual(*(v20 + v51), @"AutoJoinPowerDiag");
          v53 = *(v21 + v51);
          if (v52)
          {
            v54 = CFDictionaryGetCount(*(v21 + v51));
            v55 = malloc_type_malloc(8 * v54, 0x6004044C4A2DFuLL);
            bzero(v55, 8 * v54);
            v56 = malloc_type_malloc(8 * v54, 0x6004044C4A2DFuLL);
            bzero(v56, 8 * v54);
            CFDictionaryGetKeysAndValues(v53, v55, v56);
            if (v54 >= 1)
            {
              v57 = v56;
              v58 = v55;
              do
              {
                v59 = CFGetTypeID(*v57);
                if (v59 == CFNumberGetTypeID())
                {
                  CFDictionaryAddValue(*&p_class_meths[159][7], *v58, *v57);
                }

                ++v58;
                ++v57;
                --v54;
              }

              while (v54);
            }

            free(v55);
            free(v56);
            v21 = v71;
          }

          else
          {
            v60 = CFGetTypeID(*(v21 + v51));
            if (v60 == CFNumberGetTypeID())
            {
              CFDictionaryAddValue(*&p_class_meths[159][7], *(v20 + v51), *(v21 + v51));
            }
          }
        }

        ++v51;
      }

      while (v51 != Count);
    }

    goto LABEL_71;
  }

  v23 = v22[7];
  if (!v23)
  {
    sub_100148858();
    goto LABEL_93;
  }

  v74 = 0;
  Value = CFDictionaryGetValue(v23, @"metricsTotalTime");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberIntType, &v74 + 4);
  }

  HIDWORD(v74) = Current - HIDWORD(v74);
  if (HIDWORD(v74) <= 0x707)
  {
    v61 = objc_autoreleasePoolPush();
    v9 = v67;
    v62 = cf;
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"System not on puck time is %u s < 30min, not posting", HIDWORD(v74)}];
    }

    objc_autoreleasePoolPop(v61);
    v63 = p_class_meths[159][7];
    if (v63)
    {
      CFRelease(v63);
      p_class_meths[159][7] = 0;
    }

    if (v20)
    {
      goto LABEL_82;
    }

    goto LABEL_83;
  }

  v25 = [[WAMessage alloc] initWithMetricName:v65 options:1];
  if (v25)
  {
    v26 = v25;
    v27 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v74 + 4);
    [v26 addFieldForKey:@"metricsTotalTime" value:v27 options:1];
    if (v27)
    {
      CFRelease(v27);
    }

    v28 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v77);
    [v26 addFieldForKey:@"finalChargeLevel" value:v28 options:1];
    if (v28)
    {
      CFRelease(v28);
    }

    [v26 addFieldForKey:@"initialChargeLevel" value:CFDictionaryGetValue(*&p_class_meths[159][7] options:{@"initialChargeLevel", 1}];
    if (Count >= 1)
    {
      v29 = 0;
      v70 = v21;
      do
      {
        if (!CFStringHasPrefix(*(v20 + v29), @"CACHED") && !CFEqual(*(v20 + v29), @"AutoHotspotLPHSPowerStats"))
        {
          if (CFEqual(*(v20 + v29), @"AutoJoinPowerDiag"))
          {
            v30 = p_class_meths;
            v31 = *(v21 + v29);
            v32 = CFDictionaryGetCount(v31);
            v33 = malloc_type_malloc(8 * v32, 0x6004044C4A2DFuLL);
            bzero(v33, 8 * v32);
            v34 = malloc_type_malloc(8 * v32, 0x6004044C4A2DFuLL);
            bzero(v34, 8 * v32);
            v72 = v34;
            v73 = v33;
            CFDictionaryGetKeysAndValues(v31, v33, v34);
            if (v32 >= 1)
            {
              do
              {
                v74 = 0;
                v35 = CFGetTypeID(*v34);
                if (v35 == CFNumberGetTypeID())
                {
                  v36 = CFDictionaryGetValue(*&v30[159][7], *v33);
                  if (v36)
                  {
                    v37 = v36;
                    v38 = CFGetTypeID(v36);
                    if (v38 == CFNumberGetTypeID())
                    {
                      CFNumberGetValue(v37, kCFNumberIntType, &v74 + 4);
                    }
                  }

                  CFNumberGetValue(*v34, kCFNumberIntType, &v74);
                  HIDWORD(v74) = v74 - HIDWORD(v74);
                  v39 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v74 + 4);
                  [v26 addFieldForKey:*v33 value:v39 options:1];
                  if (v39)
                  {
                    CFRelease(v39);
                  }
                }

                ++v33;
                ++v34;
                --v32;
              }

              while (v32);
            }

            free(v73);
            free(v72);
            p_class_meths = v30;
            v21 = v70;
          }

          else
          {
            v74 = 0;
            v40 = CFGetTypeID(*(v21 + v29));
            if (v40 == CFNumberGetTypeID())
            {
              v41 = CFDictionaryGetValue(*&p_class_meths[159][7], *(v20 + v29));
              if (v41)
              {
                v42 = v41;
                v43 = v21;
                v44 = CFGetTypeID(v41);
                v45 = v44 == CFNumberGetTypeID();
                v21 = v43;
                if (v45)
                {
                  CFNumberGetValue(v42, kCFNumberIntType, &v74 + 4);
                }
              }

              CFNumberGetValue(*(v21 + v29), kCFNumberIntType, &v74);
              HIDWORD(v74) = v74 - HIDWORD(v74);
              v46 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v74 + 4);
              [v26 addFieldForKey:*(v20 + v29) value:v46 options:1];
              if (v46)
              {
                CFRelease(v46);
              }
            }
          }
        }

        ++v29;
      }

      while (v29 != Count);
    }

    v47 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"Posting AJ power metrics\n"];
    }

    objc_autoreleasePoolPop(v47);
    sub_10004E4C4(v26);
    v48 = p_class_meths[159][7];
    if (v48)
    {
      CFRelease(v48);
      p_class_meths[159][7] = 0;
    }

LABEL_71:
    CFRelease(cf);
    if (v20)
    {
      free(v20);
    }

    v6 = v66;
    v9 = v67;
    v12 = v68;
    if (v21)
    {
      free(v21);
    }

    goto LABEL_75;
  }

  sub_1001487F8();
LABEL_93:
  v9 = v67;
  v62 = v18;
  if (v20)
  {
LABEL_82:
    free(v20);
  }

LABEL_83:
  if (v21)
  {
    free(v21);
  }

  CFRelease(v62);
LABEL_86:
  CFRelease(v9);
  if (v6)
  {
LABEL_87:
    CFRelease(v6);
  }

LABEL_88:
  objc_autoreleasePoolPop(context);
}

CFArrayRef sub_100020030(CFArrayRef result)
{
  if (result)
  {
    v3 = result;
    result = *(result + 14);
    if (result)
    {
      result = CFSetGetCount(result);
      if (result)
      {
        sub_10009538C();
        v4 = __chkstk_darwin();
        sub_10009508C(v4, v5, v6, v7, v8, v9, v10, v11, v12);
        CFSetGetValues(*(v3 + 14), v2);
        return CFArrayCreate(kCFAllocatorDefault, v2, v1, &kCFTypeArrayCallBacks);
      }
    }
  }

  return result;
}

CFArrayRef sub_100020110(uint64_t a1)
{
  v2 = *(a1 + 224);
  if (!v2 || !CFArrayGetCount(v2))
  {
    return 0;
  }

  v3 = *(a1 + 224);

  return CFArrayCreateCopy(kCFAllocatorDefault, v3);
}

void sub_100020170(uint64_t a1)
{
  v109 = objc_autoreleasePoolPush();
  if (!a1)
  {
    v97 = objc_autoreleasePoolPush();
    v98 = sub_100095050();
    if (v98)
    {
      [v98 WFLog:3 message:{"%s: manager is NULL", "WiFiManagerGetPrivateMacNetworksCache", Count}];
    }

    goto LABEL_23;
  }

  if (!sub_10000A154(a1))
  {
    v3 = *(a1 + 360);
    if (v3 && CFArrayGetCount(v3))
    {
      v1 = objc_autoreleasePoolPush();
      v4 = off_100298C40;
      if (off_100298C40)
      {
        Count = CFArrayGetCount(*(a1 + 360));
        v5 = "%s:  WFMacRandomisation : Fetched %ld known networks from the cache";
LABEL_18:
        v10 = v4;
LABEL_22:
        [v10 WFLog:3 message:{v5, "WiFiManagerGetPrivateMacNetworksCache", Count}];
        goto LABEL_23;
      }

      goto LABEL_23;
    }

    if (*(a1 + 1408))
    {
      SCPreferencesSynchronize(*(a1 + 1088));
      v1 = sub_10001769C(a1, @"List of scanned networks with private mac");
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      v7 = sub_100095050();
      if (v7)
      {
        [v7 WFLog:3 message:{"%s: device not yet unlocked.", "WiFiManagerGetPrivateMacNetworksCache"}];
      }

      objc_autoreleasePoolPop(v1);
      v1 = 0;
    }

    v8 = *(a1 + 360);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 360) = 0;
    }

    if (v1)
    {
      v9 = sub_10005894C(v1);
      *(a1 + 360) = v9;
      if (v9)
      {
        *(a1 + 376) = CFAbsoluteTimeGetCurrent();
        v1 = objc_autoreleasePoolPush();
        v4 = off_100298C40;
        if (off_100298C40)
        {
          Count = CFArrayGetCount(*(a1 + 360));
          v5 = "%s: WFMacRandomisation : Fetched %ld known networks from the plist";
          goto LABEL_18;
        }

LABEL_23:
        objc_autoreleasePoolPop(v1);
      }
    }

    else
    {
      Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      *(a1 + 360) = Mutable;
      if (Mutable)
      {
        v12 = objc_autoreleasePoolPush();
        v10 = sub_100095050();
        if (v10)
        {
          v5 = "%s: WFMacRandomisation : No networks present in plist. Create empty array";
          goto LABEL_22;
        }

        goto LABEL_23;
      }
    }
  }

  if (*(a1 + 368))
  {
    v13 = *(a1 + 360);
    if (v13)
    {
      if (CFArrayGetCount(v13))
      {
        v107 = +[NSUserDefaults standardUserDefaults];
        v106 = @"PrivateMacUpgradeHS20Networks";
        v108 = sub_100018E90(a1, @"PrivateMacUpgradeHS20Networks", 0);
        if (!sub_10000A154(a1) && (v14 = *(a1 + 360)) != 0 && (v15 = CFArrayGetCount(v14)) != 0)
        {
          v16 = v15;
          if (v15 < 1)
          {
            v43 = 1;
          }

          else
          {
            context = 0;
            v17 = 0;
            v113 = v15;
            v115 = a1;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 360), v17);
              if (ValueAtIndex)
              {
                v19 = ValueAtIndex;
                v20 = sub_10000A540(ValueAtIndex, @"RotationKeyUsed");
                v21 = *(a1 + 424);
                v1 = *(a1 + 464);
                v22 = sub_10000A878(v19);
                if (v20)
                {
                  v23 = v20;
                }

                else
                {
                  v23 = 0;
                }

                v24 = sub_100177A18(v21, v23, v1, v22);
                if (v24)
                {
                  v25 = sub_10000A540(v19, @"PRIVATE_MAC_ADDRESS");
                  if (v25)
                  {
                    v26 = v25;
                    CFDictionaryGetTypeID();
                    v27 = sub_100095220();
                    if (v1 == CFGetTypeID(v27))
                    {
                      Value = CFDictionaryGetValue(v26, @"PRIVATE_MAC_ADDRESS_TYPE");
                      CFDictionaryGetValue(v26, @"PRIVATE_MAC_ADDRESS_VALUE");
                      v29 = sub_100095220();
                      CFDictionaryGetValue(v29, @"PRIVATE_MAC_ADDRESS_IN_USE");
                      v30 = sub_100095320();
                      v31 = sub_10000ABFC(v30);
                      if (Value)
                      {
                        if (v31)
                        {
                          v32 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                          if (v1 && (v33 = sub_100003924(), !sub_100094E68(v33, v34)))
                          {
                            sub_10000AD34(v19, @"ResetCaptiveProbe", kCFBooleanTrue);
                            context = 1;
                          }

                          else if (@"RotationKeyUsed")
                          {
                            CFDictionarySetValue(v32, @"PRIVATE_MAC_ADDRESS_IN_USE", @"RotationKeyUsed");
                            v35 = objc_autoreleasePoolPush();
                            if (off_100298C40)
                            {
                              [off_100298C40 WFLog:3 message:{"WFMacRandomisation :%s: Sanitized network <%@> updated in use address %@", "__WiFiManagerSanitizePrivateMacNetworks", sub_10000A878(v19), @"RotationKeyUsed", v106}];
                            }

                            objc_autoreleasePoolPop(v35);
                          }

                          CFDictionarySetValue(v32, @"PRIVATE_MAC_ADDRESS_TYPE", Value);
                          CFDictionarySetValue(v32, @"PRIVATE_MAC_ADDRESS_VALUE", v24);
                          sub_10000AD34(v19, @"PRIVATE_MAC_ADDRESS", v32);
                          v1 = objc_autoreleasePoolPush();
                          if (off_100298C40)
                          {
                            v101 = sub_10000A878(v19);
                            [sub_100008BD4() WFLog:"__WiFiManagerSanitizePrivateMacNetworks" message:{v101, v24}];
                          }
                        }

                        else
                        {
                          if (v1)
                          {
                            v38 = *(v115 + 464);
                            if (v38)
                            {
                              if (!sub_100094E68(v1, v38))
                              {
                                sub_10000AD34(v19, @"ResetCaptiveProbe", kCFBooleanTrue);
                                context = 1;
                              }
                            }
                          }

                          v32 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                          CFDictionarySetValue(v32, @"PRIVATE_MAC_ADDRESS_TYPE", Value);
                          CFDictionarySetValue(v32, @"PRIVATE_MAC_ADDRESS_VALUE", *(v115 + 464));
                          sub_10000AD34(v19, @"PRIVATE_MAC_ADDRESS", v32);
                          v1 = objc_autoreleasePoolPush();
                          if (off_100298C40)
                          {
                            v100 = sub_10000A878(v19);
                            [sub_100008BD4() WFLog:"__WiFiManagerSanitizePrivateMacNetworks" message:{v100, v105}];
                          }
                        }

                        objc_autoreleasePoolPop(v1);
                        if (v32)
                        {
                          CFRelease(v32);
                        }
                      }

                      v39 = sub_100094FB0();
                      if (sub_10000A540(v39, v40))
                      {
                        v41 = sub_100094FB0();
                        sub_10000AD34(v41, v42, v24);
                      }
                    }
                  }

                  CFRelease(v24);
                }

                else
                {
                  v36 = objc_autoreleasePoolPush();
                  v37 = sub_100095050();
                  if (v37)
                  {
                    [v37 WFLog:4 message:{"WFMacRandomisation :%s: Unable to generate a static MAC. Will fail sanitization", "__WiFiManagerSanitizePrivateMacNetworks"}];
                  }

                  objc_autoreleasePoolPop(v1);
                }

                v16 = v113;
                a1 = v115;
              }

              ++v17;
            }

            while (v16 != v17);
            v43 = context == 0;
          }

          v44 = *(a1 + 360);
          sub_1001610C0();
          sub_100011414();
          sub_100161270();
        }

        else
        {
          v43 = 1;
        }

        *(a1 + 368) = 0;
        if (v107)
        {
          [(NSUserDefaults *)v107 setValue:&__kCFBooleanTrue forKey:@"PrivateMacListCloudRestoreSanitized"];
        }

        v45 = objc_autoreleasePoolPush();
        v46 = sub_100095050();
        if (v46)
        {
          [v46 WFLog:3 message:{"%s: WFMacRandomisation : Sanitized Private Mac plist", "WiFiManagerGetPrivateMacNetworksCache"}];
        }

        objc_autoreleasePoolPop(v1);
        if (!v43)
        {
          *(a1 + 370) = 1;
          sub_10007393C(a1, @"PrivateMacForcedDisassocPending", kCFBooleanTrue, 0);
          v47 = objc_autoreleasePoolPush();
          v48 = sub_100095050();
          if (v48)
          {
            [v48 WFLog:3 message:{"%s: WFMacRandomisation : This private MAC sanitization is because of private MAC data migration from a different device", "WiFiManagerGetPrivateMacNetworksCache"}];
          }

          objc_autoreleasePoolPop(v1);
        }

        if (v108)
        {
          if (!sub_10000A154(a1))
          {
            v49 = *(a1 + 360);
            if (v49)
            {
              v50 = CFArrayGetCount(v49);
              if (v50 >= 1)
              {
                v1 = v50;
                do
                {
                  v51 = CFArrayGetValueAtIndex(*(a1 + 360), 0);
                  if (v51 && sub_10000AFE4(v51))
                  {
                    v52 = sub_1000952F0();
                    v54 = sub_10000A540(v52, v53);
                    v55 = v54 && v54 == kCFBooleanTrue;
                    if (!v55)
                    {
                      v56 = sub_10001EDAC();
                      v58 = sub_10000C580(v56, v57);
                      v59 = sub_10002CF50();
                      sub_10007DC04(v59, v60, 9);
                      v61 = objc_autoreleasePoolPush();
                      if (off_100298C40)
                      {
                        v102 = sub_10000A878(v58);
                        [sub_100008BD4() WFLog:"__WiFiManagerUpgradeChildHS20PrivateMacNetworks" message:v102];
                      }

                      objc_autoreleasePoolPop(v61);
                      v62 = sub_10002CF50();
                      sub_10007DC04(v62, v63, 10);
                      v64 = objc_autoreleasePoolPush();
                      if (off_100298C40)
                      {
                        v103 = sub_10000A878(v58);
                        [sub_100008BD4() WFLog:"__WiFiManagerUpgradeChildHS20PrivateMacNetworks" message:v103];
                      }

                      objc_autoreleasePoolPop(v64);
                      if (v58)
                      {
                        CFRelease(v58);
                      }
                    }
                  }

                  sub_100010294();
                }

                while (!v55);
              }
            }
          }

          sub_10007D6E8(a1, v106, 0);
        }
      }
    }
  }

  if (*(a1 + 369))
  {
    v65 = *(a1 + 360);
    if (v65)
    {
      if (CFArrayGetCount(v65))
      {
        if (!sub_10000A154(a1))
        {
          v66 = *(a1 + 360);
          if (v66)
          {
            v67 = CFArrayGetCount(v66);
            if (v67)
            {
              v1 = v67;
              v112 = +[NSUserDefaults standardUserDefaults];
              v68 = sub_10000D7B8();
              v69 = sub_100072D44(v68);
              if (v1 >= 1)
              {
                v70 = v69;
                v71 = v1;
                v72 = 0;
                v73 = 0;
                v74 = 0;
                v114 = v1;
                v1 = @"PrivateMacFutureMacAddress";
                do
                {
                  v75 = CFArrayGetValueAtIndex(*(a1 + 360), v72);
                  if (v75)
                  {
                    v76 = v75;
                    if (v70)
                    {
                      v77 = sub_100094FB0();
                      v79 = sub_10000AA64(v77, v78);
                      if (v79)
                      {
                        v80 = v79;
                        if ((_os_feature_enabled_impl() & 1) != 0 || [(NSUserDefaults *)v112 BOOLForKey:@"PrivateMACAirplayNetworkEnabled"])
                        {
                          v74 = sub_10001D200(v80);
                        }

                        if (sub_100022834(v80))
                        {
                          v73 = 1;
                        }
                      }
                    }

                    if (v74 | v73)
                    {
                      v81 = *(a1 + 424);
                      v82 = *(a1 + 464);
                      sub_10000A878(v76);
                      v83 = sub_10000757C();
                      sub_100177C58(v83, v82, v84);
                      v85 = sub_1000952E4();
                      v86 = sub_10000A540(v85, @"PRIVATE_MAC_ADDRESS");
                      if (v86)
                      {
                        v87 = v86;
                        TypeID = CFDictionaryGetTypeID();
                        v55 = TypeID == CFGetTypeID(v87);
                        v71 = v114;
                        if (v55)
                        {
                          v89 = CFDictionaryGetValue(v87, @"PRIVATE_MAC_ADDRESS_TYPE");
                          if (v89)
                          {
                            v90 = v89;
                            if (sub_10000AC54(v89) == 2)
                            {
                              v91 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                              CFDictionarySetValue(v91, @"PRIVATE_MAC_ADDRESS_TYPE", v90);
                              CFDictionarySetValue(v91, @"PRIVATE_MAC_ADDRESS_VALUE", v82);
                              sub_10000AD34(v76, @"PRIVATE_MAC_ADDRESS", v91);
                              v92 = objc_autoreleasePoolPush();
                              if (off_100298C40)
                              {
                                contexta = v92;
                                v104 = sub_10000A878(v76);
                                [sub_10000DAC0() WFLog:"__WiFiManagerPrivateMacUpdateTempNetworks" message:{v104, v82}];
                                v92 = contexta;
                              }

                              objc_autoreleasePoolPop(v92);
                              if (v91)
                              {
                                CFRelease(v91);
                              }

                              if (sub_10000A540(v76, @"PrivateMacFutureMacAddress"))
                              {
                                sub_10000AD34(v76, @"PrivateMacFutureMacAddress", v82);
                              }

                              sub_10000AD34(v76, @"ResetCaptiveProbe", kCFBooleanTrue);
                              v71 = v114;
                            }
                          }
                        }
                      }

                      if (v82)
                      {
                        CFRelease(v82);
                      }
                    }

                    else
                    {
                      v74 = 0;
                      v73 = 0;
                    }
                  }

                  ++v72;
                }

                while (v71 != v72);
              }

              v93 = *(a1 + 360);
              sub_1001610C0();
              sub_100011414();
              sub_100161270();
            }
          }
        }

        *(a1 + 369) = 0;
        v94 = objc_autoreleasePoolPush();
        v95 = sub_100095050();
        if (v95)
        {
          [v95 WFLog:3 message:{"%s: WFMacRandomisation : Temp networks updated with new MAC address", "WiFiManagerGetPrivateMacNetworksCache"}];
        }

        objc_autoreleasePoolPop(v1);
      }
    }
  }

  v96 = *(a1 + 360);
  objc_autoreleasePoolPop(v109);
  sub_1000953AC();
}

void sub_100020CC8()
{
  sub_100095008();
  v3 = sub_100021720(v2);
  v4 = *(v1 + 1752);
  if (v4)
  {
    v5 = sub_100017C00(v4);
    v6 = sub_10000AD2C(kCFAllocatorDefault, v5);
    if (v3)
    {
      v7 = sub_100003924();
      if (CFEqual(v7, v8))
      {
        v9 = sub_10000FC38();
        sub_10000C5C0(v9, v10);
      }
    }

    if (v5)
    {
      CFRelease(v5);
    }

    if (!v3)
    {
      goto LABEL_18;
    }

LABEL_17:
    CFRelease(v3);
    goto LABEL_18;
  }

  if (v3 && sub_100022834(v3))
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: session based network is an accessory = '%@'", "WiFiManagerCopyCurrentSessionBasedNetwork", v3}];
    }

    objc_autoreleasePoolPop(v11);
    CFRetain(v3);
    v6 = v3;
    goto LABEL_17;
  }

  v12 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: session based network is NULL", "WiFiManagerCopyCurrentSessionBasedNetwork"}];
  }

  objc_autoreleasePoolPop(v12);
  v6 = 0;
  if (v3)
  {
    goto LABEL_17;
  }

LABEL_18:
  *v0 = v6;
}

void sub_100020E00(uint64_t a1, uint64_t a2)
{
  if (a2 && *a2)
  {
    if (*(a2 + 8))
    {
      sub_100020ED4(a1, *(a2 + 8), *(a2 + 16));
    }
  }
}

void sub_100020E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 4168);
    if (v4)
    {
      v6 = *(a1 + 4176);

      v4(a1, a2, v6, a3);
    }
  }

  else
  {
    sub_1001565FC();
  }
}

uint64_t sub_100020E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a3 + 4312);
    if (v3)
    {
      return v3(a3, a2, *(a3 + 4320));
    }
  }

  return result;
}

void sub_100020E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    if (a4)
    {
      context[0] = a3;
      context[1] = a1;
      context[2] = a4;
      CFSetApplyFunction(*(a3 + 144), sub_100020E00, context);
    }
  }
}

uint64_t sub_100020F8C(uint64_t a1)
{
  result = sub_100020FDC(*(*(a1 + 32) + 8));
  if (!result)
  {
    result = sub_10008A6E4(*(*(a1 + 32) + 8));
    if (!result)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  return result;
}

void sub_1000211D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1000211F8()
{
  sub_1000951B4();
  v1 = v0;
  v3 = v2;
  v4 = sub_100020030(v2);
  v5 = v4;
  if (v1 && v4)
  {
    v6 = sub_10000836C();
    ValueAtIndex = CFArrayGetValueAtIndex(v6, v7);
    if (ValueAtIndex)
    {
      v9 = ValueAtIndex;
      if (sub_100021448(ValueAtIndex))
      {
        v10 = sub_100021514(v9);
        if (*(v3 + 560) != v10)
        {
          v11 = v10;
          v12 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            v14 = *(v3 + 560);
            [off_100298C40 WFLog:3 message:{"WiFiMC : band support changed. Before : %d, after : %d"}];
          }

          objc_autoreleasePoolPop(v12);
          *(v3 + 560) = v11;
          sub_10007CB0C(v3, @"WiFiCountryBandSupportKey", v11, 1);
        }
      }
    }
  }

  else if (!v4)
  {
    goto LABEL_11;
  }

  CFRelease(v5);
LABEL_11:
  v13 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"%s: <%@> %s"];
  }

  objc_autoreleasePoolPop(v13);
  sub_10001ED88();
}

void sub_10002133C(void *a1)
{
  v2 = *(a1[4] + 8);
  v3 = *(*(a1[6] + 8) + 40);
  sub_1000211F8();
  *(*(a1[5] + 8) + 24) = v4;
}

double sub_100021380(double a1, double a2)
{
  result = a1 / a2;
  v4 = *(v2 + 320);
  return result;
}

uint64_t sub_100021394(uint64_t a1)
{
  if (!a1)
  {
    return 4294963396;
  }

  sub_10000D7AC();
  while (1)
  {
    v4 = *(v2 + 16);
    sub_10002146C();
    Apple80211Get();
    sub_1000214E8();
    v6 = v6 || v5 == 16;
    if (!v6 && v1 != 61 || !v3)
    {
      break;
    }

    sub_10000390C();
    --v3;
  }

  if (v1)
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"Error copying locale %d", v1}];
    }

    objc_autoreleasePoolPop(v8);
  }

  return v1;
}

void sub_100021494(uint64_t a1, const void *a2)
{

  CFDictionarySetValue(v2, a2, v3);
}

uint64_t sub_1000214AC()
{

  return symptom_set_qualifier();
}

CFNumberRef sub_1000214CC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char valuePtr)
{

  return CFNumberCreate(0, kCFNumberIntType, &valuePtr);
}

uint64_t sub_100021514(uint64_t a1)
{
  if (!sub_100021590(*(a1 + 64)))
  {
    v1 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s WiFiMC : Retrieved band support :[%d]", "WiFiDeviceManagerGetCountryBandSupport", 0}];
    }

    objc_autoreleasePoolPop(v1);
  }

  return 0;
}

uint64_t sub_100021590(uint64_t a1)
{
  if (!a1)
  {
    return 4294963396;
  }

  sub_10000D7AC();
  while (1)
  {
    v4 = *(v2 + 16);
    sub_100015E44();
    Apple80211Get();
    sub_1000214E8();
    v6 = v6 || v5 == 16;
    if (!v6 && v1 != 61 || !v3)
    {
      break;
    }

    sub_10000390C();
    --v3;
  }

  if (v1)
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"WiFiMC : Error getting band support %d", v1}];
    }

    objc_autoreleasePoolPop(v8);
  }

  return v1;
}

void sub_100021648()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager is NULL", "WiFiManagerAllowUnifiedPrivateMAC"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1000216B4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: device->interfaces is NULL", "__WiFiDeviceVirtualInterfaceGet"}];
  }

  objc_autoreleasePoolPop(v0);
}

void *sub_100021720(const __CFArray *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = sub_100020030(a1);
  if (!v1)
  {
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: failed to get device managers", "__WiFiManagerCopyCurrentNetwork"}];
    }

    objc_autoreleasePoolPop(v13);
    return 0;
  }

  v2 = v1;
  if (CFArrayGetCount(v1) < 1)
  {
LABEL_9:
    v11 = 0;
  }

  else
  {
    while (1)
    {
      v3 = sub_100021D58();
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v4);
      v6 = sub_100010908(ValueAtIndex);
      if (v6)
      {
        if (sub_100009664(v6))
        {
          v7 = sub_100024B8C();
          v9 = sub_1000102AC(v7, v8);
          if (v9)
          {
            break;
          }
        }
      }

      sub_100010294();
      if (v10)
      {
        goto LABEL_9;
      }
    }

    v11 = v9;
  }

  CFRelease(v2);
  return v11;
}

uint64_t sub_100021804(uint64_t a1)
{
  if (a1)
  {
    sub_100020CC8();
    return v2;
  }

  else
  {
    sub_10016FFA4();
    return 0;
  }
}

void sub_100021870(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 7512);
  if (*(a1 + 7512) == 1)
  {
    *(a1 + 8720) = sub_100005E34(a1);
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v6 = "No";
      if (v2[1206])
      {
        v7 = "Yes";
      }

      else
      {
        v7 = "No";
      }

      if (v2[1208])
      {
        v8 = "Yes";
      }

      else
      {
        v8 = "No";
      }

      if (v2[1209])
      {
        v6 = "Yes";
      }

      [off_100298C40 WFLog:3 message:{"%s:isConnected %s, isTimeSensitiveAppRunning %s, isThereTrafficNow %s", "__WiFiDeviceManagerEvaluate24GHzInfraNetworkState", v7, v8, v6}];
    }

    objc_autoreleasePoolPop(v5);
    v2[1210] = 0;
    if (v2[1206] == 1 && ((v2[1208] & 1) != 0 || v2[1209] == 1))
    {
      v9 = 1;
      v2[1210] = 1;
    }

    else
    {
      v9 = 0;
    }

    if (v2[1205] != v9)
    {
      Current = CFAbsoluteTimeGetCurrent();
      v11 = *(a1 + 8696);
      v12 = Current - v11;
      v13 = v11 != 0.0 && v12 < 4.0;
      if (v13 && v12 >= 0.0)
      {
        if ((v2[1200] & 1) == 0)
        {
          v14 = objc_autoreleasePoolPush();
          v15 = 4.0 - v12;
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%d secs remain for signaling WiFi critical state. Waiting...", v15}];
          }

          objc_autoreleasePoolPop(v14);
          v16 = *(a1 + 8704);
          v17 = dispatch_time(0, (v15 * 1000000000.0));
          dispatch_source_set_timer(v16, v17, 0xFFFFFFFFFFFFFFFFLL, 0);
          v2[1200] = 1;
        }
      }

      else
      {
        v18 = *(a1 + 4392);
        if (v18)
        {
          v18(a1, a2, *(a1 + 4400), v2[1210]);
          v19 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"Signal WiFi critical state - %d", v2[1210]}];
          }

          objc_autoreleasePoolPop(v19);
        }

        *(a1 + 8696) = CFAbsoluteTimeGetCurrent();
        *(a1 + 8713) = *(v2 + 1206);
        *(a1 + 8717) = v2[1210];
        dispatch_source_set_timer(*(a1 + 8704), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
        v2[1200] = 0;
      }
    }
  }
}

const __CFArray *sub_100021AAC(uint64_t a1)
{
  v24 = 0;
  number = 0;
  theDict = 0;
  v23 = 0;
  valuePtr = 0;
  v20 = 0;
  value = 0;
  if (!a1)
  {
    v18 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: WiFiLQAMgrRef is NULL", "__WiFiLQAMgrCheckCcaWiFiAssist"}];
    }

    objc_autoreleasePoolPop(v18);
    return 0;
  }

  result = *(a1 + 24);
  if (!result)
  {
    return result;
  }

  Count = CFArrayGetCount(result);
  if (Count < 3)
  {
    return 0;
  }

  v4 = Count;
  result = CFArrayGetValueAtIndex(*(a1 + 24), Count - 1);
  if (!result)
  {
    return result;
  }

  ValueIfPresent = CFDictionaryGetValueIfPresent(result, @"LQMTIMESTAMP", &value);
  result = 0;
  if (!ValueIfPresent || !value)
  {
    return result;
  }

  AbsoluteTime = CFDateGetAbsoluteTime(value);
  Current = CFAbsoluteTimeGetCurrent();
  if (Current - AbsoluteTime < *(a1 + 680))
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), v8);
    if (ValueAtIndex)
    {
      v12 = ValueAtIndex;
      v13 = CFDictionaryGetValueIfPresent(ValueAtIndex, @"LQMTIMESTAMP", &value);
      v14 = value;
      if (v13 && value)
      {
        AbsoluteTime = CFDateGetAbsoluteTime(value);
        v14 = value;
      }

      if (!v14)
      {
        v15 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          sub_10004B898();
          [v16 WFLog:? message:?];
        }

        objc_autoreleasePoolPop(v15);
        goto LABEL_34;
      }

      if (Current - AbsoluteTime <= *(a1 + 680))
      {
        break;
      }
    }

LABEL_34:
    if (v4 == ++v8)
    {
      return (v9 && v10 > 2u);
    }
  }

  if (CFDictionaryGetValueIfPresent(v12, @"CCA_STATS", &theDict) && theDict)
  {
    if (CFDictionaryGetValueIfPresent(theDict, @"CCA_SELF_WAKE", &number) && number)
    {
      CFNumberGetValue(number, kCFNumberIntType, &valuePtr + 4);
    }

    if (CFDictionaryGetValueIfPresent(theDict, @"CCA_OTHER_WAKE", &v23) && v23)
    {
      CFNumberGetValue(v23, kCFNumberIntType, &valuePtr);
    }

    if (CFDictionaryGetValueIfPresent(theDict, @"CCA_INTERFERENCE_WAKE", &v24) && v24)
    {
      CFNumberGetValue(v24, kCFNumberIntType, &v20);
    }

    if ((v20 + valuePtr) > 0x50)
    {
      ++v10;
    }
  }

  if (v8 + 1 == v10)
  {
    v9 = 1;
    goto LABEL_34;
  }

  v9 = 0;
  return (v9 && v10 > 2u);
}

void sub_100021D7C(const void **values)
{
  v5 = *(v2 + 5112);

  CFDictionaryGetKeysAndValues(v5, v1, values);
}

void sub_100021EBC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *context, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_100094FD4();
  v29 = v28;
  v31 = v30;
  sub_10000DB74();
  *v32 = 0;
  *v33 = 0;
  v34 = sub_10000FFF0();
  v35 = sub_10001D1E8(v34);
  if (v35)
  {
    v36 = v35;
    if (sub_100010038(v35))
    {
      v38 = sub_100015EC4();
      v40 = sub_100017AC4(v38, v39);
      v41 = sub_1000A9BF4();
      v43 = sub_100017AC4(v41, v42);
      v44 = v43;
      if (v40 && v43)
      {
        v45 = sub_100010040(v36, v40);
        if (!v45)
        {
          goto LABEL_25;
        }

        v46 = v45;
        v47 = CFGetTypeID(v44);
        if (v47 == CFStringGetTypeID() && CFEqual(v44, @"IO80211InterfaceWoWWakeUpParams"))
        {
          v48 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            contexta = v48;
            sub_10000715C(v36);
            [sub_1000A9C38() WFLog:? message:?];
            v48 = contexta;
          }

          objc_autoreleasePoolPop(v48);
        }

        v49 = sub_100010908(v46);
        v50 = sub_100022108(v49, v40, v44);
        v51 = CFGetTypeID(v44);
        if (v51 == CFStringGetTypeID() && CFEqual(v44, @"IO80211InterfaceWoWWakeUpParams"))
        {
          v52 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            contextb = v52;
            sub_10000715C(v36);
            [sub_1000A9C38() WFLog:? message:?];
            v52 = contextb;
          }

          objc_autoreleasePoolPop(v52);
        }

        if (v50)
        {
          sub_100017C18(v50, v31, v29);
          CFRelease(v40);
        }

        else
        {
LABEL_25:
          v50 = v40;
        }

        CFRelease(v50);
      }

      else
      {
        if (v40)
        {
          CFRelease(v40);
        }

        if (!v44)
        {
          goto LABEL_23;
        }
      }

      CFRelease(v44);
    }

    else
    {
      v37 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v36);
        [sub_1000A9B34() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v37);
    }

LABEL_23:
    CFRelease(v36);
  }

  v53 = sub_100015EC4();
  sub_100017CC0(v53, v54);
  v55 = sub_1000A9BF4();
  sub_100017CC0(v55, v56);
  sub_100008C64();
}

CFNumberRef sub_100022108(uint64_t a1, const void *a2, const __CFString *a3)
{
  cf = 0;
  v6 = sub_100007060(a1, a2);
  if (!v6)
  {
    sub_1001521B0(a2);
    return cf;
  }

  v7 = v6;
  v8 = CFGetTypeID(a3);
  if (v8 == CFNumberGetTypeID())
  {
    LODWORD(valuePtr) = 0;
    if (CFNumberGetValue(a3, kCFNumberIntType, &valuePtr))
    {
      v9 = CFGetTypeID(v7);
      if (v9 == sub_100006F40())
      {
        sub_10010F400(v7, valuePtr, 0, &cf);
      }

      else
      {
        for (i = 6; ; --i)
        {
          v12 = *(a1 + 16);
          v13 = Apple80211CopyValue();
          if (v13 != -3905 && v13 != 61 && v13 != 16)
          {
            break;
          }

          if (!i)
          {
            break;
          }

          usleep(0x7A120u);
        }

        if (valuePtr == 115 && cf != 0)
        {
          v16 = CFGetTypeID(cf);
          if (v16 == CFDictionaryGetTypeID())
          {
            v17 = *(a1 + 4520);
            if (v17)
            {
              value = 0xAAAAAAAAAAAAAAAALL;
              v17(a1, *(a1 + 112), *(a1 + 4528), &value);
              if (value)
              {
                CFDictionaryAddValue(cf, @"AutoJoinPowerDiag", value);
                if (value)
                {
                  CFRelease(value);
                  value = 0;
                }
              }

              v18 = *(a1 + 4536);
              if (v18)
              {
                v48[0] = 0xAAAAAAAAAAAAAAAALL;
                v18(a1, *(a1 + 112), *(a1 + 4544), v48);
                if (v48[0])
                {
                  CFDictionaryAddValue(cf, @"AutoHotspotLPHSPowerStats", v48[0]);
                  if (v48[0])
                  {
                    CFRelease(v48[0]);
                  }
                }
              }
            }
          }
        }
      }
    }

    return cf;
  }

  v10 = CFGetTypeID(a3);
  if (v10 != CFStringGetTypeID())
  {
    return cf;
  }

  if (a3 && CFEqual(a3, @"LastRangingSessionMetric"))
  {
    return [-[WiFiUsageMonitor lastRangingSessionMetric](+[WiFiUsageMonitor sharedInstance](WiFiUsageMonitor "sharedInstance")];
  }

  v19 = CFDictionaryGetValue(*(a1 + 120), a3);
  cf = v19;
  if (v19)
  {
    CFProperty = v19;
    CFRetain(v19);
    if (!a3)
    {
      return cf;
    }

    v21 = CFGetTypeID(a3);
    if (v21 == CFStringGetTypeID() && CFEqual(a3, @"IO80211InterfaceWoWWakeUpParams"))
    {
      v22 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Querying %@ on %@ from device->properties returned %@", "WiFiDeviceCopyProperty", a3, a2, CFProperty}];
      }

      objc_autoreleasePoolPop(v22);
    }

LABEL_84:
    v37 = CFGetTypeID(a3);
    if (v37 == CFStringGetTypeID() && CFEqual(a3, @"IO80211InterfaceWoWWakeUpParams"))
    {
      v38 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Querying %@ on %@ received %@", "WiFiDeviceCopyProperty", a3, a2, CFProperty}];
      }

      objc_autoreleasePoolPop(v38);
    }

    return cf;
  }

  v47 = NAN;
  v48[0] = @"RSSI_CTL_AGR";
  v48[1] = @"RSSI_UNIT";
  if (!CFEqual(a3, @"RSSI"))
  {
    if (CFEqual(a3, @"ScaledRSSI") || CFEqual(a3, @"Strength"))
    {
      v26 = *(a1 + 260);
      *&valuePtr = v26;
      v27 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:2 message:{"%s: Scaled RSSI is %.2f", "__WiFiDeviceCopyLqmProperty", v26}];
      }

      objc_autoreleasePoolPop(v27);
      if (v26 != 0.0)
      {
        v23 = kCFAllocatorDefault;
        Copy = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloatType, &valuePtr);
        goto LABEL_52;
      }

      sub_10015294C();
    }

    cf = 0;
    v23 = kCFAllocatorDefault;
LABEL_53:
    CFProperty = IORegistryEntryCreateCFProperty(*(a1 + 24), a3, v23, 0);
    cf = CFProperty;
    if (!CFProperty)
    {
      if (a3)
      {
        v28 = CFGetTypeID(a3);
        if (v28 == CFStringGetTypeID())
        {
          if (CFEqual(a3, @"IO80211InterfaceWoWWakeUpParams"))
          {
            v29 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: Querying %@ on %@ from IORegistryEntryCreateCFProperty returned NULL", "WiFiDeviceCopyProperty", a3, a2}];
            }

            objc_autoreleasePoolPop(v29);
          }
        }
      }

      value = 0;
      v30 = CFGetTypeID(v7);
      if (v30 == sub_100006F40())
      {
        InfoCopy = sub_10010F4FC(v7);
      }

      else
      {
        for (j = 6; ; --j)
        {
          v34 = *(a1 + 16);
          InfoCopy = Apple80211GetInfoCopy();
          if (InfoCopy != -3905 && InfoCopy != 61 && InfoCopy != 16)
          {
            break;
          }

          if (!j)
          {
            break;
          }

          usleep(0x7A120u);
        }
      }

      if (InfoCopy)
      {
        v32 = 1;
      }

      else
      {
        v32 = value == 0;
      }

      if (v32)
      {
        CFProperty = 0;
      }

      else
      {
        v36 = CFDictionaryGetValue(value, a3);
        cf = v36;
        if (v36)
        {
          CFProperty = v36;
          CFRetain(v36);
        }

        else if (CFEqual(a3, @"ScaledRate"))
        {
          v40 = sub_1000078F4(a1, a2);
          v48[0] = 0xAAAAAAAAAAAAAAAALL;
          valuePtr = 0xAAAAAAAAAAAAAAAALL;
          v47 = 1.0;
          if (v40)
          {
            v41 = v40;
            sub_10009E058(v40, &valuePtr, v48);
            if (valuePtr != v48[0])
            {
              v42 = CFDictionaryGetValue(value, @"RATE");
              v43 = sub_10001CD48(v42);
              v47 = sub_100058A58(v43, valuePtr, v48[0]);
            }

            CFProperty = CFNumberCreate(v23, kCFNumberFloatType, &v47);
            cf = CFProperty;
            CFRelease(v41);
          }

          else
          {
            CFProperty = CFNumberCreate(v23, kCFNumberFloatType, &v47);
            cf = CFProperty;
          }
        }

        else
        {
          CFProperty = 0;
        }

        if (value)
        {
          CFRelease(value);
        }
      }
    }

    if (!a3)
    {
      return cf;
    }

    goto LABEL_84;
  }

  v46 = *(a1 + 256);
  v23 = kCFAllocatorDefault;
  value = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v46);
  v50 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v47);
  v24 = CFDictionaryCreate(kCFAllocatorDefault, v48, &value, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, v24);
  if (value)
  {
    CFRelease(value);
    value = 0;
  }

  if (v50)
  {
    CFRelease(v50);
    v50 = 0;
  }

  if (v24)
  {
    CFRelease(v24);
  }

LABEL_52:
  cf = Copy;
  if (!Copy)
  {
    goto LABEL_53;
  }

  return Copy;
}

const void *sub_1000227F8(uint64_t a1)
{
  if (a1)
  {

    return sub_10000A540(a1, @"AccessoryIdentifier");
  }

  else
  {
    sub_10017A418();
    return 0;
  }
}

_WORD *sub_100022854(void *a1, void *a2)
{
  context = objc_autoreleasePoolPush();
  v4 = sub_10001CC5C();
  v5 = 0;
  if (!a1 || !v4)
  {
    goto LABEL_274;
  }

  sub_10001CC5C();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = 0;
    goto LABEL_274;
  }

  v6 = +[NSMutableDictionary dictionary];
  if (!a2 || [a2 containsObject:&off_100281320])
  {
    [v6 addEntriesFromDictionary:{objc_msgSend(a1, "OSSpecificAttributes")}];
    if (![v6 objectForKey:@"AP_MODE"])
    {
      [v6 setObject:&off_1002812D8 forKeyedSubscript:@"AP_MODE"];
    }
  }

  [v6 setObject:objc_msgSend(a1 forKeyedSubscript:"coreWiFiSpecificAttributes")];
  if (!a2)
  {
    [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"SSID"), @"SSID"}];
    [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"networkName"), @"SSID_STR"}];
    v7 = [a1 supportedSecurityTypes];
    v8 = v7;
    if ((v7 & 2) == 0)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_31;
      }

      [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"WEP"];
      goto LABEL_12;
    }

LABEL_22:
    v12 = [a1 WAPISubtype];
    v13 = &off_100281398;
    if (v12 != 1)
    {
      v13 = 0;
    }

    if (v12 == 2)
    {
      v14 = &off_100281380;
    }

    else
    {
      v14 = v13;
    }

    v15 = @"WAPI";
    goto LABEL_30;
  }

  if ([a2 containsObject:&off_100281338])
  {
    [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"SSID"), @"SSID"}];
    [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"networkName"), @"SSID_STR"}];
  }

  if (([a2 containsObject:&off_100281350] & 1) == 0)
  {
LABEL_61:
    if (![a2 containsObject:&off_1002813C8])
    {
      goto LABEL_65;
    }

    goto LABEL_62;
  }

  v11 = [a1 supportedSecurityTypes];
  v8 = v11;
  if ((v11 & 2) != 0)
  {
    if (![a2 containsObject:&off_100281368])
    {
      goto LABEL_31;
    }

    goto LABEL_22;
  }

  if (v11)
  {
    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"WEP"];
    if ([a2 containsObject:&off_1002813B0])
    {
LABEL_12:
      v9 = [a1 WEPSubtype];
      if ((v9 - 1) > 3)
      {
        v10 = 0;
      }

      else
      {
        v10 = dword_1001CE650[(v9 - 1)];
      }

      v14 = [NSNumber numberWithInt:v10];
      v15 = @"WEP_AUTH_Flags";
LABEL_30:
      [v6 setObject:v14 forKeyedSubscript:v15];
    }
  }

LABEL_31:
  v16 = a2;
  v17 = a1;
  if ((v8 & 0xC) != 0)
  {
    v18 = +[NSMutableDictionary dictionary];
    [v18 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", 1), @"IE_KEY_WPA_VERSION"}];
    [v18 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", 2), @"IE_KEY_WPA_MCIPHER"}];
    +[NSMutableArray array];
    [NSNumber numberWithInt:2];
    [sub_10000757C() addObject:?];
    sub_10002A1AC();
    +[NSMutableArray array];
    if ((v8 & 8) != 0)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    [NSNumber numberWithInt:v19];
    [sub_10000757C() addObject:?];
    sub_10002A1AC();
    [sub_10000D7C4() setObject:? forKeyedSubscript:?];
  }

  v20 = v8 & 0x300;
  if ((v8 & 0xF0) != 0 || v20 == 256)
  {
    v21 = +[NSMutableDictionary dictionary];
    [v21 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", 1), @"IE_KEY_RSN_VERSION"}];
    [v21 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", 4), @"IE_KEY_RSN_MCIPHER"}];
    +[NSMutableArray array];
    [NSNumber numberWithInt:4];
    [sub_10000757C() addObject:?];
    sub_10002A1AC();
    +[NSMutableArray array];
    if ((v8 & 0x80) != 0)
    {
      [NSNumber numberWithInt:12];
      [sub_10000757C() addObject:?];
      if ((v8 & 0x20) == 0)
      {
LABEL_40:
        if ((v8 & 0x40) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_44;
      }
    }

    else if ((v8 & 0x20) == 0)
    {
      goto LABEL_40;
    }

    [NSNumber numberWithInt:1];
    [sub_10000757C() addObject:?];
    if ((v8 & 0x40) == 0)
    {
LABEL_47:
      if (v20 == 256)
      {
        [NSNumber numberWithInt:18];
        [sub_10000757C() addObject:?];
      }

      if ((v8 & 0x10) != 0)
      {
        [NSNumber numberWithInt:2];
        [sub_10000757C() addObject:?];
      }

      sub_10002A1AC();
      [sub_10000D7C4() setObject:? forKeyedSubscript:?];
      goto LABEL_52;
    }

LABEL_44:
    [NSNumber numberWithInt:8];
    [sub_10000757C() addObject:?];
    v22 = +[NSMutableDictionary dictionary];
    [v22 setObject:&__kCFBooleanTrue forKey:@"MFP_CAPABLE"];
    if ((v8 & 0x10) == 0)
    {
      [v22 setObject:&__kCFBooleanTrue forKey:@"MFP_REQUIRED"];
    }

    [v21 setObject:v22 forKey:@"IE_KEY_RSN_CAPS"];
    goto LABEL_47;
  }

LABEL_52:
  if (v20 == 768)
  {
    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"SCAN_RESULT_OWE_MULTI_SSID"];
  }

  a1 = v17;
  if ([v17 isWPA2])
  {
    v23 = &__kCFBooleanTrue;
  }

  else
  {
    v23 = &__kCFBooleanFalse;
  }

  [v6 setObject:v23 forKeyedSubscript:@"ALLOW_WPA2_PSK"];
  if ([v17 isOpen])
  {
    v24 = &__kCFBooleanTrue;
  }

  else
  {
    v24 = &__kCFBooleanFalse;
  }

  [v6 setObject:v24 forKeyedSubscript:@"ALLOW_OWE_TSN"];
  a2 = v16;
  if (v16)
  {
    goto LABEL_61;
  }

LABEL_62:
  v25 = [a1 captiveProfile];
  if (v25)
  {
    [v6 addEntriesFromDictionary:v25];
  }

  if (!a2)
  {
LABEL_66:
    if ([a1 hiddenState] == 1)
    {
      v26 = &__kCFBooleanTrue;
    }

    else
    {
      if ([a1 hiddenState] != 2)
      {
        goto LABEL_71;
      }

      v26 = &__kCFBooleanFalse;
    }

    [v6 setObject:v26 forKeyedSubscript:@"UserDirected"];
LABEL_71:
    if (!a2)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

LABEL_65:
  if ([a2 containsObject:&off_1002813E0])
  {
    goto LABEL_66;
  }

LABEL_72:
  if (![a2 containsObject:&off_1002813F8])
  {
    goto LABEL_76;
  }

LABEL_73:
  if ([a1 wasHiddenBefore])
  {
    [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"wasHiddenBefore"), @"WasHiddenBefore"}];
  }

  if (a2)
  {
LABEL_76:
    if (![a2 containsObject:&off_100281410])
    {
      goto LABEL_81;
    }
  }

  if ([a1 isPasswordSharingDisabled])
  {
    [v6 setObject:&off_1002812D8 forKeyedSubscript:@"ShareMode"];
  }

  if (!a2)
  {
    [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"payloadUUID"), @"PayloadUUID"}];
    goto LABEL_84;
  }

LABEL_81:
  if ([a2 containsObject:&off_100281428])
  {
    [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"payloadUUID"), @"PayloadUUID"}];
  }

  if (([a2 containsObject:&off_100281440] & 1) == 0)
  {
LABEL_86:
    if ([a2 containsObject:&off_100281458])
    {
      [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"bundleID"), @"BundleIdentifier"}];
    }

    if (([a2 containsObject:&off_100281470] & 1) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_89;
  }

LABEL_84:
  [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"payloadIdentifier"), @"PayloadIdentifier"}];
  if (a2)
  {
    goto LABEL_86;
  }

  [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"bundleID"), @"BundleIdentifier"}];
LABEL_89:
  if ([a1 isAutoJoinDisabled])
  {
    v27 = &__kCFBooleanFalse;
  }

  else
  {
    v27 = &__kCFBooleanTrue;
  }

  [v6 setObject:v27 forKeyedSubscript:@"enabled"];
  if (!a2)
  {
    v28 = [a1 lowDataMode];
    if (v28 == 2)
    {
      v29 = &off_1002812D8;
    }

    else
    {
      v29 = &off_100281218;
    }

    if (v28 == 1)
    {
      v30 = &off_100281230;
    }

    else
    {
      v30 = v29;
    }

    [v6 setObject:v30 forKeyedSubscript:@"SaveDataMode"];
    goto LABEL_108;
  }

LABEL_100:
  if (![a2 containsObject:&off_100281488] || ((v31 = objc_msgSend(a1, "lowDataMode"), v31 != 2) ? (v32 = &off_100281218) : (v32 = &off_1002812D8), v31 != 1 ? (v33 = v32) : (v33 = &off_100281230), objc_msgSend(v6, "setObject:forKeyedSubscript:", v33, @"SaveDataMode"), a2))
  {
    if ([a2 containsObject:&off_1002814A0])
    {
      [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"lastJoinedByUserAt"), @"lastJoined"}];
    }

    if (([a2 containsObject:&off_1002814B8] & 1) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_112;
  }

LABEL_108:
  [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"lastJoinedByUserAt"), @"lastJoined"}];
LABEL_112:
  [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"lastJoinedBySystemAt"), @"lastAutoJoined"}];
  if (!a2)
  {
    goto LABEL_114;
  }

LABEL_113:
  if ([a2 containsObject:&off_1002814D0])
  {
LABEL_114:
    v34 = [a1 addReason];
    v35 = &off_100281278;
    v36 = 1;
    v37 = &off_100281230;
    switch(v34)
    {
      case 2uLL:
      case 3uLL:
      case 4uLL:
      case 5uLL:
        goto LABEL_115;
      case 6uLL:
        v37 = &off_100281308;
        goto LABEL_115;
      case 7uLL:
        v37 = &off_1002812F0;
        goto LABEL_127;
      case 8uLL:
        v37 = &off_100281248;
        goto LABEL_115;
      case 9uLL:
        v37 = &off_100281500;
        goto LABEL_115;
      case 0xAuLL:
        v37 = &off_1002812D8;
        goto LABEL_129;
      case 0xBuLL:
        v37 = &off_100281380;
        goto LABEL_115;
      case 0xCuLL:
        v37 = &off_100281260;
LABEL_127:
        v35 = &off_100281230;
        goto LABEL_129;
      case 0xDuLL:
        v37 = &off_100281260;
        goto LABEL_115;
      case 0xEuLL:
        v37 = &off_100281218;
        goto LABEL_129;
      case 0xFuLL:
        goto LABEL_129;
      case 0x10uLL:
        [v6 setObject:&off_1002814E8 forKeyedSubscript:@"WiFiManagerKnownNetworksEventType"];
        goto LABEL_130;
      case 0x11uLL:
        v36 = 0;
        v37 = &off_100281248;
        v35 = &off_1002814E8;
        goto LABEL_129;
      case 0x13uLL:
        v37 = &off_100281530;
        goto LABEL_115;
      case 0x15uLL:
        v36 = 0;
        v37 = &off_100281398;
        v35 = &off_1002814E8;
LABEL_129:
        [v6 setObject:v35 forKeyedSubscript:@"WiFiManagerKnownNetworksEventType"];
        [v6 setObject:v37 forKeyedSubscript:@"NetworkOriginator"];
        if (v36)
        {
          goto LABEL_132;
        }

LABEL_130:
        v39 = sub_10000D7C4();
LABEL_131:
        [v39 setObject:v40 forKeyedSubscript:v38];
LABEL_132:
        if (a2)
        {
          goto LABEL_134;
        }

        [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"addedAt", v35), @"addedAt"}];
        break;
      case 0x16uLL:
        v37 = &off_100281518;
LABEL_115:
        v38 = @"WiFiManagerKnownNetworksEventType";
        v39 = v6;
        v40 = v37;
        goto LABEL_131;
      default:
        goto LABEL_132;
    }

    goto LABEL_137;
  }

LABEL_134:
  if ([a2 containsObject:&off_100281548])
  {
    [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"addedAt"), @"addedAt"}];
  }

  if (([a2 containsObject:&off_100281560] & 1) == 0)
  {
LABEL_142:
    if ([a2 containsObject:&off_100281578])
    {
      [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"domainName"), @"DomainName"}];
    }

    if (([a2 containsObject:&off_100281590] & 1) == 0)
    {
      goto LABEL_147;
    }

    goto LABEL_145;
  }

LABEL_137:
  v41 = [a1 EAPProfile];
  if (v41)
  {
    v82 = @"EAPClientConfiguration";
    v83 = v41;
    v42 = [NSDictionary dictionaryWithObjects:&v83 forKeys:&v82 count:1];
  }

  else
  {
    v42 = 0;
  }

  [v6 setObject:v42 forKeyedSubscript:@"EnterpriseProfile"];
  if (a2)
  {
    goto LABEL_142;
  }

  [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"domainName"), @"DomainName"}];
LABEL_145:
  [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"displayedOperatorName"), @"DisplayedOperatorName"}];
  if (!a2)
  {
    [a1 isServiceProviderRoamingEnabled];
    [v6 setObject:objc_msgSend(sub_100021488() forKeyedSubscript:{"numberWithBool:"), @"SPRoaming"}];
    goto LABEL_150;
  }

LABEL_147:
  if ([a2 containsObject:&off_1002815A8])
  {
    [a1 isServiceProviderRoamingEnabled];
    [v6 setObject:objc_msgSend(sub_100021488() forKeyedSubscript:{"numberWithBool:"), @"SPRoaming"}];
  }

  if (([a2 containsObject:&off_1002815C0] & 1) == 0)
  {
LABEL_152:
    if ([a2 containsObject:&off_1002815D8])
    {
      [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"NAIRealmNameList"), @"NaiRealmName"}];
    }

    if (([a2 containsObject:&off_1002815F0] & 1) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_155;
  }

LABEL_150:
  [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"cellularNetworkInfo"), @"MCCandMNC"}];
  if (a2)
  {
    goto LABEL_152;
  }

  [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"NAIRealmNameList"), @"NaiRealmName"}];
LABEL_155:
  [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"roamingConsortiumList"), @"RoamingConsortiumOIs"}];
  if (!a2)
  {
    [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"userPreferredNetworkNames"), @"userPreferredNetworkNames"}];
    goto LABEL_160;
  }

LABEL_157:
  if ([a2 containsObject:&off_100281608])
  {
    [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"userPreferredNetworkNames"), @"userPreferredNetworkNames"}];
  }

  if (([a2 containsObject:&off_100281620] & 1) == 0)
  {
LABEL_162:
    if ([a2 containsObject:&off_100281638])
    {
      [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"networkGroupID"), @"networkGroupID"}];
    }

    if (([a2 containsObject:&off_100281650] & 1) == 0)
    {
      goto LABEL_167;
    }

    goto LABEL_165;
  }

LABEL_160:
  [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"userPreferredPasspointDomains"), @"userPreferredPasspointDomains"}];
  if (a2)
  {
    goto LABEL_162;
  }

  [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"networkGroupID"), @"networkGroupID"}];
LABEL_165:
  [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"networkGroupPriority"), @"networkGroupPriority"}];
  if (!a2)
  {
    [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"lastDiscoveredAt"), @"discoveredAt"}];
    goto LABEL_170;
  }

LABEL_167:
  if ([a2 containsObject:&off_100281668])
  {
    [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"lastDiscoveredAt"), @"discoveredAt"}];
  }

  if (([a2 containsObject:&off_100281680] & 1) == 0)
  {
LABEL_199:
    if ([a2 containsObject:&off_100281698])
    {
      [a1 isPrivacyProxyEnabled];
      [v6 setObject:objc_msgSend(sub_100021488() forKeyedSubscript:{"numberWithBool:"), @"PrivacyProxyEnabled"}];
    }

    if (([a2 containsObject:&off_1002816B0] & 1) == 0)
    {
      goto LABEL_203;
    }

    goto LABEL_202;
  }

LABEL_170:
  +[NSMutableSet set];
  v43 = [a1 BSSList];
  if (v43)
  {
    v44 = v43;
    v73 = a2;
    v74 = a1;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v45 = [v43 countByEnumeratingWithState:&v77 objects:v81 count:16];
    if (v45)
    {
      v47 = v45;
      v46 = 0;
      v48 = &xpc_dictionary_set_uint64_ptr;
      v49 = *v78;
      v76 = v44;
      do
      {
        for (i = 0; i != v47; i = i + 1)
        {
          if (*v78 != v49)
          {
            objc_enumerationMutation(v44);
          }

          v51 = *(*(&v77 + 1) + 8 * i);
          v52 = [v51 BSSID];
          if (v52)
          {
            v53 = [v52 UTF8String];
            if (v53)
            {
              v54 = ether_aton(v53);
              if (v54)
              {
                v55 = ether_ntoa(v54);
                if (v55)
                {
                  v56 = [v48[465] stringWithUTF8String:v55];
                  if (v56)
                  {
                    v57 = v56;
                    if (([sub_10000D7C4() containsObject:?] & 1) == 0)
                    {
                      [sub_10000D7C4() addObject:?];
                      v58 = +[NSMutableDictionary dictionary];
                      [v51 OSSpecificAttributes];
                      [sub_100024F1C() addEntriesFromDictionary:?];
                      [v58 setObject:v57 forKeyedSubscript:@"BSSID"];
                      if ([v51 channel])
                      {
                        sub_1000A3FC8();
                        [v59 channel];
                        [sub_10000757C() numberWithUnsignedInteger:?];
                        [sub_100024F1C() setObject:? forKeyedSubscript:?];
                        [v44 numberWithUnsignedInt:{objc_msgSend(sub_100035028(), "flags")}];
                        [sub_100024F1C() setObject:? forKeyedSubscript:?];
                      }

                      if ([v51 location])
                      {
                        sub_1000A3FC8();
                        [v60 coordinate];
                        [v44 numberWithDouble:?];
                        [sub_100024F1C() setObject:? forKeyedSubscript:?];
                        [sub_100035028() coordinate];
                        [v44 numberWithDouble:v61];
                        [sub_100024F1C() setObject:? forKeyedSubscript:?];
                        [sub_100035028() horizontalAccuracy];
                        [v44 numberWithDouble:?];
                        [sub_100024F1C() setObject:? forKeyedSubscript:?];
                        [v57 timestamp];
                        [sub_100024F1C() setObject:? forKeyedSubscript:?];
                      }

                      [v51 lastAssociatedAt];
                      [sub_100024F1C() setObject:? forKeyedSubscript:?];
                      if ([v51 colocated2GHzRNRChannel])
                      {
                        sub_1000A3FC8();
                        [v62 channel];
                        [sub_10000757C() numberWithUnsignedInteger:?];
                        [sub_100024F1C() setObject:? forKeyedSubscript:?];
                        [v44 numberWithUnsignedInt:{objc_msgSend(sub_100035028(), "flags")}];
                        [sub_100024F1C() setObject:? forKeyedSubscript:?];
                      }

                      if ([v51 colocated5GHzRNRChannel])
                      {
                        sub_1000A3FC8();
                        [v63 channel];
                        [sub_10000757C() numberWithUnsignedInteger:?];
                        [sub_100024F1C() setObject:? forKeyedSubscript:?];
                        [v44 numberWithUnsignedInt:{objc_msgSend(sub_100035028(), "flags")}];
                        [sub_100024F1C() setObject:? forKeyedSubscript:?];
                      }

                      [v51 AWDLRealTimeModeTimestamp];
                      [sub_100024F1C() setObject:? forKeyedSubscript:?];
                      [v51 IPv4NetworkSignature];
                      [sub_100024F1C() setObject:? forKeyedSubscript:?];
                      [v51 IPv6NetworkSignature];
                      [sub_100024F1C() setObject:? forKeyedSubscript:?];
                      [v51 DHCPServerID];
                      [sub_100024F1C() setObject:? forKeyedSubscript:?];
                      [v51 DHCPv6ServerID];
                      [sub_100024F1C() setObject:? forKeyedSubscript:?];
                      [v51 coreWiFiSpecificAttributes];
                      [sub_100024F1C() setObject:? forKeyedSubscript:?];
                      if (!v46)
                      {
                        v46 = +[NSMutableArray array];
                      }

                      [v46 addObject:v58];
                      v44 = v76;
                      v48 = &xpc_dictionary_set_uint64_ptr;
                    }
                  }
                }
              }
            }
          }
        }

        v47 = [v44 countByEnumeratingWithState:&v77 objects:v81 count:16];
      }

      while (v47);
    }

    else
    {
      v46 = 0;
    }

    [v6 setObject:v46 forKeyedSubscript:@"networkKnownBSSListKey"];
    a2 = v73;
    a1 = v74;
  }

  if (a2)
  {
    goto LABEL_199;
  }

  [a1 isPrivacyProxyEnabled];
  [v6 setObject:objc_msgSend(sub_100021488() forKeyedSubscript:{"numberWithBool:"), @"PrivacyProxyEnabled"}];
LABEL_202:
  [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"privacyProxyBlockedReason"), @"PrivacyProxyBlockedReason"}];
  if (!a2)
  {
    goto LABEL_204;
  }

LABEL_203:
  if ([a2 containsObject:&off_1002816C8])
  {
LABEL_204:
    v64 = [a1 movingAttribute];
    if (v64 == 1)
    {
      v65 = &__kCFBooleanTrue;
    }

    else
    {
      if (v64 != 2)
      {
        goto LABEL_209;
      }

      v65 = &__kCFBooleanFalse;
    }

    [v6 setObject:v65 forKeyedSubscript:@"WiFiNetworkAttributeIsMoving"];
LABEL_209:
    if (!a2)
    {
      goto LABEL_211;
    }
  }

  if (![a2 containsObject:&off_1002816E0])
  {
    goto LABEL_218;
  }

LABEL_211:
  v66 = [a1 publicAttribute];
  if (v66 == 1)
  {
    v67 = &__kCFBooleanTrue;
  }

  else
  {
    if (v66 != 2)
    {
      goto LABEL_216;
    }

    v67 = &__kCFBooleanFalse;
  }

  [v6 setObject:v67 forKeyedSubscript:@"WiFiNetworkAttributeIsPublic"];
LABEL_216:
  if (!a2)
  {
    [a1 transitionDisabledFlags];
    [v6 setObject:objc_msgSend(sub_100021488() forKeyedSubscript:{"numberWithUnsignedInt:"), @"TransitionDisabledFlags"}];
    goto LABEL_221;
  }

LABEL_218:
  if ([a2 containsObject:&off_1002816F8])
  {
    [a1 transitionDisabledFlags];
    [v6 setObject:objc_msgSend(sub_100021488() forKeyedSubscript:{"numberWithUnsignedInt:"), @"TransitionDisabledFlags"}];
  }

  if (([a2 containsObject:&off_100281710] & 1) == 0)
  {
LABEL_223:
    if ([a2 containsObject:&off_100281728])
    {
      [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"carplayUUID"), @"CARPLAY_UUID"}];
    }

    if (([a2 containsObject:&off_100281740] & 1) == 0)
    {
      goto LABEL_228;
    }

    goto LABEL_226;
  }

LABEL_221:
  [a1 isStandalone6G];
  [v6 setObject:objc_msgSend(sub_100021488() forKeyedSubscript:{"numberWithBool:"), @"Standalone"}];
  if (a2)
  {
    goto LABEL_223;
  }

  [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"carplayUUID"), @"CARPLAY_UUID"}];
LABEL_226:
  [a1 isPersonalHotspot];
  [v6 setObject:objc_msgSend(sub_100021488() forKeyedSubscript:{"numberWithBool:"), @"IsPersonalHotspot"}];
  if (!a2)
  {
    [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"NANServiceID"), @"WiFiNetworkNANServiceID"}];
    goto LABEL_231;
  }

LABEL_228:
  if ([a2 containsObject:&off_100281758])
  {
    [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"NANServiceID"), @"WiFiNetworkNANServiceID"}];
  }

  if (([a2 containsObject:&off_100281770] & 1) == 0)
  {
LABEL_233:
    if ([a2 containsObject:&off_100281788])
    {
      [a1 isDNSHeuristicsFilteredNetwork];
      [v6 setObject:objc_msgSend(sub_100021488() forKeyedSubscript:{"numberWithBool:"), @"FilteredNetwork"}];
    }

    if (([a2 containsObject:&off_1002817A0] & 1) == 0)
    {
      goto LABEL_237;
    }

    goto LABEL_236;
  }

LABEL_231:
  [a1 isPublicAirPlayNetwork];
  [v6 setObject:objc_msgSend(sub_100021488() forKeyedSubscript:{"numberWithBool:"), @"PublicAirPlayNetwork"}];
  if (a2)
  {
    goto LABEL_233;
  }

  [a1 isDNSHeuristicsFilteredNetwork];
  [v6 setObject:objc_msgSend(sub_100021488() forKeyedSubscript:{"numberWithBool:"), @"FilteredNetwork"}];
LABEL_236:
  [v6 setObject:objc_msgSend(a1 forKeyedSubscript:{"DNSHeuristicsFailureStateInfo"), @"DNSFailures"}];
  if (!a2)
  {
    goto LABEL_238;
  }

LABEL_237:
  if ([a2 containsObject:&off_1002817B8])
  {
LABEL_238:
    if ([a1 expirationDate])
    {
      [objc_msgSend(a1 "expirationDate")];
      [v6 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:"), @"WiFiNetworkExpirationDate"}];
    }

    if (!a2)
    {
      goto LABEL_242;
    }
  }

  if (![a2 containsObject:&off_1002817D0])
  {
    goto LABEL_246;
  }

LABEL_242:
  if (![a1 allowedBeforeFirstUnlock])
  {
    goto LABEL_245;
  }

  if ([a1 isProfileBased])
  {
    [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"networkIsAllowedBeforeFirstUnlock"];
LABEL_245:
    if (!a2)
    {
      goto LABEL_247;
    }

    goto LABEL_246;
  }

  v71 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Network is AllowedBeforeFirstUnlock but NOT setting the flag. Network is not profile-based.", "WiFiNetworkCreateFromCoreWiFiNetworkProfile"}];
  }

  objc_autoreleasePoolPop(v71);
  if (!a2)
  {
LABEL_247:
    if ([a1 payloadIdentifier])
    {
      if ([a1 isPayloadIdentifierTelemetryApproved])
      {
        v68 = &__kCFBooleanTrue;
      }

      else
      {
        v68 = &__kCFBooleanFalse;
      }

      [v6 setObject:v68 forKeyedSubscript:@"CarrierPayloadIdentifierTelemetryApproved"];
    }

    v5 = sub_10000B0F4(kCFAllocatorDefault, v6, 0);
    if (!a2)
    {
      goto LABEL_256;
    }

    goto LABEL_255;
  }

LABEL_246:
  if ([a2 containsObject:&off_1002817E8])
  {
    goto LABEL_247;
  }

  v5 = sub_10000B0F4(kCFAllocatorDefault, v6, 0);
LABEL_255:
  if (![a2 containsObject:&off_100281800])
  {
    goto LABEL_262;
  }

LABEL_256:
  if ([a1 networkOfInterestWorkState] == 1)
  {
    v69 = 1;
  }

  else
  {
    if ([a1 networkOfInterestWorkState] != 2)
    {
      goto LABEL_261;
    }

    v69 = 2;
  }

  sub_1000A23B4(v5, v69);
LABEL_261:
  if (a2)
  {
LABEL_262:
    if (![a2 containsObject:&off_100281818])
    {
      goto LABEL_274;
    }
  }

  if ([a1 networkOfInterestHomeState] == 1)
  {
    v70 = 1;
LABEL_273:
    sub_1000A2434(v5, v70);
    goto LABEL_274;
  }

  if ([a1 networkOfInterestHomeState] == 2)
  {
    v70 = 2;
    goto LABEL_273;
  }

  if ([a1 networkOfInterestHomeState] == 3)
  {
    v70 = 3;
    goto LABEL_273;
  }

LABEL_274:
  objc_autoreleasePoolPop(context);
  return v5;
}