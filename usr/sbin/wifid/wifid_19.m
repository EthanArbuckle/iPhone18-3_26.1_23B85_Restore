void sub_100160DEC(uint64_t a1)
{
  if (sub_10000A154(a1))
  {
    context = objc_autoreleasePoolPush();
    v2 = [*(a1 + 1104) dictionaryRepresentation];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v3 = [v2 allKeys];
    if ([v3 countByEnumeratingWithState:&v21 objects:v25 count:16])
    {
      v4 = *v22;
      do
      {
        if (*v22 != v4)
        {
          objc_enumerationMutation(v3);
        }

        v5 = [v2 objectForKeyedSubscript:**(&v21 + 1)];
        v6 = [[CWFNetworkProfile alloc] initWithExternalForm:v5];
        if ([v6 cachedPrivateMACAddress])
        {
          v7 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"Clearing cached private MAC address for known network (%@)", v6}];
          }

          objc_autoreleasePoolPop(v7);
          [v6 setCachedPrivateMACAddress:0];
          [v6 setCachedPrivateMACAddressUpdatedAt:0];
          [*(a1 + 1104) setObject:v5 forKey:{objc_msgSend(v6, "identifier")}];
        }

        sub_1000951A8();
      }

      while (!v10 || sub_100095244(v8, v9, &v21, v25));
    }

    [*(a1 + 1104) synchronize];
    v11 = sub_100011328();
    sub_10007393C(v11, v12, v13, 0);
    v14 = sub_100011328();
    sub_10007393C(v14, v15, v16, 0);
    v17 = sub_100011328();
    sub_10007393C(v17, v18, v19, 0);
    objc_autoreleasePoolPop(context);
  }
}

void sub_100160FE0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a1 + 2288) != a2)
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: setting connection quality local collection to %d", "WiFiManagerSetConnectionQualityLocalCollectionEnabled", a2}];
      }

      objc_autoreleasePoolPop(v4);
      *(a1 + 2288) = a2;
    }
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: manager is NULL", "WiFiManagerSetConnectionQualityLocalCollectionEnabled"}];
    }

    objc_autoreleasePoolPop(v5);
  }
}

void sub_1001610C0()
{
  sub_1000951B4();
  sub_100094FF0();
  v2 = objc_autoreleasePoolPush();
  if (!v0)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = off_100298C40;
    if (off_100298C40)
    {
      v13 = "%s: manager is NULL";
LABEL_22:
      [v12 WFLog:3 message:v13];
    }

LABEL_23:
    objc_autoreleasePoolPop(v11);
    goto LABEL_17;
  }

  if (sub_10000A154(v0))
  {
    goto LABEL_17;
  }

  if (!*(v0 + 1408))
  {
    v11 = objc_autoreleasePoolPush();
    v12 = off_100298C40;
    if (off_100298C40)
    {
      v13 = "%s: device is not unlocked.";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (v1)
  {
    v3 = *(v0 + 360);
    if (!v3 || !CFEqual(v1, v3))
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v5 = *(v0 + 360);
        if (v5)
        {
          CFArrayGetCount(v5);
        }

        CFArrayGetCount(v1);
        [sub_10002147C() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v4);
      v6 = *(v0 + 360);
      if (v6)
      {
        CFRelease(v6);
        *(v0 + 360) = 0;
      }

      sub_10001E7E4();
      *(v0 + 360) = CFArrayCreateMutableCopy(v7, v8, v9);
    }

    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      CFArrayGetCount(*(v0 + 360));
      [sub_10000FC2C() WFLog:? message:?];
    }

    objc_autoreleasePoolPop(v10);
    sub_10015724C(v0);
  }

LABEL_17:
  objc_autoreleasePoolPop(v2);
  sub_10001ED88();
}

void sub_100161270()
{
  sub_1000951B4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = objc_autoreleasePoolPush();
  if (v5)
  {
    if (!sub_10000A154(v5))
    {
      if (*(v5 + 1408))
      {
        v7 = *(v5 + 360);
        if (v7)
        {
          Count = CFArrayGetCount(v7);
          v9 = sub_10003524C(*(v5 + 360), v3);
          if (v9)
          {
            v10 = v9;
            v11 = sub_100095374();
            sub_10007393C(v11, v12, v13, v1);
            v14 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:" WFMacRandomisation : %s: %s %ld privateMac networks to the plist"];
            }

            objc_autoreleasePoolPop(v14);
            if (!Count)
            {
              v15 = *(v5 + 360);
              if (v15)
              {
                CFRelease(v15);
                *(v5 + 360) = 0;
              }

              v16 = objc_autoreleasePoolPush();
              v17 = sub_10001E2C0();
              if (v17)
              {
                [v17 WFLog:3 message:"%s: WFMacRandomisation : Cleared private mac networks cache"];
              }

              objc_autoreleasePoolPop(v5);
            }

            CFRelease(v10);
          }
        }
      }
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"%s: manager is NULL"];
    }

    objc_autoreleasePoolPop(v18);
  }

  objc_autoreleasePoolPop(v6);
  sub_10001ED88();
}

void sub_1001613F0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a1 + 2289) != a2)
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: arePrivacyRestrictionsForWiFiConnectionQualityDisabled now set to %d", "WiFiManagerSetPrivacyRestrictionsForWiFiConnectionQualityDisabled", a2}];
      }

      objc_autoreleasePoolPop(v4);
      v5 = &kCFBooleanTrue;
      if (!a2)
      {
        v5 = &kCFBooleanFalse;
      }

      sub_10007393C(a1, @"ConnectionQualityPrivacyRestrictionsDisabled", *v5, 0);
      *(a1 + 2289) = a2;
      sub_1000348F4();
      sub_100015E50();
      v6 = *(a1 + 112);
      sub_1000083DC();
      CFSetApplyFunction(v7, v8, context);
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: manager is NULL", "WiFiManagerSetPrivacyRestrictionsForWiFiConnectionQualityDisabled"}];
    }

    objc_autoreleasePoolPop(v9);
  }
}

CFStringRef sub_10016151C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_msgSend(*(a1 + 1792) "latestLocation")];
  v4 = v3;
  context = v2;
  if (!v3)
  {
    v36 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s won't determine known network SSID for location as there's no location available (are Location Services enabled?)", "WiFiManagerCopySSIDRepresentingMostUsedNetworkGeoTaggedToCurrentDeviceLocation", v38}];
    }

    goto LABEL_41;
  }

  [v3 horizontalAccuracy];
  if (v5 >= 100.1)
  {
    v36 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s won't determine known network SSID for location as location accuracy is greater than threshold (%f)", "WiFiManagerCopySSIDRepresentingMostUsedNetworkGeoTaggedToCurrentDeviceLocation", 0x4059066666666666}];
    }

LABEL_41:
    objc_autoreleasePoolPop(v36);
    v7 = 0;
LABEL_46:
    Copy = 0;
    goto LABEL_47;
  }

  v6 = [+[WiFiAnalyticsManager sharedWiFiAnalyticsManager](WiFiAnalyticsManager "sharedWiFiAnalyticsManager")];
  v7 = v6;
  if (!v6 || ![v6 count])
  {
    v35 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s copyNetworksAvailableAtLocation returned null or empty array, likely no known networks at this location. Returning NULL", "WiFiManagerCopySSIDRepresentingMostUsedNetworkGeoTaggedToCurrentDeviceLocation"}];
    }

    goto LABEL_45;
  }

  if ([v7 count] == 1)
  {
    v28 = [v7 firstObject];
    if (v28)
    {
      goto LABEL_33;
    }

LABEL_43:
    v35 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s Logic error, determination process finished without detecting a handleable error and didn't finish with a determination. This is a bug.", "WiFiManagerCopySSIDRepresentingMostUsedNetworkGeoTaggedToCurrentDeviceLocation"}];
    }

    goto LABEL_45;
  }

  v8 = +[NSMutableArray array];
  sub_100095134();
  v11 = sub_100095104(v9, v10, v44, v48);
  if (v11)
  {
    v12 = v11;
    v13 = *v46;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        sub_100095280(v46);
        if (!v15)
        {
          objc_enumerationMutation(v7);
        }

        v16 = *(v45 + 8 * i);
        v17 = sub_10000A878(v16);
        if (v17)
        {
          sub_10000A878(v16);
          v17 = [sub_100024F1C() addObject:?];
        }
      }

      v12 = sub_100095104(v17, v18, v44, v48);
    }

    while (v12);
  }

  if (![v8 count])
  {
    v35 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s Multiple matches for current location, but couldn't determine the SSIDs of *any* of them, this is likely a serious bug but possibly a rare setup", "WiFiManagerCopySSIDRepresentingMostUsedNetworkGeoTaggedToCurrentDeviceLocation"}];
    }

    goto LABEL_45;
  }

  v19 = sub_100072D44(a1);
  if (!v19)
  {
    v35 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s Couldn't get known networks cache, bail", "WiFiManagerCopySSIDRepresentingMostUsedNetworkGeoTaggedToCurrentDeviceLocation"}];
    }

    goto LABEL_45;
  }

  v20 = [NSMutableArray arrayWithArray:v19];
  if (!v20)
  {
    goto LABEL_46;
  }

  v21 = v20;
  if (![(NSMutableArray *)v20 count])
  {
    goto LABEL_46;
  }

  [(NSMutableArray *)v21 count];
  v22 = sub_100011340();
  CFArraySortValues(v22, v49, v23, 0);
  if (![(NSMutableArray *)v21 count])
  {
    v35 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s Sorted network list empty, this shouldn't happen.", "WiFiManagerCopySSIDRepresentingMostUsedNetworkGeoTaggedToCurrentDeviceLocation"}];
    }

    goto LABEL_45;
  }

  v24 = [NSMutableArray countByEnumeratingWithState:v21 objects:"countByEnumeratingWithState:objects:count:" count:sub_10009528C()];
  if (!v24)
  {
    goto LABEL_43;
  }

  v25 = v24;
  v39 = v4;
  v26 = *v43;
  do
  {
    for (j = 0; j != v25; j = j + 1)
    {
      sub_100095280(v43);
      if (!v15)
      {
        objc_enumerationMutation(v21);
      }

      v28 = *(v42 + 8 * j);
      v29 = objc_autoreleasePoolPush();
      [NSPredicate predicateWithFormat:@"SELF MATCHES %@", sub_10000A878(v28)];
      v30 = [sub_100024F1C() filteredArrayUsingPredicate:?];
      if (v30)
      {
        v31 = [v30 count];
        objc_autoreleasePoolPop(v29);
        if (v31)
        {
          goto LABEL_32;
        }
      }

      else
      {
        objc_autoreleasePoolPop(v29);
      }
    }

    v25 = [(NSMutableArray *)v21 countByEnumeratingWithState:v41 objects:v47 count:16];
  }

  while (v25);
  v28 = 0;
LABEL_32:
  v4 = v39;
  if (!v28)
  {
    goto LABEL_43;
  }

LABEL_33:
  if (!sub_10000A878(v28))
  {
    v35 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s Couldn't determine the SSID of the known network that was determined to be the most used at the current device location. Bail ", "WiFiManagerCopySSIDRepresentingMostUsedNetworkGeoTaggedToCurrentDeviceLocation"}];
    }

LABEL_45:
    objc_autoreleasePoolPop(v35);
    goto LABEL_46;
  }

  CFAllocatorGetDefault();
  sub_10000A878(v28);
  v32 = sub_100024B8C();
  Copy = CFStringCreateCopy(v32, v33);
LABEL_47:

  objc_autoreleasePoolPop(context);
  return Copy;
}

void *sub_1001619D4(void *a1)
{
  if (a1)
  {
    return sub_100089198(a1);
  }

  return a1;
}

uint64_t sub_1001619E0(void *a1)
{
  v2 = sub_10008925C(a1);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_10;
  }

  v3 = v2;
  v4 = [(__CFDictionary *)v2 mutableCopy];

  if (!v4)
  {
LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  v5 = a1[345];
  if (!v5 || (v6 = [v5 cellularICCID]) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: failed to retrieve ICCID", "WiFiManagerResetHotspotDataUsage"}];
    }

    objc_autoreleasePoolPop(v8);
    goto LABEL_10;
  }

  [v4 removeObjectForKey:v6];
  [+[NSUserDefaults standardUserDefaults](NSUserDefaults setObject:"setObject:forKey:" forKey:v4, @"InterfaceDataUsageV1"];
  v7 = 1;
LABEL_11:

  return v7;
}

void sub_100161AC0(void *a1, void *a2, NSDate *a3, uint64_t a4, void *a5)
{
  v91 = a5;
  v86 = a3;
  if (a1 && a2)
  {
    v82 = a4;
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v76 = "__populateHotspotDataUsageFromRecord";
      v77 = a2;
      [off_100298C40 WFLog:3 message:"%s: records %@"];
    }

    v84 = a1;
    objc_autoreleasePoolPop(v7);
    context = objc_autoreleasePoolPush();
    if (!v86)
    {
      v86 = +[NSDate date];
    }

    v8 = +[NSMutableArray array];
    v116 = sub_100089E54(v91);
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    obj = a2;
    v89 = sub_100095104(v116, v9, &v130, v136);
    if (v89)
    {
      v88 = *v131;
      v87 = @"DataUsageDate";
      v10 = @"DataUsageInterfaceName";
      v111 = @"DataUsageInterfacePeerList";
      v11 = @"DataUsageInterfacePeerDisplayName";
      v117 = @"DataUsageInterfacePeerID";
      v102 = @"DataUsageInterfacePeerTotalBytes";
      v103 = @"DataUsageInterfacePeerLastBytes";
      v94 = @"DataUsageProductMarketingName";
      v92 = @"DataUsageProductColor";
      v93 = @"DataUsageProductType";
      v108 = @"DataUsageInterfaceName";
      v109 = v8;
      v95 = @"DataUsageInterfacePeerDisplayName";
      do
      {
        v12 = 0;
        do
        {
          if (*v131 != v88)
          {
            objc_enumerationMutation(obj);
          }

          v90 = v12;
          v13 = *(*(&v130 + 1) + 8 * v12);
          v14 = [v13 objectForKey:v87];
          v15 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            v76 = "__populateHotspotDataUsageFromRecord";
            v77 = v14;
            [off_100298C40 WFLog:3 message:"%s: record date %@"];
          }

          objc_autoreleasePoolPop(v15);
          if (v14 && [(NSDate *)v86 compare:v14]!= NSOrderedAscending)
          {
            v16 = [v13 objectForKey:v10];
            v17 = [v13 objectForKey:v111];
            v18 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              v76 = "__populateHotspotDataUsageFromRecord";
              v77 = v16;
              [off_100298C40 WFLog:3 message:"%s: interfaceName %@"];
            }

            objc_autoreleasePoolPop(v18);
            v19 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              v76 = "__populateHotspotDataUsageFromRecord";
              v77 = v17;
              [off_100298C40 WFLog:3 message:"%s: peerRecords %@"];
            }

            objc_autoreleasePoolPop(v19);
            v128 = 0u;
            v129 = 0u;
            v126 = 0u;
            v127 = 0u;
            v98 = sub_100095104(v20, v21, &v126, v135);
            if (v98)
            {
              v96 = *v127;
              v97 = v17;
              v110 = v16;
              do
              {
                v22 = 0;
                do
                {
                  if (*v127 != v96)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v104 = v22;
                  v23 = *(*(&v126 + 1) + 8 * v22);
                  v106 = [v23 objectForKey:v11];
                  v24 = [v23 objectForKey:@"DataUsageInterfacePeerAddr"];
                  if (_os_feature_enabled_impl())
                  {
                    v24 = [objc_msgSend(v116 objectForKeyedSubscript:{objc_msgSend(v23, "objectForKey:", v117)), "lastObject"}];
                  }

                  v25 = [v23 objectForKey:v103];
                  v26 = [v23 objectForKey:v102];
                  v27 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    v79 = v25;
                    v80 = v26;
                    v77 = v106;
                    v78 = v24;
                    sub_10001EC70();
                    [v28 WFLog:? message:?];
                  }

                  objc_autoreleasePoolPop(v27);
                  v124 = 0u;
                  v125 = 0u;
                  v122 = 0u;
                  v123 = 0u;
                  v115 = sub_100095420(v29, v30, v31, v32, v33, v34, v35, v36, v76, v77, v78, v79, v80, v81, v82, context, v84, obj, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v23, v25, v26, v102, v103, v104, v106, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, *(&v118 + 1), v119, *(&v119 + 1), v120, *(&v120 + 1), v121, *(&v121 + 1), 0);
                  if (v115)
                  {
                    v37 = 0;
                    v112 = 0;
                    v113 = *v123;
LABEL_31:
                    v38 = 0;
                    while (1)
                    {
                      if (*v123 != v113)
                      {
                        objc_enumerationMutation(v8);
                      }

                      v39 = *(*(&v122 + 1) + 8 * v38);
                      v40 = [v16 isEqualToString:{objc_msgSend(v39, "objectForKey:", v10)}];
                      if (v40)
                      {
                        v48 = v39;
                        v49 = [sub_100010938() objectForKey:v111];
                        v51 = v49;
                        v114 = v37;
                        if (v49)
                        {
                          if (v112)
                          {
                          }

                          v49 = v51;
                          v112 = v49;
                        }

                        v120 = 0u;
                        v121 = 0u;
                        v118 = 0u;
                        v119 = 0u;
                        v40 = sub_100095104(v49, v50, &v118, v134);
                        if (v40)
                        {
                          v52 = v40;
                          v53 = *v119;
LABEL_41:
                          v54 = 0;
                          while (1)
                          {
                            if (*v119 != v53)
                            {
                              objc_enumerationMutation(v51);
                            }

                            v55 = *(*(&v118 + 1) + 8 * v54);
                            v56 = [v13 objectForKey:@"DataUsageInterfacePeerAddr"];
                            if (_os_feature_enabled_impl())
                            {
                              v56 = [objc_msgSend(v116 objectForKeyedSubscript:{objc_msgSend(v13, "objectForKey:", v117)), "lastObject"}];
                            }

                            v57 = [v56 isEqualToString:v24];
                            if (v57)
                            {
                              break;
                            }

                            if (v52 == ++v54)
                            {
                              v40 = sub_100095104(v57, v58, &v118, v134);
                              v52 = v40;
                              if (v40)
                              {
                                goto LABEL_41;
                              }

                              goto LABEL_51;
                            }
                          }

                          v40 = v55;
                          if (!v40)
                          {
LABEL_51:
                            v10 = v108;
                            v8 = v109;
                            goto LABEL_52;
                          }

                          v59 = v40;
                          [v40 objectForKey:v103];
                          v60 = [objc_msgSend(sub_100010938() objectForKey:{v102), "unsignedIntegerValue"}];
                          v10 = v108;
                          v8 = v109;
                          v16 = v110;
                          if (v52)
                          {
                            v60 = &v60[[v52 unsignedIntegerValue]];
                          }

                          v11 = v95;
                          if (v100)
                          {
                            v60 = &v60[[v100 unsignedIntegerValue]];
                          }

                          if (v101)
                          {
                            v60 = &v60[[v101 unsignedIntegerValue]];
                          }

                          [NSNumber numberWithUnsignedInteger:v60];
                          [sub_10000757C() setObject:? forKey:?];
                          if (v107)
                          {
                            [v59 setObject:v107 forKey:v95];
                          }

                          [v59 removeObjectForKey:v103];
                          v61 = v105;
                          if (!_os_feature_enabled_impl())
                          {
                            goto LABEL_74;
                          }

                          v62 = [v91 objectForKeyedSubscript:{objc_msgSend(v59, "objectForKey:", v117)}];
                          if (v62)
                          {
                            v63 = v62;
                            [v62 objectForKeyedSubscript:v95];
                            v64 = [sub_1000200E8() objectForKeyedSubscript:v94];
                            v113 = [v63 objectForKeyedSubscript:v93];
                            v115 = [v63 objectForKeyedSubscript:v92];
                            if (v105)
                            {
                              [sub_10002A0A0() setObject:? forKey:?];
                            }

                            if (v64)
                            {
                              [v59 setObject:v64 forKey:v94];
                            }

                            v61 = v105;
                            if (v113)
                            {
                              [v59 setObject:v113 forKey:v93];
                            }

                            if (v115)
                            {
                              [v59 setObject:v115 forKey:v92];
                            }

LABEL_74:
                            v65 = 0;
                            goto LABEL_92;
                          }

                          v65 = 0;
                          goto LABEL_92;
                        }

LABEL_52:
                        v16 = v110;
                        v37 = v114;
                      }

                      if (++v38 == v115)
                      {
                        v115 = sub_100095420(v40, v41, v42, v43, v44, v45, v46, v47, v76, v77, v78, v79, v80, v81, v82, context, v84, obj, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v105, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, *(&v118 + 1), v119, *(&v119 + 1), v120, *(&v120 + 1), v121, *(&v121 + 1), v122);
                        if (v115)
                        {
                          goto LABEL_31;
                        }

                        goto LABEL_76;
                      }
                    }
                  }

                  v37 = 0;
                  v112 = 0;
LABEL_76:
                  v59 = [v99 mutableCopy];
                  if (_os_feature_enabled_impl())
                  {
                    v114 = v37;
                    v66 = [v59 objectForKey:v117];
                    v11 = v95;
                    if ([objc_msgSend(v116 objectForKeyedSubscript:{v66), "lastObject"}])
                    {
                      [sub_10000757C() setObject:? forKey:?];
                    }

                    v67 = [v91 objectForKeyedSubscript:v66];
                    if (v67)
                    {
                      v68 = v67;
                      [v67 objectForKeyedSubscript:v95];
                      v69 = [sub_1000200E8() objectForKeyedSubscript:v94];
                      v113 = [v68 objectForKeyedSubscript:v93];
                      v115 = [v68 objectForKeyedSubscript:v92];
                      if (v66)
                      {
                        [sub_10002A0A0() setObject:? forKey:?];
                      }

                      if (v69)
                      {
                        [v59 setObject:v69 forKey:v94];
                      }

                      v61 = v105;
                      if (v113)
                      {
                        [v59 setObject:v113 forKey:v93];
                      }

                      v11 = v95;
                      if (v115)
                      {
                        [v59 setObject:v115 forKey:v92];
                      }

                      v65 = 1;
                    }

                    else
                    {
                      v65 = 1;
                      v61 = v105;
                    }
                  }

                  else
                  {
                    v65 = 1;
                    v11 = v95;
                    v61 = v105;
                  }

LABEL_92:
                  v70 = v112;
                  if (!v112)
                  {
                    v70 = objc_alloc_init(NSMutableArray);
                    v112 = v70;
LABEL_96:
                    [v70 addObject:v59];
                    goto LABEL_97;
                  }

                  if (v65)
                  {
                    goto LABEL_96;
                  }

LABEL_97:
                  v71 = objc_alloc_init(NSMutableDictionary);
                  v72 = v71;
                  if (v16)
                  {
                    [v71 setObject:v16 forKey:v10];
                  }

                  [v72 setObject:v112 forKey:v111];
                  [v8 addObject:v72];

                  v22 = v61 + 1;
                  v17 = v97;
                }

                while (v22 != v98);
                v98 = sub_100095104(v73, v74, &v126, v135);
              }

              while (v98);
            }
          }

          v12 = v90 + 1;
        }

        while ((v90 + 1) != v89);
        v89 = [obj countByEnumeratingWithState:&v130 objects:v136 count:16];
      }

      while (v89);
    }

    if ([v8 count])
    {
      v75 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: adding interface usage %@", "__populateHotspotDataUsageFromRecord", v8}];
      }

      objc_autoreleasePoolPop(v75);
      [v84 setObject:v8 forKey:{-[NSNumber stringValue](+[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", v82), "stringValue")}];
      if (v91)
      {
        [v84 setObject:v91 forKey:@"PHClients"];
      }
    }

    objc_autoreleasePoolPop(context);
  }
}

void sub_1001624B4(uint64_t a1, int a2)
{
  if (a1)
  {
    if (*(a1 + 2441) != a2)
    {
      *(a1 + 2441) = a2;
      sub_10002626C(a1, a2, @"isWiFiPowerModificationDisabled");
    }
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Null manager", "WiFiManagerDisablePowerModification"}];
    }

    objc_autoreleasePoolPop(v3);
  }
}

void sub_100162558(uint64_t a1, int a2)
{
  if (a1)
  {
    if (*(a1 + 352) != a2)
    {
      *(a1 + 352) = a2;
      sub_10002626C(a1, a2, @"isPersonalHotspotModificationDisabled");
    }
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Null manager", "WiFiManagerDisablePersonalHotspotModification"}];
    }

    objc_autoreleasePoolPop(v3);
  }
}

CFDictionaryRef sub_1001625FC(CFDictionaryRef result)
{
  if (result)
  {
    return sub_1000899A4(result, 0);
  }

  return result;
}

void sub_10016260C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = (a1 + 384);
    if (*(a1 + 384) != a2)
    {
      v5 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation: Mac Randomisation internal UI toggled. Current State : %d, new state : %d", "WiFiManagerSetMacRandomisationPreference", *v4, a2}];
      }

      objc_autoreleasePoolPop(v5);
      v6 = &kCFBooleanFalse;
      if (a2)
      {
        v6 = &kCFBooleanTrue;
      }

      sub_10007393C(a1, @"WiFiMacRandomizationInternalUI", *v6, 0);
    }

    *(a1 + 384) = a2;
    sub_1000348F4();
    v11 = 110;
    v12 = v4;
    v13 = 1;
    v14 = 0;
    v7 = *(a1 + 112);
    sub_1000083DC();
    CFSetApplyFunction(v8, v9, context);
  }
}

void sub_1001626FC()
{
  sub_100094FF0();
  v2 = objc_autoreleasePoolPush();
  if (v0)
  {
    if (v1)
    {
      sub_10001E7E4();
      *(v0 + 768) = CFArrayCreateMutableCopy(v3, v4, v5);
      context[0] = v0;
      context[1] = 0xAAAAAAAAAAAAAAAALL;
      sub_100094FFC();
      context[2] = 0;
      context[3] = v6;
      context[4] = 0;
      v7 = *(v0 + 112);
      sub_1000083DC();
      CFSetApplyFunction(v8, v9, context);
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: manager is NULL", "WiFiManagerSetAmbiguousSSIDs"}];
    }

    objc_autoreleasePoolPop(v10);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001627C4()
{
  sub_100008C40();
  Current = CFAbsoluteTimeGetCurrent();
  v4 = CFDateCreate(kCFAllocatorDefault, Current);
  v226[0] = 0xFFFFFFFFLL;
  if (v0)
  {
    v5 = sub_10000A154(v0);
    LODWORD(v6) = 0;
    if (v1 && !v5)
    {
      Value = CFDictionaryGetValue(v1, @"enabled");
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberIntType, v226 + 4);
        v9 = HIDWORD(v226[0]);
        if (HIDWORD(v226[0]))
        {
          v10 = 1;
        }

        else
        {
          v10 = 0;
          *(v0 + 55) = 0x1400000002;
          v0[112] = 2;
          *(v0 + 97) = xmmword_1001CE340;
          v0[101] = 1209600;
          v0[102] = 86400;
        }

        if (v9 > 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        v8 = v9 == *(v0 + 384);
        sub_10016260C(v0, v11);
      }

      else
      {
        v8 = 1;
      }

      v222 = CFDictionaryGetValue(v1, @"privateMacNetwork");
      otherNumber = CFDictionaryGetValue(v1, @"setSwitchState");
      v12 = CFDictionaryGetValue(v1, @"scanTimeout");
      if (v12)
      {
        CFNumberGetValue(v12, kCFNumberIntType, v0 + 97);
      }

      v13 = CFDictionaryGetValue(v1, @"migrationInterval");
      if (v13)
      {
        CFNumberGetValue(v13, kCFNumberIntType, v0 + 98);
      }

      v14 = CFDictionaryGetValue(v1, @"migrationAttempts");
      if (v14)
      {
        CFNumberGetValue(v14, kCFNumberIntType, v226);
      }

      v15 = CFDictionaryGetValue(v1, @"keyRotationInterval");
      if (v15)
      {
        CFNumberGetValue(v15, kCFNumberIntType, v0 + 100);
        sub_10007393C(v0, @"RotationKeyDateMacRandomisation", v4, 0);
      }

      v16 = CFDictionaryGetValue(v1, @"inactiveNetworkInterval");
      if (v16)
      {
        CFNumberGetValue(v16, kCFNumberIntType, v0 + 101);
      }

      v17 = CFDictionaryGetValue(v1, @"nonTrustworthyInactiveNetworkInterval");
      if (v17)
      {
        CFNumberGetValue(v17, kCFNumberIntType, v0 + 102);
      }

      v225 = CFDictionaryGetValue(v1, @"makeMigratedNetwork");
      v18 = v0[97];
      if (v18 <= 0)
      {
        v18 = 1800;
        v0[97] = 1800;
      }

      v19 = v0[98];
      if (v19 < v18)
      {
        v0[98] = 86400;
        v19 = 86400;
      }

      if (LODWORD(v226[0]))
      {
        v0[99] = v226[0];
      }

      v20 = v0[100];
      if (v20 <= 0)
      {
        v0[100] = 86400;
        v20 = 86400;
      }

      if (v0[101] <= 0)
      {
        v0[101] = 1209600;
      }

      if (v0[102] <= 0)
      {
        v0[102] = 86400;
      }

      if (*(v0 + 59))
      {
        if (v20 >= v19)
        {
          v21 = v19;
        }

        else
        {
          v21 = v20;
        }

        if (v20 > v18)
        {
          v21 = v19;
        }

        if (v18 > v19 || v18 > v20)
        {
          v18 = v21;
        }

        v23 = v18 - 1;
        v24 = 1000000000 * (v18 >> 1);
        if (v23 >= 0x3C)
        {
          v25 = 60000000000;
        }

        else
        {
          v25 = v24;
        }

        dispatch_time(0, v25);
        v26 = sub_100015EB8();
        dispatch_source_set_timer(v26, v27, v25, 0);
      }

      if ((v8 & 1) == 0 && !*(v0 + 384))
      {
        sub_1001633BC();
      }

      v28 = sub_10000D7B8();
      sub_100020170(v28);
      v6 = v29;
      if (v29)
      {
        Count = CFArrayGetCount(v29);
        if (Count >= 1)
        {
          v30 = 0;
          HIDWORD(v207) = 0;
          v218 = 0;
          v31 = kCFBooleanFalse;
          if (v222)
          {
            v32 = otherNumber == 0;
          }

          else
          {
            v32 = 1;
          }

          v33 = !v32;
          v223 = v33;
          v203 = @"PrivateMacProfileDefaultInitialValue";
          key = @"PRIVATE_MAC_ADDRESS_TYPE";
          v211 = @"PRIVATE_MAC_ADDRESS_IN_USE";
          v195 = @"RotationKeyMacRandomisation";
          v199 = @"PrivateMacDefaultToOFF";
          v216 = kCFBooleanFalse;
          v217 = @"PrivateMacControlledDevice";
          v219 = v4;
          HIDWORD(v220) = v8;
          while (1)
          {
            v34 = v6;
            ValueAtIndex = CFArrayGetValueAtIndex(v6, v30);
            if (!ValueAtIndex || (v36 = ValueAtIndex, v37 = CFGetTypeID(ValueAtIndex), v37 != sub_10009D190()))
            {
              v155 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation : knownNetwork is invalid", "WiFiManagerSetMacRandomisationParams"}];
              }

              objc_autoreleasePoolPop(v155);
              goto LABEL_135;
            }

            v38 = sub_10000A540(v36, @"MacAddressRandomisationTagMigratedNetwork");
            if (v38 && v38 == kCFBooleanTrue)
            {
              sub_10000C614(v36, @"PrivateMacClassifyInterval", v0[98]);
              sub_10000C614(v36, @"MacAddressRandomisationClassificationAttempts", SLODWORD(v226[0]));
              if (sub_10000A540(v36, @"PrivateMacJoinDateAfterUpgrade"))
              {
                sub_10000AD34(v36, @"PrivateMacJoinDateAfterUpgrade", v4);
                if (v8)
                {
                  goto LABEL_99;
                }

                goto LABEL_74;
              }
            }

            else
            {
              v39 = sub_10000A540(v36, @"PresentInKnownNetworks");
              v31 = v39;
              if (v39 && v39 == kCFBooleanTrue)
              {
                sub_10000AD34(v36, @"FirstJoinWithNewMacTimestamp", v4);
                v31 = kCFBooleanTrue;
                if (v8)
                {
                  goto LABEL_99;
                }

                goto LABEL_74;
              }
            }

            if (v8)
            {
              goto LABEL_99;
            }

LABEL_74:
            if (!sub_10000A540(v36, @"PRIVATE_MAC_ADDRESS"))
            {
              goto LABEL_99;
            }

            CFDictionaryGetTypeID();
            v40 = sub_100010980();
            if (v2 != CFGetTypeID(v40))
            {
              goto LABEL_99;
            }

            sub_10001E7E4();
            MutableCopy = CFDictionaryCreateMutableCopy(v41, v42, v43);
            if (!MutableCopy)
            {
              goto LABEL_135;
            }

            v45 = MutableCopy;
            v46 = sub_10000A540(v36, @"isProfileBasedNetwork");
            if (*(v0 + 384))
            {
              if (!v46)
              {
                goto LABEL_99;
              }

              if (v46 != kCFBooleanTrue)
              {
                goto LABEL_99;
              }

              v47 = sub_10000A540(v36, v203);
              if (!v47)
              {
                goto LABEL_99;
              }

              if (v47 == kCFBooleanTrue)
              {
                sub_100059228(1);
                v80 = sub_100010980();
                sub_100095440(v80, v81, v82, v83, v84, v85, v86, v87, v159, v163, v167, v171, v175, v179, v183, v187, v191, v195, v199, v203, v207, v211, otherNumber, v216, v217, v218, v219, v220, key);
                CFDictionarySetValue(v45, @"PRIVATE_MAC_ADDRESS_VALUE", *(v0 + 58));
                sub_10009525C(v88, v89, v90, v91, v92, v93, v94, v95, v162, v166, v170, v174, v178, v182, v186, v190, v194, v198, v202, v206, v210, v214);
                if (v2)
                {
                  CFRelease(v2);
                }

                sub_10000AD34(v36, v199, kCFBooleanTrue);
                sub_10000AD34(v36, @"privateMacSuccessfulAssocAtleastOnce", 0);
                v2 = objc_autoreleasePoolPush();
                if (off_100298C40)
                {
                  sub_10000A878(v36);
                  [sub_100095174() WFLog:? message:?];
                }

                objc_autoreleasePoolPop(v2);
                LOBYTE(v8) = BYTE4(v220);
              }

              else
              {
                sub_100059228(2);
                v48 = sub_100010980();
                sub_100095440(v48, v49, v50, v51, v52, v53, v54, v55, v159, v163, v167, v171, v175, v179, v183, v187, v191, v195, v199, v203, v207, v211, otherNumber, v216, v217, v218, v219, v220, key);
                sub_10009525C(v56, v57, v58, v59, v60, v61, v62, v63, v160, v164, v168, v172, v176, v180, v184, v188, v192, v196, v200, v204, v208, v212);
                sub_10000AD34(v36, v199, v216);
                sub_10000AD34(v36, v195, 0);
                if (v2)
                {
                  CFRelease(v2);
                }
              }

              sub_10000AD34(v36, @"PRIVATE_MAC_ADDRESS", v45);
            }

            else
            {
              if (v46 && v46 == kCFBooleanTrue)
              {
                goto LABEL_99;
              }

              if (!v31)
              {
                goto LABEL_99;
              }

              if (v31 != kCFBooleanTrue)
              {
                goto LABEL_99;
              }

              sub_100059228(1);
              v64 = sub_100010980();
              sub_100095440(v64, v65, v66, v67, v68, v69, v70, v71, v159, v163, v167, v171, v175, v179, v183, v187, v191, v195, v199, v203, v207, v211, otherNumber, v216, v217, v218, v219, v220, key);
              CFDictionarySetValue(v45, @"PRIVATE_MAC_ADDRESS_VALUE", *(v0 + 58));
              sub_10009525C(v72, v73, v74, v75, v76, v77, v78, v79, v161, v165, v169, v173, v177, v181, v185, v189, v193, v197, v201, v205, v209, v213);
              v45 = v2;
              if (!v2)
              {
                goto LABEL_99;
              }
            }

            CFRelease(v45);
LABEL_99:
            if (v225)
            {
              sub_10000A878(v36);
              sub_1000951F0();
              if (CFStringCompare(v96, v97, v98) == kCFCompareEqualTo)
              {
                Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                v100 = *(v0 + 52);
                v2 = *(v0 + 53);
                v101 = *(v0 + 58);
                sub_10000A878(v36);
                v102 = sub_100095308();
                v105 = sub_100177A18(v102, v103, v101, v104);
                sub_100059228(2);
                v106 = sub_100010980();
                sub_100095440(v106, v107, v108, v109, v110, v111, v112, v113, v159, v163, v167, v171, v175, v179, v183, v187, v191, v195, v199, v203, v207, v211, otherNumber, v216, v217, v218, v219, v220, key);
                CFDictionarySetValue(Mutable, @"PRIVATE_MAC_ADDRESS_VALUE", v105);
                if (v105)
                {
                  CFRelease(v105);
                }

                if (v2)
                {
                  CFRelease(v2);
                }

                sub_10000AD34(v36, @"MacAddressRandomisationTagMigratedNetwork", kCFBooleanTrue);
                sub_10000C614(v36, @"MacAddressRandomisationClassificationAttempts", v0[99]);
                sub_10000C614(v36, @"PrivateMacClassifyInterval", v0[98]);
                sub_10000AD34(v36, @"PRIVATE_MAC_ADDRESS", Mutable);
                sub_10000AD34(v36, @"RotationKeyUsed", *(v0 + 52));
                sub_10000AD34(v36, @"PresentInKnownNetworks", kCFBooleanTrue);
                sub_10000AD34(v36, @"BlockRotation", kCFBooleanTrue);
                sub_10000AD34(v36, @"PrivateMacFutureMacAddress", 0);
                sub_10000AD34(v36, @"PrivateMacPrefChanged", 0);
                sub_10000AD34(v36, @"PrivateMacPrefChangedTimestamp", 0);
                sub_10000AD34(v36, @"ResetCaptiveProbe", 0);
                sub_10000AD34(v36, @"ExperiencedFallback", 0);
                sub_10000AD34(v36, @"privateMacSuccessfulAssocAtleastOnce", 0);
                v4 = v219;
                LOBYTE(v8) = BYTE4(v220);
                if (Mutable)
                {
                  CFRelease(Mutable);
                }

                sub_100074AB8(v0, "WiFiManagerSetMacRandomisationParams", 29988);
                v218 = v36;
              }
            }

            if (v223)
            {
              v114 = sub_10000A878(v36);
              if (CFStringCompare(v114, v222, 0) == kCFCompareEqualTo)
              {
                v115 = sub_10000A540(v36, v217);
                if (!v115 || v115 == v216)
                {
                  v116 = sub_10000A540(v36, @"PRIVATE_MAC_ADDRESS");
                  v117 = CFDictionaryGetValue(v116, key);
                  v2 = v117;
                  if (!v117 || CFNumberCompare(v117, otherNumber, 0))
                  {
                    if (v116)
                    {
                      sub_10001E7E4();
                      v121 = CFDictionaryCreateMutableCopy(v118, v119, v120);
                    }

                    else
                    {
                      v121 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                    }

                    v122 = v121;
                    v123 = objc_autoreleasePoolPush();
                    if (off_100298C40)
                    {
                      sub_10001EC70();
                      [v124 WFLog:? message:?];
                    }

                    objc_autoreleasePoolPop(v123);
                    CFDictionarySetValue(v122, key, otherNumber);
                    if (sub_10000AC54(otherNumber) == 1)
                    {
                      CFDictionarySetValue(v122, @"PRIVATE_MAC_ADDRESS_VALUE", *(v0 + 58));
                      sub_10009525C(v125, v126, v127, v128, v129, v130, v131, v132, v159, v163, v167, v171, v175, v179, v183, v187, v191, v195, v199, v203, v207, v211);
                      HIDWORD(v207) = 1;
                    }

                    LOBYTE(v8) = BYTE4(v220);
                    if (sub_10000AC54(v2) == 1)
                    {
                      v2 = *(v0 + 52);
                      v133 = *(v0 + 53);
                      v134 = *(v0 + 58);
                      sub_10000A878(v36);
                      v135 = sub_100029EAC();
                      v138 = sub_100177A18(v135, v136, v134, v137);
                      if (v138)
                      {
                        v146 = sub_100010980();
                        CFDictionarySetValue(v146, @"PRIVATE_MAC_ADDRESS_VALUE", v2);
                        CFRelease(v2);
                      }

                      sub_10009525C(v138, v139, v140, v141, v142, v143, v144, v145, v159, v163, v167, v171, v175, v179, v183, v187, v191, v195, v199, v203, v207, v211);
                      sub_10000AD34(v36, @"RotationKeyUsed", *(v0 + 52));
                      HIDWORD(v207) = 1;
                      v4 = v219;
                      LOBYTE(v8) = BYTE4(v220);
                    }

                    sub_10000AD34(v36, @"PrivateMacPrefChanged", kCFBooleanTrue);
                    sub_10000AD34(v36, @"PrivateMacPrefChangedTimestamp", v4);
                    sub_10000AD34(v36, @"PRIVATE_MAC_ADDRESS", v122);
                    if (v122)
                    {
                      CFRelease(v122);
                    }
                  }
                }
              }
            }

            v6 = v34;
            if (Count == ++v30)
            {
              goto LABEL_128;
            }
          }
        }

        v218 = 0;
        HIDWORD(v207) = 0;
LABEL_128:
        sub_100021D58();
        sub_1001610C0();
        if (v147)
        {
          sub_100011414();
          sub_100161270();
          if (!v157)
          {
            v158 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation : Updated privateMac Params and wrote to flash", "WiFiManagerSetMacRandomisationParams"}];
            }

            objc_autoreleasePoolPop(v158);
          }
        }

        if (v225)
        {
          v148 = sub_10000D7B8();
          v149 = sub_100072D44(v148);
          sub_10016350C(v149, v218);
          v150 = sub_1000086AC();
          sub_10007DC04(v150, v151, 4);
          v152 = sub_10000FC38();
          v154 = sub_10000AA64(v152, v153);
          if (v154)
          {
            sub_10000AD34(v154, @"PrivateMacJoinDateAfterUpgrade", 0);
          }
        }

LABEL_135:
        LODWORD(v6) = HIDWORD(v207);
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  v156 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation : Updated Private Mac Params from mobilewifitool at <%@>. scanTimeout = <%d>, keyRotationInterval = <%d>, migrationInterval = <%d>, migrationAttempts = <%d>, inactiveNetworkInterval = <%d>, nonTrustworthyInactiveNetworkInterval = <%d>", "WiFiManagerSetMacRandomisationParams", v4, v0[97], v0[100], v0[98], v0[99], v0[101], v0[102]}];
  }

  objc_autoreleasePoolPop(v156);
  if (v6)
  {
    sub_100074AB8(v0, "WiFiManagerSetMacRandomisationParams", 30069);
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_1001633BC()
{
  sub_10000FC44();
  if (!v0)
  {
    goto LABEL_10;
  }

  v1 = v0;
  if (sub_10000A154(v0))
  {
    goto LABEL_10;
  }

  v2 = *(v1 + 360);
  if (v2 && CFArrayGetCount(v2))
  {
    Copy = CFArrayCreateCopy(kCFAllocatorDefault, *(v1 + 360));
    v3 = Copy;
    if (Copy && CFArrayGetCount(Copy) >= 1)
    {
      sub_100095368();
      do
      {
        v8 = sub_10001E7C0();
        ValueAtIndex = CFArrayGetValueAtIndex(v8, v9);
        if (ValueAtIndex)
        {
          v11 = ValueAtIndex;
          v12 = sub_10000A540(ValueAtIndex, @"PresentInKnownNetworks");
          if (!v12 || v12 != kCFBooleanTrue)
          {
            v14 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              sub_10000A878(v11);
              [sub_100095174() WFLog:? message:?];
            }

            objc_autoreleasePoolPop(v14);
            v15 = sub_1000258C8();
            sub_100163EFC(v15, v16);
          }
        }

        sub_100021D9C();
      }

      while (!v13);
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v1 + 360);
  sub_1001610C0();
  sub_100011414();
  sub_100161270();
  if (v3)
  {
    sub_1000113F8();

    CFRelease(v5);
  }

  else
  {
LABEL_10:
    sub_1000113F8();
  }
}

const void *sub_10016350C(const __CFArray *a1, uint64_t a2)
{
  ValueAtIndex = 0;
  if (a1 && a2)
  {
    Count = CFArrayGetCount(a1);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v5 = Count;
      v6 = 0;
      while (1)
      {
        v7 = sub_10000D80C();
        ValueAtIndex = CFArrayGetValueAtIndex(v7, v8);
        if (sub_10009F648(ValueAtIndex, a2))
        {
          break;
        }

        if (v5 == ++v6)
        {
          return 0;
        }
      }
    }
  }

  return ValueAtIndex;
}

const __CFNumber *sub_10016358C(const __CFNumber *result, CFDictionaryRef theDict)
{
  if (result)
  {
    if (theDict)
    {
      result = CFDictionaryGetValue(theDict, @"NetworkAppOverride");
      if (result)
      {
        valuePtr = 0;
        CFNumberGetValue(result, kCFNumberLongLongType, &valuePtr);
        v2 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: setting user interaction override to networking application with mask=0x%llx", "WiFiManagerSetUserInteractionOverride", valuePtr}];
        }

        objc_autoreleasePoolPop(v2);
        v3 = +[WiFiUserInteractionMonitor sharedInstance];
        return [(WiFiUserInteractionMonitor *)v3 setOverrideApplicationState:valuePtr];
      }
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: resetting user interaction overrides", "WiFiManagerSetUserInteractionOverride"}];
      }

      objc_autoreleasePoolPop(v4);
      v5 = +[WiFiUserInteractionMonitor sharedInstance];

      return [(WiFiUserInteractionMonitor *)v5 resetOverrideStates];
    }
  }

  return result;
}

const __CFNumber *sub_1001636A0(const __CFNumber *result, CFDictionaryRef theDict)
{
  if (result)
  {
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"NetworkPropSsidOverride");
      result = CFDictionaryGetValue(theDict, @"NetworkPropOverrideMask");
      if (result)
      {
        valuePtr = 0;
        CFNumberGetValue(result, kCFNumberLongLongType, &valuePtr);
        v4 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s: setting user interaction network override for ssid %@ with mask=0x%llx", "WiFiManagerSetUserInteractionNwOverride", Value, valuePtr}];
        }

        objc_autoreleasePoolPop(v4);
        v5 = +[WiFiUserInteractionMonitor sharedInstance];
        [(WiFiUserInteractionMonitor *)v5 updateOverrideNetworkState:Value overrideValue:valuePtr];
        return [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor dumpOverrideNetworkState];
      }
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: resetting user interaction network overrides", "WiFiManagerSetUserInteractionNwOverride"}];
      }

      objc_autoreleasePoolPop(v6);
      v7 = +[WiFiUserInteractionMonitor sharedInstance];

      return [(WiFiUserInteractionMonitor *)v7 resetOverrideNetworkStates];
    }
  }

  return result;
}

void sub_100163AF8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *context, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100011520();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  contexta = objc_autoreleasePoolPush();
  Current = CFAbsoluteTimeGetCurrent();
  CFDateCreate(kCFAllocatorDefault, Current);
  v32 = sub_100095220();
  v33 = sub_10000A154(v32);
  v34 = 0;
  if (!v26 || !v28 || v33)
  {
    goto LABEL_31;
  }

  v35 = sub_10000A540(v28, @"PRIVATE_MAC_ADDRESS");
  v36 = sub_10000A540(v28, @"MacAddressRandomisationTagMigratedNetwork");
  v34 = sub_100059228(*v26);
  if (v35 && (TypeID = CFDictionaryGetTypeID(), TypeID == CFGetTypeID(v35)))
  {
    Value = CFDictionaryGetValue(v35, @"PRIVATE_MAC_ADDRESS_TYPE");
    v39 = sub_100011334();
    MutableCopy = CFDictionaryCreateMutableCopy(v39, v40, v35);
    v42 = MutableCopy;
    v43 = 1;
    if (Value && v34)
    {
      v44 = sub_1000086B8();
      MutableCopy = CFNumberCompare(v44, v45, 0);
      v43 = MutableCopy == 0;
    }
  }

  else
  {
    v46 = sub_100095014();
    MutableCopy = CFDictionaryCreateMutable(v46, v47, v48, v49);
    v42 = MutableCopy;
    v43 = 1;
  }

  if (v42)
  {
    if (!v43)
    {
      sub_10002CEF0(MutableCopy, @"ResetCaptiveProbe");
      if (v36 && v36 == kCFBooleanTrue)
      {
        sub_10000AD34(v28, @"MacAddressRandomisationTagMigratedNetwork", 0);
        sub_100095184(v50, @"MacAddressRandomisationClassificationAttempts");
        sub_100095184(v51, @"PrivateMacClassifyInterval");
        sub_10000C614(v28, @"FailureCountThresholdCurrent", *(v30 + 440));
        v36 = kCFBooleanFalse;
        v52 = objc_autoreleasePoolPush();
        v53 = off_100298C40;
        if (off_100298C40)
        {
          sub_10000A878(v28);
          [v53 WFLog:3 message:"%s: WFMacRandomisation : Migration keys removed for network <%@> because user toggled Private Mac preference"];
        }

        objc_autoreleasePoolPop(v52);
      }

      v54 = sub_10000A540(v28, @"PrivateMacDefaultToOFF");
      if (v54)
      {
        sub_1000951D8();
        sub_10000AD34(v55, v56, v57);
      }

      sub_100095184(v54, @"FeatureOffBySystemForHome");
      sub_100095184(v58, @"FeatureOffBySystemForCarplay");
      sub_100095184(v59, @"FeatureOFFBySystemForFrequentlyUsedNetworks");
      sub_10002CEF0(v60, @"PrivateMacFeatureToggled");
      sub_100095184(v61, @"BlockRotation");
      sub_100095184(v62, @"NetworkUsedForSWUpgrade");
      sub_10002CEF0(v63, @"PrivateMacPrefChanged");
      v64 = sub_10002A0A0();
      sub_10000AD34(v64, v65, v66);
    }

    CFDictionarySetValue(v42, @"PRIVATE_MAC_ADDRESS_TYPE", v34);
    v67 = CFDictionaryGetValue(v42, @"PRIVATE_MAC_ADDRESS_VALUE");
    v68 = sub_10000ABFC(v67);
    if (*v26 == 1)
    {
      CFDictionarySetValue(v42, @"PRIVATE_MAC_ADDRESS_VALUE", *(v30 + 464));
    }

    else if (*(v26 + 8))
    {
      v69 = v68;
      v70 = CFDataGetTypeID();
      if (v70 == CFGetTypeID(*(v26 + 8)) && !v69 && (!v36 || v36 != kCFBooleanTrue))
      {
        CFDictionarySetValue(v42, @"PRIVATE_MAC_ADDRESS_VALUE", *(v26 + 8));
        v71 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v77 = *(v26 + 8);
          sub_10000A878(v28);
          [sub_1000951CC() WFLog:? message:?];
        }

        objc_autoreleasePoolPop(v71);
        sub_10000AD34(v28, @"RotationKeyUsed", *(v30 + 416));
        v72 = sub_10002A0A0();
        sub_10000AD34(v72, v73, v74);
        sub_10002CEF0(v75, @"ResetCaptiveProbe");
        sub_10002CEF0(v76, @"NoAssociationWithNewMac");
      }
    }

    sub_10000AD34(v28, @"PRIVATE_MAC_ADDRESS", v42);
    CFRelease(v42);
LABEL_31:
    if (!v24)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (v24)
  {
LABEL_32:
    CFRelease(v24);
  }

LABEL_33:
  if (v34)
  {
    CFRelease(v34);
  }

  objc_autoreleasePoolPop(contexta);
  sub_10001091C();
}

void sub_100163EFC(uint64_t a1, const void **a2)
{
  v7 = 0;
  idx = -1;
  if (a1)
  {
    if (a2)
    {
      v3 = sub_100020170();
      if (v3)
      {
        v4 = v3;
        sub_10000AACC(v3, a2, &idx, &v7);
        if (idx != -1)
        {
          v5 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            v6 = sub_10000A878(a2);
            [sub_10000FC2C() WFLog:"__WiFiManagerPrivateMacRemoveNetwork" message:{v6, v7}];
          }

          objc_autoreleasePoolPop(v5);
          CFArrayRemoveValueAtIndex(v4, idx);
        }
      }
    }
  }
}

void sub_100163FB8()
{
  sub_10000FC44();
  v4 = v3;
  v6 = v5;
  if (!v1)
  {
    goto LABEL_12;
  }

  v7 = v2;
  v8 = v1;
  if (!CFArrayGetCount(v1))
  {
    goto LABEL_12;
  }

  if (!v7 || (v9 = sub_100095068(), v10 = CFGetTypeID(v9), v10 != sub_10009D190()))
  {
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:"%s: invalid network ref"];
    }

    objc_autoreleasePoolPop(v14);
    goto LABEL_12;
  }

  if (v0 < 1)
  {
LABEL_12:
    v11 = -1;
    goto LABEL_13;
  }

  v11 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v8, v11);
    v13 = sub_10000A540(ValueAtIndex, @"NetworkAddedByProfile");
    if (sub_10000AFE4(ValueAtIndex) && v13 && v13 == kCFBooleanTrue && sub_1000A2CFC(ValueAtIndex, v7))
    {
      break;
    }

    if (v0 == ++v11)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  if (v4)
  {
    *v4 = 0;
  }

  if (v6)
  {
    *v6 = v11;
  }

  sub_1000113F8();
}

const void *sub_1001640E4(uint64_t a1, const void **a2)
{
  if (!a1)
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null manager", "__WiFiManagerRetrievePrivateMacNetworkVersionFromCache"}];
    }

    goto LABEL_11;
  }

  if (!a2)
  {
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null network", "__WiFiManagerRetrievePrivateMacNetworkVersionFromCache"}];
    }

LABEL_11:
    objc_autoreleasePoolPop(v5);
    return 0;
  }

  v3 = sub_100020170();
  if (!v3)
  {
    return 0;
  }

  return sub_10000AA64(v3, a2);
}

void sub_1001641B4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *key, void *a10, int a11, int a12, uint64_t a13, int a14, int a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  sub_100094FD4();
  if (!v31)
  {
    goto LABEL_51;
  }

  v33 = v32;
  if (!v32)
  {
    goto LABEL_51;
  }

  v34 = v31;
  v35 = sub_10000A540(v32, @"BSSID");
  if (v35)
  {
    sub_10000AD34(v34, @"BSSID", v35);
  }

  v36 = sub_10000A540(v33, @"addedAt");
  if (v36)
  {
    sub_10000AD34(v34, @"addedAt", v36);
  }

  if (&_CNForgetSSID)
  {
    if (sub_10000A540(v33, kCNSNetworkWasCaptiveProperty))
    {
      v37 = sub_100003924();
      sub_10000A540(v37, v38);
      v39 = sub_100021D58();
      sub_10000AD34(v39, v40, v41);
    }

    if (sub_10000A540(v33, kCNSCaptiveNetworkProperty))
    {
      v42 = sub_100003924();
      sub_10000A540(v42, v43);
      v44 = sub_100021D58();
      sub_10000AD34(v44, v45, v46);
    }

    if (sub_10000A540(v33, kCNSDisabledByCaptiveProperty) && !sub_10000A540(v34, kCNSDisabledByCaptiveProperty))
    {
      v47 = sub_100003924();
      sub_10000A540(v47, v48);
      v49 = sub_100021D58();
      sub_10000AD34(v49, v50, v51);
    }
  }

  v52 = sub_100009730(v33);
  v53 = sub_10009ED84(v33);
  v88 = sub_10000AFE4(v33);
  v89 = sub_1000A1F04(v33);
  v54 = sub_100095214();
  v90 = sub_10000A540(v54, v55);
  v93 = sub_10000A540(v33, @"DomainName");
  v95 = sub_10000A540(v33, @"DisplayedOperatorName");
  v94 = sub_10000A7CC(v33);
  v56 = sub_10001E7C0();
  v58 = sub_10000A540(v56, v57);
  v59 = sub_1000083F0();
  v61 = sub_10000A540(v59, v60);
  v62 = sub_10000A540(v33, @"PolicyUUID");
  v91 = sub_10001D200(v33);
  v92 = sub_100022834(v33);
  if (v58)
  {
    v63 = sub_1000086B8();
    sub_10000AD34(v63, v64, v58);
  }

  if (v61)
  {
    sub_10000AD34(v34, @"PayloadIdentifier", v61);
  }

  if (v62)
  {
    v65 = sub_10000D818();
    sub_10000AD34(v65, v66, v67);
  }

  v68 = sub_100003924();
  v70 = sub_10000A540(v68, v69);
  if (v52)
  {
    sub_10000AD34(v34, @"IsEapNetwork", kCFBooleanTrue);
  }

  if (v70 && v70 == kCFBooleanTrue)
  {
    v71 = sub_100021D58();
    sub_10000AD34(v71, v72, v73);
  }

  if (v53)
  {
    sub_10000AD34(v34, @"isProfileBasedNetwork", kCFBooleanTrue);
  }

  if (v88)
  {
    sub_10000AD34(v34, @"isHs20BasedNetwork", kCFBooleanTrue);
  }

  if (v89)
  {
    sub_10000AD34(v34, @"isCarrierBundleBased", kCFBooleanTrue);
  }

  v74 = sub_1000950F8();
  if (!sub_10000A540(v74, v75) && v90)
  {
    if (v90 == kCFBooleanTrue)
    {
      v76 = kCFBooleanTrue;
    }

    else
    {
      v76 = kCFBooleanFalse;
    }

    v77 = sub_1000950F8();
    sub_10000AD34(v77, v78, v76);
    v79 = sub_10000D818();
    sub_10000AD34(v79, v80, v81);
  }

  if (v93)
  {
    sub_10000AD34(v34, @"DomainName", v93);
  }

  if (v95)
  {
    sub_10000AD34(v34, @"DisplayedOperatorName", v95);
  }

  if (v94)
  {
    sub_10000AD34(v34, @"IsCarplayNetwork", kCFBooleanTrue);
  }

  if (v91)
  {
    sub_10000AD34(v34, @"PublicAirPlayNetwork", kCFBooleanTrue);
  }

  if (v92 && (v82 = sub_100003924(), sub_10000A540(v82, v83)))
  {
    sub_100021D58();
    sub_100008C64();

    sub_10000AD34(v84, v85, v86);
  }

  else
  {
LABEL_51:
    sub_100008C64();
  }
}

void sub_1001645AC(uint64_t a1, const void *a2)
{
  if (a1)
  {
    v3 = sub_10000A154(a1);
    if (a2)
    {
      if (!v3)
      {
        Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (Mutable)
        {
          v5 = Mutable;
          v6 = sub_10000A540(a2, @"PrivateMacDefaultToOFF");
          if (v6 && CFBooleanGetValue(v6) == 1)
          {
            v7 = sub_100059228(1);
            CFDictionarySetValue(v5, @"PRIVATE_MAC_ADDRESS_TYPE", v7);
            if (v7)
            {
              CFRelease(v7);
            }

            sub_10000AD34(a2, @"PRIVATE_MAC_ADDRESS", v5);
          }

          sub_10000AD34(a2, @"BlockRotation", kCFBooleanTrue);
          CFRelease(v5);
          v8 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            v36 = sub_10000A878(a2);
            [sub_10000DAC0() WFLog:"__WiFiManagerPrivateMacForceTurnOffMigratedNetwork" message:v36];
          }

          objc_autoreleasePoolPop(v8);
          v9 = sub_100011328();
          sub_10000AD34(v9, v10, v11);
          v12 = sub_100011328();
          sub_10000AD34(v12, v13, v14);
          v15 = sub_100011328();
          sub_10000AD34(v15, v16, v17);
          v18 = sub_100011328();
          sub_10000AD34(v18, v19, v20);
          v21 = sub_100011328();
          sub_10000AD34(v21, v22, v23);
          v24 = sub_100011328();
          sub_10000AD34(v24, v25, v26);
          v27 = sub_100011328();
          sub_10000AD34(v27, v28, v29);
          v30 = sub_100011328();
          sub_10000AD34(v30, v31, v32);
          v33 = sub_100011328();

          sub_10000AD34(v33, v34, v35);
        }
      }
    }
  }
}

uint64_t sub_1001647A0(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = sub_10000A154(result);
    result = 0;
    if (a2)
    {
      if (!v3)
      {
        v4 = sub_10000A540(a2, @"PrivateMacFeatureTurnedONtoOFF");
        v5 = sub_10000A540(a2, @"PrivateMacFeatureTurnedOFFtoON");
        v6 = sub_10000A540(a2, @"PrivateMacPrefChanged");
        v7 = sub_10000A540(a2, @"privateMacSuccessfulAssocAtleastOnce");
        v8 = sub_10000A540(a2, @"PrivateMacDefaultToOFF");
        v9 = sub_10000A540(a2, @"PRIVATE_MAC_ADDRESS");
        if (v9)
        {
          v10 = v9;
          if (v7)
          {
            v11 = v7 == kCFBooleanTrue;
          }

          else
          {
            v11 = 0;
          }

          v12 = v11;
          TypeID = CFDictionaryGetTypeID();
          v14 = CFGetTypeID(v10);
          v11 = TypeID == v14;
          result = TypeID != v14;
          if (v11 && (v12 & 1) == 0)
          {
            if (v5 && v5 == kCFBooleanTrue || v4 && v4 == kCFBooleanTrue || v6 && v6 == kCFBooleanTrue || v8 && v8 == kCFBooleanFalse || sub_10000A7CC(a2))
            {
              return 0;
            }

            else
            {
              if (v8)
              {
                v15 = v8 == kCFBooleanTrue;
              }

              else
              {
                v15 = 0;
              }

              return !v15;
            }
          }
        }

        else
        {
          return 1;
        }
      }
    }
  }

  return result;
}

void sub_100164918()
{
  sub_10000FC44();
  if (v0 && v1)
  {
    v2 = v0;
    v3 = sub_10000C580(kCFAllocatorDefault, v1);
    v4 = sub_100021858();
    sub_100020170(v4);
    if (CFArrayGetCount(v5) < 1)
    {
      Copy = 0;
    }

    else
    {
      Copy = CFArrayCreateCopy(kCFAllocatorDefault, *(v2 + 360));
      if (Copy)
      {
        do
        {
          v7 = sub_10002ACB4();
          ValueAtIndex = CFArrayGetValueAtIndex(v7, v8);
          v10 = sub_1000258C8();
          if (sub_1000A2CFC(v10, v11))
          {
            v13 = sub_100095044();
            sub_100163EFC(v13, v14);
            v15 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              sub_10000A878(ValueAtIndex);
              [sub_100095174() WFLog:? message:?];
            }

            objc_autoreleasePoolPop(v15);
          }

          sub_1000950C4();
        }

        while (!v12);
      }
    }

    if (v3)
    {
      CFRelease(v3);
    }

    if (Copy)
    {
      CFRelease(Copy);
    }
  }

  sub_1000113F8();
}

BOOL sub_100164A3C(uint64_t a1, const void **a2)
{
  v2 = sub_1001640E4(a1, a2);
  v3 = sub_10000FC38();
  v5 = sub_1001640E4(v3, v4);
  if (v2 == v5)
  {
    return 1;
  }

  v6 = v5;
  result = 0;
  if (v2)
  {
    if (v6)
    {
      v8 = sub_100021D58();
      v10 = sub_10000A540(v8, v9);
      v11 = sub_100003924();
      v13 = sub_10000A540(v11, v12);
      result = 0;
      if (v10)
      {
        if (v13)
        {
          v14 = sub_100021D58();
          Value = CFDictionaryGetValue(v14, v15);
          v17 = sub_100003924();
          v19 = CFDictionaryGetValue(v17, v18);
          result = 0;
          if (Value)
          {
            if (v19)
            {
              v20 = sub_100011328();
              return CFNumberCompare(v20, v21, v22) == kCFCompareEqualTo;
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_100164B04(uint64_t a1)
{
  v1 = sub_100160658(a1);
  v2 = sub_10009502C();
  v3 = sub_100160658(v2);
  v4 = sub_10009502C();
  v5 = sub_100160968(v4);
  v6 = sub_10009502C();
  v7 = sub_100160968(v6);
  if (v1)
  {
    v8 = sub_100094FB0();
    v10 = 0;
    if (CFStringCompare(v8, v9, 0) == kCFCompareEqualTo)
    {
      if (v3)
      {
        v11 = sub_10002CF50();
        v10 = 0;
        if (CFStringCompare(v11, v12, 0) == kCFCompareEqualTo)
        {
          if (v5)
          {
            v13 = sub_10000D80C();
            v10 = 0;
            if (CFStringCompare(v13, v14, 0) == kCFCompareEqualTo)
            {
              if (v7)
              {
                v15 = sub_10002ACB4();
                if (CFStringCompare(v15, v16, 0) == kCFCompareEqualTo)
                {
                  v10 = 1;
                }
              }
            }
          }
        }
      }
    }

    CFRelease(v1);
    if (v3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v10 = 0;
    if (v3)
    {
LABEL_12:
      CFRelease(v3);
    }
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v10;
}

CFMutableDictionaryRef sub_100164C30(unsigned int *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = sub_10000836C();
  Mutable = CFDictionaryCreateMutable(v2, v3, v4, v5);
  v8 = Mutable;
  if (Mutable)
  {
    v52 = *(a1 + 384) != 0;
    v9 = sub_10009522C(Mutable, v7, &v52);
    v10 = sub_100007514();
    CFDictionaryAddValue(v10, v11, v12);
    if (v9)
    {
      CFRelease(v9);
    }

    v15 = sub_10009522C(v13, v14, a1 + 97);
    if (v15)
    {
      v17 = v15;
      v18 = sub_100007514();
      CFDictionaryAddValue(v18, v19, v20);
      CFRelease(v17);
    }

    v21 = sub_10009522C(v15, v16, a1 + 98);
    if (v21)
    {
      v23 = v21;
      v24 = sub_100007514();
      CFDictionaryAddValue(v24, v25, v26);
      CFRelease(v23);
    }

    v27 = sub_10009522C(v21, v22, a1 + 99);
    if (v27)
    {
      v29 = v27;
      v30 = sub_100007514();
      CFDictionaryAddValue(v30, v31, v32);
      CFRelease(v29);
    }

    v33 = sub_10009522C(v27, v28, a1 + 100);
    if (v33)
    {
      v35 = v33;
      v36 = sub_100007514();
      CFDictionaryAddValue(v36, v37, v38);
      CFRelease(v35);
    }

    v39 = sub_10009522C(v33, v34, a1 + 101);
    if (v39)
    {
      v41 = v39;
      v42 = sub_100007514();
      CFDictionaryAddValue(v42, v43, v44);
      CFRelease(v41);
    }

    v45 = sub_10009522C(v39, v40, a1 + 102);
    if (v45)
    {
      v46 = v45;
      v47 = sub_10000D818();
      CFDictionaryAddValue(v47, v48, v49);
      CFRelease(v46);
    }

    v50 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"WFMacRandomisation : Returning parameters to client: enabled <%d>, scanTimeOut <%d>, keyRotationInterval <%d>, migrationClassificationInterval <%d>, inactiveNetworkInterval <%d>, nonTrustworthyInactiveNetworkInterval <%d>", *(a1 + 384), a1[97], a1[100], a1[98], a1[101], a1[102]}];
    }

    objc_autoreleasePoolPop(v50);
  }

  return v8;
}

void sub_100164E18()
{
  sub_1000086C4();
  if (v2)
  {
    sub_100095008();
    v4 = sub_10000A154(v3);
    if (v0)
    {
      if (!v4)
      {
        sub_100020170(v1);
        if (v5)
        {
          if (CFArrayGetCount(v5) >= 1)
          {
            do
            {
              v6 = sub_10002ACB4();
              ValueAtIndex = CFArrayGetValueAtIndex(v6, v7);
              sub_10000A878(ValueAtIndex);
              sub_1000951D8();
              if (CFStringCompare(v9, v10, v11) == kCFCompareEqualTo)
              {
                v12 = sub_1000952FC();
                v14 = sub_10000A540(v12, v13);
                if (v14)
                {
                  Value = CFDictionaryGetValue(v14, @"PRIVATE_MAC_ADDRESS_TYPE");
                  sub_10000AC54(Value);
                }
              }

              sub_1000950C4();
            }

            while (!v16);
          }

          v17 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:"WFMacRandomisation : Returning parameters to client for network [%@]: privateMacSwitchState <%d>"];
          }

          objc_autoreleasePoolPop(v17);
        }
      }
    }
  }

  sub_100010944();
}

void sub_100164F24(uint64_t a1)
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

void sub_100164F6C()
{
  sub_10000D798();
  v2 = v1;
  if (!v0)
  {
    goto LABEL_26;
  }

  v3 = sub_10000A154(v0);
  if (!v2)
  {
    goto LABEL_26;
  }

  if (v3)
  {
    goto LABEL_26;
  }

  if (!sub_10000A878(v2))
  {
    goto LABEL_26;
  }

  v4 = sub_10000A540(v2, @"UpdateReason");
  if (!v4)
  {
    goto LABEL_26;
  }

  v5 = CFGetTypeID(v4);
  if (v5 != CFStringGetTypeID())
  {
    goto LABEL_26;
  }

  v6 = sub_100095074();
  if (CFStringCompare(v6, v7, v8) == kCFCompareEqualTo)
  {
    sub_1000951F0();
    if (CFStringCompare(v24, v25, v26))
    {
      v21 = sub_100011580();
      v23 = 4;
      goto LABEL_21;
    }

    v30 = objc_autoreleasePoolPush();
    v31 = off_100298C40;
    if (off_100298C40)
    {
      v32 = "WFMacRandomisation : Skipping migration for network <%@>";
LABEL_24:
      [v31 WFLog:3 message:v32];
    }

LABEL_25:
    objc_autoreleasePoolPop(v30);
    goto LABEL_26;
  }

  v9 = sub_100095074();
  if (CFStringCompare(v9, v10, v11) == kCFCompareEqualTo)
  {
    v21 = sub_100011580();
    v23 = 7;
    goto LABEL_21;
  }

  v12 = sub_100095074();
  if (CFStringCompare(v12, v13, v14) == kCFCompareEqualTo)
  {
    sub_1000951F0();
    if (CFStringCompare(v27, v28, v29))
    {
      v21 = sub_100011580();
      v23 = 9;
      goto LABEL_21;
    }

    v30 = objc_autoreleasePoolPush();
    v31 = off_100298C40;
    if (off_100298C40)
    {
      v32 = "WFMacRandomisation : Skipping rotation migration for network <%@>";
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v15 = sub_100095074();
  if (CFStringCompare(v15, v16, v17) == kCFCompareEqualTo)
  {
    v21 = sub_100011580();
    v23 = 10;
    goto LABEL_21;
  }

  v18 = sub_100095074();
  if (CFStringCompare(v18, v19, v20) == kCFCompareEqualTo)
  {
    v21 = sub_100011580();
    v23 = 12;
LABEL_21:
    sub_10007DC04(v21, v22, v23);
  }

LABEL_26:
  v33 = sub_100011328();
  sub_10000AD34(v33, v34, v35);
  sub_1000084B8();
}

uint64_t sub_100165134()
{
  sub_100094FF0();
  v5 = sub_100021720(v4);
  v6 = v5;
  if (v0 && v1 && *(v0 + 384) && v5)
  {
    if (sub_10009F648(v1, v5))
    {
      v12 = sub_100011580();
      v14 = sub_1001640E4(v12, v13);
      if (!v14)
      {
        goto LABEL_24;
      }

      v15 = v14;
      v16 = sub_10000A540(v14, @"PRIVATE_MAC_ADDRESS");
      if (v16 && (v17 = v16, CFDictionaryGetTypeID(), v18 = sub_100010938(), v2 == CFGetTypeID(v18)))
      {
        Value = CFDictionaryGetValue(v17, @"PRIVATE_MAC_ADDRESS_VALUE");
        v20 = sub_10000ABFC(Value) != 0;
      }

      else
      {
        v20 = 1;
      }

      v10 = sub_10000A540(v15, @"MacAddressRandomisationTagMigratedNetwork");
      v21 = sub_10009E718(v15) || sub_10009E770(v15);
      if (!v10)
      {
        goto LABEL_10;
      }

      if (v10 != kCFBooleanTrue || !v20)
      {
LABEL_24:
        v10 = 0;
        goto LABEL_10;
      }

      if (!v21)
      {
        sub_10000AD34(v15, @"PrivateMacQuickProbeRequested", kCFBooleanTrue);
        v7 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v22 = sub_10000A878(v6);
          [sub_10000DAC0() WFLog:"WiFiManagerPrivateMacIsQuickProbeRequired" message:v22];
        }

        v10 = 1;
        goto LABEL_9;
      }

      v7 = objc_autoreleasePoolPush();
      v10 = off_100298C40;
      if (!off_100298C40)
      {
LABEL_9:
        objc_autoreleasePoolPop(v7);
LABEL_10:
        CFRelease(v6);
        return v10;
      }

      [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation : Not requesting early expiry probe check for network <%@> becuase it was a captive network", "WiFiManagerPrivateMacIsQuickProbeRequired", sub_10000A878(v6), v23}];
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      v8 = off_100298C40;
      if (off_100298C40)
      {
        sub_10000A878(v6);
        v9 = sub_10002D09C();
        [v8 WFLog:3 message:{"%s: WFMacRandomisation : dont request quick probe check. This is a different network. Current Network <%@>, request for network <%@>", "WiFiManagerPrivateMacIsQuickProbeRequired", v3, sub_10000A878(v9)}];
      }
    }

    v10 = 0;
    goto LABEL_9;
  }

  v10 = 0;
  result = 0;
  if (v6)
  {
    goto LABEL_10;
  }

  return result;
}

void sub_100165368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10009519C();
  v7 = sub_100021720(v6);
  if (v3)
  {
    v8 = sub_10000A154(v3);
    if (v4)
    {
      if (!v8 && v7)
      {
        if (sub_10009F648(v4, v7))
        {
          v10 = sub_100011580();
          v12 = sub_1001640E4(v10, v11);
          if (!v12)
          {
            goto LABEL_10;
          }

          v13 = v12;
          v14 = sub_10000A540(v12, @"PrivateMacQuickProbeRequested");
          if (!v14)
          {
            goto LABEL_10;
          }

          v15 = v14;
          if (v14 != kCFBooleanTrue)
          {
            goto LABEL_10;
          }

          v16 = sub_100094FB0();
          sub_10000AD34(v16, v17, v18);
          v19 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            v23 = sub_10000A878(v7);
            [sub_10002D390() WFLog:"WiFiManagerPrivateMacProbeResult" message:{v23, a3}];
          }

          objc_autoreleasePoolPop(v19);
          if (!a3)
          {
            if (sub_10000A540(v13, @"MacAddressRandomisationTagMigratedNetwork") == v15)
            {
              sub_10016557C();
              sub_100074AB8(v3, "WiFiManagerPrivateMacProbeResult", 32693);
              v25 = 0xAAAAAAAAAAAAAAAALL;
              v24 = 4;
              sub_100147640(v13, &v24);
              sub_1001473EC(&v24);
            }

            goto LABEL_10;
          }

          v20 = sub_100011580();
          if (sub_10007DC04(v20, v21, 6))
          {
LABEL_10:
            CFRelease(v7);
            return;
          }

          v9 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            v22 = sub_10000A878(v7);
            goto LABEL_8;
          }
        }

        else
        {
          v9 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            sub_10000A878(v7);
            sub_10000A878(v4);
            v22 = "WiFiManagerPrivateMacProbeResult";
LABEL_8:
            [sub_10000DAC0() WFLog:v22 message:?];
          }
        }

        objc_autoreleasePoolPop(v9);
        goto LABEL_10;
      }
    }
  }

  if (v7)
  {
    goto LABEL_10;
  }
}

void sub_1001657A4(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_82;
  }

  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: resetting network settings", "WiFiManagerResetNetworkSettings"}];
  }

  objc_autoreleasePoolPop(v2);
  theArray = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (theArray)
  {
    v3 = sub_100020110(v1);
    v4 = &xpc_dictionary_set_uint64_ptr;
    v66 = v1;
    cf = v3;
    if (!v3 || CFArrayGetCount(v3) < 1)
    {
      goto LABEL_29;
    }

    v5 = 0;
    do
    {
      v6 = sub_100021D58();
      ValueAtIndex = CFArrayGetValueAtIndex(v6, v7);
      if (ValueAtIndex)
      {
        v9 = ValueAtIndex;
        if (sub_10009ED84(ValueAtIndex))
        {
          v10 = sub_10000A878(v9);
          if (v10)
          {
            CFArrayAppendValue(theArray, v10);
          }

          v5 = 1;
        }

        else
        {
          sub_100081634(v1, v9, 13);
          v12 = sub_1000A158C(v9);
          v13 = objc_autoreleasePoolPush();
          if (v12 == 2)
          {
            if (off_100298C40)
            {
              sub_10000A878(v9);
              [sub_100095144() WFLog:? message:?];
            }

            objc_autoreleasePoolPop(v13);
          }

          else
          {
            if (off_100298C40)
            {
              sub_10000A878(v9);
              [sub_100095144() WFLog:? message:?];
            }

            objc_autoreleasePoolPop(v13);
            sub_10009FE90();
            v14 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              sub_10000A878(v9);
              [sub_100095144() WFLog:? message:?];
            }

            objc_autoreleasePoolPop(v14);
            sub_10009FCF4(v9);
          }

          v1 = v66;
          if (&_EAPTLSRemoveTrustExceptionsBindings && sub_100009730(v9))
          {
            sub_10000A878(v9);
            sub_100024B8C();
            EAPTLSRemoveTrustExceptionsBindings();
          }
        }
      }

      sub_100010294();
    }

    while (!v11);
    v4 = &xpc_dictionary_set_uint64_ptr;
    if (v5)
    {
      v50 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: device has profile based networks", "WiFiManagerResetNetworkSettings"}];
      }

      objc_autoreleasePoolPop(v50);
      if (*(v1 + 216))
      {
        Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (Mutable)
        {
          v51 = Mutable;
          Count = CFArrayGetCount(theArray);
          if (Count >= 1)
          {
            v53 = Count;
            for (i = 0; i != v53; ++i)
            {
              v55 = CFArrayGetValueAtIndex(theArray, i);
              v56 = sub_100095208();
              Value = CFDictionaryGetValue(v56, v57);
              v59 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                [off_100298C40 WFLog:3 message:{"%s: preserving network set for %@ (%@)", "WiFiManagerResetNetworkSettings", v55, Value}];
              }

              objc_autoreleasePoolPop(v59);
              if (v55 && Value)
              {
                v60 = sub_10001EC64();
                CFDictionarySetValue(v60, v61, Value);
              }
            }
          }

          [+[NSUserDefaults standardUserDefaults](NSUserDefaults setObject:"setObject:forKey:" forKey:v51, @"Custom network settings"];
          CFRelease(v51);
          v1 = v66;
        }
      }
    }

    else
    {
LABEL_29:
      v15 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: removing custom network settings", "WiFiManagerResetNetworkSettings"}];
      }

      objc_autoreleasePoolPop(v15);
      Mutable = [objc_msgSend(v4[367] "standardUserDefaults")];
    }

    v17 = sub_100095458(Mutable, @"AllowEnable");
    sub_100095458(v17, @"DeviceUUID");
    sub_100088FF4(v1, 0);
    v18 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: WFMacRandomisation : Special Handling for Private MAC Networks", "WiFiManagerResetNetworkSettings"}];
    }

    objc_autoreleasePoolPop(v18);
    sub_1001633BC();
    Current = CFAbsoluteTimeGetCurrent();
    v20 = CFDateCreate(kCFAllocatorDefault, Current);
    if (!sub_10000A154(v1))
    {
      sub_100020170(v1);
      if (v21)
      {
        v22 = CFArrayGetCount(v21);
        if (v22)
        {
          v23 = v22;
          v63 = v20;
          if (v22 >= 1)
          {
            for (j = 0; v23 != j; ++j)
            {
              v25 = sub_100029EAC();
              v27 = CFArrayGetValueAtIndex(v25, v26);
              if (!v27)
              {
                continue;
              }

              v28 = v27;
              v29 = sub_10000A540(v27, @"isProfileBasedNetwork");
              if (!v29)
              {
                continue;
              }

              if (v29 != kCFBooleanTrue)
              {
                continue;
              }

              v30 = sub_10000A540(v28, @"PrivateMacProfileDefaultInitialValue");
              sub_10000A540(v28, @"PRIVATE_MAC_ADDRESS");
              v31 = sub_10001158C();
              MutableCopy = CFDictionaryCreateMutableCopy(v31, 0, v32);
              if (!MutableCopy)
              {
                continue;
              }

              v34 = MutableCopy;
              if (v30)
              {
                if (v30 == kCFBooleanTrue)
                {
                  v42 = sub_100059228(1);
                  CFDictionarySetValue(v34, @"PRIVATE_MAC_ADDRESS_TYPE", v42);
                  CFDictionarySetValue(v34, @"PRIVATE_MAC_ADDRESS_VALUE", *(v1 + 464));
                  CFDictionaryRemoveValue(v34, @"PRIVATE_MAC_ADDRESS_IN_USE");
                  sub_10000AD34(v28, @"PrivateMacDefaultToOFF", kCFBooleanTrue);
                  sub_10000AD34(v28, @"privateMacSuccessfulAssocAtleastOnce", 0);
                  v44 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    sub_10000A878(v28);
                    [sub_100029DB0() WFLog:? message:?];
                  }

                  objc_autoreleasePoolPop(v44);
                  if (!v42)
                  {
                    goto LABEL_55;
                  }
                }

                else
                {
                  v35 = sub_100059228(2);
                  CFDictionarySetValue(v34, @"PRIVATE_MAC_ADDRESS_TYPE", v35);
                  CFDictionaryRemoveValue(v34, @"PRIVATE_MAC_ADDRESS_VALUE");
                  CFDictionaryRemoveValue(v34, @"PRIVATE_MAC_ADDRESS_IN_USE");
                  sub_10000AD34(v28, @"PrivateMacDefaultToOFF", kCFBooleanFalse);
                  sub_10000AD34(v28, @"RotationKeyMacRandomisation", 0);
                  v36 = v1;
                  v39 = v1 + 416;
                  v38 = *(v1 + 416);
                  v37 = *(v39 + 8);
                  v40 = *(v36 + 464);
                  v41 = sub_10000A878(v28);
                  v42 = sub_100177A18(v37, v38, v40, v41);
                  v43 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    v62 = sub_10000A878(v28);
                    [sub_10002147C() WFLog:"__WiFiManagerPrivateMacProcessProfileBasedNetworks" message:{v42, v62}];
                  }

                  objc_autoreleasePoolPop(v43);
                  if (v35)
                  {
                    CFRelease(v35);
                  }

                  v1 = v66;
                  if (!v42)
                  {
                    goto LABEL_55;
                  }

                  CFDictionarySetValue(v34, @"PRIVATE_MAC_ADDRESS_VALUE", v42);
                  sub_10000AD34(v28, @"MacGenerationTimeStamp", v63);
                  sub_10000AD34(v28, @"NoAssociationWithNewMac", kCFBooleanTrue);
                  sub_10000AD34(v28, @"ResetCaptiveProbe", kCFBooleanTrue);
                  sub_10000AD34(v28, @"RotationKeyUsed", *(v66 + 416));
                }

                CFRelease(v42);
              }

LABEL_55:
              sub_10000AD34(v28, @"PRIVATE_MAC_ADDRESS", v34);
              sub_10000AD34(v28, @"PrivateMacFeatureTurnedONtoOFF", 0);
              sub_10000AD34(v28, @"PrivateMacFeatureTurnedONtoOFFTimestamp", 0);
              sub_10000AD34(v28, @"PrivateMacFeatureTurnedOFFtoON", 0);
              sub_10000AD34(v28, @"PrivateMacFeatureTurnedOFFtoONTimestamp", 0);
              sub_10000AD34(v28, @"ResetCaptiveProbe", kCFBooleanTrue);
              sub_10000AD34(v28, @"privateMacSuccessfulAssocAtleastOnce", 0);
              sub_10000C614(v28, @"FailureCountThresholdCurrent", *(v1 + 440));
              sub_10000C614(v28, @"FailureCountCurrent", 0);
              sub_10000AD34(v28, @"PrivateMacPrefChanged", 0);
              sub_10000AD34(v28, @"PrivateMacPrefChangedTimestamp", 0);
              CFRelease(v34);
            }
          }

          sub_1001610C0();
          sub_10002A1A0();
          sub_100161270();
          v20 = v63;
        }
      }
    }

    if (v20)
    {
      CFRelease(v20);
    }

    v45 = sub_10000A154(v1);
    if (!v45)
    {
      v46 = sub_100095458(v45, @"deviceSpecificKeyMacRandomisation");
      sub_100095458(v46, @"RotationKeyMacRandomisation");
      v47 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s WFMacRandomisation : Device Specific Key Reset", "__WiFiManagerPrivateMacAdjustSettingsOnReset"}];
      }

      objc_autoreleasePoolPop(v47);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    sub_1000953AC();

    CFRelease(v48);
  }

  else
  {
LABEL_82:
    sub_1000953AC();
  }
}

void sub_100166084(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_1000953A0(a1);
    if (v2)
    {
      if (CFArrayGetCount(v2) >= 1)
      {
        sub_10000755C();
        v6 = 3221225472;
        v7 = sub_100089FA8;
        v8 = &unk_10025EAD8;
        v9 = v1;
        dispatch_async(v3, block);
      }

      return;
    }

    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null manager->networks", "WiFiManagerPurgeExpiredKnownNetworks"}];
    }
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null manager", "WiFiManagerPurgeExpiredKnownNetworks"}];
    }
  }

  objc_autoreleasePoolPop(v4);
}

const __CFArray *sub_10016618C(const __CFArray *a1)
{
  result = sub_100020030(a1);
  if (result)
  {
    v3 = sub_1000954A0(result);
    v4 = sub_1000DBAE8(v3);
    CFRelease(v1);
    return v4;
  }

  return result;
}

void sub_1001661C8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, int a11, int valuePtr, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000D798();
  a19 = v21;
  a20 = v22;
  sub_100008C40();
  a10 = -1431655766;
  a11 = -1431655766;
  v24 = sub_100021720(v23);
  v25 = sub_10000A540(v24, @"CHANNEL_FLAGS");
  if (v25 && (valuePtr = 0, CFNumberGetValue(v25, kCFNumberIntType, &valuePtr), (valuePtr & 0x2018) == 0x2000))
  {
    a10 = 1;
  }

  else
  {
    a11 = 1;
  }

  v26 = sub_100034FE4();
  CFDictionaryCreateMutable(v26, v27, v28, v29);
  v30 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &a11);
  if (v30)
  {
    v31 = v30;
    v32 = sub_100095380();
    CFDictionarySetValue(v32, v33, v34);
    CFRelease(v31);
  }

  v35 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &a10);
  if (v35)
  {
    v36 = v35;
    v37 = sub_100095374();
    CFDictionarySetValue(v37, v38, v39);
    CFRelease(v36);
  }

  if (v20)
  {
    v40 = sub_10002A0A0();
    CFDictionarySetValue(v40, v41, v42);
  }

  v43 = sub_100021D58();
  sub_1001662F0(v43);
  sub_1000084B8();
}

void sub_1001662F0(uint64_t a1)
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

uint64_t sub_100166338(uint64_t a1, const __CFArray *a2)
{
  result = 83;
  if (a1 && a2)
  {
    v4 = *(a1 + 2744);
    *(a1 + 2744) = CFArrayCreateCopy(kCFAllocatorDefault, a2);
    sub_1000952C0();
    v9 = 5;
    v11 = 0;
    v12 = 0;
    v10 = 0;
    v5 = *(a1 + 112);
    sub_1000083DC();
    CFSetApplyFunction(v6, v7, context);
    if (v11)
    {
      CFRelease(*(a1 + 2744));
      *(a1 + 2744) = v4;
      return 83;
    }

    else
    {
      if (v4)
      {
        CFRelease(v4);
      }

      return 0;
    }
  }

  return result;
}

void sub_1001663D4(const __CFArray *a1, int a2)
{
  v4 = sub_100020030(a1);
  if (v4)
  {
    v5 = sub_1000954A0(v4);
    if (v5)
    {
      sub_1000E0080(v5, a2);
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: deviceManager is NULL!", "WiFiManagerConfigureMISIdleLinkTest"}];
      }

      objc_autoreleasePoolPop(v6);
    }

    CFRelease(v2);
  }
}

void sub_100166478()
{
  sub_10000FC44();
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"Callback reason=%s"];
  }

  objc_autoreleasePoolPop(v0);
  if (SCDynamicStoreKeyCreateNetworkInterface(kCFAllocatorDefault, kSCDynamicStoreDomainState))
  {
    v1 = sub_10000FC38();
    v3 = SCDynamicStoreCopyValue(v1, v2);
    if (v3)
    {
      v4 = v3;
      v5 = CFGetTypeID(v3);
      if (v5 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(v4, kSCDynamicStorePropNetInterfaces);
        if (Value)
        {
          v7 = Value;
          v8 = CFGetTypeID(Value);
          if (v8 == CFArrayGetTypeID())
          {
            if (CFArrayGetCount(v7))
            {
              if (CFArrayGetCount(v7))
              {
                v9 = sub_100034FE4();
                Mutable = CFArrayCreateMutable(v9, v10, v11);
                if (Mutable)
                {
                  v13 = Mutable;
                  if (CFArrayGetCount(v7) >= 1)
                  {
                    v8 = 0;
                    do
                    {
                      v14 = sub_10001EDAC();
                      ValueAtIndex = CFArrayGetValueAtIndex(v14, v15);
                      if (sub_10008C170(ValueAtIndex))
                      {
                        CFArrayAppendValue(v13, ValueAtIndex);
                      }

                      ++v8;
                    }

                    while (v8 < CFArrayGetCount(v7));
                  }

                  if (CFArrayGetCount(v13))
                  {
                    v17 = objc_autoreleasePoolPush();
                    sub_100095038();
                    if (v8)
                    {
                      CFArrayGetCount(v13);
                      [sub_10001DB84() WFLog:? message:?];
                    }

                    objc_autoreleasePoolPop(v7);
                    if (CFArrayGetCount(v13) >= 1)
                    {
                      v18 = 0;
                      do
                      {
                        v19 = sub_10000DAB4();
                        if (CFArrayGetValueAtIndex(v19, v20))
                        {
                          v21 = sub_1000258C8();
                          if (!sub_1001667A0(v21, v22))
                          {
                            v23 = objc_autoreleasePoolPush();
                            if (off_100298C40)
                            {
                              [off_100298C40 WFLog:3 message:"Now attempting to add AirPort Interface with BSDName %@"];
                            }

                            objc_autoreleasePoolPop(v23);
                            v24 = sub_1000258C8();
                            sub_100166840(v24, v25);
                          }
                        }

                        ++v18;
                      }

                      while (v18 < CFArrayGetCount(v13));
                    }
                  }

                  CFRelease(v13);
                }
              }
            }
          }
        }
      }

      CFRelease(v4);
    }

    sub_1000113F8();

    CFRelease(v26);
  }

  else
  {
    sub_1000113F8();
  }
}

void sub_1001666E8(uint64_t a1)
{
  NetworkInterface = SCDynamicStoreKeyCreateNetworkInterface(kCFAllocatorDefault, kSCDynamicStoreDomainState);
  if (NetworkInterface)
  {
    v3 = NetworkInterface;
    v4 = sub_100095014();
    Mutable = CFArrayCreateMutable(v4, v5, v6);
    if (Mutable)
    {
      v8 = Mutable;
      CFArrayAppendValue(Mutable, v3);
      if (CFArrayGetCount(v8))
      {
        v9 = *(a1 + 80);
        sub_1000951F0();
        SCDynamicStoreSetNotificationKeys(v10, v11, v12);
      }

      CFRelease(v3);
    }

    else
    {
      v8 = v3;
    }

    CFRelease(v8);
  }
}

uint64_t sub_1001667A0(const __CFArray *a1, const void *a2)
{
  v3 = sub_100158FF4(a1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (CFArrayGetCount(v3) && CFArrayGetCount(v4) >= 1)
  {
    v5 = 0;
    while (1)
    {
      v6 = sub_100021D58();
      ValueAtIndex = CFArrayGetValueAtIndex(v6, v7);
      if (ValueAtIndex)
      {
        v9 = sub_100009664(ValueAtIndex);
        if (CFEqual(v9, a2))
        {
          break;
        }
      }

      if (++v5 >= CFArrayGetCount(v4))
      {
        goto LABEL_8;
      }
    }

    v10 = 1;
  }

  else
  {
LABEL_8:
    v10 = 0;
  }

  CFRelease(v4);
  return v10;
}

void sub_100166840(uint64_t a1, CFStringRef theString)
{
  *buffer = 0;
  v283 = 0;
  if (!a1)
  {
    return;
  }

  if (!theString)
  {
    return;
  }

  CFStringGetCString(theString, buffer, 16, 0);
  v4 = sub_1000083F0();
  if (sub_1001667A0(v4, v5))
  {
    return;
  }

  if (!*(a1 + 80))
  {
    goto LABEL_22;
  }

  NetworkInterface = SCDynamicStoreKeyCreateNetworkInterface(kCFAllocatorDefault, kSCDynamicStoreDomainState);
  if (!NetworkInterface)
  {
    goto LABEL_22;
  }

  v7 = NetworkInterface;
  v8 = SCDynamicStoreCopyValue(*(a1 + 80), NetworkInterface);
  if (!v8)
  {
    v9 = v7;
    goto LABEL_21;
  }

  v9 = v8;
  v10 = CFGetTypeID(v8);
  if (v10 != CFDictionaryGetTypeID() || (Value = CFDictionaryGetValue(v9, kSCDynamicStorePropNetInterfaces)) == 0 || (v12 = Value, v13 = CFGetTypeID(Value), v13 != CFArrayGetTypeID()) || !CFArrayGetCount(v12))
  {
    CFRelease(v7);
LABEL_21:
    CFRelease(v9);
LABEL_22:
    v34 = objc_autoreleasePoolPush();
    v35 = sub_1000950EC();
    if (v35)
    {
      [v35 WFLog:3 message:{"%@ does not exist in dynamic store", theString}];
    }

    goto LABEL_24;
  }

  CFArrayGetCount(v12);
  v14 = sub_10001158C();
  v291.location = 0;
  v15 = CFArrayContainsValue(v14, v291, theString);
  CFRelease(v7);
  CFRelease(v9);
  if (!v15)
  {
    goto LABEL_22;
  }

  v16 = sub_100095014();
  Mutable = CFDictionaryCreateMutable(v16, v17, v18, v19);
  if (!Mutable)
  {
    v265 = objc_autoreleasePoolPush();
    v266 = sub_1000950EC();
    if (v266)
    {
      [v266 WFLog:3 message:{"%@ propertyDictionaryRef alloc failed", theString}];
    }

LABEL_24:
    objc_autoreleasePoolPop(a1);
    return;
  }

  v21 = Mutable;
  CFDictionarySetValue(Mutable, @"IOInterfaceName", theString);
  v22 = sub_100095014();
  v26 = CFDictionaryCreateMutable(v22, v23, v24, v25);
  if (v26)
  {
    v27 = v26;
    CFDictionarySetValue(v26, @"IOPropertyMatch", v21);
    v28 = kIOMainPortDefault;
    v29 = 32;
    while (1)
    {
      CFRetain(v27);
      MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v27);
      if (MatchingService)
      {
        break;
      }

      usleep(0x2710u);
      if (!--v29)
      {
        v31 = objc_autoreleasePoolPush();
        v32 = sub_1000950EC();
        if (v32)
        {
          [v32 WFLog:3 message:{"%s: No Matching Service Found for interface %@", "__WiFiManagerDeviceAddedCallback", theString}];
        }

        objc_autoreleasePoolPop(a1);
        v33 = 0;
LABEL_86:
        CFRelease(v27);
        CFRelease(v21);
        if (v33)
        {
          v264 = v33;
          goto LABEL_88;
        }

        return;
      }
    }

    v36 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"IO80211InterfaceRole", kCFAllocatorDefault, 0);
    v276 = CFProperty;
    if (!CFProperty || CFStringCompare(CFProperty, @"Infrastructure", 0))
    {
      v51 = objc_autoreleasePoolPush();
      v52 = sub_10001E2C0();
      if (v52)
      {
        [v52 WFLog:3 message:{"%s: %@ is a virtual IO80211 interface", "__WiFiManagerDeviceAddedCallback", theString}];
      }

      goto LABEL_84;
    }

    [+[WiFiUserInteractionMonitor sharedInstance](WiFiUserInteractionMonitor startMonitoringInterface:"startMonitoringInterface:", theString];
    v38 = *(a1 + 32);
    v39 = sub_10005ABC8(kCFAllocatorDefault, v36);
    if (!v39)
    {
LABEL_85:
      IOObjectRelease(v36);
      v33 = v276;
      goto LABEL_86;
    }

    v40 = v39;
    v41 = sub_10014A48C(*(a1 + 1056));
    if (!v41)
    {
LABEL_47:
      CFSetAddValue(*(a1 + 104), v40);
      v53 = sub_1000AA888(kCFAllocatorDefault, v40, *(a1 + 32), *(a1 + 40));
      if (v53)
      {
        v54 = v53;
        CFRelease(v40);
        CFSetAddValue(*(a1 + 112), v54);
        v55 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v269 = "__WiFiManagerDeviceManagerInit";
          [off_100298C40 WFLog:3 message:"%s() CATS Trace: Enter\n"];
        }

        objc_autoreleasePoolPop(v55);
        context = a1;
        v278 = 0xAAAAAAAA00000000;
        v279 = a1 + 20;
        v280 = 1;
        v281 = 0;
        v56 = sub_100024F0C();
        sub_100060820(v56, v57, v58);
        v59 = sub_100024F0C();
        sub_1000608C8(v59, v60, v61);
        v62 = sub_100024F0C();
        sub_1000BE1B0(v62, v63, v64);
        v65 = sub_100024F0C();
        sub_1000608D4(v65, v66, v67);
        v68 = sub_100024F0C();
        sub_100060904(v68, v69, v70);
        v71 = sub_100024F0C();
        sub_10006094C(v71, v72, v73);
        v74 = sub_100024F0C();
        sub_100060910(v74, v75, v76);
        v77 = sub_100024F0C();
        sub_10006091C(v77, v78, v79);
        v80 = sub_100024F0C();
        sub_100060940(v80, v81, v82);
        v83 = sub_100024F0C();
        sub_100060964(v83, v84, v85);
        v86 = sub_100024F0C();
        sub_1000BE168(v86, v87, v88);
        v89 = sub_100024F0C();
        sub_1000608F8(v89, v90, v91);
        v92 = sub_100024F0C();
        sub_1000608BC(v92, v93, v94);
        v95 = sub_100024F0C();
        sub_1000BE180(v95, v96, v97);
        v98 = sub_100024F0C();
        sub_1000BE18C(v98, v99, v100);
        v101 = sub_100024F0C();
        sub_1000BE198(v101, v102, v103);
        v104 = sub_100024F0C();
        sub_1000BE1A4(v104, v105, v106);
        v107 = sub_100024F0C();
        sub_100060958(v107, v108, v109);
        v110 = sub_100024F0C();
        sub_1000BE1BC(v110, v111, v112);
        v113 = sub_100024F0C();
        sub_100060808(v113, v114, v115);
        v116 = sub_100024F0C();
        sub_1000BE1C8(v116, v117, v118);
        v119 = sub_100024F0C();
        sub_100060970(v119, v120, v121);
        v122 = sub_100024F0C();
        sub_10006097C(v122, v123, v124);
        v125 = sub_100024F0C();
        sub_100060B24(v125, v126, v127);
        v128 = sub_100024F0C();
        sub_100060B18(v128, v129, v130);
        v131 = sub_100024F0C();
        sub_100060988(v131, v132, v133);
        v134 = sub_100024F0C();
        sub_100060994(v134, v135, v136);
        v137 = sub_100024F0C();
        sub_1000658A0(v137, v138, v139);
        v140 = sub_100024F0C();
        sub_100060814(v140, v141, v142);
        v143 = sub_100024F0C();
        sub_1000609A0(v143, v144, v145);
        v146 = sub_100024F0C();
        sub_1000609AC(v146, v147, v148);
        v149 = sub_100024F0C();
        sub_1000BE1D4(v149, v150, v151);
        v152 = sub_100024F0C();
        sub_100060A94(v152, v153, v154);
        v155 = sub_100024F0C();
        sub_100060AC4(v155, v156, v157);
        v158 = sub_100024F0C();
        sub_1000BE174(v158, v159, v160);
        v161 = sub_100024F0C();
        sub_100060AF4(v161, v162, v163);
        v164 = sub_100024F0C();
        sub_100060A70(v164, v165, v166);
        v167 = sub_100024F0C();
        sub_1000609C4(v167, v168, v169);
        v170 = sub_100024F0C();
        sub_1000609D0(v170, v171, v172);
        v173 = sub_100024F0C();
        sub_1000609E8(v173, v174, v175);
        v176 = sub_100024F0C();
        sub_100060A00(v176, v177, v178);
        v179 = sub_100024F0C();
        sub_1000607F0(v179, v180, v181);
        v182 = sub_100024F0C();
        sub_1000607FC(v182, v183, v184);
        v185 = sub_100024F0C();
        sub_1000609B8(v185, v186, v187);
        v188 = sub_100024F0C();
        sub_100060A58(v188, v189, v190);
        v191 = sub_100024F0C();
        sub_100060A0C(v191, v192, v193);
        v194 = sub_100024F0C();
        sub_100060A64(v194, v195, v196);
        v197 = sub_100024F0C();
        sub_100060A7C(v197, v198, v199);
        v200 = sub_100024F0C();
        sub_100060A88(v200, v201, v202);
        v203 = sub_100024F0C();
        sub_100060AA0(v203, v204, v205);
        v206 = sub_100024F0C();
        sub_100060AD0(v206, v207, v208);
        v209 = sub_100024F0C();
        sub_100060ADC(v209, v210, v211);
        v212 = sub_100024F0C();
        sub_100060AE8(v212, v213, v214);
        v215 = sub_100024F0C();
        sub_100060928(v215, v216, v217);
        v218 = sub_100024F0C();
        sub_100060934(v218, v219, v220);
        v221 = sub_100024F0C();
        sub_100060B00(v221, v222, v223);
        v224 = sub_100024F0C();
        sub_100060B30(v224, v225, v226);
        v227 = sub_100024F0C();
        sub_100060B54(v227, v228, v229);
        v230 = sub_100024F0C();
        sub_100060BA4(v230, v231, v232);
        v233 = sub_100024F0C();
        sub_100060B48(v233, v234, v235);
        sub_1000DA7E0(v54, a1);
        if (!sub_1000551DC())
        {
          sub_1000D2D40(v54);
        }

        v236 = sub_100024F0C();
        sub_100060AAC(v236, v237, v238);
        v239 = sub_100024F0C();
        sub_100060B0C(v239, v240, v241);
        sub_1000DA7D8(v54, a1);
        v248 = *(a1 + 2552);
        if (v248)
        {
          sub_1000D6D10(v54, v248);
        }

        for (i = 23; i != 47; ++i)
        {
          LODWORD(v278) = i;
          if (i != 34 && (i & 0x3E) != 0x20)
          {
            sub_100003B88(v54, &context, v242, v243, v244, v245, v246, v247, v269, v270, v271, v272, v273, v274, v275, v276, context, v278, v279, v280, v281, *buffer, v283, v284, v285, v286, v287, v288, v289, v290);
            v279 = a1 + 20;
          }
        }

        for (j = 0; j != 15; ++j)
        {
          LODWORD(v278) = j;
          if (j == 8)
          {
            v279 = 0;
          }

          sub_100003B88(v54, &context, v242, v243, v244, v245, v246, v247, v269, v270, v271, v272, v273, v274, v275, v276, context, v278, v279, v280, v281, *buffer, v283, v284, v285, v286, v287, v288, v289, v290);
          v279 = a1 + 20;
        }

        sub_1000BCBC4(v54, *(a1 + 1536));
        sub_1000D6DE8(v54, *(a1 + 2360));
        sub_1000C16F4(v54, *(a1 + 768));
        sub_1000084DC(a1);
        sub_10018C514(v54, 0);
        v251 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s() CATS Trace: Exit\n", "__WiFiManagerDeviceManagerInit"}];
        }

        objc_autoreleasePoolPop(v251);
        sub_10018FC3C(v54, a1 + 1240);
        if (!v252)
        {
          sub_1000C5D70(v54);
        }

        CFSetApplyFunction(*(a1 + 144), sub_100090FBC, v54);
        if (*(a1 + 96) == 1 && (*(a1 + 2648) & 1) == 0)
        {
          v253 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:"Making WiFi Manager available for all to see"];
          }

          objc_autoreleasePoolPop(v253);
          notify_post("com.apple.wifi.manager.available");
        }

        v254 = sub_10000CDC4(a1);
        sub_1000D5B3C(v54, v254, 0xFFFFFFFFLL, 0);
        v255 = sub_100088E40(a1);
        sub_1000D767C(v54, v255);
        v256 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          if (*(a1 + 26))
          {
            v257 = "Enabling";
          }

          else
          {
            v257 = "Disabling";
          }

          [off_100298C40 WFLog:3 message:{"%s: Device manager created. %s automatic association state", "__WiFiManagerDeviceAddedCallback", v257}];
        }

        objc_autoreleasePoolPop(v256);
        if (*(a1 + 26))
        {
          sub_1000329B4(v54);
        }

        else
        {
          sub_1000BCCD4(v54);
        }

        CFRelease(v54);
        v258 = *(a1 + 1704);
        context = a1;
        v278 = 0xAAAAAAAA00000043;
        v279 = v258;
        v280 = 1;
        v281 = 0;
        v259 = *(a1 + 112);
        sub_1000083DC();
        CFSetApplyFunction(v260, v261, &context);
        sub_100085C9C(a1, *(a1 + 1656));
        v262 = sub_1000083F0();
        sub_10007A340(v262, v263, 0);
        if (*(a1 + 2648) == 1)
        {
          *(a1 + 2648) = 0;
        }

        v28 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"Detected %ld wifi device(s)", CFSetGetCount(*(a1 + 104)), v270}];
        }

LABEL_84:
        objc_autoreleasePoolPop(v28);
        goto LABEL_85;
      }

      goto LABEL_85;
    }

    v42 = v41;
    v275 = v21;
    v43 = sub_10000D83C("__WiFiManagerUpdateDeviceSystemConfiguration");
    v44 = _SCNetworkInterfaceCreateWithIONetworkInterfaceObject();
    if (v44)
    {
      v45 = SCNetworkSetCopyAll(*(a1 + 1056));
      v46 = v45;
      if (v45)
      {
        v274 = theString;
        Count = CFArrayGetCount(v45);
        if (Count)
        {
          v48 = Count;
          if (Count < 1)
          {
            v42 = 0;
          }

          else
          {
            v272 = v43;
            v273 = v40;
            v49 = 0;
            v42 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v46, v49);
              if (!SCNetworkSetContainsInterface(ValueAtIndex, v44))
              {
                sub_1000950F8();
                v42 = SCNetworkSetEstablishDefaultInterfaceConfiguration();
                if (!v42)
                {
                  if (SCError())
                  {
                    break;
                  }
                }
              }

              ++v49;
            }

            while (v48 != v49);
            v43 = v272;
          }
        }
      }
    }

    else
    {
      v46 = 0;
    }

    sub_1000587F4(*(a1 + 1056), v42);

    if (v42)
    {
      if (!v46)
      {
        goto LABEL_45;
      }
    }

    else
    {
      SCError();
      if (!v46)
      {
LABEL_45:
        v21 = v275;
        if (v44)
        {
          CFRelease(v44);
        }

        goto LABEL_47;
      }
    }

    CFRelease(v46);
    goto LABEL_45;
  }

  v267 = objc_autoreleasePoolPush();
  v268 = sub_1000950EC();
  if (v268)
  {
    [v268 WFLog:3 message:{"%@ matchingServiceDict alloc failed", theString}];
  }

  objc_autoreleasePoolPop(a1);
  v264 = v21;
LABEL_88:
  CFRelease(v264);
}

void sub_1001674E0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Enter: %s:%d\n", "__WiFiManagerDeviceRemovedCallback", 7561}];
  }

  objc_autoreleasePoolPop(v5);
  *(a3 + 2648) = 1;
  pthread_mutex_lock(&stru_100297A18);
  pthread_mutex_lock(&stru_100297A58);
  dispatch_assert_queue_V2(*(a3 + 32));
  v6 = sub_100010908(a1);
  if ((*(a3 + 1949) & 1) == 0)
  {
    sub_100169BE0(a3);
  }

  sub_1000DAD9C(a1);
  v7 = sub_100011340();
  sub_100033124(v7, v8);
  sub_1000BCD2C(a1);
  sub_1000B9120(a1);
  sub_10018FB20();
  v9 = sub_100021858();
  sub_1000BA620(v9);
  CFSetApplyFunction(*(a3 + 144), sub_10008FC6C, a1);
  CFSetRemoveValue(*(a3 + 112), a1);
  CFSetRemoveValue(*(a3 + 104), v6);
  v10 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    Count = CFSetGetCount(*(a3 + 112));
    v15 = CFSetGetCount(*(a3 + 104));
    [sub_10000DAC0() WFLog:"__WiFiManagerDeviceRemovedCallback" message:{7599, Count, v15}];
  }

  objc_autoreleasePoolPop(v10);
  pthread_mutex_unlock(&stru_100297A58);
  pthread_mutex_unlock(&stru_100297A18);
  v12 = *(a3 + 80);
  sub_100166478();
  v13 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v14 = CFSetGetCount(*(a3 + 112));
    [sub_10000DAC0() WFLog:"__WiFiManagerDeviceRemovedCallback" message:{7606, v14}];
  }

  objc_autoreleasePoolPop(v13);
}

void sub_1001676C0(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4)
{
  v8 = kCFAllocatorDefault;
  Current = CFAbsoluteTimeGetCurrent();
  v10 = CFDateCreate(kCFAllocatorDefault, Current);
  v11 = *(a3 + 2504);
  if (v11)
  {
    CFRelease(v11);
    *(a3 + 2504) = 0;
  }

  if (!a4)
  {
LABEL_22:
    if (!v10)
    {
      return;
    }

    goto LABEL_23;
  }

  Value = CFDictionaryGetValue(a4, @"LINK_CHANGED_NETWORK");
  v13 = sub_100034FE4();
  sub_100189318(v13);
  if (Value)
  {
    *(a3 + 2440) = 1;
    if (*(a3 + 1608) || sub_10000A7CC(Value))
    {
      if (sub_1000A14BC(Value))
      {
        v38 = sub_10001E7C0();
        sub_10008FC74(v38, v39, 1);
      }

      *(a3 + 1608) = 0;
      v40 = *(a3 + 1640);
      sub_10000FC1C();
      dispatch_source_set_timer(v41, v42, v43, v44);
      context = a3;
      v152 = 0xAAAAAA0000000042;
      v153 = 0xAAAAAAAA00000000;
      v45 = *(a3 + 112);
      sub_1000083DC();
      CFSetApplyFunction(v46, v47, &context);
      sub_10008FE08(a3, 1);
      kdebug_trace();
      v48 = objc_autoreleasePoolPush();
      v49 = sub_10002A0D8();
      if (v49)
      {
        [v49 WFLog:4 message:{"%s: LINK_UP: so disabled the carplay mode ###STOP_CAAJ", "__WiFiManagerDeviceLinkCallback"}];
      }

      objc_autoreleasePoolPop(v4);
    }

    if (*(a3 + 1664))
    {
      v50 = *(a3 + 1680);
      sub_10000FC1C();
      dispatch_source_set_timer(v51, v52, v53, v54);
      *(a3 + 1664) = 0;
      v55 = objc_autoreleasePoolPush();
      v56 = sub_10002A0D8();
      if (v56)
      {
        [v56 WFLog:3 message:{"%s: LINK_UP: so disabled the companion assisted mode ###STOP_CAAJ", "__WiFiManagerDeviceLinkCallback"}];
      }

      objc_autoreleasePoolPop(v4);
      context = *(a3 + 1672);
      v152 = *(a3 + 1688);
      sub_1001477C4();
    }

    v57 = sub_10001EC64();
    if (sub_10015D910(v57))
    {
      v4 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v131 = sub_10000A878(Value);
        [sub_100008BD4() WFLog:"__WiFiManagerDeviceLinkCallback" message:v131];
      }

      objc_autoreleasePoolPop(v4);
      sub_1000A1B90(Value, 0);
      v58 = sub_10001EC64();
      sub_100081EDC(v58, v59, 1);
    }

    if (!sub_10000A154(a3))
    {
      v105 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        v133 = sub_10000A878(Value);
        [sub_100008BD4() WFLog:"__WiFiManagerDeviceLinkCallback" message:v133];
      }

      objc_autoreleasePoolPop(v105);
      v106 = sub_10001EC64();
      v108 = sub_1001640E4(v106, v107);
      if (v108 && (v109 = v108, (v110 = sub_10000A540(v108, @"PRIVATE_MAC_ADDRESS")) != 0) && (v111 = v110, v147 = v109, TypeID = CFDictionaryGetTypeID(), TypeID == CFGetTypeID(v111)))
      {
        sub_10000AD34(Value, @"PRIVATE_MAC_ADDRESS", v111);
        CFDictionaryGetValue(v111, @"PRIVATE_MAC_ADDRESS_TYPE");
        CFDictionaryGetValue(v111, @"PRIVATE_MAC_ADDRESS_VALUE");
        v113 = sub_100095314();
        v114 = sub_10000AC54(v113);
        v115 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v140 = sub_10000A878(Value);
          [sub_1000951CC() WFLog:"__WiFiManagerDeviceLinkCallback" message:{v114, v111, v140}];
        }

        objc_autoreleasePoolPop(v115);
        v4 = off_100260430;
        if (sub_10000ABFC(v111))
        {
          sub_10000AD34(Value, @"PrivateMacInfoDictionary", 0);
          v116 = sub_10000A540(v147, @"FailureThresholdMet");
          v8 = kCFAllocatorDefault;
          if (v116 && (v4 = v116, v116 == kCFBooleanTrue))
          {
            if (!sub_10000C894(Value))
            {
              v117 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                v134 = sub_10000A878(Value);
                [sub_1000951CC() WFLog:"__WiFiManagerDeviceLinkCallback" message:v134];
              }

              objc_autoreleasePoolPop(v117);
              v118 = sub_100029EAC();
              sub_10000AD34(v118, v119, v4);
              v8 = kCFAllocatorDefault;
            }
          }

          else
          {
            v125 = sub_100029EAC();
            sub_10000AD34(v125, v126, 0);
          }
        }

        else
        {
          v8 = kCFAllocatorDefault;
          if (!sub_10000C894(Value))
          {
            v120 = sub_100095014();
            Mutable = CFDictionaryCreateMutable(v120, v121, v122, v123);
            sub_10000A1A4(v147, Mutable);
            sub_10000AD34(Value, @"PrivateMacInfoDictionary", Mutable);
            if (Mutable)
            {
              CFRelease(Mutable);
            }
          }
        }
      }

      else
      {
        v4 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v135 = sub_10000A878(Value);
          [sub_100008BD4() WFLog:"__WiFiManagerDeviceLinkCallback" message:v135];
        }

        objc_autoreleasePoolPop(v4);
      }
    }

    if (_os_feature_enabled_impl() && (sub_10001CF3C(Value) || sub_10009E148(Value)))
    {
      v60 = objc_autoreleasePoolPush();
      v61 = sub_10002A0D8();
      if (v61)
      {
        [v61 WFLog:3 message:{"%s: Hold off dispatching client link up event until 4 way completes.", "__WiFiManagerDeviceLinkCallback"}];
      }

      objc_autoreleasePoolPop(v4);
      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    if (*(a3 + 2600) == 1)
    {
      LOBYTE(context) = 0;
      v102 = CFDictionaryGetValue(a4, @"LINK_DEBOUNCE_RESULT");
      if (v102)
      {
        CFNumberGetValue(v102, kCFNumberSInt8Type, &context);
        v103 = context != 0;
      }

      else
      {
        v103 = 0;
      }

      *(a3 + 2585) = v103;
    }

    v104 = *(a3 + 1752);
    if (!v104 || CFEqual(v104, Value))
    {
      goto LABEL_19;
    }
  }

  else
  {
    *(a3 + 2440) = 0;
    sub_1000950B8();
    context = a3;
    v152 = v14;
    v154 = 0;
    v155 = 0;
    v153 = 0;
    v15 = *(a3 + 112);
    sub_1000083DC();
    CFSetApplyFunction(v16, v17, &context);
    if (v154)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = sub_10002A0D8();
      if (v19)
      {
        v127 = "__WiFiManagerDeviceLinkCallback";
        [v19 WFLog:3 message:"%s: Sending link down status to Gizmo"];
      }

      objc_autoreleasePoolPop(v4);
      sub_100125FF4(*(a3 + 1536), 0);
    }

    v20 = sub_1000C3F38(a1);
    if (v20)
    {
      v4 = v20;
      v62 = sub_100095044();
      sub_100169D1C(v62, v63);
      v64 = sub_100095044();
      sub_10015CFDC(v64, v65, v66, v67, v68, v69, v70, v71, v127, v130, v136, v138, prefs, v144, v148, v150, context, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162);
      v72 = sub_100095044();
      sub_10015CFDC(v72, v73, v74, v10, v75, v76, v77, v78, v128, v132, v137, v139, prefsb, v145, v149, v150, context, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162);
      if (sub_100174C78(v4))
      {
        v79 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:4 message:{"%s: removing ONE TIME PASSWORD for network %@", "__WiFiManagerDeviceLinkCallback", sub_10000A878(v4)}];
        }

        objc_autoreleasePoolPop(v79);
        sub_10009FCF4(v4);
      }

      if (sub_10000A7CC(v4))
      {
        v80 = sub_10001E7C0();
        sub_10008FF38(v80, v81, v4);
      }

      v82 = CFDictionaryGetValue(a4, @"LINKDOWN_REASON_CODE");
      v83 = v82;
      HIDWORD(v150) = 0;
      if (v82)
      {
        CFNumberGetValue(v82, kCFNumberIntType, &v150 + 4);
      }

      *(a3 + 2600) = 0;
      if (sub_10000A7CC(v4))
      {
        LOBYTE(context) = 0;
        v84 = CFDictionaryGetValue(a4, @"LINK_DEBOUNCE_STATE");
        if (v84)
        {
          CFNumberGetValue(v84, kCFNumberSInt8Type, &context);
        }

        if (context)
        {
          *(a3 + 2560) = CFAbsoluteTimeGetCurrent();
          *(a3 + 2576) = HIDWORD(v150);
          if (CFDictionaryGetValue(a4, @"LINKDOWN_SUBREASON_CODE"))
          {
            CFNumberGetValue(v83, kCFNumberIntType, (a3 + 2580));
          }

          *(a3 + 2600) = 1;
        }
      }

      context = -1;
      v156 = 0;
      v85 = sub_100017CE4(a3, @"List of known networks");
      if (v85)
      {
        v86 = v85;
        if (sub_10014A48C(v85))
        {
          v87 = sub_10000D83C("__WiFiManagerUpdateNetworkUsageTime");
          v88 = sub_100021858();
          v89 = sub_100072D44(v88);
          v146 = v87;
          if (v89 && (v90 = v89, v91 = *(a3 + 312), sub_10015AADC(), context != -1) && (ValueAtIndex = CFArrayGetValueAtIndex(v90, context)) != 0)
          {
            v93 = ValueAtIndex;
            prefsa = v86;
            v94 = sub_10000DC20(ValueAtIndex);
            if (v94)
            {
              v95 = v94;
              v96 = sub_10000DBF0(v93);
              v97 = CFAbsoluteTimeGetCurrent();
              v98 = v96 + v97 - CFDateGetAbsoluteTime(v95);
              sub_1000A027C(v93, v98);
              v99 = objc_autoreleasePoolPush();
              if (off_100298C40)
              {
                v129 = sub_10000A878(v4);
                [sub_10002147C() WFLog:v129 message:*&v98];
              }

              objc_autoreleasePoolPop(v99);
              sub_1000083F0();
              sub_10015AD08();
              v4 = v100;
              sub_100095214();
              sub_10002DC78();
              sub_100159928();
            }

            else
            {
              v4 = 0;
            }

            v86 = prefsa;
          }

          else
          {
            v4 = 0;
          }

          sub_1000587F4(v86, v4);

          v8 = kCFAllocatorDefault;
          if (v4)
          {
            sub_100070E8C(v101, 2, a3);
          }
        }
      }
    }

    if (!*(a3 + 1752))
    {
      goto LABEL_26;
    }

    v21 = 1;
  }

  if (*(a3 + 1768))
  {
    v22 = objc_autoreleasePoolPush();
    v23 = sub_10002A0D8();
    if (v23)
    {
      [v23 WFLog:3 message:{"%s: cancelling session based disassociation timer", "__WiFiManagerDeviceLinkCallback"}];
    }

    objc_autoreleasePoolPop(v4);
    v24 = *(a3 + 1776);
    sub_10000FC1C();
    dispatch_source_set_timer(v25, v26, v27, v28);
    *(a3 + 1768) = 0;
  }

  v29 = objc_autoreleasePoolPush();
  v30 = sub_10002A0D8();
  if (v30)
  {
    [v30 WFLog:3 message:{"%s: no longer attached to session based network, stopping monitor", "__WiFiManagerDeviceLinkCallback"}];
  }

  objc_autoreleasePoolPop(v4);
  sub_10008FFE4(a3);
  if (!Value)
  {
LABEL_25:
    if (!v21)
    {
      goto LABEL_21;
    }

    goto LABEL_26;
  }

LABEL_19:
  v31 = sub_100017C00(Value);
  if (!v31)
  {
    goto LABEL_25;
  }

  v32 = v31;
  v33 = sub_100095380();
  CFDictionaryReplaceValue(v33, v34, v35);
  CFRelease(v32);
  if ((v21 & 1) == 0)
  {
LABEL_21:
    *(a3 + 2504) = CFDictionaryCreateCopy(v8, a4);
    goto LABEL_22;
  }

LABEL_26:
  context = a3;
  v152 = a1;
  v153 = a4;
  v36 = sub_100094FBC();
  CFSetApplyFunction(v36, v37, &context);
  if (v10)
  {
LABEL_23:
    CFRelease(v10);
  }
}

void sub_100168058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1000953C8();
    context[12] = v3;
    context[13] = v8;
    v10 = v9;
    if (!v9)
    {
LABEL_20:
      sub_100020CB0();
      return;
    }

    v11 = v7;
    v12 = v6;
    v13 = v5;
    v14 = v4;
    v15 = sub_10000DAB4();
    Value = CFDictionaryGetValue(v15, v16);
    if (Value)
    {
      v18 = sub_100017C00(Value);
      if (v18)
      {
        v19 = v18;
        v20 = sub_10000DAB4();
        CFDictionaryReplaceValue(v20, v21, v19);
        CFRelease(v19);
      }
    }

    theString1 = 0;
    v22 = sub_10000DAB4();
    CFDictionaryGetValueIfPresent(v22, v23, v24);
    context[0] = v14;
    context[1] = v10;
    CFSetApplyFunction(*(v12 + 144), sub_100090398, context);
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      if ([(__CFString *)theString1 isEqualToString:@"autoJoinAssociating"]|| ([(__CFString *)theString1 isEqualToString:@"autoJoinWaiting"]& 1) != 0 || [(__CFString *)theString1 isEqualToString:@"autoJoinEAPNeedsUserFix"])
      {
        [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
      }

      else
      {
        if ([(__CFString *)theString1 isEqualToString:@"autoJoinAssociationFailure"]|| [(__CFString *)theString1 isEqualToString:@"autoJoinNetworkNotFound"]|| [(__CFString *)theString1 isEqualToString:@"autoJoinAborted"])
        {
          v28 = +[WiFiXPCManager sharedXPCManager];
          v29 = 0;
        }

        else
        {
          if (![(__CFString *)theString1 isEqualToString:@"autoJoinSuccess"])
          {
            goto LABEL_11;
          }

          v28 = +[WiFiXPCManager sharedXPCManager];
          v29 = 1;
        }

        [v28 autoJoinEndedWithResult:v29 interfaceName:v13];
      }
    }

LABEL_11:
    if (&_WiFiCloudSyncEngineCreate)
    {
      if (v11)
      {
        if (*(v12 + 1384))
        {
          [objc_msgSend(v11 "autoJoinParameters")];
          if (CWFIsAutoJoinRetryTrigger())
          {
            if (![v11 error] && !*(v12 + 1376))
            {
              v25 = objc_autoreleasePoolPush();
              v26 = sub_10001E7CC();
              if (v26)
              {
                [v26 WFLog:3 message:{"%s: Starting cloud sync engine after AJ retry", "__WiFiManagerDeviceAutoJoinCallback"}];
              }

              objc_autoreleasePoolPop(v11);
              *(v12 + 1376) = 1;
              v27 = *(v12 + 1384);
              WiFiCloudSyncEngineScheduleWithQueue();
              CFRetain(*(v12 + 1384));
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_100090354;
              block[3] = &unk_10025EAD8;
              block[4] = v12;
              dispatch_async(qword_100298C58, block);
            }
          }
        }
      }
    }

    goto LABEL_20;
  }
}

void sub_100168408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a3)
  {
    sub_10000D798();
    a17 = v18;
    a18 = v21;
    v23 = v22;
    if (v22)
    {
      v24 = v20;
      v25 = v19;
      v26 = sub_10001E7C0();
      Value = CFDictionaryGetValue(v26, v27);
      if (Value)
      {
        v29 = sub_100017C00(Value);
        if (v29)
        {
          v30 = v29;
          v31 = sub_10001E7C0();
          CFDictionaryReplaceValue(v31, v32, v30);
          CFRelease(v30);
        }
      }

      a9 = v25;
      a10 = v23;
      CFSetApplyFunction(*(v24 + 144), sub_1000903B4, &a9);
    }

    sub_1000084B8();
  }
}

void sub_1001684A4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t context, uint64_t a11, __CFDictionary *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1000951B4();
  a21 = v24;
  a22 = v27;
  if (!v25 || (v28 = v26) == 0 || (v29 = v25, sub_100095008(), (v30 = sub_100017C00(v28)) == 0))
  {
LABEL_10:
    sub_10001ED88();
    return;
  }

  v31 = v30;
  if (*(v29 + 2504) && (v32 = sub_100011334(), (MutableCopy = CFDictionaryCreateMutableCopy(v32, v33, v34)) != 0) || (v36 = sub_100011334(), (MutableCopy = CFDictionaryCreateMutable(v36, v37, v38, v39)) != 0))
  {
    v40 = MutableCopy;
    CFDictionarySetValue(MutableCopy, @"LINK_CHANGED_IS_LINKDOWN", kCFBooleanFalse);
    CFDictionarySetValue(v40, @"LINK_CHANGED_NETWORK", v31);
    CFRelease(v31);
    v41 = sub_10000D80C();
    sub_100081EDC(v41, v42, 1);
    v43 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"%s: outranking state overridden. Replaying link event to clients."];
    }

    objc_autoreleasePoolPop(v43);
    context = v29;
    a11 = v23;
    a12 = v40;
    v44 = sub_100094FBC();
    CFSetApplyFunction(v44, v45, &context);
    [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
    CFRelease(v40);
    goto LABEL_10;
  }

  sub_10001ED88();

  CFRelease(v46);
}

void sub_100168608(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  if (a2 && a3)
  {
    sub_100095008();
    Value = CFDictionaryGetValue(a3, @"HostApEnabled");
    v7 = Value && CFBooleanGetValue(Value);
    *(v3 + 1216) = v7;
    v8[0] = v4;
    v8[1] = a3;
    CFSetApplyFunction(*(v3 + 144), sub_1000903D0, v8);
  }
}

void sub_100168694()
{
  sub_100011520();
  if (v1 && (v4 = v3) != 0)
  {
    v5 = v2;
    v6 = v1;
    v7 = v0;
    v8 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      sub_10000A878(v6);
      [sub_100008BD4() WFLog:? message:?];
    }

    objc_autoreleasePoolPop(v8);
    v9 = sub_10000A154(v4);
    if (v5)
    {
      if (v9)
      {
        v10 = sub_10001A9BC(v6);
        v11 = sub_10000FC38();
        v13 = sub_1000C4450(v11, v12);
        if (v13)
        {
          v14 = sub_10001B368(v6);
        }

        else
        {
          v14 = 0;
        }

        if ([v10 privateMACAddress])
        {
          v20 = CWFApple80211ErrorDomain;
          sub_1000952FC();
          CWFErrorDescription();
          sub_1000952FC();
          CWFErrorWithDescription();
          if (CWFPrivateMACAddressAllowFallbackForAssociationError())
          {
            if (![v14 privateMACAddressEvaluationState] || objc_msgSend(v14, "privateMACAddressModeUserSetting") || objc_msgSend(v14, "privateMACAddressModeConfigurationProfileSetting"))
            {
              [objc_msgSend(+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
            }

            else
            {
              v46 = objc_autoreleasePoolPush();
              sub_1000952D8();
              if (v20)
              {
                [objc_msgSend(v10 "networkName")];
                [sub_100008BD4() WFLog:? message:?];
              }

              objc_autoreleasePoolPop(v5);
              [+[WiFiUsageMonitor sharedInstance](WiFiUsageMonitor addFaultEvent:"addFaultEvent:forInterface:" forInterface:11, v7];
              [objc_msgSend(+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
              [v14 setPrivateMACAddressEvaluationState:2];
              +[NSDate date];
              [sub_10001158C() setPrivateMACAddressEvaluatedAt:?];
              v47 = sub_1000083D0();
              v49 = sub_100022854(v47, v48);
              if (v49)
              {
                v50 = v49;
                v51 = sub_10001EC64();
                sub_10000C5C0(v51, v52);
                CFRelease(v50);
              }
            }
          }
        }

        if (v13)
        {
          CFRelease(v13);
        }
      }

      sub_1000086AC();
      sub_10001091C();

      sub_100081EDC(v21, v22, v23);
    }

    else
    {
      if (v9)
      {
        v15 = sub_10001A9BC(v6);
        v16 = sub_10000FC38();
        v18 = sub_1000C4450(v16, v17);
        if (v18)
        {
          v19 = sub_10001B368(v6);
        }

        else
        {
          v19 = 0;
        }

        v25 = [v15 privateMACAddress];
        if (v25)
        {
          v26 = v25;
          if (v25 != [v19 cachedPrivateMACAddress])
          {
            if (![v19 cachedPrivateMACAddress] || (objc_msgSend(v19, "cachedPrivateMACAddress"), (objc_msgSend(sub_10001D1D0(), "isEqual:") & 1) == 0))
            {
              [v19 setCachedPrivateMACAddress:v26];
              +[NSDate date];
              [sub_10001158C() setCachedPrivateMACAddressUpdatedAt:?];
            }
          }
        }

        else if ((!*(v4 + 496) || ![+[WiFiUserInteractionMonitor isSetupCompleted] sharedInstance]&& !v19)
        {
          [0 setPrivateMACAddressEvaluationState:5];
        }

        [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
        [sub_100095068() networkProfile];
        v27 = [sub_10001D1D0() temporaryUserSettingForNetworkProfile:?];
        if (!v19 && v27)
        {
          [0 setPrivateMACAddressModeUserSetting:v27];
        }

        v28 = sub_1000083D0();
        v30 = sub_100022854(v28, v29);
        if (v30)
        {
          v31 = v30;
          v32 = sub_10001EC64();
          sub_10000C5C0(v32, v33);
          CFRelease(v31);
        }

        if (v18)
        {
          CFRelease(v18);
        }
      }

      sub_1000A2BC8(v6);
      v34 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        sub_10000A878(v6);
        [sub_10000FC2C() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v34);
      v35 = sub_100021858();
      sub_1000A1B90(v35, v36);
      v37 = sub_1000086AC();
      sub_100081EDC(v37, v38, 1);
      v39 = sub_10001EDA0();
      sub_1000740C8(v39, v40, 2, 0);
      v41 = *(v4 + 24);
      sub_10001091C();

      sub_10000C910(v42, v43, v44);
    }
  }

  else
  {
    sub_10001091C();
  }
}

const void *sub_100168F58(const void *a1, int a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  byte_1002985C0 = 0;
  if (*(a7 + 756) == 2)
  {
    goto LABEL_5;
  }

  if (!*(a7 + 816))
  {
    v22 = objc_autoreleasePoolPush();
    if (!off_100298C40)
    {
LABEL_20:
      objc_autoreleasePoolPop(v22);
LABEL_13:
      v10 = 0;
      goto LABEL_15;
    }

LABEL_19:
    v26 = sub_1000591D8(a3);
    [sub_10000FC2C() WFLog:"__WiFiManagerRequestCallback" message:{v26, a3}];
    goto LABEL_20;
  }

  if (a3 > 4)
  {
    goto LABEL_7;
  }

  if ((*(a7 + 800) & 0x11) == 0)
  {
    v22 = objc_autoreleasePoolPush();
    if (!off_100298C40)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_5:
  if (!a3 && *(a7 + 848))
  {
    goto LABEL_13;
  }

LABEL_7:
  sub_1000A4F20(kCFAllocatorDefault, a3, a4, a1, a2, a5);
  v10 = v9;
  if (v9)
  {
    sub_100034FA4();
    v11 = sub_1000A5020(v10);
    if (v11)
    {
      sub_100034FF0(v11, v12, v13, v14, v15, v16, v17, v18, v23, v25, v27, v28, v29, v31);
      if (v30 == -3903)
      {
        v19 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v24 = sub_1000A5010(v10);
          [sub_10000FC2C() WFLog:v24 message:?];
        }

        objc_autoreleasePoolPop(v19);
        CFRelease(v10);
        goto LABEL_13;
      }

      byte_1002985C0 = 1;
    }
  }

LABEL_15:
  v20 = *(a7 + 192);
  if (v20)
  {
    CFRelease(v20);
  }

  *(a7 + 192) = v10;
  return v10;
}

const void *sub_10016910C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5, const __CFDictionary *a6, uint64_t a7)
{
  byte_1002985C0 = 0;
  if (*(a7 + 756) == 2)
  {
    goto LABEL_5;
  }

  if (!*(a7 + 816))
  {
    v21 = objc_autoreleasePoolPush();
    if (!off_100298C40)
    {
LABEL_20:
      objc_autoreleasePoolPop(v21);
LABEL_13:
      v9 = 0;
      goto LABEL_15;
    }

LABEL_19:
    v25 = sub_1000591D8(a3);
    [sub_10000FC2C() WFLog:"__WiFiManagerColocatedRequestCallback" message:{v25, a3}];
    goto LABEL_20;
  }

  if (a3 > 4)
  {
    goto LABEL_7;
  }

  if ((*(a7 + 800) & 0x11) == 0)
  {
    v21 = objc_autoreleasePoolPush();
    if (!off_100298C40)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_5:
  if (!a3 && *(a7 + 848))
  {
    goto LABEL_13;
  }

LABEL_7:
  v9 = sub_10017BF80(kCFAllocatorDefault, a1, a2, a5, a6);
  if (v9)
  {
    sub_100034FA4();
    v10 = sub_1000A5020(v9);
    if (v10)
    {
      sub_100034FF0(v10, v11, v12, v13, v14, v15, v16, v17, v22, v24, v26, v27, v28, v30);
      if (v29 == -3903)
      {
        v18 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          v23 = sub_1000A5010(v9);
          [sub_10000FC2C() WFLog:v23 message:?];
        }

        objc_autoreleasePoolPop(v18);
        CFRelease(v9);
        goto LABEL_13;
      }

      byte_1002985C0 = 1;
    }
  }

LABEL_15:
  v19 = *(a7 + 192);
  if (v19)
  {
    CFRelease(v19);
  }

  *(a7 + 192) = v9;
  return v9;
}

void sub_1001692B4(uint64_t a1, uint64_t a2, const void *a3, void *a4, int a5, uint64_t a6)
{
  if (!a3 || !a4)
  {
    return;
  }

  v7 = a6;
  context[1] = -1431655766;
  context[0] = a5;
  v48 = 0;
  v49 = 0;
  v50 = a1;
  v51 = a6;
  v9 = sub_10000EDD8(kCFAllocatorDefault, a3);
  cf = v9;
  if (!v9)
  {
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: serialization failed for scan data: %@", "__WiFiManagerDispatchClientScanCacheUpdateEvent", a3}];
    }

    objc_autoreleasePoolPop(v14);
    goto LABEL_16;
  }

  v10 = v9;
  v11 = sub_1000951FC();
  v48 = sub_10000EDD8(v11, v12);
  if (v48)
  {
    Value = CFDictionaryGetValue(a3, @"scanRequest");
    if (Value)
    {
      v49 = CFDictionaryGetValue(Value, @"ScanReqClientPid");
    }

    CFSetApplyFunction(*(v7 + 144), sub_1000907F0, context);
    v10 = cf;
    if (!cf)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: serialization failed for trimmed scan data: %@", "__WiFiManagerDispatchClientScanCacheUpdateEvent", a4}];
    }

    objc_autoreleasePoolPop(v15);
  }

  CFRelease(v10);
  cf = 0;
LABEL_16:
  if (v48)
  {
    CFRelease(v48);
  }

  v16 = objc_autoreleasePoolPush();
  [*(v7 + 200) update80211dCountryCodes:a4];
  objc_autoreleasePoolPop(v16);
  if (&_RDUpdateCountryCodeFromWiFiAPs)
  {
    v17 = [a4 objectForKey:@"scanRequest"];
    v18 = [a4 objectForKey:@"scanResults"];
    if ([objc_msgSend(v17 objectForKey:{@"SCAN_CHANNELS", "count"}] != 1)
    {
      sub_10009528C();
      v22 = sub_100095104(v19, v20, v21, context);
      if (v22)
      {
        v23 = v22;
        v42 = v7;
        v24 = 0;
        v25 = 0;
        v26 = *v45;
        do
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v45 != v26)
            {
              objc_enumerationMutation(v18);
            }

            v28 = [objc_msgSend(*(v44 + 8 * i) objectForKey:{@"80211D_IE", "objectForKey:", @"IE_KEY_80211D_COUNTRY_CODE"}];
            if (v28)
            {
              v30 = v28;
              if (!v25)
              {
                v25 = [[NSCountedSet alloc] initWithCapacity:0];
              }

              [v30 uppercaseString];
              v28 = [sub_1000305C4() addObject:?];
              ++v24;
            }
          }

          v23 = sub_100095104(v28, v29, v43, context);
        }

        while (v23);
        if (v24 < 3)
        {
          v41 = 0;
        }

        else
        {
          v31 = [v25 objectEnumerator];
          v32 = [v31 nextObject];
          if (v32)
          {
            v33 = v32;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            do
            {
              v37 = [v25 countForObject:v33];
              v39 = v37 < 2 || v37 < v36;
              if (v39)
              {
                v40 = v36;
              }

              else
              {
                v40 = v37;
              }

              if (!v39)
              {
                v35 = v36;
                v34 = v33;
              }

              v33 = [v31 nextObject];
              v36 = v40;
            }

            while (v33);
          }

          else
          {
            v40 = 0;
            v35 = 0;
            v34 = 0;
          }

          if (v40 == v35)
          {
            v41 = 0;
          }

          else
          {
            v41 = v34;
          }
        }

        v7 = v42;
      }

      else
      {
        v25 = 0;
        v41 = 0;
      }

      sub_10007CDF0(v7, v41, 0);
    }
  }
}

void sub_100169640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, CFIndex a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_100095164();
  if (!sub_10000A154(v32))
  {
    if (v30 || !v29)
    {
      if (v29 && v30 && v28)
      {
        v34 = sub_1000086B8();

        sub_10015CFDC(v34, v35, v29, v28, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
      }
    }

    else if (CFStringCompare(v29, @"ForcedDisassoc", 1uLL))
    {
      if (CFStringCompare(v29, @"PrivateMacCheckForMDMOrSupervised", 1uLL) == kCFCompareEqualTo && *(a5 + 497) && sub_10015FB28(a5))
      {
        *(a5 + 497) = 0;
        v33 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s WFMacRandomisation : Profiles Networks successfully checked for MDM or supervised.", "__WiFiManagerPrivateMacUpdateNetworkCallback"}];
        }

        objc_autoreleasePoolPop(v33);
      }
    }

    else if (v28 && kCFBooleanTrue == v28 && *(a5 + 370))
    {
      v40 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s WFMacRandomisation : No associated network. Update Force Disassociate key", "__WiFiManagerPrivateMacUpdateNetworkCallback"}];
      }

      objc_autoreleasePoolPop(v40);
      v41 = sub_100011328();
      if (sub_10007393C(v41, v42, v43, 0))
      {
        *(a5 + 370) = 0;
        v44 = sub_10000D7B8();
        sub_100020170(v44);
        sub_10015724C(a5);
        sub_100011414();
        sub_100161270();

        sub_100074AB8(a5, "__WiFiManagerPrivateMacUpdateNetworkCallback", 32176);
      }
    }
  }
}

void sub_100169830(uint64_t a1, uint64_t a2)
{
  v3 = sub_100021514(a1);
  if (*(a2 + 2240) != v3)
  {
    v4 = v3;
    v5 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s WiFiMC : band support changed. Before : %d, after : %d", "__WiFiManagerCountryCodeChangedCallback", *(a2 + 2240), v4}];
    }

    objc_autoreleasePoolPop(v5);
    *(a2 + 2240) = v4;
    sub_10007CB0C(a2, @"WiFiCountryBandSupportKey", v4, 1);
  }

  v6 = [[NSMutableString alloc] initWithString:&stru_1002680F8];
  sub_1000086AC();
  sub_1000211F8();
  if (v7)
  {
    if (![(__CFString *)v6 caseInsensitiveCompare:&stru_1002680F8]|| ![(__CFString *)v6 caseInsensitiveCompare:@"X0"]|| ![(__CFString *)v6 caseInsensitiveCompare:@"X2"]|| ![(__CFString *)v6 caseInsensitiveCompare:@"X3"]|| ![(__CFString *)v6 caseInsensitiveCompare:@"XZ"])
    {

      v6 = [[NSMutableString alloc] initWithString:&stru_1002680F8];
    }

    if (([(__CFString *)v6 isEqual:*(a2 + 1864)]& 1) == 0)
    {
      v8 = *(a2 + 1864);
      if ([sub_100095374() isEqual:?])
      {
        v8 = @"unknown";
      }

      if ([(__CFString *)v6 isEqual:&stru_1002680F8])
      {
        v9 = @"unknown";
      }

      else
      {
        v9 = v6;
      }

      v10 = [NSString stringWithFormat:@"WiFi country code changed from %@ to %@", v8, v9];

      *(a2 + 1864) = [(__CFString *)v6 copy];
      if (!sub_1000551DC())
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100090C94;
        block[3] = &unk_10025F5F8;
        block[4] = v10;
        block[5] = a2;
        dispatch_async(qword_100298C50, block);
      }
    }
  }
}

void sub_100169A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    [*(a4 + 200) updateRemoteClientCountryCode:?];
  }
}

void sub_100169A84(uint64_t a1, char a2, char a3, uint64_t a4)
{
  if (a4)
  {
    *(a4 + 2416) = a2;
    *(a4 + 2417) = a3;
  }
}

void sub_100169A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: type: %d network: %@", "__WiFiManagerUserNotificationPresentationCallback", a3, a2}];
    }

    objc_autoreleasePoolPop(v7);
    v8 = [NSDictionary alloc];
    v9 = sub_100010938();
    v10 = [v7 initWithObjectsAndKeys:{sub_10000A878(v9), @"ssid", +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", a3), @"notificationType", @"notification", @"type", @"presentation", @"trigger", 0}];
    context = v10;
    v11 = *(a4 + 144);
    sub_10000FDF8();
    CFSetApplyFunction(v12, v13, &context);
    if (v10)
    {
      CFRelease(v10);
    }
  }
}

uint64_t sub_100169BCC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return *(a2 + 2432);
  }

  else
  {
    return 0;
  }
}

void sub_100169BE0(uint64_t a1)
{
  v2 = sub_100020030(a1);
  v3 = v2;
  if (v2)
  {
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
            [*(a1 + 2656) addFaultEvent:24 forInterface:v8 at:{+[NSDate date](NSDate, "date")}];
          }
        }

        sub_100021D9C();
      }

      while (!v9);
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: failed to get device managers", "__WiFiManagerSoftErrorDextCrashedEvent"}];
    }

    objc_autoreleasePoolPop(v11);
  }

  *(a1 + 1904) = 0;
  sub_10000755C();
  v13 = 3221225472;
  v14 = sub_10008FC34;
  v15 = &unk_10025EAD8;
  v16 = a1;
  dispatch_async(v10, block);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_100169D1C(uint64_t a1, const void **a2)
{
  if (a1)
  {
    if (a2)
    {
      v4 = sub_10000AA64(*(a1 + 360), a2);
      if (v4)
      {
        if (*(a1 + 384))
        {
          v5 = sub_10000A540(v4, @"PrivateMacQuickProbeRequested");
          if (v5 && v5 == kCFBooleanTrue)
          {
            v7 = objc_autoreleasePoolPush();
            if (off_100298C40)
            {
              v10 = sub_10000A878(a2);
              [sub_10000FC2C() WFLog:"__WiFiManagerPrivateMacApplyQuickProbeResult" message:v10];
            }

            objc_autoreleasePoolPop(v7);
            v8 = sub_100011580();

            sub_100165368(v8, v9, 0);
          }
        }
      }
    }
  }
}

void sub_100169E08(const __CFArray *a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = sub_100021720(a1);
  v6 = sub_100095274();
  if ([v7 isLocationValid:a2 uptoSeconds:1 isHighAccuracy:v6])
  {
    *(a1 + 1800) = 0;
  }

  v8 = _os_feature_enabled_impl();
  if (a2 && v8 && v5)
  {
    [a2 coordinate];
    [a2 coordinate];
    [a2 horizontalAccuracy];
    [a2 timestamp];
    sub_100160178();
    if (v9)
    {
      sub_100081EDC(a1, v5, 1);
    }

    sub_100003924();
    sub_100147190();
  }

  else
  {
    sub_100003924();
    sub_100147190();
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  CFRelease(v5);
LABEL_8:

  objc_autoreleasePoolPop(v4);
}

void sub_100169F24(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = CFDateCreate(kCFAllocatorDefault, Current);
  v4 = sub_10014A684(v3, 5, 0, 0);
  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: user chose to mute join recommendation", "__WiFiManagerNotificationResponseFilterJoinRecommendation_block_invoke"}];
  }

  objc_autoreleasePoolPop(v5);
  v6 = *(*(a1 + 32) + 2296);
  sub_100158DBC();
  if (v4)
  {
    CFRelease(v4);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

void sub_10016A00C(uint64_t a1)
{
  v2 = sub_10000A878(*(*(*(a1 + 32) + 8) + 24));
  valuePtr = 0;
  v3 = sub_10000A540(*(a1 + 40), @"WiFiNetworkAttributeSource");
  if (v3)
  {
    CFNumberGetValue(v3, kCFNumberNSIntegerType, &valuePtr);
  }

  v4 = *(a1 + 56);
  v5 = *(a1 + 48);
  sub_10002DC78();
  sub_10015CCA0();
  v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, (a1 + 56));
  v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, (a1 + 60));
  keys[0] = @"ssid";
  keys[1] = @"type";
  keys[2] = @"notificationType";
  keys[3] = @"response";
  keys[4] = @"trigger";
  values[0] = v2;
  values[1] = @"notification";
  values[2] = v6;
  values[3] = v7;
  values[4] = @"dismissal";
  v8 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 5, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  context = v8;
  v9 = *(*(a1 + 48) + 144);
  sub_10000FDF8();
  CFSetApplyFunction(v10, v11, &context);
  if (v8)
  {
    CFRelease(v8);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  v12 = *(*(*(a1 + 32) + 8) + 24);
  if (v12)
  {
    CFRelease(v12);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void sub_10016A1F0()
{
  sub_100094FF0();
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = [NSNumber numberWithInteger:*(v0 + 2672)];
  if (v1)
  {
    v4 = v3;
    v5 = *(v0 + 2680);
    Count = CFArrayGetCount(v1);
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"[NWTRANSIT]: %s: Colocated Network Count = %ld ", "__WiFiManagerSetColocatedNetworks", Count}];
    }

    objc_autoreleasePoolPop(v7);
    if (Count)
    {
      [sub_10000D818() setObject:? forKey:?];
      [v2 setObject:v4 forKey:@"COLOCATED_NETWORK_GROUP_STATUS"];
      [sub_100007514() setObject:? forKey:?];
    }
  }

  context[0] = v0;
  context[1] = 0xAAAAAAAA00000084;
  context[2] = v2;
  context[3] = 1;
  context[4] = 0;
  v8 = *(v0 + 112);
  sub_1000083DC();
  CFSetApplyFunction(v9, v10, context);
}

void sub_10016A30C()
{
  sub_10000D798();
  if (v4 && (sub_1000952AC(v2, v3, v4), v6) && (v7 = v5, CFArrayGetCount(v1) > 0))
  {
    do
    {
      v8 = sub_10002ACB4();
      ValueAtIndex = CFArrayGetValueAtIndex(v8, v9);
      if (sub_10009F564(v7, ValueAtIndex))
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

void sub_10016A400(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t context, uint64_t a13, const __CFArray *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_100094FD4();
  a27 = v31;
  a28 = v32;
  v34 = v33;
  v35 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v67 = *(v34 + 32);
    [off_100298C40 WFLog:3 message:"%s: response %lu"];
  }

  objc_autoreleasePoolPop(v35);
  v36 = *(v34 + 40);
  if (v36)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v36 + 1784), 0);
    if (!ValueAtIndex || (v38 = ValueAtIndex, (v39 = [ValueAtIndex network]) == 0))
    {
LABEL_33:
      v59 = *(v34 + 40);
      if (v59)
      {
        v60 = *(v59 + 1736);
        if (v60)
        {
          CFRelease(v60);
          *(*(v34 + 40) + 1736) = 0;
          v59 = *(v34 + 40);
        }

        v61 = *(v59 + 1744);
        if (v61)
        {
          CFRelease(v61);
          *(*(v34 + 40) + 1744) = 0;
        }
      }

      goto LABEL_38;
    }

    v40 = v39;
    v41 = [v38 client];
    v42 = *(v34 + 32);
    if (v42 == 3)
    {
      v56 = objc_autoreleasePoolPush();
      v57 = sub_100095080();
      if (v57)
      {
        [v57 WFLog:3 message:"System cancelled user notification."];
      }

      objc_autoreleasePoolPop(v28);
      v52 = 0;
      v55 = 2;
      goto LABEL_30;
    }

    if (v42 == 1)
    {
      v53 = objc_autoreleasePoolPush();
      v54 = sub_100095080();
      if (v54)
      {
        [v54 WFLog:3 message:"User did not give consent to add network."];
      }

      objc_autoreleasePoolPop(v28);
      v52 = 0;
      v55 = 1;
      goto LABEL_30;
    }

    if (v42)
    {
      v52 = 0;
    }

    else
    {
      v43 = 25;
      if ([v38 originator] != 1)
      {
        if ([v38 originator] == 6)
        {
          v43 = 25;
        }

        else
        {
          v43 = 8;
        }
      }

      v44 = sub_1000227F8(v40);
      v45 = objc_autoreleasePoolPush();
      sub_1000952D8();
      if (v30)
      {
        [v38 sessionBased];
        [sub_100008BD4() WFLog:? message:?];
      }

      objc_autoreleasePoolPop(v29);
      if (v44)
      {
        sub_100159BD0(*(v34 + 40), v40, v43);
        sub_1000930E0(*(v34 + 40), v40);
      }

      else
      {
        v46 = [v38 sessionBased];
        v47 = *(v34 + 40);
        if (v46)
        {
          sub_1000930E0(v47, v40);
          sub_10007D988(v40);
        }

        else
        {
          sub_100159BD0(v47, v40, v43);
        }
      }

      if (sub_10000AFE4(v40))
      {
        v65 = objc_autoreleasePoolPush();
        v66 = sub_100095080();
        if (v66)
        {
          [v66 WFLog:3 message:"%s: skipping association for HS20 network"];
        }

        objc_autoreleasePoolPop(v43);
        v55 = 0;
        v52 = 0;
        goto LABEL_30;
      }

      v48 = *(v34 + 40);
      if (!*(v48 + 324))
      {
        sub_10007CC64(v48, 1, 0);
        v48 = *(v34 + 40);
      }

      context = v48;
      a13 = 0xAAAAAAAA00000045;
      a15 = 0;
      a16 = 0;
      a14 = v40;
      v49 = *(v48 + 112);
      sub_1000083DC();
      CFSetApplyFunction(v50, v51, &context);
      v52 = 1;
    }

    v55 = 0x7FFFFFFF;
LABEL_30:
    if (*(*(v34 + 40) + 1736))
    {
      Main = CFRunLoopGetMain();
      CFRunLoopRemoveSource(Main, *(*(v34 + 40) + 1736), kCFRunLoopDefaultMode);
    }

    if ((v52 & 1) == 0)
    {
      if (v41)
      {
        sub_10014B32C(v41, *(v34 + 40), v40, v55);
      }

      if ([v38 callback])
      {
        v62 = [v38 callback];
        v63 = *(v34 + 40);
        [v38 network];
        [v38 context];
        v64 = sub_100094FB0();
        v62(v64);
      }

      CFArrayRemoveValueAtIndex(*(*(v34 + 40) + 1784), 0);
      sub_10015BDA0(*(v34 + 40));
    }

    goto LABEL_33;
  }

LABEL_38:
  sub_100008C64();
}

void sub_10016A74C(uint64_t a1)
{
  Main = CFRunLoopGetMain();
  CFRunLoopRemoveSource(Main, *(*(a1 + 32) + 1736), kCFRunLoopDefaultMode);
  v3 = *(a1 + 32);
  if (*(v3 + 1736))
  {
    CFRelease(*(v3 + 1736));
    *(*(a1 + 32) + 1736) = 0;
    v3 = *(a1 + 32);
  }

  if (*(v3 + 1744))
  {
    CFRelease(*(v3 + 1744));
    *(*(a1 + 32) + 1744) = 0;
    v4 = *(a1 + 32);
  }

  sub_10015BDA0();
}

void sub_10016A7D4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: failed to create sessionBasedAddAsync.disassocTimer", "WiFiManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016A834()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: failed to create autojoinAssist timer", "WiFiManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016A894()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: failed to create CarPlay timer", "WiFiManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016A8F4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: failed to create heartBeatTimer", "WiFiManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016A954()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: failed to create metricDelayedSubmissionTimer", "WiFiManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016A9B4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: failed to create diagnostics timer", "WiFiManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016AA14()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: failed to create disassociation timer", "WiFiManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016AA74()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: WiFiServerCreate failed", "WiFiManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016AAD4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: failed to create privateMacScanDataCleanup timer", "WiFiManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016AB34()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: failed to create carPlayLinkDownSuppressionMetrics.timer", "WiFiManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016AB94()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: failed to create networkExpiry.timer", "WiFiManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016ABF4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: CWFKeyValueStore alloc failed for %s", "WiFiManagerCreate", objc_msgSend(sub_100011424(), "cStringUsingEncoding:")}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016AC6C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: SCPreferencesSetCallback preferences.radios failed", "WiFiManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016ACCC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: SCPreferencesCreate preferences.radios failed", "WiFiManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016AD2C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: SCPreferencesCreateWithOptions preferences.wifiClassDPrivateMacNetworks failed", "WiFiManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016AD8C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: SCPreferencesCreateWithOptions preferences.wifiPrivateMacNetworks failed", "WiFiManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016ADEC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: SCPreferencesCreateWithOptions preferences.wifiNetworks failed", "WiFiManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016AE4C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: Failed to generate rotation Key for mac randomisation", "WiFiManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016AEAC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: Failed to generate device Specific Key for mac randomisation", "WiFiManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016AF0C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: SCPreferencesSetCallback preferences.wifi failed", "WiFiManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016AF6C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: SCPreferencesCreate preferences.wifi failed", "WiFiManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016AFCC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: SCPreferencesCreate preferences.system failed", "WiFiManagerCreate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016B02C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null isOrphanedSCCleanUpRequiredRef", "__WiFiManagerCheckSCCleanUpScheduling"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016B08C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Null isWiFiPNLMigrationNeededRef", "__WiFiManagerCheckPNLMigrationScheduling"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016B0EC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null networks", "__WiFiManagerCheckNetworkExpiry"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016B158()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null manager", "__WiFiManagerCheckNetworkExpiry"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016B1C4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Null accountStoreManager", "__WiFiManagerIsManagedAppleID"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016B230(char a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v3 = "Managed";
    if (!a1)
    {
      v3 = "Non-Managed";
    }

    [off_100298C40 WFLog:3 message:{"%s: No change Current (%s Account)", "__WiFiManagerSetManagedAppleID", v3}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10016B2B8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Null manager", "__WiFiManagerSetManagedAppleID"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016B324()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null queue.", "__WiFiManagerHandleAccountStoreChangesForManagedID"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016B390()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager.", "__WiFiManagerHandleAccountStoreChangesForManagedID"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016B3FC()
{
  sub_100011520();
  v2 = v1;
  sub_100094FF0();
  if (CFSetGetCount(v3) && CFArrayGetCount(v0))
  {
    v4 = sub_100034FE4();
    Mutable = CFArrayCreateMutable(v4, v5, v6);
    if (Mutable && CFArrayGetCount(v0) >= 1)
    {
      v21 = v2;
      do
      {
        v8 = sub_100095208();
        ValueAtIndex = CFArrayGetValueAtIndex(v8, v9);
        if (ValueAtIndex)
        {
          v11 = ValueAtIndex;
          if (sub_10000A540(ValueAtIndex, @"PolicyUUID"))
          {
            v12 = sub_1000083F0();
            if (CFSetContainsValue(v12, v13))
            {
              if (!sub_1000A1F04(v11))
              {
                v14 = objc_autoreleasePoolPush();
                v15 = off_100298C40;
                if (off_100298C40)
                {
                  sub_10000A878(v11);
                  [v15 WFLog:3 message:"%s: network %@ allowed. Restriction UUID %@"];
                }

                objc_autoreleasePoolPop(v14);
                CFArrayAppendValue(Mutable, v11);
              }
            }
          }
        }

        sub_1000951A8();
      }

      while (!v16);
      v2 = v21;
    }
  }

  else
  {
    v17 = sub_100034FE4();
    Mutable = CFArrayCreateMutableCopy(v17, v18, v0);
  }

  *v2 = Mutable;
  sub_10001091C();

  CFRelease(v19);
}

void sub_10016B54C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_10009519C();
  sub_100020170(v6);
  if (*v4 && CFArrayGetCount(*v4))
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      Count = CFArrayGetCount(*v4);
      [sub_10002147C() WFLog:"__WiFiManagerHeartBeatFire" message:{Count, *a3}];
    }

    objc_autoreleasePoolPop(v7);
    sub_10015724C(v3);
  }

  ++*a3;
}

void sub_10016B604()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: failed to retrieve ICCID.", "__WiFiManagerRunDataUsageCheck"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016B664(const __CFArray *a1)
{
  v2 = sub_100158FF4(a1);
  if (v2)
  {
    v3 = sub_1000954A0(v2);
    sub_100006F88(v3);
    v4 = sub_100015EB8();
    sub_10007A340(v4, v5, 1);
    CFRelease(v1);
  }
}

void sub_10016B6A8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null device manager", "WiFiManagerCheckDeletedPasswordNetworks"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016B708()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null device managers array", "WiFiManagerCheckDeletedPasswordNetworks"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016B768()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: corecaptureOnAssistedAJFailure not enabled", "__WiFiManagerCompanionAssistedAJTimeout"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016B7C8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: session based network is null", "__WiFiManagerSessionBasedDisassociationTimerCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016B834()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is null", "__WiFiManagerSessionBasedDisassociationTimerCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016B8A0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: invalid network ref", "__GetNetworkIndices"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016B900()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: couldn't find matching known network", "WiFiManagerSetUserAutoJoinState"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016B960()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: wifiManagerRef is NULL!", "WiFiManagerSetUserAutoJoinState"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016B9CC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: IOServiceAddMatchingNotification  WiFiHardwareHealthy failed", "WiFiManagerScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016BA2C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: IOServiceAddMatchingNotification IO80211SkywalkInterface failed", "WiFiManagerScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016BA8C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: IOServiceAddMatchingNotification IOPMPowerSource failed", "WiFiManagerScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016BAEC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Usb Host Notification IOServiceAddMatchingNotification for device insertion failed (0x%x)\n", "WiFiManagerScheduleWithQueue", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10016BB50(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: IOServiceAddMatchingNotification failed: %08x", "WiFiManagerScheduleWithQueue", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10016BBB4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: SCPreferencesSetDispatchQueue preferences.radios failed", "WiFiManagerScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016BC14()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: SCPreferencesSetDispatchQueue preferences.wifiPrivateMacNetworks failed", "WiFiManagerScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016BC74()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: SCPreferencesSetDispatchQueue preferences.wifiClassDPrivateMacNetworks failed", "WiFiManagerScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016BCD4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: SCPreferencesSetDispatchQueue preferences.wifiNetworks failed", "WiFiManagerScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016BD34()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: SCPreferencesSetDispatchQueue preferences.wifi failed", "WiFiManagerScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016BD94()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Error: IONotificationPortCreate failed", "WiFiManagerScheduleWithQueue"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016BDF4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager", "__WiFiManagerAppStateManagerCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016BE60()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager ref is null", "WiFiManagerGetAvailabilityEngineIsEnabled"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016BECC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager", "__WiFiManagerAppStateManagerBundleIdCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016BF38()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager", "__WiFiManagerAppStateManagerAppReporterCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016BFA4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager", "__WiFiAppStateManagerAppUnregisteredCallbackFunctionPtr"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016C010()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null queue", "__WiFiManagerHandleKeybagLockStatus"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016C07C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager.", "__WiFiManagerHandleKeybagLockStatus"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016C0E8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null queue", "__WiFiManagerHandleDeviceDiscovered"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016C154()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager.", "__WiFiManagerHandleDeviceDiscovered"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016C1C0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Setup not completed. Not querying family circle.", "__WiFiManagerUpdateFamilyPreferences"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016C22C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Device not unlocked since boot. Not querying family circle.", "__WiFiManagerUpdateFamilyPreferences"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016C298()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager.", "__WiFiManagerUpdateFamilyPreferences"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016C304()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager.", "__WiFiManagerHandleFamilyUpdateNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016C370()
{
  sub_10000D798();
  v3 = v2;
  sub_100095008();
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"First unlock since launch"];
  }

  objc_autoreleasePoolPop(v4);
  *v1 = 1;
  v5 = sub_10000D7B8();
  sub_100072D44(v5);
  sub_1000731D0(v0, *(v0 + 232));
  v6 = sub_10000D7B8();
  sub_100020170(v6);
  sub_10015724C(v0);
  sub_100079A8C(v0);
  v7 = sub_100011328();
  sub_100079528(v7, v8, v9);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, 0, @"com.apple.mobile.keybagd.lock_status", 0);
  sub_10002B5D0(v0);
  v11 = sub_10000D7B8();
  sub_100091E08(v11, v12);
  if (*(v0 + 2494))
  {
    *(v0 + 2494) = 0;
    v13 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"%s reseting user auto join due after first unlock due to device restart"];
    }

    objc_autoreleasePoolPop(v13);
    v14 = sub_10001EDA0();
    sub_1000740C8(v14, v15, 3, 0);
  }

  v16 = sub_10001EDA0();
  sub_10000D1F8(v16, v17);
  v18 = sub_10001EDA0();
  sub_10000D4C0(v18, v19);
  if ((*(v0 + 800) & 0xF) != 0)
  {
    sub_10000D278(v0);
  }

  else
  {
    sub_100006910(v0);
  }

  if (_os_feature_enabled_impl())
  {
    sub_1000197A4(v0, 29);
  }

  else
  {
    sub_10007A1F4(v0, 2);
  }

  sub_100125E84(*(v0 + 1536));
  if (&_WiFiCloudSyncEngineCreate && *(v0 + 1384))
  {
    CFRetain(v0);
    v20 = dispatch_time(0, 30000000000);
    v21 = *(v0 + 32);
    *v3 = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000928CC;
    v3[3] = &unk_10025EAD8;
    v3[4] = v0;
    dispatch_after(v20, v21, v3);
  }

  sub_100166084(v0);
  sub_1000084B8();
}

void sub_10016C57C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null manager", "__WiFiManagerSymptomsRecommendationUpdate"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016C5E8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: WiFiHardwareHealthy property not found", "__WiFiManagerWiFiHardwareHealthCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016C654()
{
  sub_100008C40();
  if (sub_10008C170(v1))
  {
    v2 = sub_100011580();
    sub_100166840(v2, v3);
  }

  CFRelease(v0);
}

void sub_10016C698()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"No interface name for IOService"];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016C6F0()
{
  sub_100008C40();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *v0 = 136315138;
    *v1 = "__WiFiManagerDownloadOCLAConfiguration";
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: Error: couldn't allocate buffer for command\n", v0, 0xCu);
  }
}

void sub_10016C768()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null manager", "__WiFiManagerDriverPublishedCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016C7D4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null manager", "__WiFiManagerDriverTerminatedCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_10016C840(uint64_t a1, io_object_t object, io_iterator_t a3)
{
  do
  {
    if (a1)
    {
      sub_10001EE34(a1, object, -536723200);
      IOServiceAddInterestNotification(*(a1 + 928), object, "IOGeneralInterest", sub_10001EE34, a1, (a1 + 972));
    }

    IOObjectRelease(object);
    result = IOIteratorNext(a3);
    object = result;
  }

  while (result);
  return result;
}

id sub_10016C8D0(uint64_t a1)
{
  *(a1 + 2696) = 1;
  *(a1 + 2720) = CFAbsoluteTimeGetCurrent();
  sub_100158290(a1);
  v2 = sub_10001EDA0();
  v4 = sub_10007681C(v2, v3);
  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s - usbDevices(%lu) %@ \n", "__WiFiManagerhostNotificationUSBDeviceInserted", objc_msgSend(*(a1 + 2728), "count"), *(a1 + 2728)}];
  }

  objc_autoreleasePoolPop(v5);
  return [+[WiFiUsageMonitor sharedInstance](WiFiUsageMonitor setUsbStatus:"setUsbStatus:currentDevices:currentNoiseDelta:" currentDevices:1 currentNoiseDelta:*(a1 + 2728), v4];
}

id sub_10016C990(uint64_t a1)
{
  *(a1 + 2696) = 0;
  *(a1 + 2720) = CFAbsoluteTimeGetCurrent();
  sub_100158290(a1);
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [sub_100011424() WFLog:objc_msgSend(*(a1 + 2728) message:{"count"), *(a1 + 2728)}];
  }

  objc_autoreleasePoolPop(v2);
  return [+[WiFiUsageMonitor sharedInstance](WiFiUsageMonitor setUsbStatus:"setUsbStatus:currentDevices:currentNoiseDelta:" currentDevices:0 currentNoiseDelta:*(a1 + 2728), 0x7FFFFFFFFFFFFFFFLL];
}

void sub_10016CA30(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"Usb Host Notification IORegistryEntryGetRegistryEntryID failed: %08x", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10016CA8C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Usb Host Notification Error: IOServiceAddInterestNotification failed", "__WiFiManagerhandleUnifiedE85ServiceAdded"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016CAEC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: BT callback failure, result %d", "__WiFiManagerBluetoothCallback", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10016CB5C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: BT callback failure, invalid userData type", "__WiFiManagerBluetoothCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016CBC8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: session null", "__WiFiManagerBluetoothCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016CC34()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager queue null", "__WiFiManagerBluetoothCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016CCA0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: BT callback failure, null userData", "__WiFiManagerBluetoothCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016CD0C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null manager or queue.", "__WiFiManagerCellularDataRegistrationCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016CD78()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null scSetsToModify.", "WiFiManagerHelperInsertWiFiServiceToNetworkSetsIfNotPresent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016CDE4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null ifName.", "WiFiManagerHelperInsertWiFiServiceToNetworkSetsIfNotPresent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016CE50()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: managerRef is NULL", "WiFiManagerGetDeviceExternallyPowered"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016CEBC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: managerRef is NULL", "WiFiManagerGetDeviceBatteryLevel"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016CF28()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: no user auto join expiration date", "__WiFiManagerCheckUserAutoJoinEnable"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016CF88()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager Param is NULL!", "WiFiManagerGetUserInteractionMode"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016CFF4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Null manager", "WiFiManagerIsPowerModificationDisabled"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016D060()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager is NULL", "__WiFiManagerAllowUnifiedKVS"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016D0CC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: failed to create changes array", "__WiFiManagerDispatchClientsNetworksChangedEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016D12C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: failed to create changeTypeKey", "__WiFiManagerDispatchClientsNetworksChangedEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016D198()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: failed to create dictionary", "__WiFiManagerDispatchClientsNetworksChangedEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016D204()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: network attributes is null", "__WiFiManagerDispatchClientsNetworksChangedEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016D270()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: network is null", "__WiFiManagerDispatchClientsNetworksChangedEvent"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016D2DC(uint64_t a1, const void *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    v5 = sub_10000A878(a2);
    [sub_10000DAC0() WFLog:"WiFiManagerAddPrivateMacNetwork" message:v5];
  }

  objc_autoreleasePoolPop(v4);

  sub_100074AB8(a1, "WiFiManagerAddPrivateMacNetwork", 30489);
}

void sub_10016D374()
{
  sub_10001131C();
  if (sub_1000567D0(v0))
  {
    v1 = sub_100003924();
    v3 = sub_10000A540(v1, v2);
    v4 = sub_10000D80C();
    v6 = sub_10000A540(v4, v5);
    v7 = sub_100021D58();
    sub_10000AD34(v7, v8, v3);
    v9 = sub_100057F7C();
    sub_10000AD34(v9, v10, v6);
  }
}

BOOL sub_10016D3F4(uint64_t a1)
{
  sub_10000AD34(a1, @"preSwUpdateNetwork", kCFBooleanTrue);
  v2 = sub_100011328();
  sub_10000AD34(v2, v3, v4);
  return sub_1000567D0(a1) == 0;
}

void sub_10016D44C()
{
  sub_1000951B4();
  v3 = v2;
  sub_10001131C();
  Value = CFDictionaryGetValue(v4, @"PRIVATE_MAC_ADDRESS_VALID");
  if (Value)
  {
    v6 = Value;
    v7 = sub_100034FE4();
    Mutable = CFDictionaryCreateMutable(v7, v8, v9, v10);
    v12 = CFDictionaryGetValue(v1, @"PRIVATE_MAC_ADDRESS_VALUE");
    if (!v12)
    {
      v12 = CFDictionaryGetValue(v1, @"PRIVATE_MAC_ADDRESS_IN_USE");
    }

    v13 = sub_10000ABFC(v12);
    if (v6 == kCFBooleanTrue)
    {
      v14 = 2;
    }

    else
    {
      v14 = 3;
    }

    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = 1;
    }

    v16 = sub_100059228(v15);
    CFDictionarySetValue(Mutable, @"PRIVATE_MAC_ADDRESS_TYPE", v16);
    if (v12)
    {
      CFDictionarySetValue(Mutable, @"PRIVATE_MAC_ADDRESS_VALUE", v12);
    }

    if (v16)
    {
      CFRelease(v16);
    }

    v17 = sub_100007514();
    sub_10000AD34(v17, v18, v19);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    v20 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      sub_10000A878(v3);
      [sub_10001DB84() WFLog:? message:?];
    }

    objc_autoreleasePoolPop(v20);
    v21 = sub_10000A540(v0, @"PrivateMacFeatureTurnedONtoOFF");
    v22 = sub_10000A540(v0, @"PrivateMacFeatureTurnedOFFtoON");
    if (v21 && v21 == kCFBooleanTrue || v22 && v22 == kCFBooleanTrue)
    {
      sub_10000AD34(v0, @"PrivateMacPrefChanged", kCFBooleanTrue);
      v23 = sub_100011328();
      sub_10000AD34(v23, v24, v25);
      v26 = sub_100011328();
      sub_10000AD34(v26, v27, v28);
    }

    v29 = sub_10000A540(v0, @"PrivateMacFeatureTurnedONtoOFFTimestamp");
    v30 = sub_10000A540(v0, @"PrivateMacFeatureTurnedOFFtoONTimestamp");
    if (v29 | v30)
    {
      v31 = v30;
      v32 = sub_100003924();
      if (CFDateCompare(v32, v33, 0) == kCFCompareGreaterThan)
      {
        v34 = v29;
      }

      else
      {
        v34 = v31;
      }

      sub_10000AD34(v0, @"PrivateMacPrefChangedTimestamp", v34);
      v35 = sub_100011328();
      sub_10000AD34(v35, v36, v37);
      v38 = sub_100011328();
      sub_10000AD34(v38, v39, v40);
    }
  }

  sub_10001ED88();
}

void sub_10016D69C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: new Network create fail", "WiFiManagerAddPrivateMacNetwork"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016D6FC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiManagerAddPrivateMacNetwork"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016D768()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager", "WiFiManagerAddPrivateMacNetwork"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016D7D4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: networkRecord create fail", "WiFiManagerAddPrivateMacNetwork"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016D840()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager->networks is NULL", "__WiFiManagerCopyExistingHS20Network"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016D8A0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: '%@' has DA record but did not declare WiFi support", "WiFiManagerAddNetworkAsync", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10016D904()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: wrong input type specified for originator", "WiFiManagerAddNetworkAsync"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016D970()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager is NULL", "WiFiManagerAddNetworkAsync"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016D9DC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: network is null", "__WiFiManagerDispatchForcedAssociationFailureNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016DA48()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is null", "__WiFiManagerDispatchForcedAssociationFailureNotification"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016DAB4(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a1);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10016DB24(void ***block, void **a2)
{
  v4 = qword_100298C50;
  *block = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000829D8;
  block[3] = &unk_1002608E0;
  block[4] = a2;
  dispatch_async(v4, block);
  _Block_object_dispose(a2, 8);
}

void sub_10016DBA8(const __CFArray *a1, uint64_t a2, CFIndex *a3)
{
  sub_10015AADC();
  if (*a3 != -1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, *a3);
    if (ValueAtIndex)
    {
      sub_10000AD34(ValueAtIndex, @"lastJoined", 0);
    }
  }
}

void sub_10016DC0C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiManagerRemoveNetwork"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016DC78()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager", "WiFiManagerRemoveNetwork"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016DCE4(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a1);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10016DD54()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Null networks", "WiFiManagerUpdateNetwork"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016DDC0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: failed to get prefs lock", "WiFiManagerUpdateNetwork"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016DE2C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager", "WiFiManagerUpdateNetwork"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016DE98()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Null existingNetwork", "WiFiManagerUpdateNetworkForAutoJoinDisablementProperties"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016DEF8(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a1);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10016DF68()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Null networks", "WiFiManagerUpdateNetworkForAutoJoinDisablementProperties"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016DFD4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiManagerUpdateNetworkForAutoJoinDisablementProperties"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016E040()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager", "WiFiManagerUpdateNetworkForAutoJoinDisablementProperties"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016E0AC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Null guessingAttemptPerBssidDict", "WiFiManagerUpdateNetworksGuessingFailureCount"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016E10C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Null existingNetwork", "WiFiManagerUpdateNetworksGuessingFailureCount"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016E16C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: %@ does not  exist", "WiFiManagerUpdateNetworksGuessingFailureCount", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10016E1D0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: failed to get prefs lock", "WiFiManagerUpdateNetworksGuessingFailureCount"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016E23C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null known5GhzNetwork", "WiFiManagerUpdateNetworksGuessingFailureCount"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016E2A8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null bssid", "WiFiManagerUpdateNetworksGuessingFailureCount"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016E314()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiManagerUpdateNetworksGuessingFailureCount"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016E380()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager", "WiFiManagerUpdateNetworksGuessingFailureCount"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016E3EC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null networkCopy", "WiFiManagerSetNetworkProperty"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016E44C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null existingNetwork", "WiFiManagerSetNetworkProperty"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016E4AC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: %@ does not  exist", "WiFiManagerSetNetworkProperty", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10016E510()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null networks", "WiFiManagerSetNetworkProperty"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016E57C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null network", "WiFiManagerSetNetworkProperty"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016E5E8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager", "WiFiManagerSetNetworkProperty"}];
  }

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_10016E654()
{
  sub_100095008();
  v2 = 1;
  sub_1000950D0(v3);
  SCPreferencesSynchronize(*(v1 + 1072));
  v4 = sub_10001769C(v1, @"List of known networks");
  if (v4)
  {
    v2 = 0;
    *v0 = sub_10005894C(v4);
  }

  return v2;
}

void sub_10016E6B0(void *a1, void *a2)
{
  v3 = [a1 identifier];
  v4 = [a1 externalForm];
  if (v3 && v4)
  {
    [a2 setObject:v4 forKey:v3];
  }
}

void sub_10016E718()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager", "WiFiManagerMergeKnownNetworksToList"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016E784()
{
  sub_1000086C4();
  sub_100095008();
  v3 = sub_10002ACC0(v2);
  if (v3 > 2)
  {
    v4 = @"U";
  }

  else
  {
    v4 = off_100260E00[v3];
  }

  CFStringAppend(v0, v4);
  sub_100029EA4(v1);
  CFStringAppendFormat(v0, 0, @": [%d]");
  sub_10000715C(v1);
  CFStringAppendFormat(v0, 0, @"%@: ");
  CFStringAppend(v0, @"{");
  v5 = sub_10005A2CC(v1);
  sub_1000933AC(v5, v0);
  CFStringAppend(v0, @" } ");
  v6 = sub_100029A10(v1);
  v7 = sub_100020030(v6);
  if (v7)
  {
    if (CFArrayGetCount(v7) >= 1)
    {
      do
      {
        v8 = sub_1000258C8();
        CFStringAppend(v8, v9);
        v10 = sub_100094FB0();
        ValueAtIndex = CFArrayGetValueAtIndex(v10, v11);
        v13 = sub_10001083C(v1, ValueAtIndex);
        if (v13)
        {
          sub_1000933AC(v13, v0);
        }

        CFStringAppend(v0, @" } ");
        sub_1000951A8();
      }

      while (!v14);
    }

    v15 = sub_100011580();
    CFArrayAppendValue(v15, v16);
    CFRelease(v0);
  }

  else
  {
    v17 = sub_100011580();
    CFArrayAppendValue(v17, v18);
  }

  sub_100010944();

  CFRelease(v19);
}

void sub_10016E8FC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null description", "__WiFiManagerAddNameToArray"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016E968()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null names", "__WiFiManagerAddNameToArray"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016E9D4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null client", "__WiFiManagerAddNameToArray"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016EA40()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null localeStatsDict", "WiFiManagerCopyLocaleStats"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016EAAC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Null localeManagerUser", "WiFiManagerCopyLocaleStats"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016EB18()
{
  sub_10001131C();
  sub_10007D6E8(v1, @"LocaleTestParams", v0);
  v2 = sub_100011580();
  sub_1001585A8(v2, v3);
}

void sub_10016EB54()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null mutableTestParams", "WiFiManagerSetTestParams"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016EBB4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null cmdNum", "WiFiManagerSetTestParams"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016EC20()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager", "WiFiManagerSetTestParams"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016EC8C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null testParams", "WiFiManagerSetTestParams"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016ECF8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null params", "__WiFiManagerCopyDualPowerOverrideParams"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016ED58()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null mutableTestParams", "WiFiManagerSetTestParamsAndCopyResponse"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016EDB8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null cmdNum", "WiFiManagerSetTestParamsAndCopyResponse"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016EE24()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null manager", "WiFiManagerSetTestParamsAndCopyResponse"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016EE90()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null testParams", "WiFiManagerSetTestParamsAndCopyResponse"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016EEFC(CFArrayRef *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    CFArrayGetCount(*a1);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10016EF78(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a1);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10016EFF4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: no matching network in known networks list", "WiFiManagerCheckForUnexpectedPasswordDelete"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016F060()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null device manager", "WiFiManagerCheckForUnexpectedPasswordDelete"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016F0CC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null device managers array", "WiFiManagerCheckForUnexpectedPasswordDelete"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016F138(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    sub_10000A878(a1);
    sub_10002D39C();
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10016F1B4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null manager", "WiFiManagerSetLQASettings"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016F220()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager ref is null", "WiFiManagerSetNANOffHeadConnectionExpiry"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016F28C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: user auto-join disabled.", "WiFiManagerIsAlwaysOnWiFiEnabled"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016F2F8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null manager.", "WiFiManagerIsAlwaysOnWiFiEnabled"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016F364(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: invalid token %d", "__WiFiManagerNotifyBatterySaverModeConfiguration", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10016F3D4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager ref is null", "__WiFiManagerSetAvailabilityEngineIsEnabled"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016F440()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: network is NULL", "WiFiManagerCopyGeoTagsForNetwork"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016F4AC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is NULL", "WiFiManagerCopyGeoTagsForNetwork"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016F518()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Invalid longitude value", "WiFiManagerSetGeoTagForNetwork"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016F584()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Invalid latitude value", "WiFiManagerSetGeoTagForNetwork"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016F5F0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: network is NULL", "WiFiManagerSetGeoTagForNetwork"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016F65C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is NULL", "WiFiManagerSetGeoTagForNetwork"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016F6C8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Invalid longitude value", "WiFiManagerGetNetworksAtLocation"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016F734()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Invalid latitude value", "WiFiManagerGetNetworksAtLocation"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016F7A0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is NULL", "WiFiManagerGetNetworksAtLocation"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016F80C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: network is NULL", "WiFiManagerCopyScoreForNetwork"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016F878()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is NULL", "WiFiManagerCopyScoreForNetwork"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016F8E4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: network is NULL", "WiFiManagerCopyNetworksInSameLan"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016F950()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is NULL", "WiFiManagerCopyNetworksInSameLan"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016F9BC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Both IPv4 & IPv6 network signatures are NULL", "WiFiManagerCopyNetworksWithNetworkSignature"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016FA28()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is NULL", "WiFiManagerCopyNetworksWithNetworkSignature"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016FA94()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is NULL", "WiFiManagerCopyNetworkSignatureForBSSID"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016FB00()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is NULL", "WiFiManagerCopyNetworkSignatureForSSID"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016FB6C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: location is NULL", "WiFiManagerCopyLeechedLocation"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016FBD8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is NULL", "WiFiManagerCopyLeechedLocation"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016FC44()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is NULL", "WiFiManagerUnScheduleUnusedNetworkGeotagsRemovalTest"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016FCB0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: numRef create failed!", "WiFiManagerCopySoftErrorCounters"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016FD1C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: errorCountersRef recived from softErrorManager is NULL! ", "WiFiManagerCopySoftErrorCounters"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016FD88()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s:Failed to allocate dictionary for SoftError Counters", "WiFiManagerCopySoftErrorCounters"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016FDF4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: softError manager is NULL!", "WiFiManagerGetSoftErrorCounters"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016FE60()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager is NULL!", "WiFiManagerGetSoftErrorCounters"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016FECC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Params Null", "WiFiManagerGetMotionState"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016FF38()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager is NULL", "WiFiManagerGetMotionState"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10016FFA4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is NULL", "WiFiManagerCopyCurrentSessionBasedNetwork"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100170010()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: wifiManagerRef is NULL!", "WiFiManagerSubmitWoWBlacklistingHistory"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017007C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: null prefs ref", "__WiFiManagerRemoveSCNetworkSets"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001700E8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: invalid scSets", "WiFiManagerRemoveOrphanedSCNetworkSets"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100170154()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null set.", "__WiFiManagerHelperAddNetworkServicesFromSetToList"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001701C0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null list.", "__WiFiManagerHelperAddNetworkServicesFromSetToList"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017022C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager ref is null", "__WiFiManagerSetSessionBasedNetworkList"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100170298()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Could not set records", "__WiFiManagerMigratePNLToStandaloneClassC"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100170304()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Could not acquire lock newPrefs", "__WiFiManagerMigratePNLToStandaloneClassC"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100170370()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Could not remove value", "__WiFiManagerMigratePNLToStandaloneClassC"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001703DC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Could not fetch keyList", "__WiFiManagerMigratePNLToStandaloneClassC"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100170448()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Could not acquire lock oldPrefs", "__WiFiManagerMigratePNLToStandaloneClassC"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001704B4()
{
  sub_100008C40();
  v2 = +[NSMutableDictionary dictionary];
  if (CFArrayGetCount(v0) >= 1)
  {
    v3 = 0;
    do
    {
      v4 = sub_1000086B8();
      ValueAtIndex = CFArrayGetValueAtIndex(v4, v5);
      if (ValueAtIndex)
      {
        v7 = sub_10001B368(ValueAtIndex);
        if (v7)
        {
          v8 = v7;
          if (![v7 addedAt] && !objc_msgSend(v8, "lastJoinedByUserAt"))
          {
            if (![v8 updatedAt] && !objc_msgSend(v8, "lastJoinedBySystemAt"))
            {
              +[NSDate date];
            }

            [sub_10001158C() setAddedAt:?];
          }

          v9 = [v8 identifier];
          v10 = [v8 externalForm];
          if (v9 && v10)
          {
            [v2 setObject:v10 forKeyedSubscript:v9];
          }
        }
      }

      ++v3;
    }

    while (CFArrayGetCount(v0) > v3);
  }

  [*(v1 + 1104) addEntriesFromDictionary:v2];
  [*(v1 + 1104) synchronize];

  CFRelease(v0);
}

void sub_1001705D4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  +[NSDate timeIntervalSinceReferenceDate];
  v4 = v3;
  v5 = +[NSMutableDictionary dictionary];
  if ((_os_feature_enabled_impl() & 1) != 0 && (_os_feature_enabled_impl() & 1) != 0 && (SCPreferencesSynchronize(*(a1 + 1088)), (v6 = sub_10001769C(a1, @"List of scanned networks with private mac")) != 0))
  {
    v7 = sub_10005894C(v6);
    if (v7)
    {
      v8 = sub_10015DD48([*(a1 + 1104) dictionaryRepresentation]);
      v9 = v8;
      if (v8)
      {
        if (CFArrayGetCount(v8) > 0)
        {
          v10 = 0;
          do
          {
            v11 = sub_100095208();
            if (CFArrayGetValueAtIndex(v11, v12))
            {
              sub_10015AADC();
            }

            ++v10;
          }

          while (CFArrayGetCount(v9) > v10);
        }

        [*(a1 + 1104) addEntriesFromDictionary:v5];
        [*(a1 + 1104) synchronize];
        v13 = [NSString stringWithFormat:@"/Library/Preferences/SystemConfiguration/%@", @"com.apple.wifi-private-mac-networks.plist"];
        [+[NSFileManager defaultManager](NSFileManager copyItemAtPath:"copyItemAtPath:toPath:error:" toPath:v13 error:[(NSString *)v13 stringByAppendingPathExtension:@"backup"], 0];
        [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:v13, 0];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
    v7 = 0;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = off_100298C40;
  if (off_100298C40)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    [v15 WFLog:3 message:{"%s: Migrate to unified private MAC took %fs", "__WiFiManagerMigrateToUnifiedPrivateMAC", v16 - v4}];
  }

  objc_autoreleasePoolPop(v14);
  if (v7)
  {
    CFRelease(v7);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100170A6C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s:manager is null", "WiFiManagerMigratePNL"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100170AD8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is NULL", "WiFiManagerIsConnectionQualityLocalCollectionEnabled"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100170B44()
{
  sub_10000D798();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = sub_100020030(v6);
  if (v7)
  {
    v8 = v7;
    if (CFArrayGetCount(v7))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v8, 0);
      if (ValueAtIndex)
      {
        v10 = ValueAtIndex;
        v11 = sub_100010908(ValueAtIndex);
        if (v11)
        {
          switch(v5)
          {
            case 2:
              v12 = sub_10000FC38();
              sub_1000D652C(v12, v13);
              break;
            case 5:
              if (!v3)
              {
                v29 = objc_autoreleasePoolPush();
                v30 = off_100298C40;
                if (!off_100298C40)
                {
                  goto LABEL_29;
                }

                v31 = "%s: network is null";
                goto LABEL_28;
              }

              sub_10000AD34(v3, @"WiFiNetworkUserAcceptedRecommendationAt", 0);
              v19 = sub_10000FC38();
              sub_1000D60A4(v19, v20);
              break;
            case 7:
              v14 = sub_100009664(v11);
              v15 = kCFAllocatorDefault;
              v16 = 7;
              v17 = 2;
              goto LABEL_13;
            case 8:
              v23 = sub_10000FC38();
              sub_1000D6120(v23, v24);
              break;
            case 10:
              v25 = sub_10000FC38();
              sub_1000D6150(v25, v26);
              break;
            case 13:
              Value = CFDictionaryGetValue(v1, @"SSID_STR");
              sub_1000DDAE0(v10, Value);
              break;
            case 14:
              v21 = sub_10000FC38();
              sub_1000DDF10(v21, v22);
              break;
            default:
              v14 = sub_100009664(v11);
              v15 = kCFAllocatorDefault;
              v16 = v5;
              v17 = 0;
LABEL_13:
              sub_1000A4F20(v15, v16, v17, v10, v14, v3);
              break;
          }

          goto LABEL_16;
        }
      }

      v29 = objc_autoreleasePoolPush();
      v30 = off_100298C40;
      if (off_100298C40)
      {
        v31 = "%s: device manager is null";
LABEL_28:
        [v30 WFLog:4 message:v31];
      }
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      v30 = off_100298C40;
      if (off_100298C40)
      {
        v31 = "%s: device managers array is empty";
        goto LABEL_28;
      }
    }

LABEL_29:
    objc_autoreleasePoolPop(v29);
LABEL_16:
    sub_1000084B8();

    CFRelease(v27);
    return;
  }

  objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:"%s: failed to get device managers"];
  }

  sub_1000084B8();

  objc_autoreleasePoolPop(v32);
}

void sub_100170DB4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager is NULL", "WiFiManagerGetKnownNetworks"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100170E20()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is NULL", "WiFiManagerArePrivacyRestrictionsForWiFiConnectionQualityDisabled"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100170E8C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null manager", "__WiFiManagerEventResetCoalescedUndispatchedEventData"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100170EF8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null number 6", "WiFiManagerEventSetRateLimit"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100170F58()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null number 5", "WiFiManagerEventSetRateLimit"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100170FB8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null number 4", "WiFiManagerEventSetRateLimit"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100171018()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null number 3", "WiFiManagerEventSetRateLimit"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100171078(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null clientDict", "WiFiManagerEventSetRateLimit"}];
  }

  objc_autoreleasePoolPop(v2);

  CFRelease(a1);
}

void sub_1001710F0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null eventKey", "WiFiManagerEventSetRateLimit"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017115C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null eventKey", "WiFiManagerEventGetRateLimit"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001711C8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager ref is null", "WiFiManagerGet3BarsSource"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100171234(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: empty usage record for ICCID %@", "WiFiManagerCopyHotspotDataUsage_block_invoke", a1}];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1001712A4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: failed to retrieve ICCID", "WiFiManagerCopyHotspotDataUsage_block_invoke"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100171310()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Null manager", "WiFiManagerIsPersonalHotspotModificationDisabled"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017137C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: Null appStateManager", "__WiFiManagerIsAppInForeground"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001713E8()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null manager", "WiFiManagerTraficEngrAppInfo"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100171454()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null manager", "WiFiManagerSetBatterySaveMode"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001714C0(const __CFArray *a1)
{
  if (sub_100160620(a1))
  {

    sub_100074AB8(a1, "WiFiManagerSetPerpetualWiFiScanSettings", 34141);
  }
}

void sub_100171514()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null manager", "__WiFiManagerGetLocaleCountryCode"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100171580()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: null manager", "WiFiManagerDetermineAndSetLocale"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001715EC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is NULL", "WiFiManagerGetMISStats"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100171658()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is NULL", "WiFiManagerResetMISStats"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001716C4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: Failed to import os_eligibility_get_domain_answer!", "WiFiManagerIsDomainEligible"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100171730()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: failed to create app state monitor", "__WiFiManagerStartMonitoringSessionBasedApplication"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017179C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: bundle id is null", "__WiFiManagerStartMonitoringSessionBasedApplication"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100171808(uint64_t a1)
{
  v2 = sub_10015BCD0(a1, *(a1 + 1752), 0);
  v3 = objc_autoreleasePoolPush();
  if (v2)
  {
    if (off_100298C40)
    {
      v5 = sub_10000A878(*(a1 + 1752));
      [sub_10000DAC0() WFLog:"__WiFiDeviceManagerForcedAssociationCallback" message:v5];
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    if (off_100298C40)
    {
      v6 = sub_10000A878(*(a1 + 1752));
      [sub_100011424() WFLog:"__WiFiDeviceManagerForcedAssociationCallback" message:v6];
    }

    objc_autoreleasePoolPop(v3);
    v4 = *(a1 + 1752);

    sub_10009FCF4(v4);
  }
}

void sub_1001718F4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is null", "__WiFiDeviceManagerForcedAssociationCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100171960()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: client is null", "__WiFiManagerAddNetworkScanCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001719CC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: request network is null", "__WiFiManagerAddNetworkScanCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100171A38()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is null", "__WiFiManagerAddNetworkScanCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100171AA4()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: missing user info dictionary", "__BKApplicationStateFromUserInfo"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100171B10()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager is null", "__WiFiManagerSessionBasedApplicationStateChange"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100171B7C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s, interfaceCName is zero length.", "__WiFiManagerCheckAirPortInterface"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100171BDC()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s Socket creation failed", "__WiFiManagerCheckAirPortInterface"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_100171C48(uint64_t a1)
{
  sub_1000740C8(a1, 1, 1, 0);
  v2 = *(a1 + 2296);
  sub_100011328();
  sub_100158DBC();
  if (sub_10007809C(a1))
  {
    sub_100158290(a1);
  }
}

void sub_100171E64(uint64_t a1, _BYTE *a2)
{
  if (sub_10015FB28(a1))
  {
    *a2 = 0;
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s WFMacRandomisation : Profiles Networks successfully checked for MDM or supervised.", "__WiFiManagerWillAssociateCallback"}];
    }

    objc_autoreleasePoolPop(v3);
  }
}

void sub_100171EF0()
{
  sub_10000D798();
  sub_100094FF0();
  v2 = sub_100072D44(v1);
  sub_10016350C(v2, v0);
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"%s: WFMacRandomisation :  Associating to network <%@> while in Buddy. Upgrading it to MigratedNetwork Status and disabling private Mac"];
  }

  objc_autoreleasePoolPop(v3);
  v4 = sub_100003924();
  if (sub_10007DC04(v4, v5, 5))
  {
    sub_1000084B8();
  }

  else
  {
    objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:"WFMacRandomisation : Unable to add new network (%@) to Private Mac network List"];
    }

    sub_1000084B8();

    objc_autoreleasePoolPop(v6);
  }
}

void sub_100172200()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: manager ref is null", "__WiFiManagerRecommendedNetworkAssociationCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017226C(void *a1)
{
  v6 = sub_100018E90(a1, @"WiFiMacRandomizationInternalUI", 1);
  sub_1000952C0();
  v8 = 110;
  v9 = &v6;
  v10 = 1;
  v11 = 0;
  v2 = a1[14];
  sub_1000083DC();
  CFSetApplyFunction(v3, v4, context);
  v5 = sub_10000D7B8();
  sub_100020170(v5);
  sub_10015724C(a1);
}

void sub_1001722E8()
{
  sub_100011520();
  sub_10001131C();
  Value = CFDictionaryGetValue(v2, @"SSID_STR");
  v4 = sub_10000D80C();
  v6 = CFDictionaryGetValue(v4, v5);
  v7 = CFDictionaryGetValue(v1, @"PRIVATE_MAC_ADDRESS_VALUE");
  v8 = sub_10000D7B8();
  sub_100020170(v8);
  v9 = *(v0 + 360);
  if (!v9)
  {
    goto LABEL_8;
  }

  Count = CFArrayGetCount(v9);
  if (Count < 1)
  {
    goto LABEL_8;
  }

  v11 = Count;
  v12 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v0 + 360), v12);
    v14 = sub_10000A540(ValueAtIndex, @"SSID_STR");
    if (v14)
    {
      if (Value && CFStringCompare(v14, Value, 0) == kCFCompareEqualTo)
      {
        break;
      }
    }

    if (v11 == ++v12)
    {
      goto LABEL_8;
    }
  }

  if (!sub_10000A540(ValueAtIndex, @"PRIVATE_MAC_ADDRESS"))
  {
    goto LABEL_8;
  }

  CFDictionaryGetTypeID();
  v15 = sub_1000952E4();
  if (v11 != CFGetTypeID(v15))
  {
    goto LABEL_8;
  }

  v16 = sub_10009502C();
  v18 = CFDictionaryGetValue(v16, v17);
  v19 = sub_10000A540(ValueAtIndex, @"PrivateMacFutureMacAddress");
  if (!v18)
  {
    goto LABEL_8;
  }

  if (v6 && (v20 = v19, v21 = sub_1000952F0(), CFNumberCompare(v21, v22, 0) == kCFCompareEqualTo) && v20 && v7 && (CFDataGetBytePtr(v20), CFDataGetBytePtr(v7), v23 = sub_100024B8C(), memcmp(v23, v24, 6uLL)))
  {
    v25 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"%s: WFMacRandomisation : WatchDog occurred. Preventing mac Address rotation. Will revert to Current Value. Current : <%@> Rotated : <%@>\n"];
    }

    objc_autoreleasePoolPop(v25);
    sub_100095184(v26, @"PrivateMacFutureMacAddress");
    sub_10000AD34(ValueAtIndex, @"ResetCaptiveProbe", kCFBooleanFalse);
    sub_10015724C(v0);
    sub_100011414();
    sub_10001091C();

    sub_100161270();
  }

  else
  {
LABEL_8:
    sub_10001091C();
  }
}

void sub_1001724E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10016557C(a1, a1, a2);
  sub_100074AB8(a2, "__WiFiManagerIPv4Callback", 10100);
  v6 = 0xAAAAAAAAAAAAAAAALL;
  v5 = 3;
  sub_100147640(a3, &v5);
  sub_1001473EC(&v5);
}

void sub_100172554()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: softErrorManager is NULL!", "__WiFiManagerSoftErrorManagerCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1001725C0()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: deviceManager is NULL!", "__WiFiManagerSoftErrorManagerCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_10017262C()
{
  v0 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: manager is NULL!", "__WiFiManagerSoftErrorManagerCallback"}];
  }

  objc_autoreleasePoolPop(v0);
}