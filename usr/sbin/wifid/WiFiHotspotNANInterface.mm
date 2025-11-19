@interface WiFiHotspotNANInterface
- (BOOL)checkDeviceNanCapabilities;
- (BOOL)isConnectedToSameNanNetwork:(__CFString *)a3;
- (WiFiHotspotNANInterface)init;
- (unsigned)isHotspotDeviceSupportNAN:(__CFString *)a3 withCFStringRef:(__CFString *)a4;
- (void)createWAPConfig:(id)a3;
- (void)createWASConfig:(id)a3;
- (void)dataSession:(id)a3 confirmedForPeerDataAddress:(id)a4 serviceSpecificInfo:(id)a5;
- (void)dataSession:(id)a3 failedToStartWithError:(int64_t)a4;
- (void)dataSession:(id)a3 terminatedWithReason:(int64_t)a4;
- (void)dataSessionRequestStarted:(id)a3;
- (void)publisher:(id)a3 dataConfirmedForHandle:(id)a4 localInterfaceIndex:(unsigned int)a5 serviceSpecificInfo:(id)a6;
- (void)publisher:(id)a3 dataTerminatedForHandle:(id)a4 reason:(int64_t)a5;
- (void)publisher:(id)a3 failedToStartWithError:(int64_t)a4;
- (void)publisher:(id)a3 terminatedWithReason:(int64_t)a4;
- (void)publisherStarted:(id)a3;
- (void)registerClientDatapathTerminatedCallback:(void *)a3 withContext:(void *)a4;
- (void)registerPublisherMetricCallback:(void *)a3 withContext:(void *)a4;
- (void)registerStaArriveCallback:(void *)a3 withContext:(void *)a4;
- (void)registerStaLeaveCallback:(void *)a3 withContext:(void *)a4;
- (void)registerSubscriberMetricCallback:(void *)a3 withContext:(void *)a4;
- (void)registerSubscriberTimerCancelCallback:(void *)a3 withContext:(void *)a4;
- (void)setDataPathSecCfgForPHSOverNAN:(int64_t)a3;
- (void)setDeviceNameForPHSOverNAN:(__CFString *)a3;
- (void)setPasswordForPHSOverNAN:(__CFString *)a3;
- (void)startPublisherForPHSOverNAN;
- (void)startSubscriberForPHSOverNAN:(id)a3 networkMacAddress:(id)a4;
- (void)stopPublisherForPHSOverNAN;
- (void)stopSubscriberAsNoNetworkFound;
- (void)stopSubscriberForPHSOverNAN;
- (void)subscriber:(id)a3 failedToStartWithError:(int64_t)a4;
- (void)subscriber:(id)a3 lostDiscoveryResultForPublishID:(unsigned __int8)a4 address:(id)a5;
- (void)subscriber:(id)a3 receivedDiscoveryResult:(id)a4;
- (void)subscriber:(id)a3 terminatedWithReason:(int64_t)a4;
- (void)subscriberStarted:(id)a3;
@end

@implementation WiFiHotspotNANInterface

- (void)publisherStarted:(id)a3
{
  v5 = a3;
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"WiFiAwarePublisher started with publisher=%@", v5}];
  }

  objc_autoreleasePoolPop(v4);
  self->_nanPublisherState = 2;
}

- (void)publisher:(id)a3 failedToStartWithError:(int64_t)a4
{
  v7 = a3;
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"WiFiAwarePublisher failed to start with errorString=%d", a4}];
  }

  objc_autoreleasePoolPop(v6);
  self->_nanPublisherState = 0;
  if ([(WiFiHotspotNANInterface *)self publisherMetricsCallback])
  {
    ([(WiFiHotspotNANInterface *)self publisherMetricsCallback])(0, a4, [(WiFiHotspotNANInterface *)self publisherMetricsCallbackContext]);
  }
}

- (void)publisher:(id)a3 terminatedWithReason:(int64_t)a4
{
  v7 = a3;
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"WiFiAwarePublisher terminated with reasonString=%d", a4}];
  }

  objc_autoreleasePoolPop(v6);
  self->_nanPublisherState = 0;
  if ([(WiFiHotspotNANInterface *)self publisherMetricsCallback])
  {
    ([(WiFiHotspotNANInterface *)self publisherMetricsCallback])(2, a4, [(WiFiHotspotNANInterface *)self publisherMetricsCallbackContext]);
  }
}

- (void)publisher:(id)a3 dataConfirmedForHandle:(id)a4 localInterfaceIndex:(unsigned int)a5 serviceSpecificInfo:(id)a6
{
  v23 = a3;
  v10 = a4;
  v22 = a6;
  objc_storeStrong(&self->_wapDataSession, a4);
  self->_sessionTerminated = 0;
  memset(cStr, 170, sizeof(cStr));
  v11 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"WiFiAwarePublisher data session confirmed "];
  }

  objc_autoreleasePoolPop(v11);
  v25 = 0;
  v24 = 0;
  v12 = [v10 initiatorDataAddress];
  v13 = [v12 data];
  v14 = [v13 bytes];
  v15 = [v10 initiatorDataAddress];
  v16 = [v15 data];
  if ([v16 length] >= 6)
  {
    v25 = v14[2];
    v24 = *v14;
  }

  else
  {
    v17 = [v10 initiatorDataAddress];
    v18 = [v17 data];
    [v18 length];
    __memcpy_chk();
  }

  [v10 initiatorDataAddress];
  v19 = [NSString stringWithFormat:@"%.2X:%.2X:%.2X:%.2X:%.2X:%.2X", v24, BYTE1(v24), BYTE2(v24), HIBYTE(v24), v25, HIBYTE(v25)];
  [(NSMutableDictionary *)self->_wapDataSessionHandles setObject:v10 forKey:v19];
  if (if_indextoname(a5, cStr))
  {
    v20 = CFStringCreateWithCString(0, cStr, 0x600u);
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s if_indextoname() Failed to get ifname for index:%s \n", "-[WiFiHotspotNANInterface publisher:dataConfirmedForHandle:localInterfaceIndex:serviceSpecificInfo:]", cStr}];
    }

    objc_autoreleasePoolPop(v21);
    v20 = 0;
  }

  if ([(WiFiHotspotNANInterface *)self staArrivecallback])
  {
    (-[WiFiHotspotNANInterface staArrivecallback](self, "staArrivecallback"))([v10 datapathID], v19, v20, -[WiFiHotspotNANInterface callbackContext](self, "callbackContext"));
  }

  if (v20)
  {
    CFRelease(v20);
  }
}

- (void)publisher:(id)a3 dataTerminatedForHandle:(id)a4 reason:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"WiFiAwarePublisher data session terminated for reason %d \n", a5}];
  }

  objc_autoreleasePoolPop(v10);
  v24 = 0;
  v23 = 0;
  v11 = [v9 initiatorDataAddress];
  v12 = [v11 data];
  v13 = [v12 bytes];
  v14 = [v9 initiatorDataAddress];
  v15 = [v14 data];
  if ([v15 length] >= 6)
  {
    v24 = v13[2];
    v23 = *v13;
  }

  else
  {
    [v9 initiatorDataAddress];
    v22 = v9;
    v16 = a5;
    v17 = a5 = v8;
    v18 = [v17 data];
    [v18 length];
    __memcpy_chk();

    v8 = a5;
    LOBYTE(a5) = v16;
    v9 = v22;
  }

  v19 = [NSString stringWithFormat:@"%.2X:%.2X:%.2X:%.2X:%.2X:%.2X", v23, BYTE1(v23), BYTE2(v23), HIBYTE(v23), v24, HIBYTE(v24)];
  v20 = [(NSMutableDictionary *)self->_wapDataSessionHandles objectForKey:v19];

  if (v20)
  {
    [(NSMutableDictionary *)self->_wapDataSessionHandles removeObjectForKey:v19];
    if ([(WiFiHotspotNANInterface *)self staLeavecallback])
    {
      (-[WiFiHotspotNANInterface staLeavecallback](self, "staLeavecallback"))([v9 datapathID], v19, 0, -[WiFiHotspotNANInterface callbackContext](self, "callbackContext"));
    }
  }

  if ([(WiFiHotspotNANInterface *)self publisherMetricsCallback])
  {
    ([(WiFiHotspotNANInterface *)self publisherMetricsCallback])(1, a5, [(WiFiHotspotNANInterface *)self publisherMetricsCallbackContext]);
  }

  v21 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"NANPHS: _wapDataSessionHandles count %ld", -[NSMutableDictionary count](self->_wapDataSessionHandles, "count")}];
  }

  objc_autoreleasePoolPop(v21);
}

- (void)registerStaLeaveCallback:(void *)a3 withContext:(void *)a4
{
  [(WiFiHotspotNANInterface *)self setStaLeavecallback:a3];

  [(WiFiHotspotNANInterface *)self setCallbackContext:a4];
}

- (void)registerStaArriveCallback:(void *)a3 withContext:(void *)a4
{
  [(WiFiHotspotNANInterface *)self setStaArrivecallback:a3];

  [(WiFiHotspotNANInterface *)self setCallbackContext:a4];
}

- (void)registerPublisherMetricCallback:(void *)a3 withContext:(void *)a4
{
  [(WiFiHotspotNANInterface *)self setPublisherMetricsCallback:a3];

  [(WiFiHotspotNANInterface *)self setPublisherMetricsCallbackContext:a4];
}

- (void)registerSubscriberMetricCallback:(void *)a3 withContext:(void *)a4
{
  [(WiFiHotspotNANInterface *)self setSubscriberMetricsCallback:a3];

  [(WiFiHotspotNANInterface *)self setSubscriberMetricsCallbackContext:a4];
}

- (void)registerSubscriberTimerCancelCallback:(void *)a3 withContext:(void *)a4
{
  [(WiFiHotspotNANInterface *)self setSubscriberCancelTimerCallback:a3];

  [(WiFiHotspotNANInterface *)self setSubscriberCancelTimerCallbackContext:a4];
}

- (void)registerClientDatapathTerminatedCallback:(void *)a3 withContext:(void *)a4
{
  [(WiFiHotspotNANInterface *)self setStaDatapathTerminatedcallback:a3];

  [(WiFiHotspotNANInterface *)self setLinkTerminatedCallbackContext:a4];
}

- (BOOL)isConnectedToSameNanNetwork:(__CFString *)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = off_100298C40;
  if (off_100298C40)
  {
    v7 = [(WiFiAwareDataSession *)self->_waDataSession discoveryResult];
    v8 = [v7 serviceName];
    v9 = [(WiFiAwareDiscoveryResult *)self->_waDiscoveryResult serviceName];
    [v6 WFLog:3 message:{"NANPHS: %d %d _clientAssociated %d \n", v8 == 0, v9 == 0, self->_clientAssociated}];
  }

  objc_autoreleasePoolPop(v5);
  if (self->_clientAssociated && (-[WiFiAwareDataSession discoveryResult](self->_waDataSession, "discoveryResult"), v10 = objc_claimAutoreleasedReturnValue(), [v10 serviceName], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    v12 = objc_autoreleasePoolPush();
    v13 = off_100298C40;
    if (off_100298C40)
    {
      v14 = [(WiFiAwareDataSession *)self->_waDataSession discoveryResult];
      v15 = [v14 serviceName];
      [v13 WFLog:3 message:{"NANPHS: serviceNameCurrent %@ serviceNameConnectedTo %@", a3, v15}];
    }

    objc_autoreleasePoolPop(v12);
    v16 = [(WiFiAwareDataSession *)self->_waDataSession discoveryResult];
    v17 = [v16 serviceName];
    v18 = [(__CFString *)a3 isEqualToString:v17];
  }

  else
  {
    v18 = 0;
  }

  v19 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"NANPHS: isSameNetwork %d", v18}];
  }

  objc_autoreleasePoolPop(v19);
  return v18;
}

- (void)subscriberStarted:(id)a3
{
  v4 = a3;
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"WiFiAwareSubscriber started with subscriber=%@", v4}];
  }

  objc_autoreleasePoolPop(v3);
}

- (void)subscriber:(id)a3 failedToStartWithError:(int64_t)a4
{
  v7 = a3;
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"WiFiAwareSubscriber failed to start with errorString=%d", a4}];
  }

  objc_autoreleasePoolPop(v6);
  if ([(WiFiHotspotNANInterface *)self subscriberMetricsCallback])
  {
    ([(WiFiHotspotNANInterface *)self subscriberMetricsCallback])(0, a4, [(WiFiHotspotNANInterface *)self subscriberMetricsCallbackContext]);
  }
}

- (void)subscriber:(id)a3 terminatedWithReason:(int64_t)a4
{
  v7 = a3;
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"WiFiAwareSubscriber terminated with reasonString=%d", a4}];
  }

  objc_autoreleasePoolPop(v6);
  *&self->_subscriberStoppedCallbackRcvd = 257;
  if ([(WiFiHotspotNANInterface *)self subscriberMetricsCallback])
  {
    ([(WiFiHotspotNANInterface *)self subscriberMetricsCallback])(2, a4, [(WiFiHotspotNANInterface *)self subscriberMetricsCallbackContext]);
  }
}

- (void)stopSubscriberForPHSOverNAN
{
  if (![(WiFiHotspotNANInterface *)self isSessionTerminated])
  {
    [(WiFiAwareDataSession *)self->_waDataSession stop];
    self->_sessionTerminated = 1;
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"WiFiAwareSubscriber Stopped datasession over NAN Subscriber"];
    }

    objc_autoreleasePoolPop(v3);
  }

  if (![(WiFiHotspotNANInterface *)self isSubscriberStopped])
  {
    [(WiFiAwareSubscriber *)self->_wasPHSOverNAN stop];
    *&self->_subscriberStoppedCallbackRcvd = 256;
    v4 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"WiFiAwareSubscriber Stopped PHS over NAN Subscriber"];
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (void)stopSubscriberAsNoNetworkFound
{
  if (![(WiFiHotspotNANInterface *)self isSubscriberStopped])
  {
    [(WiFiAwareSubscriber *)self->_wasPHSOverNAN stop];
    *&self->_subscriberStoppedCallbackRcvd = 256;
    v3 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"WiFiAwareSubscriber stopSubscriberAsNoNetworkFound"];
    }

    objc_autoreleasePoolPop(v3);
    v4 = objc_initWeak(&location, self);
    if ([(WiFiHotspotNANInterface *)self staDatapathEstablishedcallback])
    {
      ([(WiFiHotspotNANInterface *)self staDatapathEstablishedcallback])(0, 0, 0, 0, 0, [(WiFiHotspotNANInterface *)self linkEstablishedCallbackContext], [(WiFiHotspotNANInterface *)self nanAssocData], [(WiFiHotspotNANInterface *)self isAutoJoined], 0, 3);
    }

    objc_destroyWeak(&location);
  }
}

- (void)subscriber:(id)a3 receivedDiscoveryResult:(id)a4
{
  v26 = a3;
  v6 = a4;
  if (self->_clientAssociated && !self->_subscriberStoppedCallbackRcvd && (wasPHSOverNAN = self->_wasPHSOverNAN) != 0)
  {
    [(WiFiAwareSubscriber *)wasPHSOverNAN stop];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = off_100298C40;
    if (off_100298C40)
    {
      v9 = [v6 serviceSpecificInfo];
      v10 = [v9 instanceName];
      v11 = [v6 serviceName];
      [v8 WFLog:3 message:{"WiFiAwareSubscriber receivedDiscoveryResult with instance name %@, service name %@", v10, v11}];
    }

    objc_autoreleasePoolPop(v7);
    pwdList = self->_pwdList;
    if (pwdList && [(NSMutableArray *)pwdList count])
    {
      v13 = [v26 configuration];
      v14 = [v13 serviceName];
      v15 = [v6 serviceName];
      v16 = [v14 isEqualToString:v15];

      if (v16)
      {
        objc_storeStrong(&self->_waDiscoveryResult, a4);
        v17 = [WiFiAwareDataSession alloc];
        waDiscoveryResult = self->_waDiscoveryResult;
        v19 = [(NSMutableArray *)self->_pwdList objectAtIndexedSubscript:0];
        v20 = [v17 initWithDiscoveryResult:waDiscoveryResult serviceType:1 serviceSpecificInfo:0 passphrase:v19];
        waDataSession = self->_waDataSession;
        self->_waDataSession = v20;

        v22 = +[WiFiAwareInternetSharingConfiguration requestInterentFromResponder];
        [(WiFiAwareDataSession *)self->_waDataSession setInternetSharingConfiguration:v22];

        v23 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:"WiFiAwareSubscriber requestedInternetFromResponder"];
        }

        objc_autoreleasePoolPop(v23);
        [(WiFiAwareDataSession *)self->_waDataSession setDelegate:self];
        self->_current_rssi = [(WiFiAwareDiscoveryResult *)self->_waDiscoveryResult rssi];
        [(WiFiAwareDataSession *)self->_waDataSession start];
      }
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:"WiFiAwareSubscriber require passphrase"];
      }

      objc_autoreleasePoolPop(v24);
      [(WiFiHotspotNANInterface *)self stopSubscriberForPHSOverNAN];
    }
  }
}

- (void)subscriber:(id)a3 lostDiscoveryResultForPublishID:(unsigned __int8)a4 address:(id)a5
{
  v9 = a3;
  v7 = a5;
  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"WiFiAwareSubscriber lostDiscoveryResult stopping Subscriber now!"];
  }

  objc_autoreleasePoolPop(v8);
  [v9 stop];
  self->_subscriberStopped = 1;
}

- (void)dataSessionRequestStarted:(id)a3
{
  v7 = a3;
  self->_sessionTerminated = 0;
  v4 = objc_autoreleasePoolPush();
  v5 = off_100298C40;
  if (off_100298C40)
  {
    v6 = [v7 localDataAddress];
    [v5 WFLog:3 message:{"WiFiAwareDataSession started, self nan data macAddress %@", v6}];
  }

  objc_autoreleasePoolPop(v4);
}

- (void)dataSession:(id)a3 failedToStartWithError:(int64_t)a4
{
  v7 = a3;
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"WiFiAwareDataSession failed to start with errorString=%d", a4}];
  }

  objc_autoreleasePoolPop(v6);
  [(WiFiAwareSubscriber *)self->_wasPHSOverNAN stop];
  *&self->_subscriberStoppedCallbackRcvd = 256;
}

- (void)dataSession:(id)a3 terminatedWithReason:(int64_t)a4
{
  v17 = a3;
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"WiFiAwareDataSession terminated with reasonString=%d", a4}];
  }

  objc_autoreleasePoolPop(v6);
  self->_sessionTerminated = 1;
  if ([(WiFiHotspotNANInterface *)self staDatapathTerminatedcallback])
  {
    ([(WiFiHotspotNANInterface *)self staDatapathTerminatedcallback])(self->_networkMacAddr, self->_networkSsid, self->_current_rssi, self->_subscriber_ifname, a4, [(WiFiHotspotNANInterface *)self linkTerminatedCallbackContext]);
  }

  self->_clientAssociated = 0;
  curNetworkRecord = self->_curNetworkRecord;
  self->_curNetworkRecord = 0;

  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"NANPHS: did we hold off for starting subscriber %d \n", self->_subscriberHeldOffForPreviousDP}];
  }

  objc_autoreleasePoolPop(v8);
  if (self->_subscriberHeldOffForPreviousDP && self->_networkSsidNext && self->_networkMacAddrNext)
  {
    v9 = [[NSString alloc] initWithString:self->_networkSsidNext];
    networkSsid = self->_networkSsid;
    self->_networkSsid = v9;

    v11 = [[NSString alloc] initWithString:self->_networkMacAddrNext];
    networkMacAddr = self->_networkMacAddr;
    self->_networkMacAddr = v11;

    [(WiFiAwareSubscriber *)self->_wasPHSOverNAN start];
    self->_subscriberStopped = 0;
    v13 = [(WiFiAwareSubscribeConfiguration *)self->_wasCfg serviceName];
    lastAssociatedNetworkServiceName = self->_lastAssociatedNetworkServiceName;
    self->_lastAssociatedNetworkServiceName = v13;

    v15 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v16 = self->_networkSsid;
      [off_100298C40 WFLog:3 message:{"NANPHS: Started PHS over NAN Subscribe for SSID [%@] MacAddress [%@]", v16, self->_networkMacAddr}];
    }

    objc_autoreleasePoolPop(v15);
    self->_subscriberHeldOffForPreviousDP = 0;
  }
}

- (void)dataSession:(id)a3 confirmedForPeerDataAddress:(id)a4 serviceSpecificInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"WiFiAwareDataSession confirmedForPeer"];
  }

  objc_autoreleasePoolPop(v11);
  self->_clientAssociated = 1;
  curNetworkRecord = self->_curNetworkRecord;
  self->_curNetworkRecord = 0;

  v26 = 0;
  v25 = 0;
  memset(cStr, 170, sizeof(cStr));
  v13 = [v9 data];
  v14 = [v13 bytes];
  v15 = [v9 data];
  if ([v15 length] >= 6)
  {
    v17 = *v14;
    v26 = v14[2];
    v25 = v17;
  }

  else
  {
    v16 = [v9 data];
    [v16 length];
    __memcpy_chk();
  }

  [(WiFiAwareSubscriber *)self->_wasPHSOverNAN stop];
  self->_subscriberStoppedCallbackRcvd = 0;
  if ([(WiFiHotspotNANInterface *)self subscriberCancelTimerCallback])
  {
    ([(WiFiHotspotNANInterface *)self subscriberCancelTimerCallback])([(WiFiHotspotNANInterface *)self subscriberCancelTimerCallbackContext]);
  }

  self->_subscriber_ifindex = [v8 localInterfaceIndex];
  if (if_indextoname([(WiFiHotspotNANInterface *)self subscriber_ifindex], cStr))
  {
    v18 = CFStringCreateWithCString(0, cStr, 0x600u);
    subscriber_ifname = self->_subscriber_ifname;
    self->_subscriber_ifname = v18;
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s if_indextoname() Failed to get ifname for index:%d \n", "-[WiFiHotspotNANInterface dataSession:confirmedForPeerDataAddress:serviceSpecificInfo:]", self->_subscriber_ifindex}];
    }

    objc_autoreleasePoolPop(v20);
  }

  [(WiFiAwareDataSession *)self->_waDataSession setWantsPeerRSSIUpdates:1 withCompletionHandler:&stru_100260F80];
  objc_initWeak(&location, self);
  waDataSession = self->_waDataSession;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000989F0;
  v22[3] = &unk_100260FA8;
  v22[4] = self;
  objc_copyWeak(&v23, &location);
  [(WiFiAwareDataSession *)waDataSession generateCurrentNetworkRecordForInternetSharingSession:v22];
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (unsigned)isHotspotDeviceSupportNAN:(__CFString *)a3 withCFStringRef:(__CFString *)a4
{
  v6 = [NSArray arrayWithObjects:@"iPhone10, 6", @"iPhone11, 8", @"iPhone12, 5", @"iPhone13, 2", @"iPhone13, 4", 0];
  v7 = [v6 containsObject:a3];
  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    if (v7)
    {
      v9 = "Device model %@ with OS version %@ supports NAN based PHS ";
    }

    else
    {
      v9 = "Device model %@ with OS version %@ does not support NAN based PHS ";
    }

    [off_100298C40 WFLog:3 message:{v9, a3, a4}];
  }

  objc_autoreleasePoolPop(v8);

  return v7;
}

- (void)createWAPConfig:(id)a3
{
  v8 = a3;
  v4 = [[WiFiAwarePublishConfiguration alloc] initWithServiceName:v8];
  wapCfg = self->_wapCfg;
  self->_wapCfg = v4;

  if (self->_wapCfg)
  {
    v6 = objc_alloc_init(WiFiAwarePublishServiceSpecificInfo);
    [(WiFiAwarePublishConfiguration *)self->_wapCfg setServiceSpecificInfo:v6];
    [(WiFiAwarePublishConfiguration *)self->_wapCfg setFurtherServiceDiscoveryRequired:0];
    [(WiFiAwarePublishConfiguration *)self->_wapCfg setAuthenticationType:0];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: failed to create WiFiAwarePublishConfiguration", "-[WiFiHotspotNANInterface createWAPConfig:]"}];
    }

    objc_autoreleasePoolPop(v7);
  }
}

- (void)setPasswordForPHSOverNAN:(__CFString *)a3
{
  if (a3)
  {
    [(NSMutableArray *)self->_pwdList removeAllObjects];
    pwdList = self->_pwdList;

    [(NSMutableArray *)pwdList addObject:a3];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s: null password", "-[WiFiHotspotNANInterface setPasswordForPHSOverNAN:]"}];
    }

    objc_autoreleasePoolPop(v6);
  }
}

- (void)setDataPathSecCfgForPHSOverNAN:(int64_t)a3
{
  v6 = [[WiFiAwarePublishDatapathSecurityConfiguration alloc] initWithPMKList:&__NSArray0__struct passphraseList:self->_pwdList];
  v5 = [[WiFiAwarePublishDatapathConfiguration alloc] initWithServiceType:a3 securityConfiguration:v6];
  [(WiFiAwarePublishConfiguration *)self->_wapCfg setDatapathConfiguration:v5];
}

- (void)setDeviceNameForPHSOverNAN:(__CFString *)a3
{
  v4 = [(WiFiAwarePublishConfiguration *)self->_wapCfg serviceSpecificInfo];
  [v4 setInstanceName:a3];

  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"MIS deviceName set to %@ \n", a3}];
  }

  objc_autoreleasePoolPop(v5);
}

- (void)stopPublisherForPHSOverNAN
{
  v3 = [(NSMutableDictionary *)self->_wapDataSessionHandles allKeys];
  self->_nanPublisherState = 3;
  v13 = v3;
  if ([v3 count] >= 1)
  {
    v4 = 0;
    do
    {
      v5 = objc_autoreleasePoolPush();
      v6 = off_100298C40;
      if (off_100298C40)
      {
        v7 = [v13 objectAtIndexedSubscript:v4];
        [v6 WFLog:3 message:{"NANPHS: Stopping NAN-DP of address: %@ ", v7}];
      }

      objc_autoreleasePoolPop(v5);
      wapPHSOverNAN = self->_wapPHSOverNAN;
      wapDataSessionHandles = self->_wapDataSessionHandles;
      v10 = [v13 objectAtIndexedSubscript:v4];
      v11 = [(NSMutableDictionary *)wapDataSessionHandles objectForKey:v10];
      [(WiFiAwarePublisher *)wapPHSOverNAN terminateDataSession:v11 completionHandler:0];

      ++v4;
    }

    while (v4 < [v13 count]);
  }

  [(WiFiAwarePublisher *)self->_wapPHSOverNAN stop];
  v12 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"Stopping PHS over NAN Publish"];
  }

  objc_autoreleasePoolPop(v12);
}

- (void)startPublisherForPHSOverNAN
{
  self->_nanPublisherState = 1;
  v3 = [WiFiAwareInternetSharingConfiguration provideInternetToInitiatorsFromInterface:@"pdp_ip0"];
  [(WiFiAwarePublishConfiguration *)self->_wapCfg setInternetSharingConfiguration:v3];

  v4 = [[WiFiAwarePublisher alloc] initWithConfiguration:self->_wapCfg];
  wapPHSOverNAN = self->_wapPHSOverNAN;
  self->_wapPHSOverNAN = v4;

  [(WiFiAwarePublisher *)self->_wapPHSOverNAN setDelegate:self];
  [(WiFiAwarePublisher *)self->_wapPHSOverNAN start];
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"Starting PHS over NAN Publish"];
  }

  objc_autoreleasePoolPop(v6);
}

- (void)createWASConfig:(id)a3
{
  v6 = a3;
  v4 = [[WiFiAwareSubscribeConfiguration alloc] initWithServiceName:v6];
  wasCfg = self->_wasCfg;
  self->_wasCfg = v4;

  if (!self->_wasCfg)
  {
    sub_100173C80();
  }
}

- (void)startSubscriberForPHSOverNAN:(id)a3 networkMacAddress:(id)a4
{
  v35 = a3;
  v6 = a4;
  if (!v35)
  {
    sub_100173D30();
    goto LABEL_21;
  }

  if (!v6)
  {
    sub_100173CD8();
    goto LABEL_21;
  }

  [(WiFiAwareSubscribeConfiguration *)self->_wasCfg setAuthenticationType:0];
  v7 = [[WiFiAwareSubscriber alloc] initWithConfiguration:self->_wasCfg];
  wasPHSOverNAN = self->_wasPHSOverNAN;
  self->_wasPHSOverNAN = v7;

  [(WiFiAwareSubscriber *)self->_wasPHSOverNAN setDelegate:self];
  v9 = objc_autoreleasePoolPush();
  v10 = off_100298C40;
  if (off_100298C40)
  {
    lastAssociatedNetworkServiceName = self->_lastAssociatedNetworkServiceName;
    v12 = [(WiFiAwareSubscribeConfiguration *)self->_wasCfg serviceName];
    [v10 WFLog:3 message:{"WiFiAwareSubscriber _lastAssociatedNetworkServiceName %@ currentServicename %@ ", lastAssociatedNetworkServiceName, v12}];
  }

  objc_autoreleasePoolPop(v9);
  if (!self->_lastAssociatedNetworkServiceName || (-[WiFiAwareSubscribeConfiguration serviceName](self->_wasCfg, "serviceName"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 isEqualToString:self->_lastAssociatedNetworkServiceName], v13, (v14 & 1) == 0))
  {
    p_macRandomizationTransactionState = &self->_macRandomizationTransactionState;
    if ((self->_macRandomizationTransactionState | 2) == 2)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = off_100298C40;
      v18 = &stru_100260FC8;
      if (!off_100298C40)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v33 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"WiFiAwareSubscriber Disabling mac randomization, ending P2P transaction"}];
      }

      objc_autoreleasePoolPop(v33);
      v34 = +[WiFiP2PSPITransactionRequestor shared];
      [v34 endTransaction:16 completionHandler:&stru_100260FE8];

      v16 = objc_autoreleasePoolPush();
      v17 = off_100298C40;
      v18 = &stru_100261008;
      if (!off_100298C40)
      {
        goto LABEL_13;
      }
    }

LABEL_12:
    [v17 WFLog:3 message:{"WiFiAwareSubscriber Enabling mac randomization, starting P2P transaction"}];
    goto LABEL_13;
  }

  p_macRandomizationTransactionState = &self->_macRandomizationTransactionState;
  if ((self->_macRandomizationTransactionState | 2) != 2)
  {
    goto LABEL_14;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = off_100298C40;
  v18 = &stru_100261028;
  if (off_100298C40)
  {
    goto LABEL_12;
  }

LABEL_13:
  objc_autoreleasePoolPop(v16);
  v19 = +[WiFiP2PSPITransactionRequestor shared];
  [v19 beginTransaction:16 completionHandler:v18];

  *p_macRandomizationTransactionState = 1;
LABEL_14:
  if (self->_clientAssociated)
  {
    v20 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:"NANPHS: holding off for starting subscriber until DP terminate \n"];
    }

    objc_autoreleasePoolPop(v20);
    v21 = [[NSString alloc] initWithString:v35];
    networkSsidNext = self->_networkSsidNext;
    self->_networkSsidNext = v21;

    v23 = [[NSString alloc] initWithString:v6];
    networkMacAddrNext = self->_networkMacAddrNext;
    self->_networkMacAddrNext = v23;

    self->_subscriberHeldOffForPreviousDP = 1;
  }

  else
  {
    v25 = [[NSString alloc] initWithString:v35];
    networkSsid = self->_networkSsid;
    self->_networkSsid = v25;

    v27 = [[NSString alloc] initWithString:v6];
    networkMacAddr = self->_networkMacAddr;
    self->_networkMacAddr = v27;

    [(WiFiAwareSubscriber *)self->_wasPHSOverNAN start];
    self->_subscriberStopped = 0;
    v29 = [(WiFiAwareSubscribeConfiguration *)self->_wasCfg serviceName];
    v30 = self->_lastAssociatedNetworkServiceName;
    self->_lastAssociatedNetworkServiceName = v29;

    v31 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      v32 = self->_networkSsid;
      [off_100298C40 WFLog:3 message:{"NANPHS: Started PHS over NAN Subscribe for SSID [%@] MacAddress [%@]", v32, self->_networkMacAddr}];
    }

    objc_autoreleasePoolPop(v31);
  }

LABEL_21:
}

- (BOOL)checkDeviceNanCapabilities
{
  v2 = +[WiFiAwareDeviceCapabilities currentDeviceCapabilities];
  v3 = v2 != 0;

  return v3;
}

- (WiFiHotspotNANInterface)init
{
  v20.receiver = self;
  v20.super_class = WiFiHotspotNANInterface;
  v2 = [(WiFiHotspotNANInterface *)&v20 init];
  v3 = v2;
  if (v2)
  {
    wapCfg = v2->_wapCfg;
    v2->_wapCfg = 0;

    wasCfg = v3->_wasCfg;
    v3->_wasCfg = 0;

    networkSsid = v3->_networkSsid;
    v3->_networkSsid = 0;

    networkMacAddr = v3->_networkMacAddr;
    v3->_networkMacAddr = 0;

    networkSsidNext = v3->_networkSsidNext;
    v3->_networkSsidNext = 0;

    networkMacAddrNext = v3->_networkMacAddrNext;
    v3->_networkMacAddrNext = 0;

    v10 = objc_alloc_init(NSMutableArray);
    pwdList = v3->_pwdList;
    v3->_pwdList = v10;

    v12 = objc_alloc_init(NSMutableDictionary);
    wapDataSessionHandles = v3->_wapDataSessionHandles;
    v3->_wapDataSessionHandles = v12;

    v3->_sessionTerminated = 1;
    wapDataSession = v3->_wapDataSession;
    v3->_wapDataSession = 0;

    v3->_clientAssociated = 0;
    v3->_subscriber_ifindex = 0;
    subscriber_ifname = v3->_subscriber_ifname;
    v3->_subscriber_ifname = 0;

    v3->_subscriberStopped = 1;
    lastAssociatedNetworkServiceName = v3->_lastAssociatedNetworkServiceName;
    v3->_lastAssociatedNetworkServiceName = 0;

    waDiscoveryResult = v3->_waDiscoveryResult;
    v3->_waDiscoveryResult = 0;

    v3->_current_rssi = -128;
    curNetworkRecord = v3->_curNetworkRecord;
    v3->_curNetworkRecord = 0;

    *&v3->_macRandomizationTransactionState = 0;
    v3->_subscriberHeldOffForPreviousDP = 0;
    v3->_subscriberStoppedCallbackRcvd = 0;
  }

  return v3;
}

@end