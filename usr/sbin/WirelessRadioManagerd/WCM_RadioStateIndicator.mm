@interface WCM_RadioStateIndicator
+ (id)singleton;
- (WCM_RadioStateIndicator)init;
- (void)sendBTDataIfChanged;
- (void)sendThreadDataIfChanged;
- (void)sendWifiDataIfChanged;
- (void)updateAWDLState:(BOOL)state;
- (void)updateBTConnectedState:(BOOL)state;
- (void)updateBTLeADVePAStateChange:(BOOL)change;
- (void)updateBTPowerState:(BOOL)state;
- (void)updateNANState:(BOOL)state;
- (void)updateThreadRadioState:(BOOL)state;
- (void)updateWiFiRadioState:(int)state;
- (void)updatehostApState:(BOOL)state;
@end

@implementation WCM_RadioStateIndicator

+ (id)singleton
{
  v2 = qword_1002B8200;
  if (!qword_1002B8200)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___WCM_RadioStateIndicator;
    v3 = [objc_msgSendSuper2(&v6 allocWithZone:{0), "init"}];
    v4 = qword_1002B8200;
    qword_1002B8200 = v3;

    v2 = qword_1002B8200;
  }

  return v2;
}

- (WCM_RadioStateIndicator)init
{
  v19.receiver = self;
  v19.super_class = WCM_RadioStateIndicator;
  v2 = [(WCM_RadioStateIndicator *)&v19 init];
  if (v2)
  {
    v3 = [&off_10028DF80 mutableCopy];
    wifidata = v2->_wifidata;
    v2->_wifidata = v3;

    v5 = dispatch_queue_create("com.example.wifidatacollector", 0);
    wifiSyncQueue = v2->_wifiSyncQueue;
    v2->_wifiSyncQueue = v5;

    v7 = [&off_10028DFA8 mutableCopy];
    btdata = v2->_btdata;
    v2->_btdata = v7;

    v9 = dispatch_queue_create("com.example.btdatacollector", 0);
    btSyncQueue = v2->_btSyncQueue;
    v2->_btSyncQueue = v9;

    v11 = [&off_10028DFD0 mutableCopy];
    threaddata = v2->_threaddata;
    v2->_threaddata = v11;

    v13 = dispatch_queue_create("com.example.threaddatacollector", 0);
    threadSyncQueue = v2->_threadSyncQueue;
    v2->_threadSyncQueue = v13;

    v15 = objc_alloc_init(WCM_RadioStateIndicatorWrapper);
    wcmRadioStateIndicatorWrapper = v2->_wcmRadioStateIndicatorWrapper;
    v2->_wcmRadioStateIndicatorWrapper = v15;

    v2->_appleSARHelperAvailable = sysctlbyname("hw.features.baseband_sar_service", 0, 0, 0, 0) != -1;
    v17 = v2;
  }

  return v2;
}

- (void)updateBTLeADVePAStateChange:(BOOL)change
{
  if (self->_appleSARHelperAvailable)
  {
    v8 = v3;
    v9 = v4;
    btSyncQueue = self->_btSyncQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100100E98;
    v6[3] = &unk_100242298;
    v6[4] = self;
    changeCopy = change;
    dispatch_async(btSyncQueue, v6);
  }

  else
  {

    [WCM_Logging logLevel:0 message:@"WRSI: Baseband SAR Services are not available "];
  }
}

- (void)updateBTConnectedState:(BOOL)state
{
  if (self->_appleSARHelperAvailable)
  {
    v8 = v3;
    v9 = v4;
    btSyncQueue = self->_btSyncQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100101090;
    v6[3] = &unk_100242298;
    v6[4] = self;
    stateCopy = state;
    dispatch_async(btSyncQueue, v6);
  }

  else
  {

    [WCM_Logging logLevel:0 message:@"WRSI: Baseband SAR Services are not available "];
  }
}

- (void)updateBTPowerState:(BOOL)state
{
  if (self->_appleSARHelperAvailable)
  {
    v8 = v3;
    v9 = v4;
    btSyncQueue = self->_btSyncQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100101288;
    v6[3] = &unk_100242298;
    v6[4] = self;
    stateCopy = state;
    dispatch_async(btSyncQueue, v6);
  }

  else
  {

    [WCM_Logging logLevel:0 message:@"WRSI: Baseband SAR Services are not available "];
  }
}

- (void)updateNANState:(BOOL)state
{
  if (self->_appleSARHelperAvailable)
  {
    v8 = v3;
    v9 = v4;
    wifiSyncQueue = self->_wifiSyncQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100101480;
    v6[3] = &unk_100242298;
    v6[4] = self;
    stateCopy = state;
    dispatch_async(wifiSyncQueue, v6);
  }

  else
  {

    [WCM_Logging logLevel:0 message:@"WRSI: Baseband SAR Services are not available "];
  }
}

- (void)updateAWDLState:(BOOL)state
{
  if (self->_appleSARHelperAvailable)
  {
    v8 = v3;
    v9 = v4;
    wifiSyncQueue = self->_wifiSyncQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100101678;
    v6[3] = &unk_100242298;
    v6[4] = self;
    stateCopy = state;
    dispatch_async(wifiSyncQueue, v6);
  }

  else
  {

    [WCM_Logging logLevel:0 message:@"WRSI: Baseband SAR Services are not available "];
  }
}

- (void)updateWiFiRadioState:(int)state
{
  if (self->_appleSARHelperAvailable)
  {
    v8 = v3;
    v9 = v4;
    wifiSyncQueue = self->_wifiSyncQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100101870;
    v6[3] = &unk_1002422C0;
    stateCopy = state;
    v6[4] = self;
    dispatch_async(wifiSyncQueue, v6);
  }

  else
  {

    [WCM_Logging logLevel:0 message:@"WRSI: Baseband SAR Services are not available "];
  }
}

- (void)updatehostApState:(BOOL)state
{
  if (self->_appleSARHelperAvailable)
  {
    v8 = v3;
    v9 = v4;
    wifiSyncQueue = self->_wifiSyncQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100101D38;
    v6[3] = &unk_100242298;
    v6[4] = self;
    stateCopy = state;
    dispatch_async(wifiSyncQueue, v6);
  }

  else
  {

    [WCM_Logging logLevel:0 message:@"WRSI: Baseband SAR Services are not available "];
  }
}

- (void)updateThreadRadioState:(BOOL)state
{
  if (self->_appleSARHelperAvailable)
  {
    v8 = v3;
    v9 = v4;
    threadSyncQueue = self->_threadSyncQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100101F30;
    v6[3] = &unk_100242298;
    v6[4] = self;
    stateCopy = state;
    dispatch_async(threadSyncQueue, v6);
  }

  else
  {

    [WCM_Logging logLevel:0 message:@"WRSI: Baseband SAR Services are not available "];
  }
}

- (void)sendWifiDataIfChanged
{
  wcmRadioStateIndicatorWrapper = [(WCM_RadioStateIndicator *)self wcmRadioStateIndicatorWrapper];
  getWifiState = [wcmRadioStateIndicatorWrapper getWifiState];

  if (getWifiState)
  {
    wifidata = [(WCM_RadioStateIndicator *)self wifidata];
    v5 = [wifidata isEqualToDictionary:getWifiState];

    if ((v5 & 1) == 0)
    {
      wifidata2 = [(WCM_RadioStateIndicator *)self wifidata];
      [WCM_Logging logLevel:2 message:@"WRSI: lastSentData %@ NewData %@", getWifiState, wifidata2];

      wcmRadioStateIndicatorWrapper2 = [(WCM_RadioStateIndicator *)self wcmRadioStateIndicatorWrapper];
      wifidata3 = [(WCM_RadioStateIndicator *)self wifidata];
      [wcmRadioStateIndicatorWrapper2 setWifiState:wifidata3];
    }
  }
}

- (void)sendBTDataIfChanged
{
  wcmRadioStateIndicatorWrapper = [(WCM_RadioStateIndicator *)self wcmRadioStateIndicatorWrapper];
  getBTState = [wcmRadioStateIndicatorWrapper getBTState];

  if (getBTState)
  {
    btdata = [(WCM_RadioStateIndicator *)self btdata];
    v5 = [btdata isEqualToDictionary:getBTState];

    if ((v5 & 1) == 0)
    {
      btdata2 = [(WCM_RadioStateIndicator *)self btdata];
      [WCM_Logging logLevel:2 message:@"WRSI: lastSentData %@ NewData %@", getBTState, btdata2];

      wcmRadioStateIndicatorWrapper2 = [(WCM_RadioStateIndicator *)self wcmRadioStateIndicatorWrapper];
      btdata3 = [(WCM_RadioStateIndicator *)self btdata];
      [wcmRadioStateIndicatorWrapper2 setBTState:btdata3];
    }
  }
}

- (void)sendThreadDataIfChanged
{
  wcmRadioStateIndicatorWrapper = [(WCM_RadioStateIndicator *)self wcmRadioStateIndicatorWrapper];
  getThreadState = [wcmRadioStateIndicatorWrapper getThreadState];

  if (getThreadState)
  {
    threaddata = [(WCM_RadioStateIndicator *)self threaddata];
    v5 = [threaddata isEqualToDictionary:getThreadState];

    if ((v5 & 1) == 0)
    {
      threaddata2 = [(WCM_RadioStateIndicator *)self threaddata];
      [WCM_Logging logLevel:2 message:@"WRSI: lastSentData %@ NewData %@", getThreadState, threaddata2];

      wcmRadioStateIndicatorWrapper2 = [(WCM_RadioStateIndicator *)self wcmRadioStateIndicatorWrapper];
      threaddata3 = [(WCM_RadioStateIndicator *)self threaddata];
      [wcmRadioStateIndicatorWrapper2 setThreadState:threaddata3];
    }
  }
}

@end