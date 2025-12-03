@interface WRM_ProximityLinkEval
- (WRM_ProximityLinkEval)init;
- (id)filterDevices:(id)devices;
- (id)nameForNetworkType:(id)type;
- (id)submitMetrics;
- (id)submitMetrics:(id)metrics;
- (void)session:(id)session updatedFoundDevices:(id)devices;
- (void)updateWiFiRadioMetrics:(int)metrics signalQuality:(int)quality load:(int)load pointOFInterest:(int)interest;
@end

@implementation WRM_ProximityLinkEval

- (WRM_ProximityLinkEval)init
{
  v19.receiver = self;
  v19.super_class = WRM_ProximityLinkEval;
  v2 = [(WRM_ProximityLinkEval *)&v19 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.WirelessRadioManager.BT", 0);
    mLinkEvalManagerQueue = v2->mLinkEvalManagerQueue;
    v2->mLinkEvalManagerQueue = v3;

    v5 = +[WRM_BTBeaconController WRM_BTBeaconControllerSingleton];
    mBTBeaconController = v2->mBTBeaconController;
    v2->mBTBeaconController = v5;

    v7 = +[NSMutableDictionary dictionary];
    mRSSIDict = v2->mRSSIDict;
    v2->mRSSIDict = v7;

    v9 = +[NSMutableDictionary dictionary];
    mHotspotDict = v2->mHotspotDict;
    v2->mHotspotDict = v9;

    v11 = [[NSMutableSet alloc] initWithCapacity:2];
    mIPhoneIDSet = v2->mIPhoneIDSet;
    v2->mIPhoneIDSet = v11;

    objc_initWeak(&location, v2);
    v13 = v2->mBTBeaconController;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000A7A4C;
    v15[3] = &unk_100240288;
    objc_copyWeak(&v17, &location);
    v16 = v2;
    [(WRM_BTBeaconController *)v13 setClientCBDeviceHandler:v15];
    [WCM_Logging logLevel:24 message:@"Initialized ProximityLinkEval manager"];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (id)submitMetrics:(id)metrics
{
  metricsCopy = metrics;
  v5 = [(NSMutableDictionary *)self->mHotspotDict valueForKey:metricsCopy];
  if (!v5)
  {
    v5 = +[NSMutableDictionary dictionary];
  }

  v6 = [(NSMutableDictionary *)self->mRSSIDict valueForKey:metricsCopy];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 valueForKey:@"btRssi"];
    [v5 setObject:v8 forKey:@"btRssi"];
  }

  if (![v5 count])
  {
    [WCM_Logging logLevel:24 message:@"ProximityLinkEval:submitMetrics: Metrics not collected for deviceID %@", metricsCopy];
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000A7F44;
  v12[3] = &unk_1002402B0;
  v9 = v5;
  v13 = v9;
  selfCopy = self;
  [WRM_CAInterface sendCAEventLazy:@"com.apple.Telephony.wrmCompanionRecommendation" payloadBuilder:v12];
  [WCM_Logging logLevel:24 message:@"ProximityLinkEval:submitMetrics: Metrics submitted for deviceID %@", metricsCopy];
  v10 = v9;

  return v9;
}

- (id)submitMetrics
{
  anyObject = [(NSMutableSet *)self->mIPhoneIDSet anyObject];
  if (!anyObject)
  {
    [WCM_Logging logLevel:24 message:@"ProximityLinkEval:submitMetrics: Metrics not collected for any iPhone device %@", self->mIPhoneIDSet];
  }

  [WCM_Logging logLevel:24 message:@"ProximityLinkEval:submitMetrics: Calling submitMetrics for deviceID %@", anyObject];
  v4 = [(WRM_ProximityLinkEval *)self submitMetrics:anyObject];

  return v4;
}

- (id)filterDevices:(id)devices
{
  devicesCopy = devices;
  allValues = [(NSMutableDictionary *)self->mRSSIDict allValues];
  devicesCopy = [NSPredicate predicateWithFormat:@"(model contains[cd] %@)", devicesCopy];
  v7 = [allValues filteredArrayUsingPredicate:devicesCopy];

  allValues2 = [(NSMutableDictionary *)self->mHotspotDict allValues];
  devicesCopy2 = [NSPredicate predicateWithFormat:@"(model contains[cd] %@)", devicesCopy];
  v10 = [allValues2 filteredArrayUsingPredicate:devicesCopy2];

  v11 = [[NSMutableSet alloc] initWithCapacity:2];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [(NSMutableDictionary *)self->mRSSIDict allKeysForObject:*(*(&v29 + 1) + 8 * i)];
        [v11 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v14);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = v10;
  v19 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [(NSMutableDictionary *)self->mHotspotDict allKeysForObject:*(*(&v25 + 1) + 8 * j)];
        [v11 addObject:v23];
      }

      v20 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v20);
  }

  [WCM_Logging logLevel:24 message:@"ProximityLinkEval:filterDevices: For modelString: %@: deviceIDs: %@", devicesCopy, v11, v25];

  return v11;
}

- (id)nameForNetworkType:(id)type
{
  intValue = [type intValue];
  if (intValue > 8)
  {
    return @"INVALID";
  }

  else
  {
    return off_1002402F8[intValue];
  }
}

- (void)session:(id)session updatedFoundDevices:(id)devices
{
  devicesCopy = devices;
  [WCM_Logging logLevel:24 message:@"Found hotspots %@", devicesCopy];
  objc_initWeak(&location, self);
  mLinkEvalManagerQueue = self->mLinkEvalManagerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A87E0;
  block[3] = &unk_1002402D8;
  objc_copyWeak(&v10, &location);
  v9 = devicesCopy;
  v7 = devicesCopy;
  dispatch_async(mLinkEvalManagerQueue, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)updateWiFiRadioMetrics:(int)metrics signalQuality:(int)quality load:(int)load pointOFInterest:(int)interest
{
  self->mWiFiRSSI = metrics;
  self->mWiFiSNR = quality;
  self->mCCA = load;
  self->mPOI = interest;
}

@end