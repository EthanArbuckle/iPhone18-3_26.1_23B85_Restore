@interface W5DiagnosticsManager
+ (BOOL)__isDoubleNATWithTracerouteOutput:(id)output;
+ (BOOL)__setNetworkServiceOrder:(id)order;
+ (id)__ambiguousSSIDs;
+ (id)__channelNumbersForWiFiChannels:(id)channels;
+ (id)__networkServiceOrder;
+ (id)__performDNSResolution:(id)resolution;
+ (void)__parsePingOutput:(id)output result:(id)result;
- (BOOL)__isDefaultCountryCode:(id)code;
- (BOOL)__isUsingCustomProxySettings:(id)settings;
- (BOOL)__performCurlWithAddress:(id)address;
- (BOOL)__performLoadViaNSURLSessionWithAddress:(id)address usingTimeout:(id)timeout andForceWiFiInterface:(BOOL)interface;
- (W5DiagnosticsManager)initWithStatusManager:(id)manager peerDiagnosticsManager:(id)diagnosticsManager;
- (id)__adjust5GHzWeights:(id)weights;
- (id)__applyChannelWeights:(id)weights supportedChannels:(id)channels;
- (id)__channelWeightsForChannel:(id)channel;
- (id)__channelWeightsForScanResults:(id)results supportedChannels:(id)channels rssiThreshold:(int64_t)threshold;
- (id)__defaultDiagnosticsTests;
- (id)__filteredChannelWeights:(id)weights channels:(id)channels;
- (id)__occupiedChannelsForScanResults:(id)results supportedChannels:(id)channels rssiThreshold:(int64_t)threshold ignoreChannel:(id)channel;
- (id)__only2GHzChannels:(id)channels;
- (id)__only2GHz_1_6_11_14_Channels:(id)channels;
- (id)__only5GHz20MHz40MHzChannels:(id)channels;
- (id)__only5GHz40MHzChannels:(id)channels;
- (id)__only5GHzChannels:(id)channels;
- (id)__only5GHzNonDFSChannels:(id)channels;
- (id)__orderedChannelWeights:(id)weights;
- (id)__overlappingChannelsForChannel:(id)channel supportedChannels:(id)channels;
- (id)__pendingRequestWithUUID:(id)d;
- (id)__performCFPingWithAddress:(id)address count:(int64_t)count timeout:(double)timeout trafficClass:(id)class networkServiceType:(id)type dataLength:(unint64_t)length;
- (id)__performPing6WithAddress:(id)address count:(int64_t)count wait:(double)wait trafficClass:(id)class interfaceName:(id)name dataLength:(unint64_t)length;
- (id)__performPingUsingIMFoundationWithAddress:(id)address timeout:(int64_t)timeout;
- (id)__performPingWithAddress:(id)address count:(int64_t)count timeout:(double)timeout wait:(double)wait interval:(double)interval trafficClass:(id)class interfaceName:(id)name dataLength:(unint64_t)self0;
- (id)__performTracerouteWithAddress:(id)address maxTTL:(int64_t)l waittime:(int64_t)waittime queries:(int64_t)queries;
- (id)__preferredNetworkWithNetworkName:(id)name configuration:(id)configuration;
- (id)__runDiagnosticsTest:(id)test;
- (id)__scanResultWithNetworkName:(id)name;
- (id)__testAWDLEnabledWithConfiguration:(id)configuration;
- (id)__testAWDLRealtimeWithConfiguration:(id)configuration;
- (id)__testAirPortBaseStationWithConfiguration:(id)configuration;
- (id)__testAmbiguousNetworkNameWithConfiguration:(id)configuration;
- (id)__testBTCoexWithConfiguration:(id)configuration;
- (id)__testCaptivePortalWithConfiguration:(id)configuration;
- (id)__testConcurrentWithConfiguration:(id)configuration;
- (id)__testConflictingCountryCodeWithConfiguration:(id)configuration;
- (id)__testConflictingPHYMode11acWithConfiguration:(id)configuration;
- (id)__testConflictingPHYMode11nWithConfiguration:(id)configuration;
- (id)__testConflictingSecurityTypePNLWithConfiguration:(id)configuration;
- (id)__testCongested2GHzWithConfiguration:(id)configuration;
- (id)__testCongested5GHzWithConfiguration:(id)configuration;
- (id)__testCongestedChannelUsingCCAWithConfiguration:(id)configuration;
- (id)__testCongestedChannelWithConfiguration:(id)configuration;
- (id)__testCurlApple;
- (id)__testCustomDNS;
- (id)__testCustomIPv4;
- (id)__testCustomIPv6;
- (id)__testCustomWebProxy;
- (id)__testDetectDoubleNAT;
- (id)__testDiscoverPeerTypes;
- (id)__testDownloadSpeedWithConfiguration:(id)configuration;
- (id)__testHT402GHzWithConfiguration:(id)configuration;
- (id)__testHiddenNetworkWithConfiguration:(id)configuration;
- (id)__testHighBTConnectedWithConfiguration:(id)configuration;
- (id)__testHighBTPairedWithConfiguration:(id)configuration;
- (id)__testIPv4Assigned;
- (id)__testIPv6Assigned;
- (id)__testLargePNLWithConfiguration:(id)configuration;
- (id)__testLeakyAP;
- (id)__testLegacyRates11bWithConfiguration:(id)configuration;
- (id)__testLegacySecurityWEPWithConfiguration:(id)configuration;
- (id)__testLegacySecurityWPAWithConfiguration:(id)configuration;
- (id)__testLongBeaconIntervalWithConfiguration:(id)configuration;
- (id)__testLongDTIMInterval;
- (id)__testNoSecurityWithConfiguration:(id)configuration;
- (id)__testPNLContainsHiddenWithConfiguration:(id)configuration;
- (id)__testPasspointWithConfiguration:(id)configuration;
- (id)__testPeerDiagnostics;
- (id)__testPeerTypes;
- (id)__testPing6AWDLWithConfiguration:(id)configuration;
- (id)__testPingLANUsingCFNetworkWithConfiguration:(id)configuration;
- (id)__testPingLANUsingIMFoundation;
- (id)__testPingLANWithConfiguration:(id)configuration;
- (id)__testPingWANUsingCFNetworkWithConfiguration:(id)configuration;
- (id)__testPingWANUsingIMFoundation;
- (id)__testPingWANWithConfiguration:(id)configuration;
- (id)__testPoorSignalWithConfiguration:(id)configuration;
- (id)__testReachApple;
- (id)__testReachabilityToPeersWithConfiguration:(id)configuration;
- (id)__testResolveDNS;
- (id)__testRetrieveApple;
- (id)__testRetrieveAppleForceWiFiWithConfiguration:(id)configuration;
- (id)__testUploadSpeedWithConfiguration:(id)configuration;
- (id)__testWiFiHiddenScanResultsWithConfiguration:(id)configuration;
- (id)__testWiFiIsPrimaryIPv4;
- (id)__testWiFiIsPrimaryIPv6;
- (id)__testWiFiLink;
- (id)__testWiFiNoScanResultsWithConfiguration:(id)configuration;
- (id)__testiOSPersonalHotspotWithConfiguration:(id)configuration;
- (id)diagnosticsHistory;
- (int64_t)__ipv4ConfigMethodForDescription:(id)description;
- (int64_t)__ipv6ConfigMethodForDescription:(id)description;
- (void)__nextRequest;
- (void)__purgeDiagnosticsHistory;
- (void)__resetNetworkServiceOrderFromFile;
- (void)__runRequest:(id)request reply:(id)reply;
- (void)__updateDiagnosticsHistoryWithResult:(id)result;
- (void)addRequest:(id)request;
- (void)cancelRequestWithUUID:(id)d reply:(id)reply;
- (void)dealloc;
- (void)resetNetworkServiceOrderForTeardown;
- (void)setCompletedTestCallback:(id)callback;
- (void)setPingCallback:(id)callback;
- (void)teardownAndNotify:(id)notify;
@end

@implementation W5DiagnosticsManager

- (W5DiagnosticsManager)initWithStatusManager:(id)manager peerDiagnosticsManager:(id)diagnosticsManager
{
  v14.receiver = self;
  v14.super_class = W5DiagnosticsManager;
  v6 = [(W5DiagnosticsManager *)&v14 init];
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = dispatch_queue_create("com.apple.wifivelocity.diagnostics", 0);
  *(v6 + 5) = v7;
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create("com.apple.wifivelocity.diagnostics.default-route", v8);
  *(v6 + 11) = v9;
  if (!v9)
  {
    goto LABEL_10;
  }

  dispatch_queue_set_specific(*(v6 + 5), v6 + 40, 1, 0);
  if (!manager)
  {
    goto LABEL_10;
  }

  *(v6 + 1) = manager;
  *(v6 + 2) = diagnosticsManager;
  v10 = objc_alloc_init(NSMutableArray);
  *(v6 + 6) = v10;
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = objc_alloc_init(NSMutableDictionary);
  *(v6 + 8) = v11;
  if (v11 && (v12 = objc_alloc_init(NSDateFormatter), (*(v6 + 14) = v12) != 0))
  {
    [v12 setDateFormat:@"HH:mm:ss.SSS"];
    [v6 __resetNetworkServiceOrderFromFile];
  }

  else
  {
LABEL_10:

    return 0;
  }

  return v6;
}

- (void)dealloc
{
  [(NSURLSession *)self->_urlSession invalidateAndCancel];

  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
  }

  wifiDefaultRouteQueue = self->_wifiDefaultRouteQueue;
  if (wifiDefaultRouteQueue)
  {
    dispatch_release(wifiDefaultRouteQueue);
  }

  v5.receiver = self;
  v5.super_class = W5DiagnosticsManager;
  [(W5DiagnosticsManager *)&v5 dealloc];
}

- (void)setCompletedTestCallback:(id)callback
{
  if (dispatch_get_specific(&self->_queue))
  {

    self->_completedTestCallback = [callback copy];
  }

  else
  {
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10003CD60;
    v6[3] = &unk_1000E1C70;
    v6[4] = self;
    v6[5] = callback;
    dispatch_sync(queue, v6);
  }
}

- (void)setPingCallback:(id)callback
{
  if (dispatch_get_specific(&self->_queue))
  {

    self->_pingCallback = [callback copy];
  }

  else
  {
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10003CE5C;
    v6[3] = &unk_1000E1C70;
    v6[4] = self;
    v6[5] = callback;
    dispatch_sync(queue, v6);
  }
}

- (void)addRequest:(id)request
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003CF28;
  v4[3] = &unk_1000E1C98;
  v4[4] = self;
  v4[5] = request;
  dispatch_async(queue, v4);
}

- (id)__pendingRequestWithUUID:(id)d
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  pendingRequests = self->_pendingRequests;
  v5 = [(NSMutableArray *)pendingRequests countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(pendingRequests);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([objc_msgSend(v9 "uuid")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)pendingRequests countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)cancelRequestWithUUID:(id)d reply:(id)reply
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003D0F8;
  block[3] = &unk_1000E1CC0;
  block[4] = self;
  block[5] = d;
  block[6] = reply;
  dispatch_async(queue, block);
}

- (void)teardownAndNotify:(id)notify
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003D3D4;
  v4[3] = &unk_1000E1C70;
  v4[4] = self;
  v4[5] = notify;
  dispatch_async(queue, v4);
}

- (id)diagnosticsHistory
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_10003D538;
  v10 = sub_10003D548;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003D554;
  v5[3] = &unk_1000E1D98;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)__resetNetworkServiceOrderFromFile
{
  v2 = [NSData dataWithContentsOfFile:@"/var/run/wifivelocity-tmp"];
  if ([(NSData *)v2 length])
  {
    v3 = [NSPropertyListSerialization propertyListWithData:v2 options:0 format:0 error:0];
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[wifivelocity] Restoring network service order from file", v5, 2u);
      }

      [W5DiagnosticsManager __setNetworkServiceOrder:v4];
    }

    [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:@"/var/run/wifivelocity-tmp", 0];
  }
}

- (void)resetNetworkServiceOrderForTeardown
{
  wifiDefaultRouteQueue = self->_wifiDefaultRouteQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003D700;
  block[3] = &unk_1000E1CE8;
  block[4] = self;
  dispatch_sync(wifiDefaultRouteQueue, block);
}

- (void)__nextRequest
{
  if (!self->_activeRequest)
  {
    if ([(NSMutableArray *)self->_pendingRequests count])
    {
      v3 = [-[NSMutableArray firstObject](self->_pendingRequests "firstObject")];
      self->_activeRequest = [-[NSMutableArray firstObject](self->_pendingRequests "firstObject")];
      [(NSMutableArray *)self->_pendingRequests removeObjectAtIndex:0];
      v6[0] = 0;
      v6[1] = v6;
      v6[2] = 0x3052000000;
      v6[3] = sub_10003D538;
      v6[4] = sub_10003D548;
      v4 = os_transaction_create();
      [+[W5ActivityManager sharedActivityManager](W5ActivityManager "sharedActivityManager")];
      v6[5] = v4;
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_10003D948;
      v5[3] = &unk_1000E2750;
      v5[4] = self;
      v5[5] = v3;
      v5[6] = v6;
      [(W5DiagnosticsManager *)self __runRequest:v3 reply:v5];
      _Block_object_dispose(v6, 8);
    }
  }
}

- (id)__defaultDiagnosticsTests
{
  v2 = +[NSMutableArray array];
  v3 = [+[NSFileManager defaultManager](NSFileManager isExecutableFileAtPath:"isExecutableFileAtPath:", @"/sbin/ping"];
  v4 = [+[NSFileManager defaultManager](NSFileManager isExecutableFileAtPath:"isExecutableFileAtPath:", @"/sbin/ping6"];
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = 3;
  }

  if (v3)
  {
    v6 = 4;
  }

  else
  {
    v6 = 6;
  }

  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 52, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 57, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 58, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", v5, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", v6, &off_1000F2130)}];
  if (v4)
  {
    [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 59, &off_1000F2130)}];
  }

  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 12, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 13, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 7, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 8, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 9, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 11, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 54, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 14, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 15, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 16, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 17, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 18, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 19, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 20, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 21, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 22, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 51, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 24, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 27, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 28, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 29, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 30, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 31, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 32, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 34, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 35, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 36, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 37, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 38, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 40, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 39, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 41, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 44, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 45, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 46, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 47, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 48, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 43, &off_1000F2130)}];
  [v2 addObject:{+[W5DiagnosticsTestRequest requestWithTestID:configuration:](W5DiagnosticsTestRequest, "requestWithTestID:configuration:", 42, &off_1000F2130)}];
  return v2;
}

- (void)__purgeDiagnosticsHistory
{
  +[NSDate timeIntervalSinceReferenceDate];
  v4 = v3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(NSMutableDictionary *)self->_diagnosticsHistory allKeys];
  v5 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v18 = *v24;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_diagnosticsHistory objectForKeyedSubscript:v8];
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        allKeys = [v9 allKeys];
        v11 = [allKeys countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v20;
          do
          {
            for (j = 0; j != v12; j = j + 1)
            {
              if (*v20 != v13)
              {
                objc_enumerationMutation(allKeys);
              }

              v15 = *(*(&v19 + 1) + 8 * j);
              [objc_msgSend(v9 objectForKeyedSubscript:{v15), "testCompleted"}];
              if (v4 - v16 > 86400.0)
              {
                [v9 setObject:0 forKeyedSubscript:v15];
              }
            }

            v12 = [allKeys countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v12);
        }

        if (![objc_msgSend(v9 "allKeys")])
        {
          [(NSMutableDictionary *)self->_diagnosticsHistory setObject:0 forKeyedSubscript:v8];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v6);
  }
}

- (void)__updateDiagnosticsHistoryWithResult:(id)result
{
  if (result && ([result didPass] & 1) == 0)
  {
    networkName = [(CWFInterface *)[(W5StatusManager *)self->_status corewifi] networkName];
    if ([result testID] == 52)
    {
      networkName = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] lastAssociatedSSIDString];
    }

    if (networkName)
    {
      v6 = [(NSMutableDictionary *)self->_diagnosticsHistory objectForKeyedSubscript:networkName];
      if (!v6)
      {
        v6 = +[NSMutableDictionary dictionary];
        [(NSMutableDictionary *)self->_diagnosticsHistory setObject:v6 forKeyedSubscript:networkName];
      }

      [v6 setObject:result forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", objc_msgSend(result, "testID"))}];
    }
  }

  [(W5DiagnosticsManager *)self __purgeDiagnosticsHistory];
}

- (void)__runRequest:(id)request reply:(id)reply
{
  testRequests = [request testRequests];
  if (!testRequests)
  {
    testRequests = [(W5DiagnosticsManager *)self __defaultDiagnosticsTests];
  }

  if (![(NSArray *)self->_wifiScanResults count])
  {

    self->_wifiScanResults = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] scanCache:1];
  }

  concurrentQueue = [(W5StatusManager *)self->_status concurrentQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003E478;
  v9[3] = &unk_1000E20B8;
  v9[4] = request;
  v9[5] = testRequests;
  v9[6] = self;
  v9[7] = reply;
  [(NSOperationQueue *)concurrentQueue addOperationWithBlock:v9];
}

- (id)__testDetectDoubleNAT
{
  v3 = objc_alloc_init(W5DiagnosticsTestResult);
  [v3 setTestID:8];
  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTestStarted:?];
  if ([(CWFInterface *)[(W5StatusManager *)self->_status corewifi] SSID])
  {
    if ([W5DiagnosticsManager __isDoubleNATWithTracerouteOutput:[(W5DiagnosticsManager *)self __performTracerouteWithAddress:@"captive.apple.com" maxTTL:2 waittime:1 queries:1]])
    {
      [v3 setResult:1];
    }

    else
    {
      [v3 setDidPass:1];
    }
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTestCompleted:?];
  return v3;
}

- (id)__testPingLANWithConfiguration:(id)configuration
{
  v5 = objc_alloc_init(W5DiagnosticsTestResult);
  integerValue = 1;
  [v5 setTestID:1];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestStarted:?];
  v7 = [configuration objectForKeyedSubscript:@"PingCount"];
  v8 = [configuration objectForKeyedSubscript:@"PingTimeout"];
  v9 = [configuration objectForKeyedSubscript:@"PingInterval"];
  v10 = [configuration objectForKeyedSubscript:@"PingWait"];
  unsignedIntegerValue = [configuration objectForKeyedSubscript:@"PingDataLength"];
  if (v7)
  {
    integerValue = [v7 integerValue];
  }

  if (v8)
  {
    [v8 doubleValue];
    v13 = v12;
    if (v9)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v13 = 2.0;
    if (v9)
    {
LABEL_5:
      [v9 doubleValue];
      v15 = v14;
      if (v10)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
    }
  }

  v15 = 0.1;
  if (v10)
  {
LABEL_6:
    [v10 doubleValue];
    v17 = v16;
    if (!unsignedIntegerValue)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_19:
  v17 = 2.0;
  if (unsignedIntegerValue)
  {
LABEL_7:
    unsignedIntegerValue = [unsignedIntegerValue unsignedIntegerValue];
  }

LABEL_8:
  v18 = [configuration objectForKeyedSubscript:@"PingTrafficClass"];
  if ([(CWFInterface *)[(W5StatusManager *)self->_status corewifi] SSID])
  {
    iPv4RouterAddress = [(CWFInterface *)[(W5StatusManager *)self->_status corewifi] IPv4RouterAddress];
    iPv6RouterAddress = [(CWFInterface *)[(W5StatusManager *)self->_status corewifi] IPv6RouterAddress];
    if (iPv4RouterAddress || (iPv4RouterAddress = iPv6RouterAddress) != 0)
    {
      v21 = [(W5DiagnosticsManager *)self __performPingWithAddress:iPv4RouterAddress count:integerValue timeout:v18 wait:[(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] interfaceName] interval:unsignedIntegerValue trafficClass:v13 interfaceName:v17 dataLength:v15];
      if (v21)
      {
        v22 = v21;
        if ([v21 count] >= 1)
        {
          [v22 packetLoss];
          if (v23 < 100.0)
          {
            [v5 setResult:1];
            [v5 setDidPass:1];
          }
        }

        v25 = @"PingResult";
        v26 = v22;
        [v5 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v26, &v25, 1)}];
      }
    }
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestCompleted:?];
  return v5;
}

- (id)__testPing6AWDLWithConfiguration:(id)configuration
{
  v5 = objc_alloc_init(W5DiagnosticsTestResult);
  [v5 setTestID:59];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestStarted:?];
  v6 = [configuration objectForKeyedSubscript:@"PingCount"];
  v7 = [configuration objectForKeyedSubscript:@"PingWait"];
  unsignedIntegerValue = [configuration objectForKeyedSubscript:@"PingDataLength"];
  if (v6)
  {
    integerValue = [v6 integerValue];
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_13:
    v11 = 2.0;
    if (!unsignedIntegerValue)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  integerValue = 1;
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_3:
  [v7 doubleValue];
  v11 = v10;
  if (unsignedIntegerValue)
  {
LABEL_4:
    unsignedIntegerValue = [unsignedIntegerValue unsignedIntegerValue];
  }

LABEL_5:
  v12 = [configuration objectForKeyedSubscript:@"PingTrafficClass"];
  if ([objc_msgSend(-[CWFInterface AWDL](-[W5StatusManager corewifi](self->_status "corewifi")])
  {
    v13 = [(W5DiagnosticsManager *)self __performPing6WithAddress:@"ff02::fb" count:integerValue wait:v12 trafficClass:[(W5WiFiInterface *)[(W5StatusManager *)self->_status awdl] interfaceName] interfaceName:unsignedIntegerValue dataLength:v11];
    if (v13)
    {
      v14 = v13;
      if ([v13 count] >= 1)
      {
        [v14 packetLoss];
        if (v15 < 100.0)
        {
          [v5 setResult:1];
          [v5 setDidPass:1];
        }
      }

      v17 = @"PingResult";
      v18 = v14;
      [v5 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v18, &v17, 1)}];
    }
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestCompleted:?];
  return v5;
}

- (id)__testPingWANWithConfiguration:(id)configuration
{
  v5 = objc_alloc_init(W5DiagnosticsTestResult);
  [v5 setTestID:4];
  +[NSDate timeIntervalSinceReferenceDate];
  v51 = v5;
  [v5 setTestStarted:?];
  v6 = [configuration objectForKeyedSubscript:@"PingCount"];
  v7 = [configuration objectForKeyedSubscript:@"PingTimeout"];
  v8 = [configuration objectForKeyedSubscript:@"PingInterval"];
  v9 = [configuration objectForKeyedSubscript:@"PingWait"];
  unsignedIntegerValue = [configuration objectForKeyedSubscript:@"PingDataLength"];
  v11 = [configuration objectForKeyedSubscript:@"PingWANUseAppleDNS"];
  v12 = [configuration objectForKeyedSubscript:@"PingDataLength"];
  v13 = [configuration objectForKeyedSubscript:@"IPAddress"];
  if (v6)
  {
    integerValue = [v6 integerValue];
    if (v7)
    {
LABEL_3:
      [v7 doubleValue];
      v15 = v14;
      goto LABEL_6;
    }
  }

  else
  {
    integerValue = 1;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v15 = 2.0;
LABEL_6:
  v16 = v51;
  if (v8)
  {
    [v8 doubleValue];
    v18 = v17;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v18 = 0.1;
    if (v9)
    {
LABEL_8:
      [v9 doubleValue];
      v20 = v19;
      if (!unsignedIntegerValue)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  v20 = 2.0;
  if (unsignedIntegerValue)
  {
LABEL_9:
    unsignedIntegerValue = [unsignedIntegerValue unsignedIntegerValue];
  }

LABEL_10:
  v21 = v13;
  if (v11)
  {
    v22 = [v11 BOOLValue] ^ 1;
    if (v12)
    {
LABEL_12:
      v23 = [v12 BOOLValue] ^ 1;
      goto LABEL_18;
    }
  }

  else
  {
    v22 = 1;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  v23 = 0;
LABEL_18:
  v24 = [configuration objectForKeyedSubscript:@"PingTrafficClass"];
  if ([(CWFInterface *)[(W5StatusManager *)self->_status corewifi] SSID])
  {
    v25 = +[NSMutableArray array];
    if (v22)
    {
      status = self->_status;
      if (v21)
      {
        v27 = [(W5DiagnosticsManager *)self __performPingWithAddress:v21 count:integerValue timeout:v24 wait:[(W5WiFiInterface *)[(W5StatusManager *)status wifi] interfaceName] interval:unsignedIntegerValue trafficClass:v15 interfaceName:v20 dataLength:v18];
        if (v27)
        {
          [v25 addObject:v27];
        }
      }

      else
      {
        dNSServerAddresses = [(CWFInterface *)[(W5StatusManager *)status corewifi] DNSServerAddresses];
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v37 = [dNSServerAddresses countByEnumeratingWithState:&v57 objects:v68 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v58;
          do
          {
            for (i = 0; i != v38; i = i + 1)
            {
              if (*v58 != v39)
              {
                objc_enumerationMutation(dNSServerAddresses);
              }

              v41 = [(W5DiagnosticsManager *)self __performPingWithAddress:*(*(&v57 + 1) + 8 * i) count:integerValue timeout:v24 wait:[(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] interfaceName] interval:unsignedIntegerValue trafficClass:v15 interfaceName:v20 dataLength:v18];
              if (v41)
              {
                v42 = v41;
                [v25 addObject:v41];
                [v42 packetLoss];
                if (((v43 >= 100.0) & v23) == 0)
                {
                  goto LABEL_46;
                }
              }

              else if (!v23)
              {
                goto LABEL_46;
              }
            }

            v38 = [dNSServerAddresses countByEnumeratingWithState:&v57 objects:v68 count:16];
          }

          while (v38);
        }
      }
    }

    else
    {
      v28 = sub_10009836C();
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v29 = [v28 countByEnumeratingWithState:&v61 objects:v69 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v62;
        do
        {
          for (j = 0; j != v30; j = j + 1)
          {
            if (*v62 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = [(W5DiagnosticsManager *)self __performPingWithAddress:*(*(&v61 + 1) + 8 * j) count:integerValue timeout:v24 wait:[(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] interfaceName] interval:unsignedIntegerValue trafficClass:v15 interfaceName:v20 dataLength:v18];
            if (v33)
            {
              v34 = v33;
              [v25 addObject:v33];
              [v34 packetLoss];
              if (((v35 >= 100.0) & v23) == 0)
              {
                goto LABEL_46;
              }
            }

            else if (!v23)
            {
              goto LABEL_46;
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v61 objects:v69 count:16];
        }

        while (v30);
      }
    }

LABEL_46:
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v44 = [v25 countByEnumeratingWithState:&v53 objects:v67 count:16];
    v16 = v51;
    if (v44)
    {
      v45 = v44;
      v46 = *v54;
      while (2)
      {
        for (k = 0; k != v45; k = k + 1)
        {
          if (*v54 != v46)
          {
            objc_enumerationMutation(v25);
          }

          v48 = *(*(&v53 + 1) + 8 * k);
          if ([v48 count] >= 1)
          {
            [v48 packetLoss];
            if (v49 < 100.0)
            {
              [v51 setDidPass:1];
              [v51 setResult:1];
              goto LABEL_57;
            }
          }
        }

        v45 = [v25 countByEnumeratingWithState:&v53 objects:v67 count:16];
        if (v45)
        {
          continue;
        }

        break;
      }
    }

LABEL_57:
    v65 = @"PingResults";
    v66 = [v25 copy];
    [v51 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v66, &v65, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v16 setTestCompleted:?];
  return v16;
}

- (id)__testPingLANUsingIMFoundation
{
  v3 = objc_alloc_init(W5DiagnosticsTestResult);
  [v3 setTestID:2];
  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTestStarted:?];
  if ([(CWFInterface *)[(W5StatusManager *)self->_status corewifi] SSID])
  {
    iPv4RouterAddress = [(CWFInterface *)[(W5StatusManager *)self->_status corewifi] IPv4RouterAddress];
    iPv6RouterAddress = [(CWFInterface *)[(W5StatusManager *)self->_status corewifi] IPv6RouterAddress];
    if (iPv4RouterAddress || (iPv4RouterAddress = iPv6RouterAddress) != 0)
    {
      v6 = [(W5DiagnosticsManager *)self __performPingUsingIMFoundationWithAddress:iPv4RouterAddress timeout:1];
      if (v6)
      {
        v7 = v6;
        if ([v6 count] >= 1)
        {
          [v7 packetLoss];
          if (v8 < 100.0)
          {
            [v3 setDidPass:1];
            [v3 setResult:1];
          }
        }

        v10 = @"PingResult";
        v11 = v7;
        [v3 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v11, &v10, 1)}];
      }
    }
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTestCompleted:?];
  return v3;
}

- (id)__testPingWANUsingIMFoundation
{
  v3 = objc_alloc_init(W5DiagnosticsTestResult);
  [v3 setTestID:5];
  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTestStarted:?];
  if ([(CWFInterface *)[(W5StatusManager *)self->_status corewifi] SSID])
  {
    v4 = +[NSMutableArray array];
    v5 = sub_10009836C();
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v37;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(W5DiagnosticsManager *)self __performPingUsingIMFoundationWithAddress:*(*(&v36 + 1) + 8 * v9) timeout:1];
        if (v10)
        {
          v11 = v10;
          [v4 addObject:v10];
          [v11 packetLoss];
          if (v12 < 100.0)
          {
            break;
          }
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    dNSServerAddresses = [(CWFInterface *)[(W5StatusManager *)self->_status corewifi] DNSServerAddresses];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v14 = [dNSServerAddresses countByEnumeratingWithState:&v32 objects:v43 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v33;
LABEL_13:
      v17 = 0;
      while (1)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(dNSServerAddresses);
        }

        v18 = [(W5DiagnosticsManager *)self __performPingUsingIMFoundationWithAddress:*(*(&v32 + 1) + 8 * v17) timeout:1];
        if (v18)
        {
          v19 = v18;
          [v4 addObject:v18];
          [v19 packetLoss];
          if (v20 < 100.0)
          {
            break;
          }
        }

        if (v15 == ++v17)
        {
          v15 = [dNSServerAddresses countByEnumeratingWithState:&v32 objects:v43 count:16];
          if (v15)
          {
            goto LABEL_13;
          }

          break;
        }
      }
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v21 = [v4 countByEnumeratingWithState:&v28 objects:v42 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v29;
      while (2)
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v29 != v23)
          {
            objc_enumerationMutation(v4);
          }

          v25 = *(*(&v28 + 1) + 8 * i);
          if ([v25 count] >= 1)
          {
            [v25 packetLoss];
            if (v26 < 100.0)
            {
              [v3 setDidPass:1];
              [v3 setResult:1];
              goto LABEL_31;
            }
          }
        }

        v22 = [v4 countByEnumeratingWithState:&v28 objects:v42 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

LABEL_31:
    v40 = @"PingResults";
    v41 = [v4 copy];
    [v3 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v41, &v40, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTestCompleted:?];
  return v3;
}

- (id)__testPingLANUsingCFNetworkWithConfiguration:(id)configuration
{
  v5 = objc_alloc_init(W5DiagnosticsTestResult);
  [v5 setTestID:3];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestStarted:?];
  v6 = [configuration objectForKeyedSubscript:@"PingCount"];
  v7 = [configuration objectForKeyedSubscript:@"PingTimeout"];
  unsignedIntegerValue = [configuration objectForKeyedSubscript:@"PingDataLength"];
  if (v6)
  {
    integerValue = [v6 integerValue];
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    integerValue = 1;
    if (v7)
    {
LABEL_3:
      [v7 doubleValue];
      v11 = v10;
      if (!unsignedIntegerValue)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v11 = 2.0;
  if (unsignedIntegerValue)
  {
LABEL_4:
    unsignedIntegerValue = [unsignedIntegerValue unsignedIntegerValue];
  }

LABEL_5:
  v12 = [configuration objectForKeyedSubscript:@"PingTrafficClass"];
  if ([(CWFInterface *)[(W5StatusManager *)self->_status corewifi] SSID])
  {
    iPv4RouterAddress = [(CWFInterface *)[(W5StatusManager *)self->_status corewifi] IPv4RouterAddress];
    iPv6RouterAddress = [(CWFInterface *)[(W5StatusManager *)self->_status corewifi] IPv6RouterAddress];
    if (iPv4RouterAddress || (iPv4RouterAddress = iPv6RouterAddress) != 0)
    {
      v15 = [(W5DiagnosticsManager *)self __performCFPingWithAddress:iPv4RouterAddress count:integerValue timeout:v12 trafficClass:0 networkServiceType:unsignedIntegerValue dataLength:v11];
      if (v15)
      {
        v16 = v15;
        if ([v15 count] >= 1)
        {
          [v16 packetLoss];
          if (v17 < 100.0)
          {
            [v5 setDidPass:1];
            [v5 setResult:1];
          }
        }

        v19 = @"PingResult";
        v20 = v16;
        [v5 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v20, &v19, 1)}];
      }
    }
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestCompleted:?];
  return v5;
}

- (id)__testPingWANUsingCFNetworkWithConfiguration:(id)configuration
{
  v4 = objc_alloc_init(W5DiagnosticsTestResult);
  [v4 setTestID:6];
  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setTestStarted:?];
  v5 = [configuration objectForKeyedSubscript:@"PingCount"];
  v6 = [configuration objectForKeyedSubscript:@"PingTimeout"];
  unsignedIntegerValue = [configuration objectForKeyedSubscript:@"PingDataLength"];
  v8 = [configuration objectForKeyedSubscript:@"PingWANUseAppleDNS"];
  v9 = [configuration objectForKeyedSubscript:@"PingDataLength"];
  v10 = [configuration objectForKeyedSubscript:@"IPAddress"];
  if (v5)
  {
    integerValue = [v5 integerValue];
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    integerValue = 1;
    if (v6)
    {
LABEL_3:
      [v6 doubleValue];
      v13 = v12;
      if (!unsignedIntegerValue)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v13 = 2.0;
  if (unsignedIntegerValue)
  {
LABEL_4:
    unsignedIntegerValue = [unsignedIntegerValue unsignedIntegerValue];
  }

LABEL_5:
  if (v8)
  {
    v14 = [v8 BOOLValue] ^ 1;
    if (v9)
    {
LABEL_7:
      v15 = [v9 BOOLValue] ^ 1;
      goto LABEL_13;
    }
  }

  else
  {
    v14 = 1;
    if (v9)
    {
      goto LABEL_7;
    }
  }

  v15 = 0;
LABEL_13:
  v16 = [configuration objectForKeyedSubscript:@"PingTrafficClass"];
  if ([(CWFInterface *)[(W5StatusManager *)self->_status corewifi] SSID])
  {
    v17 = +[NSMutableArray array];
    v42 = v4;
    if (v14)
    {
      if (v10)
      {
        v18 = [(W5DiagnosticsManager *)self __performCFPingWithAddress:v10 count:integerValue timeout:v16 trafficClass:0 networkServiceType:unsignedIntegerValue dataLength:v13];
        if (v18)
        {
          [v17 addObject:v18];
        }
      }

      else
      {
        dNSServerAddresses = [(CWFInterface *)[(W5StatusManager *)self->_status corewifi] DNSServerAddresses];
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v28 = [dNSServerAddresses countByEnumeratingWithState:&v49 objects:v60 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v50;
          do
          {
            for (i = 0; i != v29; i = i + 1)
            {
              if (*v50 != v30)
              {
                objc_enumerationMutation(dNSServerAddresses);
              }

              v32 = [(W5DiagnosticsManager *)self __performCFPingWithAddress:*(*(&v49 + 1) + 8 * i) count:integerValue timeout:v16 trafficClass:0 networkServiceType:unsignedIntegerValue dataLength:v13, v42];
              if (v32)
              {
                v33 = v32;
                [v17 addObject:v32];
                [v33 packetLoss];
                if (((v34 >= 100.0) & v15) == 0)
                {
                  goto LABEL_41;
                }
              }

              else if (!v15)
              {
                goto LABEL_41;
              }
            }

            v29 = [dNSServerAddresses countByEnumeratingWithState:&v49 objects:v60 count:16];
          }

          while (v29);
        }
      }
    }

    else
    {
      v19 = sub_10009836C();
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v20 = [v19 countByEnumeratingWithState:&v53 objects:v61 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v54;
        do
        {
          for (j = 0; j != v21; j = j + 1)
          {
            if (*v54 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = [(W5DiagnosticsManager *)self __performCFPingWithAddress:*(*(&v53 + 1) + 8 * j) count:integerValue timeout:v16 trafficClass:0 networkServiceType:unsignedIntegerValue dataLength:v13, v42];
            if (v24)
            {
              v25 = v24;
              [v17 addObject:v24];
              [v25 packetLoss];
              if (((v26 >= 100.0) & v15) == 0)
              {
                goto LABEL_41;
              }
            }

            else if (!v15)
            {
              goto LABEL_41;
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v53 objects:v61 count:16];
        }

        while (v21);
      }
    }

LABEL_41:
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v35 = [v17 countByEnumeratingWithState:&v45 objects:v59 count:{16, v42}];
    if (v35)
    {
      v36 = v35;
      v37 = *v46;
      while (2)
      {
        for (k = 0; k != v36; k = k + 1)
        {
          if (*v46 != v37)
          {
            objc_enumerationMutation(v17);
          }

          v39 = *(*(&v45 + 1) + 8 * k);
          if ([v39 count] >= 1)
          {
            [v39 packetLoss];
            if (v40 < 100.0)
            {
              [v43 setDidPass:1];
              [v43 setResult:1];
              goto LABEL_52;
            }
          }
        }

        v36 = [v17 countByEnumeratingWithState:&v45 objects:v59 count:16];
        if (v36)
        {
          continue;
        }

        break;
      }
    }

LABEL_52:
    v57 = @"PingResults";
    v58 = [v17 copy];
    v4 = v43;
    [v43 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v58, &v57, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setTestCompleted:?];
  return v4;
}

- (id)__testConcurrentWithConfiguration:(id)configuration
{
  v5 = objc_alloc_init(W5DiagnosticsTestResult);
  [v5 setTestID:53];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestStarted:?];
  v20 = v5;
  [v5 setDidPass:1];
  v6 = [configuration objectForKeyedSubscript:@"InternalUUID"];
  v7 = [configuration objectForKeyedSubscript:@"ConcurrentRequests"];
  v22 = +[NSMutableArray array];
  v21 = dispatch_queue_create(0, 0);
  v8 = dispatch_group_create();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        dispatch_group_enter(v8);
        concurrentQueue = [(W5StatusManager *)self->_status concurrentQueue];
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_100040894;
        v28[3] = &unk_1000E2818;
        v28[4] = v13;
        v28[5] = v6;
        v28[6] = self;
        v28[7] = v21;
        v28[8] = v22;
        v28[9] = v8;
        [(NSOperationQueue *)concurrentQueue addOperationWithBlock:v28];
      }

      v10 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v10);
  }

  dispatch_group_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = [v22 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    while (2)
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v22);
        }

        if (([*(*(&v24 + 1) + 8 * j) didPass] & 1) == 0)
        {
          [v20 setDidPass:0];
          goto LABEL_18;
        }
      }

      v16 = [v22 countByEnumeratingWithState:&v24 objects:v33 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000409E4;
  block[3] = &unk_1000E1C98;
  block[4] = v20;
  block[5] = v22;
  dispatch_sync(v21, block);
  +[NSDate timeIntervalSinceReferenceDate];
  [v20 setTestCompleted:?];
  if (v8)
  {
    dispatch_release(v8);
  }

  if (v21)
  {
    dispatch_release(v21);
  }

  return v20;
}

- (id)__testResolveDNS
{
  v3 = objc_alloc_init(W5DiagnosticsTestResult);
  [v3 setTestID:7];
  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTestStarted:?];
  if ([(CWFInterface *)[(W5StatusManager *)self->_status corewifi] SSID])
  {
    v4 = [W5DiagnosticsManager __performDNSResolution:@"captive.apple.com"];
    if ([v4 count])
    {
      [v3 setDidPass:1];
      [v3 setResult:1];
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v5 = [v4 countByEnumeratingWithState:&v13 objects:v20 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v14;
        while (2)
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v14 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v13 + 1) + 8 * i);
            bytes = [v9 bytes];
            if ([v9 length] >= 0x10 && bytes->sa_family == 2 && !getnameinfo(bytes, bytes->sa_len, v19, 0x10u, 0, 0, 2))
            {
              v11 = [NSString stringWithCString:v19 encoding:1];
              if (v11)
              {
                v17 = @"DNSResolution";
                v18 = v11;
                [v3 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v18, &v17, 1)}];
              }

              goto LABEL_16;
            }
          }

          v6 = [v4 countByEnumeratingWithState:&v13 objects:v20 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }
    }
  }

LABEL_16:
  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTestCompleted:?];
  return v3;
}

- (id)__testReachApple
{
  v3 = objc_alloc_init(W5DiagnosticsTestResult);
  [v3 setTestID:9];
  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTestStarted:?];
  if (([(CWFInterface *)[(W5StatusManager *)self->_status corewifi] reachabilityFlags]& 6) == 2)
  {
    [v3 setDidPass:1];
    [v3 setResult:1];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTestCompleted:?];
  return v3;
}

- (id)__testRetrieveApple
{
  v3 = [NSString stringWithFormat:@"https://%@", @"captive.apple.com"];
  v4 = objc_alloc_init(W5DiagnosticsTestResult);
  [v4 setTestID:10];
  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setTestStarted:?];
  if ([(W5DiagnosticsManager *)self __performLoadViaNSURLSessionWithAddress:v3 usingTimeout:0 andForceWiFiInterface:0])
  {
    [v4 setDidPass:1];
    [v4 setResult:1];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setTestCompleted:?];
  return v4;
}

- (id)__testRetrieveAppleForceWiFiWithConfiguration:(id)configuration
{
  v5 = [NSString stringWithFormat:@"https://%@", @"captive.apple.com"];
  v6 = [configuration objectForKeyedSubscript:@"Timeout"];
  v7 = objc_alloc_init(W5DiagnosticsTestResult);
  [v7 setTestID:11];
  +[NSDate timeIntervalSinceReferenceDate];
  [v7 setTestStarted:?];
  if ([(W5DiagnosticsManager *)self __performLoadViaNSURLSessionWithAddress:v5 usingTimeout:v6 andForceWiFiInterface:1])
  {
    [v7 setDidPass:1];
    [v7 setResult:1];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v7 setTestCompleted:?];
  return v7;
}

- (id)__testCurlApple
{
  v3 = [NSString stringWithFormat:@"https://%@", @"captive.apple.com"];
  v4 = objc_alloc_init(W5DiagnosticsTestResult);
  [v4 setTestID:54];
  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setTestStarted:?];
  if ([(W5DiagnosticsManager *)self __performCurlWithAddress:v3])
  {
    [v4 setDidPass:1];
    [v4 setResult:1];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v4 setTestCompleted:?];
  return v4;
}

- (id)__testIPv4Assigned
{
  v3 = objc_alloc_init(W5DiagnosticsTestResult);
  [v3 setTestID:12];
  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTestStarted:?];
  iPv4Addresses = [(CWFInterface *)[(W5StatusManager *)self->_status corewifi] IPv4Addresses];
  iPv4RouterAddress = [(CWFInterface *)[(W5StatusManager *)self->_status corewifi] IPv4RouterAddress];
  if ([iPv4Addresses count])
  {
    v6 = iPv4RouterAddress == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    [v3 setDidPass:1];
    [v3 setResult:1];
    v8[0] = @"IPv4Addresses";
    v8[1] = @"IPv4Router";
    v9[0] = iPv4Addresses;
    v9[1] = iPv4RouterAddress;
    [v3 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v9, v8, 2)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTestCompleted:?];
  return v3;
}

- (id)__testPeerDiagnostics
{
  v3 = objc_alloc_init(W5DiagnosticsTestResult);
  [v3 setTestID:60];
  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTestStarted:?];
  gatherPeerDiagnostics = [(W5PeerDiagnosticsManager *)self->_peerDiagnostics gatherPeerDiagnostics];
  if ([gatherPeerDiagnostics count])
  {
    [v3 setResult:1];
    [v3 setDidPass:1];
    v6 = @"PeerDiagnosticsResults";
    v7 = gatherPeerDiagnostics;
    [v3 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v7, &v6, 1)}];
  }

  else
  {
    [v3 setDidPass:1];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTestCompleted:?];
  return v3;
}

- (id)__testPeerTypes
{
  v3 = objc_alloc_init(W5DiagnosticsTestResult);
  [v3 setTestID:61];
  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTestStarted:?];
  gatherPeerTypes = [(W5PeerDiagnosticsManager *)self->_peerDiagnostics gatherPeerTypes];
  if (gatherPeerTypes)
  {
    v5 = gatherPeerTypes;
    [v3 setResult:1];
    [v3 setDidPass:1];
    v7 = @"PeerDevicesInfo";
    v8 = v5;
    [v3 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v8, &v7, 1)}];
  }

  else
  {
    [v3 setDidPass:1];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTestCompleted:?];
  return v3;
}

- (id)__testDiscoverPeerTypes
{
  v3 = objc_alloc_init(W5DiagnosticsTestResult);
  [v3 setTestID:62];
  [v3 setDidPass:1];
  [v3 setResult:1];
  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTestStarted:?];
  [(W5PeerDiagnosticsManager *)self->_peerDiagnostics beginPeerDiscovery];
  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTestCompleted:?];
  return v3;
}

- (id)__testIPv6Assigned
{
  v3 = objc_alloc_init(W5DiagnosticsTestResult);
  [v3 setTestID:13];
  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTestStarted:?];
  iPv6Addresses = [(CWFInterface *)[(W5StatusManager *)self->_status corewifi] IPv6Addresses];
  iPv6RouterAddress = [(CWFInterface *)[(W5StatusManager *)self->_status corewifi] IPv6RouterAddress];
  if ([iPv6Addresses count])
  {
    v6 = iPv6RouterAddress == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    [v3 setDidPass:1];
    [v3 setResult:1];
    v8[0] = @"IPv6Addresses";
    v8[1] = @"IPv6Router";
    v9[0] = iPv6Addresses;
    v9[1] = iPv6RouterAddress;
    [v3 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v9, v8, 2)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTestCompleted:?];
  return v3;
}

- (id)__testCustomIPv4
{
  v3 = objc_alloc_init(W5DiagnosticsTestResult);
  [v3 setTestID:14];
  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTestStarted:?];
  ipv4ConfigMethod = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] ipv4ConfigMethod];
  if (ipv4ConfigMethod == 3)
  {
    [v3 setDidPass:1];
  }

  else
  {
    [v3 setResult:1];
  }

  v6 = @"IPv4ConfigMethod";
  v7 = [NSNumber numberWithInteger:ipv4ConfigMethod];
  [v3 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v7, &v6, 1)}];
  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTestCompleted:?];
  return v3;
}

- (id)__testCustomIPv6
{
  v3 = objc_alloc_init(W5DiagnosticsTestResult);
  [v3 setTestID:15];
  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTestStarted:?];
  ipv6ConfigMethod = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] ipv6ConfigMethod];
  if (ipv6ConfigMethod == 1)
  {
    [v3 setDidPass:1];
  }

  else
  {
    [v3 setResult:1];
  }

  v6 = @"IPv6ConfigMethod";
  v7 = [NSNumber numberWithInteger:ipv6ConfigMethod];
  [v3 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v7, &v6, 1)}];
  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTestCompleted:?];
  return v3;
}

- (id)__testCustomDNS
{
  v3 = objc_alloc_init(W5DiagnosticsTestResult);
  [v3 setTestID:16];
  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTestStarted:?];
  if ([(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] isUsingCustomDNSSettings])
  {
    [v3 setResult:1];
  }

  else
  {
    [v3 setDidPass:1];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTestCompleted:?];
  return v3;
}

- (id)__testCustomWebProxy
{
  v3 = objc_alloc_init(W5DiagnosticsTestResult);
  [v3 setTestID:17];
  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTestStarted:?];
  if ([(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] isUsingCustomProxySetting])
  {
    [v3 setResult:1];
  }

  else
  {
    [v3 setDidPass:1];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTestCompleted:?];
  return v3;
}

- (id)__testCongestedChannelUsingCCAWithConfiguration:(id)configuration
{
  v3 = [(W5DiagnosticsManager *)self __testCongestedChannelWithConfiguration:configuration];
  [v3 setTestID:23];
  return v3;
}

- (id)__testCongestedChannelWithConfiguration:(id)configuration
{
  v5 = objc_alloc_init(W5DiagnosticsTestResult);
  [v5 setTestID:24];
  [v5 setConfiguration:configuration];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestStarted:?];
  v6 = [objc_msgSend(configuration objectForKeyedSubscript:{@"MaxScanCacheAge", "integerValue"}];
  +[NSDate timeIntervalSinceReferenceDate];
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = v7;
    if (v7 - self->_wifiScanTimestamp > v6)
    {

      self->_wifiScanResults = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] performScanOnChannels:0 translate:1];
      self->_wifiScanTimestamp = v8;
    }
  }

  v9 = [configuration objectForKeyedSubscript:@"NetworkName"];
  if (v9)
  {
    wifi = [(W5DiagnosticsManager *)self __scanResultWithNetworkName:v9];
  }

  else
  {
    wifi = [(W5StatusManager *)self->_status wifi];
  }

  channel = [(W5WiFiInterface *)wifi channel];
  supportedChannels = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] supportedChannels];
  v13 = [(W5DiagnosticsManager *)self __overlappingChannelsForChannel:channel supportedChannels:supportedChannels];
  v14 = [(W5DiagnosticsManager *)self __occupiedChannelsForScanResults:self->_wifiScanResults supportedChannels:supportedChannels rssiThreshold:-80 ignoreChannel:channel];
  v15 = [(W5DiagnosticsManager *)self __orderedChannelWeights:[(W5DiagnosticsManager *)self __adjust5GHzWeights:[(W5DiagnosticsManager *)self __applyChannelWeights:[(W5DiagnosticsManager *)self __channelWeightsForScanResults:self->_wifiScanResults supportedChannels:supportedChannels rssiThreshold:-80] supportedChannels:supportedChannels]]];
  v39 = [(W5DiagnosticsManager *)self __only2GHz_1_6_11_14_Channels:v15];
  v40 = [(W5DiagnosticsManager *)self __only5GHz20MHz40MHzChannels:v15];
  v41 = [(W5DiagnosticsManager *)self __only5GHz40MHzChannels:v40];
  v42 = [(W5DiagnosticsManager *)self __only5GHzNonDFSChannels:v40];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v16 = [v13 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = 0;
    v20 = *v48;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v48 != v20)
        {
          objc_enumerationMutation(v13);
        }

        v18 += [v14 containsObject:*(*(&v47 + 1) + 8 * i)];
      }

      v19 += v17;
      v17 = [v13 countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v17);
    v22 = v18;
    v23 = v19;
  }

  else
  {
    v22 = 0.0;
    v23 = 0.0;
  }

  v24 = +[NSMutableArray array];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  wifiScanResults = self->_wifiScanResults;
  v26 = [(NSArray *)wifiScanResults countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v44;
    do
    {
      for (j = 0; j != v27; j = j + 1)
      {
        if (*v44 != v28)
        {
          objc_enumerationMutation(wifiScanResults);
        }

        v30 = *(*(&v43 + 1) + 8 * j);
        v31 = [objc_msgSend(v30 "channel")];
        if (v31 == [channel channel])
        {
          [v24 addObject:v30];
        }
      }

      v27 = [(NSArray *)wifiScanResults countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v27);
  }

  cachedLinkQualityMetric = [(CWFInterface *)[(W5StatusManager *)self->_status corewifi] cachedLinkQualityMetric];
  v33 = [objc_msgSend(cachedLinkQualityMetric "linkQualityMetricData")];
  if (v33 && v33[18])
  {
    if ([cachedLinkQualityMetric CCA] < 0x47)
    {
      [v5 setDidPass:1];
    }

    else
    {
      [v5 setResult:1];
    }

    v36 = v40;
    v37 = +[NSMutableDictionary dictionary];
    [v37 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKeyedSubscript:{"numberWithUnsignedInteger:", objc_msgSend(cachedLinkQualityMetric, "CCA")), @"CCA"}];
    v35 = v41;
    if (!channel)
    {
      goto LABEL_35;
    }

LABEL_34:
    [v37 setObject:channel forKeyedSubscript:@"CurrentChannel"];
    goto LABEL_35;
  }

  v35 = v41;
  if ([v24 count] > 4 || (*&v34 = v22 / v23, (v22 / v23) > 0.5))
  {
    [v5 setResult:{1, v34}];
  }

  else
  {
    [v5 setDidPass:{1, v34}];
  }

  v36 = v40;
  v37 = +[NSMutableDictionary dictionary];
  if (channel)
  {
    goto LABEL_34;
  }

LABEL_35:
  if ([v39 count])
  {
    [v37 setObject:objc_msgSend(v39 forKeyedSubscript:{"firstObject"), @"2GHzChannel"}];
  }

  if ([v36 count])
  {
    [v37 setObject:objc_msgSend(v36 forKeyedSubscript:{"firstObject"), @"5GHzChannel"}];
  }

  if ([v35 count])
  {
    [v37 setObject:objc_msgSend(v35 forKeyedSubscript:{"firstObject"), @"5GHz40MHzChannel"}];
  }

  if ([v42 count])
  {
    [v37 setObject:objc_msgSend(v42 forKeyedSubscript:{"firstObject"), @"5GHzNonDFSChannel"}];
  }

  [v5 setInfo:{objc_msgSend(v37, "copy")}];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestCompleted:?];
  return v5;
}

- (id)__testCongested2GHzWithConfiguration:(id)configuration
{
  v5 = objc_alloc_init(W5DiagnosticsTestResult);
  [v5 setTestID:25];
  [v5 setConfiguration:configuration];
  v6 = &WiFiManagerClientCopyProperty_ptr;
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestStarted:?];
  v7 = [objc_msgSend(configuration objectForKeyedSubscript:{@"MaxScanCacheAge", "integerValue"}];
  +[NSDate timeIntervalSinceReferenceDate];
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = v8;
    if (v8 - self->_wifiScanTimestamp > v7)
    {

      self->_wifiScanResults = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] performScanOnChannels:0 translate:1];
      self->_wifiScanTimestamp = v9;
    }
  }

  supportedChannels = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] supportedChannels];
  v11 = [(W5DiagnosticsManager *)self __only2GHzChannels:supportedChannels];
  v12 = [(W5DiagnosticsManager *)self __occupiedChannelsForScanResults:self->_wifiScanResults supportedChannels:v11 rssiThreshold:-80 ignoreChannel:0];
  v13 = [(W5DiagnosticsManager *)self __orderedChannelWeights:[(W5DiagnosticsManager *)self __adjust5GHzWeights:[(W5DiagnosticsManager *)self __applyChannelWeights:[(W5DiagnosticsManager *)self __channelWeightsForScanResults:self->_wifiScanResults supportedChannels:supportedChannels rssiThreshold:-80] supportedChannels:supportedChannels]]];
  v14 = [(W5DiagnosticsManager *)self __only2GHz_1_6_11_14_Channels:v13];
  v15 = [(W5DiagnosticsManager *)self __only5GHz20MHz40MHzChannels:v13];
  v16 = [(W5DiagnosticsManager *)self __only5GHz40MHzChannels:v15];
  v17 = [(W5DiagnosticsManager *)self __only5GHzNonDFSChannels:v15];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (!v18)
  {
    goto LABEL_13;
  }

  v19 = v18;
  v27 = v14;
  v28 = v16;
  v29 = v17;
  v30 = v5;
  v20 = 0;
  v21 = 0;
  v22 = *v32;
  do
  {
    for (i = 0; i != v19; i = i + 1)
    {
      if (*v32 != v22)
      {
        objc_enumerationMutation(v11);
      }

      v20 += [v12 containsObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", objc_msgSend(*(*(&v31 + 1) + 8 * i), "channel", v27, v28, v29))}];
    }

    v21 += v19;
    v19 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
  }

  while (v19);
  v24 = v20 / v21;
  v17 = v29;
  v5 = v30;
  v6 = &WiFiManagerClientCopyProperty_ptr;
  v14 = v27;
  v16 = v28;
  if (v24 > 0.75)
  {
    [v30 setResult:1];
  }

  else
  {
LABEL_13:
    [v5 setDidPass:1];
  }

  v25 = +[NSMutableDictionary dictionary];
  if ([v14 count])
  {
    [v25 setObject:objc_msgSend(v14 forKeyedSubscript:{"firstObject"), @"2GHzChannel"}];
  }

  if ([v15 count])
  {
    [v25 setObject:objc_msgSend(v15 forKeyedSubscript:{"firstObject"), @"5GHzChannel"}];
  }

  if ([v16 count])
  {
    [v25 setObject:objc_msgSend(v16 forKeyedSubscript:{"firstObject"), @"5GHz40MHzChannel"}];
  }

  if ([v17 count])
  {
    [v25 setObject:objc_msgSend(v17 forKeyedSubscript:{"firstObject"), @"5GHzNonDFSChannel"}];
  }

  [v5 setInfo:{objc_msgSend(v25, "copy")}];
  [v6[474] timeIntervalSinceReferenceDate];
  [v5 setTestCompleted:?];
  return v5;
}

- (id)__testCongested5GHzWithConfiguration:(id)configuration
{
  v5 = objc_alloc_init(W5DiagnosticsTestResult);
  [v5 setTestID:26];
  [v5 setConfiguration:configuration];
  v6 = &WiFiManagerClientCopyProperty_ptr;
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestStarted:?];
  v7 = [objc_msgSend(configuration objectForKeyedSubscript:{@"MaxScanCacheAge", "integerValue"}];
  +[NSDate timeIntervalSinceReferenceDate];
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = v8;
    if (v8 - self->_wifiScanTimestamp > v7)
    {

      self->_wifiScanResults = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] performScanOnChannels:0 translate:1];
      self->_wifiScanTimestamp = v9;
    }
  }

  supportedChannels = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] supportedChannels];
  v11 = [(W5DiagnosticsManager *)self __only5GHzChannels:supportedChannels];
  v12 = [(W5DiagnosticsManager *)self __occupiedChannelsForScanResults:self->_wifiScanResults supportedChannels:v11 rssiThreshold:-80 ignoreChannel:0];
  v13 = [(W5DiagnosticsManager *)self __orderedChannelWeights:[(W5DiagnosticsManager *)self __adjust5GHzWeights:[(W5DiagnosticsManager *)self __applyChannelWeights:[(W5DiagnosticsManager *)self __channelWeightsForScanResults:self->_wifiScanResults supportedChannels:supportedChannels rssiThreshold:-80] supportedChannels:supportedChannels]]];
  v14 = [(W5DiagnosticsManager *)self __only2GHz_1_6_11_14_Channels:v13];
  v15 = [(W5DiagnosticsManager *)self __only5GHz20MHz40MHzChannels:v13];
  v16 = [(W5DiagnosticsManager *)self __only5GHz40MHzChannels:v15];
  v17 = [(W5DiagnosticsManager *)self __only5GHzNonDFSChannels:v15];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (!v18)
  {
    goto LABEL_13;
  }

  v19 = v18;
  v27 = v14;
  v28 = v16;
  v29 = v17;
  v30 = v5;
  v20 = 0;
  v21 = 0;
  v22 = *v32;
  do
  {
    for (i = 0; i != v19; i = i + 1)
    {
      if (*v32 != v22)
      {
        objc_enumerationMutation(v11);
      }

      v20 += [v12 containsObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", objc_msgSend(*(*(&v31 + 1) + 8 * i), "channel", v27, v28, v29))}];
    }

    v21 += v19;
    v19 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
  }

  while (v19);
  v24 = v20 / v21;
  v17 = v29;
  v5 = v30;
  v6 = &WiFiManagerClientCopyProperty_ptr;
  v14 = v27;
  v16 = v28;
  if (v24 > 0.75)
  {
    [v30 setResult:1];
  }

  else
  {
LABEL_13:
    [v5 setDidPass:1];
  }

  v25 = +[NSMutableDictionary dictionary];
  if ([v14 count])
  {
    [v25 setObject:objc_msgSend(v14 forKeyedSubscript:{"firstObject"), @"2GHzChannel"}];
  }

  if ([v15 count])
  {
    [v25 setObject:objc_msgSend(v15 forKeyedSubscript:{"firstObject"), @"5GHzChannel"}];
  }

  if ([v16 count])
  {
    [v25 setObject:objc_msgSend(v16 forKeyedSubscript:{"firstObject"), @"5GHz40MHzChannel"}];
  }

  if ([v17 count])
  {
    [v25 setObject:objc_msgSend(v17 forKeyedSubscript:{"firstObject"), @"5GHzNonDFSChannel"}];
  }

  [v5 setInfo:{objc_msgSend(v25, "copy")}];
  [v6[474] timeIntervalSinceReferenceDate];
  [v5 setTestCompleted:?];
  return v5;
}

- (id)__testHT402GHzWithConfiguration:(id)configuration
{
  v5 = objc_alloc_init(W5DiagnosticsTestResult);
  [v5 setTestID:27];
  [v5 setConfiguration:configuration];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestStarted:?];
  v6 = [objc_msgSend(configuration objectForKeyedSubscript:{@"MaxScanCacheAge", "integerValue"}];
  +[NSDate timeIntervalSinceReferenceDate];
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = v7;
    if (v7 - self->_wifiScanTimestamp > v6)
    {

      self->_wifiScanResults = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] performScanOnChannels:0 translate:1];
      self->_wifiScanTimestamp = v8;
    }
  }

  v9 = +[NSMutableArray array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  wifiScanResults = self->_wifiScanResults;
  v11 = [(NSArray *)wifiScanResults countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(wifiScanResults);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        if (([objc_msgSend(v15 "channel")] & 8) != 0 && (objc_msgSend(objc_msgSend(v15, "channel"), "flags") & 4) != 0)
        {
          [v9 addObject:v15];
        }
      }

      v12 = [(NSArray *)wifiScanResults countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v12);
  }

  v16 = +[NSMutableDictionary dictionary];
  if ([v9 count])
  {
    [v5 setResult:1];
    [v16 setObject:objc_msgSend(v9 forKeyedSubscript:{"copy"), @"ScanResults"}];
  }

  else
  {
    [v5 setDidPass:1];
  }

  supportedChannels = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] supportedChannels];
  v18 = [(W5DiagnosticsManager *)self __orderedChannelWeights:[(W5DiagnosticsManager *)self __adjust5GHzWeights:[(W5DiagnosticsManager *)self __applyChannelWeights:[(W5DiagnosticsManager *)self __channelWeightsForScanResults:self->_wifiScanResults supportedChannels:supportedChannels rssiThreshold:-80] supportedChannels:supportedChannels]]];
  v19 = [(W5DiagnosticsManager *)self __only2GHz_1_6_11_14_Channels:v18];
  v20 = [(W5DiagnosticsManager *)self __only5GHz20MHz40MHzChannels:v18];
  v21 = [(W5DiagnosticsManager *)self __only5GHz40MHzChannels:v20];
  v22 = [(W5DiagnosticsManager *)self __only5GHzNonDFSChannels:v20];
  if ([v19 count])
  {
    [v16 setObject:objc_msgSend(v19 forKeyedSubscript:{"firstObject"), @"2GHzChannel"}];
  }

  if ([v20 count])
  {
    [v16 setObject:objc_msgSend(v20 forKeyedSubscript:{"firstObject"), @"5GHzChannel"}];
  }

  if ([v21 count])
  {
    [v16 setObject:objc_msgSend(v21 forKeyedSubscript:{"firstObject"), @"5GHz40MHzChannel"}];
  }

  if ([v22 count])
  {
    [v16 setObject:objc_msgSend(v22 forKeyedSubscript:{"firstObject"), @"5GHzNonDFSChannel"}];
  }

  [v5 setInfo:{objc_msgSend(v16, "copy")}];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestCompleted:?];
  return v5;
}

- (id)__testNoSecurityWithConfiguration:(id)configuration
{
  v5 = objc_alloc_init(W5DiagnosticsTestResult);
  [v5 setTestID:38];
  [v5 setConfiguration:configuration];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestStarted:?];
  v6 = [configuration objectForKeyedSubscript:@"NetworkName"];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_msgSend(configuration objectForKeyedSubscript:{@"MaxScanCacheAge", "integerValue"}];
    +[NSDate timeIntervalSinceReferenceDate];
    if ((v8 & 0x8000000000000000) == 0)
    {
      v10 = v9;
      if (v9 - self->_wifiScanTimestamp > v8)
      {

        self->_wifiScanResults = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] performScanOnChannels:0 translate:1];
        self->_wifiScanTimestamp = v10;
      }
    }

    v11 = [(W5DiagnosticsManager *)self __scanResultWithNetworkName:v7];
    if (v11)
    {
      v12 = v11;
      strongestSupportedSecurity = [v11 strongestSupportedSecurity];
      if (strongestSupportedSecurity)
      {
        [v5 setDidPass:1];
      }

      else
      {
        [v5 setResult:1];
      }

      v21[0] = @"ScanResult";
      v21[1] = @"Security";
      v22[0] = v12;
      v22[1] = [NSNumber numberWithInteger:strongestSupportedSecurity];
      v15 = v22;
      v16 = v21;
      v17 = 2;
LABEL_15:
      [v5 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v15, v16, v17)}];
    }
  }

  else if ([(CWFInterface *)[(W5StatusManager *)self->_status corewifi] SSID])
  {
    security = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] security];
    if (security)
    {
      [v5 setDidPass:1];
    }

    else
    {
      [v5 setResult:1];
    }

    v19 = @"Security";
    v20 = [NSNumber numberWithInteger:security];
    v15 = &v20;
    v16 = &v19;
    v17 = 1;
    goto LABEL_15;
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestCompleted:?];
  return v5;
}

- (id)__testLegacySecurityWEPWithConfiguration:(id)configuration
{
  v5 = objc_alloc_init(W5DiagnosticsTestResult);
  [v5 setTestID:39];
  [v5 setConfiguration:configuration];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestStarted:?];
  v6 = [configuration objectForKeyedSubscript:@"NetworkName"];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_msgSend(configuration objectForKeyedSubscript:{@"MaxScanCacheAge", "integerValue"}];
    +[NSDate timeIntervalSinceReferenceDate];
    if ((v8 & 0x8000000000000000) == 0)
    {
      v10 = v9;
      if (v9 - self->_wifiScanTimestamp > v8)
      {

        self->_wifiScanResults = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] performScanOnChannels:0 translate:1];
        self->_wifiScanTimestamp = v10;
      }
    }

    v11 = [(W5DiagnosticsManager *)self __scanResultWithNetworkName:v7];
    if (v11)
    {
      v12 = v11;
      supportedSecurityTypes = [v11 supportedSecurityTypes];
      if (([supportedSecurityTypes containsObject:&off_1000EEF90] & 1) != 0 || (objc_msgSend(supportedSecurityTypes, "containsObject:", &off_1000EEFA8) & 1) != 0 || objc_msgSend(v12, "supportsWEPCipher"))
      {
        [v5 setResult:1];
      }

      else
      {
        [v5 setDidPass:1];
      }

      v22[0] = @"ScanResult";
      v22[1] = @"Security";
      v23[0] = v12;
      v23[1] = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v12 strongestSupportedSecurity]);
      v14 = v23;
      v15 = v22;
      v16 = 2;
LABEL_17:
      [v5 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v14, v15, v16)}];
    }
  }

  else if ([(CWFInterface *)[(W5StatusManager *)self->_status corewifi] SSID])
  {
    security = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] security];
    currentNetwork = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] currentNetwork];
    if (security == 1 || security == 8 || [currentNetwork supportsWEPCipher])
    {
      [v5 setResult:1];
    }

    else
    {
      [v5 setDidPass:1];
    }

    v20 = @"Security";
    v21 = [NSNumber numberWithInteger:security];
    v14 = &v21;
    v15 = &v20;
    v16 = 1;
    goto LABEL_17;
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestCompleted:?];
  return v5;
}

- (id)__testLegacySecurityWPAWithConfiguration:(id)configuration
{
  v5 = objc_alloc_init(W5DiagnosticsTestResult);
  [v5 setTestID:40];
  [v5 setConfiguration:configuration];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestStarted:?];
  v6 = [configuration objectForKeyedSubscript:@"NetworkName"];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_msgSend(configuration objectForKeyedSubscript:{@"MaxScanCacheAge", "integerValue"}];
    +[NSDate timeIntervalSinceReferenceDate];
    if ((v8 & 0x8000000000000000) == 0)
    {
      v10 = v9;
      if (v9 - self->_wifiScanTimestamp > v8)
      {

        self->_wifiScanResults = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] performScanOnChannels:0 translate:1];
        self->_wifiScanTimestamp = v10;
      }
    }

    v11 = [(W5DiagnosticsManager *)self __scanResultWithNetworkName:v7];
    if (v11)
    {
      v12 = v11;
      supportedSecurityTypes = [v11 supportedSecurityTypes];
      if (([supportedSecurityTypes containsObject:&off_1000EEFC0] & 1) != 0 || (objc_msgSend(supportedSecurityTypes, "containsObject:", &off_1000EEFD8) & 1) != 0 || objc_msgSend(v12, "supportsTKIPCipher"))
      {
        [v5 setResult:1];
      }

      else
      {
        [v5 setDidPass:1];
      }

      v22[0] = @"ScanResult";
      v22[1] = @"Security";
      v23[0] = v12;
      v23[1] = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v12 strongestSupportedSecurity]);
      v14 = v23;
      v15 = v22;
      v16 = 2;
LABEL_16:
      [v5 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v14, v15, v16)}];
    }
  }

  else if ([(CWFInterface *)[(W5StatusManager *)self->_status corewifi] SSID])
  {
    security = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] security];
    currentNetwork = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] currentNetwork];
    if (security <= 0xA && ((1 << security) & 0x60C) != 0 || [currentNetwork supportsTKIPCipher])
    {
      [v5 setResult:1];
    }

    else
    {
      [v5 setDidPass:1];
    }

    v20 = @"Security";
    v21 = [NSNumber numberWithInteger:security];
    v14 = &v21;
    v15 = &v20;
    v16 = 1;
    goto LABEL_16;
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestCompleted:?];
  return v5;
}

- (id)__testLegacyRates11bWithConfiguration:(id)configuration
{
  v5 = objc_alloc_init(W5DiagnosticsTestResult);
  [v5 setTestID:41];
  [v5 setConfiguration:configuration];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestStarted:?];
  v6 = [configuration objectForKeyedSubscript:@"NetworkName"];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_msgSend(configuration objectForKeyedSubscript:{@"MaxScanCacheAge", "integerValue"}];
    +[NSDate timeIntervalSinceReferenceDate];
    if ((v8 & 0x8000000000000000) == 0)
    {
      v10 = v9;
      if (v9 - self->_wifiScanTimestamp > v8)
      {

        self->_wifiScanResults = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] performScanOnChannels:0 translate:1];
        self->_wifiScanTimestamp = v10;
      }
    }

    v11 = [(W5DiagnosticsManager *)self __scanResultWithNetworkName:v7];
    if (v11)
    {
      v12 = v11;
      if ([v11 fastestSupportedPHYMode] == 4)
      {
        [v5 setResult:1];
      }

      else
      {
        [v5 setDidPass:1];
      }

      v14 = @"ScanResult";
      v15 = v12;
      [v5 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v15, &v14, 1)}];
    }
  }

  else if ([(CWFInterface *)[(W5StatusManager *)self->_status corewifi] SSID])
  {
    if ([(CWFInterface *)[(W5StatusManager *)self->_status corewifi] PHYMode]== 4)
    {
      [v5 setResult:1];
    }

    else
    {
      [v5 setDidPass:1];
    }
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestCompleted:?];
  return v5;
}

- (id)__testAirPortBaseStationWithConfiguration:(id)configuration
{
  v5 = objc_alloc_init(W5DiagnosticsTestResult);
  [v5 setTestID:33];
  [v5 setConfiguration:configuration];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestStarted:?];
  v6 = [configuration objectForKeyedSubscript:@"NetworkName"];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_msgSend(configuration objectForKeyedSubscript:{@"MaxScanCacheAge", "integerValue"}];
    +[NSDate timeIntervalSinceReferenceDate];
    if ((v8 & 0x8000000000000000) == 0)
    {
      v10 = v9;
      if (v9 - self->_wifiScanTimestamp > v8)
      {

        self->_wifiScanResults = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] performScanOnChannels:0 translate:1];
        self->_wifiScanTimestamp = v10;
      }
    }

    currentNetwork = [(W5DiagnosticsManager *)self __scanResultWithNetworkName:v7];
  }

  else
  {
    currentNetwork = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] currentNetwork];
  }

  v12 = currentNetwork;
  if (currentNetwork)
  {
    airPortBaseStationModelName = [currentNetwork airPortBaseStationModelName];
    if (airPortBaseStationModelName)
    {
      v14 = airPortBaseStationModelName;
      [v5 setDidPass:1];
      [v5 setResult:1];
      v16[0] = @"ScanResult";
      v16[1] = @"AirPortModelName";
      v17[0] = v12;
      v17[1] = v14;
      [v5 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v17, v16, 2)}];
    }
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestCompleted:?];
  return v5;
}

- (id)__testiOSPersonalHotspotWithConfiguration:(id)configuration
{
  v5 = objc_alloc_init(W5DiagnosticsTestResult);
  [v5 setTestID:44];
  [v5 setConfiguration:configuration];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestStarted:?];
  v6 = [configuration objectForKeyedSubscript:@"NetworkName"];
  if (!v6)
  {
    currentNetwork = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] currentNetwork];
    if (!currentNetwork)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v7 = v6;
  v8 = [objc_msgSend(configuration objectForKeyedSubscript:{@"MaxScanCacheAge", "integerValue"}];
  +[NSDate timeIntervalSinceReferenceDate];
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = v9;
    if (v9 - self->_wifiScanTimestamp > v8)
    {

      self->_wifiScanResults = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] performScanOnChannels:0 translate:1];
      self->_wifiScanTimestamp = v10;
    }
  }

  currentNetwork = [(W5DiagnosticsManager *)self __scanResultWithNetworkName:v7];
  if (currentNetwork)
  {
LABEL_8:
    if ([currentNetwork isPersonalHotspot])
    {
      [v5 setResult:1];
    }

    else
    {
      [v5 setDidPass:1];
    }
  }

LABEL_11:
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestCompleted:?];
  return v5;
}

- (id)__testPasspointWithConfiguration:(id)configuration
{
  v5 = objc_alloc_init(W5DiagnosticsTestResult);
  [v5 setTestID:45];
  [v5 setConfiguration:configuration];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestStarted:?];
  v6 = [configuration objectForKeyedSubscript:@"NetworkName"];
  if (!v6)
  {
    if (![(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] currentNetwork])
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v7 = v6;
  v8 = [objc_msgSend(configuration objectForKeyedSubscript:{@"MaxScanCacheAge", "integerValue"}];
  +[NSDate timeIntervalSinceReferenceDate];
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = v9;
    if (v9 - self->_wifiScanTimestamp > v8)
    {

      self->_wifiScanResults = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] performScanOnChannels:0 translate:1];
      self->_wifiScanTimestamp = v10;
    }
  }

  if ([(W5DiagnosticsManager *)self __scanResultWithNetworkName:v7])
  {
LABEL_8:
    if ([-[W5WiFiInterface currentNetwork](-[W5StatusManager wifi](self->_status "wifi")])
    {
      [v5 setResult:1];
    }

    else
    {
      [v5 setDidPass:1];
    }
  }

LABEL_11:
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestCompleted:?];
  return v5;
}

- (BOOL)__isDefaultCountryCode:(id)code
{
  if (!code)
  {
    return 0;
  }

  lowercaseString = [code lowercaseString];

  return [&off_1000F4098 containsObject:lowercaseString];
}

- (id)__testConflictingCountryCodeWithConfiguration:(id)configuration
{
  v5 = objc_alloc_init(W5DiagnosticsTestResult);
  [v5 setTestID:28];
  [v5 setConfiguration:configuration];
  +[NSDate timeIntervalSinceReferenceDate];
  v21 = v5;
  [v5 setTestStarted:?];
  v6 = [configuration objectForKeyedSubscript:@"NetworkName"];
  v7 = [objc_msgSend(configuration objectForKeyedSubscript:{@"MaxScanCacheAge", "integerValue"}];
  +[NSDate timeIntervalSinceReferenceDate];
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = v8;
    if (v8 - self->_wifiScanTimestamp > v7)
    {

      self->_wifiScanResults = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] performScanOnChannels:0 translate:1];
      self->_wifiScanTimestamp = v9;
    }
  }

  v10 = [objc_msgSend(-[CWFInterface countryCode](-[W5StatusManager corewifi](self->_status "corewifi")];
  v11 = +[NSMutableArray array];
  if (![(W5DiagnosticsManager *)self __isDefaultCountryCode:v10])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    wifiScanResults = self->_wifiScanResults;
    v13 = [(NSArray *)wifiScanResults countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(wifiScanResults);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          v18 = [objc_msgSend(objc_msgSend(v17 "countryCode")];
          if (v10 && v18 && ([v18 isEqualToString:v10] & 1) == 0 && (!v6 || objc_msgSend(objc_msgSend(v17, "ssidString"), "isEqualToString:", v6)) && (objc_msgSend(v11, "containsObject:", v17) & 1) == 0)
          {
            [v11 addObject:v17];
          }
        }

        v14 = [(NSArray *)wifiScanResults countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }
  }

  v19 = objc_alloc_init(NSMutableDictionary);
  if (v10)
  {
    [v19 setObject:objc_msgSend(v10 forKeyedSubscript:{"copy"), @"AdoptedCountryCode"}];
  }

  if ([v11 count])
  {
    [v21 setResult:1];
    [v19 setObject:objc_msgSend(v11 forKeyedSubscript:{"copy"), @"ScanResults"}];
  }

  else
  {
    [v21 setDidPass:1];
  }

  if ([objc_msgSend(v19 "allKeys")])
  {
    [v21 setInfo:v19];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v21 setTestCompleted:?];
  return v21;
}

- (id)__testConflictingSecurityTypePNLWithConfiguration:(id)configuration
{
  v5 = objc_alloc_init(W5DiagnosticsTestResult);
  [v5 setTestID:29];
  [v5 setConfiguration:configuration];
  +[NSDate timeIntervalSinceReferenceDate];
  v33 = v5;
  [v5 setTestStarted:?];
  v6 = [configuration objectForKeyedSubscript:@"NetworkName"];
  v7 = [objc_msgSend(configuration objectForKeyedSubscript:{@"MaxScanCacheAge", "integerValue"}];
  +[NSDate timeIntervalSinceReferenceDate];
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = v8;
    if (v8 - self->_wifiScanTimestamp > v7)
    {

      self->_wifiScanResults = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] performScanOnChannels:0 translate:1];
      self->_wifiScanTimestamp = v9;
    }
  }

  v10 = +[NSMutableArray array];
  v11 = +[NSMutableArray array];
  v12 = +[NSMutableDictionary dictionary];
  v13 = [configuration objectForKeyedSubscript:@"InternalUUID"];
  v14 = [objc_msgSend(configuration objectForKeyedSubscript:{@"UseCachedPNL", "BOOLValue"}];
  wifi = [(W5StatusManager *)self->_status wifi];
  if (v14)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  v17 = [(W5WiFiInterface *)wifi cachedPreferredNetworksListWithUUID:v16];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v39;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v39 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v38 + 1) + 8 * i);
        if ([v22 ssidString] && (!v6 || objc_msgSend(objc_msgSend(v22, "ssidString"), "isEqualToString:", v6)))
        {
          [v12 setObject:v22 forKeyedSubscript:{objc_msgSend(v22, "ssidString")}];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v19);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  wifiScanResults = self->_wifiScanResults;
  v24 = [(NSArray *)wifiScanResults countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v35;
    do
    {
      for (j = 0; j != v25; j = j + 1)
      {
        if (*v35 != v26)
        {
          objc_enumerationMutation(wifiScanResults);
        }

        v28 = *(*(&v34 + 1) + 8 * j);
        v29 = [v12 objectForKeyedSubscript:{objc_msgSend(v28, "ssidString")}];
        if (v29)
        {
          v30 = v29;
          if (([v28 supportsSecurity:{objc_msgSend(v29, "security")}] & 1) == 0)
          {
            if (([v10 containsObject:v28] & 1) == 0)
            {
              [v10 addObject:v28];
            }

            if (([v11 containsObject:v30] & 1) == 0)
            {
              [v11 addObject:v30];
            }
          }
        }
      }

      v25 = [(NSArray *)wifiScanResults countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v25);
  }

  if ([v11 count])
  {
    [v33 setResult:1];
    v42[0] = @"ScanResults";
    v31 = [v10 copy];
    v42[1] = @"PreferredNetworks";
    v43[0] = v31;
    v43[1] = [v11 copy];
    [v33 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v43, v42, 2)}];
  }

  else
  {
    [v33 setDidPass:1];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v33 setTestCompleted:?];
  return v33;
}

- (id)__testCaptivePortalWithConfiguration:(id)configuration
{
  v5 = objc_alloc_init(W5DiagnosticsTestResult);
  [v5 setTestID:46];
  [v5 setConfiguration:configuration];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestStarted:?];
  v6 = [configuration objectForKeyedSubscript:@"NetworkName"];
  if (v6)
  {
    currentPreferredNetwork = [(W5DiagnosticsManager *)self __preferredNetworkWithNetworkName:v6 configuration:configuration];
  }

  else
  {
    currentPreferredNetwork = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] currentPreferredNetwork];
  }

  v8 = currentPreferredNetwork;
  if (currentPreferredNetwork)
  {
    if ([currentPreferredNetwork isCaptive])
    {
      [v5 setResult:1];
    }

    else
    {
      [v5 setDidPass:1];
    }

    v10 = @"PreferredNetwork";
    v11 = v8;
    [v5 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v11, &v10, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestCompleted:?];
  return v5;
}

- (id)__testAWDLRealtimeWithConfiguration:(id)configuration
{
  v5 = objc_alloc_init(W5DiagnosticsTestResult);
  [v5 setTestID:22];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestStarted:?];
  v6 = [configuration objectForKeyedSubscript:@"InternalUUID"];
  v7 = [objc_msgSend(configuration objectForKeyedSubscript:{@"UseCachedStatus", "BOOLValue"}];
  status = self->_status;
  if (v7)
  {
    awdlStatus = [-[W5StatusManager cachedStatusWithUUID:](status cachedStatusWithUUID:{v6), "awdl"}];
  }

  else
  {
    awdlStatus = [(W5StatusManager *)status awdlStatus];
  }

  v10 = awdlStatus;
  if ([awdlStatus awdlStrategy] && *(objc_msgSend(objc_msgSend(v10, "awdlStrategy"), "bytes") + 2) == 9)
  {
    [v5 setResult:1];
  }

  else
  {
    [v5 setDidPass:1];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestCompleted:?];
  return v5;
}

- (id)__testAWDLEnabledWithConfiguration:(id)configuration
{
  v5 = objc_alloc_init(W5DiagnosticsTestResult);
  [v5 setTestID:21];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestStarted:?];
  v6 = [configuration objectForKeyedSubscript:@"InternalUUID"];
  v7 = [objc_msgSend(configuration objectForKeyedSubscript:{@"UseCachedStatus", "BOOLValue"}];
  status = self->_status;
  if (v7)
  {
    awdlStatus = [-[W5StatusManager cachedStatusWithUUID:](status cachedStatusWithUUID:{v6), "awdl"}];
  }

  else
  {
    awdlStatus = [(W5StatusManager *)status awdlStatus];
  }

  v10 = awdlStatus;
  if ([awdlStatus awdlSyncEnabled] && *(objc_msgSend(objc_msgSend(v10, "awdlSyncEnabled"), "bytes") + 2))
  {
    [v5 setResult:1];
  }

  else
  {
    [v5 setDidPass:1];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestCompleted:?];
  return v5;
}

- (id)__testBTCoexWithConfiguration:(id)configuration
{
  v5 = objc_alloc_init(W5DiagnosticsTestResult);
  [v5 setTestID:20];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestStarted:?];
  v6 = [configuration objectForKeyedSubscript:@"InternalUUID"];
  v7 = [objc_msgSend(configuration objectForKeyedSubscript:{@"UseCachedStatus", "BOOLValue"}];
  status = self->_status;
  if (v7)
  {
    wifiStatus = [-[W5StatusManager cachedStatusWithUUID:](status cachedStatusWithUUID:{v6), "wifi"}];
  }

  else
  {
    wifiStatus = [(W5StatusManager *)status wifiStatus];
  }

  if ([wifiStatus btcMode] == 7)
  {
    [v5 setResult:1];
  }

  else
  {
    [v5 setDidPass:1];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestCompleted:?];
  return v5;
}

- (id)__testHighBTConnectedWithConfiguration:(id)configuration
{
  v5 = objc_alloc_init(W5DiagnosticsTestResult);
  [v5 setTestID:19];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestStarted:?];
  v6 = [configuration objectForKeyedSubscript:@"InternalUUID"];
  v7 = [objc_msgSend(configuration objectForKeyedSubscript:{@"UseCachedStatus", "BOOLValue"}];
  status = self->_status;
  if (v7)
  {
    bluetoothStatus = [-[W5StatusManager cachedStatusWithUUID:](status cachedStatusWithUUID:{v6), "bluetooth"}];
  }

  else
  {
    bluetoothStatus = [(W5StatusManager *)status bluetoothStatus];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  devices = [bluetoothStatus devices];
  v11 = [devices countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (!v11)
  {
    v14 = 0;
    v13 = 0;
LABEL_14:
    [v5 setDidPass:1];
    goto LABEL_15;
  }

  v12 = v11;
  v13 = 0;
  v14 = 0;
  v15 = *v21;
  do
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v21 != v15)
      {
        objc_enumerationMutation(devices);
      }

      v17 = *(*(&v20 + 1) + 8 * i);
      v13 += [v17 isConnected];
      v14 += [v17 isAppleDevice];
    }

    v12 = [devices countByEnumeratingWithState:&v20 objects:v26 count:16];
  }

  while (v12);
  if (v13 < 1)
  {
    goto LABEL_14;
  }

  [v5 setResult:1];
LABEL_15:
  v24[0] = @"BTConnectedCount";
  v18 = [NSNumber numberWithInteger:v13];
  v24[1] = @"BTAppleDeviceConnectedCount";
  v25[0] = v18;
  v25[1] = [NSNumber numberWithInteger:v14];
  [v5 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v25, v24, 2)}];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestCompleted:?];
  return v5;
}

- (id)__testHighBTPairedWithConfiguration:(id)configuration
{
  v5 = objc_alloc_init(W5DiagnosticsTestResult);
  [v5 setTestID:18];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestStarted:?];
  v6 = [configuration objectForKeyedSubscript:@"InternalUUID"];
  v7 = [objc_msgSend(configuration objectForKeyedSubscript:{@"UseCachedStatus", "BOOLValue"}];
  status = self->_status;
  if (v7)
  {
    bluetoothStatus = [-[W5StatusManager cachedStatusWithUUID:](status cachedStatusWithUUID:{v6), "bluetooth"}];
  }

  else
  {
    bluetoothStatus = [(W5StatusManager *)status bluetoothStatus];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  devices = [bluetoothStatus devices];
  v11 = [devices countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (!v11)
  {
    v13 = 0;
LABEL_17:
    [v5 setDidPass:1];
    goto LABEL_18;
  }

  v12 = v11;
  v13 = 0;
  v14 = *v19;
  do
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v19 != v14)
      {
        objc_enumerationMutation(devices);
      }

      v16 = *(*(&v18 + 1) + 8 * i);
      if (([v16 isPaired] & 1) != 0 || objc_msgSend(v16, "isCloudPaired"))
      {
        ++v13;
      }
    }

    v12 = [devices countByEnumeratingWithState:&v18 objects:v24 count:16];
  }

  while (v12);
  if (v13 < 1)
  {
    goto LABEL_17;
  }

  [v5 setResult:1];
LABEL_18:
  v22 = @"BTPairedCount";
  v23 = [NSNumber numberWithInteger:v13];
  [v5 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v23, &v22, 1)}];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestCompleted:?];
  return v5;
}

- (id)__testLargePNLWithConfiguration:(id)configuration
{
  v5 = objc_alloc_init(W5DiagnosticsTestResult);
  [v5 setTestID:47];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestStarted:?];
  v6 = [configuration objectForKeyedSubscript:@"InternalUUID"];
  LODWORD(configuration) = [objc_msgSend(configuration objectForKeyedSubscript:{@"UseCachedPNL", "BOOLValue"}];
  wifi = [(W5StatusManager *)self->_status wifi];
  if (configuration)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = [-[W5WiFiInterface cachedPreferredNetworksListWithUUID:](wifi cachedPreferredNetworksListWithUUID:{v8), "count"}];
  if (v9 < 0xA)
  {
    [v5 setDidPass:1];
  }

  else
  {
    [v5 setResult:1];
  }

  v11 = @"PNLCount";
  v12 = [NSNumber numberWithUnsignedInteger:v9];
  [v5 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v12, &v11, 1)}];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestCompleted:?];
  return v5;
}

- (id)__testLongBeaconIntervalWithConfiguration:(id)configuration
{
  v5 = objc_alloc_init(W5DiagnosticsTestResult);
  [v5 setTestID:34];
  [v5 setConfiguration:configuration];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestStarted:?];
  v6 = [configuration objectForKeyedSubscript:@"NetworkName"];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_msgSend(configuration objectForKeyedSubscript:{@"MaxScanCacheAge", "integerValue"}];
    +[NSDate timeIntervalSinceReferenceDate];
    if ((v8 & 0x8000000000000000) == 0)
    {
      v10 = v9;
      if (v9 - self->_wifiScanTimestamp > v8)
      {

        self->_wifiScanResults = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] performScanOnChannels:0 translate:1];
        self->_wifiScanTimestamp = v10;
      }
    }

    currentNetwork = [(W5DiagnosticsManager *)self __scanResultWithNetworkName:v7];
  }

  else
  {
    currentNetwork = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] currentNetwork];
  }

  v12 = currentNetwork;
  if (currentNetwork)
  {
    beaconInterval = [currentNetwork beaconInterval];
    if (beaconInterval == 100)
    {
      [v5 setDidPass:1];
    }

    else
    {
      [v5 setResult:1];
    }

    v15[0] = @"ScanResult";
    v15[1] = @"BeaconInterval";
    v16[0] = v12;
    v16[1] = [NSNumber numberWithInteger:beaconInterval];
    [v5 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v16, v15, 2)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestCompleted:?];
  return v5;
}

- (id)__testLongDTIMInterval
{
  v3 = objc_alloc_init(W5DiagnosticsTestResult);
  [v3 setTestID:35];
  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTestStarted:?];
  if ([(CWFInterface *)[(W5StatusManager *)self->_status corewifi] SSID])
  {
    dTIMInterval = [(CWFInterface *)[(W5StatusManager *)self->_status corewifi] DTIMInterval];
    if (dTIMInterval == 3)
    {
      [v3 setDidPass:1];
    }

    else
    {
      [v3 setResult:1];
    }

    v6 = @"DTIMInterval";
    v7 = [NSNumber numberWithUnsignedInteger:dTIMInterval];
    [v3 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v7, &v6, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTestCompleted:?];
  return v3;
}

- (id)__testConflictingPHYMode11acWithConfiguration:(id)configuration
{
  v5 = objc_alloc_init(W5DiagnosticsTestResult);
  [v5 setTestID:36];
  [v5 setConfiguration:configuration];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestStarted:?];
  v6 = [configuration objectForKeyedSubscript:@"NetworkName"];
  v7 = [objc_msgSend(configuration objectForKeyedSubscript:{@"MaxScanCacheAge", "integerValue"}];
  +[NSDate timeIntervalSinceReferenceDate];
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = v8;
    if (v8 - self->_wifiScanTimestamp > v7)
    {

      self->_wifiScanResults = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] performScanOnChannels:0 translate:1];
      self->_wifiScanTimestamp = v9;
    }
  }

  supportedPHYModes = [(CWFInterface *)[(W5StatusManager *)self->_status corewifi] supportedPHYModes];
  if ((supportedPHYModes & 0x80) != 0)
  {
    [v5 setDidPass:1];
    v27 = @"SupportedPHYModes";
    v28 = [NSNumber numberWithUnsignedInt:supportedPHYModes];
    v19 = &v28;
    v20 = &v27;
LABEL_22:
    v21 = 1;
    goto LABEL_23;
  }

  v11 = +[NSMutableArray array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  wifiScanResults = self->_wifiScanResults;
  v13 = [(NSArray *)wifiScanResults countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(wifiScanResults);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        if ([v17 supportsPHYMode:128] && (objc_msgSend(v17, "supportsPHYMode:", 16) & 1) == 0 && (!v6 || objc_msgSend(objc_msgSend(v17, "ssidString"), "isEqualToString:", v6)) && (objc_msgSend(v11, "containsObject:", v17) & 1) == 0)
        {
          [v11 addObject:v17];
        }
      }

      v14 = [(NSArray *)wifiScanResults countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v14);
  }

  if (![v11 count])
  {
    [v5 setDidPass:1];
    v29 = @"SupportedPHYModes";
    v30 = [NSNumber numberWithUnsignedInt:supportedPHYModes];
    v19 = &v30;
    v20 = &v29;
    goto LABEL_22;
  }

  [v5 setResult:1];
  v31[0] = @"SupportedPHYModes";
  v18 = [NSNumber numberWithUnsignedInt:supportedPHYModes];
  v31[1] = @"ScanResults";
  v32[0] = v18;
  v32[1] = [v11 copy];
  v19 = v32;
  v20 = v31;
  v21 = 2;
LABEL_23:
  [v5 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v19, v20, v21)}];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestCompleted:?];
  return v5;
}

- (id)__testConflictingPHYMode11nWithConfiguration:(id)configuration
{
  v5 = objc_alloc_init(W5DiagnosticsTestResult);
  [v5 setTestID:37];
  [v5 setConfiguration:configuration];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestStarted:?];
  v6 = [configuration objectForKeyedSubscript:@"NetworkName"];
  v7 = [objc_msgSend(configuration objectForKeyedSubscript:{@"MaxScanCacheAge", "integerValue"}];
  +[NSDate timeIntervalSinceReferenceDate];
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = v8;
    if (v8 - self->_wifiScanTimestamp > v7)
    {

      self->_wifiScanResults = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] performScanOnChannels:0 translate:1];
      self->_wifiScanTimestamp = v9;
    }
  }

  supportedPHYModes = [(CWFInterface *)[(W5StatusManager *)self->_status corewifi] supportedPHYModes];
  if ((supportedPHYModes & 0x10) != 0)
  {
    [v5 setDidPass:1];
    v27 = @"SupportedPHYModes";
    v28 = [NSNumber numberWithUnsignedInt:supportedPHYModes];
    v19 = &v28;
    v20 = &v27;
LABEL_23:
    v21 = 1;
    goto LABEL_24;
  }

  v11 = +[NSMutableArray array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  wifiScanResults = self->_wifiScanResults;
  v13 = [(NSArray *)wifiScanResults countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(wifiScanResults);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        if ([v17 supportsPHYMode:16] && (objc_msgSend(v17, "supportsPHYMode:", 2) & 1) == 0 && (objc_msgSend(v17, "supportsPHYMode:", 8) & 1) == 0 && (!v6 || objc_msgSend(objc_msgSend(v17, "ssidString"), "isEqualToString:", v6)) && (objc_msgSend(v11, "containsObject:", v17) & 1) == 0)
        {
          [v11 addObject:v17];
        }
      }

      v14 = [(NSArray *)wifiScanResults countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v14);
  }

  if (![v11 count])
  {
    [v5 setDidPass:1];
    v29 = @"SupportedPHYModes";
    v30 = [NSNumber numberWithUnsignedInt:supportedPHYModes];
    v19 = &v30;
    v20 = &v29;
    goto LABEL_23;
  }

  [v5 setResult:1];
  v31[0] = @"SupportedPHYModes";
  v18 = [NSNumber numberWithUnsignedInt:supportedPHYModes];
  v31[1] = @"ScanResults";
  v32[0] = v18;
  v32[1] = [v11 copy];
  v19 = v32;
  v20 = v31;
  v21 = 2;
LABEL_24:
  [v5 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v19, v20, v21)}];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestCompleted:?];
  return v5;
}

- (id)__testPoorSignalWithConfiguration:(id)configuration
{
  v5 = objc_alloc_init(W5DiagnosticsTestResult);
  [v5 setTestID:32];
  [v5 setConfiguration:configuration];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestStarted:?];
  v6 = [configuration objectForKeyedSubscript:@"NetworkName"];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_msgSend(configuration objectForKeyedSubscript:{@"MaxScanCacheAge", "integerValue"}];
    +[NSDate timeIntervalSinceReferenceDate];
    if ((v8 & 0x8000000000000000) == 0)
    {
      v10 = v9;
      if (v9 - self->_wifiScanTimestamp > v8)
      {

        self->_wifiScanResults = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] performScanOnChannels:0 translate:1];
        self->_wifiScanTimestamp = v10;
      }
    }

    v11 = [(W5DiagnosticsManager *)self __scanResultWithNetworkName:v7];
    rssi = [v11 rssi];
    noise = [v11 noise];
    v14 = noise;
    if (rssi < -70 || rssi - noise <= 9)
    {
      [v5 setResult:1];
    }

    else
    {
      [v5 setDidPass:1];
    }

    v23[0] = @"RSSI";
    v23[1] = @"Noise";
    v24[0] = [NSNumber numberWithInteger:rssi];
    v24[1] = [NSNumber numberWithInteger:v14];
    v18 = [+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary mutableCopy:v24];
    v19 = v18;
    if (v11)
    {
      [(NSDictionary *)v18 setObject:v11 forKeyedSubscript:@"ScanResult"];
    }

    goto LABEL_17;
  }

  if ([(CWFInterface *)[(W5StatusManager *)self->_status corewifi] SSID])
  {
    rSSI = [(CWFInterface *)[(W5StatusManager *)self->_status corewifi] RSSI];
    noise2 = [(CWFInterface *)[(W5StatusManager *)self->_status corewifi] noise];
    v17 = noise2;
    if (rSSI < -70 || rSSI - noise2 <= 9)
    {
      [v5 setResult:1];
    }

    else
    {
      [v5 setDidPass:1];
    }

    v21[0] = @"RSSI";
    v21[1] = @"Noise";
    v22[0] = [NSNumber numberWithInteger:rSSI];
    v22[1] = [NSNumber numberWithInteger:v17];
    v19 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
LABEL_17:
    [v5 setInfo:v19];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestCompleted:?];
  return v5;
}

- (id)__testPNLContainsHiddenWithConfiguration:(id)configuration
{
  v5 = objc_alloc_init(W5DiagnosticsTestResult);
  [v5 setTestID:48];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestStarted:?];
  v6 = +[NSMutableArray array];
  v7 = [configuration objectForKeyedSubscript:@"InternalUUID"];
  LODWORD(configuration) = [objc_msgSend(configuration objectForKeyedSubscript:{@"UseCachedPNL", "BOOLValue"}];
  wifi = [(W5StatusManager *)self->_status wifi];
  if (configuration)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(W5WiFiInterface *)wifi cachedPreferredNetworksListWithUUID:v9];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        if ([v15 isHidden])
        {
          [v6 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v12);
  }

  if ([v6 count])
  {
    [v5 setResult:1];
    v21 = @"PreferredNetworks";
    v22 = [v6 copy];
    [v5 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v22, &v21, 1)}];
  }

  else
  {
    [v5 setDidPass:1];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestCompleted:?];
  return v5;
}

- (id)__preferredNetworkWithNetworkName:(id)name configuration:(id)configuration
{
  configurationCopy = configuration;
  v7 = [configuration objectForKeyedSubscript:@"InternalUUID"];
  LODWORD(configurationCopy) = [objc_msgSend(configurationCopy objectForKeyedSubscript:{@"UseCachedPNL", "BOOLValue"}];
  wifi = [(W5StatusManager *)self->_status wifi];
  if (configurationCopy)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(W5WiFiInterface *)wifi cachedPreferredNetworksListWithUUID:v9];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v13 = *v18;
LABEL_6:
  v14 = 0;
  while (1)
  {
    if (*v18 != v13)
    {
      objc_enumerationMutation(v10);
    }

    v15 = *(*(&v17 + 1) + 8 * v14);
    if ([objc_msgSend(v15 "ssidString")])
    {
      return v15;
    }

    if (v12 == ++v14)
    {
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v12)
      {
        goto LABEL_6;
      }

      return 0;
    }
  }
}

- (id)__scanResultWithNetworkName:(id)name
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  wifiScanResults = self->_wifiScanResults;
  v5 = [(NSArray *)wifiScanResults countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v14;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(wifiScanResults);
      }

      v10 = *(*(&v13 + 1) + 8 * i);
      if ([objc_msgSend(v10 "ssidString")])
      {
        if (!v7 || (v11 = [v10 rssi], v11 > objc_msgSend(v7, "rssi")))
        {
          v7 = v10;
        }
      }
    }

    v6 = [(NSArray *)wifiScanResults countByEnumeratingWithState:&v13 objects:v17 count:16];
  }

  while (v6);
  return v7;
}

- (id)__testHiddenNetworkWithConfiguration:(id)configuration
{
  v5 = objc_alloc_init(W5DiagnosticsTestResult);
  [v5 setTestID:43];
  [v5 setConfiguration:configuration];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestStarted:?];
  v6 = [configuration objectForKeyedSubscript:@"NetworkName"];
  if (v6)
  {
    currentPreferredNetwork = [(W5DiagnosticsManager *)self __preferredNetworkWithNetworkName:v6 configuration:configuration];
  }

  else
  {
    currentPreferredNetwork = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] currentPreferredNetwork];
  }

  if ([currentPreferredNetwork isHidden])
  {
    [v5 setResult:1];
  }

  else
  {
    [v5 setDidPass:1];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestCompleted:?];
  return v5;
}

- (id)__testAmbiguousNetworkNameWithConfiguration:(id)configuration
{
  v5 = objc_alloc_init(W5DiagnosticsTestResult);
  [v5 setTestID:42];
  [v5 setConfiguration:configuration];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestStarted:?];
  v6 = [configuration objectForKeyedSubscript:@"NetworkName"];
  if (v6 || (v6 = [(CWFInterface *)[(W5StatusManager *)self->_status corewifi] networkName]) != 0)
  {
    v7 = v6;
    if ([+[W5DiagnosticsManager __ambiguousSSIDs](W5DiagnosticsManager "__ambiguousSSIDs")])
    {
      [v5 setResult:1];
    }

    else
    {
      [v5 setDidPass:1];
    }

    v9 = @"NetworkName";
    v10 = v7;
    [v5 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v10, &v9, 1)}];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestCompleted:?];
  return v5;
}

- (id)__testWiFiHiddenScanResultsWithConfiguration:(id)configuration
{
  v5 = objc_alloc_init(W5DiagnosticsTestResult);
  [v5 setTestID:30];
  [v5 setConfiguration:configuration];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestStarted:?];
  v6 = [objc_msgSend(configuration objectForKeyedSubscript:{@"MaxScanCacheAge", "integerValue"}];
  +[NSDate timeIntervalSinceReferenceDate];
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = v7;
    if (v7 - self->_wifiScanTimestamp > v6)
    {

      self->_wifiScanResults = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] performScanOnChannels:0 translate:1];
      self->_wifiScanTimestamp = v8;
    }
  }

  v9 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  wifiScanResults = self->_wifiScanResults;
  v11 = [(NSArray *)wifiScanResults countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(wifiScanResults);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        if (![v15 ssid])
        {
          [v9 addObject:v15];
        }
      }

      v12 = [(NSArray *)wifiScanResults countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v12);
  }

  if ([v9 count])
  {
    [v5 setResult:1];
    v21 = @"ScanResults";
    v22 = [v9 copy];
    [v5 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v22, &v21, 1)}];
  }

  else
  {
    [v5 setDidPass:1];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestCompleted:?];
  return v5;
}

- (id)__testWiFiNoScanResultsWithConfiguration:(id)configuration
{
  v5 = objc_alloc_init(W5DiagnosticsTestResult);
  [v5 setTestID:31];
  [v5 setConfiguration:configuration];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestStarted:?];
  v6 = [objc_msgSend(configuration objectForKeyedSubscript:{@"MaxScanCacheAge", "integerValue"}];
  +[NSDate timeIntervalSinceReferenceDate];
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = v7;
    if (v7 - self->_wifiScanTimestamp > v6)
    {

      self->_wifiScanResults = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] performScanOnChannels:0 translate:1];
      self->_wifiScanTimestamp = v8;
    }
  }

  if ([(NSArray *)self->_wifiScanResults count])
  {
    [v5 setDidPass:1];
  }

  else
  {
    [v5 setResult:1];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestCompleted:?];
  return v5;
}

- (id)__testDownloadSpeedWithConfiguration:(id)configuration
{
  v5 = objc_alloc_init(W5DiagnosticsTestResult);
  [v5 setTestID:49];
  [v5 setConfiguration:configuration];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestStarted:?];
  v6 = [configuration objectForKeyedSubscript:@"SpeedTestFileSizes"];
  v7 = [configuration objectForKeyedSubscript:@"SpeedTestTimeout"];
  if (v7)
  {
    unsignedIntegerValue = [v7 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 5;
  }

  v16 = 0;
  if (!v6)
  {
    v6 = &off_1000F40B0;
  }

  if ([v6 count])
  {
    v9 = 1;
    while (1)
    {
      v10 = -[W5DiagnosticsManager __downloadSpeedtestWithFileSize:timeout:error:](self, "__downloadSpeedtestWithFileSize:timeout:error:", [objc_msgSend(v6 objectAtIndexedSubscript:{v9 - 1), "unsignedIntValue"}], unsignedIntegerValue, &v16);
      if (!v10)
      {
        break;
      }

      v11 = v10;
      fileSize = [v10 fileSize];
      [v11 speed];
      v14 = v13;
      if (v9 < [v6 count])
      {
        ++v9;
        if ((8 * fileSize) / (v14 * 1000000.0) <= 1.0)
        {
          continue;
        }
      }

      [v5 setDidPass:1];
      [v5 setResult:1];
      v17 = @"Mbps";
      [v11 speed];
      v18 = [NSNumber numberWithDouble:?];
      [v5 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v18, &v17, 1)}];
      break;
    }
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestCompleted:?];
  return v5;
}

- (id)__testUploadSpeedWithConfiguration:(id)configuration
{
  v5 = objc_alloc_init(W5DiagnosticsTestResult);
  [v5 setTestID:50];
  [v5 setConfiguration:configuration];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestStarted:?];
  v6 = [configuration objectForKeyedSubscript:@"SpeedTestFileSizes"];
  v7 = [configuration objectForKeyedSubscript:@"SpeedTestTimeout"];
  if (v7)
  {
    unsignedIntegerValue = [v7 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 5;
  }

  v16 = 0;
  if (!v6)
  {
    v6 = &off_1000F40C8;
  }

  if ([v6 count])
  {
    v9 = 1;
    while (1)
    {
      v10 = -[W5DiagnosticsManager __uploadSpeedtestWithFileSize:timeout:error:](self, "__uploadSpeedtestWithFileSize:timeout:error:", [objc_msgSend(v6 objectAtIndexedSubscript:{v9 - 1), "unsignedIntValue"}], unsignedIntegerValue, &v16);
      if (!v10)
      {
        break;
      }

      v11 = v10;
      fileSize = [v10 fileSize];
      [v11 speed];
      v14 = v13;
      if (v9 < [v6 count])
      {
        ++v9;
        if ((8 * fileSize) / (v14 * 1000000.0) <= 1.0)
        {
          continue;
        }
      }

      [v5 setDidPass:1];
      [v5 setResult:1];
      v17 = @"Mbps";
      [v11 speed];
      v18 = [NSNumber numberWithDouble:?];
      [v5 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v18, &v17, 1)}];
      break;
    }
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestCompleted:?];
  return v5;
}

- (id)__testLeakyAP
{
  v3 = objc_alloc_init(W5DiagnosticsTestResult);
  [v3 setTestID:51];
  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTestStarted:?];
  currentNetwork = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] currentNetwork];
  [currentNetwork scanRecord];
  v5 = WiFiNetworkCreate();
  if (v5 && (v6 = v5, [currentNetwork bssid], IsAPLeaky = WiFiNetworkIsAPLeaky(), CFRelease(v6), IsAPLeaky))
  {
    [v3 setResult:1];
  }

  else
  {
    [v3 setDidPass:1];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTestCompleted:?];
  return v3;
}

- (id)__testWiFiLink
{
  v3 = objc_alloc_init(W5DiagnosticsTestResult);
  [v3 setTestID:52];
  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTestStarted:?];
  networkName = [(CWFInterface *)[(W5StatusManager *)self->_status corewifi] networkName];
  if (networkName)
  {
    v6 = @"NetworkName";
    v7 = networkName;
    [v3 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v7, &v6, 1)}];
    [v3 setResult:1];
    [v3 setDidPass:1];
  }

  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTestCompleted:?];
  return v3;
}

- (id)__testWiFiIsPrimaryIPv4
{
  v3 = objc_alloc_init(W5DiagnosticsTestResult);
  [v3 setTestID:57];
  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTestStarted:?];
  globalIPv4InterfaceName = [(CWFInterface *)[(W5StatusManager *)self->_status corewifi] globalIPv4InterfaceName];
  globalIPv4NetworkServiceName = [(CWFInterface *)[(W5StatusManager *)self->_status corewifi] globalIPv4NetworkServiceName];
  globalIPv4NetworkServiceID = [(CWFInterface *)[(W5StatusManager *)self->_status corewifi] globalIPv4NetworkServiceID];
  if ([-[CWFInterface networkServiceID](-[W5StatusManager corewifi](self->_status "corewifi")])
  {
    [v3 setResult:1];
    [v3 setDidPass:1];
  }

  v7 = +[NSMutableDictionary dictionary];
  [v7 setObject:globalIPv4InterfaceName forKeyedSubscript:@"IPv4InterfaceName"];
  [v7 setObject:globalIPv4NetworkServiceName forKeyedSubscript:@"IPv4ServiceName"];
  [v7 setObject:globalIPv4NetworkServiceID forKeyedSubscript:@"IPv4ServiceID"];
  [v3 setInfo:v7];
  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTestCompleted:?];
  return v3;
}

- (id)__testWiFiIsPrimaryIPv6
{
  v3 = objc_alloc_init(W5DiagnosticsTestResult);
  [v3 setTestID:58];
  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTestStarted:?];
  globalIPv6InterfaceName = [(CWFInterface *)[(W5StatusManager *)self->_status corewifi] globalIPv6InterfaceName];
  globalIPv6NetworkServiceName = [(CWFInterface *)[(W5StatusManager *)self->_status corewifi] globalIPv6NetworkServiceName];
  globalIPv6NetworkServiceID = [(CWFInterface *)[(W5StatusManager *)self->_status corewifi] globalIPv6NetworkServiceID];
  if ([-[CWFInterface networkServiceID](-[W5StatusManager corewifi](self->_status "corewifi")])
  {
    [v3 setResult:1];
    [v3 setDidPass:1];
  }

  v7 = +[NSMutableDictionary dictionary];
  [v7 setObject:globalIPv6InterfaceName forKeyedSubscript:@"IPv6InterfaceName"];
  [v7 setObject:globalIPv6NetworkServiceName forKeyedSubscript:@"IPv6ServiceName"];
  [v7 setObject:globalIPv6NetworkServiceID forKeyedSubscript:@"IPv6ServiceID"];
  [v3 setInfo:v7];
  +[NSDate timeIntervalSinceReferenceDate];
  [v3 setTestCompleted:?];
  return v3;
}

- (id)__testReachabilityToPeersWithConfiguration:(id)configuration
{
  v5 = objc_alloc_init(W5DiagnosticsTestResult);
  [v5 setTestID:63];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setTestStarted:?];
  v6 = [configuration objectForKeyedSubscript:@"PingCount"];
  v7 = [configuration objectForKeyedSubscript:@"PingTimeout"];
  v8 = [configuration objectForKeyedSubscript:@"PingInterval"];
  v9 = [configuration objectForKeyedSubscript:@"PingWait"];
  v10 = [configuration objectForKeyedSubscript:@"PingDataLength"];
  if (v6)
  {
    integerValue = [v6 integerValue];
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    integerValue = 1;
    if (v7)
    {
LABEL_3:
      [v7 doubleValue];
      v12 = v11;
      if (v8)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  v12 = 2.0;
  if (v8)
  {
LABEL_4:
    [v8 doubleValue];
    v14 = v13;
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_10:
    v16 = 2.0;
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_11:
    unsignedIntegerValue = 0;
    goto LABEL_12;
  }

LABEL_9:
  v14 = 0.1;
  if (!v9)
  {
    goto LABEL_10;
  }

LABEL_5:
  [v9 doubleValue];
  v16 = v15;
  if (!v10)
  {
    goto LABEL_11;
  }

LABEL_6:
  unsignedIntegerValue = [v10 unsignedIntegerValue];
LABEL_12:
  v17 = [configuration objectForKeyedSubscript:@"PingTrafficClass"];
  v18 = [configuration objectForKeyedSubscript:@"AddressesToPing"];
  v19 = objc_opt_new();
  v30 = v5;
  if (-[CWFInterface SSID](-[W5StatusManager corewifi](self->_status, "corewifi"), "SSID") && (v35 = 0u, v36 = 0u, v33 = 0u, v34 = 0u, (v20 = [v18 countByEnumeratingWithState:&v33 objects:v39 count:16]) != 0))
  {
    v21 = v20;
    v22 = *v34;
    LODWORD(v23) = 1;
    LODWORD(v24) = 1;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v26 = [(W5DiagnosticsManager *)self __performPingWithAddress:*(*(&v33 + 1) + 8 * i) count:integerValue timeout:v17 wait:[(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] interfaceName] interval:unsignedIntegerValue trafficClass:v12 interfaceName:v16 dataLength:v14];
        [v26 packetLoss];
        v28 = v27 < 100.0;
        v23 = v28 & v23;
        v24 = v28 & v24;
        [v19 addObject:v26];
      }

      v21 = [v18 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v21);
  }

  else
  {
    v23 = 1;
    v24 = 1;
  }

  [v30 setDidPass:v24];
  [v30 setResult:v23];
  v37 = @"PingsReceived";
  v38 = v19;
  [v30 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v38, &v37, 1)}];
  +[NSDate timeIntervalSinceReferenceDate];
  [v30 setTestCompleted:?];
  return v30;
}

- (id)__orderedChannelWeights:(id)weights
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000474C8;
  v4[3] = &unk_1000E2868;
  v4[4] = weights;
  return [objc_msgSend(weights "allKeys")];
}

- (id)__overlappingChannelsForChannel:(id)channel supportedChannels:(id)channels
{
  v6 = +[NSMutableArray array];
  v7 = +[NSMutableArray array];
  channel = [channel channel];
  if (([channel flags] & 0x800) != 0)
  {
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 16)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 15)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 14)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 13)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 12)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 11)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 10)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 9)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 8)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 7)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 6)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 5)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 4)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 3)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 2)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 1)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 1)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 2)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 3)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 4)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 5)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 6)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 7)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 8)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 9)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 10)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 11)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 12)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 13)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 14)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 15)}];
    v11 = channel + 16;
  }

  else if (([channel flags] & 0x400) != 0)
  {
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 8)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 7)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 6)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 5)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 4)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 3)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 2)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 1)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 1)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 2)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 3)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 4)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 5)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 6)}];
    [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 7)}];
    v11 = channel + 8;
  }

  else
  {
    flags = [channel flags];
    flags2 = [channel flags];
    if ((flags & 4) != 0)
    {
      v12 = -2;
      if ((flags2 & 0x200) != 0)
      {
        v12 = 2;
      }

      v13 = (v12 + 2 * channel) >> 1;
      [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v13 - 4)}];
      [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v13 - 3)}];
      [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v13 - 2)}];
      [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v13 - 1)}];
      [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v13)}];
      [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v13 + 1)}];
      [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v13 + 2)}];
      [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v13 + 3)}];
      v11 = (v13 + 4);
    }

    else
    {
      if ((flags2 & 2) == 0)
      {
        goto LABEL_12;
      }

      [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 2)}];
      [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 1)}];
      [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel)}];
      [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 1)}];
      v11 = channel + 2;
    }
  }

  [v7 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v11)}];
LABEL_12:
  v14 = [W5DiagnosticsManager __channelNumbersForWiFiChannels:channels];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v7);
        }

        v19 = *(*(&v21 + 1) + 8 * i);
        if ([v14 containsObject:v19])
        {
          [v6 addObject:v19];
        }
      }

      v16 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }

  return [v6 copy];
}

+ (id)__channelNumbersForWiFiChannels:(id)channels
{
  v4 = +[NSMutableArray array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [channels countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(channels);
        }

        [v4 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", objc_msgSend(*(*(&v10 + 1) + 8 * v8), "channel"))}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [channels countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return [v4 copy];
}

- (id)__only5GHzNonDFSChannels:(id)channels
{
  v4 = +[NSMutableArray array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [channels countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(channels);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (([v9 flags] & 0x10) != 0 && (objc_msgSend(v9, "flags") & 0x100) == 0)
        {
          [v4 addObject:v9];
        }
      }

      v6 = [channels countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return [v4 copy];
}

- (id)__only2GHzChannels:(id)channels
{
  v4 = +[NSMutableArray array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [channels countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(channels);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (([v9 flags] & 8) != 0 && (objc_msgSend(v9, "flags") & 2) != 0)
        {
          [v4 addObject:v9];
        }
      }

      v6 = [channels countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return [v4 copy];
}

- (id)__only5GHzChannels:(id)channels
{
  v4 = +[NSMutableArray array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [channels countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(channels);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (([v9 flags] & 0x10) != 0 && (objc_msgSend(v9, "flags") & 2) != 0)
        {
          [v4 addObject:v9];
        }
      }

      v6 = [channels countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return [v4 copy];
}

- (id)__only2GHz_1_6_11_14_Channels:(id)channels
{
  v4 = +[NSMutableArray array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [channels countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(channels);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (([v9 flags] & 8) != 0 && (objc_msgSend(v9, "flags") & 2) != 0 && (objc_msgSend(v9, "channel") == 1 || objc_msgSend(v9, "channel") == 6 || objc_msgSend(v9, "channel") == 11 || objc_msgSend(v9, "channel") == 14))
        {
          [v4 addObject:v9];
        }
      }

      v6 = [channels countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return [v4 copy];
}

- (id)__only5GHz20MHz40MHzChannels:(id)channels
{
  v4 = +[NSMutableArray array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [channels countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(channels);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (([v9 flags] & 0x10) != 0 && ((objc_msgSend(v9, "flags") & 2) != 0 || (objc_msgSend(v9, "flags") & 4) != 0))
        {
          [v4 addObject:v9];
        }
      }

      v6 = [channels countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return [v4 copy];
}

- (id)__only5GHz40MHzChannels:(id)channels
{
  v4 = +[NSMutableArray array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [channels countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(channels);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (([v9 flags] & 0x10) != 0 && (objc_msgSend(v9, "flags") & 4) != 0)
        {
          [v4 addObject:v9];
        }
      }

      v6 = [channels countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return [v4 copy];
}

- (id)__filteredChannelWeights:(id)weights channels:(id)channels
{
  v6 = +[NSMutableDictionary dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allKeys = [weights allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([channels containsObject:v12])
        {
          [v6 setObject:objc_msgSend(weights forKeyedSubscript:{"objectForKeyedSubscript:", v12), v12}];
        }
      }

      v9 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return [v6 copy];
}

- (id)__adjust5GHzWeights:(id)weights
{
  v4 = +[NSMutableDictionary dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allKeys = [weights allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (([v10 flags] & 0x100) != 0)
        {
          v11 = 0.1;
        }

        else
        {
          v11 = 0.0;
        }

        if (([v10 flags] & 4) != 0)
        {
          v11 = v11 + -0.1;
        }

        if ([v10 channel] > 48)
        {
          v11 = v11 + -0.1;
        }

        if ([v10 channel] > 148)
        {
          v11 = v11 + -0.1;
        }

        [objc_msgSend(weights objectForKeyedSubscript:{v10), "floatValue"}];
        [v4 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", v11 + v12), v10}];
      }

      v7 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return [v4 copy];
}

- (id)__applyChannelWeights:(id)weights supportedChannels:(id)channels
{
  v23 = +[NSMutableDictionary dictionary];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [channels countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(channels);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = [(W5DiagnosticsManager *)self __overlappingChannelsForChannel:v10 supportedChannels:channels];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v12 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (!v12)
        {
          goto LABEL_15;
        }

        v13 = v12;
        v14 = *v25;
        v15 = 0.0;
        v16 = 0.0;
        do
        {
          for (j = 0; j != v13; j = j + 1)
          {
            if (*v25 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v15 = v15 + 1.0;
            [objc_msgSend(weights objectForKeyedSubscript:{*(*(&v24 + 1) + 8 * j)), "floatValue"}];
            v16 = v16 + v18;
          }

          v13 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v13);
        if (v16 > 0.0)
        {
          *&v19 = v16 / v15;
          v20 = [NSNumber numberWithFloat:v19];
        }

        else
        {
LABEL_15:
          v20 = &off_1000F49E8;
        }

        [v23 setObject:v20 forKeyedSubscript:v10];
      }

      v7 = [channels countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  return [v23 copy];
}

- (id)__channelWeightsForScanResults:(id)results supportedChannels:(id)channels rssiThreshold:(int64_t)threshold
{
  v6 = +[NSMutableDictionary dictionary];
  v7 = [W5DiagnosticsManager __channelNumbersForWiFiChannels:channels];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v42;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v42 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v6 setObject:&off_1000EF140 forKeyedSubscript:*(*(&v41 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v9);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v31 = [results countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v31)
  {
    v29 = *v38;
    do
    {
      v12 = 0;
      do
      {
        if (*v38 != v29)
        {
          objc_enumerationMutation(results);
        }

        v32 = v12;
        v13 = *(*(&v37 + 1) + 8 * v12);
        if ([v13 rssi] >= threshold)
        {
          v14 = -[W5DiagnosticsManager __channelWeightsForChannel:](self, "__channelWeightsForChannel:", [v13 channel]);
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          allKeys = [v14 allKeys];
          v16 = [allKeys countByEnumeratingWithState:&v33 objects:v45 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v34;
            do
            {
              for (j = 0; j != v17; j = j + 1)
              {
                if (*v34 != v18)
                {
                  objc_enumerationMutation(allKeys);
                }

                v20 = *(*(&v33 + 1) + 8 * j);
                v21 = [v14 objectForKeyedSubscript:v20];
                [objc_msgSend(v6 objectForKeyedSubscript:{v20), "floatValue"}];
                v23 = v22;
                [v21 floatValue];
                *&v25 = v23 + v24;
                [v6 setObject:+[NSNumber numberWithFloat:](NSNumber forKeyedSubscript:{"numberWithFloat:", v25), v20}];
              }

              v17 = [allKeys countByEnumeratingWithState:&v33 objects:v45 count:16];
            }

            while (v17);
          }
        }

        v12 = v32 + 1;
      }

      while ((v32 + 1) != v31);
      v31 = [results countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v31);
  }

  return [(W5DiagnosticsManager *)self __filteredChannelWeights:v6 channels:v7];
}

- (id)__occupiedChannelsForScanResults:(id)results supportedChannels:(id)channels rssiThreshold:(int64_t)threshold ignoreChannel:(id)channel
{
  v10 = +[NSMutableOrderedSet orderedSet];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = [results countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(results);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        if ([v15 rssi] >= threshold)
        {
          channel = [channel channel];
          if (channel != [objc_msgSend(v15 "channel")])
          {
            [v10 addObjectsFromArray:{-[W5DiagnosticsManager __overlappingChannelsForChannel:supportedChannels:](self, "__overlappingChannelsForChannel:supportedChannels:", objc_msgSend(v15, "channel"), channels)}];
          }
        }
      }

      v12 = [results countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  return [objc_msgSend(v10 "array")];
}

- (id)__channelWeightsForChannel:(id)channel
{
  v4 = +[NSMutableDictionary dictionary];
  channel = [channel channel];
  if (([channel flags] & 0x800) != 0)
  {
    [v4 setObject:&off_1000EEF78 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 16)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 15)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 14)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 13)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 12)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 11)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 10)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 9)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 8)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 7)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 6)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 5)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 4)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 3)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 2)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 1)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 1)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 2)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 3)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 4)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 5)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 6)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 7)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 8)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 9)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 10)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 11)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 12)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 13)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 14)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 15)}];
    v8 = channel - 16;
  }

  else if (([channel flags] & 0x400) != 0)
  {
    [v4 setObject:&off_1000EEF78 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 8)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 7)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 6)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 5)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 4)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 3)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 2)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 1)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 1)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 2)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 3)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 4)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 5)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 6)}];
    [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 7)}];
    v8 = channel - 8;
  }

  else
  {
    flags = [channel flags];
    flags2 = [channel flags];
    if ((flags & 4) != 0)
    {
      v9 = -2;
      if ((flags2 & 0x200) != 0)
      {
        v9 = 2;
      }

      v10 = (v9 + 2 * channel) >> 1;
      [v4 setObject:&off_1000EEF78 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v10 + 4)}];
      [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v10 + 3)}];
      [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v10 + 2)}];
      [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v10 + 1)}];
      [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v10)}];
      [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v10 - 1)}];
      [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v10 - 2)}];
      [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v10 - 3)}];
      v8 = (v10 - 4);
    }

    else
    {
      if ((flags2 & 2) == 0)
      {
        goto LABEL_12;
      }

      [v4 setObject:&off_1000EEF78 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 2)}];
      [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel + 1)}];
      [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel)}];
      [v4 setObject:&off_1000EEFF0 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", channel - 1)}];
      v8 = channel - 2;
    }
  }

  [v4 setObject:&off_1000EEF78 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v8)}];
LABEL_12:
  v11 = [v4 copy];

  return v11;
}

+ (id)__ambiguousSSIDs
{
  if (qword_100106C00 != -1)
  {
    dispatch_once(&qword_100106C00, &stru_1000E2888);
  }

  return qword_100106BF8;
}

- (BOOL)__isUsingCustomProxySettings:(id)settings
{
  if ([settings count] != 2)
  {
    return [settings count] != 0;
  }

  v4 = [settings objectForKeyedSubscript:kSCPropNetProxiesExceptionsList];
  if ([v4 count] == 2 && objc_msgSend(v4, "containsObject:", @"*.local") && objc_msgSend(v4, "containsObject:", @"169.254/16"))
  {
    return [objc_msgSend(settings objectForKeyedSubscript:{kSCPropNetProxiesFTPPassive), "BOOLValue"}] ^ 1;
  }

  else
  {
    return 1;
  }
}

- (int64_t)__ipv6ConfigMethodForDescription:(id)description
{
  if ([description isEqualToString:kSCValNetIPv6ConfigMethodAutomatic])
  {
    return 1;
  }

  if ([description isEqualToString:kSCValNetIPv6ConfigMethodLinkLocal])
  {
    return 2;
  }

  if ([description isEqualToString:kSCValNetIPv6ConfigMethodManual])
  {
    return 3;
  }

  if ([description isEqualToString:kSCValNetIPv6ConfigMethodRouterAdvertisement])
  {
    return 4;
  }

  if ([description isEqualToString:kSCValNetIPv6ConfigMethod6to4])
  {
    return 5;
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (int64_t)__ipv4ConfigMethodForDescription:(id)description
{
  if ([description isEqualToString:kSCValNetIPv4ConfigMethodAutomatic])
  {
    return 1;
  }

  if ([description isEqualToString:kSCValNetIPv4ConfigMethodLinkLocal])
  {
    return 2;
  }

  if ([description isEqualToString:kSCValNetIPv4ConfigMethodDHCP])
  {
    return 3;
  }

  if ([description isEqualToString:kSCValNetIPv4ConfigMethodManual])
  {
    return 4;
  }

  if ([description isEqualToString:kSCValNetIPv4ConfigMethodBOOTP])
  {
    return 5;
  }

  if ([description isEqualToString:kSCValNetIPv4ConfigMethodINFORM])
  {
    return 6;
  }

  if ([description isEqualToString:kSCValNetIPv4ConfigMethodPPP])
  {
    return 7;
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (id)__runDiagnosticsTest:(id)test
{
  [test testID];
  v5 = W5DescriptionForDiagnosticsTestID();
  if (-[NSArray containsObject:](-[W5StatusManager bootArgs](self->_status, "bootArgs"), "containsObject:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@=%ld", @"wifivelocity-exclude-test", [test testID])) || -[NSArray containsObject:](-[W5StatusManager bootArgs](self->_status, "bootArgs"), "containsObject:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@='%@'", @"wifivelocity-exclude-test", v5)))
  {
    v6 = sub_100098A04();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138543618;
      v24 = v5;
      v25 = 2048;
      testID = [test testID];
      _os_log_send_and_compose_impl();
    }

    return 0;
  }

  else
  {
    v9 = sub_100098A04();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:+[NSDate date]];
      v23 = 138543874;
      v24 = v10;
      v25 = 2114;
      testID = [objc_msgSend(objc_msgSend(test "uuid")];
      v27 = 2114;
      v28 = v5;
      LODWORD(v22) = 32;
      v21 = &v23;
      _os_log_send_and_compose_impl();
    }

    switch([test testID])
    {
      case 1uLL:
        __testPingLANUsingIMFoundation = -[W5DiagnosticsManager __testPingLANWithConfiguration:](self, "__testPingLANWithConfiguration:", [test configuration]);
        goto LABEL_75;
      case 2uLL:
        __testPingLANUsingIMFoundation = [(W5DiagnosticsManager *)self __testPingLANUsingIMFoundation];
        goto LABEL_75;
      case 3uLL:
        __testPingLANUsingIMFoundation = -[W5DiagnosticsManager __testPingLANUsingCFNetworkWithConfiguration:](self, "__testPingLANUsingCFNetworkWithConfiguration:", [test configuration]);
        goto LABEL_75;
      case 4uLL:
        __testPingLANUsingIMFoundation = -[W5DiagnosticsManager __testPingWANWithConfiguration:](self, "__testPingWANWithConfiguration:", [test configuration]);
        goto LABEL_75;
      case 5uLL:
        __testPingLANUsingIMFoundation = [(W5DiagnosticsManager *)self __testPingWANUsingIMFoundation];
        goto LABEL_75;
      case 6uLL:
        __testPingLANUsingIMFoundation = -[W5DiagnosticsManager __testPingWANUsingCFNetworkWithConfiguration:](self, "__testPingWANUsingCFNetworkWithConfiguration:", [test configuration]);
        goto LABEL_75;
      case 7uLL:
        __testPingLANUsingIMFoundation = [(W5DiagnosticsManager *)self __testResolveDNS];
        goto LABEL_75;
      case 8uLL:
        __testPingLANUsingIMFoundation = [(W5DiagnosticsManager *)self __testDetectDoubleNAT];
        goto LABEL_75;
      case 9uLL:
        __testPingLANUsingIMFoundation = [(W5DiagnosticsManager *)self __testReachApple];
        goto LABEL_75;
      case 0xAuLL:
        __testPingLANUsingIMFoundation = [(W5DiagnosticsManager *)self __testRetrieveApple];
        goto LABEL_75;
      case 0xBuLL:
        __testPingLANUsingIMFoundation = -[W5DiagnosticsManager __testRetrieveAppleForceWiFiWithConfiguration:](self, "__testRetrieveAppleForceWiFiWithConfiguration:", [test configuration]);
        goto LABEL_75;
      case 0xCuLL:
        __testPingLANUsingIMFoundation = [(W5DiagnosticsManager *)self __testIPv4Assigned];
        goto LABEL_75;
      case 0xDuLL:
        __testPingLANUsingIMFoundation = [(W5DiagnosticsManager *)self __testIPv6Assigned];
        goto LABEL_75;
      case 0xEuLL:
        __testPingLANUsingIMFoundation = [(W5DiagnosticsManager *)self __testCustomIPv4];
        goto LABEL_75;
      case 0xFuLL:
        __testPingLANUsingIMFoundation = [(W5DiagnosticsManager *)self __testCustomIPv6];
        goto LABEL_75;
      case 0x10uLL:
        __testPingLANUsingIMFoundation = [(W5DiagnosticsManager *)self __testCustomDNS];
        goto LABEL_75;
      case 0x11uLL:
        __testPingLANUsingIMFoundation = [(W5DiagnosticsManager *)self __testCustomWebProxy];
        goto LABEL_75;
      case 0x12uLL:
        __testPingLANUsingIMFoundation = -[W5DiagnosticsManager __testHighBTPairedWithConfiguration:](self, "__testHighBTPairedWithConfiguration:", [test configuration]);
        goto LABEL_75;
      case 0x13uLL:
        __testPingLANUsingIMFoundation = -[W5DiagnosticsManager __testHighBTConnectedWithConfiguration:](self, "__testHighBTConnectedWithConfiguration:", [test configuration]);
        goto LABEL_75;
      case 0x14uLL:
        __testPingLANUsingIMFoundation = -[W5DiagnosticsManager __testBTCoexWithConfiguration:](self, "__testBTCoexWithConfiguration:", [test configuration]);
        goto LABEL_75;
      case 0x15uLL:
        __testPingLANUsingIMFoundation = -[W5DiagnosticsManager __testAWDLEnabledWithConfiguration:](self, "__testAWDLEnabledWithConfiguration:", [test configuration]);
        goto LABEL_75;
      case 0x16uLL:
        __testPingLANUsingIMFoundation = -[W5DiagnosticsManager __testAWDLRealtimeWithConfiguration:](self, "__testAWDLRealtimeWithConfiguration:", [test configuration]);
        goto LABEL_75;
      case 0x17uLL:
        __testPingLANUsingIMFoundation = -[W5DiagnosticsManager __testCongestedChannelUsingCCAWithConfiguration:](self, "__testCongestedChannelUsingCCAWithConfiguration:", [test configuration]);
        goto LABEL_75;
      case 0x18uLL:
        __testPingLANUsingIMFoundation = -[W5DiagnosticsManager __testCongestedChannelWithConfiguration:](self, "__testCongestedChannelWithConfiguration:", [test configuration]);
        goto LABEL_75;
      case 0x19uLL:
        __testPingLANUsingIMFoundation = -[W5DiagnosticsManager __testCongested2GHzWithConfiguration:](self, "__testCongested2GHzWithConfiguration:", [test configuration]);
        goto LABEL_75;
      case 0x1AuLL:
        __testPingLANUsingIMFoundation = -[W5DiagnosticsManager __testCongested5GHzWithConfiguration:](self, "__testCongested5GHzWithConfiguration:", [test configuration]);
        goto LABEL_75;
      case 0x1BuLL:
        __testPingLANUsingIMFoundation = -[W5DiagnosticsManager __testHT402GHzWithConfiguration:](self, "__testHT402GHzWithConfiguration:", [test configuration]);
        goto LABEL_75;
      case 0x1CuLL:
        __testPingLANUsingIMFoundation = -[W5DiagnosticsManager __testConflictingCountryCodeWithConfiguration:](self, "__testConflictingCountryCodeWithConfiguration:", [test configuration]);
        goto LABEL_75;
      case 0x1DuLL:
        __testPingLANUsingIMFoundation = -[W5DiagnosticsManager __testConflictingSecurityTypePNLWithConfiguration:](self, "__testConflictingSecurityTypePNLWithConfiguration:", [test configuration]);
        goto LABEL_75;
      case 0x1EuLL:
        __testPingLANUsingIMFoundation = -[W5DiagnosticsManager __testWiFiHiddenScanResultsWithConfiguration:](self, "__testWiFiHiddenScanResultsWithConfiguration:", [test configuration]);
        goto LABEL_75;
      case 0x1FuLL:
        __testPingLANUsingIMFoundation = -[W5DiagnosticsManager __testWiFiNoScanResultsWithConfiguration:](self, "__testWiFiNoScanResultsWithConfiguration:", [test configuration]);
        goto LABEL_75;
      case 0x20uLL:
        __testPingLANUsingIMFoundation = -[W5DiagnosticsManager __testPoorSignalWithConfiguration:](self, "__testPoorSignalWithConfiguration:", [test configuration]);
        goto LABEL_75;
      case 0x21uLL:
        __testPingLANUsingIMFoundation = -[W5DiagnosticsManager __testAirPortBaseStationWithConfiguration:](self, "__testAirPortBaseStationWithConfiguration:", [test configuration]);
        goto LABEL_75;
      case 0x22uLL:
        __testPingLANUsingIMFoundation = -[W5DiagnosticsManager __testLongBeaconIntervalWithConfiguration:](self, "__testLongBeaconIntervalWithConfiguration:", [test configuration]);
        goto LABEL_75;
      case 0x23uLL:
        __testPingLANUsingIMFoundation = [(W5DiagnosticsManager *)self __testLongDTIMInterval];
        goto LABEL_75;
      case 0x24uLL:
        __testPingLANUsingIMFoundation = -[W5DiagnosticsManager __testConflictingPHYMode11acWithConfiguration:](self, "__testConflictingPHYMode11acWithConfiguration:", [test configuration]);
        goto LABEL_75;
      case 0x25uLL:
        __testPingLANUsingIMFoundation = -[W5DiagnosticsManager __testConflictingPHYMode11nWithConfiguration:](self, "__testConflictingPHYMode11nWithConfiguration:", [test configuration]);
        goto LABEL_75;
      case 0x26uLL:
        __testPingLANUsingIMFoundation = -[W5DiagnosticsManager __testNoSecurityWithConfiguration:](self, "__testNoSecurityWithConfiguration:", [test configuration]);
        goto LABEL_75;
      case 0x27uLL:
        __testPingLANUsingIMFoundation = -[W5DiagnosticsManager __testLegacySecurityWEPWithConfiguration:](self, "__testLegacySecurityWEPWithConfiguration:", [test configuration]);
        goto LABEL_75;
      case 0x28uLL:
        __testPingLANUsingIMFoundation = -[W5DiagnosticsManager __testLegacySecurityWPAWithConfiguration:](self, "__testLegacySecurityWPAWithConfiguration:", [test configuration]);
        goto LABEL_75;
      case 0x29uLL:
        __testPingLANUsingIMFoundation = -[W5DiagnosticsManager __testLegacyRates11bWithConfiguration:](self, "__testLegacyRates11bWithConfiguration:", [test configuration]);
        goto LABEL_75;
      case 0x2AuLL:
        __testPingLANUsingIMFoundation = -[W5DiagnosticsManager __testAmbiguousNetworkNameWithConfiguration:](self, "__testAmbiguousNetworkNameWithConfiguration:", [test configuration]);
        goto LABEL_75;
      case 0x2BuLL:
        __testPingLANUsingIMFoundation = -[W5DiagnosticsManager __testHiddenNetworkWithConfiguration:](self, "__testHiddenNetworkWithConfiguration:", [test configuration]);
        goto LABEL_75;
      case 0x2CuLL:
        __testPingLANUsingIMFoundation = -[W5DiagnosticsManager __testiOSPersonalHotspotWithConfiguration:](self, "__testiOSPersonalHotspotWithConfiguration:", [test configuration]);
        goto LABEL_75;
      case 0x2DuLL:
        __testPingLANUsingIMFoundation = -[W5DiagnosticsManager __testPasspointWithConfiguration:](self, "__testPasspointWithConfiguration:", [test configuration]);
        goto LABEL_75;
      case 0x2EuLL:
        __testPingLANUsingIMFoundation = -[W5DiagnosticsManager __testCaptivePortalWithConfiguration:](self, "__testCaptivePortalWithConfiguration:", [test configuration]);
        goto LABEL_75;
      case 0x2FuLL:
        __testPingLANUsingIMFoundation = -[W5DiagnosticsManager __testLargePNLWithConfiguration:](self, "__testLargePNLWithConfiguration:", [test configuration]);
        goto LABEL_75;
      case 0x30uLL:
        __testPingLANUsingIMFoundation = -[W5DiagnosticsManager __testPNLContainsHiddenWithConfiguration:](self, "__testPNLContainsHiddenWithConfiguration:", [test configuration]);
        goto LABEL_75;
      case 0x31uLL:
        __testPingLANUsingIMFoundation = -[W5DiagnosticsManager __testDownloadSpeedWithConfiguration:](self, "__testDownloadSpeedWithConfiguration:", [test configuration]);
        goto LABEL_75;
      case 0x32uLL:
        __testPingLANUsingIMFoundation = -[W5DiagnosticsManager __testUploadSpeedWithConfiguration:](self, "__testUploadSpeedWithConfiguration:", [test configuration]);
        goto LABEL_75;
      case 0x33uLL:
        __testPingLANUsingIMFoundation = [(W5DiagnosticsManager *)self __testLeakyAP];
        goto LABEL_75;
      case 0x34uLL:
        __testPingLANUsingIMFoundation = [(W5DiagnosticsManager *)self __testWiFiLink];
        goto LABEL_75;
      case 0x35uLL:
        __testPingLANUsingIMFoundation = -[W5DiagnosticsManager __testConcurrentWithConfiguration:](self, "__testConcurrentWithConfiguration:", [test configuration]);
        goto LABEL_75;
      case 0x36uLL:
        __testPingLANUsingIMFoundation = [(W5DiagnosticsManager *)self __testCurlApple];
        goto LABEL_75;
      case 0x37uLL:
        v7 = objc_alloc_init(W5DiagnosticsTestResult);
        [v7 setTestID:{objc_msgSend(test, "testID")}];
        [v7 setDidPass:1];
        [v7 setResult:1];
        +[NSDate timeIntervalSinceReferenceDate];
        [v7 setTestStarted:?];
        [(W5DiagnosticsManager *)self beginWiFiDefaultRoute];
        goto LABEL_71;
      case 0x38uLL:
        v7 = objc_alloc_init(W5DiagnosticsTestResult);
        [v7 setTestID:{objc_msgSend(test, "testID")}];
        [v7 setDidPass:1];
        [v7 setResult:1];
        +[NSDate timeIntervalSinceReferenceDate];
        [v7 setTestStarted:?];
        [(W5DiagnosticsManager *)self endWiFiDefaultRoute];
LABEL_71:
        +[NSDate timeIntervalSinceReferenceDate];
        [v7 setTestCompleted:?];
        break;
      case 0x39uLL:
        __testPingLANUsingIMFoundation = [(W5DiagnosticsManager *)self __testWiFiIsPrimaryIPv4];
        goto LABEL_75;
      case 0x3AuLL:
        __testPingLANUsingIMFoundation = [(W5DiagnosticsManager *)self __testWiFiIsPrimaryIPv6];
        goto LABEL_75;
      case 0x3BuLL:
        __testPingLANUsingIMFoundation = -[W5DiagnosticsManager __testPing6AWDLWithConfiguration:](self, "__testPing6AWDLWithConfiguration:", [test configuration]);
        goto LABEL_75;
      case 0x3CuLL:
        __testPingLANUsingIMFoundation = [(W5DiagnosticsManager *)self __testPeerDiagnostics];
        goto LABEL_75;
      case 0x3DuLL:
        __testPingLANUsingIMFoundation = [(W5DiagnosticsManager *)self __testPeerTypes];
        goto LABEL_75;
      case 0x3EuLL:
        __testPingLANUsingIMFoundation = [(W5DiagnosticsManager *)self __testDiscoverPeerTypes];
        goto LABEL_75;
      case 0x3FuLL:
        __testPingLANUsingIMFoundation = -[W5DiagnosticsManager __testReachabilityToPeersWithConfiguration:](self, "__testReachabilityToPeersWithConfiguration:", [test configuration]);
LABEL_75:
        v7 = __testPingLANUsingIMFoundation;
        break;
      default:
        v7 = 0;
        break;
    }

    v12 = sub_100098A04();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:+[NSDate date]];
      v14 = [objc_msgSend(objc_msgSend(test "uuid")];
      [v7 testCompleted];
      v16 = v15;
      [v7 testStarted];
      v18 = v16 - v17;
      result = [v7 result];
      didPass = [v7 didPass];
      v23 = 138544642;
      v24 = v13;
      v25 = 2114;
      testID = v14;
      v27 = 2114;
      v28 = v5;
      v29 = 2048;
      v30 = v18;
      v31 = 1024;
      v32 = result;
      v33 = 1024;
      v34 = didPass;
      _os_log_send_and_compose_impl();
    }
  }

  return v7;
}

+ (void)__parsePingOutput:(id)output result:(id)result
{
  if (output)
  {
    if (result)
    {
      v5 = [[NSString alloc] initWithData:output encoding:4];
      if (v5)
      {
        v6 = [v5 componentsSeparatedByString:@"\n"];
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v15;
          do
          {
            v10 = 0;
            do
            {
              if (*v15 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = [*(*(&v14 + 1) + 8 * v10) componentsSeparatedByCharactersInSet:{+[NSCharacterSet whitespaceCharacterSet](NSCharacterSet, "whitespaceCharacterSet")}];
              if ([v11 containsObject:@"loss"] && objc_msgSend(v11, "count") >= 7)
              {
                v12 = [v11 objectAtIndexedSubscript:6];
                [objc_msgSend(v12 substringToIndex:{objc_msgSend(v12, "length") - 1), "doubleValue"}];
                [result setPacketLoss:?];
              }

              else if ([v11 containsObject:@"round-trip"] && objc_msgSend(v11, "count") >= 4)
              {
                v13 = [objc_msgSend(v11 objectAtIndexedSubscript:{3), "componentsSeparatedByString:", @"/"}];
                if ([v13 count] >= 4)
                {
                  [objc_msgSend(v13 objectAtIndexedSubscript:{0), "doubleValue"}];
                  [result setMin:?];
                  [objc_msgSend(v13 objectAtIndexedSubscript:{1), "doubleValue"}];
                  [result setAvg:?];
                  [objc_msgSend(v13 objectAtIndexedSubscript:{2), "doubleValue"}];
                  [result setMax:?];
                  [objc_msgSend(v13 objectAtIndexedSubscript:{3), "doubleValue"}];
                  [result setStddev:?];
                }
              }

              v10 = v10 + 1;
            }

            while (v8 != v10);
            v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
          }

          while (v8);
        }
      }
    }
  }
}

+ (BOOL)__isDoubleNATWithTracerouteOutput:(id)output
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [output componentsSeparatedByString:@"\n"];
  v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = objc_msgSend(v9, "rangeOfString:", @"(");
        v11 = [v9 rangeOfString:@""]);
        if (v10 != 0x7FFFFFFFFFFFFFFFLL && v11 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v6 += [self __detectLocalIPv4Address:{objc_msgSend(v9, "substringWithRange:", v10 + 1, &v11[~v10])}];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
    LOBYTE(v4) = v6 > 1;
  }

  return v4;
}

- (id)__performTracerouteWithAddress:(id)address maxTTL:(int64_t)l waittime:(int64_t)waittime queries:(int64_t)queries
{
  result = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi:address] interfaceName];
  if (result)
  {
    v9[0] = @"-n";
    v9[1] = @"-m";
    v9[2] = @"6";
    v9[3] = @"-i";
    v9[4] = result;
    v9[5] = @"-w";
    v9[6] = @"2";
    v9[7] = @"-q";
    v9[8] = @"1";
    v9[9] = @"captive.apple.com";
    v7 = [NSArray arrayWithObjects:v9 count:10];
    v8 = [NSMutableData dataWithCapacity:0];
    if ([NSTask runTaskWithLaunchPath:@"/usr/sbin/traceroute" arguments:v7 outputData:v8 error:0])
    {
      return [[NSString alloc] initWithData:v8 encoding:4];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)__performPingUsingIMFoundationWithAddress:(id)address timeout:(int64_t)timeout
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = sub_10003D538;
  v23 = sub_10003D548;
  v24 = 0;
  v7 = sub_10004C3EC();
  if (timeout <= 2147483646 && address && v7)
  {
    v8 = dispatch_semaphore_create(0);
    +[NSDate timeIntervalSinceReferenceDate];
    v10 = v9;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v29 = 0x3052000000;
    v30 = sub_10003D538;
    v11 = qword_100106BF0;
    v31 = sub_10003D548;
    v32 = qword_100106BF0;
    if (!qword_100106BF0)
    {
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10004C530;
      v25[3] = &unk_1000E13B0;
      v25[4] = &buf;
      sub_10004C530(v25);
      v11 = *(*(&buf + 1) + 40);
    }

    _Block_object_dispose(&buf, 8);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10004AB70;
    v18[3] = &unk_1000E28B0;
    v18[4] = address;
    v18[5] = self;
    v18[8] = v10;
    v18[6] = v8;
    v18[7] = &v19;
    [objc_msgSend([v11 alloc] initWithAddress:address wifi:{1), "startWithTimeout:queue:completionHandler:", dispatch_get_global_queue(0, 0), v18, timeout}];
    v12 = dispatch_time(0, 80000000000);
    if (dispatch_semaphore_wait(v8, v12) >= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134349056;
      *(&buf + 4) = 0x4054000000000000;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", &buf, 0xCu);
    }

    v13 = v20[5];
  }

  if (v20[5])
  {
    v14 = objc_alloc_init(W5Event);
    [v14 setEventID:34];
    [v20[5] endedAt];
    [v14 setTimestamp:?];
    v26 = @"PingResult";
    v27 = v20[5];
    [v14 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v27, &v26, 1)}];
    pingCallback = self->_pingCallback;
    if (pingCallback)
    {
      pingCallback[2](pingCallback, v14);
    }
  }

  v16 = v20[5];
  _Block_object_dispose(&v19, 8);
  return v16;
}

- (id)__performPingWithAddress:(id)address count:(int64_t)count timeout:(double)timeout wait:(double)wait interval:(double)interval trafficClass:(id)class interfaceName:(id)name dataLength:(unint64_t)self0
{
  if (timeout >= 2147483650.0 || count > 2147483646 || address == 0 || name == 0)
  {
    return 0;
  }

  if (class && ([class integerValue], (v21 = W5DescriptionForPingTrafficClass()) != 0))
  {
    v22 = v21;
    v37[0] = @"-c";
    v37[1] = [NSString stringWithFormat:@"%ld", count];
    v37[2] = @"-b";
    v37[3] = name;
    v37[4] = @"-k";
    v37[5] = v22;
    v37[6] = @"-i";
    v37[7] = [NSString stringWithFormat:@"%.1f", *&interval];
    v37[8] = @"-t";
    v37[9] = [NSString stringWithFormat:@"%.2f", *&timeout];
    v37[10] = @"-W";
    v37[11] = [NSString stringWithFormat:@"%ld", (wait * 1000.0)];
    v37[12] = @"-s";
    v37[13] = [NSString stringWithFormat:@"%ld", length + 56];
    v37[14] = address;
    v23 = v37;
    v24 = 15;
  }

  else
  {
    v36[0] = @"-c";
    v36[1] = [NSString stringWithFormat:@"%ld", count];
    v36[2] = @"-b";
    v36[3] = name;
    v36[4] = @"-i";
    v36[5] = [NSString stringWithFormat:@"%.1f", *&interval];
    v36[6] = @"-t";
    v36[7] = [NSString stringWithFormat:@"%.2f", *&timeout];
    v36[8] = @"-W";
    v36[9] = [NSString stringWithFormat:@"%ld", (wait * 1000.0)];
    v36[10] = @"-s";
    v36[11] = [NSString stringWithFormat:@"%ld", length + 56];
    v36[12] = address;
    v23 = v36;
    v24 = 13;
  }

  v25 = [NSArray arrayWithObjects:v23 count:v24];
  +[NSDate timeIntervalSinceReferenceDate];
  v27 = v26;
  v28 = [NSMutableData dataWithCapacity:0];
  [NSTask runTaskWithLaunchPath:@"/sbin/ping" arguments:v25 outputData:v28 error:0];
  v29 = objc_alloc_init(W5PingResult);
  [v29 setInterfaceName:name];
  [v29 setAddress:address];
  [v29 setCount:count];
  [v29 setTimeout:timeout];
  [v29 setWait:wait];
  [v29 setInterval:interval];
  [v29 setTrafficClass:{objc_msgSend(class, "integerValue")}];
  [v29 setDataLength:length];
  [v29 setStartedAt:v27];
  +[NSDate timeIntervalSinceReferenceDate];
  [v29 setEndedAt:?];
  [v29 setCommand:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"/sbin/ping %@", -[NSArray componentsJoinedByString:](v25, "componentsJoinedByString:", @" "}];
  [v29 setOutput:{objc_msgSend([NSString alloc], "initWithData:encoding:", v28, 4)}];
  [W5DiagnosticsManager __parsePingOutput:v28 result:v29];
  if (v29)
  {
    v30 = objc_alloc_init(W5Event);
    [v30 setEventID:34];
    [v29 endedAt];
    [v30 setTimestamp:?];
    v34 = @"PingResult";
    v35 = v29;
    [v30 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v35, &v34, 1)}];
    pingCallback = self->_pingCallback;
    if (pingCallback)
    {
      pingCallback[2](pingCallback, v30);
    }
  }

  return v29;
}

- (id)__performPing6WithAddress:(id)address count:(int64_t)count wait:(double)wait trafficClass:(id)class interfaceName:(id)name dataLength:(unint64_t)length
{
  v8 = 0;
  if (address && count <= 2147483646 && name)
  {
    if (class && ([class integerValue], (v15 = W5DescriptionForPingTrafficClass()) != 0))
    {
      v16 = v15;
      v30[0] = @"-c";
      v30[1] = [NSString stringWithFormat:@"%ld", count];
      v30[2] = @"-B";
      v30[3] = name;
      v30[4] = @"-I";
      v30[5] = name;
      v30[6] = @"-k";
      v30[7] = v16;
      v30[8] = @"-i";
      v30[9] = [NSString stringWithFormat:@"%f", *&wait];
      v30[10] = @"-s";
      v30[11] = [NSString stringWithFormat:@"%ld", length + 56];
      v30[12] = address;
      v17 = v30;
      v18 = 13;
    }

    else
    {
      v29[0] = @"-c";
      v29[1] = [NSString stringWithFormat:@"%ld", count];
      v29[2] = @"-B";
      v29[3] = name;
      v29[4] = @"-I";
      v29[5] = name;
      v29[6] = @"-i";
      v29[7] = [NSString stringWithFormat:@"%f", *&wait];
      v29[8] = @"-s";
      v29[9] = [NSString stringWithFormat:@"%ld", length + 56];
      v29[10] = address;
      v17 = v29;
      v18 = 11;
    }

    v19 = [NSArray arrayWithObjects:v17 count:v18];
    +[NSDate timeIntervalSinceReferenceDate];
    v21 = v20;
    v22 = [NSMutableData dataWithCapacity:0];
    [NSTask runTaskWithLaunchPath:@"/sbin/ping6" arguments:v19 outputData:v22 error:0];
    v8 = objc_alloc_init(W5PingResult);
    [v8 setInterfaceName:name];
    [v8 setAddress:address];
    [v8 setCount:count];
    [v8 setWait:wait];
    [v8 setTrafficClass:{objc_msgSend(class, "integerValue")}];
    [v8 setDataLength:length];
    [v8 setStartedAt:v21];
    +[NSDate timeIntervalSinceReferenceDate];
    [v8 setEndedAt:?];
    [v8 setCommand:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"/sbin/ping6 %@", -[NSArray componentsJoinedByString:](v19, "componentsJoinedByString:", @" "}];
    [v8 setOutput:{objc_msgSend([NSString alloc], "initWithData:encoding:", v22, 4)}];
    [W5DiagnosticsManager __parsePingOutput:v22 result:v8];
    if (v8)
    {
      v23 = objc_alloc_init(W5Event);
      [v23 setEventID:34];
      [v8 endedAt];
      [v23 setTimestamp:?];
      v27 = @"PingResult";
      v28 = v8;
      [v23 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v28, &v27, 1)}];
      pingCallback = self->_pingCallback;
      if (pingCallback)
      {
        pingCallback[2](pingCallback, v23);
      }
    }
  }

  return v8;
}

- (id)__performCFPingWithAddress:(id)address count:(int64_t)count timeout:(double)timeout trafficClass:(id)class networkServiceType:(id)type dataLength:(unint64_t)length
{
  v8 = 0;
  if (address && count <= 2147483646 && timeout < 2147483650.0)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v14 = v13;
    v15 = +[NSMutableArray array];
    v16 = 0.0;
    v17 = 0.0;
    countCopy = count;
    if (count >= 1)
    {
      v18 = kCFNetDiagnosticPingOptionTimeout;
      v19 = kCFNetDiagnosticPingOptionPacketCount;
      v20 = kCFNetDiagnosticPingOptionDataLength;
      v49 = kCFNetDiagnosticPingOptionTrafficClass;
      v48 = kCFNetDiagnosticPingOptionTypeOfService;
      v21 = countCopy;
      do
      {
        v60[0] = v18;
        v61[0] = [NSNumber numberWithDouble:timeout];
        v61[1] = &off_1000EEF78;
        v60[1] = v19;
        v60[2] = v20;
        v61[2] = [NSNumber numberWithUnsignedInteger:length];
        v22 = [+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary mutableCopy:v61];
        v23 = v22;
        if (class)
        {
          [v22 setObject:class forKeyedSubscript:v49];
        }

        if (type)
        {
          [v23 setObject:type forKeyedSubscript:v48];
        }

        +[NSDate timeIntervalSinceReferenceDate];
        v25 = v24;
        cf = 0;
        v26 = CFNetDiagnosticPingWithOptions();
        +[NSDate timeIntervalSinceReferenceDate];
        if (v26)
        {
          v17 = v17 + 1.0;
          [v15 addObject:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", (v27 - v25) * 1000.0)}];
        }

        --v21;
      }

      while (v21);
    }

    v28 = 0.0;
    v29 = 0.0;
    if ([v15 count])
    {
      v30 = 0;
      v16 = 0.0;
      do
      {
        [objc_msgSend(v15 objectAtIndexedSubscript:{v30), "doubleValue"}];
        v29 = v29 + v31;
        if (v31 <= v16)
        {
          v32 = v16;
        }

        else
        {
          v32 = v31;
        }

        if (v31 < v28)
        {
          v33 = v31;
        }

        else
        {
          v33 = v28;
        }

        if (v30)
        {
          v16 = v32;
        }

        else
        {
          v16 = v31;
        }

        if (v30)
        {
          v28 = v33;
        }

        else
        {
          v28 = v31;
        }

        ++v30;
      }

      while (v30 < [v15 count]);
    }

    v52 = 0u;
    v53 = 0u;
    v34 = v29 / [v15 count];
    v54 = 0u;
    v55 = 0u;
    v35 = [v15 countByEnumeratingWithState:&v52 objects:v59 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v53;
      v38 = 0.0;
      do
      {
        for (i = 0; i != v36; i = i + 1)
        {
          if (*v53 != v37)
          {
            objc_enumerationMutation(v15);
          }

          [*(*(&v52 + 1) + 8 * i) doubleValue];
          v38 = v38 + (v40 - v34) * (v40 - v34);
        }

        v36 = [v15 countByEnumeratingWithState:&v52 objects:v59 count:16];
      }

      while (v36);
    }

    else
    {
      v38 = 0.0;
    }

    v41 = sqrt(v38 / [v15 count]);
    v8 = objc_alloc_init(W5PingResult);
    [v8 setInterfaceName:{-[W5WiFiInterface interfaceName](-[W5StatusManager wifi](self->_status, "wifi"), "interfaceName")}];
    [v8 setAddress:address];
    [v8 setCount:countCopy];
    [v8 setTimeout:timeout];
    [v8 setWait:1.0];
    [v8 setInterval:1.0];
    [v8 setTrafficClass:{objc_msgSend(class, "integerValue")}];
    [v8 setDataLength:length];
    [v8 setMin:v28];
    [v8 setMax:v16];
    [v8 setAvg:v34];
    [v8 setStddev:v41];
    [v8 setPacketLoss:(countCopy - v17) / countCopy];
    [v8 setStartedAt:v14];
    +[NSDate timeIntervalSinceReferenceDate];
    [v8 setEndedAt:?];
    v42 = v8;
    if (v8)
    {
      v43 = objc_alloc_init(W5Event);
      [v43 setEventID:34];
      [v8 endedAt];
      [v43 setTimestamp:?];
      v57 = @"PingResult";
      v58 = v8;
      [v43 setInfo:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v58, &v57, 1)}];
      pingCallback = self->_pingCallback;
      if (pingCallback)
      {
        pingCallback[2](pingCallback, v43);
      }
    }
  }

  return v8;
}

- (BOOL)__performCurlWithAddress:(id)address
{
  interfaceName = [(W5WiFiInterface *)[(W5StatusManager *)self->_status wifi] interfaceName];
  LOBYTE(v5) = 0;
  if (address)
  {
    if (interfaceName)
    {
      addressCopy = address;
      v6 = [NSArray arrayWithObjects:&addressCopy count:1];
      v7 = [NSMutableData dataWithCapacity:0];
      v5 = [NSTask runTaskWithLaunchPath:@"/usr/local/bin/curl" arguments:v6 timeout:v7 outputData:0 errorData:0 launchHandler:0 didLaunch:1.6 error:0];
      if (v5)
      {
        LOBYTE(v5) = [objc_msgSend([NSString alloc] initWithData:v7 encoding:{4), "length"}] != 0;
      }
    }
  }

  return v5;
}

+ (id)__performDNSResolution:(id)resolution
{
  v3 = CFHostCreateWithName(kCFAllocatorDefault, resolution);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  started = CFHostStartInfoResolution(v3, kCFHostAddresses, 0);
  CFRetain(v4);
  v6 = dispatch_time(0, 1600000);
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004BC34;
  block[3] = &unk_1000E13E8;
  block[4] = v4;
  dispatch_after(v6, global_queue, block);
  if (!started)
  {
    goto LABEL_8;
  }

  Addressing = CFHostGetAddressing(v4, 0);
  v9 = Addressing;
  if (Addressing)
  {
    if (CFArrayGetCount(Addressing))
    {
      v9 = [(__CFArray *)v9 copy];
      goto LABEL_6;
    }

LABEL_8:
    v9 = 0;
  }

LABEL_6:
  CFRelease(v4);
  return v9;
}

+ (id)__networkServiceOrder
{
  v2 = SCPreferencesCreate(kCFAllocatorDefault, @"wifivelocityd", 0);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = SCNetworkSetCopyCurrent(v2);
  if (v4)
  {
    v5 = v4;
    ServiceOrder = SCNetworkSetGetServiceOrder(v4);
    v7 = ServiceOrder;
    if (ServiceOrder)
    {
      if (CFArrayGetCount(ServiceOrder))
      {
        v7 = [(__CFArray *)v7 copy];
      }

      else
      {
        v7 = 0;
      }
    }

    CFRelease(v5);
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v3);
  return v7;
}

+ (BOOL)__setNetworkServiceOrder:(id)order
{
  v4 = SCPreferencesCreate(kCFAllocatorDefault, @"wifivelocityd", 0);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (SCPreferencesLock(v4, 1u))
  {
    v6 = SCNetworkSetCopyCurrent(v5);
    if (v6)
    {
      v7 = v6;
      if (SCNetworkSetSetServiceOrder(v6, order) && SCPreferencesCommitChanges(v5) && SCPreferencesApplyChanges(v5))
      {
        usleep(0x186A0u);
        v8 = 1;
      }

      else
      {
        v8 = 0;
      }

      SCPreferencesUnlock(v5);
      CFRelease(v7);
      goto LABEL_9;
    }

    SCPreferencesUnlock(v5);
  }

  v8 = 0;
LABEL_9:
  CFRelease(v5);
  return v8;
}

- (BOOL)__performLoadViaNSURLSessionWithAddress:(id)address usingTimeout:(id)timeout andForceWiFiInterface:(BOOL)interface
{
  interfaceCopy = interface;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v9 = dispatch_semaphore_create(0);
  v10 = [NSURL URLWithString:address];
  if (v10)
  {
    if (timeout)
    {
      [timeout doubleValue];
    }

    else
    {
      v11 = 1.6;
    }

    v12 = [NSURLRequest requestWithURL:v10 cachePolicy:1 timeoutInterval:v11];
    if (v12)
    {
      urlSession = self->_urlSession;
      if (urlSession || (v14 = +[NSURLSessionConfiguration ephemeralSessionConfiguration], (v15 = v14) != 0) && ([(NSURLSessionConfiguration *)v14 setRequestCachePolicy:1], [(NSURLSessionConfiguration *)v15 setHTTPMaximumConnectionsPerHost:1], [(NSURLSessionConfiguration *)v15 setAllowsCellularAccess:!interfaceCopy], urlSession = [NSURLSession sessionWithConfiguration:v15], (self->_urlSession = urlSession) != 0))
      {
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_10004C054;
        v19[3] = &unk_1000E28D8;
        v19[4] = v9;
        v19[5] = &v20;
        [(NSURLSessionDataTask *)[(NSURLSession *)urlSession dataTaskWithRequest:v12 completionHandler:v19] resume];
        v16 = dispatch_time(0, 80000000000);
        if (dispatch_semaphore_wait(v9, v16) >= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134349056;
          v25 = 0x4054000000000000;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[wifivelocity] FAILED to complete operation within %{public}.1fs, continuing", buf, 0xCu);
        }

        [(NSURLSession *)self->_urlSession resetWithCompletionHandler:&stru_1000E28F8];
      }
    }
  }

  v17 = *(v21 + 24);
  _Block_object_dispose(&v20, 8);
  return v17;
}

@end