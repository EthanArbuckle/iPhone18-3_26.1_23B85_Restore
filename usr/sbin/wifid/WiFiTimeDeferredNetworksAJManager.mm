@interface WiFiTimeDeferredNetworksAJManager
- (BOOL)canDeferNetwork:(__WiFiNetwork *)a3 withUsageRank:(unint64_t)a4 andMotionState:(unsigned __int16)a5;
- (BOOL)deferNetwork:(__WiFiNetwork *)a3;
- (WiFiTimeDeferredNetworksAJManager)initWithArgs:(__WiFiDeviceManager *)a3;
- (void)dealloc;
- (void)printDeferredNetworks;
- (void)setLinkDown;
- (void)setLinkUpForNetwork:(__WiFiNetwork *)a3;
- (void)setScanResultsWithAutoJoinSessionCompletion:(id)a3 complete:(BOOL)a4;
@end

@implementation WiFiTimeDeferredNetworksAJManager

- (WiFiTimeDeferredNetworksAJManager)initWithArgs:(__WiFiDeviceManager *)a3
{
  v5 = objc_autoreleasePoolPush();
  v10.receiver = self;
  v10.super_class = WiFiTimeDeferredNetworksAJManager;
  v6 = [(WiFiTimeDeferredNetworksAJManager *)&v10 init];
  if (!v6)
  {
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: self", "-[WiFiTimeDeferredNetworksAJManager initWithArgs:]"}];
    }

    goto LABEL_11;
  }

  if (!a3)
  {
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: delegate", "-[WiFiTimeDeferredNetworksAJManager initWithArgs:]"}];
    }

LABEL_11:
    objc_autoreleasePoolPop(v9);

    v6 = 0;
    goto LABEL_6;
  }

  v6->_networks = objc_alloc_init(NSMutableArray);
  v6->_cumulativeAutoJoinScanResults = objc_alloc_init(NSMutableArray);
  v6->_deviceManager = a3;
  v7 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:4 message:{"%s: initialized WiFiTimeDeferredNetworksAJManager", "-[WiFiTimeDeferredNetworksAJManager initWithArgs:]"}];
  }

  objc_autoreleasePoolPop(v7);
LABEL_6:
  objc_autoreleasePoolPop(v5);
  return v6;
}

- (void)dealloc
{
  v3 = objc_autoreleasePoolPush();
  [(NSMutableArray *)self->_networks removeAllObjects];

  [(NSMutableArray *)self->_cumulativeAutoJoinScanResults removeAllObjects];
  currentNetwork = self->_currentNetwork;
  if (currentNetwork)
  {
    CFRelease(currentNetwork);
    self->_currentNetwork = 0;
  }

  v5.receiver = self;
  v5.super_class = WiFiTimeDeferredNetworksAJManager;
  [(WiFiTimeDeferredNetworksAJManager *)&v5 dealloc];
  objc_autoreleasePoolPop(v3);
}

- (BOOL)canDeferNetwork:(__WiFiNetwork *)a3 withUsageRank:(unint64_t)a4 andMotionState:(unsigned __int16)a5
{
  v5 = a5;
  v8 = objc_autoreleasePoolPush();
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  if (!self->_deviceManager)
  {
    v27 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: manager object is NULL", "-[WiFiTimeDeferredNetworksAJManager canDeferNetwork:withUsageRank:andMotionState:]"}];
    }

    goto LABEL_56;
  }

  if (!a3)
  {
    v27 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: network object is NULL", "-[WiFiTimeDeferredNetworksAJManager canDeferNetwork:withUsageRank:andMotionState:]"}];
    }

    goto LABEL_56;
  }

  if (![(WiFiTimeDeferredNetworksAJManager *)self usageRankForDeferral])
  {
    v27 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: usageRankForDeferral is not correctly initialized", "-[WiFiTimeDeferredNetworksAJManager canDeferNetwork:withUsageRank:andMotionState:]"}];
    }

    goto LABEL_56;
  }

  [(WiFiTimeDeferredNetworksAJManager *)self deferIntervalSecs];
  if (v9 == 0.0)
  {
    v27 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: deferIntervalSecs is not correctly initialized", "-[WiFiTimeDeferredNetworksAJManager canDeferNetwork:withUsageRank:andMotionState:]"}];
    }

    goto LABEL_56;
  }

  if (![(WiFiTimeDeferredNetworksAJManager *)self numDaysSinceAssocOverrideDeferral])
  {
    v27 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: numDaysSinceAssocOverrideDeferral is not correctly initialized", "-[WiFiTimeDeferredNetworksAJManager canDeferNetwork:withUsageRank:andMotionState:]"}];
    }

LABEL_56:
    objc_autoreleasePoolPop(v27);
    goto LABEL_34;
  }

  v10 = sub_1000C3F40(self->_deviceManager, a3);
  if (v10)
  {
    if (sub_10017764C(a3))
    {
      v28 = 1;
    }

    else
    {
      v28 = [+[WiFiAnalyticsManager sharedWiFiAnalyticsManager](WiFiAnalyticsManager "sharedWiFiAnalyticsManager")];
    }

    if (sub_1001775F0(a3))
    {
      v11 = 1;
    }

    else
    {
      v11 = [+[WiFiAnalyticsManager sharedWiFiAnalyticsManager](WiFiAnalyticsManager "sharedWiFiAnalyticsManager")];
    }

    v12 = sub_1000C58A4(self->_deviceManager, a3);
    if (!v12)
    {
      goto LABEL_23;
    }

    v13 = sub_10001B368(v10);
    if (v13)
    {
      v14 = [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
      v15 = [+[WiFiXPCManager sharedXPCManager](WiFiXPCManager "sharedXPCManager")];
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    if ((v14 & 0xFFFFFFFFFFFFFFFDLL) == 1 || v15 == 1 || (v11 & 1) == 0 && ([(WiFiTimeDeferredNetworksAJManager *)self usageRankForDeferral]> a4 || (v28 & 1) == 0 && (v5 > 6 || ((1 << v5) & 0x58) == 0)))
    {
LABEL_33:
      CFRelease(v10);
      goto LABEL_34;
    }

    if (sub_10009E718(a3) || sub_10000D9C8(a3) || sub_10000AFE4(a3) || (v24 = sub_10000DC20(v10)) == 0 || ([+[NSDate timeIntervalSinceDate:"timeIntervalSinceDate:"])
    {
LABEL_23:
      *(v40 + 24) = 1;
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: not deferring %@ because it was recently joined", "-[WiFiTimeDeferredNetworksAJManager canDeferNetwork:withUsageRank:andMotionState:]", sub_10000A878(v10)}];
      }

      objc_autoreleasePoolPop(v26);
      if ((v40[3] & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0x7FFFFFFFFFFFFFFFLL;
    networks = self->_networks;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1001162E4;
    v30[3] = &unk_100263118;
    v30[7] = &v31;
    v30[8] = a3;
    v30[4] = self;
    v30[5] = &v35;
    v30[6] = &v39;
    [(NSMutableArray *)networks enumerateObjectsUsingBlock:v30];
    if (*(v40 + 24) == 1)
    {
      v17 = [(WiFiTimeDeferredNetworksAJManager *)self deferNetwork:a3];
      *(v40 + 24) = v17;
      if (v17 && v36[3] != 0.0)
      {
        v18 = objc_autoreleasePoolPush();
        v19 = off_100298C40;
        if (off_100298C40)
        {
          v20 = sub_10000A878(a3);
          [(WiFiTimeDeferredNetworksAJManager *)self deferIntervalSecs];
          [v19 WFLog:4 message:{"%s: time-deferring %@ (isMoving:%d isOmnipresent:%d usageRank:%lu isSuitableAfterTd:%d) from auto join for another %2.1f seconds", "-[WiFiTimeDeferredNetworksAJManager canDeferNetwork:withUsageRank:andMotionState:]", v20, v28, v11, a4, v12, v21 - v36[3]}];
        }

        objc_autoreleasePoolPop(v18);
      }
    }

    else if (v32[3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_networks removeObjectAtIndex:?];
      [(WiFiTimeDeferredNetworksAJManager *)self printDeferredNetworks];
    }

    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(&v35, 8);
    goto LABEL_33;
  }

LABEL_34:
  v22 = *(v40 + 24);
  _Block_object_dispose(&v39, 8);
  objc_autoreleasePoolPop(v8);
  return v22;
}

- (BOOL)deferNetwork:(__WiFiNetwork *)a3
{
  v5 = objc_autoreleasePoolPush();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  networks = self->_networks;
  v7 = [(NSMutableArray *)networks countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v18;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v18 != v10)
      {
        objc_enumerationMutation(networks);
      }

      v12 = *(*(&v17 + 1) + 8 * i);
      if ([v12 doesContain:a3])
      {
        [v12 setDeferredNetwork:a3];
        v9 = 1;
      }
    }

    v8 = [(NSMutableArray *)networks countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v8);
  if (v9)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
LABEL_12:
    v14 = objc_alloc_init(DeferredNetwork);
    if (v14)
    {
      v15 = v14;
      v13 = [(DeferredNetwork *)v14 setDeferredNetwork:a3];
      if (v13)
      {
        [(NSMutableArray *)self->_networks addObject:v15];
      }
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  objc_autoreleasePoolPop(v5);
  return v13;
}

- (void)setScanResultsWithAutoJoinSessionCompletion:(id)a3 complete:(BOOL)a4
{
  v4 = a4;
  v7 = objc_autoreleasePoolPush();
  if (a3)
  {
    if ([a3 count])
    {
      [(NSMutableArray *)self->_cumulativeAutoJoinScanResults addObjectsFromArray:a3];
      if (v4)
      {
        v19 = 0;
        v20 = &v19;
        v21 = 0x3052000000;
        v22 = sub_100002BC0;
        v23 = sub_1000067B8;
        v24 = objc_alloc_init(NSMutableString);
        v13 = 0;
        v14 = &v13;
        v15 = 0x3052000000;
        v16 = sub_100002BC0;
        v17 = sub_1000067B8;
        v18 = +[NSMutableIndexSet indexSet];
        networks = self->_networks;
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_1001167D0;
        v12[3] = &unk_100263140;
        v12[4] = self;
        v12[5] = &v13;
        v12[6] = &v19;
        [(NSMutableArray *)networks enumerateObjectsUsingBlock:v12];
        v9 = [v14[5] count];
        v10 = v20;
        if (v9 && v20[5])
        {
          v11 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: Removing networks not found in cumulative AJ scan from time-deferred list: %@", "-[WiFiTimeDeferredNetworksAJManager setScanResultsWithAutoJoinSessionCompletion:complete:]", v20[5]}];
          }

          objc_autoreleasePoolPop(v11);
          [(NSMutableArray *)self->_networks removeObjectsAtIndexes:v14[5]];
          [(WiFiTimeDeferredNetworksAJManager *)self printDeferredNetworks];
          v10 = v20;
        }

        [(NSMutableArray *)self->_cumulativeAutoJoinScanResults removeAllObjects];
        _Block_object_dispose(&v13, 8);
        _Block_object_dispose(&v19, 8);
      }
    }

    else
    {
      sub_1001AE834();
    }
  }

  else
  {
    sub_1001AE8A0();
  }

  objc_autoreleasePoolPop(v7);
}

- (void)setLinkUpForNetwork:(__WiFiNetwork *)a3
{
  v5 = objc_autoreleasePoolPush();
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  networks = self->_networks;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100116AB0;
  v8[3] = &unk_100260B60;
  v8[4] = &v9;
  v8[5] = a3;
  [(NSMutableArray *)networks enumerateObjectsUsingBlock:v8];
  if (v10[3] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_networks removeObjectAtIndex:?];
    [(WiFiTimeDeferredNetworksAJManager *)self printDeferredNetworks];
  }

  currentNetwork = self->_currentNetwork;
  if (currentNetwork)
  {
    CFRelease(currentNetwork);
    self->_currentNetwork = 0;
  }

  self->_currentNetwork = sub_10000C580(kCFAllocatorDefault, a3);
  _Block_object_dispose(&v9, 8);
  objc_autoreleasePoolPop(v5);
}

- (void)setLinkDown
{
  v3 = objc_autoreleasePoolPush();
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  networks = self->_networks;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100116C14;
  v6[3] = &unk_100260B88;
  v6[4] = self;
  v6[5] = &v7;
  [(NSMutableArray *)networks enumerateObjectsUsingBlock:v6];
  if (v8[3] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_networks removeObjectAtIndex:?];
    [(WiFiTimeDeferredNetworksAJManager *)self printDeferredNetworks];
  }

  currentNetwork = self->_currentNetwork;
  if (currentNetwork)
  {
    CFRelease(currentNetwork);
    self->_currentNetwork = 0;
  }

  _Block_object_dispose(&v7, 8);
  objc_autoreleasePoolPop(v3);
}

- (void)printDeferredNetworks
{
  v3 = objc_autoreleasePoolPush();
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = [(NSMutableArray *)self->_networks count];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = sub_100002BC0;
  v12 = sub_1000067B8;
  v13 = objc_alloc_init(NSMutableString);
  if (v15[3])
  {
    if (v9[5])
    {
      networks = self->_networks;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100116E84;
      v7[3] = &unk_100263168;
      v7[4] = &v8;
      v7[5] = &v14;
      [(NSMutableArray *)networks enumerateObjectsUsingBlock:v7];
      v5 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: time-deferred networks list: %@", "-[WiFiTimeDeferredNetworksAJManager printDeferredNetworks]", v9[5]}];
      }
    }

    else
    {
      v5 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:4 message:{"%s: logString alloc failed", "-[WiFiTimeDeferredNetworksAJManager printDeferredNetworks]"}];
      }
    }

    objc_autoreleasePoolPop(v5);
  }

  v6 = v9[5];
  if (v6)
  {
  }

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v14, 8);
  objc_autoreleasePoolPop(v3);
}

@end