@interface WiFiHotspotInterface
- (BOOL)isScanning;
- (WiFiHotspotInterface)init;
- (id)copySortedHotspotDevicesByAutoPreferences;
- (id)getHotspotDeviceName:(id)name;
- (id)newHotspot:(id)hotspot error:(id *)error;
- (unsigned)isEqualHotspotDevices:(id)devices compareTo:(id)to;
- (unsigned)isEqualHotspotDevicesName:(id)name compareTo:(id)to;
- (unsigned)isHotspotDeviceSupportADHS:(id)s;
- (void)_stopBrowsingRemoveCache:(BOOL)cache;
- (void)registerHotspotInterfaceUpdateNetworkCallback:(id)callback withCallbackContext:(void *)context;
- (void)session:(id)session updatedFoundDevices:(id)devices;
- (void)startBrowsing;
- (void)updateNetworksWithHotspots:(id)hotspots;
@end

@implementation WiFiHotspotInterface

- (WiFiHotspotInterface)init
{
  v10.receiver = self;
  v10.super_class = WiFiHotspotInterface;
  v2 = [(WiFiHotspotInterface *)&v10 init];
  if (!v2)
  {
    v4 = 0;
LABEL_5:

    v2 = 0;
    goto LABEL_6;
  }

  v3 = objc_alloc_init(SFRemoteHotspotSession);
  v4 = v3;
  if (!v3)
  {
    sub_1001AE99C();
    goto LABEL_5;
  }

  [v3 setDelegate:v2];
  objc_storeStrong(&v2->_hotspotSession, v4);
  v5 = +[NSSet set];
  networks = v2->_networks;
  v2->_networks = v5;

  if (!v2->_networks)
  {
    goto LABEL_5;
  }

  v7 = dispatch_queue_create(0, 0);
  internalQueue = v2->_internalQueue;
  v2->_internalQueue = v7;

  if (!v2->_internalQueue)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v2;
}

- (void)updateNetworksWithHotspots:(id)hotspots
{
  hotspotsCopy = hotspots;
  v5 = +[NSMutableSet set];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = hotspotsCopy;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        signalStrength = [v11 signalStrength];
        integerValue = [signalStrength integerValue];

        if (integerValue)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  networks = [(WiFiHotspotInterface *)self networks];
  v15 = [v5 isEqualToSet:networks];

  if (v15)
  {
    v16 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"Instant HS scan finished-> No new networks found."];
    }
  }

  else
  {
    [(WiFiHotspotInterface *)self setNetworks:v5];
    v16 = objc_autoreleasePoolPush();
    v17 = off_100298C40;
    if (off_100298C40)
    {
      networks2 = [(WiFiHotspotInterface *)self networks];
      [v17 WFLog:3 message:{"networks found %@\n", networks2}];
    }
  }

  objc_autoreleasePoolPop(v16);
  hotspotUpdateNetworkcallback = [(WiFiHotspotInterface *)self hotspotUpdateNetworkcallback];

  if (hotspotUpdateNetworkcallback)
  {
    hotspotUpdateNetworkcallback2 = [(WiFiHotspotInterface *)self hotspotUpdateNetworkcallback];
    (hotspotUpdateNetworkcallback2)[2](hotspotUpdateNetworkcallback2, 1, [(WiFiHotspotInterface *)self callbackContext]);
  }
}

- (id)copySortedHotspotDevicesByAutoPreferences
{
  v3 = [[NSSortDescriptor alloc] initWithKey:@"self" ascending:0 comparator:&stru_1002631A8];
  networks = [(WiFiHotspotInterface *)self networks];
  v9 = v3;
  v5 = [NSArray arrayWithObjects:&v9 count:1];
  v6 = [networks sortedArrayUsingDescriptors:v5];

  v7 = [v6 copy];
  return v7;
}

- (id)newHotspot:(id)hotspot error:(id *)error
{
  hotspotCopy = hotspot;
  if (hotspotCopy)
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = sub_100002BD0;
    v40 = sub_1000067C4;
    v41 = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = sub_100002BD0;
    v34 = sub_1000067C4;
    v35 = 0;
    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = dispatch_semaphore_create(0);
    hotspotSession = [(WiFiHotspotInterface *)self hotspotSession];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10011793C;
    v26[3] = &unk_1002631D0;
    v28 = &v30;
    v29 = &v36;
    v10 = v8;
    v27 = v10;
    [hotspotSession enableRemoteHotspotForDevice:hotspotCopy withCompletionHandler:v26];

    v11 = dispatch_time(0, 60000000000);
    if (dispatch_semaphore_wait(v10, v11))
    {
      v12 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Enable Remote Hotspot Timeout", "-[WiFiHotspotInterface newHotspot:error:]"}];
      }

      objc_autoreleasePoolPop(v12);
      v13 = [NSError alloc];
      v42 = NSLocalizedDescriptionKey;
      v43 = @"Enable Remote Hotspot Timeout";
      v14 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v15 = [v13 initWithDomain:NSPOSIXErrorDomain code:-6722 userInfo:v14];
      v16 = v31[5];
      v31[5] = v15;
    }

    if (error && (v17 = v31[5]) != 0)
    {
      *error = [v17 copy];
    }

    else
    {
      v20 = v37[5];
      if (v20)
      {
        name = [v20 name];
        [v7 setObject:name forKeyedSubscript:@"ssid"];

        password = [v37[5] password];
        [v7 setObject:password forKeyedSubscript:@"password"];

        channel = [v37[5] channel];
        [v7 setObject:channel forKeyedSubscript:@"channel"];
      }

      v24 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"Started Hotspot"];
      }

      objc_autoreleasePoolPop(v24);
    }

    v19 = [v7 copy];

    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(&v36, 8);
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"Cannot enable hotspot, missing SFRemoteHotspotDevice"}];
    }

    objc_autoreleasePoolPop(v18);
    v19 = 0;
  }

  return v19;
}

- (BOOL)isScanning
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -86;
  internalQueue = self->_internalQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100117A80;
  v5[3] = &unk_10025EB70;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)startBrowsing
{
  if (![(WiFiHotspotInterface *)self isScanning])
  {
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"Starting hotspot browsing"];
    }

    objc_autoreleasePoolPop(v3);
    internalQueue = self->_internalQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100117B48;
    block[3] = &unk_10025E9B8;
    block[4] = self;
    dispatch_sync(internalQueue, block);
  }
}

- (void)_stopBrowsingRemoveCache:(BOOL)cache
{
  internalQueue = self->_internalQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100117C20;
  v4[3] = &unk_1002631F8;
  v4[4] = self;
  cacheCopy = cache;
  dispatch_sync(internalQueue, v4);
}

- (id)getHotspotDeviceName:(id)name
{
  nameCopy = name;
  deviceName = [nameCopy deviceName];
  v5 = [deviceName length];

  deviceName2 = [nameCopy deviceName];

  if (v5 >= 0x21)
  {
    v7 = [deviceName2 substringToIndex:30];

    deviceName2 = v7;
  }

  return deviceName2;
}

- (unsigned)isEqualHotspotDevices:(id)devices compareTo:(id)to
{
  devicesCopy = devices;
  toCopy = to;
  deviceName = [devicesCopy deviceName];
  deviceName2 = [toCopy deviceName];
  if ([deviceName isEqualToString:deviceName2])
  {
    deviceIdentifier = [devicesCopy deviceIdentifier];
    deviceIdentifier2 = [toCopy deviceIdentifier];
    v11 = [deviceIdentifier isEqualToString:deviceIdentifier2];

    v12 = v11 & 1;
  }

  else
  {

    v12 = 0;
  }

  return v12;
}

- (unsigned)isEqualHotspotDevicesName:(id)name compareTo:(id)to
{
  nameCopy = name;
  toCopy = to;
  deviceName = [nameCopy deviceName];
  v8 = [deviceName length];

  if (v8 >= 0x21)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = off_100298C40;
    if (off_100298C40)
    {
      deviceName2 = [nameCopy deviceName];
      redactedForWiFi = [deviceName2 redactedForWiFi];
      [v10 WFLog:3 message:{"%s: Hotspot device name (%@) exceeds APPLE80211_MAX_SSID_LEN (%d), comparing up to max SSID length only", "-[WiFiHotspotInterface isEqualHotspotDevicesName:compareTo:]", redactedForWiFi, 32}];
    }

    objc_autoreleasePoolPop(v9);
    deviceName3 = [nameCopy deviceName];
    v14 = [deviceName3 substringToIndex:31];
    v15 = [v14 isEqualToString:toCopy];

    if (v15)
    {
      goto LABEL_5;
    }

LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  deviceName4 = [nameCopy deviceName];
  v18 = [deviceName4 isEqualToString:toCopy];

  if ((v18 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_5:
  v16 = 1;
LABEL_8:

  return v16;
}

- (unsigned)isHotspotDeviceSupportADHS:(id)s
{
  sCopy = s;
  v4 = [NSArray arrayWithObjects:@"iPad3, 4", @"iPad3, 5", @"iPad3, 6", @"iPad4, 1", @"iPad4, 2", @"iPad4, 3", @"iPad4, 4", @"iPad4, 5", @"iPad4, 6", @"iPad4, 7", @"iPad4, 8", @"iPad4, 9", @"iPad5, 1", @"iPad5, 2", @"iPad5, 3", @"iPad5, 4", @"iPad6, 11", @"iPad6, 11", @"iPad6, 12", @"iPad6, 12", @"iPad6, 3", @"iPad6, 4", @"iPad6, 7", @"iPad6, 8", @"iPad7, 1", @"iPad7, 10", @"iPad7, 11", @"iPad7, 12", @"iPad7, 2", @"iPad7, 3", @"iPad7, 4", @"iPad7, 5", @"iPad7, 6", @"iPad7, 7", @"iPad7, 8", @"iPad7, 9", @"iPad11, 6", @"iPad11, 7", @"iPad12, 1", @"iPad12, 2", @"iPhone5, 1", @"iPhone5, 2", @"iPhone5, 3", @"iPhone5, 4", @"iPhone6, 1", @"iPhone6, 2", @"iPhone7, 1", @"iPhone7, 2", @"iPhone8, 1", @"iPhone8, 1", @"iPhone8, 2", @"iPhone8, 2", @"iPhone8, 4", @"iPhone8, 4", @"iPhone9, 1", @"iPhone9, 2", @"iPhone9, 3", @"iPhone9, 4", 0];
  model = [sCopy model];
  if ([v4 containsObject:model])
  {

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  osSupportsAutoHotspot = [sCopy osSupportsAutoHotspot];

  if ((osSupportsAutoHotspot & 1) == 0)
  {
    goto LABEL_5;
  }

  v7 = 1;
LABEL_6:

  return v7;
}

- (void)registerHotspotInterfaceUpdateNetworkCallback:(id)callback withCallbackContext:(void *)context
{
  callbackCopy = callback;
  v6 = objc_autoreleasePoolPush();
  v7 = off_100298C40;
  if (off_100298C40)
  {
    v8 = objc_retainBlock(callbackCopy);
    [v7 WFLog:3 message:{"%s: callback %@, context %@", "-[WiFiHotspotInterface registerHotspotInterfaceUpdateNetworkCallback:withCallbackContext:]", v8, context}];
  }

  objc_autoreleasePoolPop(v6);
  [(WiFiHotspotInterface *)self setHotspotUpdateNetworkcallback:callbackCopy];
  [(WiFiHotspotInterface *)self setCallbackContext:context];
}

- (void)session:(id)session updatedFoundDevices:(id)devices
{
  sessionCopy = session;
  devicesCopy = devices;
  v7 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"Found hotspots %@", devicesCopy}];
  }

  objc_autoreleasePoolPop(v7);
  v8 = +[NSMutableSet set];
  [v8 addObjectsFromArray:devicesCopy];
  [(WiFiHotspotInterface *)self updateNetworksWithHotspots:v8];
}

@end