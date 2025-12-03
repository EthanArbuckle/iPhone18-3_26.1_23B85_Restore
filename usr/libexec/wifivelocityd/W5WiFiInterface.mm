@interface W5WiFiInterface
- (BOOL)isSnifferSupported;
- (BOOL)isUsingCustomDNSSettings;
- (BOOL)isUsingCustomProxySetting;
- (BOOL)setChannel:(id)channel;
- (BOOL)setSTBCEnabled:(BOOL)enabled;
- (W5WiFiInterface)initWithCoreWiFiInterface:(id)interface;
- (id)__dnsSetupConfig;
- (id)__dnsStateConfig;
- (id)__ipv4SetupConfig;
- (id)__ipv4StateConfig;
- (id)__ipv6SetupConfig;
- (id)__ipv6StateConfig;
- (id)__proxiesSetupConfig;
- (id)cachedPreferredNetworksListWithUUID:(id)d;
- (id)channel;
- (id)currentNetwork;
- (id)currentPreferredNetwork;
- (id)lastAssociatedSSID;
- (id)lastAssociatedSSIDString;
- (id)linkQualityUpdates;
- (id)performScanOnChannels:(id)channels translate:(BOOL)translate;
- (id)performScanWithParams:(id)params error:(id)error;
- (id)preferredNetworksList;
- (id)scanCache:(BOOL)cache;
- (id)supportedChannels;
- (int64_t)ipv4ConfigMethod;
- (int64_t)ipv6ConfigMethod;
- (int64_t)security;
- (void)__addlinkQualityUpdate:(id)update;
- (void)__clearLinkQualityUpdates;
- (void)__startEventMonitoring;
- (void)__stopEventMonitoring;
- (void)__updateAWDLRealTimeMode:(BOOL)mode;
- (void)__updateLastAssociatedSSID;
- (void)clearCachedPreferredNetworksListWithUUID:(id)d;
- (void)dealloc;
- (void)setUpdatedWiFiInterfaceCallback:(id)callback;
- (void)startEventMonitoring;
- (void)stopEventMonitoring;
@end

@implementation W5WiFiInterface

- (W5WiFiInterface)initWithCoreWiFiInterface:(id)interface
{
  v15.receiver = self;
  v15.super_class = W5WiFiInterface;
  v4 = [(W5WiFiInterface *)&v15 init];
  v5 = v4;
  if (!interface)
  {
    goto LABEL_15;
  }

  if (!v4)
  {
    goto LABEL_15;
  }

  interfaceCopy = interface;
  v5->_corewifi = interfaceCopy;
  v7 = [-[CWFInterface interfaceName](interfaceCopy "interfaceName")];
  v5->_interfaceName = v7;
  if (!v7)
  {
    goto LABEL_15;
  }

  if (Apple80211Open())
  {
    goto LABEL_15;
  }

  v5->_a11Ref = 0;
  interfaceName = v5->_interfaceName;
  if (Apple80211BindToInterface())
  {
    goto LABEL_15;
  }

  v9 = [NSString stringWithFormat:@"com.apple.wifivelocityd.wifi-%@", v5->_interfaceName];
  v10 = dispatch_queue_create([(__CFString *)v9 UTF8String], 0);
  v5->_queue = v10;
  if (!v10)
  {
    goto LABEL_15;
  }

  dispatch_queue_set_specific(v10, &v5->_queue, 1, 0);
  v11 = dispatch_queue_create([-[__CFString stringByAppendingString:](v9 stringByAppendingString:{@".event", "UTF8String"}], 0);
  v5->_eventQueue = v11;
  if (!v11 || (v5->_linkQualityUpdates = objc_alloc_init(NSMutableArray), v5->_cachedPreferredNetworksListUUIDMap = objc_alloc_init(NSMutableDictionary), v5->_lastAssociatedSSID = [-[CWFInterface SSID](v5->_corewifi "SSID")], v5->_lastAssociatedSSIDString = objc_msgSend(-[CWFInterface networkName](v5->_corewifi, "networkName"), "copy"), v12 = SCDynamicStoreCreate(kCFAllocatorDefault, v9, 0, 0), (v5->_storeRef = v12) == 0))
  {
LABEL_15:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      uTF8String = [(NSString *)v5->_interfaceName UTF8String];
      *buf = 136446210;
      v17 = uTF8String;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to initialize Wi-Fi interface (%{public}s)", buf, 0xCu);
    }

    return 0;
  }

  return v5;
}

- (void)setUpdatedWiFiInterfaceCallback:(id)callback
{
  if (dispatch_get_specific(&self->_queue))
  {

    self->_updatedWiFiCallback = [callback copy];
  }

  else
  {
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10005379C;
    v6[3] = &unk_1000E1C70;
    v6[4] = self;
    v6[5] = callback;
    dispatch_sync(queue, v6);
  }
}

- (void)dealloc
{
  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
  }

  eventQueue = self->_eventQueue;
  if (eventQueue)
  {
    dispatch_release(eventQueue);
  }

  storeRef = self->_storeRef;
  if (storeRef)
  {
    CFRelease(storeRef);
  }

  if (self->_a11Ref)
  {
    Apple80211Close();
  }

  v6.receiver = self;
  v6.super_class = W5WiFiInterface;
  [(W5WiFiInterface *)&v6 dealloc];
}

- (id)preferredNetworksList
{
  v2 = [(CWFInterface *)self->_corewifi knownNetworkProfilesWithProperties:[NSSet setWithArray:&off_1000F40F8]];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (!v5)
        {
          v5 = +[NSMutableArray array];
        }

        [v5 addObject:sub_1000539E8(v8)];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return [v5 copy];
}

- (void)__startEventMonitoring
{
  corewifi = self->_corewifi;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100053E64;
  v11[3] = &unk_1000E2B58;
  v11[4] = self;
  [(CWFInterface *)corewifi setEventHandler:v11 eventID:[CWFEventID eventIDWithType:0 interfaceName:0]];
  [(CWFInterface *)self->_corewifi startMonitoringEvent:[CWFEventID error:"eventIDWithType:interfaceName:" eventIDWithType:0 interfaceName:?], 0];
  [(CWFInterface *)self->_corewifi startMonitoringEvent:[CWFEventID error:"eventIDWithType:interfaceName:" eventIDWithType:0 interfaceName:?], 0];
  [(CWFInterface *)self->_corewifi startMonitoringEvent:[CWFEventID error:"eventIDWithType:interfaceName:" eventIDWithType:0 interfaceName:?], 0];
  [(CWFInterface *)self->_corewifi startMonitoringEvent:[CWFEventID error:"eventIDWithType:interfaceName:" eventIDWithType:0 interfaceName:?], 0];
  [(CWFInterface *)self->_corewifi startMonitoringEvent:[CWFEventID error:"eventIDWithType:interfaceName:" eventIDWithType:0 interfaceName:?], 0];
  [(CWFInterface *)self->_corewifi startMonitoringEvent:[CWFEventID error:"eventIDWithType:interfaceName:" eventIDWithType:0 interfaceName:?], 0];
  [(CWFInterface *)self->_corewifi startMonitoringEvent:[CWFEventID error:"eventIDWithType:interfaceName:" eventIDWithType:0 interfaceName:?], 0];
  [(CWFInterface *)self->_corewifi startMonitoringEvent:[CWFEventID error:"eventIDWithType:interfaceName:" eventIDWithType:0 interfaceName:?], 0];
  [(CWFInterface *)self->_corewifi startMonitoringEvent:[CWFEventID error:"eventIDWithType:interfaceName:" eventIDWithType:0 interfaceName:?], 0];
  [(CWFInterface *)self->_corewifi startMonitoringEvent:[CWFEventID error:"eventIDWithType:interfaceName:" eventIDWithType:0 interfaceName:?], 0];
  [(CWFInterface *)self->_corewifi startMonitoringEvent:[CWFEventID error:"eventIDWithType:interfaceName:" eventIDWithType:0 interfaceName:?], 0];
  [(CWFInterface *)self->_corewifi startMonitoringEvent:[CWFEventID error:"eventIDWithType:interfaceName:" eventIDWithType:0 interfaceName:?], 0];
  [(CWFInterface *)self->_corewifi startMonitoringEvent:[CWFEventID error:"eventIDWithType:interfaceName:" eventIDWithType:0 interfaceName:?], 0];
  [(CWFInterface *)self->_corewifi startMonitoringEvent:[CWFEventID error:"eventIDWithType:interfaceName:" eventIDWithType:0 interfaceName:?], 0];
  a11Ref = self->_a11Ref;
  eventQueue = self->_eventQueue;
  Apple80211EventMonitoringInit2();
  v6 = self->_a11Ref;
  Apple80211StartMonitoringEvent();
  v7 = self->_a11Ref;
  Apple80211StartMonitoringEvent();
  v8 = self->_a11Ref;
  Apple80211StartMonitoringEvent();
  v9 = self->_a11Ref;
  Apple80211StartMonitoringEvent();
  v10 = self->_a11Ref;
  Apple80211StartMonitoringEvent();
}

- (void)startEventMonitoring
{
  eventQueue = self->_eventQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000545E4;
  block[3] = &unk_1000E1CE8;
  block[4] = self;
  dispatch_async(eventQueue, block);
}

- (void)__stopEventMonitoring
{
  [(CWFInterface *)self->_corewifi stopMonitoringAllEvents];
  a11Ref = self->_a11Ref;
  Apple80211StopMonitoringEvent();
  v4 = self->_a11Ref;
  Apple80211StopMonitoringEvent();
  v5 = self->_a11Ref;
  Apple80211StopMonitoringEvent();
  v6 = self->_a11Ref;
  Apple80211StopMonitoringEvent();
  v7 = self->_a11Ref;

  _Apple80211EventMonitoringHalt(v7);
}

- (void)stopEventMonitoring
{
  eventQueue = self->_eventQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100054724;
  block[3] = &unk_1000E1CE8;
  block[4] = self;
  dispatch_async(eventQueue, block);
}

- (void)__updateAWDLRealTimeMode:(BOOL)mode
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000547FC;
  v4[3] = &unk_1000E2B80;
  v4[4] = self;
  modeCopy = mode;
  dispatch_async(queue, v4);
}

- (void)__updateLastAssociatedSSID
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000548B0;
  block[3] = &unk_1000E1CE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)__clearLinkQualityUpdates
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000549A8;
  block[3] = &unk_1000E1CE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)__addlinkQualityUpdate:(id)update
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100054A64;
  v4[3] = &unk_1000E1C98;
  v4[4] = self;
  v4[5] = update;
  dispatch_async(queue, v4);
}

- (id)linkQualityUpdates
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_100054BC0;
  v10 = sub_100054BD0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100054BDC;
  v5[3] = &unk_1000E19E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)supportedChannels
{
  v2 = [(CWFInterface *)self->_corewifi supportedChannelsWithCountryCode:0];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (!v5)
        {
          v5 = +[NSMutableArray array];
        }

        [v5 addObject:sub_100054D60(v8)];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return [v5 copy];
}

- (id)lastAssociatedSSID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_100054BC0;
  v10 = sub_100054BD0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100054EC4;
  v5[3] = &unk_1000E19E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)lastAssociatedSSIDString
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_100054BC0;
  v10 = sub_100054BD0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100055008;
  v5[3] = &unk_1000E19E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)channel
{
  channel = [(CWFInterface *)self->_corewifi channel];

  return sub_100054D60(channel);
}

- (id)performScanOnChannels:(id)channels translate:(BOOL)translate
{
  translateCopy = translate;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [channels countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v29;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(channels);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        if (!v8)
        {
          v8 = +[NSMutableArray array];
        }

        v12 = objc_alloc_init(CWFChannel);
        [v12 setChannel:{objc_msgSend(v11, "channel")}];
        [v12 setFlags:{objc_msgSend(v11, "flags")}];
        [v8 addObject:v12];
      }

      v7 = [channels countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v13 = objc_alloc_init(CWFScanParameters);
  [v13 setIncludeHiddenNetworks:1];
  [v13 setMergeScanResults:0];
  [v13 setChannels:v8];
  [v13 setIncludeProperties:{+[NSSet setWithArray:](NSSet, "setWithArray:", &off_1000F4110)}];
  v14 = [(CWFInterface *)self->_corewifi performScanWithParameters:v13 error:0];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (!v15)
  {
    v17 = 0;
    return [v17 copy];
  }

  v16 = v15;
  v17 = 0;
  v18 = *v25;
  do
  {
    v19 = 0;
    do
    {
      if (*v25 != v18)
      {
        objc_enumerationMutation(v14);
      }

      v20 = *(*(&v24 + 1) + 8 * v19);
      if (v17)
      {
        if (!translateCopy)
        {
          goto LABEL_20;
        }

LABEL_19:
        v20 = sub_10005531C(v20);
        goto LABEL_20;
      }

      v17 = +[NSMutableArray array];
      if (translateCopy)
      {
        goto LABEL_19;
      }

LABEL_20:
      [v17 addObject:v20];
      v19 = v19 + 1;
    }

    while (v16 != v19);
    v21 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
    v16 = v21;
  }

  while (v21);
  return [v17 copy];
}

- (id)performScanWithParams:(id)params error:(id)error
{
  errorCopy = error;
  v4 = [(CWFInterface *)self->_corewifi performScanWithParameters:params error:&errorCopy];
  if (errorCopy)
  {
    v12 = sub_100098A04();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315906;
      v20 = "[W5WiFiInterface performScanWithParams:error:]";
      v21 = 2080;
      v22 = "W5WiFiInterface.m";
      v23 = 1024;
      v24 = 1067;
      v25 = 2112;
      v26 = errorCopy;
      _os_log_send_and_compose_impl();
    }

    return 0;
  }

  else
  {
    v5 = v4;
    v6 = +[NSMutableArray array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v5);
          }

          [v6 addObject:sub_10005531C(*(*(&v13 + 1) + 8 * i))];
        }

        v8 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v8);
    }
  }

  return v6;
}

- (BOOL)setChannel:(id)channel
{
  v5 = objc_alloc_init(CWFChannel);
  [v5 setChannel:{objc_msgSend(channel, "channel")}];
  [v5 setFlags:{objc_msgSend(channel, "flags")}];
  v7 = 0;
  [(CWFInterface *)self->_corewifi setChannel:v5 error:&v7];
  return v7 == 0;
}

- (id)scanCache:(BOOL)cache
{
  cacheCopy = cache;
  v5 = objc_alloc_init(CWFScanParameters);
  [v5 setCacheOnly:1];
  [v5 setIncludeHiddenNetworks:1];
  [v5 setMergeScanResults:0];
  [v5 setIncludeProperties:{+[NSSet setWithArray:](NSSet, "setWithArray:", &off_1000F4128)}];
  v6 = [(CWFInterface *)self->_corewifi performScanWithParameters:v5 error:0];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v7)
  {
    v9 = 0;
    return [v9 copy];
  }

  v8 = v7;
  v9 = 0;
  v10 = *v16;
  do
  {
    v11 = 0;
    do
    {
      if (*v16 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v15 + 1) + 8 * v11);
      if (v9)
      {
        if (!cacheCopy)
        {
          goto LABEL_9;
        }

LABEL_8:
        v12 = sub_10005531C(v12);
        goto LABEL_9;
      }

      v9 = +[NSMutableArray array];
      if (cacheCopy)
      {
        goto LABEL_8;
      }

LABEL_9:
      [v9 addObject:v12];
      v11 = v11 + 1;
    }

    while (v8 != v11);
    v13 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    v8 = v13;
  }

  while (v13);
  return [v9 copy];
}

- (int64_t)security
{
  corewifi = self->_corewifi;
  securityType = [(CWFInterface *)corewifi securityType];
  wEPSubtype = [(CWFInterface *)corewifi WEPSubtype];
  wAPISubtype = [(CWFInterface *)corewifi WAPISubtype];

  return sub_100055C38(securityType, wEPSubtype, wAPISubtype);
}

- (id)currentNetwork
{
  currentScanResult = [(CWFInterface *)self->_corewifi currentScanResult];

  return sub_10005531C(currentScanResult);
}

- (id)currentPreferredNetwork
{
  currentKnownNetworkProfile = [(CWFInterface *)self->_corewifi currentKnownNetworkProfile];

  return sub_1000539E8(currentKnownNetworkProfile);
}

- (id)cachedPreferredNetworksListWithUUID:(id)d
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_100054BC0;
  v11 = sub_100054BD0;
  v12 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100055E14;
  block[3] = &unk_1000E2B08;
  block[4] = d;
  block[5] = self;
  block[6] = &v7;
  dispatch_sync(queue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)clearCachedPreferredNetworksListWithUUID:(id)d
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100055F1C;
  v4[3] = &unk_1000E1C98;
  v4[4] = d;
  v4[5] = self;
  dispatch_async(queue, v4);
}

- (id)__ipv4StateConfig
{
  networkServiceID = [(CWFInterface *)self->_corewifi networkServiceID];
  if (!networkServiceID)
  {
    return 0;
  }

  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, networkServiceID, kSCEntNetIPv4);
  if (!NetworkServiceEntity)
  {
    return 0;
  }

  v5 = NetworkServiceEntity;
  v6 = SCDynamicStoreCopyValue(self->_storeRef, NetworkServiceEntity);
  if (v6)
  {
    v7 = v6;
    v8 = [v6 copy];
    CFRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v5);
  return v8;
}

- (id)__ipv6StateConfig
{
  networkServiceID = [(CWFInterface *)self->_corewifi networkServiceID];
  if (!networkServiceID)
  {
    return 0;
  }

  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, networkServiceID, kSCEntNetIPv6);
  if (!NetworkServiceEntity)
  {
    return 0;
  }

  v5 = NetworkServiceEntity;
  v6 = SCDynamicStoreCopyValue(self->_storeRef, NetworkServiceEntity);
  if (v6)
  {
    v7 = v6;
    v8 = [v6 copy];
    CFRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v5);
  return v8;
}

- (id)__ipv4SetupConfig
{
  networkServiceID = [(CWFInterface *)self->_corewifi networkServiceID];
  if (!networkServiceID)
  {
    return 0;
  }

  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainSetup, networkServiceID, kSCEntNetIPv4);
  if (!NetworkServiceEntity)
  {
    return 0;
  }

  v5 = NetworkServiceEntity;
  v6 = SCDynamicStoreCopyValue(self->_storeRef, NetworkServiceEntity);
  if (v6)
  {
    v7 = v6;
    v8 = [v6 copy];
    CFRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v5);
  return v8;
}

- (id)__ipv6SetupConfig
{
  networkServiceID = [(CWFInterface *)self->_corewifi networkServiceID];
  if (!networkServiceID)
  {
    return 0;
  }

  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainSetup, networkServiceID, kSCEntNetIPv6);
  if (!NetworkServiceEntity)
  {
    return 0;
  }

  v5 = NetworkServiceEntity;
  v6 = SCDynamicStoreCopyValue(self->_storeRef, NetworkServiceEntity);
  if (v6)
  {
    v7 = v6;
    v8 = [v6 copy];
    CFRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v5);
  return v8;
}

- (id)__dnsStateConfig
{
  networkServiceID = [(CWFInterface *)self->_corewifi networkServiceID];
  if (!networkServiceID)
  {
    return 0;
  }

  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, networkServiceID, kSCEntNetDNS);
  if (!NetworkServiceEntity)
  {
    return 0;
  }

  v5 = NetworkServiceEntity;
  v6 = SCDynamicStoreCopyValue(self->_storeRef, NetworkServiceEntity);
  if (v6)
  {
    v7 = v6;
    v8 = [v6 copy];
    CFRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v5);
  return v8;
}

- (id)__dnsSetupConfig
{
  networkServiceID = [(CWFInterface *)self->_corewifi networkServiceID];
  if (!networkServiceID)
  {
    return 0;
  }

  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainSetup, networkServiceID, kSCEntNetDNS);
  if (!NetworkServiceEntity)
  {
    return 0;
  }

  v5 = NetworkServiceEntity;
  v6 = SCDynamicStoreCopyValue(self->_storeRef, NetworkServiceEntity);
  if (v6)
  {
    v7 = v6;
    v8 = [v6 copy];
    CFRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v5);
  return v8;
}

- (id)__proxiesSetupConfig
{
  networkServiceID = [(CWFInterface *)self->_corewifi networkServiceID];
  if (!networkServiceID)
  {
    return 0;
  }

  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainSetup, networkServiceID, kSCEntNetProxies);
  if (!NetworkServiceEntity)
  {
    return 0;
  }

  v5 = NetworkServiceEntity;
  v6 = SCDynamicStoreCopyValue(self->_storeRef, NetworkServiceEntity);
  if (v6)
  {
    v7 = v6;
    v8 = [v6 copy];
    CFRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v5);
  return v8;
}

- (int64_t)ipv6ConfigMethod
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000564CC;
  v5[3] = &unk_1000E1D98;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)ipv4ConfigMethod
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000566A4;
  v5[3] = &unk_1000E1D98;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isUsingCustomDNSSettings
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000568CC;
  v5[3] = &unk_1000E1D98;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isUsingCustomProxySetting
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000569D4;
  v5[3] = &unk_1000E1D98;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isSnifferSupported
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  capabilities = [(CWFInterface *)self->_corewifi capabilities];
  v3 = [capabilities countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(capabilities);
        }

        if ([*(*(&v8 + 1) + 8 * v6) unsignedIntValue] == 11)
        {
          LOBYTE(v3) = 1;
          return v3;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v3 = [capabilities countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = v3;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

- (BOOL)setSTBCEnabled:(BOOL)enabled
{
  v19 = 0;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v4 = !enabled;
  v5 = [NSString stringWithFormat:@"stbc_disable=%d", !enabled];
  [-[CWFInterface interfaceName](self->_corewifi "interfaceName")];
  __strlcpy_chk();
  LODWORD(v34) = 157;
  bzero(v31, 0x3BDC0uLL);
  v30 = 0x1000000000001;
  v31[0] = 1;
  [(NSString *)v5 UTF8String];
  __strlcpy_chk();
  v32 = xmmword_1000B2A60;
  DWORD2(v34) = 245192;
  v35 = &v30;
  [(CWFInterface *)self->_corewifi setUserAutoJoinDisabled:1 error:&v19];
  v6 = sub_100098A04();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    userAutoJoinDisabled = [(CWFInterface *)self->_corewifi userAutoJoinDisabled];
    v20 = 136316162;
    v21 = "[W5WiFiInterface setSTBCEnabled:]";
    v22 = 2080;
    v23 = "W5WiFiInterface.m";
    v24 = 1024;
    v25 = 1645;
    v26 = 1024;
    v27 = userAutoJoinDisabled;
    v28 = 2114;
    v29 = v19;
    LODWORD(v18) = 44;
    v17 = &v20;
    _os_log_send_and_compose_impl();
  }

  if (v19)
  {
    v16 = sub_100098A04();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    v20 = 136315650;
    v21 = "[W5WiFiInterface setSTBCEnabled:]";
    v22 = 2080;
    v23 = "W5WiFiInterface.m";
    v24 = 1024;
    v25 = 1646;
    LODWORD(v18) = 28;
    v17 = &v20;
    goto LABEL_7;
  }

  a11Ref = self->_a11Ref;
  v9 = Apple80211RawSet();
  v10 = sub_100098A04();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (!v11)
    {
LABEL_8:
      v12 = 0;
      goto LABEL_12;
    }

    v20 = 136316162;
    v21 = "[W5WiFiInterface setSTBCEnabled:]";
    v22 = 2080;
    v23 = "W5WiFiInterface.m";
    v24 = 1024;
    v25 = 1654;
    v26 = 1024;
    v27 = v4;
    v28 = 1024;
    LODWORD(v29) = v9;
    LODWORD(v18) = 40;
    v17 = &v20;
LABEL_7:
    _os_log_send_and_compose_impl();
    goto LABEL_8;
  }

  if (v11)
  {
    v20 = 136315906;
    v21 = "[W5WiFiInterface setSTBCEnabled:]";
    v22 = 2080;
    v23 = "W5WiFiInterface.m";
    v24 = 1024;
    v25 = 1650;
    v26 = 1024;
    v27 = v4;
    LODWORD(v18) = 34;
    v17 = &v20;
    _os_log_send_and_compose_impl();
  }

  sub_1000984DC(@"disable_stbc=1", v4);
  v12 = 1;
LABEL_12:
  [(CWFInterface *)self->_corewifi setUserAutoJoinDisabled:0 error:&v19, v17, v18];
  v13 = sub_100098A04();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    userAutoJoinDisabled2 = [(CWFInterface *)self->_corewifi userAutoJoinDisabled];
    v20 = 136316162;
    v21 = "[W5WiFiInterface setSTBCEnabled:]";
    v22 = 2080;
    v23 = "W5WiFiInterface.m";
    v24 = 1024;
    v25 = 1660;
    v26 = 1024;
    v27 = userAutoJoinDisabled2;
    v28 = 2114;
    v29 = v19;
    _os_log_send_and_compose_impl();
  }

  return v12;
}

@end