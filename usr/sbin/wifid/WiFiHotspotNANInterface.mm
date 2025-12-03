@interface WiFiHotspotNANInterface
- (BOOL)checkDeviceNanCapabilities;
- (BOOL)isConnectedToSameNanNetwork:(__CFString *)network;
- (WiFiHotspotNANInterface)init;
- (unsigned)isHotspotDeviceSupportNAN:(__CFString *)n withCFStringRef:(__CFString *)ref;
- (void)createWAPConfig:(id)config;
- (void)createWASConfig:(id)config;
- (void)dataSession:(id)session confirmedForPeerDataAddress:(id)address serviceSpecificInfo:(id)info;
- (void)dataSession:(id)session failedToStartWithError:(int64_t)error;
- (void)dataSession:(id)session terminatedWithReason:(int64_t)reason;
- (void)dataSessionRequestStarted:(id)started;
- (void)publisher:(id)publisher dataConfirmedForHandle:(id)handle localInterfaceIndex:(unsigned int)index serviceSpecificInfo:(id)info;
- (void)publisher:(id)publisher dataTerminatedForHandle:(id)handle reason:(int64_t)reason;
- (void)publisher:(id)publisher failedToStartWithError:(int64_t)error;
- (void)publisher:(id)publisher terminatedWithReason:(int64_t)reason;
- (void)publisherStarted:(id)started;
- (void)registerClientDatapathTerminatedCallback:(void *)callback withContext:(void *)context;
- (void)registerPublisherMetricCallback:(void *)callback withContext:(void *)context;
- (void)registerStaArriveCallback:(void *)callback withContext:(void *)context;
- (void)registerStaLeaveCallback:(void *)callback withContext:(void *)context;
- (void)registerSubscriberMetricCallback:(void *)callback withContext:(void *)context;
- (void)registerSubscriberTimerCancelCallback:(void *)callback withContext:(void *)context;
- (void)setDataPathSecCfgForPHSOverNAN:(int64_t)n;
- (void)setDeviceNameForPHSOverNAN:(__CFString *)n;
- (void)setPasswordForPHSOverNAN:(__CFString *)n;
- (void)startPublisherForPHSOverNAN;
- (void)startSubscriberForPHSOverNAN:(id)n networkMacAddress:(id)address;
- (void)stopPublisherForPHSOverNAN;
- (void)stopSubscriberAsNoNetworkFound;
- (void)stopSubscriberForPHSOverNAN;
- (void)subscriber:(id)subscriber failedToStartWithError:(int64_t)error;
- (void)subscriber:(id)subscriber lostDiscoveryResultForPublishID:(unsigned __int8)d address:(id)address;
- (void)subscriber:(id)subscriber receivedDiscoveryResult:(id)result;
- (void)subscriber:(id)subscriber terminatedWithReason:(int64_t)reason;
- (void)subscriberStarted:(id)started;
@end

@implementation WiFiHotspotNANInterface

- (void)publisherStarted:(id)started
{
  startedCopy = started;
  v4 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"WiFiAwarePublisher started with publisher=%@", startedCopy}];
  }

  objc_autoreleasePoolPop(v4);
  self->_nanPublisherState = 2;
}

- (void)publisher:(id)publisher failedToStartWithError:(int64_t)error
{
  publisherCopy = publisher;
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"WiFiAwarePublisher failed to start with errorString=%d", error}];
  }

  objc_autoreleasePoolPop(v6);
  self->_nanPublisherState = 0;
  if ([(WiFiHotspotNANInterface *)self publisherMetricsCallback])
  {
    ([(WiFiHotspotNANInterface *)self publisherMetricsCallback])(0, error, [(WiFiHotspotNANInterface *)self publisherMetricsCallbackContext]);
  }
}

- (void)publisher:(id)publisher terminatedWithReason:(int64_t)reason
{
  publisherCopy = publisher;
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"WiFiAwarePublisher terminated with reasonString=%d", reason}];
  }

  objc_autoreleasePoolPop(v6);
  self->_nanPublisherState = 0;
  if ([(WiFiHotspotNANInterface *)self publisherMetricsCallback])
  {
    ([(WiFiHotspotNANInterface *)self publisherMetricsCallback])(2, reason, [(WiFiHotspotNANInterface *)self publisherMetricsCallbackContext]);
  }
}

- (void)publisher:(id)publisher dataConfirmedForHandle:(id)handle localInterfaceIndex:(unsigned int)index serviceSpecificInfo:(id)info
{
  publisherCopy = publisher;
  handleCopy = handle;
  infoCopy = info;
  objc_storeStrong(&self->_wapDataSession, handle);
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
  initiatorDataAddress = [handleCopy initiatorDataAddress];
  data = [initiatorDataAddress data];
  bytes = [data bytes];
  initiatorDataAddress2 = [handleCopy initiatorDataAddress];
  data2 = [initiatorDataAddress2 data];
  if ([data2 length] >= 6)
  {
    v25 = bytes[2];
    v24 = *bytes;
  }

  else
  {
    initiatorDataAddress3 = [handleCopy initiatorDataAddress];
    data3 = [initiatorDataAddress3 data];
    [data3 length];
    __memcpy_chk();
  }

  [handleCopy initiatorDataAddress];
  v19 = [NSString stringWithFormat:@"%.2X:%.2X:%.2X:%.2X:%.2X:%.2X", v24, BYTE1(v24), BYTE2(v24), HIBYTE(v24), v25, HIBYTE(v25)];
  [(NSMutableDictionary *)self->_wapDataSessionHandles setObject:handleCopy forKey:v19];
  if (if_indextoname(index, cStr))
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
    (-[WiFiHotspotNANInterface staArrivecallback](self, "staArrivecallback"))([handleCopy datapathID], v19, v20, -[WiFiHotspotNANInterface callbackContext](self, "callbackContext"));
  }

  if (v20)
  {
    CFRelease(v20);
  }
}

- (void)publisher:(id)publisher dataTerminatedForHandle:(id)handle reason:(int64_t)reason
{
  reasonCopy2 = publisher;
  handleCopy = handle;
  v10 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"WiFiAwarePublisher data session terminated for reason %d \n", reason}];
  }

  objc_autoreleasePoolPop(v10);
  v24 = 0;
  v23 = 0;
  initiatorDataAddress = [handleCopy initiatorDataAddress];
  data = [initiatorDataAddress data];
  bytes = [data bytes];
  initiatorDataAddress2 = [handleCopy initiatorDataAddress];
  data2 = [initiatorDataAddress2 data];
  if ([data2 length] >= 6)
  {
    v24 = bytes[2];
    v23 = *bytes;
  }

  else
  {
    [handleCopy initiatorDataAddress];
    v22 = handleCopy;
    reasonCopy = reason;
    v17 = reason = reasonCopy2;
    data3 = [v17 data];
    [data3 length];
    __memcpy_chk();

    reasonCopy2 = reason;
    LOBYTE(reason) = reasonCopy;
    handleCopy = v22;
  }

  v19 = [NSString stringWithFormat:@"%.2X:%.2X:%.2X:%.2X:%.2X:%.2X", v23, BYTE1(v23), BYTE2(v23), HIBYTE(v23), v24, HIBYTE(v24)];
  v20 = [(NSMutableDictionary *)self->_wapDataSessionHandles objectForKey:v19];

  if (v20)
  {
    [(NSMutableDictionary *)self->_wapDataSessionHandles removeObjectForKey:v19];
    if ([(WiFiHotspotNANInterface *)self staLeavecallback])
    {
      (-[WiFiHotspotNANInterface staLeavecallback](self, "staLeavecallback"))([handleCopy datapathID], v19, 0, -[WiFiHotspotNANInterface callbackContext](self, "callbackContext"));
    }
  }

  if ([(WiFiHotspotNANInterface *)self publisherMetricsCallback])
  {
    ([(WiFiHotspotNANInterface *)self publisherMetricsCallback])(1, reason, [(WiFiHotspotNANInterface *)self publisherMetricsCallbackContext]);
  }

  v21 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"NANPHS: _wapDataSessionHandles count %ld", -[NSMutableDictionary count](self->_wapDataSessionHandles, "count")}];
  }

  objc_autoreleasePoolPop(v21);
}

- (void)registerStaLeaveCallback:(void *)callback withContext:(void *)context
{
  [(WiFiHotspotNANInterface *)self setStaLeavecallback:callback];

  [(WiFiHotspotNANInterface *)self setCallbackContext:context];
}

- (void)registerStaArriveCallback:(void *)callback withContext:(void *)context
{
  [(WiFiHotspotNANInterface *)self setStaArrivecallback:callback];

  [(WiFiHotspotNANInterface *)self setCallbackContext:context];
}

- (void)registerPublisherMetricCallback:(void *)callback withContext:(void *)context
{
  [(WiFiHotspotNANInterface *)self setPublisherMetricsCallback:callback];

  [(WiFiHotspotNANInterface *)self setPublisherMetricsCallbackContext:context];
}

- (void)registerSubscriberMetricCallback:(void *)callback withContext:(void *)context
{
  [(WiFiHotspotNANInterface *)self setSubscriberMetricsCallback:callback];

  [(WiFiHotspotNANInterface *)self setSubscriberMetricsCallbackContext:context];
}

- (void)registerSubscriberTimerCancelCallback:(void *)callback withContext:(void *)context
{
  [(WiFiHotspotNANInterface *)self setSubscriberCancelTimerCallback:callback];

  [(WiFiHotspotNANInterface *)self setSubscriberCancelTimerCallbackContext:context];
}

- (void)registerClientDatapathTerminatedCallback:(void *)callback withContext:(void *)context
{
  [(WiFiHotspotNANInterface *)self setStaDatapathTerminatedcallback:callback];

  [(WiFiHotspotNANInterface *)self setLinkTerminatedCallbackContext:context];
}

- (BOOL)isConnectedToSameNanNetwork:(__CFString *)network
{
  v5 = objc_autoreleasePoolPush();
  v6 = off_100298C40;
  if (off_100298C40)
  {
    discoveryResult = [(WiFiAwareDataSession *)self->_waDataSession discoveryResult];
    serviceName = [discoveryResult serviceName];
    serviceName2 = [(WiFiAwareDiscoveryResult *)self->_waDiscoveryResult serviceName];
    [v6 WFLog:3 message:{"NANPHS: %d %d _clientAssociated %d \n", serviceName == 0, serviceName2 == 0, self->_clientAssociated}];
  }

  objc_autoreleasePoolPop(v5);
  if (self->_clientAssociated && (-[WiFiAwareDataSession discoveryResult](self->_waDataSession, "discoveryResult"), v10 = objc_claimAutoreleasedReturnValue(), [v10 serviceName], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    v12 = objc_autoreleasePoolPush();
    v13 = off_100298C40;
    if (off_100298C40)
    {
      discoveryResult2 = [(WiFiAwareDataSession *)self->_waDataSession discoveryResult];
      serviceName3 = [discoveryResult2 serviceName];
      [v13 WFLog:3 message:{"NANPHS: serviceNameCurrent %@ serviceNameConnectedTo %@", network, serviceName3}];
    }

    objc_autoreleasePoolPop(v12);
    discoveryResult3 = [(WiFiAwareDataSession *)self->_waDataSession discoveryResult];
    serviceName4 = [discoveryResult3 serviceName];
    v18 = [(__CFString *)network isEqualToString:serviceName4];
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

- (void)subscriberStarted:(id)started
{
  startedCopy = started;
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"WiFiAwareSubscriber started with subscriber=%@", startedCopy}];
  }

  objc_autoreleasePoolPop(v3);
}

- (void)subscriber:(id)subscriber failedToStartWithError:(int64_t)error
{
  subscriberCopy = subscriber;
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"WiFiAwareSubscriber failed to start with errorString=%d", error}];
  }

  objc_autoreleasePoolPop(v6);
  if ([(WiFiHotspotNANInterface *)self subscriberMetricsCallback])
  {
    ([(WiFiHotspotNANInterface *)self subscriberMetricsCallback])(0, error, [(WiFiHotspotNANInterface *)self subscriberMetricsCallbackContext]);
  }
}

- (void)subscriber:(id)subscriber terminatedWithReason:(int64_t)reason
{
  subscriberCopy = subscriber;
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"WiFiAwareSubscriber terminated with reasonString=%d", reason}];
  }

  objc_autoreleasePoolPop(v6);
  *&self->_subscriberStoppedCallbackRcvd = 257;
  if ([(WiFiHotspotNANInterface *)self subscriberMetricsCallback])
  {
    ([(WiFiHotspotNANInterface *)self subscriberMetricsCallback])(2, reason, [(WiFiHotspotNANInterface *)self subscriberMetricsCallbackContext]);
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

- (void)subscriber:(id)subscriber receivedDiscoveryResult:(id)result
{
  subscriberCopy = subscriber;
  resultCopy = result;
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
      serviceSpecificInfo = [resultCopy serviceSpecificInfo];
      instanceName = [serviceSpecificInfo instanceName];
      serviceName = [resultCopy serviceName];
      [v8 WFLog:3 message:{"WiFiAwareSubscriber receivedDiscoveryResult with instance name %@, service name %@", instanceName, serviceName}];
    }

    objc_autoreleasePoolPop(v7);
    pwdList = self->_pwdList;
    if (pwdList && [(NSMutableArray *)pwdList count])
    {
      configuration = [subscriberCopy configuration];
      serviceName2 = [configuration serviceName];
      serviceName3 = [resultCopy serviceName];
      v16 = [serviceName2 isEqualToString:serviceName3];

      if (v16)
      {
        objc_storeStrong(&self->_waDiscoveryResult, result);
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

- (void)subscriber:(id)subscriber lostDiscoveryResultForPublishID:(unsigned __int8)d address:(id)address
{
  subscriberCopy = subscriber;
  addressCopy = address;
  v8 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:"WiFiAwareSubscriber lostDiscoveryResult stopping Subscriber now!"];
  }

  objc_autoreleasePoolPop(v8);
  [subscriberCopy stop];
  self->_subscriberStopped = 1;
}

- (void)dataSessionRequestStarted:(id)started
{
  startedCopy = started;
  self->_sessionTerminated = 0;
  v4 = objc_autoreleasePoolPush();
  v5 = off_100298C40;
  if (off_100298C40)
  {
    localDataAddress = [startedCopy localDataAddress];
    [v5 WFLog:3 message:{"WiFiAwareDataSession started, self nan data macAddress %@", localDataAddress}];
  }

  objc_autoreleasePoolPop(v4);
}

- (void)dataSession:(id)session failedToStartWithError:(int64_t)error
{
  sessionCopy = session;
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"WiFiAwareDataSession failed to start with errorString=%d", error}];
  }

  objc_autoreleasePoolPop(v6);
  [(WiFiAwareSubscriber *)self->_wasPHSOverNAN stop];
  *&self->_subscriberStoppedCallbackRcvd = 256;
}

- (void)dataSession:(id)session terminatedWithReason:(int64_t)reason
{
  sessionCopy = session;
  v6 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"WiFiAwareDataSession terminated with reasonString=%d", reason}];
  }

  objc_autoreleasePoolPop(v6);
  self->_sessionTerminated = 1;
  if ([(WiFiHotspotNANInterface *)self staDatapathTerminatedcallback])
  {
    ([(WiFiHotspotNANInterface *)self staDatapathTerminatedcallback])(self->_networkMacAddr, self->_networkSsid, self->_current_rssi, self->_subscriber_ifname, reason, [(WiFiHotspotNANInterface *)self linkTerminatedCallbackContext]);
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
    serviceName = [(WiFiAwareSubscribeConfiguration *)self->_wasCfg serviceName];
    lastAssociatedNetworkServiceName = self->_lastAssociatedNetworkServiceName;
    self->_lastAssociatedNetworkServiceName = serviceName;

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

- (void)dataSession:(id)session confirmedForPeerDataAddress:(id)address serviceSpecificInfo:(id)info
{
  sessionCopy = session;
  addressCopy = address;
  infoCopy = info;
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
  data = [addressCopy data];
  bytes = [data bytes];
  data2 = [addressCopy data];
  if ([data2 length] >= 6)
  {
    v17 = *bytes;
    v26 = bytes[2];
    v25 = v17;
  }

  else
  {
    data3 = [addressCopy data];
    [data3 length];
    __memcpy_chk();
  }

  [(WiFiAwareSubscriber *)self->_wasPHSOverNAN stop];
  self->_subscriberStoppedCallbackRcvd = 0;
  if ([(WiFiHotspotNANInterface *)self subscriberCancelTimerCallback])
  {
    ([(WiFiHotspotNANInterface *)self subscriberCancelTimerCallback])([(WiFiHotspotNANInterface *)self subscriberCancelTimerCallbackContext]);
  }

  self->_subscriber_ifindex = [sessionCopy localInterfaceIndex];
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

- (unsigned)isHotspotDeviceSupportNAN:(__CFString *)n withCFStringRef:(__CFString *)ref
{
  v6 = [NSArray arrayWithObjects:@"iPhone10, 6", @"iPhone11, 8", @"iPhone12, 5", @"iPhone13, 2", @"iPhone13, 4", 0];
  v7 = [v6 containsObject:n];
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

    [off_100298C40 WFLog:3 message:{v9, n, ref}];
  }

  objc_autoreleasePoolPop(v8);

  return v7;
}

- (void)createWAPConfig:(id)config
{
  configCopy = config;
  v4 = [[WiFiAwarePublishConfiguration alloc] initWithServiceName:configCopy];
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

- (void)setPasswordForPHSOverNAN:(__CFString *)n
{
  if (n)
  {
    [(NSMutableArray *)self->_pwdList removeAllObjects];
    pwdList = self->_pwdList;

    [(NSMutableArray *)pwdList addObject:n];
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

- (void)setDataPathSecCfgForPHSOverNAN:(int64_t)n
{
  v6 = [[WiFiAwarePublishDatapathSecurityConfiguration alloc] initWithPMKList:&__NSArray0__struct passphraseList:self->_pwdList];
  v5 = [[WiFiAwarePublishDatapathConfiguration alloc] initWithServiceType:n securityConfiguration:v6];
  [(WiFiAwarePublishConfiguration *)self->_wapCfg setDatapathConfiguration:v5];
}

- (void)setDeviceNameForPHSOverNAN:(__CFString *)n
{
  serviceSpecificInfo = [(WiFiAwarePublishConfiguration *)self->_wapCfg serviceSpecificInfo];
  [serviceSpecificInfo setInstanceName:n];

  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"MIS deviceName set to %@ \n", n}];
  }

  objc_autoreleasePoolPop(v5);
}

- (void)stopPublisherForPHSOverNAN
{
  allKeys = [(NSMutableDictionary *)self->_wapDataSessionHandles allKeys];
  self->_nanPublisherState = 3;
  v13 = allKeys;
  if ([allKeys count] >= 1)
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

- (void)createWASConfig:(id)config
{
  configCopy = config;
  v4 = [[WiFiAwareSubscribeConfiguration alloc] initWithServiceName:configCopy];
  wasCfg = self->_wasCfg;
  self->_wasCfg = v4;

  if (!self->_wasCfg)
  {
    sub_100173C80();
  }
}

- (void)startSubscriberForPHSOverNAN:(id)n networkMacAddress:(id)address
{
  nCopy = n;
  addressCopy = address;
  if (!nCopy)
  {
    sub_100173D30();
    goto LABEL_21;
  }

  if (!addressCopy)
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
    serviceName = [(WiFiAwareSubscribeConfiguration *)self->_wasCfg serviceName];
    [v10 WFLog:3 message:{"WiFiAwareSubscriber _lastAssociatedNetworkServiceName %@ currentServicename %@ ", lastAssociatedNetworkServiceName, serviceName}];
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
    v21 = [[NSString alloc] initWithString:nCopy];
    networkSsidNext = self->_networkSsidNext;
    self->_networkSsidNext = v21;

    v23 = [[NSString alloc] initWithString:addressCopy];
    networkMacAddrNext = self->_networkMacAddrNext;
    self->_networkMacAddrNext = v23;

    self->_subscriberHeldOffForPreviousDP = 1;
  }

  else
  {
    v25 = [[NSString alloc] initWithString:nCopy];
    networkSsid = self->_networkSsid;
    self->_networkSsid = v25;

    v27 = [[NSString alloc] initWithString:addressCopy];
    networkMacAddr = self->_networkMacAddr;
    self->_networkMacAddr = v27;

    [(WiFiAwareSubscriber *)self->_wasPHSOverNAN start];
    self->_subscriberStopped = 0;
    serviceName2 = [(WiFiAwareSubscribeConfiguration *)self->_wasCfg serviceName];
    v30 = self->_lastAssociatedNetworkServiceName;
    self->_lastAssociatedNetworkServiceName = serviceName2;

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