@interface WiFiScanResultsPreparer
+ (BOOL)wifiNetworkShouldBeProminentlyDisplayed:(__WiFiNetwork *)a3;
- (WiFiScanResultsPreparer)initWithManager:(__WiFiDeviceManager *)a3 availabilityEngine:(id)a4 scanResults:(id)a5 disableProminentFiltering:(BOOL)a6 blacklistedSSIDs:(id)a7;
- (id)topRecommendableNetwork;
- (void)_prepareScanResults:(id)a3;
- (void)dealloc;
@end

@implementation WiFiScanResultsPreparer

- (WiFiScanResultsPreparer)initWithManager:(__WiFiDeviceManager *)a3 availabilityEngine:(id)a4 scanResults:(id)a5 disableProminentFiltering:(BOOL)a6 blacklistedSSIDs:(id)a7
{
  v15.receiver = self;
  v15.super_class = WiFiScanResultsPreparer;
  v12 = [(WiFiScanResultsPreparer *)&v15 init];
  v13 = v12;
  if (!a3 || !v12)
  {
    if (!v12)
    {
      return v13;
    }

LABEL_7:
    CFRelease(v13);
    return 0;
  }

  v12->_manager = a3;
  CFRetain(a3);
  if (!a4)
  {
    goto LABEL_7;
  }

  v13->_engine = a4;
  v13->_disableProminentFiltering = a6;
  v13->_blacklistedSSIDs = a7;
  [(WiFiScanResultsPreparer *)v13 _prepareScanResults:a5];
  return v13;
}

- (void)dealloc
{
  manager = self->_manager;
  if (manager)
  {
    CFRelease(manager);
    self->_manager = 0;
  }

  v4.receiver = self;
  v4.super_class = WiFiScanResultsPreparer;
  [(WiFiScanResultsPreparer *)&v4 dealloc];
}

- (void)_prepareScanResults:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = os_transaction_create();
  if (a3 && [a3 count])
  {
    v64 = v5;
    v7 = [a3 mutableCopy];
    v8 = objc_autoreleasePoolPush();
    v9 = off_100298C40;
    if (off_100298C40)
    {
      v57 = [v7 count];
      v59 = [(WiFiScanResultsPreparer *)self disableProminentFiltering];
      v55 = "[WiFiScanResultsPreparer _prepareScanResults:]";
      [v9 WFLog:3 message:"%s: Find recommendations for %lu networks (disableProminentFiltering: %d)"];
    }

    objc_autoreleasePoolPop(v8);
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v18 = sub_10000DBA0(v10, v11, v12, v13, v14, v15, v16, v17, v55, v57, v59, v61, v6, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, key, v88, v90, v92, v94, v96, v98, v100, v102, *(&v102 + 1), v103, *(&v103 + 1), v104, *(&v104 + 1), v105, *(&v105 + 1), 0);
    if (v18)
    {
      v26 = v18;
      v27 = *v107;
      keya = @"WiFiNetworkAttributeIsKnown";
      v28 = kCFBooleanTrue;
      v93 = @"WiFiNetworkAttributeIsPublic";
      v29 = @"WiFiNetworkAttributeIsLowQuality";
      v30 = @"WiFiNetworkAttributeIsPotentiallyMoving";
      v101 = @"WiFiNetworkAttributeIsTCPGood";
      v97 = @"WiFiNetworkAttributeIsPotentiallyCaptive";
      v99 = @"WiFiNetworkAttributeIsSuspicious";
      v71 = @"WiFiNetworkAttributePopularityScore";
      v73 = @"WiFiNetworkAttributeIsNotRecommendable";
      v69 = @"WiFiNetworkAttributeLowPopularity";
      v67 = @"WiFiNetworkAttributeHighPopularity";
      v81 = @"WiFiNetworkAttributeProminentDisplay";
      v83 = @"WiFiNetworkAttributeSource";
      v77 = v7;
      v79 = self;
      v75 = *v107;
      do
      {
        v31 = 0;
        v85 = v26;
        do
        {
          if (*v107 != v27)
          {
            objc_enumerationMutation(v7);
          }

          v89 = v31;
          v32 = *(*(&v106 + 1) + 8 * v31);
          if (v32)
          {
            if (sub_1000BFB18([(WiFiScanResultsPreparer *)self manager], v32))
            {
              sub_10000AD34(v32, keya, v28);
            }

            v18 = sub_10001CBF8(v32);
            if (!v18)
            {
              v18 = [[WiFiScanObserverNetwork alloc] initWithWiFiNetworkRef:v32];
              if (v18)
              {
                v91 = v18;
                v33 = [(WiFiAvailabilityEngine *)[(WiFiScanResultsPreparer *)self engine] findRecommendationForScannedNetwork:v18];
                if (v33)
                {
                  v34 = v33;
                  v35 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    [v34 scannedNetwork];
                    [v34 network];
                    [sub_100024F84() WFLog:? message:?];
                  }

                  objc_autoreleasePoolPop(v35);
                  if ([v34 unwantedNetworkName])
                  {
                    v36 = objc_autoreleasePoolPush();
                    v37 = off_100298C40;
                    if (off_100298C40)
                    {
                      v56 = "[WiFiScanResultsPreparer _prepareScanResults:]";
                      v58 = [v91 SSID];
                      [v37 WFLog:3 message:"%s: %@ contains unwantedNetworkName"];
                    }

                    objc_autoreleasePoolPop(v36);
                  }

                  if ([objc_msgSend(v34 "network")])
                  {
                    v104 = 0u;
                    v105 = 0u;
                    v102 = 0u;
                    v103 = 0u;
                    v38 = [objc_msgSend(v34 "network")];
                    v39 = [v38 countByEnumeratingWithState:&v102 objects:v110 count:16];
                    if (v39)
                    {
                      v40 = v39;
                      v41 = *v103;
                      v95 = v32;
LABEL_25:
                      v42 = 0;
                      while (2)
                      {
                        if (*v103 != v41)
                        {
                          objc_enumerationMutation(v38);
                        }

                        switch([*(*(&v102 + 1) + 8 * v42) intValue])
                        {
                          case 1u:
                            v43 = v32;
                            v44 = v97;
                            goto LABEL_39;
                          case 2u:
                            v43 = v32;
                            v44 = v99;
                            goto LABEL_39;
                          case 4u:
                            v43 = v32;
                            v44 = v101;
                            goto LABEL_39;
                          case 5u:
                            v43 = v32;
                            v44 = v30;
                            goto LABEL_39;
                          case 6u:
                            if ([v34 unwantedNetworkName])
                            {
                              v45 = v28;
                              v46 = v34;
                              v47 = v30;
                              v48 = v29;
                              v49 = objc_autoreleasePoolPush();
                              v50 = off_100298C40;
                              if (off_100298C40)
                              {
                                v56 = "[WiFiScanResultsPreparer _prepareScanResults:]";
                                v58 = [v91 SSID];
                                [v50 WFLog:3 message:{"%s: %@ contains unwantedNetworkName, discarding public flag"}];
                              }

                              objc_autoreleasePoolPop(v49);
                              v29 = v48;
                              v30 = v47;
                              v34 = v46;
                              v28 = v45;
                              v32 = v95;
                            }

                            else
                            {
                              v43 = v32;
                              v44 = v93;
LABEL_39:
                              sub_10000AD34(v43, v44, v28);
                            }

LABEL_40:
                            if (v40 != ++v42)
                            {
                              continue;
                            }

                            v40 = [v38 countByEnumeratingWithState:&v102 objects:v110 count:16];
                            if (!v40)
                            {
                              goto LABEL_42;
                            }

                            goto LABEL_25;
                          case 7u:
                            v43 = v32;
                            v44 = v29;
                            goto LABEL_39;
                          default:
                            goto LABEL_40;
                        }
                      }
                    }
                  }

LABEL_42:
                  self = v79;
                  if ([objc_msgSend(v34 "network")] == 1 || objc_msgSend(objc_msgSend(v34, "network"), "type") == 2 || objc_msgSend(objc_msgSend(v34, "network"), "type") == 3)
                  {
                    v51 = objc_autoreleasePoolPush();
                    if (off_100298C40)
                    {
                      [v91 SSID];
                      [objc_msgSend(v34 "network")];
                      [sub_100024F84() WFLog:? message:?];
                    }

                    objc_autoreleasePoolPop(v51);
                    sub_10000AD34(v32, v73, v28);
                  }

                  v52 = [objc_msgSend(v34 "network")];
                  if (v52)
                  {
                    v53 = v52;
                    sub_10000C614(v32, v71, [v52 score]);
                    if ([v53 score] <= 0x3E7)
                    {
                      v54 = v69;
                    }

                    else
                    {
                      v54 = v67;
                    }

                    sub_10000AD34(v32, v54, v28);
                  }

                  sub_10000C614(v32, v83, [objc_msgSend(v34 "network")]);
                  v27 = v75;
                  v7 = v77;
LABEL_54:
                  if ([(WiFiScanResultsPreparer *)self disableProminentFiltering]|| sub_100034EEC(v32, v83) == 3 || sub_100034EEC(v32, v83) == 1 || [WiFiScanResultsPreparer wifiNetworkShouldBeProminentlyDisplayed:v32])
                  {
                    sub_10000AD34(v32, v81, v28);
                    [(WiFiScanResultsPreparer *)self setProminentScanResultsCount:[(WiFiScanResultsPreparer *)self prominentScanResultsCount]+ 1];
                  }
                }

                else if (!sub_10001CBF8(v32))
                {
                  goto LABEL_54;
                }

                v26 = v85;
              }
            }
          }

          v31 = v89 + 1;
        }

        while ((v89 + 1) != v26);
        v18 = sub_10000DBA0(v18, v19, v20, v21, v22, v23, v24, v25, v56, v58, v60, v62, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, keya, v89, v91, v93, v95, v97, v99, v101, v102, *(&v102 + 1), v103, *(&v103 + 1), v104, *(&v104 + 1), v105, *(&v105 + 1), v106);
        v26 = v18;
      }

      while (v18);
    }

    [(WiFiScanResultsPreparer *)self setPreparedScanResults:v7];
    v6 = v63;
    v5 = v65;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
  }

  objc_autoreleasePoolPop(v5);
}

+ (BOOL)wifiNetworkShouldBeProminentlyDisplayed:(__WiFiNetwork *)a3
{
  if (sub_10000A540(a3, @"WiFiNetworkAttributeIsKnown") || sub_10000A540(a3, @"WiFiNetworkAttributeIsPublic"))
  {
    goto LABEL_9;
  }

  if (sub_10000A540(a3, @"WiFiNetworkAttributeLowPopularity") || sub_10000A540(a3, @"WiFiNetworkAttributeIsSuspicious"))
  {
    goto LABEL_12;
  }

  if (sub_10000A540(a3, @"WiFiNetworkAttributeHighQuality"))
  {
LABEL_9:
    LOBYTE(v4) = 1;
    return v4;
  }

  if (sub_1001776A8(a3) == 1)
  {
LABEL_12:
    LOBYTE(v4) = 0;
    return v4;
  }

  LODWORD(v4) = sub_10009F418(a3);
  if (v4)
  {
    if ((v4 & 1) == 0)
    {
      goto LABEL_9;
    }

    v4 = sub_10000A540(a3, @"WiFiNetworkAttributeLowPopularity");
    if (v4)
    {
      goto LABEL_9;
    }
  }

  return v4;
}

- (id)topRecommendableNetwork
{
  if (![(WiFiScanResultsPreparer *)self prominentScanResultsCount])
  {
    return 0;
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v3 = [(WiFiScanResultsPreparer *)self preparedScanResults];
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v91 objects:v96 count:16];
  if (!v4)
  {
    goto LABEL_68;
  }

  v5 = v4;
  v73 = 0;
  v75 = self;
  v78 = 0;
  v80 = 0;
  v6 = *v92;
  do
  {
    v7 = 0;
    do
    {
      if (*v92 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v91 + 1) + 8 * v7);
      if (v8)
      {
        v9 = sub_1000083F0();
        if (sub_1000333E8(v9, v10) >= -75 && !sub_1001772D4(v8))
        {
          if (sub_10000A540(v8, @"WiFiNetworkAttributeProminentDisplay"))
          {
            if (!sub_10000A540(v8, @"WiFiNetworkAttributeIsKnown") && !sub_10000A540(v8, @"WiFiNetworkAttributeIsNotRecommendable"))
            {
              v11 = sub_100034EEC(v8, @"WiFiNetworkAttributeSource");
              if (v11)
              {
                v12 = v11;
                v13 = sub_10000A878(v8);
                if (v13 && (v14 = v13, [(NSArray *)[(WiFiScanResultsPreparer *)v75 blacklistedSSIDs] containsObject:v13]))
                {
                  v15 = objc_autoreleasePoolPush();
                  if (off_100298C40)
                  {
                    v62 = "[WiFiScanResultsPreparer topRecommendableNetwork]";
                    v64 = v14;
                    [off_100298C40 WFLog:3 message:"%s: skipping %@ as it's blacklisted from recommendation"];
                  }

                  objc_autoreleasePoolPop(v15);
                }

                else if (v12 == 3)
                {
                  if (!v80 || sub_100034EEC(v8, @"WiFiNetworkAttributeSource") != 3 || (v16 = sub_100034EEC(v80, @"RSSI"), v17 = sub_1000083F0(), v16 <= sub_100034EEC(v17, v18)))
                  {
                    v19 = 3;
LABEL_26:
                    v78 = v19;
LABEL_27:
                    v80 = v8;
                  }
                }

                else if (v78 == 3)
                {
                  v78 = 3;
                }

                else if (v12 == 1)
                {
                  if (!v80 || sub_100034EEC(v8, @"WiFiNetworkAttributeSource") != 1 || (v20 = sub_100034EEC(v80, @"RSSI"), v21 = sub_1000083F0(), v20 <= sub_100034EEC(v21, v22)))
                  {
                    v19 = 1;
                    goto LABEL_26;
                  }
                }

                else if (v78 == 1)
                {
                  v78 = 1;
                }

                else if (!sub_10009F418(v8))
                {
                  v23 = sub_100034EEC(v8, @"WiFiNetworkAttributePopularityScore");
                  if (v23 >= v73)
                  {
                    v24 = v23;
                    if (!v80 || !v73 || v23 != v73)
                    {
                      goto LABEL_47;
                    }

                    v70 = v23;
                    if (sub_10009F418(v80) || sub_10009F418(v8) || (v68 = sub_100034EEC(v80, @"RSSI"), v25 = sub_1000083F0(), v68 <= sub_100034EEC(v25, v26)))
                    {
                      v27 = sub_10009F418(v80);
                      v24 = v70;
                      if (v27 || (v28 = sub_10009F418(v8), v24 = v70, !v28))
                      {
LABEL_47:
                        v78 = v12;
                        v73 = v24;
                        goto LABEL_27;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v7 = v7 + 1;
    }

    while (v5 != v7);
    v29 = [(NSArray *)v3 countByEnumeratingWithState:&v91 objects:v96 count:16];
    v5 = v29;
  }

  while (v29);
  if (!v80)
  {
LABEL_68:
    v56 = objc_autoreleasePoolPush();
    v57 = off_100298C40;
    if (!off_100298C40)
    {
LABEL_71:
      objc_autoreleasePoolPop(v56);
      return 0;
    }

    v58 = "%s: no prominent network found";
LABEL_70:
    [v57 WFLog:3 message:{v58, "-[WiFiScanResultsPreparer topRecommendableNetwork]", v64, v66}];
    goto LABEL_71;
  }

  if (sub_100034EEC(v80, @"WiFiNetworkAttributeSource") != 2)
  {
    goto LABEL_55;
  }

  if (sub_10009F418(v80))
  {
    v56 = objc_autoreleasePoolPush();
    v61 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_71;
    }

    v64 = sub_10000A878(v80);
    v66 = v73;
    v58 = "%s: prominent network (%@) is not open (score %ld)";
    goto LABEL_89;
  }

  if (!v73)
  {
    v56 = objc_autoreleasePoolPush();
    v61 = off_100298C40;
    if (!off_100298C40)
    {
      goto LABEL_71;
    }

    v64 = sub_10000A878(v80);
    v66 = 0;
    v58 = "%s: prominent network (%@) has no popularity score (score %ld)";
LABEL_89:
    v57 = v61;
    goto LABEL_70;
  }

LABEL_55:
  v30 = objc_autoreleasePoolPush();
  v31 = off_100298C40;
  if (off_100298C40)
  {
    v64 = sub_10000A878(v80);
    v66 = v73;
    v62 = "[WiFiScanResultsPreparer topRecommendableNetwork]";
    [v31 WFLog:3 message:"%s: found prominent open network (%@) with highest popularity score %ld"];
  }

  objc_autoreleasePoolPop(v30);
  v32 = [[WiFiScanObserverNetwork alloc] initWithWiFiNetworkRef:v80];
  if (!v32)
  {
    return 0;
  }

  v33 = v32;
  v34 = [(WiFiAvailabilityEngine *)[(WiFiScanResultsPreparer *)v75 engine] findRecommendationsForScannedNetwork:v32];
  v35 = [v34 count];
  if (v35 < 2)
  {
    v47 = [v34 anyObject];
    if (v47)
    {
      goto LABEL_76;
    }
  }

  else
  {
    v43 = sub_1000F8F14(v35, v36, v37, v38, v39, v40, v41, v42, v62, v64, v66, v68, v70, @"WiFiNetworkAttributePopularityScore", v73, v75, @"WiFiNetworkAttributeSource", v78, v80, @"WiFiNetworkAttributeIsNotRecommendable", 0, 0, 0, 0, 0, 0, 0, 0, v91, *(&v91 + 1), v92, *(&v92 + 1), v93, *(&v93 + 1), v94, *(&v94 + 1), v95);
    if (!v43)
    {
LABEL_80:
      v59 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: found matches (%lu) in availability engine but SSIDs didn't match with %@", "-[WiFiScanResultsPreparer topRecommendableNetwork]", objc_msgSend(v34, "count"), -[WiFiScanObserverNetwork SSID](v33, "SSID")}];
      }

      goto LABEL_82;
    }

    v44 = v43;
    v45 = *v85;
LABEL_61:
    v46 = 0;
    while (1)
    {
      if (*v85 != v45)
      {
        objc_enumerationMutation(v34);
      }

      v47 = *(v84 + 8 * v46);
      v48 = [objc_msgSend(v47 "SSID")];
      if (v48)
      {
        break;
      }

      if (v44 == ++v46)
      {
        v44 = sub_1000F8F14(v48, v49, v50, v51, v52, v53, v54, v55, v63, v65, v67, v69, v71, v72, v74, v76, v77, v79, v81, key, v83, v84, v85, v86, v87, v88, v89, v90, v91, *(&v91 + 1), v92, *(&v92 + 1), v93, *(&v93 + 1), v94, *(&v94 + 1), v95);
        if (v44)
        {
          goto LABEL_61;
        }

        goto LABEL_80;
      }
    }

    if (!v47)
    {
      goto LABEL_80;
    }

LABEL_76:
    if ([objc_msgSend(v47 "network")] == 2 && objc_msgSend(v47, "unwantedNetworkName"))
    {
      v59 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: recommendation (%@) found but network name (%@) is considered unwanted", "-[WiFiScanResultsPreparer topRecommendableNetwork]", v47, objc_msgSend(v47, "SSID")}];
      }

LABEL_82:
      objc_autoreleasePoolPop(v59);
      v47 = 0;
    }
  }

  return v47;
}

@end