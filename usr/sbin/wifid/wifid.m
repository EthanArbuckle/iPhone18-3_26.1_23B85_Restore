void sub_100002A88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  if (v3)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100002B04;
    v4[3] = &unk_100261330;
    v4[4] = v2;
    v4[5] = a2;
    dispatch_async(v3, v4);
  }
}

uint64_t sub_100002B10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100002B30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100002BD0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002C10(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = objc_autoreleasePoolPush();
  v5 = v4;
  if (a2)
  {
    if (v3)
    {
      if (*(v3 + 32))
      {
        v17 = v3;
        context = v4;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v6 = [a2 elements];
        v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = 0;
          v10 = 0;
          v11 = 0;
          v12 = *v24;
          do
          {
            for (i = 0; i != v8; i = i + 1)
            {
              if (*v24 != v12)
              {
                objc_enumerationMutation(v6);
              }

              v14 = *(*(&v23 + 1) + 8 * i);
              if (v14)
              {
                if ([objc_msgSend(*(*(&v23 + 1) + 8 * i) "identifier")])
                {
                  v15 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:4 message:"Control Center launched"];
                  }

                  objc_autoreleasePoolPop(v15);
                  v9 = 1;
                }

                if ([objc_msgSend(v14 "identifier")])
                {
                  v10 = 1;
                }

                if ([objc_msgSend(v14 "identifier")])
                {
                  v11 = 1;
                }
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
          }

          while (v8);
        }

        else
        {
          v9 = 0;
          v10 = 0;
          v11 = 0;
        }

        v16 = *(v17 + 32);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000035E8;
        block[3] = &unk_100260BC8;
        block[4] = v17;
        v20 = v10;
        v21 = v11;
        v22 = v9;
        dispatch_async(v16, block);
        v5 = context;
      }

      else
      {
        sub_1001731BC();
      }
    }

    else
    {
      sub_100173228();
    }
  }

  else
  {
    sub_100173294();
  }

  objc_autoreleasePoolPop(v5);
}

void sub_100002E5C(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 2457))
  {
    sub_100076F74(a1);
  }

  v4 = *(a1 + 756);
  if (v4 == 2)
  {
    v5 = 0;
  }

  else if (v4 == 1)
  {
    v5 = *(a1 + 816) == 0;
  }

  else
  {
    v5 = *(a1 + 832);
  }

  if (CFSetGetCount(*(a1 + 152)) || [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")])
  {
    v6 = *(a1 + 800) | 8;
  }

  else
  {
    v6 = *(a1 + 800) & 0xFFFFFFFFFFFFFFF7;
  }

  *(a1 + 800) = v6;
  if (CFSetGetCount(*(a1 + 160)) || [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")])
  {
    v7 = *(a1 + 800) | 0x10;
  }

  else
  {
    v7 = *(a1 + 800) & 0xFFFFFFFFFFFFFFEFLL;
  }

  *(a1 + 800) = v7;
  if (CFSetGetCount(*(a1 + 176)) || [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")])
  {
    v8 = *(a1 + 800) | 0x20;
  }

  else
  {
    v8 = *(a1 + 800) & 0xFFFFFFFFFFFFFFDFLL;
  }

  *(a1 + 800) = v8;
  v9 = (v8 ^ a2);
  if (*(a1 + 832))
  {
    v8 = 0;
  }

  v55 = v8;
  context = a1;
  v57 = 0xAAAAAAAA0000003BLL;
  v58 = &v55;
  v59 = 1;
  v60 = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, &context);
  v10 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Delta state =%lld", "__WiFiManagerApplicationStateUpdate", v9}];
  }

  objc_autoreleasePoolPop(v10);
  if ((v9 & 0x11) != 0)
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v12 = "entered";
      if ((*(a1 + 800) & 0x11) == 0)
      {
        v12 = "exited";
      }

      [off_100298C40 WFLog:3 message:{"Foreground Network Application %s.", v12}];
    }

    objc_autoreleasePoolPop(v11);
    if ((*(a1 + 800) & 0x11) != 0)
    {
      v13 = 1152;
      if (!v5)
      {
        v13 = 1136;
      }

      sub_10000D0D8(a1, *(a1 + v13), 2 * (v5 != 0));
      v14 = 3;
      LOBYTE(v15) = 1;
      v50 = 1;
      v16 = 1;
      v17 = 1;
      v18 = 1;
      v19 = 1;
      v20 = 1;
    }

    else
    {
      v50 = 1;
      if (v5)
      {
        v23 = 2;
      }

      else
      {
        v23 = 1;
      }

      v24 = 1152;
      if (!v5)
      {
        v24 = 1144;
      }

      sub_10000D0D8(a1, *(a1 + v24), v23);
      sub_1000927AC(a1);
      v19 = 0;
      v14 = 0;
      v20 = 0;
      v15 = (*(a1 + 800) >> 2) & 1;
      v16 = 1;
      v17 = 1;
      v18 = 1;
    }
  }

  else
  {
    v19 = 0;
    v21 = *(a1 + 800);
    LOBYTE(v15) = 1;
    if ((v21 & 0x11) != 0)
    {
      v50 = 1;
      v16 = 1;
      v17 = 1;
      v18 = 1;
      v14 = 0;
      v20 = 0;
    }

    else
    {
      v16 = 1;
      v50 = 1;
      v17 = 1;
      v18 = 1;
      v14 = 0;
      v20 = 0;
      if ((v9 & 0x2A) != 0)
      {
        v22 = *(a1 + 756);
        v18 = v5 == 0;
        if ((v21 & 0x2A) != 0)
        {
          v50 = 0;
          v14 = 0;
          v20 = v22 == 2;
          v16 = v5 == 0;
          v18 = 1;
          v19 = 1;
        }

        else
        {
          v17 = 0;
          v19 = 0;
          v20 = 0;
          if (v22 == 2)
          {
            v14 = 3;
          }

          else
          {
            v14 = 0;
          }

          v50 = 1;
          v16 = 1;
        }
      }
    }
  }

  v51 = v15;
  v52 = v17;
  v53 = v16;
  v54 = v18;
  if ((v9 & 0x2A) != 0)
  {
    if ((v9 & 2) != 0)
    {
      v25 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        if ((*(a1 + 800) & 2) != 0)
        {
          v27 = "entered";
        }

        else
        {
          v27 = "exited";
        }

        [off_100298C40 WFLog:3 message:{"Background Network Application %s", v27}];
      }
    }

    else if ((v9 & 8) != 0)
    {
      v25 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        if ((*(a1 + 800) & 8) != 0)
        {
          v28 = "entered";
        }

        else
        {
          v28 = "exited";
        }

        [off_100298C40 WFLog:3 message:{"Background Daemon Application %s", v28}];
      }
    }

    else
    {
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_68;
      }

      v25 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        if ((*(a1 + 800) & 0x20) != 0)
        {
          v26 = "entered";
        }

        else
        {
          v26 = "exited";
        }

        [off_100298C40 WFLog:3 message:{"Direct to Cloud Daemon %s", v26}];
      }
    }

    objc_autoreleasePoolPop(v25);
  }

LABEL_68:
  if ((*(a1 + 800) & 0x2A) != 0)
  {
    v48 = v14;
    v49 = v19;
    v29 = sub_1000070B4(a1);
    v30 = sub_100007168(a1);
    v31 = objc_autoreleasePoolPush();
    v32 = off_100298C40;
    if (off_100298C40)
    {
      v33 = *(a1 + 800);
      if ((v33 & 2) != 0)
      {
        v34 = "Present";
      }

      else
      {
        v34 = "Not Present";
      }

      v47 = v20;
      if ((v33 & 8) != 0)
      {
        v35 = "Present";
      }

      else
      {
        v35 = "Not Present";
      }

      v45 = v35;
      v46 = v34;
      v36 = v9;
      v9 = @"none";
      if (v29)
      {
        v37 = v29;
      }

      else
      {
        v37 = @"none";
      }

      v38 = [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
      if (v30)
      {
        v9 = v30;
      }

      v44 = v9;
      LOBYTE(v9) = v36;
      v20 = v47;
      [v32 WFLog:3 message:{"BG Application: %s, BG Daemon: %s. Daemons: %@ (activity=%d) Cloud Clients: %@ (activity=%d)", v46, v45, v37, v38, v44, objc_msgSend(+[WiFiXPCManager sharedXPCManager](WiFiXPCManager, "sharedXPCManager"), "isWiFiBoundActivityRegistered")}];
    }

    objc_autoreleasePoolPop(v31);
    if (v29)
    {
      CFRelease(v29);
    }

    v14 = v48;
    v19 = v49;
    if (v30)
    {
      CFRelease(v30);
    }
  }

  if ((v9 & 4) == 0)
  {
LABEL_91:
    if (v51)
    {
      goto LABEL_93;
    }

    goto LABEL_92;
  }

  v39 = *(a1 + 800);
  if ((v39 & 4) != 0)
  {
    v14 = 2;
    v19 = 1;
    goto LABEL_91;
  }

  if ((v39 & 0x11) != 0)
  {
    goto LABEL_91;
  }

LABEL_92:
  sub_100006910(a1);
  if ((*(a1 + 800) & 0x2A) != 0)
  {
LABEL_94:
    sub_100006A6C(a1);
    goto LABEL_95;
  }

LABEL_93:
  if ((v50 & 1) == 0)
  {
    goto LABEL_94;
  }

LABEL_95:
  if ((v52 & 1) == 0 && !*(a1 + 1184) && !*(a1 + 1168))
  {
    sub_10007D2E8(a1);
  }

  if (!v53)
  {
    sub_10000D0D8(a1, *(a1 + 1152), 2);
  }

  if (!v54)
  {
    if (*(a1 + 1184))
    {
      v40 = 3;
      v41 = 1160;
LABEL_104:
      sub_10000D0D8(a1, *(a1 + v41), v40);
      goto LABEL_106;
    }

    if (!*(a1 + 1168))
    {
      sub_10000D4C0(a1, 0);
      v40 = 1;
      v41 = 1144;
      goto LABEL_104;
    }
  }

LABEL_106:
  if (v14)
  {
    sub_10000D1F8(a1, v14);
  }

  v42 = [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor isNetworkRecommendationAllowed];
  if (_os_feature_enabled_impl())
  {
    if (!v19 || ![+[WiFiUserInteractionMonitor isPersonalHotspotRecommendationAllowed] sharedInstance]
    {
      goto LABEL_111;
    }
  }

  else if (!v42)
  {
LABEL_111:
    LOBYTE(v55) = 0;
    goto LABEL_114;
  }

  LOBYTE(v55) = 1;
LABEL_114:
  context = a1;
  v57 = 0xAAAAAAAA0000005BLL;
  v59 = 0;
  v60 = 0;
  v58 = &v55;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, &context);
  if (_os_feature_enabled_impl())
  {
    sub_1000084DC(a1);
    if (!v19)
    {
      return;
    }
  }

  else if (!v19)
  {
    return;
  }

  v43 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s triggering Auto-Join for CWFAutoJoinTriggerApplicationState", "__WiFiManagerApplicationStateUpdate"}];
  }

  objc_autoreleasePoolPop(v43);
  sub_10000D4C0(a1, 1);
  if (_os_feature_enabled_impl())
  {
    sub_1000197A4(a1, 31);
  }

  else
  {
    sub_10007A1F4(a1, v20);
  }

  if (*(a1 + 756) == 2)
  {
    if (*(a1 + 322))
    {
      sub_1000740C8(a1, 1, 6, 0);
    }
  }
}

void sub_1000035E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(v2 + 800);
    if (*(v2 + 808) != v3)
    {
      *(v2 + 808) = v3;
      if (v3)
      {
        v6 = v4 | 4;
      }

      else
      {
        v6 = v4 & 0xFFFFFFFFFFFFFFFBLL;
      }

LABEL_11:
      *(v2 + 800) = v6;
      v7 = sub_100003924();
      sub_100002E5C(v7, v8);
      goto LABEL_12;
    }

    if (*(a1 + 40) && (v4 & 1) != 0)
    {
      v5 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: in home screen, force-unset foreground app mask.", "__WiFiManagerSBHomeScreenStateUpdate"}];
      }

      objc_autoreleasePoolPop(v5);
      v6 = v4 & 0xFFFFFFFFFFFFFFFELL;
      goto LABEL_11;
    }
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null manager", "__WiFiManagerSBHomeScreenStateUpdate"}];
    }

    objc_autoreleasePoolPop(v28);
  }

LABEL_12:
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(a1 + 41);
    if (*(v9 + 880) != v10)
    {
      *(v9 + 880) = v10;
    }

LABEL_15:
    v11 = *(a1 + 42);
    if (*(v9 + 809) != v11)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = sub_10001D1AC();
      if (v13)
      {
        v14 = @"visible";
        if (*(v9 + 809))
        {
          v15 = @"visible";
        }

        else
        {
          v15 = @"non-visible";
        }

        if (!v11)
        {
          v14 = @"non-visible";
        }

        [v13 WFLog:3 message:{"%s: control center state changed from '%@' -> '%@'", "__WiFiManagerControlCenterStateChanged", v15, v14}];
      }

      objc_autoreleasePoolPop(a1);
      *(v9 + 809) = v11;
      if (v11)
      {

        sub_1000770B4(v9, 1);
      }

      else if (*(v9 + 1232))
      {
        v16 = objc_autoreleasePoolPush();
        v17 = sub_10001D1AC();
        if (v17)
        {
          [v17 WFLog:3 message:{"%s: disabling MIS discovery due to control center dismissal", "__WiFiManagerControlCenterStateChanged"}];
        }

        objc_autoreleasePoolPop(a1);
        v18 = sub_10000715C(*(v9 + 1232));
        v33[0] = 0xAAAAAAAAAA000000;
        v33[1] = v18;
        sub_1000950B8();
        context[0] = v9;
        context[1] = v19;
        context[2] = v33;
        context[3] = 1;
        context[4] = 0;
        v20 = *(v9 + 112);
        sub_1000083DC();
        CFSetApplyFunction(v21, v22, context);
        v23 = *(v9 + 1232);
        sub_10002DC78();
        sub_10007B98C(v24, v25, v26, v27, 0, 0);
      }
    }

    return;
  }

  v29 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Null manager", "__WiFiManagerCameraStateUpdate"}];
  }

  objc_autoreleasePoolPop(v29);
  v9 = *(a1 + 32);
  if (v9)
  {
    goto LABEL_15;
  }

  v30 = objc_autoreleasePoolPush();
  v31 = sub_10001D1AC();
  if (v31)
  {
    [v31 WFLog:4 message:"manager is Null"];
  }

  objc_autoreleasePoolPop(a1);
}

id sub_1000038F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 addFieldForKey:a3 value:a4 options:1];
}

uint64_t sub_10000390C()
{

  return usleep(0x7A120u);
}

void sub_10000393C(const void *a1)
{

  sub_100017C18(a1, v2, v1);
}

id sub_100003958(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);

  return [a1 dictionaryWithObjects:va1 forKeys:va count:1];
}

uint64_t sub_100003974(uint64_t a1, uint64_t *a2)
{
  if (!a1)
  {
    sub_1001A020C();
    return 4294963396;
  }

  if (!a2)
  {
    sub_1001A01A0();
    return 4294963396;
  }

  if (*(a1 + 184) == *a2)
  {
    return 0;
  }

  *(a1 + 184) = *a2;
  v3 = sub_100003AE8(*(a1 + 120), *a2);
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (sub_100005E34(a1))
  {
    v5 = kCFBooleanTrue;
  }

  else
  {
    v5 = kCFBooleanFalse;
  }

  if ([+[WiFiUserInteractionMonitor isInHomeScreen] sharedInstance]
  {
    v6 = kCFBooleanTrue;
  }

  else
  {
    v6 = kCFBooleanFalse;
  }

  CFDictionarySetValue(Mutable, @"IO80211IsInHomeScreen", v6);
  CFDictionarySetValue(Mutable, @"IO80211IsLatencySensitiveAppActive", v5);
  v7 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"App state params %@", Mutable}];
  }

  objc_autoreleasePoolPop(v7);
  v8 = *(a1 + 64);
  v9 = sub_100006F88(v8);
  sub_100006F94(v8, v9, 485, 0, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v3;
}

uint64_t sub_100003AE8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    result = 0;
    *(a1 + 176) = a2;
    if ((a2 & 0x11) != 0 && *(a1 + 2801))
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:"Trigger Disconnecting using Cached decision"];
      }

      objc_autoreleasePoolPop(v4);
      *(a1 + 2836) = 10;
      sub_10013D1C4(a1);
      return 0;
    }
  }

  else
  {
    sub_100142858();
    return 4294963396;
  }

  return result;
}

void sub_100003B88(CFMutableArrayRef *a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  switch(*(a2 + 8))
  {
    case 0:
      if (*(*a2 + 16))
      {
        sub_1001889E8(a1, **(a2 + 16), *(*a2 + 32), *(*a2 + 40), a5, a6, a7, a8, v191, v192, v193, v194, SWORD2(v194), SBYTE6(v194), SHIBYTE(v194), v195, v196, v197, v198, v199, v200, v201, v202, v203, v204);
        *(a2 + 24) = v32;
        v33 = sub_1000C84C8(a1);
        v34 = *(*a2 + 324);
        if (v33 != v34)
        {
          v35 = v33;
          if ((MGGetBoolAnswer() & 1) == 0 && !*(*a2 + 328) && !*(*a2 + 1408))
          {
            v36 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: device hasn't been unlocked since boot. Overriding power state to OFF.", "__WiFiManagerDeviceManagerApplier"}];
            }

            objc_autoreleasePoolPop(v36);
            v34 = 0;
          }

          v37 = objc_autoreleasePoolPush();
          v38 = off_100298C40;
          if (off_100298C40)
          {
            v39 = sub_100058B44(v35);
            v40 = sub_100058B44(*(*a2 + 324));
            [v38 WFLog:3 message:{"Device power = %s and prefences power = %s.  Setting device power to %s (unlockedSinceBoot=%d)", v39, v40, sub_100058B44(v34), *(*a2 + 1408)}];
          }

          objc_autoreleasePoolPop(v37);
          v41 = sub_10018B2A0(a1, v34);
          if (v41)
          {
            v42 = v41;
            v43 = objc_autoreleasePoolPush();
            v44 = off_100298C40;
            if (off_100298C40)
            {
              v45 = sub_100058B44(v35);
              [v44 WFLog:4 message:{"Unable to set power state (%s) to %s (err = %d). deviceManager=%p", v45, sub_100058B44(*(*a2 + 324)), v42, a1}];
            }

            v46 = v43;
            goto LABEL_73;
          }
        }
      }

      return;
    case 2:
      if (*(*a2 + 16))
      {
        sub_1000B913C(a1, *(*a2 + 32), *(*a2 + 40));
        if (sub_100076C24(*a2))
        {
          v89 = *(*a2 + 2424);
          if (v89)
          {
            goto LABEL_121;
          }
        }
      }

      return;
    case 3:
      v187 = *a2;
      if (*(*a2 + 1664) || *(v187 + 1608))
      {
        sub_10000D33C(a1, 1);
        v188 = *(*a2 + 264);
      }

      else
      {
        v188 = *(v187 + 224);
      }

      sub_1000BE388(a1, v188);
      return;
    case 4:
      v50 = *(*a2 + 216);

      sub_1000C15F8(a1, v50);
      return;
    case 5:
      v47 = sub_10018C844(a1, *(*a2 + 2744));
      goto LABEL_225;
    case 6:
      if (*(*a2 + 16) && *(*a2 + 24))
      {

        sub_1000329B4(a1);
      }

      return;
    case 7:
      v103 = *(*a2 + 1169);
      v104 = *(*a2 + 1184);
      v105 = *(*a2 + 1172);

      sub_1000C7CBC(a1, v103, v104, v105);
      return;
    case 8:
      v141 = *(a2 + 16);

      sub_1000C2850(a1, v141, 1);
      return;
    case 9:
      v111 = *a2;
      v112 = *(*a2 + 1572);
      if (v112 == -1)
      {
        v112 = *(v111 + 1560);
      }

      v113 = *(v111 + 1576);
      if (v113 == -1)
      {
        v113 = *(v111 + 1564);
      }

      v114 = *(v111 + 1580);
      if (v114 == -1)
      {
        v115 = *(v111 + 1568);
      }

      else
      {
        v115 = v114 == 1;
      }

      v190 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: current:builtInReceiver=%d, cellularTxStarted=%d, isShort=%d, overrides:builtInReceiver=%d, cellularTxStarted=%d, isShort=%d", "__WiFiManagerDeviceManagerApplier", *(*a2 + 1560), *(*a2 + 1564), *(*a2 + 1568), *(*a2 + 1572), *(*a2 + 1576), *(*a2 + 1580)}];
      }

      objc_autoreleasePoolPop(v190);

      sub_1000D20DC(a1, v112, v113, v115);
      return;
    case 0xA:
      sub_10002BB38(a1, *(*a2 + 1392), *(*a2 + 832));
      if ((*(*a2 + 1392) - 1) <= 1)
      {
        v140 = sub_10002BFA0(a1);
        if (*(v140 + 416) == 0.0)
        {
          *(v140 + 416) = sub_100058B68();
        }
      }

      return;
    case 0xB:

      sub_1000BE054(a1);
      return;
    case 0xC:
      v164 = *(*a2 + 1052);
      v165 = *(*a2 + 1048);
      v166 = *(*a2 + 1040);

      sub_1000C28EC(a1, v164, v165);
      return;
    case 0xD:
      v48 = *(*a2 + 324);
      if ((MGGetBoolAnswer() & 1) == 0 && !*(*a2 + 328) && !*(*a2 + 1408))
      {
        v49 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: device hasn't been unlocked since boot. Overriding power state to OFF.", "__WiFiManagerDeviceManagerApplier"}];
        }

        objc_autoreleasePoolPop(v49);
        v48 = 0;
      }

      sub_10018B2A0(a1, v48);
      return;
    case 0xE:
      if (*(*a2 + 16) && *(*a2 + 24))
      {
        v52 = **(a2 + 16);

        sub_1000BD310(a1, v52, "__WiFiManagerDeviceManagerApplier");
      }

      return;
    case 0xF:

      sub_1000C9A24(a1);
      return;
    case 0x10:

      sub_1000BCCD4(a1);
      return;
    case 0x11:
      v147 = *(*a2 + 32);

      sub_1000BA690(a1, v147);
      return;
    case 0x12:
      v149 = **(a2 + 16);

      sub_1000BA620(a1);
      return;
    case 0x13:

      sub_1000BCD2C(a1);
      return;
    case 0x14:
      v157 = **(a2 + 16);

      sub_10000D33C(a1, v157);
      return;
    case 0x15:
      sub_1000D2E0C(a1, *(*a2 + 2128), (*a2 + 2136), 1u, *(*a2 + 2144), 0);
      v143 = *(*a2 + 2128);
      v144 = *(*a2 + 2144);
      v145 = *(*a2 + 2120);
      v146 = (*a2 + 2136);

      sub_1000D2E0C(a1, v143, v146, 1u, v144, v145);
      return;
    case 0x16:
      v79 = *(a2 + 16);

      sub_1000BE1E0(a1, v79, 1);
      return;
    case 0x17:
      v82 = *(*a2 + 312);

      sub_1000C18D0(a1, v82);
      return;
    case 0x18:
      v148 = *(*a2 + 756);

      sub_1000C18E8(a1, v148);
      return;
    case 0x19:
      v160 = *(*a2 + 308);

      sub_1000C277C(a1, v160);
      return;
    case 0x1A:
      v51 = *(a2 + 16);

      sub_1000C180C(a1, v51);
      return;
    case 0x1B:
      v54 = *(*a2 + 792);

      sub_1000C26C0(a1, v54);
      return;
    case 0x1C:
      v80 = *(*a2 + 272);
      v81 = *(*a2 + 280);

      sub_1000C163C(a1, v80, v81);
      return;
    case 0x1D:
      v88 = *(*a2 + 316);

      sub_1000C2694(a1, v88);
      return;
    case 0x1E:
      v57 = *(*a2 + 317);
      v58 = *(*a2 + 318);
      v59 = *(*a2 + 319);

      sub_1000C26AC(a1, v57, v58, v59);
      return;
    case 0x1F:
      if (*a2)
      {
        v66 = *(*a2 + 320);

        sub_1000C2774(a1, v66);
      }

      return;
    case 0x20:
      v172 = *(*a2 + 1216);
      v173 = *(a2 + 16);

      sub_1000C5EEC(a1, v172, v173);
      return;
    case 0x21:
      v175 = *(*a2 + 1219);
      v176 = *(*a2 + 1218);
      v177 = *(*a2 + 1220);
      v178 = *(a2 + 16);

      sub_1000C60E0(a1, v175, v176, v177, v178);
      return;
    case 0x22:
      v74 = *(a2 + 16);
      v75 = *v74;
      v76 = v74[1];
      v77 = v74[2];
      v78 = *(v74 + 1);

      sub_10018A9A0(a1, v75, v76, v77, v78);
      return;
    case 0x23:
      v180 = *(*a2 + 284);

      sub_1000CEE4C(a1, v180);
      return;
    case 0x24:
      v184 = *(*a2 + 288);
      v185 = *(*a2 + 296);

      sub_10018BB6C(a1, v185);
      return;
    case 0x25:
      v189 = *(*a2 + 336);

      sub_1000C2784(a1, v189);
      return;
    case 0x26:
      v90 = sub_1000C8128(a1, *(*a2 + 1224));
      goto LABEL_334;
    case 0x27:
      v186 = *(*a2 + 1312);

      sub_1000C7BE8(a1, v186);
      return;
    case 0x28:
      v63 = *a2;
      if (*a2)
      {
        v64 = *(v63 + 776);
        v65 = *(v63 + 784);

        sub_1000C1954(a1, v64, v65);
      }

      return;
    case 0x29:
      v183 = *a2 + 1464;

      sub_1000D05F8(a1, v183);
      return;
    case 0x2A:
      v126 = *(*a2 + 1472);

      sub_1000D06A8(a1, v126);
      return;
    case 0x2B:

      sub_1000D0724(a1);
      return;
    case 0x2C:

      sub_1000D35C8(a1);
      return;
    case 0x2D:
      if (*a2)
      {
        v56 = *(*a2 + 2289);

        sub_1000C2838(a1, v56);
      }

      return;
    case 0x2F:
      v71 = sub_1000C84C8(a1);
      goto LABEL_410;
    case 0x30:
      v71 = sub_1000C7C74(a1);
      goto LABEL_410;
    case 0x31:
      v71 = sub_100029A6C(a1);
      goto LABEL_410;
    case 0x32:
      v71 = sub_1000C7FC0(a1);
      goto LABEL_410;
    case 0x33:
      v71 = sub_1000BAD74(a1);
      goto LABEL_410;
    case 0x34:
      v71 = sub_1000C71A0(a1);
      goto LABEL_410;
    case 0x35:
      v53 = (*a2 + 1224);

      sub_10018B09C(a1, v53);
      return;
    case 0x36:
      if (*a2)
      {
        v55 = *(a2 + 16);

        sub_1000D02D0(a1, v55, 1);
      }

      return;
    case 0x37:
      if (*a2)
      {
        v106 = **(a2 + 16);

        sub_1000D0548(a1, v106);
      }

      return;
    case 0x38:
      if (*a2)
      {
        v107 = *(a2 + 16);

        sub_10018BC0C(a1, v107, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, SHIDWORD(a17), a18, SWORD2(a18), SBYTE6(a18), SHIBYTE(a18), a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
      }

      return;
    case 0x39:
      v84 = *(a2 + 16);

      sub_1000CEB74(a1, v84);
      return;
    case 0x3A:
      v60 = *a2;
      if (*a2)
      {
        v61 = *(a2 + 16);
        if (*v61 == -536870144)
        {
          v62 = v60 + 498;
        }

        else
        {
          v62 = 0;
        }

        sub_10002FD14(a1, v61, v62);
      }

      return;
    case 0x3B:
      v179 = *(a2 + 16);

      sub_100003974(a1, v179);
      return;
    case 0x3C:
      v68 = *(*a2 + 1488);
      v69 = *(*a2 + 1496);

      sub_1000D15BC(a1, v68, v69);
      return;
    case 0x3D:

      sub_100024408(a1);
      return;
    case 0x3E:

      sub_100016F64(a1);
      return;
    case 0x3F:
      v71 = sub_1000C7CB0(a1);
      goto LABEL_410;
    case 0x40:
      if (*a2)
      {
        v171 = *(a2 + 16);

        sub_1000D25AC(a1, v171);
      }

      return;
    case 0x41:
      if (*a2)
      {
        v161 = *(a2 + 16);

        sub_1000D270C(a1, v161);
      }

      return;
    case 0x42:
      if (*a2)
      {
        sub_1000D321C(a1, *(a2 + 12));
        v85 = *(a2 + 16);

        sub_1000D3284(a1, v85);
      }

      return;
    case 0x43:
      if (*a2)
      {
        sub_1000D3578(a1, *(a2 + 16));
        if (*(a2 + 16))
        {
          v67 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: set policies %@", "__WiFiManagerDeviceManagerApplier", *(a2 + 16)}];
          }

          v46 = v67;
LABEL_73:

          objc_autoreleasePoolPop(v46);
        }
      }

      return;
    case 0x44:
      v93 = *(a2 + 16);

      sub_1000CF48C(a1, v93);
      return;
    case 0x45:
      v181 = *(a2 + 16);
      v182 = *a2;

      sub_1000D47B8(a1, v181, sub_10008B538, v182);
      return;
    case 0x47:
      v96 = *(a2 + 32);
      v97 = **(a2 + 16);
      v98 = **(a2 + 24);

      sub_1000D5B3C(a1, v96, v97, v98);
      return;
    case 0x4A:
      v83 = *(*a2 + 322);

      sub_10001F66C(a1, v83);
      return;
    case 0x4D:
      if (*a2)
      {
        v131 = *(a2 + 16);
        if (v131)
        {

          sub_1000C67C8(a1, v131);
        }
      }

      return;
    case 0x4E:

      sub_100033124(a1, 1);
      return;
    case 0x4F:

      sub_1000D6668(a1);
      return;
    case 0x50:
      v132 = *(a2 + 16);

      sub_100189318(a1);
      return;
    case 0x51:
      v129 = *(a2 + 16);

      sub_1000D3748(a1, v129);
      return;
    case 0x52:
      v116 = **(a2 + 16);

      sub_1000D6DE8(a1, v116);
      return;
    case 0x53:
      v90 = sub_1000D6EAC(a1);
      goto LABEL_334;
    case 0x54:
      v90 = sub_1000D6EBC(a1);
      goto LABEL_334;
    case 0x55:
      v90 = sub_1000D6ECC(a1);
      goto LABEL_334;
    case 0x57:
      v90 = sub_1000D6F28(a1);
      goto LABEL_334;
    case 0x58:
      v162 = *(a2 + 16);
      v163 = *a2;

      sub_1000D3CB8(a1, v162);
      return;
    case 0x59:
      v159 = **(a2 + 16);

      sub_1000D726C(a1, v159);
      return;
    case 0x5A:
      v87 = **(a2 + 16);

      sub_1000D767C(a1, v87);
      return;
    case 0x5B:
      v167 = **(a2 + 16);

      sub_100007600(a1, v167);
      return;
    case 0x5C:
      v174 = **(a2 + 16);

      sub_1000D7750(a1, v174);
      return;
    case 0x5E:
      v70 = *(a2 + 16);

      sub_1000191B4(a1, v70);
      return;
    case 0x5F:
      v108 = (a2 + 16);

      sub_10001797C(a1, v108);
      return;
    case 0x60:

      sub_100017A70(a1);
      return;
    case 0x61:
      v89 = *(a2 + 16);
LABEL_121:

      sub_1000D7A44(a1, v89);
      return;
    case 0x62:
      v168 = *(a2 + 16);
      v169 = *(a2 + 24);
      v170 = *(a2 + 32);

      sub_10018DE8C(a1, v169, v170);
      return;
    case 0x63:
      v139 = **(a2 + 16);

      sub_1000BFC58(a1, v139);
      return;
    case 0x64:
      v99 = *(a2 + 16);
      v100 = *(a2 + 32);

      sub_1000D8D60(a1, v99, v100);
      return;
    case 0x65:
      v72 = *(*a2 + 1320);
      v73 = *(*a2 + 1352);

      sub_1000C4458(a1, v72, v73);
      return;
    case 0x66:
      v152 = **(a2 + 16);

      sub_1000D9AEC(a1, v152);
      return;
    case 0x67:
      v127 = *(a2 + 16);

      sub_10001EE20(a1, v127);
      return;
    case 0x68:
      v109 = *(a2 + 16);
      v110 = *a2;

      sub_1000D4DA8(a1, v109, sub_10008BAA0, v110);
      return;
    case 0x69:
      v150 = *(a2 + 16);

      sub_100006344(a1, v150);
      return;
    case 0x6A:
      if (!*a2)
      {
        return;
      }

      v71 = sub_1000D34B4(a1);
      goto LABEL_410;
    case 0x6B:
      v86 = *(a2 + 16);

      sub_10001ED0C(a1, v86);
      return;
    case 0x6C:
      v92 = *(*a2 + 816) != 0;

      sub_1000DA428(a1, v92);
      return;
    case 0x6D:
      v91 = *(*a2 + 360);

      sub_1001893CC(a1, v91);
      return;
    case 0x6E:
      v95 = **(a2 + 16);

      sub_1000C16C0(a1, v95);
      return;
    case 0x6F:
      if (*a2)
      {
        v102 = *(a2 + 16);

        sub_1000DA470(a1, v102);
      }

      return;
    case 0x70:
      v138 = *(a2 + 16);

      sub_1000D3AA4(a1, v138);
      return;
    case 0x71:
      v124 = **(a2 + 16);

      sub_1000D9BAC(a1, v124);
      return;
    case 0x72:

      sub_10018ED00(a1);
      return;
    case 0x74:
      v156 = *(*a2 + 2493);

      sub_1000DA7CC(a1, v156);
      return;
    case 0x75:
      v155 = *(*a2 + 1360);

      sub_1000C455C(a1, v155);
      return;
    case 0x76:
      v94 = **(a2 + 16);

      sub_1000C48CC(a1, v94);
      return;
    case 0x77:
      v158 = *(*a2 + 1528);

      sub_1000D0AE8(a1, v158);
      return;
    case 0x78:
      v117 = **(a2 + 16);

      sub_10001A6E0(a1, v117);
      return;
    case 0x79:
      v118 = **(a2 + 16);

      sub_100007D88(a1, v118);
      return;
    case 0x7A:
      v154 = **(a2 + 16);

      sub_1000DB304(a1, v154);
      return;
    case 0x7B:
      v142 = *(*a2 + 2514);

      sub_10001D3BC(a1);
      return;
    case 0x7C:
      v133 = *(a2 + 16);

      sub_1000D120C(a1, v133);
      return;
    case 0x7D:
      v128 = *(*a2 + 768);

      sub_1000C16F4(a1, v128);
      return;
    case 0x7E:
      v151 = *(a2 + 16);

      sub_1000D0BD8(a1, v151);
      return;
    case 0x7F:
      v136 = *(a2 + 24);

      sub_1000DB3B4(a1, v136);
      return;
    case 0x80:
      v125 = *(a2 + 16);

      sub_1000DB48C(a1, v125);
      return;
    case 0x81:
      v90 = sub_1000DBA84(a1);
LABEL_334:
      v153 = v90;
      goto LABEL_412;
    case 0x82:
      v71 = sub_1000C8EBC(a1);
      goto LABEL_410;
    case 0x84:
      v101 = *(a2 + 16);

      sub_1000DCDF8(a1, v101);
      return;
    case 0x85:
      v134 = *(a2 + 16);

      sub_10018F6A8(a1, v134, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
      return;
    case 0x86:
      v71 = sub_1000DD0E4(a1);
      goto LABEL_410;
    case 0x87:
      v71 = sub_1000BB90C(a1);
      goto LABEL_410;
    case 0x88:

      sub_1001898E0();
      return;
    case 0x89:

      sub_100189A28(a1);
      return;
    case 0x8A:
      v137 = **(a2 + 16);

      sub_1000DD1B0(a1, v137);
      return;
    case 0x8B:
      v121 = **(a2 + 16);

      sub_1000DD104(a1, v121);
      return;
    case 0x8C:
      if (*a2)
      {
        v135 = *(a2 + 16);

        sub_1000C7FD0(a1, v135);
      }

      return;
    case 0x8D:
      if (*a2)
      {
        v130 = *(a2 + 16);

        sub_1000C7FF4(a1, v130);
      }

      return;
    case 0x8E:
      v71 = sub_1000DD0F4(a1);
LABEL_410:
      v120 = v71;
      goto LABEL_411;
    case 0x8F:
      v47 = sub_1000DF744(a1, **(a2 + 16));
LABEL_225:
      v120 = v47;
LABEL_411:
      v153 = *(a2 + 24) | v120;
LABEL_412:
      *(a2 + 24) = v153;
      break;
    case 0x90:
      if (+[WiFiUserInteractionMonitor sharedInstance])
      {
        if (*(*a2 + 1529) == 1 && [+[WiFiUserInteractionMonitor isCallKitActive] sharedInstance]
        {
          v119 = [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor isCellCallInProgress]^ 1;
        }

        else
        {
          v119 = 0;
        }

        sub_10018C514(a1, v119);
      }

      break;
    case 0x91:
      v122 = *(*a2 + 1504);

      sub_1000D1D68(a1, v122);
      break;
    case 0x92:
      v123 = *(*a2 + 1520);

      sub_1000D1EE0(a1, v123);
      break;
    default:
      return;
  }
}

uint64_t sub_100005E34(_BYTE *a1)
{
  if (a1[5568] || a1[3466] || a1[5570] || a1[5572])
  {
    return 1;
  }

  v4 = +[WiFiUserInteractionMonitor sharedInstance];

  return [(WiFiUserInteractionMonitor *)v4 isRealTimeAppActive];
}

void sub_100006284(uint64_t a1)
{
  if ([+[WiFiUserInteractionMonitor isInHomeScreen] sharedInstance]
  {
    v2 = *(*(*(a1 + 32) + 8) + 24);
    if (v2)
    {
      CFRelease(v2);
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }
  }

  v3 = *(a1 + 32);
  context[0] = *(a1 + 40);
  context[1] = 0xAAAAAAAA00000069;
  context[2] = *(*(v3 + 8) + 24);
  context[3] = 1;
  context[4] = 0;
  CFSetApplyFunction(*(context[0] + 112), sub_100003B88, context);
  v4 = *(*(*(a1 + 32) + 8) + 24);
  if (v4)
  {
    CFRelease(v4);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void sub_100006344(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    v4 = *(a1 + 200);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 200) = 0;
    }

    if (cf)
    {
      *(a1 + 200) = CFRetain(cf);
    }

    sub_1000063DC(*(a1 + 120));
    if (*(a1 + 441))
    {
      sub_100008CA8(a1, cf);
    }

    v5 = *(a1 + 7480);
    if (v5)
    {

      [v5 setCurrentApplicationName:cf withAttributes:0];
    }
  }

  else
  {
    sub_10019D5BC();
  }
}

void sub_1000063DC(uint64_t a1)
{
  if (a1)
  {
    sub_100008C40();
    v4 = *(v3 + 216);
    if (v4)
    {
      CFRelease(v4);
      *(v1 + 216) = 0;
    }

    if (v2)
    {
      *(v1 + 216) = CFRetain(v2);
    }
  }
}

id sub_100006424(uint64_t a1)
{
  v2 = [*(a1 + 32) overrideApplicationState];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 overrideApplicationState];
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: using overridden application state as %llu to notify captive", "-[WiFiUserInteractionMonitor _notifyCaptiveWithApplicationState]_block_invoke", objc_msgSend(*(a1 + 32), "overrideApplicationState")}];
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v4 = [v3 _applicationNotifyState];
  }

  notify_set_state(dword_100298B70, v4);
  notify_post("com.apple.airport.userNotification");
  v6 = *(a1 + 32);

  return [v6 setWifiUserNotifyPending:0];
}

void sub_100006628(uint64_t a1, CFTypeRef cf)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (a1)
  {
    if (cf)
    {
      v3 = CFRetain(cf);
      v8[3] = v3;
    }

    v4 = *(a1 + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100006284;
    block[3] = &unk_10025EFD8;
    block[4] = &v7;
    block[5] = a1;
    dispatch_async(v4, block);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null manager", "__WiFiManagerForegroundAppChangeCallback"}];
    }

    objc_autoreleasePoolPop(v5);
  }

  _Block_object_dispose(&v7, 8);
}

void sub_100006910(uint64_t a1)
{
  if (!*(a1 + 322) || *(a1 + 756) == 2)
  {
    context = a1;
    v7 = 0xAAAAAAAA00000030;
    v9 = 0;
    v10 = 0;
    v8 = 0;
    CFSetApplyFunction(*(a1 + 112), sub_100003B88, &context);
    if (v9 || sub_10007C13C(a1))
    {
      v2 = objc_autoreleasePoolPush();
      v3 = off_100298C40;
      if (off_100298C40)
      {
        context = a1;
        v7 = 0xAAAAAAAA00000030;
        v9 = 0;
        v10 = 0;
        v8 = 0;
        CFSetApplyFunction(*(a1 + 112), sub_100003B88, &context);
        if (v9)
        {
          v4 = "WoW";
        }

        else
        {
          v4 = "LPAS";
        }

        [v3 WFLog:3 message:{"%s Enabled, Skip starting Disassocation timer", v4}];
      }

      objc_autoreleasePoolPop(v2);
    }

    else if (!*(a1 + 920))
    {
      v5 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"Starting Disassociation Timer"];
      }

      objc_autoreleasePoolPop(v5);
      sub_10007D1E4(a1, 1, *(a1 + 896));
      *(a1 + 920) = 2;
    }
  }
}

void sub_100006A6C(uint64_t a1)
{
  v2 = *(a1 + 920);
  if (v2 == 3)
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"Disassociation timer already fired, so not pausing"}];
    }

    objc_autoreleasePoolPop(v5);

    sub_10000D4C0(a1, 1);
  }

  else if (v2 == 2)
  {
    *(a1 + 920) = 1;
    v3 = *(a1 + 912);
    *(a1 + 904) = v3 - CFAbsoluteTimeGetCurrent();
    sub_10007D1E4(a1, 0, 315360000.0);
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"Pausing disassociation timer with remaing interval of %f s", *(a1 + 904)}];
    }

    objc_autoreleasePoolPop(v4);
  }
}

uint64_t sub_100006D8C(const __CFString *a1)
{
  *buffer = 0;
  v10 = 0;
  if (!a1)
  {
    return 0;
  }

  CFStringGetCString(a1, buffer, 16, 0);
  if (!buffer[0])
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s, interfaceCName is zero length.", "WiFiIsInterfaceExpensive"}];
    }

    goto LABEL_16;
  }

  v1 = socket(2, 2, 0);
  if (v1 == -1)
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: socket creation failed", "WiFiIsInterfaceExpensive"}];
    }

LABEL_16:
    objc_autoreleasePoolPop(v8);
    return 0;
  }

  v2 = v1;
  v11 = 0u;
  v12 = 0u;
  __strlcpy_chk();
  if (ioctl(v2, 0xC02069A0uLL, &v11) == -1 && *__error() != 1)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = off_100298C40;
    if (off_100298C40)
    {
      v7 = __error();
      [v6 WFLog:4 message:{"%s: ioctl(SIOCGIFEXPENSIVE) failed: %s", buffer, strerror(*v7)}];
    }

    objc_autoreleasePoolPop(v5);
    v3 = 0;
  }

  else
  {
    v3 = v12;
  }

  close(v2);
  return v3;
}

uint64_t sub_100006F40()
{
  result = qword_100298B20;
  if (!qword_100298B20)
  {
    pthread_once(&stru_100297D70, sub_10010E31C);
    return qword_100298B20;
  }

  return result;
}

uint64_t sub_100006F88(uint64_t result)
{
  if (result)
  {
    return *(result + 112);
  }

  return result;
}

uint64_t sub_100006F94(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100007060(a1, a2);
  if (!v10)
  {
    sub_1001521B0(a2);
    return 0;
  }

  v11 = v10;
  v12 = CFGetTypeID(v10);
  if (v12 == sub_100006F40())
  {
    sub_100111138(v11, a3, a4, a5);
    return 0;
  }

  for (i = 6; ; --i)
  {
    v15 = *(a1 + 16);
    result = Apple80211Set();
    if (result != -3905 && result != 61 && result != 16)
    {
      break;
    }

    if (!i)
    {
      break;
    }

    usleep(0x7A120u);
  }

  return result;
}

const void *sub_100007060(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    sub_100152A24();
    return 0;
  }

  if (!a2)
  {
    sub_1001529B8();
    return 0;
  }

  v2 = *(a1 + 5112);
  if (!v2)
  {
    sub_1000216B4();
    return 0;
  }

  return CFDictionaryGetValue(v2, a2);
}

CFMutableStringRef sub_1000070B4(uint64_t a1)
{
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  if (Mutable)
  {
    CFSetApplyFunction(*(a1 + 152), sub_100007110, Mutable);
  }

  return Mutable;
}

void sub_100007110(uint64_t a1, __CFString *a2)
{
  v3 = sub_10000715C(a1);
  CFStringAppend(a2, v3);

  CFStringAppend(a2, @" ");
}

uint64_t sub_10000715C(uint64_t result)
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

CFMutableStringRef sub_100007168(uint64_t a1)
{
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  if (Mutable)
  {
    CFSetApplyFunction(*(a1 + 176), sub_10007D5C0, Mutable);
  }

  return Mutable;
}

id sub_100007588@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  if (a6)
  {
    v8 = v6;
  }

  else
  {
    v8 = a1;
  }

  return sub_10010E234(v8);
}

void *sub_1000075BC()
{

  return malloc_type_malloc(0x28uLL, 0x10E0040573E0799uLL);
}

id sub_1000075E0(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);

  return [v2 countByEnumeratingWithState:va objects:va1 count:16];
}

void sub_100007600(uint64_t a1, int a2)
{
  if (!a1)
  {
    sub_1001A2214();
    return;
  }

  if (!*(a1 + 6884))
  {
    sub_1001A21A8();
    return;
  }

  *(a1 + 6880) = a2;
  if (a2)
  {
    *(a1 + 7032) = 0;
    if (_os_feature_enabled_impl())
    {
      v3 = sub_100006F88(*(a1 + 64));
      v4 = sub_100007D90(a1, v3, 1);
      if (!v4)
      {
        if (sub_10000A604(*(a1 + 3560)))
        {
          v5 = sub_10000A540(*(a1 + 3560), @"WiFiInstantHotspotJoining") == kCFBooleanTrue;
          v6 = sub_10000A540(*(a1 + 3560), @"WiFiAutoInstantHotspotJoining") == kCFBooleanTrue;
        }

        else
        {
          v6 = 0;
          v5 = 0;
        }

        if (_os_feature_enabled_impl() && (v6 || v5))
        {
          v7 = sub_10001A904(a1);
          v8 = [WiFiLocationManager isLocationValid:v7 uptoSeconds:1 isHighAccuracy:900.0];
          v9 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: isLocValid %d", "WiFiDeviceManagerStartAutoInstantHotspotAssociation", v8}];
          }

          objc_autoreleasePoolPop(v9);
          if (!v8 || (v10 = *(a1 + 3528)) == 0 || ([v10 distanceFromLocation:v7], v11 <= 300.0))
          {
            v12 = sub_10000A540(*(a1 + 3560), @"lastDisconnectReasonKey");
            v13 = sub_10000A540(*(a1 + 3560), @"lastDisconnectTimestampKey");
            if (v12)
            {
              v14 = v13;
              if (v13)
              {
                valuePtr = 0;
                CFNumberGetValue(v12, kCFNumberIntType, &valuePtr);
                if (valuePtr == 1034)
                {
                  Current = CFAbsoluteTimeGetCurrent();
                  AbsoluteTime = CFDateGetAbsoluteTime(v14);
                  LODWORD(v17) = *(a1 + 5452);
                  if (Current - AbsoluteTime <= v17)
                  {
                    v20 = objc_autoreleasePoolPush();
                    v21 = off_100298C40;
                    if (off_100298C40)
                    {
                      v22 = CFAbsoluteTimeGetCurrent();
                      [v21 WFLog:3 message:{"%s: Prefer joining back voluntarily disconnected PH, time since link down %.1f seconds", "WiFiDeviceManagerStartAutoInstantHotspotAssociation", v22 - CFDateGetAbsoluteTime(v14)}];
                    }

                    objc_autoreleasePoolPop(v20);

                    sub_10014EF78(*(a1 + 64));
                    v18 = a1;
                    v19 = 66;
                    goto LABEL_25;
                  }
                }
              }
            }
          }
        }

        v18 = a1;
        v19 = 61;
LABEL_25:
        sub_100019814(v18, v19);
        return;
      }

      CFRelease(v4);
    }

    else
    {

      sub_1000D73A0(a1, 1);
    }
  }
}

const void *sub_1000078F4(uint64_t a1, uint64_t a2)
{
  theDict = 0;
  if (!a1)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = sub_10001D1AC();
    if (v11)
    {
      [v11 WFLog:4 message:{"nil device", v60, v61}];
    }

    goto LABEL_10;
  }

  v2 = a1;
  v4 = *(a1 + 64);
  if (v4)
  {
    dispatch_assert_queue_V2(v4);
  }

  v5 = sub_1000086AC();
  v7 = sub_100007060(v5, v6);
  if (!v7)
  {
    v58 = objc_autoreleasePoolPush();
    v59 = sub_10001D1AC();
    if (v59)
    {
      [v59 WFLog:4 message:{"Unknown interface %@", a2, v61}];
    }

    goto LABEL_10;
  }

  v8 = v7;
  v9 = CFGetTypeID(v7);
  if (v9 == sub_100006F40())
  {
    if (sub_10010F768(v8, &theDict))
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (*(v2 + 5232))
  {
    v14 = *(v2 + 5240);
    v15 = v14 == 0.0 || Current <= v14;
    if (!v15 && Current - v14 < 1.0)
    {
      v25 = *(v2 + 5248);
      if (v25)
      {
        v26 = kCFAllocatorDefault;
        Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, v25);
        theDict = Copy;
        goto LABEL_38;
      }

      theDict = 0;
      v50 = objc_autoreleasePoolPush();
      v51 = sub_10001D1AC();
      if (v51)
      {
        [v51 WFLog:4 message:{"%s: Cached current network is NULL on interface %@", "WiFiDeviceCopyCurrentNetwork", a2}];
      }

LABEL_10:
      objc_autoreleasePoolPop(v2);
LABEL_11:
      v12 = 0;
      goto LABEL_79;
    }
  }

  for (i = 6; ; --i)
  {
    v18 = *(v2 + 16);
    v19 = Apple80211CopyCurrentNetwork();
    v20 = v19;
    if (v19 != -3905 && v19 != 61 && v19 != 16)
    {
      break;
    }

    if (!i)
    {
      break;
    }

    sub_10000390C();
  }

  v22 = *(v2 + 5248);
  if (v22)
  {
    CFRelease(v22);
    *(v2 + 5248) = 0;
  }

  if (theDict)
  {
    v23 = CFDictionaryCreateCopy(kCFAllocatorDefault, theDict);
    v24 = Current;
  }

  else
  {
    v23 = 0;
    v24 = 0.0;
  }

  *(v2 + 5248) = v23;
  *(v2 + 5240) = v24;
  if (v20)
  {
    goto LABEL_11;
  }

LABEL_37:
  v26 = kCFAllocatorDefault;
  Copy = theDict;
LABEL_38:
  v28 = sub_10000AD2C(v26, Copy);
  v12 = v28;
  if (v28)
  {
    v29 = &kCFBooleanTrue;
    if (*(v2 + 5264))
    {
      v29 = &kCFBooleanFalse;
    }

    sub_10000AD34(v28, @"WiFiNetworkIsAutoJoined", *v29);
    if (sub_10000AFE4(v12) && !sub_1000A1260(v12))
    {
      v30 = objc_autoreleasePoolPush();
      v31 = off_100298C40;
      if (off_100298C40)
      {
        v32 = sub_10000A878(v12);
        v33 = sub_10000A878(*(v2 + 5160));
        v34 = sub_1000A1260(*(v2 + 5160));
        v35 = "present";
        if (!v34)
        {
          v35 = "not present";
        }

        [v31 WFLog:3 message:{"%s: attempting to match current HS2.0 network %@ with last attempted network %@, GAS response is %s", "WiFiDeviceCopyCurrentNetwork", v32, v33, v35}];
      }

      objc_autoreleasePoolPop(v30);
      v36 = *(v2 + 5160);
      if (v36 && CFEqual(v36, v12) && sub_1000A1260(*(v2 + 5160)))
      {
        sub_1000A1260(*(v2 + 5160));
        v37 = sub_100015EB8();
LABEL_68:
        sub_1000A127C(v37, v38);
      }

      else
      {
        v39 = *(v2 + 5080);
        if (v39)
        {
          v40 = 0;
          while (v40 < CFArrayGetCount(v39))
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 5080), v40);
            if (ValueAtIndex)
            {
              v42 = sub_10009A8E0(ValueAtIndex);
              if (v42)
              {
                v43 = v42;
                if (CFArrayGetCount(v42) >= 1)
                {
                  v44 = 0;
                  while (1)
                  {
                    v45 = CFArrayGetValueAtIndex(v43, v44);
                    if (v45)
                    {
                      v46 = v45;
                      Value = CFDictionaryGetValue(v45, @"BSSID");
                      if (Value)
                      {
                        v48 = Value;
                        if (sub_100013F70(v12))
                        {
                          v49 = sub_100013F70(v12);
                          if (CFStringCompare(v48, v49, 1uLL) == kCFCompareEqualTo)
                          {
                            break;
                          }
                        }
                      }
                    }

                    if (++v44 >= CFArrayGetCount(v43))
                    {
                      goto LABEL_63;
                    }
                  }

                  v37 = v12;
                  v38 = v46;
                  goto LABEL_68;
                }
              }
            }

LABEL_63:
            ++v40;
            v39 = *(v2 + 5080);
            if (!v39)
            {
              break;
            }
          }
        }
      }
    }

    if (!*(v2 + 5144))
    {
      v52 = sub_1000086AC();
      sub_100060D70(v52, v53, 1);
    }

    if (!*(v2 + 5152))
    {
      v54 = sub_1000086AC();
      sub_100060E18(v54, v55);
      v56 = *(v2 + 5160);
      if (v56)
      {
        CFRelease(v56);
        *(v2 + 5160) = 0;
      }

      *(v2 + 5160) = sub_10000C580(v26, v12);
    }

    sub_10000AD34(v12, @"WiFiNetworkRouterMac", *(v2 + 3600));
    sub_10000AD34(v12, @"WiFiNetworkRouterIP", *(v2 + 3608));
    if (*(v2 + 264))
    {
      sub_10000AD34(v12, @"SNR", [NSNumber numberWithUnsignedInt:*(v2 + 272)]);
    }

    if (*(v2 + 299))
    {
      sub_10000AD34(v12, @"CCA", [NSNumber numberWithUnsignedInt:*(v2 + 300)]);
    }
  }

LABEL_79:
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v12;
}

void *sub_100007D90(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_1000078F4(*(a1 + 64), a2);
  if (v6)
  {
    v7 = v6;
    v8 = sub_10000B3A8(a1, v6, 1);
    if (v8)
    {
      v9 = v8;
      if (sub_10000AFE4(v7))
      {
        v10 = sub_10000A878(v7);
        v11 = sub_10000A878(v9);
        if (v10)
        {
          v12 = v11;
          if (v11)
          {
            if (!CFEqual(v10, v11))
            {
              v13 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: updating known SSID %@ to connected SSID %@", "__WiFiDeviceManagerCopyCurrentNetwork", v12, v10}];
              }

              objc_autoreleasePoolPop(v13);
              sub_10000AD34(v9, @"SSID_STR", v10);
              ExternalRepresentation = CFStringCreateExternalRepresentation(kCFAllocatorDefault, v10, 0x8000100u, 0);
              if (ExternalRepresentation)
              {
                v15 = ExternalRepresentation;
                sub_10000AD34(v9, @"SSID", ExternalRepresentation);
                CFRelease(v15);
              }
            }
          }
        }
      }
    }

    else
    {
      v9 = CFRetain(v7);
      if (!v9)
      {
        [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
        [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
        v9 = 0;
LABEL_44:
        CFRelease(v7);
        return v9;
      }
    }

    v16 = sub_1000097F8(a1, v9, 0);
    sub_10000C614(v9, @"DiagnosticsBssEnv", v16);
    sub_10000C684(*(a1 + 64), v9);
    if (!sub_10000A154(*(a1 + 6872)))
    {
      v28 = sub_10000AA64(*(a1 + 3752), v9);
      if (!v28)
      {
        v39 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"WFMacRandomisation : Network <%@> not present in Private MAC Cache", sub_10000A878(v9)}];
        }

        objc_autoreleasePoolPop(v39);
        goto LABEL_14;
      }

      v29 = v28;
      v30 = sub_10000A540(v28, @"PRIVATE_MAC_ADDRESS");
      if (v30)
      {
        v31 = v30;
        TypeID = CFDictionaryGetTypeID();
        if (TypeID == CFGetTypeID(v31))
        {
          sub_10000AD34(v9, @"PRIVATE_MAC_ADDRESS", v31);
          Value = CFDictionaryGetValue(v31, @"PRIVATE_MAC_ADDRESS_VALUE");
          if (!sub_10000ABFC(Value))
          {
            if (!sub_10000C894(v9))
            {
              Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
              sub_10000A1A4(v29, Mutable);
              sub_10000AD34(v9, @"PrivateMacInfoDictionary", Mutable);
              if (Mutable)
              {
                CFRelease(Mutable);
              }
            }

            goto LABEL_14;
          }

          sub_10000AD34(v9, @"PrivateMacInfoDictionary", 0);
          v34 = sub_10000A540(v29, @"FailureThresholdMet");
          if (v34 && (v35 = v34, v34 == kCFBooleanTrue))
          {
            if (sub_10000C894(v9))
            {
              goto LABEL_14;
            }

            v36 = v9;
            v37 = v35;
          }

          else
          {
            v36 = v9;
            v37 = 0;
          }

          sub_10000AD34(v36, @"FailureThresholdMet", v37);
        }
      }
    }

LABEL_14:
    v17 = sub_10000A878(v9);
    if (v17 && (v18 = v17, (v19 = *(a1 + 3768)) != 0) && ([v19 containsObject:v18] & 1) != 0)
    {
      v20 = &kCFBooleanTrue;
    }

    else
    {
      v20 = &kCFBooleanFalse;
    }

    sub_10000AD34(v9, @"AmbiguousSSIDs", *v20);
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
    v21 = sub_10000A540(v9, @"WPA_IE");
    v22 = sub_10000A540(v7, @"WPA_IE");
    v23 = sub_10000A540(v9, @"RSN_IE");
    v24 = sub_10000A540(v7, @"RSN_IE");
    v25 = v24;
    if (a3 && v23 && v21 && v24 && !v22)
    {
      sub_10000AD34(v9, @"WPA_IE", 0);
    }

    v26 = sub_10000C580(kCFAllocatorDefault, v9);
    if (v26)
    {
      v27 = v26;
      if (sub_10000A7CC(v7))
      {
        sub_10000AD34(v27, @"CARPLAY_NETWORK", kCFBooleanTrue);
      }

      if (v23 && v21 && v25 && !v22)
      {
        sub_10000AD34(v27, @"WPA_IE", 0);
      }

      [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
      CFRelease(v27);
    }

    else
    {
      [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
    }

    goto LABEL_44;
  }

  [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
  [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
  return 0;
}

void *sub_1000082B0()
{

  return objc_autoreleasePoolPush();
}

id sub_1000082C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);

  return [v8 countByEnumeratingWithState:va objects:va1 count:16];
}

id sub_1000082E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{

  return [v20 countByEnumeratingWithState:&a9 objects:&a20 count:16];
}

id sub_100008308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return [v14 countByEnumeratingWithState:va objects:v15 - 224 count:16];
}

id sub_100008328()
{

  return [v0 WFLog:4 message:?];
}

id sub_100008378(uint64_t a1)
{

  return [v1 addFieldForKey:v2 value:a1 options:1];
}

void sub_100008410(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, &a9, 0xCu);
}

uint64_t sub_10000843C(uint64_t *a1, void ***a2)
{
  result = *a1;
  *a2 = _NSConcreteStackBlock;
  return result;
}

void sub_1000084DC(uint64_t a1)
{
  v2 = _os_feature_enabled_impl();
  if (a1 && v2)
  {
    v8 = 1;
    if (*(a1 + 1608))
    {
      v3 = 5;
    }

    else if (*(a1 + 322))
    {
      v3 = 2;
    }

    else if ([+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor isCellularDataDisabledByUser]|| [+[WiFiUserInteractionMonitor isCellularDataAttachedAndActive]|| *(a1 + 832) || !*(a1 + 816) sharedInstance]
    {
      if (![+[WiFiUserInteractionMonitor isAVConferenceActive] sharedInstance]
      {
        if (!*(a1 + 816))
        {
          if (!*(a1 + 832))
          {
            goto LABEL_15;
          }

          v3 = 7;
          goto LABEL_14;
        }

        if (![+[WiFiUserInteractionMonitor isNetworkingAppInForeground] sharedInstance]
        {
LABEL_15:
          v7[0] = a1;
          v7[1] = 0xAAAAAAAA00000079;
          sub_1000084CC();
          v4 = *(a1 + 112);
          sub_1000083DC();
          CFSetApplyFunction(v5, v6, v7);
          return;
        }
      }

      v3 = 6;
    }

    else
    {
      v3 = 11;
    }

LABEL_14:
    v8 = v3;
    goto LABEL_15;
  }
}

id sub_1000085EC(uint64_t *a1)
{
  v2 = a1[1125];
  if (v2 != 5)
  {
    v3 = sub_100006F88(a1[8]);
    v4 = sub_100007D90(a1, v3, 1);
    if (v4)
    {
      v5 = v4;
      if (sub_10000A604(v4))
      {
        v2 = 4;
      }

      else if (sub_10000D9C8(v5))
      {
        v2 = 4;
      }

      else
      {
        v2 = 3;
      }

      CFRelease(v5);
    }
  }

  v6 = a1[1117];

  return [v6 setRetrySchedule:v2];
}

CFDataRef sub_1000086DC(const __CFAllocator *a1, const __CFString *a2)
{

  return CFStringCreateExternalRepresentation(a1, a2, 0x8000100u, 0);
}

void sub_100008A94(CFDictionaryRef *a1, char *a2)
{
  CFDictionaryGetValue(*a1, @"IE");
  sub_100008BE0();
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = v3;
  v5 = CFGetTypeID(v3);
  if (v5 != CFDataGetTypeID())
  {
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: bad ieList type %ld", "__WiFiNetworkIsAppleDevice", CFGetTypeID(v4)}];
    }

    objc_autoreleasePoolPop(v10);
    goto LABEL_14;
  }

  if (!CFDataGetBytePtr(v4) || (v6 = sub_10000DACC(), CFDataGetLength(v6) < 1))
  {
LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  while (1)
  {
    sub_100008C80();
    if (v7)
    {
      if (*(v5 + 1) == 10 && !bcmp((v5 + 2), v12, 7uLL))
      {
        break;
      }
    }

    sub_10000DB40();
    if (v8 == v9)
    {
      goto LABEL_14;
    }
  }

  v11 = 1;
LABEL_15:
  *a2 = v11;
}

void sub_100008BBC(uint64_t a1, const void *a2)
{

  CFDictionarySetValue(v2, a2, v3);
}

uint64_t sub_100008BF8()
{

  return kdebug_trace();
}

CFNumberRef sub_100008C4C(uint64_t a1, uint64_t a2, const void *a3)
{

  return CFNumberCreate(v3, kCFNumberSInt32Type, a3);
}

void sub_100008CA8(uint64_t a1, CFTypeRef cf)
{
  if (*(a1 + 441))
  {
    v4 = *(a1 + 456);
    v5 = v4 == cf;
    if (v4 == cf || cf == 0 || v4 == 0)
    {
      if (!cf)
      {
        if (!v4)
        {
LABEL_13:
          if (cf)
          {
            *(a1 + 456) = cf;
          }

          if (!v5)
          {

            sub_100008DCC(a1, 1);
          }

          return;
        }

LABEL_12:
        CFRelease(v4);
        *(a1 + 456) = 0;
        goto LABEL_13;
      }
    }

    else
    {
      v5 = CFEqual(cf, v4) != 0;
    }

    cf = CFRetain(cf);
    v4 = *(a1 + 456);
    if (!v4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: CATS Update Invalid arguments\n", "WifiDeviceManagerCatsSetFgAppBundleId"}];
  }

  objc_autoreleasePoolPop(v8);
}

void sub_100008DCC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 432);
  v5 = objc_autoreleasePoolPush();
  if (v4)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s(): CATS Update %@: Enter deviceManager:%p  source:%d enable:%d appPolicy:%d bitmap:0x%llx\n", "WifiDeviceManagerCatsUpdateEvent", sub_1000095E0(a1), a1, a2, *(a1 + 441), *(a1 + 443), *(a1 + 448)}];
    }

    objc_autoreleasePoolPop(v5);
    if (*(a1 + 441))
    {
      v6 = *(a1 + 432);
      v7 = *(a1 + 443);
      v8 = *(a1 + 448);
      v9 = *(a1 + 442);
      if (a2 == 8)
      {
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v52 = 0xAAAAAAAAAAAAAAAALL;
        v53 = -86;
        goto LABEL_36;
      }

      v50 = *(a1 + 442) != 0;
      v13 = *(a1 + 448);
      v14 = sub_100005E34(a1);
      v15 = 0xAAAAAAAAAAAAAAAALL;
      if (v14)
      {
        v16 = v7;
        v17 = sub_1000F4F10(a1);
        v10 = v17;
        if (v9)
        {
          v18 = 0;
        }

        else
        {
          v18 = -86;
        }

        if (v9)
        {
          v15 = v17;
        }

        v52 = v15;
        v53 = v18;
      }

      else
      {
        v16 = v7;
        v10 = 0;
        v52 = 0xAAAAAAAAAAAAAAAALL;
        v53 = -86;
      }

      v19 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: CATSUpdate %@: fgApp:%@ b=0x%llx rc=%d\n", "WiFiDeviceManagerCatsSetLowLatencyApp", sub_1000095E0(a1), *(a1 + 456), v10, v14}];
      }

      objc_autoreleasePoolPop(v19);
      if (v14)
      {
        v11 = 0;
        v12 = 2;
      }

      else
      {
        v20 = [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor isNetworkingAppInForeground];
        if (v20 && v9 != 0)
        {
          v21 = 1;
        }

        else
        {
          v21 = v53;
        }

        v22 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: CATSUpdate %@: fgApp:%@ hs=%d t=%d rc=%d\n", "WiFiDeviceManagerCatsSetForegroundApp", sub_1000095E0(a1), *(a1 + 456), v20 ^ 1, 1, v20}];
        }

        objc_autoreleasePoolPop(v22);
        if (v20)
        {
          v10 = 0;
          v12 = 1;
          v53 = v21;
          v7 = v16;
          v8 = v13;
          v11 = v50;
          goto LABEL_36;
        }

        v10 = 0;
        v11 = 0;
        v12 = 0;
        if (v9)
        {
          v23 = 2;
        }

        else
        {
          v23 = v53;
        }

        v53 = v23;
      }

      v7 = v16;
      v8 = v13;
LABEL_36:
      v24 = v7 == v12 && v8 == v10;
      v25 = !v24;
      v54 = v25;
      if (v24)
      {
LABEL_74:
        if (v9)
        {
          if (a2 >= 9u)
          {
            v39 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"%s: CATS Stats invalid AppPolicy(%d) or Notify source (%d)\n", "WifiDeviceManagerCatsUpdateStats", v12, a2}];
            }

            goto LABEL_92;
          }

          v40 = *(a1 + 652);
          *(a1 + 652) = v40 + 1;
          if (v54)
          {
            ++*(a1 + 544);
            ++*(a1 + 4 * v12 + 548);
            ++*(a1 + 564);
            v41 = (a1 + 4 * (a2 & 0xF) + 568);
          }

          else
          {
            v41 = (a1 + 656);
          }

          ++*v41;
          if (v12 == 1)
          {
            if (v53 == 1)
            {
              *(a1 + 652) = v40 + 2;
              if (v11)
              {
                ++*(a1 + 612);
              }

              goto LABEL_93;
            }

            v39 = objc_autoreleasePoolPush();
            v42 = off_100298C40;
            if (!off_100298C40)
            {
              goto LABEL_92;
            }

            v43 = "WifiDeviceManagerCatsFgAppActivityStats";
            v44 = v53;
            goto LABEL_91;
          }

          if (v12 == 2)
          {
            if (!v53)
            {
              ++*(a1 + 620);
              if ((*v52 & 2) != 0)
              {
                ++*(a1 + 628);
              }

              else if ((*v52 & 4) != 0)
              {
                ++*(a1 + 632);
              }

              else if (v52[1])
              {
                ++*(a1 + 640);
              }

              else if (v52[4])
              {
                ++*(a1 + 644);
              }

              else if (*v52 & 0x10) != 0 || (v52[2])
              {
                ++*(a1 + 636);
              }

              else
              {
                ++*(a1 + 624);
              }

              goto LABEL_93;
            }

            v39 = objc_autoreleasePoolPush();
            v42 = off_100298C40;
            if (!off_100298C40)
            {
              goto LABEL_92;
            }

            v43 = "WifiDeviceManagerCatsLowLatencyEventStats";
            v44 = v53;
LABEL_91:
            [v42 WFLog:4 message:{"%s: CATS Stats Invalid Report type (%d)  \n", v43, v44, v47}];
LABEL_92:
            objc_autoreleasePoolPop(v39);
          }
        }

LABEL_93:
        v45 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: CATSUpdate %@: Exit deviceManager=%p Source:%d stateChange:%d (P:%d-->%d B:0x%llx-->0x%llx)\n", "WifiDeviceManagerCatsUpdateEvent", sub_1000095E0(a1), a1, a2, v54, v7, v12, v8, v10}];
        }

        objc_autoreleasePoolPop(v45);
        return;
      }

      if (v6)
      {
        if (*(a1 + 464) < 4u)
        {
          v51 = v11;
          valuePtr = v12;
          v55 = v10;
          Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (Mutable)
          {
            v28 = Mutable;
            v48 = v7;
            value = CFNumberCreate(kCFAllocatorDefault, kCFNumberCharType, &valuePtr);
            if (value)
            {
              v29 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &v55);
              if (v29)
              {
                v30 = v29;
                CFDictionarySetValue(v28, @"CATS_APP_PRIORITY", value);
                CFDictionarySetValue(v28, @"CATS_APP_BITMAP", v30);
                if (*(a1 + 664))
                {
                  v31 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    v32 = v31;
                    [off_100298C40 WFLog:3 message:{"%s:  Saving CATS Dict(%p)", "WifiDeviceManagerCatsCreateDictionary", *(a1 + 664)}];
                    v31 = v32;
                  }

                  objc_autoreleasePoolPop(v31);
                  [*(a1 + 664) setObject:v28 forKey:@"WiFiCatsDict"];
                }

                v33 = v8;
                CFRelease(value);
                CFRelease(v30);
                v34 = *(a1 + 464);
                if (*(a1 + 464))
                {
                  v35 = 0;
                  v36 = (a1 + 488);
                  do
                  {
                    if (*v36)
                    {
                      (*v36)(v6, a1, v28, *(v36 - 2));
                      v34 = *(a1 + 464);
                    }

                    ++v35;
                    v36 += 3;
                  }

                  while (v35 < v34);
                }

                CFRelease(v28);
                v7 = v48;
                v8 = v33;
                v11 = v51;
                goto LABEL_73;
              }

              CFRelease(v28);
              CFRelease(value);
              v38 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:4 message:{"%s:CATSUpdate deviceManager:0x%p CATSUpdate not allocate app bitmap CATS dictionary entry", "WifiDeviceManagerCatsCreateDictionary", a1}];
              }
            }

            else
            {
              CFRelease(v28);
              v38 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:4 message:{"%s:CATSUpdate deviceManager:0x%p CATSUpdate not allocate app policy CATS dictionary entry", "WifiDeviceManagerCatsCreateDictionary", a1}];
              }
            }

            objc_autoreleasePoolPop(v38);
          }

          else
          {
            v37 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:4 message:{"%s:CATSUpdate deviceManager:0x%p CATSUpdate not allocate CATS dictionary", "WifiDeviceManagerCatsCreateDictionary", a1}];
            }

            objc_autoreleasePoolPop(v37);
          }

          v11 = v51;
          v26 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s:CATSUpdate deviceManager:%p CATS Update not allocate CATS dictionary", "WifiDeviceManagerCatsUpdateClients", a1, v47}];
          }
        }

        else
        {
          v26 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s: CATS Update Clients: Num Clients(%d) > Max Clients(%d)", "WifiDeviceManagerCatsUpdateClients", *(a1 + 464), 3}];
          }
        }
      }

      else
      {
        v26 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: CATS Update Clients: Invalid arguments", "WifiDeviceManagerCatsUpdateClients", v46, v47}];
        }
      }

      objc_autoreleasePoolPop(v26);
LABEL_73:
      *(a1 + 443) = v12;
      *(a1 + 448) = v10;
      goto LABEL_74;
    }
  }

  else
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: CATS %@: Update Invalid deviceManager args device=%p deviceManager:%p WifiManager:%p Enab:%d\n", "WifiDeviceManagerCatsUpdateEvent", sub_1000095E0(a1), *(a1 + 64), a1, *(a1 + 432), *(a1 + 441)}];
    }

    objc_autoreleasePoolPop(v5);
  }
}

uint64_t sub_1000095E0(uint64_t a1)
{
  if (!a1)
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: CATSUpdate Invalid arguments", "WifiDeviceManagerCatsIfname"}];
    }

    objc_autoreleasePoolPop(v4);
    return 0;
  }

  v2 = *(a1 + 64);
  if (!v2)
  {
    return 0;
  }

  return sub_100009664(v2);
}

BOOL sub_10000966C(uint64_t a1)
{
  if (sub_10000A540(a1, @"DomainName"))
  {
    return 0;
  }

  if (sub_10000A540(a1, @"IsHotspot") == kCFBooleanTrue || &_CNForgetSSID && CFDictionaryGetValue(*(a1 + 16), kCNSCaptiveNetworkProperty) == kCFBooleanTrue || sub_10000D8DC(a1, 18) || sub_10000D8DC(a1, 23))
  {
    return 1;
  }

  return sub_10000DA34(a1) != 0;
}

BOOL sub_100009730(uint64_t a1)
{
  if (!a1 || sub_10000D970(a1))
  {
    return 0;
  }

  v3 = *(a1 + 16);

  return sub_10000C430(v3);
}

const __CFDictionary *sub_100009780(const __CFDictionary *a1)
{
  result = CFDictionaryGetValue(a1, @"RSN_IE");
  if (result)
  {
    result = sub_10000BCB8(result, 18);
    if (result)
    {
      Value = CFDictionaryGetValue(a1, @"SCAN_RESULT_OWE_MULTI_SSID");
      if (sub_10001CD48(Value))
      {
        return 0;
      }

      else
      {
        v4 = CFDictionaryGetValue(a1, @"ALLOW_OWE_TSN");
        return (sub_10001CD48(v4) == 0);
      }
    }
  }

  return result;
}

uint64_t sub_1000097F8(uint64_t a1, const void *a2, _DWORD *a3)
{
  Current = CFAbsoluteTimeGetCurrent();
  v7 = CFDateCreate(kCFAllocatorDefault, Current);
  v8 = 0;
  v9 = 1;
  if (!a1 || !a2)
  {
    goto LABEL_155;
  }

  if (sub_10000A7CC(a2))
  {
    if (sub_1000A14BC(a2) && (*(a1 + 1108) & 0x10) != 0)
    {
      v15 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: CarPlay connected to 2.4Ghz while the preferred band was 5Ghz.\n", "__WiFiDeviceManagerEvaluateAPEnvironment"}];
      }

      objc_autoreleasePoolPop(v15);
      v8 = 0;
      v9 = 3;
      if (!v7)
      {
        goto LABEL_157;
      }
    }

    else
    {
      v8 = 0;
      v9 = 2;
      if (!v7)
      {
        goto LABEL_157;
      }
    }

    goto LABEL_156;
  }

  v10 = sub_10000A878(a2);
  if (*(a1 + 3836))
  {
    v11 = v10;
    v12 = CFStringCreateWithBytes(kCFAllocatorDefault, (a1 + 3837), *(a1 + 3869), 0x8000100u, 0);
    v13 = v12;
    if (v12)
    {
      v14 = v11 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      v70 = 0;
      if (!v12)
      {
        goto LABEL_27;
      }
    }

    else if (CFStringCompare(v11, v12, 0))
    {
      v16 = a3;
      v17 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"WiFiRoam : using bssList. Network from scan results : [%@] and network ssid : [%@]", v13, v11}];
      }

      objc_autoreleasePoolPop(v17);
      v70 = 0;
      a3 = v16;
    }

    else
    {
      v70 = 1;
    }

    CFRelease(v13);
  }

  else
  {
    v70 = 0;
  }

LABEL_27:
  if (!*(a1 + 264) || !*(a1 + 276))
  {
    v8 = sub_10000B3A8(a1, a2, 1);
    if (*(a1 + 264))
    {
      v63 = *(a1 + 268);
      v19 = *(a1 + 272);
      if (v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = 2592000;
      }

      v64 = v20;
    }

    else
    {
      v64 = 2592000;
      v63 = 259200;
    }

    v71 = sub_10000A540(a2, @"BSSID");
    v21 = sub_10000A9D0(a2);
    v22 = v21;
    if (!v70 && !v21)
    {
      sub_1001A477C();
      v9 = 1;
      if (!v7)
      {
LABEL_157:
        if (v8)
        {
          CFRelease(v8);
        }

        return v9;
      }

LABEL_156:
      CFRelease(v7);
      goto LABEL_157;
    }

    if (v21)
    {
      theDate = v7;
      if (CFArrayGetCount(v21) < 1)
      {
        v68 = 0;
        v69 = 0;
        v66 = 0;
        v67 = 0;
      }

      else
      {
        v66 = 0;
        v67 = 0;
        v68 = 0;
        v69 = 0;
        v23 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v22, v23);
          if (ValueAtIndex)
          {
            v25 = ValueAtIndex;
            Value = CFDictionaryGetValue(ValueAtIndex, @"lastRoamed");
            if (Value)
            {
              v27 = Value;
              v28 = CFDictionaryGetValue(v25, @"BSSID");
              if (v28)
              {
                if (!v71 || (v29 = v28, CFEqual(v71, v28)) || CFDateGetTimeIntervalSinceDate(theDate, v27) <= v64)
                {
                  v32 = CFDictionaryGetValue(v25, @"CHANNEL_FLAGS");
                  if (v32)
                  {
                    valuePtr[0] = 0;
                    CFNumberGetValue(v32, kCFNumberIntType, valuePtr);
                    if ((valuePtr[0] & 8) != 0)
                    {
                      v69 = (v69 + 1);
                    }

                    else if ((valuePtr[0] & 0x10) != 0)
                    {
                      v67 = (v67 + 1);
                    }

                    else
                    {
                      v66 = ((valuePtr[0] >> 13) & 1) + v66;
                    }
                  }
                }

                else
                {
                  v30 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: BSSID %@ has not been seen for more than %d secs.", "__WiFiDeviceManagerEvaluateAPEnvironment", v29, v64}];
                  }

                  objc_autoreleasePoolPop(v30);
                  Mutable = v68;
                  if (v68 || (Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks)) != 0)
                  {
                    v68 = Mutable;
                    CFArrayAppendValue(Mutable, v29);
                  }

                  else
                  {
                    v68 = 0;
                  }
                }
              }
            }
          }

          ++v23;
        }

        while (v23 < CFArrayGetCount(v22));
      }

      v36 = objc_autoreleasePoolPush();
      v35 = v66;
      v33 = v69;
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: WiFiRoam : BSS List info for network : %@ : chanCount5GHz: [%d] chanCount24GHz: [%d] chanCount6GHz: [%d]", "__WiFiDeviceManagerEvaluateAPEnvironment", sub_10000A878(a2), v67, v69, v66}];
      }

      objc_autoreleasePoolPop(v36);
      v7 = theDate;
      if (v70)
      {
        if (v69 <= *(a1 + 3870))
        {
          v33 = *(a1 + 3870);
        }

        else
        {
          v33 = v69;
        }

        if (v67 <= *(a1 + 3871))
        {
          v34 = *(a1 + 3871);
        }

        else
        {
          v34 = v67;
        }

        if (v66 <= *(a1 + 3872))
        {
          v35 = *(a1 + 3872);
        }

        else
        {
          v35 = v66;
        }
      }

      else
      {
        v34 = v67;
      }
    }

    else
    {
      v68 = 0;
      v33 = *(a1 + 3870);
      v34 = *(a1 + 3871);
      v35 = *(a1 + 3872);
    }

    v37 = v34;
    v38 = (v34 + v33 + v35);
    if (a3)
    {
      *a3 = v38;
    }

    if (sub_10000A9DC(*(a1 + 64)))
    {
      v39 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: WiFiRoam : AP environment for network : %@ : bssCount: [%d] chanCount5GHz: [%d] chanCount24GHz: [%d] chanCount6GHz: [%d]", "__WiFiDeviceManagerEvaluateAPEnvironment", sub_10000A878(a2), v38, v37, v33, v35}];
      }

      v40 = v33;
      objc_autoreleasePoolPop(v39);
      if (v38 >= 4)
      {
        v41 = 0;
        if (v35)
        {
          v42 = v40 == 0;
        }

        else
        {
          v42 = 1;
        }

        v43 = v42 || v37 == 0;
        v44 = v35;
        if (v43)
        {
          v9 = 4;
        }

        else
        {
          v9 = 6;
        }

        goto LABEL_142;
      }

      if (v38 == 3 || v37 > 1 || v33 > 1 || v35 >= 2)
      {
        if (v35 <= 1)
        {
          v50 = 5;
        }

        else
        {
          v50 = 6;
        }

        v44 = v35;
        if (v35)
        {
          v9 = v50;
        }

        else
        {
          v9 = 4;
        }

        v41 = 1;
LABEL_142:
        if (v44 && _os_feature_enabled_impl())
        {
          if (v9 == 4)
          {
            v56 = 6;
          }

          else
          {
            v56 = v9;
          }

          if (v56 == 3)
          {
            v9 = 5;
          }

          else
          {
            v9 = v56;
          }
        }

        goto LABEL_150;
      }

      if (v8)
      {
        v48 = sub_10000DBF0(v8);
        v49 = sub_10000DC20(v8);
        if (v49)
        {
          v48 = v48 + CFDateGetTimeIntervalSinceDate(v7, v49);
LABEL_136:
          if (v48 < v63)
          {
            v57 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: WiFiRoam : network usage requirement has not been met (%f < %d). Returning learning environment.", "__WiFiDeviceManagerEvaluateAPEnvironment", *&v48, v63}];
            }

            v9 = 1;
            goto LABEL_152;
          }

          if (v38 == 2)
          {
            v41 = 0;
            v44 = v35;
            v9 = 3;
          }

          else
          {
            v44 = v35;
            v41 = 0;
            if (v38 == 1)
            {
              v9 = 2;
            }

            else
            {
              v9 = 1;
            }
          }

          goto LABEL_142;
        }
      }

      else
      {
        v54 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: Network : %@ is not in known network list", "__WiFiDeviceManagerEvaluateAPEnvironment", sub_10000A878(a2)}];
        }

        objc_autoreleasePoolPop(v54);
        v48 = 0.0;
      }

      v55 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: WiFiRoam : failed to get last association date for %@.", "__WiFiDeviceManagerEvaluateAPEnvironment", sub_10000A878(a2)}];
      }

      objc_autoreleasePoolPop(v55);
      goto LABEL_136;
    }

    v45 = v33;
    v41 = 0;
    v9 = 4;
    if (v38 > 2 || v37 > 1 || v45 > 1)
    {
LABEL_150:
      v57 = objc_autoreleasePoolPush();
      v58 = off_100298C40;
      if (off_100298C40)
      {
        v59 = sub_10000F2A0(v9);
        v60 = sub_10000A878(a2);
        v61 = sub_10000F2C4(*(a1 + 64));
        [v58 WFLog:3 message:{"%s: WiFiRoam : AP environment is %@ for %@(%@). Last applied environment is %@. Early exit ? : [%hhu]. augmented from scan results ? : [%hhu]", "__WiFiDeviceManagerEvaluateAPEnvironment", v59, v60, v71, sub_10000F2A0(v61), v41, v70}];
      }

LABEL_152:
      objc_autoreleasePoolPop(v57);
      goto LABEL_153;
    }

    if (v8)
    {
      v46 = sub_10000DBF0(v8);
      v47 = sub_10000DC20(v8);
      if (v47)
      {
        v46 = v46 + CFDateGetTimeIntervalSinceDate(v7, v47);
LABEL_121:
        if (v46 < v63)
        {
          v9 = 1;
LABEL_153:
          if (v68)
          {
            sub_100174D08();
            CFRelease(v68);
          }

LABEL_155:
          if (!v7)
          {
            goto LABEL_157;
          }

          goto LABEL_156;
        }

        if (v38 == 1)
        {
          v41 = 0;
          v9 = 2;
        }

        else
        {
          v41 = 0;
          if (v45 == 1 && v37 == 1)
          {
            v9 = 3;
          }

          else
          {
            v9 = 1;
          }
        }

        goto LABEL_150;
      }
    }

    else
    {
      v51 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Network : %@ is not in known network list", "__WiFiDeviceManagerEvaluateAPEnvironment", sub_10000A878(a2)}];
      }

      objc_autoreleasePoolPop(v51);
      v46 = 0.0;
    }

    v52 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: failed to get last association date for %@.", "__WiFiDeviceManagerEvaluateAPEnvironment", sub_10000A878(a2)}];
    }

    objc_autoreleasePoolPop(v52);
    goto LABEL_121;
  }

  v18 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Roam test mode enabled. AP Environment is forced to type %d", *(a1 + 276)}];
  }

  objc_autoreleasePoolPop(v18);
  if (v7)
  {
    CFRelease(v7);
  }

  return *(a1 + 276);
}

uint64_t sub_10000A154(uint64_t a1)
{
  if (a1)
  {
    result = _os_feature_enabled_impl();
    if (result)
    {
      return _os_feature_enabled_impl();
    }
  }

  else
  {
    sub_100021648();
    return 0;
  }

  return result;
}

void sub_10000A1A4(uint64_t a1, __CFDictionary *a2)
{
  if (!a1 || !a2)
  {
    return;
  }

  v29 = kCFBooleanFalse;
  value = sub_10000A540(a1, @"MacAddressRandomisationTagMigratedNetwork");
  v4 = sub_10000A540(a1, @"isHs20BasedNetwork");
  v5 = sub_10000A540(a1, @"DomainName");
  v26 = sub_10000A540(a1, @"isProfileBasedNetwork");
  v6 = sub_10000A540(a1, @"PrivateMacDefaultToOFF");
  v30 = sub_10000A540(a1, @"isCarrierBundleBased");
  v7 = sub_10000A540(a1, @"DisplayedOperatorName");
  v28 = sub_10000A540(a1, @"FeatureOffBySystemForHome");
  v27 = sub_10000A540(a1, @"FeatureOFFBySystemForFrequentlyUsedNetworks");
  v8 = sub_10000A540(a1, @"FeatureOffBySystemForCarplay");
  [sub_10000A540(a1 @"PrivateMacJoinDateAfterUpgrade")];
  v10 = v9;
  v25 = sub_10000A540(a1, @"ExperiencedFallback");
  v11 = sub_10000A540(a1, @"PrivateMacControlledDevice");
  v12 = sub_10000A540(a1, @"PRIVATE_MAC_ADDRESS");
  if (v12 && (v13 = CFDictionaryGetValue(v12, @"PRIVATE_MAC_ADDRESS_TYPE")) != 0)
  {
    v14 = sub_10000AC54(v13);
    v15 = sub_10000A540(a1, @"PrivateMacPrefChanged");
    v16 = value;
    if (v15)
    {
      v17 = v14 == 1 && v15 == kCFBooleanTrue;
      v18 = kCFBooleanFalse;
      if (v17)
      {
        v18 = kCFBooleanTrue;
      }

      v29 = v18;
    }
  }

  else
  {
    v16 = value;
  }

  if (v11)
  {
    CFDictionarySetValue(a2, @"PrivateMacControlledDevice", v11);
  }

  if (v6)
  {
    CFDictionarySetValue(a2, @"PrivateMacDefaultToOFF", v6);
  }

  if (v5)
  {
    CFDictionarySetValue(a2, @"DomainName", v5);
  }

  if (v16)
  {
    CFDictionarySetValue(a2, @"MacAddressRandomisationTagMigratedNetwork", v16);
  }

  if (v4)
  {
    CFDictionarySetValue(a2, @"isHs20BasedNetwork", v4);
  }

  if (v30)
  {
    CFDictionarySetValue(a2, @"isCarrierBundleBased", v30);
  }

  if (v7)
  {
    CFDictionarySetValue(a2, @"DisplayedOperatorName", v7);
  }

  if (v8 && v8 == kCFBooleanTrue)
  {
    v19 = 5;
  }

  else if (v28 && v28 == kCFBooleanTrue || v27 && v27 == kCFBooleanTrue)
  {
    v19 = 4;
  }

  else
  {
    if (!v29 || v29 != kCFBooleanTrue)
    {
      if (v26)
      {
        v19 = v26 == kCFBooleanTrue && v6 == kCFBooleanTrue && v6 != 0;
        if (!v16 || (v19 & 1) != 0)
        {
          goto LABEL_35;
        }
      }

      else if (!v16)
      {
        v19 = 0;
        goto LABEL_35;
      }

      if (v25 == kCFBooleanTrue && v25 != 0 && v10 < -86400.0 && v16 == kCFBooleanTrue)
      {
        v19 = 2;
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_35;
    }

    v19 = 3;
  }

LABEL_35:

  sub_10000ACBC(a2, @"PrivateMacDisbaleReason", v19);
}

const void *sub_10000A540(uint64_t a1, void *key)
{
  if (!a1)
  {
    sub_10002A114();
    return 0;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    sub_100178640();
    return 0;
  }

  v5 = qword_1002985E8;
  if (qword_1002985E8)
  {
    v10.length = CFArrayGetCount(qword_1002985E8);
    v10.location = 0;
    v6 = CFArrayContainsValue(v5, v10, key);
    v3 = *(a1 + 16);
    if (v6)
    {
      Value = CFDictionaryGetValue(v3, @"EnterpriseProfile");
      if (!Value)
      {
        return 0;
      }

      v3 = CFDictionaryGetValue(Value, @"EAPClientConfiguration");
      if (!v3)
      {
        return 0;
      }
    }
  }

  return CFDictionaryGetValue(v3, key);
}

uint64_t sub_10000A604(uint64_t a1)
{
  if (!a1)
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null network.", "WiFiNetworkIsApplePersonalHotspot"}];
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
      [off_100298C40 WFLog:4 message:{"%s: null network record.", "WiFiNetworkIsApplePersonalHotspot"}];
    }

LABEL_11:
    v7 = v6;
LABEL_15:
    objc_autoreleasePoolPop(v7);
    return 0;
  }

  v3 = CFGetTypeID(v1);
  if (v3 != CFDictionaryGetTypeID())
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: bad record type %ld", "WiFiNetworkIsApplePersonalHotspot", CFGetTypeID(*v2)}];
    }

    v7 = v8;
    goto LABEL_15;
  }

  Value = CFDictionaryGetValue(*v2, @"IsPersonalHotspot");
  if (Value && CFEqual(Value, kCFBooleanTrue))
  {
    return 1;
  }

  sub_100008A94(v2, &v9);
  return v9;
}

const __CFDictionary *sub_10000A754(const __CFDictionary *a1)
{
  result = CFDictionaryGetValue(a1, @"RSN_IE");
  if (result)
  {
    v2 = result;
    v3 = sub_10000BCB8(result, 8);
    v4 = sub_10000BCB8(v2, 9) | v3;
    v5 = sub_10000BCB8(v2, 24);
    return (v4 | v5 | sub_10000BCB8(v2, 25));
  }

  return result;
}

uint64_t sub_10000A7CC(uint64_t a1)
{
  if (!a1)
  {
    sub_10017925C();
    return 0;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    sub_10003490C();
    return 0;
  }

  Value = CFDictionaryGetValue(v2, @"APPLE_DEVICE_IE");
  if (Value)
  {
    v4 = CFDictionaryGetValue(Value, @"APPLE_DEVICE_IE_FEATURE_SUPPORTS_CARPLAY");
    if (v4)
    {
      v5 = v4 == kCFBooleanTrue;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = CFDictionaryGetValue(*(a1 + 16), @"CARPLAY_NETWORK");
  if (v7)
  {
    if (CFEqual(v7, kCFBooleanTrue))
    {
      return 1;
    }

    else
    {
      return v6;
    }
  }

  return v6;
}

const void *sub_10000A878(const void *result)
{
  if (result)
  {
    v1 = result;
    result = sub_10000A540(result, @"SSID_STR");
    if (!result)
    {
      v2 = sub_10000A540(v1, @"SSID");
      if (v2 && ((v3 = v2, (v4 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, v2, 0x8000100u)) != 0) || (v4 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, v3, 0)) != 0) || (v4 = CFStringCreateWithCString(kCFAllocatorDefault, "", 0x8000100u)) != 0)
      {
        v5 = v4;
        sub_10000AD34(v1, @"SSID_STR", v4);
        CFRelease(v5);
      }

      return sub_10000A540(v1, @"SSID_STR");
    }
  }

  return result;
}

const __CFDictionary *sub_10000A96C(const __CFDictionary *a1)
{
  result = sub_10000A754(a1);
  if (result)
  {
    result = CFDictionaryGetValue(a1, @"RSN_XE");
    if (result)
    {
      result = CFDictionaryGetValue(result, @"IE_KEY_RSNXE_CAPS");
      if (result)
      {
        Value = CFDictionaryGetValue(result, @"RSNXE_SAE_PK");
        return (CFBooleanGetValue(Value) == 1);
      }
    }
  }

  return result;
}

void sub_10000A9E8(void *a1)
{
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    v3 = qword_1002985E0;
    if (!qword_1002985E0)
    {
      pthread_once(&stru_100297B30, sub_10009D1D8);
      v3 = qword_1002985E0;
    }

    if (v2 == v3)
    {
      v4 = a1[2];
      if (v4)
      {
        CFRelease(v4);
        a1[2] = 0;
      }
    }
  }
}

const void *sub_10000AA64(const __CFArray *a1, const void **a2)
{
  result = 0;
  v4 = 0;
  idx = -1;
  if (a1 && a2)
  {
    sub_10000AACC(a1, a2, &idx, &v4);
    if (idx == -1)
    {
      return 0;
    }

    else
    {
      return CFArrayGetValueAtIndex(a1, idx);
    }
  }

  return result;
}

void sub_10000AACC(const __CFArray *a1, const void **a2, CFIndex *a3, void *a4)
{
  if (!a1)
  {
    goto LABEL_17;
  }

  Count = CFArrayGetCount(a1);
  if (!Count)
  {
    goto LABEL_17;
  }

  if (!a2)
  {
    goto LABEL_14;
  }

  v9 = Count;
  v10 = CFGetTypeID(a2);
  v11 = qword_1002985E0;
  if (!qword_1002985E0)
  {
    sub_1000083FC();
    pthread_once(v12, v13);
    v11 = qword_1002985E0;
  }

  if (v10 != v11)
  {
LABEL_14:
    v16 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: invalid network ref", "WiFiGetPrivateMacNetworkIndices"}];
    }

    objc_autoreleasePoolPop(v16);
    goto LABEL_17;
  }

  if (v9 < 1)
  {
LABEL_17:
    v14 = -1;
    goto LABEL_18;
  }

  v14 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v14);
    if (ValueAtIndex)
    {
      if (sub_10000B9E0(ValueAtIndex[2], a2[2], @"SSID_STR"))
      {
        break;
      }
    }

    if (v9 == ++v14)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  if (a4)
  {
    *a4 = 0;
  }

  if (a3)
  {
    *a3 = v14;
  }
}

const __CFData *sub_10000ABFC(const __CFData *result)
{
  if (result)
  {
    v1 = result;
    TypeID = CFDataGetTypeID();
    if (TypeID == CFGetTypeID(v1))
    {
      return ((*CFDataGetBytePtr(v1) >> 1) & 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFNumber *sub_10000AC54(const __CFNumber *result)
{
  if (result)
  {
    v1 = result;
    valuePtr = 0;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v1))
    {
      CFNumberGetValue(v1, kCFNumberIntType, &valuePtr);
      return valuePtr;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_10000ACBC(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCFIndexType, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFDictionarySetValue(a1, a2, v5);
    CFRelease(v6);
  }
}

void sub_10000AD34(uint64_t a1, void *key, const void *a3)
{
  if (!a1)
  {
    sub_100178718();
    return;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    sub_1001786AC();
    return;
  }

  v7 = qword_1002985E8;
  if (qword_1002985E8 && (v28.length = CFArrayGetCount(qword_1002985E8), v28.location = 0, v8 = CFArrayContainsValue(v7, v28, key), v4 = *(a1 + 16), v8))
  {
    Value = CFDictionaryGetValue(v4, @"EnterpriseProfile");
    if (!Value || (v10 = Value, (MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, Value)) == 0))
    {
      v20 = 0;
      v17 = 0;
      goto LABEL_28;
    }

    v12 = MutableCopy;
    v13 = CFDictionaryGetValue(v10, @"EAPClientConfiguration");
    if (v13 && (v14 = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v13)) != 0)
    {
      v15 = v14;
      v16 = CFDictionaryGetValue(v14, key);
      v17 = v16;
      if (v16)
      {
        CFRetain(v16);
      }

      CFDictionarySetValue(v15, key, a3);
      CFDictionarySetValue(v12, @"EAPClientConfiguration", v15);
      CFRelease(v15);
    }

    else
    {
      v17 = 0;
    }

    CFDictionarySetValue(*(a1 + 16), @"EnterpriseProfile", v12);
    CFRelease(v12);
  }

  else
  {
    v18 = CFDictionaryGetValue(v4, key);
    v17 = v18;
    if (v18)
    {
      CFRetain(v18);
    }

    v19 = *(a1 + 16);
    if (a3)
    {
      CFDictionarySetValue(v19, key, a3);
    }

    else
    {
      CFDictionaryRemoveValue(v19, key);
    }

    if (CFEqual(key, @"EnterpriseProfile") && !sub_10000C47C(*(a1 + 16)))
    {
      v21 = sub_10000A754(*(a1 + 16));
      v22 = sub_10001CF3C(a1);
      if (v21)
      {
        sub_10009E158(a1, 1, v22);
      }

      else
      {
        sub_10009E2E4(a1, v22);
      }
    }
  }

  v20 = v17 != 0;
  if (!a3 && v17)
  {
    goto LABEL_27;
  }

LABEL_28:
  if (a3 && !v17)
  {
LABEL_30:
    Current = CFAbsoluteTimeGetCurrent();
    v24 = CFDateCreate(kCFAllocatorDefault, Current);
    if (v24)
    {
      v25 = v24;
      CFDictionarySetValue(*(a1 + 16), @"lastUpdated", v24);
      CFRelease(v25);
      if (!v20)
      {
        return;
      }

      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v26 = !v20;
  if (!a3)
  {
    v26 = 1;
  }

  if (v26)
  {
LABEL_38:
    if (!v20)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!CFEqual(a3, v17))
  {
LABEL_27:
    v20 = 1;
    goto LABEL_30;
  }

LABEL_39:

  CFRelease(v17);
}

BOOL sub_10000AFE4(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    return CFDictionaryGetValue(*(result + 16), @"HOTSPOT20_IE") || CFDictionaryGetValue(*(v1 + 16), @"DomainName") != 0;
  }

  return result;
}

const __CFArray *sub_10000B044(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"WPA_IE");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  TypeID = CFDictionaryGetTypeID();
  if (!sub_100058AF8(TypeID, v2))
  {
    return 0;
  }

  return sub_10000BCB8(v2, 2);
}

uint64_t sub_10000B0AC(const __CFDictionary *a1)
{
  if (sub_10000BD78(a1))
  {
    LOBYTE(result) = 1;
  }

  else
  {
    Value = CFDictionaryGetValue(a1, @"ALLOW_WPA2_PSK");
    LOBYTE(result) = sub_10001CD48(Value);
  }

  return result;
}

_WORD *sub_10000B0F4(int a1, CFTypeRef cf, char a3)
{
  if (!cf)
  {
    goto LABEL_9;
  }

  v5 = CFGetTypeID(cf);
  if (v5 != CFDictionaryGetTypeID())
  {
    v20 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: record is of type %ld!!", "__WiFiNetworkIsRecordValid", CFGetTypeID(cf)}];
    }

    goto LABEL_31;
  }

  Value = CFDictionaryGetValue(cf, @"SSID_STR");
  if (Value)
  {
    TypeID = CFStringGetTypeID();
    if (TypeID != CFGetTypeID(Value))
    {
      return 0;
    }
  }

  if (!sub_10000B34C(Value) && !CFDictionaryGetValue(cf, @"DomainName"))
  {
    v20 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: SSID not valid length", "__WiFiNetworkIsRecordValid", v21}];
    }

LABEL_31:
    objc_autoreleasePoolPop(v20);
    return 0;
  }

  v8 = CFDictionaryGetValue(cf, @"SSID");
  if (v8)
  {
    v9 = v8;
    v10 = CFDataGetTypeID();
    if (v10 != CFGetTypeID(v9))
    {
      return 0;
    }
  }

LABEL_9:
  if (!qword_1002985E0)
  {
    sub_1000083FC();
    pthread_once(v11, v12);
  }

  Instance = _CFRuntimeCreateInstance();
  v14 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0;
    *(Instance + 24) = 0;
    v15 = (Instance + 16);
    if (cf)
    {
      if (a3)
      {
        DeepCopy = CFPropertyListCreateDeepCopy(kCFAllocatorDefault, cf, 2uLL);
      }

      else
      {
        DeepCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, cf);
      }
    }

    else
    {
      DeepCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    *v15 = DeepCopy;
    if (DeepCopy)
    {
      v17 = CFDictionaryGetValue(DeepCopy, @"HIDDEN_NETWORK");
      if (v17)
      {
        v18 = v17 == kCFBooleanTrue;
      }

      else
      {
        v18 = 0;
      }

      if (v18)
      {
        CFDictionaryRemoveValue(*v15, @"HIDDEN_NETWORK");
        CFDictionarySetValue(*v15, @"UserDirected", kCFBooleanTrue);
      }

      v14[12] = -1;
      return v14;
    }

    CFRelease(v14);
    return 0;
  }

  return v14;
}

BOOL sub_10000B34C(const __CFString *a1)
{
  if (!a1)
  {
    return 1;
  }

  if (CFEqual(a1, @"_AppleWi-FiInternetTetheringSSID_"))
  {
    return 1;
  }

  return CFStringGetLength(a1) < 33;
}

const __CFArray *sub_10000B3A8(uint64_t a1, const void *a2, int a3)
{
  if (!a1)
  {
    sub_10019D40C();
    return 0;
  }

  if (!a2)
  {
    sub_10019D3A0();
    return 0;
  }

  v5 = sub_10000BC8C(*(a1 + 6872));
  v6 = v5;
  if (!v5)
  {
    return v6;
  }

  v11.length = CFArrayGetCount(v5);
  v11.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v6, v11, a2);
  if (FirstIndexOfValue == -1)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v6, FirstIndexOfValue);
  if (!ValueAtIndex)
  {
    return 0;
  }

  v9 = sub_10000C580(kCFAllocatorDefault, ValueAtIndex);
  v6 = v9;
  if (a3 && v9)
  {
    sub_10000C5C0(v9, a2);
  }

  return v6;
}

BOOL sub_10000B464(void *a1, void *a2)
{
  v2 = 0;
  if (a1)
  {
    v3 = a2;
    if (a2)
    {
      v4 = a1;
      v5 = CFGetTypeID(a1);
      v6 = qword_1002985E0;
      if (!qword_1002985E0)
      {
        pthread_once(&stru_100297B30, sub_10009D1D8);
        v6 = qword_1002985E0;
      }

      if (v5 == v6)
      {
        v7 = v4;
      }

      else
      {
        v7 = 0;
      }

      v8 = CFGetTypeID(v3);
      v9 = qword_1002985E0;
      if (!qword_1002985E0)
      {
        pthread_once(&stru_100297B30, sub_10009D1D8);
        v9 = qword_1002985E0;
      }

      if (v8 == v9)
      {
        v10 = v3;
      }

      else
      {
        v10 = 0;
      }

      TypeID = CFDictionaryGetTypeID();
      if (TypeID != CFGetTypeID(v4))
      {
        v12 = qword_1002985E0;
        if (!qword_1002985E0)
        {
          pthread_once(&stru_100297B30, sub_10009D1D8);
          v12 = qword_1002985E0;
        }

        if (v12 == CFGetTypeID(v4))
        {
          v4 = v4[2];
        }

        else
        {
          v4 = 0;
        }
      }

      v13 = CFDictionaryGetTypeID();
      if (v13 != CFGetTypeID(v3))
      {
        v14 = qword_1002985E0;
        if (!qword_1002985E0)
        {
          pthread_once(&stru_100297B30, sub_10009D1D8);
          v14 = qword_1002985E0;
        }

        if (v14 != CFGetTypeID(v3))
        {
          return 0;
        }

        v3 = v3[2];
      }

      v2 = 0;
      if (v4)
      {
        if (v3)
        {
          if (sub_10000BAC8(v4, v3))
          {
            if (sub_10000AFE4(v7) && !sub_10000AFE4(v10) || !sub_10000AFE4(v7) && sub_10000AFE4(v10))
            {
              v15 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: SSIDs match (%@), but networks have different HS20 properties.", "__WiFiNetworkEqual", sub_10000A878(v7)}];
              }

              objc_autoreleasePoolPop(v15);
              return 0;
            }

            if (!sub_10000BB24(v4, v3) || !sub_10000B9E0(v4, v3, @"AP_MODE"))
            {
              return 0;
            }

            v40 = sub_10000BBE0(v4);
            v39 = sub_10000BBE0(v3);
            v41 = sub_10000A754(v4) && !sub_10000B044(v4) && sub_10000B0AC(v4) == 0;
            v21 = sub_10000A754(v3) && !sub_10000B044(v3) && sub_10000B0AC(v3) == 0;
            v37 = sub_100009780(v4);
            v38 = sub_100009780(v3);
            Value = CFDictionaryGetValue(v4, @"ALLOW_WPA2_PSK");
            v23 = CFDictionaryGetValue(v3, @"ALLOW_WPA2_PSK");
            v24 = CFDictionaryGetValue(v4, @"ALLOW_OWE_TSN");
            v35 = CFDictionaryGetValue(v3, @"ALLOW_OWE_TSN");
            v36 = v24;
            v25 = (Value | v24) == 0;
            v26 = (v23 | v35) == 0;
            if (v25 == v26)
            {
              v2 = 0;
              if (v41 != v21 || v37 != v38)
              {
                return v2;
              }

              goto LABEL_72;
            }

            if (v41)
            {
              v27 = sub_100018030(v7) != 3;
              if (!v21)
              {
                goto LABEL_58;
              }
            }

            else
            {
              v27 = 0;
              if (!v21)
              {
LABEL_58:
                v28 = 0;
                goto LABEL_59;
              }
            }

            v28 = sub_100018030(v10) != 3;
LABEL_59:
            v2 = 0;
            if (Value == kCFBooleanTrue && v28 || v23 == kCFBooleanTrue && v27)
            {
              return v2;
            }

            if ((v25 & v41) == 1)
            {
              v31 = sub_100018030(v7);
              v32 = v40;
              if (v31 == 3)
              {
                v32 = v40 | 2;
              }

              v40 = v32;
            }

            if ((v26 & v21) == 1)
            {
              v33 = sub_100018030(v10);
              v34 = v39;
              if (v33 == 3)
              {
                v34 = v39 | 2;
              }

              v39 = v34;
            }

            if (v37)
            {
              v29 = sub_100018030(v7) != 3;
            }

            else
            {
              v29 = 0;
            }

            v30 = v38;
            if (v38)
            {
              v30 = sub_100018030(v10) != 3;
            }

            v2 = 0;
            if (v36 == kCFBooleanTrue && v30 || v35 == kCFBooleanTrue && v29)
            {
              return v2;
            }

LABEL_72:
            if (!v40 || !v39 || (v40 & v39) != 0)
            {
              return (v39 != 0) ^ (v40 == 0);
            }

            return 0;
          }

          v17 = sub_1000333E8(v7, @"networkRole");
          v18 = sub_1000333E8(v10, @"networkRole");
          if (v17 == 4 || (v17 & 0xFFFFFFFE) == 2 || v18 == 4 || (v18 & 0xFFFFFFFE) == 2)
          {
            return v17 == v18;
          }

          v2 = 1;
          if (!sub_1000334C0(v7, v10, 1))
          {
            v19 = sub_10000A878(v7);
            if (!CFStringGetLength(v19))
            {
              v20 = sub_10000A878(v10);
              if (!CFStringGetLength(v20))
              {
                return sub_10009F5D4(v7, v10) != 0;
              }
            }

            return 0;
          }
        }
      }
    }
  }

  return v2;
}

uint64_t sub_10000B9E0(CFTypeRef cf, const void *a2, const void *a3)
{
  result = 0;
  if (!cf || !a2)
  {
    return result;
  }

  v7 = CFGetTypeID(cf);
  if (v7 != CFGetTypeID(a2))
  {
    return 0;
  }

  v8 = CFGetTypeID(cf);
  if (v8 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  v9 = cf;
  if (!a3)
  {
    v14 = a2;
    goto LABEL_12;
  }

  Value = CFDictionaryGetValue(cf, a3);
  v11 = sub_1000086AC();
  v13 = CFDictionaryGetValue(v11, v12);
  if (Value == v13)
  {
    return 1;
  }

  v14 = v13;
  if ((Value != 0) == (v13 == 0))
  {
    return 0;
  }

  v9 = Value;
LABEL_12:

  return CFEqual(v9, v14);
}

uint64_t sub_10000BAC8(const void *a1, const void *a2)
{
  v3 = sub_10000B9E0(a1, a2, @"SSID_STR");
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      Value = CFDictionaryGetValue(a1, @"SSID_STR");
      if (Value)
      {
        if (!CFStringGetLength(Value))
        {
          return 0;
        }
      }
    }
  }

  return v4;
}

uint64_t sub_10000BB24(const __CFDictionary *a1, const __CFDictionary *a2)
{
  if (CFDictionaryGetValue(a1, @"forceBGScanParamsCompare") != kCFBooleanTrue && CFDictionaryGetValue(a2, @"forceBGScanParamsCompare") != kCFBooleanTrue)
  {
    return 1;
  }

  v4 = sub_100011580();
  result = sub_10000B9E0(v4, v5, v6);
  if (result)
  {
    v7 = sub_100011580();
    result = sub_10000B9E0(v7, v8, v9);
    if (result)
    {
      v10 = sub_100011580();

      return sub_10000B9E0(v10, v11, v12);
    }
  }

  return result;
}

uint64_t sub_10000BBE0(const __CFDictionary *a1)
{
  if (sub_10000B044(a1))
  {
    v2 = 2;
  }

  else
  {
    v2 = 2 * (sub_10000B0AC(a1) != 0);
  }

  if (sub_10000C430(a1))
  {
    v2 |= 8u;
  }

  v3 = v2 | (CFDictionaryGetValue(a1, @"WEP") == kCFBooleanTrue);
  if (sub_10000A754(a1))
  {
    v3 |= 4u;
  }

  v4 = sub_10000A96C(a1);
  v5 = v3 | 0x10;
  if (!v4)
  {
    return v3;
  }

  return v5;
}

uint64_t sub_10000BC8C(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 232);
  }

  sub_100170DB4();
  return 0;
}

const __CFArray *sub_10000BCB8(const __CFDictionary *a1, int a2)
{
  result = CFDictionaryGetValue(a1, @"IE_KEY_RSN_AUTHSELS");
  if (result || (result = CFDictionaryGetValue(a1, @"IE_KEY_WPA_AUTHSELS")) != 0)
  {
    v5 = result;
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v7 = Count;
      v8 = 0;
      while (1)
      {
        valuePtr = -1431655766;
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
        if (CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr))
        {
          if (valuePtr == a2)
          {
            break;
          }
        }

        if (v7 == ++v8)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

const __CFDictionary *sub_10000BD78(const __CFDictionary *result)
{
  if (result)
  {
    result = CFDictionaryGetValue(result, @"RSN_IE");
    if (result)
    {
      v1 = result;
      if (sub_10000BCB8(result, 2) || sub_10000BCB8(v1, 4))
      {
        return 1;
      }

      else
      {
        return (sub_10000BCB8(v1, 6) != 0);
      }
    }
  }

  return result;
}

void sub_10000BDE8(CFMutableDictionaryRef *a1, CFDictionaryRef theDict)
{
  if (a1)
  {
    if (theDict)
    {
      v3 = a1;
      Count = CFDictionaryGetCount(theDict);
      if (Count)
      {
        v5 = Count;
        v6 = 8 * Count;
        v7 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
        v8 = malloc_type_malloc(v6, 0xC0040B8AA526DuLL);
        CFDictionaryGetKeysAndValues(theDict, v7, v8);
        if (v5 < 1)
        {
          goto LABEL_79;
        }

        v9 = 0;
        v42 = 0;
        v10 = 0;
        v40 = v5;
        v41 = v8;
        do
        {
          if (CFStringCompare(@"LEAKY_AP_LEARNED_DATA", v7[v9], 0) == kCFCompareEqualTo)
          {
            v11 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: Found APPLE80211KEY_LEAKY_AP_LEARNED_DATA for network %@", "WiFiNetworkMergeProperties", sub_10000A878(v3)}];
            }

            objc_autoreleasePoolPop(v11);
            v42 = 1;
          }

          if (!sub_10000AFE4(v3) || CFStringCompare(@"SSID_STR", v7[v9], 0) && CFStringCompare(@"SSID", v7[v9], 0))
          {
            if (CFStringCompare(@"PRIVATE_MAC_ADDRESS", v7[v9], 0))
            {
              if (CFStringCompare(@"EnterpriseProfile", v7[v9], 0))
              {
                if (CFStringCompare(@"HomePropertyFromMobilewifitool", v7[v9], 0) && CFStringCompare(@"COLOCATED_NETWORK_SCOPE_ID", v7[v9], 0))
                {
                  if (CFStringCompare(@"NetworkOfInterestHomeState", v7[v9], 0) == kCFCompareEqualTo)
                  {
                    v12 = v8[v9];
                    LODWORD(valuePtr) = 0;
                    if (sub_10000FC60(v3))
                    {
                      if (v12)
                      {
                        CFNumberGetValue(v12, kCFNumberSInt32Type, &valuePtr);
                      }
                    }
                  }

                  if (CFStringCompare(@"networkKnownBSSListKey", v7[v9], 0) == kCFCompareEqualTo && (v15 = sub_10000A540(v3, @"networkKnownBSSListKey"), (theArray = v41[v9]) != 0) && (v16 = v15) != 0)
                  {
                    v39 = v3;
                    v17 = CFArrayGetCount(theArray);
                    v18 = CFArrayGetCount(v16);
                    MutableCopy = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, v16);
                    v43 = v17;
                    if (v17 >= 1)
                    {
                      v20 = 0;
                      do
                      {
                        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v20);
                        if (ValueAtIndex)
                        {
                          v22 = ValueAtIndex;
                          v23 = CFDictionaryGetValue(ValueAtIndex, @"BSSID");
                          if (v18 < 1)
                          {
LABEL_45:
                            CFArrayAppendValue(MutableCopy, v22);
                          }

                          else
                          {
                            v24 = v23;
                            v25 = 0;
                            v26 = 0;
                            while (1)
                            {
                              v27 = CFArrayGetValueAtIndex(v16, v26);
                              if (v27)
                              {
                                v25 = CFDictionaryGetValue(v27, @"BSSID");
                              }

                              if (v25 && v24 && CFStringCompare(v25, v24, 1uLL) == kCFCompareEqualTo)
                              {
                                break;
                              }

                              if (v18 == ++v26)
                              {
                                goto LABEL_45;
                              }
                            }

                            CFArraySetValueAtIndex(MutableCopy, v26, v22);
                          }
                        }

                        ++v20;
                      }

                      while (v20 != v43);
                    }

                    v3 = v39;
                    sub_10000AD34(v39, @"networkKnownBSSListKey", MutableCopy);
                    if (MutableCopy)
                    {
                      CFRelease(MutableCopy);
                    }

                    v10 = 1;
                    v5 = v40;
                    v8 = v41;
                  }

                  else if (CFStringCompare(@"lastUpdated", v7[v9], 0) || v10 != 1)
                  {
                    v5 = v40;
                    v8 = v41;
                    v14 = v41[v9];
                    if (v14)
                    {
                      CFRetain(v14);
                      CFDictionarySetValue(v3[2], v7[v9], v41[v9]);
                      CFRelease(v41[v9]);
                    }
                  }

                  else
                  {
                    v5 = v40;
                    v8 = v41;
                  }
                }
              }

              else
              {
                v28 = v5;
                v29 = sub_10000A540(v3, @"EnterpriseProfile");
                Mutable = v29;
                if (!v29)
                {
                  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                }

                v31 = v8[v9];
                v32 = sub_100174574(Mutable, v31);
                valuePtr = 0;
                value = 0;
                CFDictionaryGetValueIfPresent(v31, @"EAPClientConfiguration", &valuePtr);
                CFDictionaryGetValueIfPresent(Mutable, @"EAPClientConfiguration", &value);
                v33 = valuePtr;
                if (valuePtr)
                {
                  v34 = value;
                  theArraya = value;
                  if (!value)
                  {
                    v34 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                    value = v34;
                    v33 = valuePtr;
                  }

                  v35 = sub_100174574(v34, v33);
                  Default = CFAllocatorGetDefault();
                  v37 = CFDictionaryCreateMutableCopy(Default, 0, v32);
                  CFDictionarySetValue(v37, @"EAPClientConfiguration", v35);
                  sub_10000AD34(v3, @"EnterpriseProfile", v37);
                  if (v37)
                  {
                    CFRelease(v37);
                  }

                  if (v35)
                  {
                    CFRelease(v35);
                  }

                  if (!theArraya && value)
                  {
                    CFRelease(value);
                    value = 0;
                  }
                }

                else
                {
                  sub_10000AD34(v3, @"EnterpriseProfile", v32);
                }

                if (v32)
                {
                  CFRelease(v32);
                }

                if (!v29 && Mutable)
                {
                  CFRelease(Mutable);
                }

                v10 = 1;
                v5 = v28;
              }
            }
          }

          else
          {
            v13 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: skip %@ merge for hs20 network %@", "WiFiNetworkMergeProperties", v7[v9], sub_10000A878(v3)}];
            }

            objc_autoreleasePoolPop(v13);
          }

          ++v9;
        }

        while (v9 != v5);
        if ((v42 & 1) == 0)
        {
LABEL_79:
          if (sub_10000A540(v3, @"LEAKY_AP_LEARNED_DATA"))
          {
            CFDictionaryRemoveValue(v3[2], @"LEAKY_AP_LEARNED_DATA");
            v38 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: Removing APPLE80211KEY_LEAKY_AP_LEARNED_DATA for network %@", "WiFiNetworkMergeProperties", sub_10000A878(v3)}];
            }

            objc_autoreleasePoolPop(v38);
          }
        }

        free(v8);
        free(v7);
      }
    }
  }
}

BOOL sub_10000C47C(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"WPA_IE");
  v3 = CFDictionaryGetValue(a1, @"RSN_IE");
  if (Value && (TypeID = CFDictionaryGetTypeID(), sub_100058AF8(TypeID, Value)))
  {
    v5 = 1;
    if (!sub_10000BCB8(Value, 1))
    {
      v5 = sub_10000BCB8(Value, 0) != 0;
    }
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    if (v3)
    {
      v5 = 1;
      if (!sub_10000BCB8(v3, 1) && !sub_10000BCB8(v3, 0) && !sub_10000BCB8(v3, 3) && !sub_10000BCB8(v3, 5) && !sub_10000BCB8(v3, 12))
      {
        return sub_10000BCB8(v3, 13) != 0;
      }
    }
  }

  return v5;
}

_WORD *sub_10000C580(uint64_t a1, uint64_t a2)
{
  result = sub_10000B0F4(kCFAllocatorDefault, *(a2 + 16), 0);
  result[12] = *(a2 + 24);
  return result;
}

void sub_10000C5C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10000BDE8(a1, *(a2 + 16));
    if (*(a1 + 24) == -1)
    {
      v4 = *(a2 + 24);
      if (v4 != 0xFFFF)
      {
        *(a1 + 24) = v4;
      }
    }
  }
}

void sub_10000C614(uint64_t a1, void *a2, uint64_t a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberCFIndexType, &valuePtr);
  if (v5)
  {
    v6 = v5;
    sub_10000AD34(a1, a2, v5);
    CFRelease(v6);
  }
}

void sub_10000C684(uint64_t a1, const void *a2)
{
  if (!a1 || !a2)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_15;
    }

    v18 = "Device";
    if (!a2)
    {
      v18 = "Network";
    }

    v19 = v18;
    v15 = "%s: %s is NULL";
    goto LABEL_13;
  }

  v4 = sub_10000A540(a2, @"BSSID");
  if (!v4)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_15;
    }

    v15 = "%s: bssid is NULL!";
    goto LABEL_29;
  }

  v5 = v4;
  v6 = sub_10000A878(a2);
  if (!v6)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_15;
    }

    v15 = "%s: ssid is NULL!";
LABEL_29:
    v16 = 4;
    goto LABEL_14;
  }

  v7 = v6;
  v8 = *(a1 + 5208);
  if (v8)
  {
    if (CFStringCompare(v8, v5, 1uLL) == kCFCompareEqualTo)
    {
      v17 = *(a1 + 5216);
      if (v17)
      {
        if (CFStringCompare(v17, v7, 0) == kCFCompareEqualTo)
        {
          return;
        }
      }
    }

    v9 = *(a1 + 5208);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 5208) = 0;
    }
  }

  v10 = *(a1 + 5216);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 5216) = 0;
  }

  v11 = sub_10000A540(a2, @"BSSID");
  *(a1 + 5208) = CFStringCreateCopy(kCFAllocatorDefault, v11);
  v12 = sub_10000A878(a2);
  *(a1 + 5216) = CFStringCreateCopy(kCFAllocatorDefault, v12);
  v13 = objc_autoreleasePoolPush();
  v14 = off_100298C40;
  if (off_100298C40)
  {
    v19 = v7;
    v20 = v5;
    v15 = "%s: LastLinkedBSSInfo updated to: {%@},{%@}";
LABEL_13:
    v16 = 3;
LABEL_14:
    [v14 WFLog:v16 message:{v15, "WiFiDeviceRecordLastLinkedBSSInfo", v19, v20}];
  }

LABEL_15:

  objc_autoreleasePoolPop(v13);
}

const __CFNumber *sub_10000C894(uint64_t a1)
{
  result = sub_10000A540(a1, @"AP_MODE");
  if (result)
  {
    valuePtr = -21846;
    result = CFNumberGetValue(result, kCFNumberSInt16Type, &valuePtr);
    if (result)
    {
      return (valuePtr == 1);
    }
  }

  return result;
}

void sub_10000C910(uint64_t a1, int a2, int a3)
{
  v6 = [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
  if (!a2 || (CFSetGetCount(*(a1 + 168)) != 0) | v6 & 1)
  {
    if ((CFSetGetCount(*(a1 + 168)) != 0) | v6 & 1)
    {
      v7 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: auto-join disabled by %@ (activity=%d)", "__WiFiManagerSetEnableInternal", *(a1 + 168), v6}];
      }

      objc_autoreleasePoolPop(v7);
    }

    v8 = 0;
    v9 = 0;
    if (a3)
    {
      goto LABEL_11;
    }

LABEL_10:
    if (*(a1 + 26) == v8)
    {
      return;
    }

    goto LABEL_11;
  }

  v8 = 1;
  v9 = 1;
  if (!a3)
  {
    goto LABEL_10;
  }

LABEL_11:
  v10 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v11 = "Disabling";
    if (v9)
    {
      v11 = "Enabling";
    }

    [off_100298C40 WFLog:3 message:{"%s automatic association", v11}];
  }

  objc_autoreleasePoolPop(v10);
  *(a1 + 26) = v8;
  if (v9 && *(a1 + 1664))
  {
    v12 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: start the priority autojoin timer ###START_CAAJ", "__WiFiManagerSetEnableInternal"}];
    }

    objc_autoreleasePoolPop(v12);
    v13 = *(a1 + 1680);
    v14 = dispatch_time(0, 30000000000);
    dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, 0);
    v8 = *(a1 + 26);
  }

  context = a1;
  v17 = 0xAAAAAAAAAAAAAAAALL;
  if (v8)
  {
    v15 = 6;
  }

  else
  {
    v15 = 16;
  }

  LODWORD(v17) = v15;
  v18 = 0;
  v19 = 1;
  v20 = 0;
  CFSetApplyFunction(*(a1 + 112), sub_100003B88, &context);
}

void sub_10000CB08(uint64_t a1, int a2, const __CFString *a3)
{
  if (a1)
  {
    v6 = *(a1 + 800);
    if (a2 > 3)
    {
      if (a2 == 4)
      {
        v8 = v6 | 2;
      }

      else
      {
        if (a2 != 8)
        {
          return;
        }

        v8 = v6 & 0xFFFFFFFFFFFFFFFDLL;
      }
    }

    else if (a2 == 1)
    {
      v8 = v6 | 1;
      if (a3)
      {
        v9 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: %@ is in foreground.", "__WiFiManagerAppStateManagerCallback", a3}];
        }

        objc_autoreleasePoolPop(v9);
      }
    }

    else
    {
      if (a2 != 2)
      {
        return;
      }

      if (v6)
      {
        v7 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: no more foreground app.", "__WiFiManagerAppStateManagerCallback"}];
        }

        objc_autoreleasePoolPop(v7);
      }

      v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    }

    *(a1 + 800) = v8;
    sub_100002E5C(a1, v6);

    sub_10001D438(a1, a3, a2);
  }

  else
  {
    sub_10016BDF4();
  }
}

uint64_t sub_10000CDC4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1)
  {
    if (!*(a1 + 2179))
    {
      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: fetching user auto join state from the plist", "WiFiManagerGetUserAutoJoinState"}];
      }

      objc_autoreleasePoolPop(v3);
      *(a1 + 2178) = sub_100018E90(a1, @"UserAutoJoinState", 1);
      *(a1 + 2177) = 1;
      v4 = sub_10001769C(a1, @"UserAutoJoinDisabledLoc");
      v5 = objc_autoreleasePoolPush();
      if (v4)
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: found location data for user auto join disabled", "WiFiManagerGetUserAutoJoinState"}];
        }

        objc_autoreleasePoolPop(v5);
        v6 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:0];
        if (v6 && (v7 = v6, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v8 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: setting disabled location to %@", "WiFiManagerGetUserAutoJoinState", v7}];
          }

          objc_autoreleasePoolPop(v8);
          *(a1 + 2184) = v7;
          v9 = v7;
          *(a1 + 2177) = 0;
        }

        else
        {
          v10 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: invalid location property in the plist, clearing out", "WiFiManagerGetUserAutoJoinState"}];
          }

          objc_autoreleasePoolPop(v10);
          sub_10007393C(a1, @"UserAutoJoinDisabledLoc", 0, 0);
        }
      }

      else
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: no location data in plist", "WiFiManagerGetUserAutoJoinState"}];
        }

        objc_autoreleasePoolPop(v5);
      }

      v11 = sub_10001769C(a1, @"UserAutoJoinDisableTimestamp");
      v12 = objc_autoreleasePoolPush();
      if (v11)
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: found disabled date %@", "WiFiManagerGetUserAutoJoinState", v11}];
        }

        objc_autoreleasePoolPop(v12);
        *(a1 + 2192) = v11;
      }

      else
      {
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: no disabled date in plist", "WiFiManagerGetUserAutoJoinState"}];
        }

        objc_autoreleasePoolPop(v12);
      }

      *(a1 + 2179) = 1;
    }

    v13 = *(a1 + 2178);
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: user auto join state %d", "WiFiManagerGetUserAutoJoinState", v13}];
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: manager is NULL", "WiFiManagerGetUserAutoJoinState"}];
    }

    v13 = 1;
  }

  objc_autoreleasePoolPop(v14);
  objc_autoreleasePoolPop(v2);
  return v13;
}

void sub_10000D0D8(uint64_t a1, const void *a2, int a3)
{
  if (_os_feature_enabled_impl())
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s not allowed with Unified Auto-Join", "WiFiManagerSetRetryIntervals"}];
    }

    objc_autoreleasePoolPop(v6);
  }

  else if (!a2 || (v7 = *(a1 + 272)) == 0 || !CFEqual(a2, v7))
  {
    v8 = *(a1 + 272);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 272) = 0;
    }

    if (a2)
    {
      *(a1 + 272) = CFRetain(a2);
      *(a1 + 280) = a3;
    }

    context[0] = a1;
    context[1] = 0xAAAAAAAA0000001CLL;
    context[2] = 0;
    context[3] = 1;
    context[4] = 0;
    CFSetApplyFunction(*(a1 + 112), sub_100003B88, context);
  }
}

void sub_10000D1F8(uint64_t a1, int a2)
{
  v4 = a2;
  if (a2)
  {
    if (*(a1 + 756) != 2)
    {
      sub_10000D278(a1);
    }

    v3[0] = a1;
    v3[1] = 0xAAAAAAAA00000014;
    v3[2] = &v4;
    v3[3] = 1;
    v3[4] = 0;
    CFSetApplyFunction(*(a1 + 112), sub_100003B88, v3);
  }
}

void sub_10000D278(uint64_t a1)
{
  v2 = *(a1 + 920);
  if ((v2 - 1) < 2)
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"Canceling disassociation timer"];
    }

    objc_autoreleasePoolPop(v4);
    sub_10007D1E4(a1, 1, 315360000.0);
  }

  else
  {
    if (!v2)
    {
      return;
    }

    if (v2 == 3)
    {
      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"Disassociation timer already fired, so no need to cancel"}];
      }

      objc_autoreleasePoolPop(v3);
      sub_10000D4C0(a1, 1);
    }
  }

  *(a1 + 920) = 0;
}

void sub_10000D33C(uint64_t a1, int a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    if ((a2 - 1) > 6)
    {
      v6 = @"none";
    }

    else
    {
      v6 = off_100262038[a2 - 1];
    }

    [off_100298C40 WFLog:3 message:{"%s: type=%@", "WiFiDeviceManagerReset", v6}];
  }

  objc_autoreleasePoolPop(v5);
  if (a2 > 4)
  {
    switch(a2)
    {
      case 5:
        sub_1000BE0A8(a1);
        goto LABEL_25;
      case 6:
        sub_1000BE0A8(a1);
        v7 = *(a1 + 6720);
        v8 = 3;
        break;
      case 7:
        sub_1000BE0A8(a1);
        v7 = *(a1 + 6720);
        v8 = 4;
        break;
      default:
        goto LABEL_25;
    }

    goto LABEL_23;
  }

  switch(a2)
  {
    case 1:
      sub_1000BE0A8(a1);
      v9 = 7;
      break;
    case 3:
      v9 = 2;
      break;
    case 4:
      v7 = *(a1 + 6720);
      v8 = 5;
LABEL_23:
      [v7 removeDenyListStateWithDenyListRemoveReason:v8];
      if ([*(a1 + 6720) denyListedNetworkCount])
      {
        sub_1000BCD2C(a1);
      }

      goto LABEL_25;
    default:
      goto LABEL_25;
  }

  [*(a1 + 6720) removeDenyListStateWithDenyListRemoveReason:v9];
  if ([*(a1 + 6720) denyListedNetworkCount])
  {
    sub_1000BCD2C(a1);
  }

  if ([*(a1 + 7016) count])
  {
    [*(a1 + 7016) removeAllObjects];
  }

LABEL_25:

  objc_autoreleasePoolPop(v4);
}

void sub_10000D4C0(uint64_t a1, int a2)
{
  v4 = sub_10000D690(a1);
  if (*(a1 + 756) == 2)
  {
    v5 = v4;
    v6 = a2 && *(a1 + 25) && *(a1 + 1408) && (*(a1 + 800) & 0x3F | v4) != 0;
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v8 = "TRUE";
      if (a2)
      {
        v9 = "TRUE";
      }

      else
      {
        v9 = "FALSE";
      }

      if (*(a1 + 25))
      {
        v10 = "TRUE";
      }

      else
      {
        v10 = "FALSE";
      }

      if (*(a1 + 1408))
      {
        v11 = "TRUE";
      }

      else
      {
        v11 = "FALSE";
      }

      v12 = *(a1 + 800);
      if ((v12 & 4) != 0)
      {
        v13 = "TRUE";
      }

      else
      {
        v13 = "FALSE";
      }

      if ((v12 & 0x3B) == 0)
      {
        v8 = "FALSE";
      }

      v14 = "Enabled";
      if (!v5)
      {
        v14 = "Disabled";
      }

      [off_100298C40 WFLog:3 message:{"%s: state %s, manager->enable.setting %s, manager->unlockedSinceBoot %s, SB state %s, Process state %s AlwaysOnWiFi %s manager app state %llu", "__WiFiManagerSetEnableState", v9, v10, v11, v13, v8, v14, v12}];
    }
  }

  else
  {
    v6 = a2 && *(a1 + 25) && *(a1 + 1408) != 0;
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v15 = "TRUE";
      if (a2)
      {
        v16 = "TRUE";
      }

      else
      {
        v16 = "FALSE";
      }

      if (*(a1 + 25))
      {
        v17 = "TRUE";
      }

      else
      {
        v17 = "FALSE";
      }

      if (!*(a1 + 1408))
      {
        v15 = "FALSE";
      }

      [off_100298C40 WFLog:3 message:{"%s: state %s, manager->enable.setting %s, manager->unlockedSinceBoot %s", "__WiFiManagerSetEnableState", v16, v17, v15, v18, v19, v20, v21}];
    }
  }

  objc_autoreleasePoolPop(v7);
  *(a1 + 24) = v6;

  sub_10000C910(a1, v6, 0);
}

uint64_t sub_10000D690(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (sub_10000CDC4(a1))
    {
      context[0] = v1;
      context[1] = 0xAAAAAAAA00000048;
      v6 = 0;
      v7 = 0;
      context[2] = 0;
      CFSetApplyFunction(*(v1 + 112), sub_100003B88, context);
      if (v6)
      {
        v1 = sub_100085A14(v1) == 0;
      }

      else
      {
        v1 = 0;
      }

      v2 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v3 = "Disabled";
        if (v1)
        {
          v3 = "Enabled";
        }

        [off_100298C40 WFLog:3 message:{"AlwaysOnWiFi: %s", v3}];
      }

      objc_autoreleasePoolPop(v2);
    }

    else
    {
      sub_10016F28C();
      return 0;
    }
  }

  else
  {
    sub_10016F2F8();
  }

  return v1;
}

uint64_t sub_10000D780(int a1, const void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *value)
{

  return CFDictionaryGetValueIfPresent(v16, a2, &value);
}

const void *sub_10000D7E8()
{
  v2 = *(v0 + 24);

  return CFArrayGetValueAtIndex(v2, 0);
}

const void *sub_10000D824(uint64_t a1)
{

  return sub_10000FF3C(v1, a1);
}

uint64_t sub_10000D83C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [+[NSString stringWithFormat:](NSString UTF8String:@"com.apple.wifid.%s"];
  v3 = os_transaction_create();
  objc_autoreleasePoolPop(v2);
  return v3;
}

const __CFNumber *sub_10000D89C(const __CFDictionary *a1)
{
  valuePtr = 0;
  result = CFDictionaryGetValue(a1, @"WAPI");
  if (result)
  {
    CFNumberGetValue(result, kCFNumberIntType, &valuePtr);
    return valuePtr;
  }

  return result;
}

unint64_t sub_10000D8DC(uint64_t a1, int a2)
{
  valuePtr = a2;
  result = sub_100009730(a1);
  if (result)
  {
    result = sub_10000A540(a1, @"AcceptEAPTypes");
    if (result)
    {
      result = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
      if (result)
      {
        v5 = sub_100011430();
        CFArrayGetCount(v5);
        v6 = sub_100021488();
        v9.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v6, v9, v2);
        CFRelease(v2);
        return FirstIndexOfValue != -1;
      }
    }
  }

  return result;
}

BOOL sub_10000D970(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    return (~sub_10000D89C(*(result + 16)) & 0xB) == 0 || (~sub_10000D89C(*(v1 + 16)) & 7) == 0;
  }

  return result;
}

const __CFDictionary *sub_10000DA34(uint64_t a1)
{
  result = CFDictionaryGetValue(*(a1 + 16), @"11U_INTERWORKING_IE");
  if (result)
  {
    result = CFDictionaryGetValue(result, @"INTERWORKING_ACCESS_NETWORK_TYPE");
    if (result)
    {
      sub_100011598(result);
      return 0;
    }
  }

  return result;
}

NSNumber *sub_10000DA98()
{
  v2 = *v0;

  return [NSNumber numberWithUnsignedInt:v2];
}

id sub_10000DAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 addFieldForKey:v5 value:a4 options:1];
}

void sub_10000DB58(void *value)
{

  CFDictionarySetValue(v1, v2, value);
}

id sub_10000DBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{

  return [v41 countByEnumeratingWithState:&a41 objects:v42 - 224 count:16];
}

double sub_10000DBF0(uint64_t a1)
{
  v1 = sub_10000A540(a1, @"networkUsage");

  return sub_10000DCEC(v1);
}

unint64_t sub_10000DC20(const void *a1)
{
  v2 = sub_10000A540(a1, @"lastJoined");
  result = sub_10000A540(a1, @"lastAutoJoined");
  if (v2 | result)
  {
    v5 = result;
    if (!result)
    {
      result = v2;
    }

    if (v2 && v5)
    {
      if (CFDateCompare(v2, v5, 0) == kCFCompareGreaterThan)
      {
        return v2;
      }

      else
      {
        return v5;
      }
    }
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"Network %@ Both autojoin and user join dates are NULL", sub_10000A878(a1)}];
    }

    objc_autoreleasePoolPop(v4);
    return 0;
  }

  return result;
}

double sub_10000DCEC(const void *a1)
{
  valuePtr = 0.0;
  v1 = 0.0;
  if (a1)
  {
    v3 = CFGetTypeID(a1);
    if (v3 == CFNumberGetTypeID())
    {
      CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr);
      return valuePtr;
    }
  }

  return v1;
}

uint64_t sub_10000E6B0(uint64_t a1, void *a2, CFIndex *a3, void *a4)
{
  *buffer = 0;
  if (!a2 || a3)
  {
    Count = CFArrayGetCount(*(a1 + 16));
    if (Count >= 1)
    {
      v9 = Count;
      v10 = 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v10 - 1);
        if (!ValueAtIndex)
        {
          return 4294963394;
        }

        v12 = ValueAtIndex;
        v20.location = 0;
        v20.length = 8;
        CFDataGetBytes(ValueAtIndex, v20, buffer);
        v13 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, buffer);
        if (!v13)
        {
          return 4294963394;
        }

        v14 = v13;
        v15 = CFSetContainsValue(*(a1 + 80), v13);
        CFRelease(v14);
        if (v10 >= v9)
        {
          break;
        }

        ++v10;
      }

      while (v15);
      if (v15)
      {
        return 4294963394;
      }

      if (!a2)
      {
LABEL_14:
        result = 0;
        if (a4)
        {
          *a4 = *buffer;
        }

        return result;
      }

      Length = CFDataGetLength(v12);
      v17 = Length - 8;
      if (Length != 8 && v17 <= *a3)
      {
        *a3 = v17;
        *a2 = CFDataGetBytePtr(v12) + 8;
        goto LABEL_14;
      }
    }
  }

  return 4294963394;
}

uint64_t sub_10000E7E8(uint64_t *a1, int a2)
{
  v11 = 72;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0;
  if (sub_10000E6B0(a1[22], &v12, &v11, &v10) || *(v12 + 56) != 1)
  {
    result = 1;
    if (a2 <= 0x39 && ((1 << a2) & 0x200000040000600) != 0)
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"Event %@ is not expected while there is no command pending", sub_10005EE58(a2), v9}];
      }

      goto LABEL_14;
    }

    return result;
  }

  result = 1;
  if (a2 > 56)
  {
    if (a2 == 57)
    {
      if (*v12 == 9)
      {
        return result;
      }
    }

    else if (a2 == 83)
    {
      if (*v12 == 12)
      {
        return result;
      }
    }

    else if (a2 != 193 || *v12 == 14)
    {
      return result;
    }

LABEL_28:
    v6 = objc_autoreleasePoolPush();
    v7 = off_100298C40;
    if (off_100298C40)
    {
      v8 = sub_10005EE58(a2);
      [v7 WFLog:4 message:{"Event %@ is not expected while command %@ is pending", v8, sub_1000262B0(*v12)}];
    }

LABEL_14:
    objc_autoreleasePoolPop(v6);
    return 0;
  }

  if (a2 == 9)
  {
    if (*v12 == 1)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (a2 == 10)
  {
    if (!*v12)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (a2 == 30 && *v12 != 5)
  {
    v5 = a1[533];
    if (v5)
    {
      v5(a1, 0, a1[534], 1);
    }

    goto LABEL_28;
  }

  return result;
}

void sub_10000E9B4(uint64_t a1, CFDictionaryRef theDict)
{
  v43 = 0;
  valuePtr = 0;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v39 = 0;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"LQM_TX_STATS_TX_SUCCESS");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr + 4);
      v5 = HIDWORD(valuePtr);
    }

    else
    {
      v5 = 0;
    }

    v6 = CFDictionaryGetValue(theDict, @"APPLE80211KEY_LQM_TX_STATS_TX_DROP_MISC");
    if (v6)
    {
      CFNumberGetValue(v6, kCFNumberSInt32Type, &v43 + 4);
      v7 = HIDWORD(v43);
    }

    else
    {
      v7 = 0;
    }

    v8 = v7 + v5;
    v9 = CFDictionaryGetValue(theDict, @"APPLE80211KEY_LQM_TX_STATS_TX_NO_BUFF");
    if (v9)
    {
      CFNumberGetValue(v9, kCFNumberSInt32Type, &v43);
      v10 = v43;
    }

    else
    {
      v10 = 0;
    }

    v11 = v8 + v10;
    v12 = CFDictionaryGetValue(theDict, @"APPLE80211KEY_LQM_TX_STATS_TX_NO_RESOURCE");
    if (v12)
    {
      CFNumberGetValue(v12, kCFNumberSInt32Type, &v42 + 4);
      v13 = HIDWORD(v42);
    }

    else
    {
      v13 = 0;
    }

    v14 = v11 + v13;
    v15 = CFDictionaryGetValue(theDict, @"APPLE80211KEY_LQM_TX_STATS_TX_NO_ACK");
    if (v15)
    {
      CFNumberGetValue(v15, kCFNumberSInt32Type, &v42);
      v16 = v42;
    }

    else
    {
      v16 = 0;
    }

    v17 = v14 + v16;
    v18 = CFDictionaryGetValue(theDict, @"APPLE80211KEY_LQM_TX_STATS_TX_CHIP_MODE_ERROR");
    if (v18)
    {
      CFNumberGetValue(v18, kCFNumberSInt32Type, &v41 + 4);
      v19 = HIDWORD(v41);
    }

    else
    {
      v19 = 0;
    }

    v20 = v17 + v19;
    v21 = CFDictionaryGetValue(theDict, @"APPLE80211KEY_LQM_TX_STATS_TX_EXPIRED");
    if (v21)
    {
      CFNumberGetValue(v21, kCFNumberSInt32Type, &v41);
      v22 = v41;
    }

    else
    {
      v22 = 0;
    }

    v23 = v20 + v22;
    v24 = CFDictionaryGetValue(theDict, @"APPLE80211KEY_LQM_TX_STATS_TX_FAIL");
    if (v24)
    {
      CFNumberGetValue(v24, kCFNumberSInt32Type, &valuePtr);
      v25 = valuePtr;
    }

    else
    {
      v25 = 0;
    }

    v26 = v23 + v25;
    v27 = CFDictionaryGetValue(theDict, @"APPLE80211KEY_LQM_TX_STATS_TX_FW_FREE_PACKET");
    if (v27)
    {
      CFNumberGetValue(v27, kCFNumberSInt32Type, &v40 + 4);
      v28 = HIDWORD(v40);
    }

    else
    {
      v28 = 0;
    }

    v29 = v26 + v28;
    v30 = CFDictionaryGetValue(theDict, @"APPLE80211KEY_LQM_TX_STATS_TX_MAX_RETRIES");
    if (v30)
    {
      CFNumberGetValue(v30, kCFNumberSInt32Type, &v40);
      v31 = v40;
    }

    else
    {
      v31 = 0;
    }

    v32 = v29 + v31;
    v33 = CFDictionaryGetValue(theDict, @"APPLE80211KEY_LQM_TX_STATS_TX_FORCE_LIFETIME_EXPIRED");
    if (v33)
    {
      CFNumberGetValue(v33, kCFNumberSInt32Type, &v39);
      v34 = v39;
    }

    else
    {
      v34 = 0;
    }

    v35 = v32 + v34;
    if (v35)
    {
      v36 = v35;
      v37 = (v35 - HIDWORD(valuePtr)) / v35 * 100.0;
      *(a1 + 2968) = v37;
      v38 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"LQM-TX: Success:%d(%.1f%%) FwFail:%d(%.1f%%) FwMaxRetries:%d(%.1f%%) NoACK:%d(%.1f%%) MiscDrops:%d(%.1f%%) NoBuf:%d(%.1f%%) FwNoRes:%d(%.1f%%) ChipErr:%d(%.1f%%) Exp:%d(%.1f%%) FwFcdExpiry:%d(%.1f%%) FwFree:%d(%.1f%%)", HIDWORD(valuePtr), SHIDWORD(valuePtr) / v36 * 100.0, valuePtr, valuePtr / v36 * 100.0, v40, v40 / v36 * 100.0, v42, v42 / v36 * 100.0, HIDWORD(v43), SHIDWORD(v43) / v36 * 100.0, v43, v43 / v36 * 100.0, HIDWORD(v42), SHIDWORD(v42) / v36 * 100.0, HIDWORD(v41), SHIDWORD(v41) / v36 * 100.0, v41, v41 / v36 * 100.0, v39, v39 / v36 * 100.0, HIDWORD(v40), SHIDWORD(v40) / v36 * 100.0}];
      }

      objc_autoreleasePoolPop(v38);
    }

    else
    {
      *(a1 + 2968) = 0;
    }
  }

  else
  {
    sub_10014346C();
  }
}

void sub_10000ED80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 4136);
    if (v4)
    {
      v6 = *(a1 + 4144);

      v4(a1, a2, v6, a3);
    }
  }

  else
  {
    sub_100156474();
  }
}

void sub_10000EDC4(int a1, int a2, uint64_t a3, CFDictionaryRef theDict)
{
  if (a3)
  {
    sub_10000E9B4(*(a3 + 120), theDict);
  }
}

CFTypeRef sub_10000EDD8(CFAllocatorRef bufferAllocator, const void *a2)
{
  v3 = CFWriteStreamCreateWithAllocatedBuffers(bufferAllocator, bufferAllocator);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (CFWriteStreamOpen(v3))
  {
    error = 0;
    CFPropertyListWrite(a2, v4, kCFPropertyListBinaryFormat_v1_0, 0, &error);
    CFWriteStreamClose(v4);
    if (error)
    {
      v5 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: CFPropertyListCreateWithData returned with error %@", "_CFPropertyListCreateBinaryData", error}];
      }

      objc_autoreleasePoolPop(v5);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10014A864(&error);
      }

      CFRelease(error);
    }

    v6 = CFWriteStreamCopyProperty(v4, kCFStreamPropertyDataWritten);
  }

  else
  {
    v6 = 0;
  }

  CFRelease(v4);
  return v6;
}

uint64_t sub_10000EEE0(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

id sub_10000EEEC(id result)
{
  if (result)
  {
    return [result _handleManagedEventNotification];
  }

  return result;
}

void sub_10000EF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Error %d from Managed Event Fetch", "-[WiFiUserInteractionMonitor _handleManagedEventNotification]_block_invoke", a2}];
    }

LABEL_4:

    objc_autoreleasePoolPop(v4);
    return;
  }

  if (!a3)
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Fetched managed event is %@", "-[WiFiUserInteractionMonitor _handleManagedEventNotification]_block_invoke", 0}];
    }

    goto LABEL_4;
  }

  v6 = *(a3 + 48);
  v7 = v6;
  if (v6)
  {
    v8 = [v6 copy];
    [*(a1 + 32) setAppAwareDetails:v8];

    v9 = [NSString stringWithUTF8String:kManagedEventKeyBackgroundCombinedFlowProperties];
    v10 = [v7 objectForKeyedSubscript:v9];
    [*(a1 + 32) setSymptomBackgroundFlowProperties:{objc_msgSend(v10, "unsignedLongLongValue")}];

    v11 = [NSString stringWithUTF8String:kManagedEventKeyForegroundCombinedFlowProperties];
    v12 = [v7 objectForKeyedSubscript:v11];
    [*(a1 + 32) setSymptomForegroundFlowProperties:{objc_msgSend(v12, "unsignedLongLongValue")}];

    v13 = [NSString stringWithUTF8String:kManagedEventKeyBackgroundSpecificFlowClassifications];
    v14 = [v7 objectForKeyedSubscript:v13];
    [*(a1 + 32) setSymptomBackgroundFlowClassification:{objc_msgSend(v14, "unsignedIntValue")}];

    v15 = [NSString stringWithUTF8String:kManagedEventKeyForegroundSpecificFlowClassifications];
    v16 = [v7 objectForKeyedSubscript:v15];
    [*(a1 + 32) setSymptomForegroundFlowClassification:{objc_msgSend(v16, "unsignedIntValue")}];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v17 = [*(a1 + 32) clients];
    v18 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v25;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v24 + 1) + 8 * i);
          v23 = [v22 callback];
          (v23)[2](v23, [v22 context], 4);
        }

        v19 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v19);
    }
  }
}

const __CFString *sub_10000F2A0(unsigned int a1)
{
  if (a1 > 6)
  {
    return @"Unknown";
  }

  else
  {
    return off_10025F418[a1];
  }
}

uint64_t sub_10000F2C4(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 5272);
  }

  else
  {
    return 0;
  }
}

void sub_10000F2F4(id a1, void *a2, unint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = a2;
  if (a2 && *(a2 + 4))
  {
    CFRetain(a2);
    v4 = *(v8[3] + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000F530;
    block[3] = &unk_10025EFD8;
    block[4] = &v7;
    block[5] = a3;
    dispatch_async(v4, block);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null manager or queue", "WiFiManagerScheduleWithQueue_block_invoke_13"}];
    }

    objc_autoreleasePoolPop(v5);
  }

  _Block_object_dispose(&v7, 8);
}

void sub_10000F40C(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = cf;
  if (cf && *(cf + 30))
  {
    CFRetain(cf);
    v5 = *(v9[3] + 240);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000F6A0;
    block[3] = &unk_1002613C0;
    block[4] = &v8;
    block[5] = a3;
    block[6] = *(a1 + 32);
    dispatch_async(v5, block);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null deviceManager or queue", "WiFiDeviceManagerScheduleWithQueue_block_invoke"}];
    }

    objc_autoreleasePoolPop(v6);
  }

  _Block_object_dispose(&v8, 8);
}

void sub_10000F530(uint64_t a1)
{
  v2 = *(a1 + 40);
  if ((v2 - 1) <= 1)
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: call state changed to %d", "WiFiManagerScheduleWithQueue_block_invoke_14", -[WiFiUserInteractionMonitor isWiFiCallInProgress](+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor, "sharedInstance"), "isWiFiCallInProgress")}];
    }

    objc_autoreleasePoolPop(v4);
    v5 = [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor isWiFiCallInProgress];
    v6 = *(*(*(a1 + 32) + 8) + 24);
    if (v5)
    {
      sub_10015866C(v6);
    }

    else
    {
      sub_100158814(v6);
    }

    sub_100079EEC(*(*(*(a1 + 32) + 8) + 24));
    v2 = *(a1 + 40);
  }

  if (v2 == 16)
  {
    v7 = [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor isGameModeActive];
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: game state changed to %d", "WiFiManagerScheduleWithQueue_block_invoke_14", v7}];
    }

    objc_autoreleasePoolPop(v8);
    v16 = *(*(*(a1 + 32) + 8) + 24);
    if (v7)
    {
      sub_100158974(v16, v9, v10, v11, v12, v13, v14, v15);
    }

    else
    {
      sub_100158A58(v16, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v3 = *(*(*(a1 + 32) + 8) + 24);
  if (v3)
  {
    CFRelease(v3);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void sub_10000F6A0(void *a1)
{
  v2 = *(*(a1[4] + 8) + 24);
  if (v2[30])
  {
    v3 = a1[5];
    if ((v3 - 1) <= 1)
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: call state changed to %d", "WiFiDeviceManagerScheduleWithQueue_block_invoke_2", -[WiFiUserInteractionMonitor isWiFiCallInProgress](+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor, "sharedInstance"), "isWiFiCallInProgress")}];
      }

      objc_autoreleasePoolPop(v4);
      v5 = [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor isWiFiCallInProgress];
      v6 = *(*(a1[4] + 8) + 24);
      if (v5)
      {
        *(v6 + 3465) = 1;
      }

      else
      {
        *(v6 + 3465) = 0;
        v7 = _os_feature_enabled_impl();
        v8 = *(*(a1[4] + 8) + 24);
        if (v7)
        {
          sub_100019814(v8, 0x1AuLL);
        }

        else
        {
          sub_1000BBDEC(v8, 5);
        }
      }

      v9 = *(*(a1[4] + 8) + 24);
      v10 = *(v9 + 7480);
      if (v10)
      {
        if (*(v9 + 3465))
        {
          v11 = 1;
        }

        else
        {
          v11 = *(v9 + 3464) != 0;
        }

        [v10 setCallState:v11];
        v9 = *(*(a1[4] + 8) + 24);
      }

      sub_100021870(v9, 0);
      v12 = a1[6];
      if (v12 && *(v12 + 441))
      {
        sub_100008DCC(v12, 5);
      }

      v3 = a1[5];
    }

    if (v3 == 16)
    {
      if ([+[WiFiUserInteractionMonitor isGameModeActive] sharedInstance]
      {
        v13 = *(*(a1[4] + 8) + 24);
        v14 = sub_100009664(*(v13 + 64));
        v15 = sub_100007D90(v13, v14, 1);
        if (v15)
        {
          v16 = v15;
          if (sub_1000A14BC(v15))
          {
            v17 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: in game mode. Inducing roam to try to get to the best AP on %@", "WiFiDeviceManagerScheduleWithQueue_block_invoke_2", v16}];
            }

            objc_autoreleasePoolPop(v17);
            [+[WiFiRoamManager sharedWiFiRoamManager](WiFiRoamManager "sharedWiFiRoamManager")];
          }

          CFRelease(v16);
        }
      }
    }

    v18 = *(*(a1[4] + 8) + 24);
    if (v18)
    {
      CFRelease(v18);
      *(*(a1[4] + 8) + 24) = 0;
    }
  }

  else
  {

    CFRelease(v2);
  }
}

void sub_10000F900(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    v5 = *(a1 + 2360);
    v6 = objc_autoreleasePoolPush();
    if (v5)
    {
      if (off_100298C40)
      {
        if ((a3 - 1) > 7)
        {
          v7 = @"Unknown";
        }

        else
        {
          v7 = off_100260E80[a3 - 1];
        }

        [off_100298C40 WFLog:3 message:{"%s: bundleId: %@ state: %@", "__WiFiManagerAppStateManagerBundleIdCallback", a2, v7}];
      }

      objc_autoreleasePoolPop(v6);
      if (a3 == 8)
      {

        sub_10000FA38();
      }
    }

    else
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: availabilty engine v2 is not enabed", "__WiFiManagerAppStateManagerBundleIdCallback"}];
      }

      objc_autoreleasePoolPop(v6);
    }
  }

  else
  {
    sub_10016BECC();
  }
}

void sub_10000FA38()
{
  sub_10000D798();
  v1 = v0;
  objc_autoreleasePoolPush();
  v2 = sub_10000D83C("WiFiManagerStart3BarsFetchForCurrentLocation");
  if (v1)
  {
    v3 = sub_10000FB4C(v1);
    v4 = [WiFiLocationManager isLocationValid:v3 uptoSeconds:0 isHighAccuracy:3600.0];
    v5 = objc_autoreleasePoolPush();
    if (v4)
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"%s: fetching networks for current location"];
      }

      objc_autoreleasePoolPop(v5);
      [+[WiFi3BarsObserver sharedWiFi3BarsObserver](WiFi3BarsObserver "sharedWiFi3BarsObserver")];
      if (v3)
      {
LABEL_6:
        CFRelease(v3);
      }
    }

    else
    {
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"%s: location not valid"];
      }

      objc_autoreleasePoolPop(v5);
      if (v3)
      {
        goto LABEL_6;
      }
    }
  }

  sub_1000084B8();

  objc_autoreleasePoolPop(v6);
}

id *sub_10000FB4C(id *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1)
  {
    if ([a1[224] isAuthorized])
    {
      a1 = [objc_msgSend(a1[224] "latestLocation")];
    }

    else
    {
      a1 = 0;
    }
  }

  objc_autoreleasePoolPop(v2);
  return a1;
}

BOOL sub_10000FC04(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_FAULT);
}

const __CFNumber *sub_10000FC60(uint64_t a1)
{
  valuePtr = 0;
  if (a1)
  {
    result = sub_10000A540(a1, @"NetworkOfInterestHomeState");
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
    sub_100178784();
    return 0;
  }

  return result;
}

void sub_10000FE0C(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 8:
      dispatch_release(*(a1 + 72));

      CFRelease(a1);
      break;
    case 7:
      v5 = *(dispatch_mach_msg_get_msg() + 12);
      v6 = mach_task_self_;

      mach_port_mod_refs(v6, v5, 1u, -1);
      break;
    case 2:
      if (*(dispatch_mach_msg_get_msg() + 20) == 70)
      {
        v3 = *(a1 + 96);
        if (v3)
        {
          v4 = *(a1 + 104);

          v3(a1, v4);
        }
      }

      else if ((dispatch_mach_mig_demux() & 1) == 0)
      {
        msg = dispatch_mach_msg_get_msg();

        mach_msg_destroy(msg);
      }

      break;
  }
}

const void *sub_10000FF3C(unsigned int a1, uint64_t a2)
{
  v3 = sub_10000FF88(a1);
  v4 = v3;
  if (v3 && CFGetTypeID(v3) != a2)
  {
    CFRelease(v4);
    return 0;
  }

  return v4;
}

const void *sub_10000FF88(unsigned int a1)
{
  pthread_mutex_lock(&stru_1002979D8);
  if (qword_1002985D0)
  {
    Value = CFDictionaryGetValue(qword_1002985D0, a1);
    v3 = Value;
    if (Value)
    {
      CFRetain(Value);
    }
  }

  else
  {
    v3 = 0;
  }

  pthread_mutex_unlock(&stru_1002979D8);
  return v3;
}

uint64_t sub_10000FFF0()
{
  result = qword_100298520;
  if (!qword_100298520)
  {
    pthread_once(&stru_100297868, sub_100059260);
    return qword_100298520;
  }

  return result;
}

const void *sub_100010040(uint64_t a1, const void *a2)
{
  if (a1 && a2 && (v2 = *(a1 + 112)) != 0)
  {
    return CFDictionaryGetValue(v2, a2);
  }

  else
  {
    return 0;
  }
}

void sub_10001005C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int valuePtr, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_100011520();
  a24 = v25;
  a25 = v26;
  v28 = v27;
  v30 = v29;
  sub_10000842C();
  valuePtr = 0;
  v36 = sub_100017AA0(v31, v32, v33, v34, v35);
  v37 = sub_10000D824(v36);
  if (v37)
  {
    v38 = v37;
    v39 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      sub_10000715C(v38);
      [sub_10002D390() WFLog:? message:?];
    }

    objc_autoreleasePoolPop(v39);
    if ((sub_100010038(v38) & 1) == 0)
    {
      v40 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000715C(v38);
        [sub_1000A9AFC() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v40);
      goto LABEL_26;
    }

    v41 = sub_100029DC0();
    if (!sub_100017AC4(v41, v42))
    {
LABEL_26:
      CFRelease(v38);
      goto LABEL_27;
    }

    v43 = sub_100021D64();
    v44 = sub_100010040(v43, v39);
    if (!v44 || (v45 = sub_1000102AC(v44, v39)) == 0)
    {
      v54 = v39;
LABEL_25:
      CFRelease(v54);
      goto LABEL_26;
    }

    v46 = v45;
    if (sub_100009730(v45))
    {
      if ((sub_100010038(v38) & 0x11) == 1)
      {
        if (!sub_10014B788(v38, @"com.apple.wifi.eap-nearby-device-setup-config-copy"))
        {
          v50 = objc_autoreleasePoolPush();
          v51 = off_100298C40;
          if (off_100298C40)
          {
            sub_10000715C(v38);
            [v51 WFLog:4 message:"%s Client %@ is not entitled for EAPNearbySetup"];
          }

          objc_autoreleasePoolPop(v50);
          goto LABEL_22;
        }

        sub_100059288(v38, 17);
      }

      valuePtr = sub_1000D6A5C(v46);
      if (valuePtr == 1 && !sub_1000D6AC8(v46))
      {
        valuePtr = 4;
        Default = CFAllocatorGetDefault();
        v48 = CFNumberCreate(Default, kCFNumberIntType, &valuePtr);
        if (v48)
        {
          v49 = v48;
          sub_10000AD34(v46, @"ShareableStatus", v48);
          CFRelease(v49);
        }
      }
    }

LABEL_22:
    v52 = sub_100017C00(v46);
    if (v52)
    {
      v53 = v52;
      sub_100017C18(v52, v30, v28);
      CFRelease(v39);
      v39 = v53;
    }

    CFRelease(v39);
    v54 = v46;
    goto LABEL_25;
  }

LABEL_27:
  v55 = sub_100029DC0();
  sub_100017CC0(v55, v56);
  sub_10001091C();
}

void sub_1000102B4(uint64_t a1, uint64_t a2, unsigned int a3, const __CFDictionary *a4)
{
  if (a1 && (v8 = *(a1 + 64)) != 0 && (v9 = CFStringCompare(v8, @"SpringBoard", 0), a3 == 1) && v9 == kCFCompareEqualTo)
  {
    Value = CFDictionaryGetValue(a4, @"LINK_CHANGED_IS_LINKDOWN");
    if (CFDictionaryGetValue(a4, @"LINKDOWN_REASON_CODE") == 7)
    {
      *(a1 + 180) = 256;
      v11 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"link recovery started, suppressing transient UI state for %d seconds", 4}];
      }

      objc_autoreleasePoolPop(v11);
      v12 = sub_10000EDD8(kCFAllocatorDefault, a4);
      v13 = sub_100010908(a2);
      v14 = sub_100009664(v13);
      if (v14)
      {
        v15 = sub_10000EDD8(kCFAllocatorDefault, v14);
        v16 = v15;
        if (v15)
        {
          BytePtr = CFDataGetBytePtr(v15);
          Length = CFDataGetLength(v16);
          if (!v12)
          {
            goto LABEL_49;
          }

LABEL_36:
          v40 = CFDataGetBytePtr(v12);
          v41 = CFDataGetLength(v12);
LABEL_50:
          v49 = dispatch_time(0, 4000000000);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10005A558;
          block[3] = &unk_10025F5B0;
          block[4] = a1;
          block[5] = BytePtr;
          v51 = Length;
          v52 = 1;
          block[6] = v40;
          v53 = v41;
          dispatch_after(v49, qword_100298C50, block);
          if (v12)
          {
            CFRelease(v12);
          }

          if (v16)
          {
            CFRelease(v16);
          }

          return;
        }

        Length = 0;
        BytePtr = 0;
        if (v12)
        {
          goto LABEL_36;
        }
      }

      else
      {
        Length = 0;
        BytePtr = 0;
        v16 = 0;
        if (v12)
        {
          goto LABEL_36;
        }
      }

LABEL_49:
      v40 = 0;
      v41 = 0;
      goto LABEL_50;
    }

    if (!Value && *(a1 + 181))
    {
      *(a1 + 180) = 1;
    }
  }

  else if (a3 <= 0x2C)
  {
    if (((1 << a3) & 0x100000060004) != 0)
    {
      v19 = 1 << a3;
      goto LABEL_21;
    }

    if (((1 << a3) & 0x2200200) != 0)
    {
      v19 = *(a1 + 128);
      goto LABEL_21;
    }
  }

  v19 = sub_10001083C(a1, a2);
LABEL_21:
  if (((v19 >> a3) & 1) == 0)
  {
    return;
  }

  v20 = a3;
  v21 = sub_100010908(a2);
  v22 = sub_100009664(v21);
  if (v22)
  {
    v23 = sub_10000EDD8(kCFAllocatorDefault, v22);
    v24 = v23;
    if (v23)
    {
      v25 = CFDataGetBytePtr(v23);
      v26 = CFDataGetLength(v24);
      if (!a4)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v26 = 0;
      v25 = 0;
      if (!a4)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    v26 = 0;
    v25 = 0;
    v24 = 0;
    if (!a4)
    {
      goto LABEL_41;
    }
  }

  v27 = CFGetTypeID(a4);
  if (v27 == CFDataGetTypeID())
  {
    v28 = CFDataGetBytePtr(a4);
    v29 = CFDataGetLength(a4);
LABEL_43:
    v44 = *(a1 + 96);
    v45 = v25;
    v46 = v26;
    v47 = v20;
    v48 = v28;
    goto LABEL_44;
  }

  if (a3 != 10)
  {
    v42 = sub_10000EDD8(kCFAllocatorDefault, a4);
    if (v42)
    {
      v31 = v42;
      v43 = CFDataGetBytePtr(v42);
      v39 = CFDataGetLength(v31);
      v34 = *(a1 + 96);
      v35 = v25;
      v36 = v26;
      v37 = v20;
      v38 = v43;
      goto LABEL_39;
    }

LABEL_41:
    v28 = 0;
    goto LABEL_42;
  }

  v28 = sub_100017C00(a4);
  if (!v28)
  {
LABEL_42:
    v29 = 0;
    goto LABEL_43;
  }

  v30 = sub_10000EDD8(kCFAllocatorDefault, v28);
  if (!v30)
  {
    CFRelease(v28);
    v44 = *(a1 + 96);
    v45 = v25;
    v46 = v26;
    v47 = v20;
    v48 = 0;
    v29 = 0;
LABEL_44:
    sub_10001073C(v44, v45, v46, v47, v48, v29, 0);
    if (!v24)
    {
      return;
    }

    goto LABEL_45;
  }

  v31 = v30;
  v32 = CFDataGetBytePtr(v30);
  v33 = CFDataGetLength(v31);
  CFRelease(v28);
  v34 = *(a1 + 96);
  v35 = v25;
  v36 = v26;
  v37 = v20;
  v38 = v32;
  v39 = v33;
LABEL_39:
  sub_10001073C(v34, v35, v36, v37, v38, v39, 0);
  CFRelease(v31);
  if (!v24)
  {
    return;
  }

LABEL_45:

  CFRelease(v24);
}

uint64_t sub_10001073C(int a1, vm_address_t a2, int a3, uint64_t a4, uint64_t a5, int a6, mach_msg_timeout_t timeout)
{
  v13 = a2;
  v14 = 27918592;
  v15[0] = a3;
  *&v15[1] = a5;
  v15[3] = 27918592;
  v16[0] = a6;
  *&v16[1] = NDR_record;
  v16[3] = a3;
  v17 = a4;
  v18 = a6;
  *msg = 0xAAAAAAAA80000013;
  *&msg[8] = a1;
  *&msg[12] = xmmword_1001CE910;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(msg);
  }

  v10 = mach_msg(msg, 2097169, 0x54u, 0, 0, timeout, 0);
  if (v10 == 268435460)
  {
    if (v13 != a2)
    {
      mig_deallocate(v13, v15[0]);
    }

    if (*&v15[1] != a5)
    {
      mig_deallocate(*&v15[1], v16[0]);
    }
  }

  return v10;
}

const __CFNumber *sub_10001083C(uint64_t a1, uint64_t a2)
{
  valuePtr = 0;
  if (!a1 || !*(a1 + 120))
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: invalid wifi client ref", "WiFiClientGetDeviceEventMask"}];
    }

    objc_autoreleasePoolPop(v6);
    return 0;
  }

  if (!a2)
  {
    sub_10014BD38();
    return 0;
  }

  v3 = sub_100010908(a2);
  if (!v3)
  {
    sub_10014BCCC();
    return 0;
  }

  v4 = sub_100009664(v3);
  if (!v4)
  {
    sub_10014BC60();
    return 0;
  }

  result = CFDictionaryGetValue(*(a1 + 120), v4);
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt64Type, &valuePtr);
    return valuePtr;
  }

  return result;
}

uint64_t sub_10001095C()
{

  return sub_10000FFF0();
}

void sub_100010998(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  valuePtr = 0;
  v79 = 0;
  v77 = 0;
  v78 = 0;
  v76 = 0;
  if (!a3)
  {
    v69 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: lqmDict is null", "__WiFiDeviceProcessRSSIEvent"}];
    }

    objc_autoreleasePoolPop(v69);
    return;
  }

  v5 = a3;
  sub_10001131C();
  if (*(v6 + 208))
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s - Hijacking the RSSI event with simulated link:%@", "__WiFiDeviceProcessRSSIEvent", *(v3 + 27)}];
    }

    objc_autoreleasePoolPop(v7);
    v5 = *(v3 + 27);
  }

  v8 = CFDictionaryGetValue(v5, @"RSSI");
  if (!v8)
  {
    return;
  }

  CFNumberGetValue(v8, kCFNumberSInt32Type, &valuePtr + 4);
  v9 = sub_100011374(SHIDWORD(valuePtr));
  *&valuePtr = v9;
  *(v3 + 64) = HIDWORD(valuePtr);
  *(v3 + 65) = v9;
  v10 = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloatType, &valuePtr);
  if (!v10)
  {
    v70 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null scaledRSSINumRef", "__WiFiDeviceProcessRSSIEvent"}];
    }

    objc_autoreleasePoolPop(v70);
    return;
  }

  v11 = v10;
  v12 = sub_1000113AC();
  MutableCopy = CFDictionaryCreateMutableCopy(v12, v13, v5);
  if (!MutableCopy)
  {
    v71 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null lqmMutableDict", "__WiFiDeviceProcessRSSIEvent"}];
    }

    objc_autoreleasePoolPop(v71);
    v68 = v11;
    goto LABEL_129;
  }

  v15 = MutableCopy;
  CFDictionaryAddValue(MutableCopy, @"SCALED_RSSI", v11);
  theDict = 0;
  value = 0;
  v3[299] = 0;
  if (CFDictionaryGetValueIfPresent(v5, @"CCA", &value))
  {
    v16 = value;
    if (value)
    {
      v3[300] = 0;
      CFNumberGetValue(v16, kCFNumberSInt8Type, v3 + 300);
      v3[299] = 1;
    }
  }

  if (CFDictionaryGetValueIfPresent(v5, @"CCA_STATS", &theDict))
  {
    v17 = theDict;
    if (theDict)
    {
      v86 = 0;
      v84 = 0;
      number = 0;
      *(v3 + 301) = 0;
      v3[303] = 0;
      if (CFDictionaryGetValueIfPresent(v17, @"CCA_SELF_TOTAL", &v86) && v86)
      {
        CFNumberGetValue(v86, kCFNumberSInt8Type, v3 + 301);
      }

      if (CFDictionaryGetValueIfPresent(theDict, @"CCA_OTHER_TOTAL", &number) && number)
      {
        CFNumberGetValue(number, kCFNumberSInt8Type, v3 + 302);
      }

      if (CFDictionaryGetValueIfPresent(theDict, @"CCA_INTERFERENCE_TOTAL", &v84) && v84)
      {
        CFNumberGetValue(v84, kCFNumberSInt8Type, v3 + 303);
      }

      if (!v3[299])
      {
        v3[300] = v3[302] + v3[301] + v3[303];
        v3[299] = 1;
      }
    }
  }

  v3[264] = 0;
  if (CFDictionaryGetValueIfPresent(v5, @"SNR", &v78))
  {
    v18 = v78;
    if (v78)
    {
      *(v3 + 34) = 0;
      CFNumberGetValue(v18, kCFNumberSInt16Type, &v79);
      *(v3 + 34) = v79;
      v3[264] = 1;
      CFDictionaryAddValue(v15, @"SNR", v78);
    }
  }

  v3[280] = 0;
  if (CFDictionaryGetValueIfPresent(v5, @"NOISE", &v77))
  {
    v19 = v77;
    if (v77)
    {
      *(v3 + 36) = 0;
      CFNumberGetValue(v19, kCFNumberSInt16Type, &v79 + 2);
      *(v3 + 36) = SHIWORD(v79);
      v3[280] = 1;
      CFDictionaryAddValue(v15, @"NOISE", v77);
    }
  }

  v72 = 0;
  v73 = 0;
  if (CFDictionaryGetValueIfPresent(v5, @"PER_CORE_RSSI", &v76))
  {
    v20 = sub_10001144C(v76, &v73, &v72);
    v3[296] = v20;
    if (v20)
    {
      *(v3 + 297) = 0;
      v21 = v72;
      v3[297] = v73;
      v3[298] = v21;
      CFDictionaryAddValue(v15, @"PER_CORE_RSSI", v76);
    }
  }

  else
  {
    v3[296] = 0;
  }

  if (CFDictionaryGetValueIfPresent(v5, @"PER_CORE_NOISE", &v76) && v76)
  {
    CFDictionaryAddValue(v15, @"PER_CORE_NOISE", v76);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v23 = CFDateCreate(kCFAllocatorDefault, Current);
  if (v23)
  {
    CFDictionaryAddValue(v15, @"LQMTIMESTAMP", v23);
  }

  v24 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, v3 + 3588);
  CFDictionaryAddValue(v15, @"WiFiIPState", v24);
  v25 = &kCFBooleanTrue;
  if (!v3[3584])
  {
    v25 = &kCFBooleanFalse;
  }

  CFDictionaryAddValue(v15, @"WiFiHasNoGatewayIP", *v25);
  if (v24)
  {
    CFRelease(v24);
  }

  v26 = CFAbsoluteTimeGetCurrent();
  v27 = v3 + 304;
  v28 = *(v3 + 160);
  v29 = *(v3 + 159);
  if (v29)
  {
    v30 = v28 - 1;
    if (!v28)
    {
      v30 = 29;
    }

    v31 = *&v27[32 * v30 + 24];
    sub_100011504();
    if (v32)
    {
      v33 = objc_autoreleasePoolPush();
      v34 = sub_100011554();
      if (v34)
      {
        [v34 WFLog:3 message:{"Too frequent(%f secs) rssi event from driver, ignore updating RSSI in RSSI history\n", v4}];
      }

      goto LABEL_112;
    }
  }

  if (v28 == 30)
  {
    v28 = 0;
  }

  v35 = &v27[32 * v28];
  v36 = *(v3 + 36);
  *v35 = *(v3 + 64);
  *(v35 + 1) = v36;
  *(v35 + 2) = *(v3 + 34);
  *(v35 + 3) = v26;
  if (v29 > 29)
  {
    if (v28 == *(v3 + 158))
    {
      if (v28 == 29)
      {
        v37 = 0;
      }

      else
      {
        v37 = v28 + 1;
      }

      *(v3 + 158) = v37;
    }
  }

  else
  {
    *(v3 + 159) = v29 + 1;
  }

  *(v3 + 160) = v28 + 1;
  v38 = CFAbsoluteTimeGetCurrent();
  v88 = 0;
  v89 = 0;
  v86 = 0;
  v87 = 0;
  v84 = 0;
  number = 0;
  v82 = 0;
  v83 = 0;
  v81 = 0;
  if (CFDictionaryGetValueIfPresent(v15, @"TXFRAMES", &number) && number)
  {
    CFNumberGetValue(number, kCFNumberIntType, &v89);
  }

  if (CFDictionaryGetValueIfPresent(v15, @"TXFAIL", &v86) && v86)
  {
    CFNumberGetValue(v86, kCFNumberIntType, &v89 + 4);
  }

  if (CFDictionaryGetValueIfPresent(v15, @"RXBEACONFRMS", &v84) && v84)
  {
    CFNumberGetValue(v84, kCFNumberIntType, &v88 + 4);
  }

  if (CFDictionaryGetValueIfPresent(v15, @"RXBEACONSCHED", &v83) && v83)
  {
    CFNumberGetValue(v83, kCFNumberIntType, &v88);
  }

  if (CFDictionaryGetValueIfPresent(v15, @"TXFWFAIL", &v82) && v82)
  {
    CFNumberGetValue(v82, kCFNumberIntType, &v87 + 4);
  }

  if (CFDictionaryGetValueIfPresent(v15, @"TXFWFRAMES", &v81) && v81)
  {
    CFNumberGetValue(v81, kCFNumberIntType, &v87);
  }

  v40 = *(v3 + 408);
  if (v40 >= 0x1F)
  {
    v41 = objc_autoreleasePoolPush();
    v42 = sub_100011554();
    if (v42)
    {
      [v42 WFLog:4 message:{"%s, Invalid currIndx %ld. Resetting!\n", "__WiFiDeviceUpdateTransmitReceiveHistory", *(v3 + 408)}];
    }

    objc_autoreleasePoolPop(v24);
    goto LABEL_83;
  }

  if (v40 == 30)
  {
LABEL_83:
    v40 = 0;
    *(v3 + 408) = 0;
  }

  v43 = v3 + 2296;
  v44 = *(v3 + 407);
  if (!v44)
  {
    goto LABEL_93;
  }

  v45 = v40 - 1;
  if (!v40)
  {
    v45 = 29;
  }

  v46 = v38 - *&v43[32 * v45 + 24];
  v39 = -v46;
  if (v46 >= 0.0)
  {
    v39 = v38 - *&v43[32 * v45 + 24];
  }

  if (v39 < 1.0)
  {
    v47 = objc_autoreleasePoolPush();
    v48 = sub_100011554();
    if (v48)
    {
      [v48 WFLog:3 message:{"Too frequent(%f secs) LQM event from driver, ignore updating txrx history\n", *&v46}];
    }

    objc_autoreleasePoolPop(v24);
  }

  else
  {
LABEL_93:
    v49 = v89;
    v50 = &v43[32 * v40];
    *v50 = v89;
    v51 = v87;
    *(v50 + 2) = v87;
    v52 = v88;
    *(v50 + 4) = v88;
    if (v49)
    {
      LODWORD(v39) = HIDWORD(v89);
      v39 = *&v39 / v49 * 100.0;
      v49 = v39;
    }

    v50[4] = v49;
    if (v51)
    {
      LODWORD(v39) = HIDWORD(v87);
      v51 = (*&v39 / v51 * 100.0);
    }

    v50[12] = v51;
    if (v52)
    {
      if (v52 > HIDWORD(v88))
      {
        v52 = ((v52 - HIDWORD(v88)) / v52 * 100.0);
      }

      else
      {
        LOBYTE(v52) = 0;
      }
    }

    v50[20] = v52;
    *(v50 + 3) = v38;
    if (v44 <= 29)
    {
      *(v3 + 407) = v44 + 1;
    }

    *(v3 + 408) = v40 + 1;
  }

  if (CFDictionaryContainsKey(v15, @"PER_CORE_RSSI"))
  {
    v53 = CFAbsoluteTimeGetCurrent();
    v54 = v3 + 1288;
    v55 = *(v3 + 223);
    v56 = *(v3 + 222);
    if (!v56)
    {
      goto LABEL_113;
    }

    v57 = v55 - 1;
    if (!v55)
    {
      v57 = 29;
    }

    v58 = *&v54[16 * v57 + 8];
    sub_100011504();
    if (!v32)
    {
LABEL_113:
      if (v55 == 30)
      {
        v55 = 0;
      }

      v61 = &v54[16 * v55];
      *v61 = *(v3 + 297);
      v61[1] = v53;
      if (v56 > 29)
      {
        if (v55 == *(v3 + 221))
        {
          if (v55 == 29)
          {
            v62 = 0;
          }

          else
          {
            v62 = v55 + 1;
          }

          *(v3 + 221) = v62;
        }
      }

      else
      {
        *(v3 + 222) = v56 + 1;
      }

      *(v3 + 223) = v55 + 1;
      goto LABEL_123;
    }

    v59 = objc_autoreleasePoolPush();
    v60 = sub_100011554();
    if (v60)
    {
      [v60 WFLog:3 message:{"Too frequent(%f secs) per-Core Rssi event from driver, ignore updating Core0, Core1 RSSI in Per Core RSSI History\n", *&v38}];
    }

LABEL_112:
    objc_autoreleasePoolPop(v24);
  }

LABEL_123:
  v63 = objc_autoreleasePoolPush();
  v64 = sub_100011554();
  if (v64)
  {
    [v64 WFLog:3 message:{"%s Feeding RSSI data to LQM - RSSI:%d Core0-RSSI:%d Core1-RSSI:%d \n", "__WiFiDeviceProcessRSSIEvent", *(v3 + 64), v3[297], v3[298]}];
  }

  objc_autoreleasePoolPop(v24);
  if (*(v3 + 515))
  {
    v65 = *(v3 + 516);
    v66 = sub_100011580();
    v67(v66);
  }

  CFRelease(v11);
  CFRelease(v15);
  if (v23)
  {
    v68 = v23;
LABEL_129:
    CFRelease(v68);
  }
}

uint64_t sub_10001134C(uint64_t a1, _DWORD *a2)
{
  *a2 = 0;

  return sub_10000FFF0();
}

float sub_100011374(float a1)
{
  v1 = a1 + 77.5;
  v2 = fabsf(sqrtf((v1 * v1) + 450.0));
  return (v1 / (v2 + v2)) + 0.5;
}

void sub_1000113B8()
{
  v2 = v0[366];

  dispatch_async_f(v2, v0, sub_10004B7AC);
}

uint64_t sub_10001144C(const __CFArray *a1, void *a2, void *a3)
{
  if (a1 && CFArrayGetCount(a1) == 2)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
    v7 = CFArrayGetValueAtIndex(a1, 1);
    if (ValueAtIndex)
    {
      CFNumberGetValue(ValueAtIndex, kCFNumberNSIntegerType, a2);
    }

    if (v7)
    {
      CFNumberGetValue(v7, kCFNumberNSIntegerType, a3);
      v8 = 1;
      goto LABEL_9;
    }
  }

  else
  {
    ValueAtIndex = 0;
  }

  v8 = 0;
LABEL_9:
  if (ValueAtIndex)
  {
    return 1;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_1000114EC(uint64_t a1, const void *a2)
{

  return CFDictionaryGetValueIfPresent(v2, a2, (v3 - 104));
}

void sub_10001156C()
{
  v0[1312] = 0;
  v0[2760] = 0;
  v0[169] = 0;
  v0[208] = 0;
}

uint64_t sub_100011598(const __CFNumber *a1)
{

  return CFNumberGetValue(a1, kCFNumberSInt8Type, (v1 - 1));
}

void sub_1000115B0(int a1, uint64_t a2, uint64_t a3, CFDictionaryRef theDict)
{
  v82 = 0.0;
  if (!a3)
  {
    return;
  }

  v7 = (a3 + 7138);
  if (theDict)
  {
    if (*(a3 + 7512) != 1 || *(a3 + 8718) != 1 || (*(a3 + 8720) & 1) != 0)
    {
LABEL_56:
      value = 0;
      v93[0] = 0;
      v90 = 0;
      v91 = 0;
      v87 = 0;
      v88 = 0;
      v85 = 0;
      valuePtr = 0;
      v84 = 0;
      v83 = 0;
      v40 = *(a3 + 3560);
      if (v40)
      {
        if (sub_10000A7CC(v40))
        {
          v89 = CFDictionaryGetValue(theDict, @"RSSI");
          if (v89)
          {
            if (CFAbsoluteTimeGetCurrent() - *(a3 + 744) >= 5.0 && *(a3 + 948) == 1)
            {
              ++*(a3 + 888);
              if (CFDictionaryGetValueIfPresent(theDict, @"TXFAIL", &v88) && v88)
              {
                CFNumberGetValue(v88, kCFNumberIntType, &v84);
              }

              if (CFDictionaryGetValueIfPresent(theDict, @"SNR", v93) && v93[0])
              {
                CFNumberGetValue(v93[0], kCFNumberSInt32Type, &valuePtr + 4);
              }

              if (CFDictionaryGetValueIfPresent(theDict, @"CCA", &value) && value)
              {
                CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr);
              }

              if (CFDictionaryGetValueIfPresent(theDict, @"RXRATE", &v90) && v90)
              {
                CFNumberGetValue(v90, kCFNumberSInt32Type, &v85);
              }

              if (CFDictionaryGetValueIfPresent(theDict, @"TXRATE", &v91) && v91)
              {
                CFNumberGetValue(v91, kCFNumberSInt32Type, &v85 + 4);
              }

              if (CFDictionaryGetValueIfPresent(theDict, @"RSSI", &v89) && v89)
              {
                CFNumberGetValue(v89, kCFNumberSInt32Type, &v84 + 4);
              }

              if (CFDictionaryGetValueIfPresent(theDict, @"TXFRAMES", &v87) && v87)
              {
                CFNumberGetValue(v87, kCFNumberSInt32Type, &v83);
              }

              v41 = HIDWORD(v85);
              v42 = *(a3 + 888);
              if (SHIDWORD(v85) >= 1)
              {
                v43 = *(a3 + 756);
                if (v43 >= SHIDWORD(v85))
                {
                  v43 = HIDWORD(v85);
                }

                *(a3 + 756) = v43;
                v44 = *(a3 + 760);
                if (v44 <= v41)
                {
                  v44 = v41;
                }

                *(a3 + 760) = v44;
                *(a3 + 768) = *(a3 + 768) + (v41 - *(a3 + 768)) / v42;
                *(a3 + 764) = v41;
              }

              v45 = v85;
              if (v85 >= 1)
              {
                v46 = *(a3 + 776);
                if (v46 >= v85)
                {
                  v46 = v85;
                }

                *(a3 + 776) = v46;
                v47 = *(a3 + 780);
                if (v47 <= v45)
                {
                  v47 = v45;
                }

                *(a3 + 780) = v47;
                *(a3 + 792) = *(a3 + 792) + (v45 - *(a3 + 792)) / v42;
                *(a3 + 784) = v45;
              }

              v48 = valuePtr;
              if (valuePtr >= 1)
              {
                v49 = *(a3 + 848);
                if (v49 >= valuePtr)
                {
                  v49 = valuePtr;
                }

                *(a3 + 848) = v49;
                v50 = *(a3 + 852);
                if (v50 <= v48)
                {
                  v50 = v48;
                }

                *(a3 + 852) = v50;
                *(a3 + 864) = *(a3 + 864) + (v48 - *(a3 + 864)) / v42;
                *(a3 + 856) = v48;
              }

              v51 = HIDWORD(valuePtr);
              if (SHIDWORD(valuePtr) >= 1)
              {
                v52 = *(a3 + 800);
                if (v52 >= SHIDWORD(valuePtr))
                {
                  v52 = HIDWORD(valuePtr);
                }

                *(a3 + 800) = v52;
                v53 = *(a3 + 804);
                if (v53 <= v51)
                {
                  v53 = v51;
                }

                *(a3 + 804) = v53;
                *(a3 + 816) = *(a3 + 816) + (v51 - *(a3 + 816)) / v42;
                *(a3 + 808) = v51;
              }

              v54 = HIDWORD(v84);
              if (v84 < 0)
              {
                v55 = *(a3 + 824);
                if (v55 >= SHIDWORD(v84))
                {
                  v55 = HIDWORD(v84);
                }

                *(a3 + 824) = v55;
                v56 = *(a3 + 828);
                if (v56 <= v54)
                {
                  v56 = v54;
                }

                *(a3 + 828) = v56;
                *(a3 + 840) = *(a3 + 840) + (v54 - *(a3 + 840)) / v42;
                *(a3 + 832) = v54;
              }

              v57 = v84;
              *(a3 + 896 + 4 * ((v42 - 1) % 0xC)) = v84;
              if (v57)
              {
                v58 = *(a3 + 944) + 1;
                *(a3 + 944) = v58;
                if (v58 >= 3 && (*(a3 + 880) == 0.0 || CFAbsoluteTimeGetCurrent() - *(a3 + 880) >= 60.0))
                {
                  ++*(a3 + 872);
                  v59 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:3 message:{"%s: numberOfTxErrorEvents increased to %d", "__WiFiDeviceManagerTrackCarPlayLinkQuality", *(a3 + 872)}];
                  }

                  objc_autoreleasePoolPop(v59);
                  *(a3 + 880) = CFAbsoluteTimeGetCurrent();
                }
              }

              if (*(a3 + 896 + 4 * (*(a3 + 888) % 0xCu)))
              {
                --*(a3 + 944);
              }

              v60 = (a3 + 984);
              *(a3 + 952) += v83;
              v61 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: rssi(max:min:avg:last) %d:%d:%d:%d, snr %d:%d:%d:%d, cca %d:%d:%d:%d, txRate %d:%d:%d:%d, rxRate %d:%d:%d:%d, numberOfTxErrorEvents %u, numberOfNoneZeroPer %u, roamedCount %u, totalTxFrames %llu", "__WiFiDeviceManagerTrackCarPlayLinkQuality", *(a3 + 828), *(a3 + 824), *(a3 + 840), *(a3 + 832), *(a3 + 804), *(a3 + 800), *(a3 + 816), *(a3 + 808), *(a3 + 852), *(a3 + 848), *(a3 + 864), *(a3 + 856), *(a3 + 760), *(a3 + 756), *(a3 + 768), *(a3 + 764), *(a3 + 780), *(a3 + 776), *(a3 + 792), *(a3 + 784), *(a3 + 872), *(a3 + 944), *(a3 + 752), *(a3 + 952)}];
              }

              objc_autoreleasePoolPop(v61);
              v62.i64[0] = valuePtr;
              v62.i64[1] = SHIDWORD(valuePtr);
              __asm { FMOV            V1.2D, #0.5 }

              v64 = vmlaq_f64(vmulq_f64(*v60, _Q1), _Q1, vcvtq_f64_s64(v62));
              v62.i64[0] = SHIDWORD(v84);
              v62.i64[1] = v84;
              v65 = vmlaq_f64(vmulq_f64(*(a3 + 1000), _Q1), _Q1, vcvtq_f64_s64(v62));
              *v60 = v64;
              *(a3 + 1000) = v65;
            }
          }
        }
      }

      goto LABEL_124;
    }

    value = 0;
    v93[0] = 0;
    v90 = 0;
    v91 = 0;
    v88 = 0;
    v89 = 0;
    valuePtr = 0;
    v87 = 0;
    v84 = 0;
    v85 = 0;
    v83 = 0;
    if (CFDictionaryGetValueIfPresent(theDict, @"SNR", &value) && value)
    {
      CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr + 4);
    }

    if (CFDictionaryGetValueIfPresent(theDict, @"CCA", &v91) && v91)
    {
      CFNumberGetValue(v91, kCFNumberSInt32Type, &valuePtr);
    }

    if (CFDictionaryGetValueIfPresent(theDict, @"TXFRAMES", &v90) && v90)
    {
      CFNumberGetValue(v90, kCFNumberSInt32Type, &v85 + 4);
    }

    if (CFDictionaryGetValueIfPresent(theDict, @"TXFWFRAMES", v93) && v93[0])
    {
      CFNumberGetValue(v93[0], kCFNumberSInt32Type, &v83);
    }

    if (CFDictionaryGetValueIfPresent(theDict, @"RXFRAMES", &v89) && v89)
    {
      CFNumberGetValue(v89, kCFNumberSInt32Type, &v85);
    }

    if (CFDictionaryGetValueIfPresent(theDict, @"RXRATE", &v87) && v87)
    {
      CFNumberGetValue(v87, kCFNumberSInt32Type, &v84);
    }

    if (CFDictionaryGetValueIfPresent(theDict, @"TXRATE", &v88) && v88)
    {
      CFNumberGetValue(v88, kCFNumberSInt32Type, &v84 + 4);
    }

    v8 = *(a3 + 8656);
    if (v8 == 0.0)
    {
      v9 = SHIDWORD(valuePtr);
    }

    else
    {
      v9 = v8 * 0.6 + SHIDWORD(valuePtr) * 0.4;
    }

    *(a3 + 8656) = v9;
    v10 = v9;
    v11 = 1.0;
    if (v10 <= 39)
    {
      v11 = *(a3 + 8 * (v10 & ~(v10 >> 31)) + 7520);
    }

    v12 = *(a3 + 8664);
    if (v12 == 0.0)
    {
      v13 = valuePtr;
    }

    else
    {
      v13 = v12 * 0.6 + valuePtr * 0.4;
    }

    *(a3 + 8664) = v13;
    v14 = v13 & ~(v13 >> 31);
    if (v14 >= 99)
    {
      v14 = 99;
    }

    v15 = *(a3 + 8 * v14 + 7840);
    v16.i64[0] = SHIDWORD(v84);
    v16.i64[1] = v84;
    v17 = vcvtq_f64_s64(v16);
    v18 = vbslq_s8(vcgtq_f64(*(a3 + 8672), v17), *(a3 + 8672), v17);
    *(a3 + 8672) = v18;
    v19 = vmulq_n_f64(v18, v11);
    v20 = *(a3 + 8640);
    if (v20 == 0.0)
    {
      v21 = (v83 + HIDWORD(v85));
    }

    else
    {
      v21 = v20 * 0.6 + (v83 + HIDWORD(v85)) * 0.4;
    }

    v80 = vmulq_n_f64(v19, v15);
    *(a3 + 8640) = v21;
    v22 = *(a3 + 8648);
    if (v22 == 0.0)
    {
      v23 = v85;
    }

    else
    {
      v23 = v22 * 0.6 + v85 * 0.4;
    }

    *(a3 + 8648) = v23;
    Current = CFAbsoluteTimeGetCurrent();
    v25 = Current - *(a3 + 8688);
    if (v25 <= 0.0)
    {
      v25 = 5.0;
    }

    *(a3 + 8688) = Current;
    v26 = vdupq_n_s64(0x3F847AE147AE147BuLL);
    __asm { FMOV            V4.2D, #8.0 }

    v79 = vdivq_f64(vdivq_f64(vmulq_f64(vmulq_f64(*(a3 + 8640), vdupq_n_s64(0x4089000000000000uLL)), _Q4), vdupq_n_s64(0x408F400000000000uLL)), vdupq_lane_s64(*&v25, 0));
    v32 = vdivq_f64(v79, vaddq_f64(v80, v26));
    v33 = vdupq_n_s64(0x3FEFAE147AE147AEuLL);
    v34 = vbslq_s8(vcgtq_f64(v32, v33), v33, v32);
    v35 = v34.f64[1];
    v36 = 1;
    if (v34.f64[0] <= 0.05 && v34.f64[1] <= 0.05)
    {
      v37 = vmovn_s64(vcgtq_f64(v26, v34));
      if ((v37.i32[0] & v37.i32[1] & 1) == 0)
      {
LABEL_50:
        v78 = v34.f64[0];
        v38 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          if (v7[1583])
          {
            v39 = "Yes";
          }

          else
          {
            v39 = "No";
          }

          [off_100298C40 WFLog:3 message:{"%s: SNR %.1lf, CCA %.1lf, Tx bandwidth %.1lf (kbps), Rx bandwidth %.1lf, Tx data rate %.1lf (kbps), Rx data rate  %.1lf, Tx air time %.3lf %%, Rx air time %.3lf %%, Good background traffic ? %s", "__WiFiDeviceManagerMonitor24GHzInfraNetworkTraffic", *(a3 + 8656), *(a3 + 8664), *&v80, *&v79, v78 * 100.0, v35 * 100.0, v39}];
        }

        objc_autoreleasePoolPop(v38);
        sub_100021870(a3, a2);
        goto LABEL_56;
      }

      v36 = 0;
    }

    v7[1583] = v36;
    goto LABEL_50;
  }

LABEL_124:
  v66 = sub_100007D90(a3, a2, 1);
  v82 = sub_100012204(*(a3 + 120), v66, theDict, (*v7 != 0));
  if (v82 != 0.0)
  {
    v67 = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloatType, &v82);
    if (v67)
    {
      v68 = v67;
      CFDictionaryAddValue(theDict, @"SCALED_LQM", v67);
      CFRelease(v68);
    }
  }

  if (+[WiFiAIRAgent sharedInstance](WiFiAIRAgent, "sharedInstance") && [+[WiFiAIRAgent isInterfaceRankingInProgress] sharedInstance]
  {
    sub_1000158B8(*(a3 + 120), 1, 0);
  }

  v69 = CFDictionaryGetValue(theDict, @"RSSI");
  if (v69)
  {
    CFNumberGetValue(v69, kCFNumberSInt32Type, (a3 + 6272));
    v70 = CFDictionaryGetValue(theDict, @"CCA");
    if (v70)
    {
      CFNumberGetValue(v70, kCFNumberSInt8Type, (a3 + 6276));
    }

    v71 = CFDictionaryGetValue(theDict, @"SNR");
    if (v71)
    {
      CFNumberGetValue(v71, kCFNumberSInt16Type, (a3 + 6278));
    }

    CFDictionaryRemoveValue(theDict, @"ROAM_STATE");
    v72 = objc_autoreleasePoolPush();
    v73 = [(__CFDictionary *)theDict objectForKey:@"CCA_STATS"];
    if (v73)
    {
      v74 = v73;
      [v73 removeObjectForKey:@"CCA_TIMESTAMP_TOTAL"];
      [v74 removeObjectForKey:@"CCA_SELF_TOTAL"];
      [v74 removeObjectForKey:@"CCA_OTHER_TOTAL"];
      [v74 removeObjectForKey:@"CCA_INTERFERENCE_TOTAL"];
      [v74 removeObjectForKey:@"CCA_TIMESTAMP_SLEEP"];
      [v74 removeObjectForKey:@"CCA_SELF_SLEEP"];
      [v74 removeObjectForKey:@"CCA_OTHER_SLEEP"];
      [v74 removeObjectForKey:@"CCA_INTERFERENCE_SLEEP"];
      [v74 removeObjectForKey:@"CCA_TIMESTAMP_WAKE"];
    }

    objc_autoreleasePoolPop(v72);
    v81 = 0;
    v75 = CFNumberCreate(0, kCFNumberIntType, &v81);
    CFDictionarySetValue(theDict, @"kLQM_HOME_WORK_STATUS", v75);
    if (v75)
    {
      CFRelease(v75);
    }

    v76 = *(a3 + 4280);
    if (v76)
    {
      v76(a3, a2, *(a3 + 4288), theDict);
    }

    v77 = *(a3 + 4440);
    if (v77)
    {
      v77(a3, a2, *(a3 + 4448), 0, theDict);
    }

    sub_1000196FC(a3);
  }

  if (v66)
  {
    CFRelease(v66);
  }
}

float sub_100012204(uint64_t a1, const void *a2, const __CFDictionary *a3, const __CFDictionary *a4)
{
  v8 = objc_autoreleasePoolPush();
  HIBYTE(v211) = 0;
  v207 = +[WiFiUsageMonitor sharedInstance];
  Current = CFAbsoluteTimeGetCurrent();
  v10 = 0.0;
  if (!a1)
  {
    goto LABEL_142;
  }

  if (!a3)
  {
    v96 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: lqmDict is null", "WiFiLQAMgrLQMNotify", v194}];
    }

    goto LABEL_122;
  }

  v11 = Current;
  v12 = CFDictionaryGetValue(a3, @"LINK_CHANGED_IS_LINKDOWN");
  if (v12)
  {
    CFNumberGetValue(v12, kCFNumberSInt8Type, &v211 + 7);
    if (HIBYTE(v211))
    {
      goto LABEL_142;
    }
  }

  v13 = sub_100006F88(*(a1 + 32));
  v14 = v13;
  if (v13)
  {
    v15 = *(a1 + 40);
    if (v15)
    {
      if (CFEqual(v13, v15))
      {
        goto LABEL_14;
      }

      v16 = *(a1 + 40);
      if (v16)
      {
        CFRelease(v16);
        *(a1 + 40) = 0;
      }
    }

    *(a1 + 40) = CFStringCreateCopy(kCFAllocatorDefault, v14);
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v192 = "WiFiLQAMgrLQMNotify";
      [off_100298C40 WFLog:4 message:"%s: Main Interface is Null"];
    }

    objc_autoreleasePoolPop(v17);
  }

LABEL_14:
  if (!*(a1 + 20))
  {
    if (a2)
    {
      v66 = CFRetain(a2);
    }

    else
    {
      v66 = sub_1000078F4(*(a1 + 32), v14);
    }

    v95 = v66;
    if (!v66)
    {
      v96 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_100010910();
        if (!v62 & v80)
        {
          v99 = @"Bogus";
        }

        else
        {
          v99 = *(&off_10025F018 + v98);
        }

        [v97 WFLog:4 message:{"%s: LQAManager LQM Event in %@", "WiFiLQAMgrLQMNotify", v99}];
      }

      goto LABEL_122;
    }

    sub_10013DED0();
    *(a1 + 20) = 1;
    v109 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      sub_100010910();
      if (!v62 & v80)
      {
        v112 = @"Bogus";
      }

      else
      {
        v112 = *(&off_10025F018 + v111);
      }

      v194 = v112;
      [v110 WFLog:3 message:{"%s: %@", "__WiFiLQAMgrSetState"}];
    }

    objc_autoreleasePoolPop(v109);
    *(a1 + 72) = CFAbsoluteTimeGetCurrent();
    CFRelease(v95);
  }

  HIDWORD(v205) = a4;
  CFDictionaryGetValue(a3, @"ROAM_STATE");
  v18 = +[WiFiRoamManager sharedWiFiRoamManager];
  theDict = a3;
  if (v18)
  {
    v19 = v18;
    v20 = [v18 roamState];
    v21 = [v19 isLastRoamCacheValid] ? "YES" : "NO";
    if (v20)
    {
      v22 = CFDictionaryGetValue(v20, @"ROAM_CACHE");
      Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
      if (Mutable)
      {
        v24 = Mutable;
        v200 = v21;
        *v204 = v8;
        [v19 lastRoamStateTs];
        v26 = v25;
        v27 = CFAbsoluteTimeGetCurrent();
        v28 = sub_10000A878(*(a1 + 48));
        v29 = sub_100013F70(*(a1 + 48));
        v30 = COERCE_DOUBLE(CFDictionaryGetValue(v20, @"RSSI"));
        v196 = CFDictionaryGetValue(v20, @"ROAM_SCAN_COUNT");
        v197 = CFDictionaryGetValue(v20, @"ROAM_SCAN_AGE");
        v194 = v29;
        v195 = v30;
        v31 = sub_1000113AC();
        CFStringAppendFormat(v31, v32, v33, v28);
        v202 = a1;
        if (*(a1 + 248))
        {
          v34 = "edgeBSS";
        }

        else
        {
          v34 = "";
        }

        v192 = v34;
        v35 = sub_1000113AC();
        CFStringAppendFormat(v35, v36, v37);
        if (v22)
        {
          Count = CFArrayGetCount(v22);
          if (!Count)
          {
LABEL_33:
            CFRelease(v24);
            a1 = v202;
            v8 = *v204;
            a3 = theDict;
            goto LABEL_34;
          }

          v39 = Count;
          if (Count >= 1)
          {
            v40 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v22, v40);
              if (!ValueAtIndex)
              {
                goto LABEL_33;
              }

              v42 = ValueAtIndex;
              v43 = CFDictionaryGetValue(ValueAtIndex, @"BSSID");
              v44 = CFDictionaryGetValue(v42, @"RSSI");
              v45 = COERCE_DOUBLE(CFDictionaryGetValue(v42, @"CHANNEL"));
              v196 = CFDictionaryGetValue(v42, @"CHANNEL_FLAGS");
              v197 = CFDictionaryGetValue(v42, @"AGE");
              v194 = v44;
              v195 = v45;
              v192 = v43;
              v46 = sub_1000113AC();
              CFStringAppendFormat(v46, v47, @"{%@, RSSI: %@ dBm, CH: %@, Flags: %@, Age: %@ ms}");
            }

            while (v39 != ++v40);
          }
        }

        CFStringAppend(v24, @"}");
        v48 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v196 = v200;
          v195 = v27 - v26;
          v192 = "__WiFiLQAMgrLogRoamCache";
          v194 = v24;
          [off_100298C40 WFLog:3 message:{"%s: %@, , CacheAge: %2.2f, Valid: %s"}];
        }

        objc_autoreleasePoolPop(v48);
        goto LABEL_33;
      }
    }
  }

LABEL_34:
  sub_100044740(a1, a3);
  v49 = *(a1 + 24);
  if (!v49)
  {
    v121 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s, LQAManager: LQM table is NULL", "__WiFiLQAMgrAddRSSIHistory", v194, *&v195, v196, v197}];
    }

    goto LABEL_186;
  }

  if (!CFArrayGetCount(v49))
  {
    v121 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: LQM table is empty", "__WiFiLQAMgrAddRSSIHistory", v194, *&v195, v196, v197}];
    }

LABEL_186:
    objc_autoreleasePoolPop(v121);
    a4 = HIDWORD(v205);
    goto LABEL_44;
  }

  v50 = sub_10000D7E8();
  if (!v50)
  {
    v122 = objc_autoreleasePoolPush();
    a4 = HIDWORD(v205);
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s, LQAManager: Latest LQM Report is NULL", "__WiFiLQAMgrAddRSSIHistory", v194, *&v195, v196, v197}];
    }

    goto LABEL_194;
  }

  v51 = v50;
  v52 = CFDictionaryGetValue(v50, @"RSSI");
  a4 = HIDWORD(v205);
  if (!v52)
  {
    goto LABEL_44;
  }

  v53 = v52;
  v54 = CFDictionaryGetValue(v51, @"LQMTIMESTAMP");
  if (!v54)
  {
    goto LABEL_44;
  }

  v55 = v54;
  v56 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, (a1 + 2784));
  if (!v56)
  {
    v122 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: LQAManager: failed to allocate motionStateRef!", "__WiFiLQAMgrAddRSSIHistory", v194, *&v195, v196, v197}];
    }

LABEL_194:
    objc_autoreleasePoolPop(v122);
    goto LABEL_44;
  }

  v57 = v56;
  keys[0] = @"LQMTIMESTAMP";
  keys[1] = @"RSSI";
  *&v220 = @"motion-state";
  values[0] = v55;
  values[1] = v53;
  values[2] = v56;
  v58 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFArrayInsertValueAtIndex(*(a1 + 256), 0, v58);
  v59 = CFArrayGetCount(*(a1 + 256));
  if (v59 >= 21)
  {
    do
    {
      CFArrayRemoveValueAtIndex(*(a1 + 256), v59 - 1);
      v59 = CFArrayGetCount(*(a1 + 256));
    }

    while (v59 > 20);
  }

  CFRelease(v57);
  if (v58)
  {
    CFRelease(v58);
  }

LABEL_44:
  if (+[WiFiAIRAgent sharedInstance](WiFiAIRAgent, "sharedInstance", v192) && [+[WiFiAIRAgent isInterfaceRankingInProgress] sharedInstance]
  {
    [+[WiFiAIRAgent sharedInstance](WiFiAIRAgent ingestLQMUpdate:"ingestLQMUpdate:", theDict];
  }

  *(a1 + 516) = 0;
  *(a1 + 528) = 0;
  *(a1 + 520) = 0;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  *(a1 + 544) = 0;
  *(a1 + 2816) = 0;
  *(a1 + 2832) = 0;
  if (*(a1 + 24))
  {
    if (*(a1 + 48))
    {
      v60 = sub_100017E88(a1);
      v61 = sub_100018030(0);
      v62 = v60 > -66 && v61 == 2;
      if (v62)
      {
        v63 = v60 + 50;
      }

      else
      {
        v63 = v60;
      }

      v64 = &dword_1002976A0;
      v65 = 6;
      while (v63 < *(v64 - 1) || v63 > *(v64 - 2))
      {
        v64 += 3;
        if (!--v65)
        {
          goto LABEL_59;
        }
      }

      v10 = *v64;
      goto LABEL_63;
    }

    v60 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s, LQAManager: Current Network is NULL", "__WiFiLQAMgrComputeLinkScore"}];
    }
  }

  else
  {
    v60 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s, LQAManager: LQM table is NULL", "__WiFiLQAMgrComputeLinkScore"}];
    }
  }

  objc_autoreleasePoolPop(v60);
LABEL_59:
  v10 = 0.0;
LABEL_63:
  if (!*(a1 + 648))
  {
    goto LABEL_142;
  }

  v67 = *(a1 + 20);
  if ((v67 - 2) >= 3)
  {
    if (v67 == 1)
    {
      *(a1 + 2824) = 0;
      v82 = *(a1 + 24);
      if (v82)
      {
        if (CFArrayGetCount(v82))
        {
          v83 = sub_10000D7E8();
          if (v83)
          {
            if (*(a1 + 2840))
            {
              v84 = sub_100017E88(a1);
              LODWORD(keys[0]) = v84;
            }

            else
            {
              v84 = *(a1 + 2804);
              LODWORD(keys[0]) = v84;
              if (!v84)
              {
                v85 = CFDictionaryGetValue(v83, @"RSSI");
                if (!v85)
                {
                  goto LABEL_216;
                }

                CFNumberGetValue(v85, kCFNumberSInt32Type, keys);
                v84 = keys[0];
              }
            }

            if (v84 <= *(a1 + 660))
            {
              v100 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: LQAManager BadLinkRssi %d", "__WiFiLQAMgrIsLinkBad", LODWORD(keys[0])}];
              }

              objc_autoreleasePoolPop(v100);
              sub_100018164(a1);
              if (&_symptom_create)
              {
                sub_10004B83C();
                if (!(!v62 & v80))
                {
                  symptom_create();
                  symptom_set_qualifier();
                  sub_100047FD4(*(a1 + 48));
                  sub_1000214AC();
                  symptom_send();
                  v101 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:2 message:{"%s: Notified Symptoms that Bssid: %llX -ve crossed poor link", "__WiFiLQAMgrIsLinkBad", v100}];
                  }

                  objc_autoreleasePoolPop(v101);
                }
              }

              goto LABEL_130;
            }

            if (sub_100018164(a1))
            {
              *(a1 + 288) = 1;
LABEL_130:
              v102 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: LinkIsBad, starting Evaluation", "WiFiLQAMgrLQMNotify"}];
              }

              objc_autoreleasePoolPop(v102);
              if (*(a1 + 144) == 0.0)
              {
                *(a1 + 144) = CFAbsoluteTimeGetCurrent();
              }

              sub_100034774(a1);
              *(a1 + 20) = 2;
              v103 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                sub_100010910();
                if (!v62 & v80)
                {
                  v106 = @"Bogus";
                }

                else
                {
                  v106 = *(&off_10025F018 + v105);
                }

                [v104 WFLog:3 message:{"%s: %@", "__WiFiLQAMgrSetState", v106}];
              }

              objc_autoreleasePoolPop(v103);
              *(a1 + 496) = 0;
              goto LABEL_140;
            }

LABEL_216:
            number = 0;
            value = 0;
            v208 = 0;
            *(a1 + 144) = 0;
            sub_10001577C(a1);
            v77 = theDict;
            if (CFDictionaryGetValueIfPresent(theDict, @"RXBEACONFRMS", &value) && value)
            {
              CFNumberGetValue(value, kCFNumberIntType, &v208 + 4);
            }

            ValueIfPresent = CFDictionaryGetValueIfPresent(theDict, @"RXBEACONSCHED", &number);
            v126 = number;
            if (ValueIfPresent && number)
            {
              CFNumberGetValue(number, kCFNumberIntType, &v208);
              v126 = number;
            }

            if (value)
            {
              if (v126)
              {
                v127 = *(a1 + 240) + SHIDWORD(v208);
                v128 = *(a1 + 232) + v208;
                *(a1 + 232) = v128;
                *(a1 + 240) = v127;
                if (v128)
                {
                  v129 = ((v127 / v128) * -0.5) + 1.0;
                  *(a1 + 1092) = v129;
                  *(a1 + 1256) = v129;
                }
              }
            }

            v130 = *(a1 + 248);
            if (*(a1 + 248) && CFArrayGetCount(*(a1 + 24)))
            {
              v132 = sub_10000D7E8();
              v133 = sub_100033CA8(a1);
              v134 = sub_100034234(a1, v132, *(a1 + 248));
              if (v134)
              {
                v135 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:4 message:{"%s PossibleRoam:%d UserWalkOutScenario:%d  EdgeBss:%d", "WiFiLQAMgrLQMNotify", v133, 1, v130}];
                }

                objc_autoreleasePoolPop(v135);
                v77 = theDict;
              }

              if (v133)
              {
                v136 = 1;
              }

              else
              {
                v136 = v134 == 0;
              }

              LODWORD(v131) = !v136;
            }

            else
            {
              LODWORD(v131) = 0;
            }

            if (sub_10001839C(a1) || a4 && (*(a1 + 2956) & 1) == 0)
            {
              LOBYTE(v137) = 1;
              v138 = v131;
            }

            else
            {
              v156 = sub_100021AAC(a1);
              LOBYTE(v137) = v156 == 0;
              if (v156)
              {
                v138 = v131 + 1;
              }

              else
              {
                v138 = v131;
              }
            }

            if (!sub_100018608(*(a1 + 32)) || !sub_10005A654(*(a1 + 32)))
            {
LABEL_245:
              if (v138)
              {
                *(a1 + 2841) = 1;
                CFDictionarySetValue(v77, @"WIFI_ASSIST_OVERRIDE", kCFBooleanTrue);
                if (v138 == 1)
                {
                  if (v131)
                  {
                    v139 = 2;
                  }

                  else
                  {
                    v139 = 3;
                  }

                  LODWORD(keys[0]) = v139;
                  v140 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, keys);
                  if (v140)
                  {
                    v141 = v140;
                    CFDictionarySetValue(v77, @"WIFI_ASSIST_OVERRIDE_REASON", v140);
                    if (v131)
                    {
                      v142 = objc_autoreleasePoolPush();
                      if (off_100298C40)
                      {
                        [off_100298C40 WFLog:4 message:{"%s wifi-assist override On for edge bss walkout", "WiFiLQAMgrLQMNotify"}];
                      }

                      objc_autoreleasePoolPop(v142);
                    }

                    if ((v137 & 1) == 0)
                    {
                      v143 = objc_autoreleasePoolPush();
                      if (off_100298C40)
                      {
                        [off_100298C40 WFLog:4 message:{"%s wifi-assist override On for high channel congestion", "WiFiLQAMgrLQMNotify"}];
                      }

                      objc_autoreleasePoolPop(v143);
                    }

                    v120 = v141;
                    goto LABEL_260;
                  }

                  goto LABEL_391;
                }

                v148 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
                if (!v148)
                {
                  v191 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:4 message:{"%s: CFArrayCreateMutable failed", "WiFiLQAMgrLQMNotify"}];
                  }

                  goto LABEL_395;
                }

                v149 = v148;
                v150 = sub_10002CF30(2);
                if (!v150)
                {
                  goto LABEL_391;
                }

                v151 = v150;
                CFArrayAppendValue(v149, v150);
                v152 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:4 message:{"%s wifi-assist override On for edge bss walkout", "WiFiLQAMgrLQMNotify"}];
                }

                objc_autoreleasePoolPop(v152);
                CFRelease(v151);
                v153 = sub_10002CF30(3);
                if (!v153)
                {
LABEL_391:
                  v191 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:4 message:{"%s: CFNumberCreate failed", "WiFiLQAMgrLQMNotify"}];
                  }

LABEL_395:
                  objc_autoreleasePoolPop(v191);
                  a4 = HIDWORD(v205);
                  goto LABEL_142;
                }

                v154 = v153;
                CFArrayAppendValue(v149, v153);
                v155 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:4 message:{"%s wifi-assist override On for high channel congestion", "WiFiLQAMgrLQMNotify"}];
                }

                objc_autoreleasePoolPop(v155);
                CFRelease(v154);
                v146 = @"WIFI_ASSIST_OVERRIDE_REASONS";
                v147 = v77;
                v145 = v149;
LABEL_266:
                CFDictionarySetValue(v147, v146, v145);
                goto LABEL_142;
              }

LABEL_261:
              if (*(a1 + 2841))
              {
                *(a1 + 2841) = 0;
                v144 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:4 message:{"%s: wifi-assist override to auto", "WiFiLQAMgrLQMNotify"}];
                }

                objc_autoreleasePoolPop(v144);
              }

              v145 = kCFBooleanFalse;
              v146 = @"WIFI_ASSIST_OVERRIDE";
              v147 = v77;
              goto LABEL_266;
            }

            keys[0] = 0;
            v217 = 0;
            values[0] = 0;
            v215 = 0;
            v216 = 0;
            v214 = 0;
            HIDWORD(v213) = 0;
            BYTE3(v213) = 0;
            theDate = 0;
            v157 = *(a1 + 24);
            v203 = v131;
            v201 = v137;
            if (!v157 || (v158 = CFArrayGetCount(v157), v158 < 3) || (v159 = CFArrayGetValueAtIndex(*(a1 + 24), v158 - 1)) == 0 || !CFDictionaryGetValueIfPresent(v159, @"LQMTIMESTAMP", &theDate) || !theDate || (AbsoluteTime = CFDateGetAbsoluteTime(theDate), v161 = CFAbsoluteTimeGetCurrent(), v161 - AbsoluteTime < *(a1 + 680)))
            {
LABEL_330:
              v220 = 0u;
              v221 = 0u;
              *keys = 0u;
              if (sub_1000141C0(a1, keys))
              {
                v177 = (a1 + 744);
                v178 = 4;
                while (!*(v177 - 12) || SHIDWORD(keys[0]) < *(v177 - 2) || (*(v177 - 1) * SHIDWORD(keys[0])) > SLODWORD(keys[0]) || SLODWORD(keys[1]) <= *v177 * HIDWORD(keys[0]))
                {
                  v177 += 4;
                  if (!--v178)
                  {
                    *(a1 + 2910) = 0;
                    v179 = 2;
                    goto LABEL_338;
                  }
                }

                *(a1 + 2910) = 1;
                v179 = 4;
LABEL_338:
                if (*(a1 + 2904))
                {
                  v77 = v179;
                }

                else
                {
                  v77 = 1;
                }

                *(a1 + 2864) = v77;
                *(a1 + 2880) = v77;
              }

              else
              {
                v180 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:4 message:{"%s: Failed to extract metrics from Lqm, exiting!", "__WiFiLQAMrgCheckTxPer"}];
                }

                objc_autoreleasePoolPop(v180);
                v77 = 8;
              }

              v181 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                v182 = "Poor";
                if (v77 == 2)
                {
                  v182 = "Avg";
                }

                if (v77 == 1)
                {
                  v182 = "Good";
                }

                [off_100298C40 WFLog:3 message:{"[TrafficEngineering]: Health of the Link is %s with TotalCCA=%d SelfCCA=%d CCAOther=%d CCAInterferece=%d HighTxPER=%d", v182, *(a1 + 2900), *(a1 + 2901), *(a1 + 2902), *(a1 + 2903), *(a1 + 2910)}];
              }

              objc_autoreleasePoolPop(v181);
              if (v77 == 4 || v77 == 2)
              {
                if (*(a1 + 2908))
                {
                  if (!*(a1 + 2944))
                  {
                    sub_10006563C(*(a1 + 32), 1);
                    *(a1 + 2944) = 1;
                  }

                  v184 = *(a1 + 2921);
                  if (!*(a1 + 2921))
                  {
                    v185 = objc_autoreleasePoolPush();
                    if (off_100298C40)
                    {
                      [off_100298C40 WFLog:3 message:{"[TrafficEngineering]: Critical Apps are running in congested environment, talk to nearby devices to reduce congestion"}];
                    }

                    objc_autoreleasePoolPop(v185);
                    sub_1000113B8();
                    v184 = *(a1 + 2921);
                  }

                  a4 = HIDWORD(v205);
                  v77 = theDict;
                  LODWORD(v131) = v203;
                  LOBYTE(v137) = v201;
                  if (v184 == 1 && !*(a1 + 2920))
                  {
                    sub_100048E4C(a1);
                  }
                }

                else
                {
                  a4 = HIDWORD(v205);
                  v77 = theDict;
                  LODWORD(v131) = v203;
                  LOBYTE(v137) = v201;
                  if (*(a1 + 2944) == 1)
                  {
                    sub_10006563C(*(a1 + 32), 0);
                    *(a1 + 2944) = 0;
                  }
                }
              }

              else
              {
                *(a1 + 2944) = 0;
                sub_10004B7FC();
              }

              if (!*(a1 + 2908))
              {
                if (*(a1 + 2905) != 1 || *(a1 + 2921))
                {
                  goto LABEL_382;
                }

                v187 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  [off_100298C40 WFLog:3 message:{"[TrafficEngineering]: Non Critical App is consuming significant bandwith, Make way for Critical applications in the ecosystem"}];
                }

                objc_autoreleasePoolPop(v187);
                sub_1000113B8();
                v188 = *(a1 + 2908);
                sub_10004B7FC();
                if (!v189)
                {
                  goto LABEL_382;
                }
              }

              if (*(a1 + 2909))
              {
                v186 = *(a1 + 2944);
                if (*(a1 + 2905) == 1)
                {
                  if (!*(a1 + 2944))
                  {
                    sub_10006563C(*(a1 + 32), 1);
                    *(a1 + 2944) = 1;
                  }

LABEL_382:
                  if (*(a1 + 2936) != 0.0 && CFAbsoluteTimeGetCurrent() - *(a1 + 2936) > 60.0)
                  {
                    sub_10006563C(*(a1 + 32), 0);
                    *(a1 + 2944) = 0;
                    sub_100150780(*(a1 + 32), 1);
                    *(a1 + 2936) = 0;
                  }

                  if (!*(a1 + 2908) && *(a1 + 2920) == 1)
                  {
                    [*(a1 + 2984) __sendEventToPeers];
                    v190 = *(a1 + 2912);
                    if (v190)
                    {
                      sub_100024EBC(v190);
                    }

                    *(a1 + 2920) = 0;
                    *(a1 + 2944) = 0;
                    sub_10006563C(*(a1 + 32), 0);
                    sub_10004B7FC();
                  }

                  goto LABEL_245;
                }
              }

              else
              {
                v186 = *(a1 + 2944);
              }

              if (v186 == 1)
              {
                sub_10006563C(*(a1 + 32), 0);
                *(a1 + 2944) = 0;
              }

              goto LABEL_382;
            }

            v162 = 0;
            v137 = @"LQMTIMESTAMP";
            v131 = @"CCA";
            do
            {
              v163 = CFArrayGetValueAtIndex(*(a1 + 24), v162);
              if (v163)
              {
                a4 = v163;
                v164 = CFDictionaryGetValueIfPresent(v163, @"LQMTIMESTAMP", &theDate);
                v165 = theDate;
                if (v164 && theDate)
                {
                  AbsoluteTime = CFDateGetAbsoluteTime(theDate);
                  v165 = theDate;
                }

                if (v165)
                {
                  if (v161 - AbsoluteTime <= *(a1 + 680))
                  {
                    if (CFDictionaryGetValueIfPresent(a4, @"CCA", &v216) && v216)
                    {
                      CFNumberGetValue(v216, kCFNumberSInt8Type, &v213 + 3);
                    }

                    if (CFDictionaryGetValueIfPresent(a4, @"CCA_STATS", &v215))
                    {
                      if (v215)
                      {
                        if (CFDictionaryGetValueIfPresent(v215, @"CCA_SELF_WAKE", keys) && keys[0])
                        {
                          CFNumberGetValue(keys[0], kCFNumberIntType, &v214 + 4);
                        }

                        if (CFDictionaryGetValueIfPresent(v215, @"CCA_OTHER_WAKE", &v217) && v217)
                        {
                          CFNumberGetValue(v217, kCFNumberIntType, &v214);
                        }

                        if (CFDictionaryGetValueIfPresent(v215, @"CCA_INTERFERENCE_WAKE", values) && values[0])
                        {
                          CFNumberGetValue(values[0], kCFNumberIntType, &v213 + 4);
                        }

                        if ((HIDWORD(v213) + v214) < 0x3D)
                        {
                          v167 = 0;
                          v166 = a1;
                        }

                        else
                        {
                          v166 = a1;
                          v167 = *(a1 + 2906) + 1;
                        }

                        *(v166 + 2906) = v167;
                        if (HIDWORD(v214) < 0x1F)
                        {
                          *(v166 + 2907) = 0;
                        }

                        else
                        {
                          ++*(v166 + 2907);
                        }
                      }
                    }

                    else
                    {
                      v169 = HIDWORD(v214);
                      if (!HIDWORD(v214))
                      {
                        v169 = BYTE3(v213);
                      }

                      HIDWORD(v214) = v169;
                      if (v169 >= 0x1F)
                      {
                        *(a1 + 2905) = 1;
                      }
                    }
                  }
                }

                else
                {
                  v168 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [off_100298C40 WFLog:4 message:{"%s: No Timestamp in LQM Record", "__WiFiLQAMgrCheckCCA"}];
                  }

                  objc_autoreleasePoolPop(v168);
                }
              }

              ++v162;
            }

            while (v162 != 3);
            v170 = *(a1 + 2906);
            *(a1 + 2904) = v170 > 2;
            v171 = *(a1 + 2907);
            *(a1 + 2905) = v171 > 2;
            if (v170 < 3)
            {
              if (v171 < 3)
              {
LABEL_329:
                v175 = v214;
                v174 = BYTE4(v214);
                *(a1 + 2901) = BYTE4(v214);
                v176 = BYTE4(v213);
                *(a1 + 2900) = v175 + v174 + BYTE4(v213);
                *(a1 + 2902) = v175;
                *(a1 + 2903) = v176;
                goto LABEL_330;
              }
            }

            else
            {
              v172 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"CCA is consistently higher than %d since last %d LQM samples", 60, *(a1 + 2906)}];
              }

              objc_autoreleasePoolPop(v172);
              if (*(a1 + 2905) != 1)
              {
                goto LABEL_329;
              }
            }

            v173 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"Self CCA is consistently higher than %d since last %d LQM samples", 30, *(a1 + 2907)}];
            }

            objc_autoreleasePoolPop(v173);
            goto LABEL_329;
          }

          v124 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s, LQAManager: Latest LQM Report is NULL", "__WiFiLQAMgrIsLinkBad"}];
          }
        }

        else
        {
          v124 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:4 message:{"%s: LQM table is empty", "__WiFiLQAMgrIsLinkBad"}];
          }
        }
      }

      else
      {
        v124 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s, LQAManager: LQM table is NULL", "__WiFiLQAMgrIsLinkBad"}];
        }
      }

      objc_autoreleasePoolPop(v124);
      goto LABEL_216;
    }

    v96 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: Bogus state %d", "WiFiLQAMgrLQMNotify", *(a1 + 20)}];
    }

LABEL_122:
    objc_autoreleasePoolPop(v96);
    goto LABEL_142;
  }

  if (*(a1 + 2824) == 0.0 && *(a1 + 2804) > *(a1 + 660))
  {
    *(a1 + 2824) = CFAbsoluteTimeGetCurrent();
  }

  v68 = *(a1 + 24);
  if (!v68)
  {
    v123 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s, LQAManager: LQM table is NULL", "__WiFiLQAMgrIsLinkGood"}];
    }

    goto LABEL_201;
  }

  if (!CFArrayGetCount(v68))
  {
    v123 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: LQM table is empty", "__WiFiLQAMgrIsLinkGood"}];
    }

    goto LABEL_201;
  }

  v69 = sub_10000D7E8();
  if (!v69)
  {
    v123 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s, LQAManager: Latest LQM Report is NULL", "__WiFiLQAMgrIsLinkGood"}];
    }

LABEL_201:
    objc_autoreleasePoolPop(v123);
    goto LABEL_98;
  }

  if (*(a1 + 2840))
  {
    v71 = sub_100017E88(a1);
    LODWORD(keys[0]) = v71;
  }

  else
  {
    v70 = v69;
    v71 = *(a1 + 2804);
    LODWORD(keys[0]) = v71;
    if (!v71)
    {
      v72 = CFDictionaryGetValue(v70, @"RSSI");
      if (!v72)
      {
        goto LABEL_98;
      }

      CFNumberGetValue(v72, kCFNumberSInt32Type, keys);
      v71 = keys[0];
    }
  }

  if (v71 <= *(a1 + 656) && (v71 <= *(a1 + 660) || *(a1 + 2824) == 0.0 || CFAbsoluteTimeGetCurrent() - *(a1 + 2824) < 5.0))
  {
    goto LABEL_98;
  }

  v60 = objc_autoreleasePoolPush();
  v73 = off_100298C40;
  if (off_100298C40)
  {
    v74 = LODWORD(keys[0]);
    v195 = CFAbsoluteTimeGetCurrent() - *(a1 + 2824) + 5.0;
    v193 = "__WiFiLQAMgrIsLinkGood";
    v194 = v74;
    [v73 WFLog:3 message:"%s: LQAManager: GoodLinkRssi %d +veCrossTime %.1f"];
  }

  objc_autoreleasePoolPop(v60);
  if (sub_100018164(a1))
  {
LABEL_98:
    sub_100034774(a1);
    if (!*(a1 + 288))
    {
      goto LABEL_140;
    }

    v86 = *(a1 + 24);
    if (v86)
    {
      if (CFArrayGetCount(v86))
      {
        v87 = sub_10000D7E8();
        if (v87)
        {
          if (*(a1 + 2840))
          {
            v89 = sub_100017E88(a1);
            LODWORD(keys[0]) = v89;
          }

          else
          {
            v88 = v87;
            v89 = *(a1 + 2804);
            LODWORD(keys[0]) = v89;
            if (!v89)
            {
              v90 = CFDictionaryGetValue(v88, @"RSSI");
              if (!v90)
              {
                goto LABEL_140;
              }

              CFNumberGetValue(v90, kCFNumberSInt32Type, keys);
              v89 = keys[0];
            }
          }

          if (!&_symptom_create || v89 > *(a1 + 660) || (sub_10004B83C(), !v62 & v80))
          {
LABEL_140:
            *(a1 + 2836) = 1;
            if (sub_100046718(a1, 0, 0))
            {
              sub_10013D1C4(a1);
            }

            goto LABEL_142;
          }

          symptom_create();
          symptom_set_qualifier();
          sub_100047FD4(*(a1 + 48));
          sub_1000214AC();
          symptom_send();
          *(a1 + 288) = 0;
          v91 = objc_autoreleasePoolPush();
          v92 = off_100298C40;
          if (!off_100298C40)
          {
LABEL_112:
            objc_autoreleasePoolPop(v91);
            goto LABEL_140;
          }

          v194 = v60;
          v93 = "%s: Notified Symptoms that Bssid: %llX -ve crossed poor link";
          v94 = 2;
LABEL_111:
          [v92 WFLog:v94 message:{v93, "__WiFiLQAMgrSendPendingSymptomsEventIfLinkBad", v194}];
          goto LABEL_112;
        }

        v91 = objc_autoreleasePoolPush();
        v92 = off_100298C40;
        if (!off_100298C40)
        {
          goto LABEL_112;
        }

        v93 = "%s, LQAManager: Latest LQM Report is NULL";
      }

      else
      {
        v91 = objc_autoreleasePoolPush();
        v92 = off_100298C40;
        if (!off_100298C40)
        {
          goto LABEL_112;
        }

        v93 = "%s: LQM table is empty";
      }
    }

    else
    {
      v91 = objc_autoreleasePoolPush();
      v92 = off_100298C40;
      if (!off_100298C40)
      {
        goto LABEL_112;
      }

      v93 = "%s, LQAManager: LQM table is NULL";
    }

    v94 = 4;
    goto LABEL_111;
  }

  v75 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v193 = "WiFiLQAMgrLQMNotify";
    [off_100298C40 WFLog:3 message:{"%s: LinkIsGood, ending Evaluation"}];
  }

  objc_autoreleasePoolPop(v75);
  [+[WiFiUsageMonitor sharedInstance](WiFiUsageMonitor setTdLogic_end:"setTdLogic_end:evalTime:rssi:roamTime:forInterface:" evalTime:0 rssi:*(a1 + 2804) roamTime:*(a1 + 40) forInterface:CFAbsoluteTimeGetCurrent() - *(a1 + 144), *(a1 + 200)];
  *(a1 + 2801) = 0;
  *(a1 + 144) = 0;
  *(a1 + 400) = 0;
  sub_10001577C(a1);
  *(a1 + 20) = 1;
  v76 = objc_autoreleasePoolPush();
  v77 = theDict;
  if (off_100298C40)
  {
    sub_100010910();
    if (!v62 & v80)
    {
      v81 = @"Bogus";
    }

    else
    {
      v81 = *(&off_10025F018 + v79);
    }

    v194 = v81;
    [v78 WFLog:3 message:{"%s: %@", "__WiFiLQAMgrSetState"}];
  }

  objc_autoreleasePoolPop(v76);
  sub_100024EBC(*(a1 + 344));
  sub_100024EBC(*(a1 + 552));
  if (&_symptom_create)
  {
    if (!*(a1 + 288))
    {
      sub_10004B83C();
      if (!(!v62 & v80))
      {
        symptom_create();
        symptom_set_qualifier();
        sub_100047FD4(*(a1 + 48));
        sub_1000214AC();
        symptom_send();
        v113 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v193 = "WiFiLQAMgrLQMNotify";
          v194 = v76;
          [off_100298C40 WFLog:2 message:"%s: Notified Symptoms that Bssid: %llX +ve crossed good link"];
        }

        objc_autoreleasePoolPop(v113);
      }
    }
  }

  *(a1 + 288) = 0;
  *(a1 + 496) = 0;
  *(a1 + 364) = 0;
  sub_10013E2D4(a1, *(a1 + 384));
  v114 = *(a1 + 384);
  if (v114)
  {
    CFRelease(v114);
    *(a1 + 384) = 0;
  }

  if (sub_10013E3EC(a1) && *(a1 + 185))
  {
    *(a1 + 185) = 0;
    v116 = *(a1 + 192);
    if (v116 != 0.0)
    {
      *(a1 + 200) = v11 - v116;
    }

    *(a1 + 192) = 0;
    sub_10014BDA4(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 230), 0, 1, 0, v115, v193, v194, *&v195, v196, v197, v198, v199, v200, SHIDWORD(v200), v202, v204[0], v204[1], v205, theDict, v207, v208, number, value, v211, theDate, v213, v214, v215, v216);
  }

  if (!sub_10001839C(a1))
  {
    if (!a4 || (*(a1 + 2956)) && sub_100021AAC(a1))
    {
      *(a1 + 2841) = 1;
      CFDictionarySetValue(v77, @"WIFI_ASSIST_OVERRIDE", kCFBooleanTrue);
      LODWORD(keys[0]) = 3;
      v117 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, keys);
      if (v117)
      {
        v118 = v117;
        CFDictionarySetValue(v77, @"WIFI_ASSIST_OVERRIDE_REASON", v117);
        v119 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s wifi-assist override On for high channel congestion", "WiFiLQAMgrLQMNotify"}];
        }

        objc_autoreleasePoolPop(v119);
        v120 = v118;
LABEL_260:
        CFRelease(v120);
        goto LABEL_142;
      }

      goto LABEL_391;
    }

    goto LABEL_261;
  }

LABEL_142:
  if (v207)
  {
    v107 = *(a1 + 3208);
    if (v107)
    {
      [(WiFiUsageMonitor *)v207 updateLinkQuality:v107 forInterface:*(a1 + 40) supportsLinkRecommendations:a4, Current];

      *(a1 + 3208) = 0;
    }
  }

  objc_autoreleasePoolPop(v8);
  return v10;
}