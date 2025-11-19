@interface WCM_RadioStateIndicator
+ (id)singleton;
- (WCM_RadioStateIndicator)init;
- (void)sendBTDataIfChanged;
- (void)sendThreadDataIfChanged;
- (void)sendWifiDataIfChanged;
- (void)updateAWDLState:(BOOL)a3;
- (void)updateBTConnectedState:(BOOL)a3;
- (void)updateBTLeADVePAStateChange:(BOOL)a3;
- (void)updateBTPowerState:(BOOL)a3;
- (void)updateNANState:(BOOL)a3;
- (void)updateThreadRadioState:(BOOL)a3;
- (void)updateWiFiRadioState:(int)a3;
- (void)updatehostApState:(BOOL)a3;
@end

@implementation WCM_RadioStateIndicator

+ (id)singleton
{
  v2 = qword_1002B8200;
  if (!qword_1002B8200)
  {
    v6.receiver = a1;
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

- (void)updateBTLeADVePAStateChange:(BOOL)a3
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
    v7 = a3;
    dispatch_async(btSyncQueue, v6);
  }

  else
  {

    [WCM_Logging logLevel:0 message:@"WRSI: Baseband SAR Services are not available "];
  }
}

- (void)updateBTConnectedState:(BOOL)a3
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
    v7 = a3;
    dispatch_async(btSyncQueue, v6);
  }

  else
  {

    [WCM_Logging logLevel:0 message:@"WRSI: Baseband SAR Services are not available "];
  }
}

- (void)updateBTPowerState:(BOOL)a3
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
    v7 = a3;
    dispatch_async(btSyncQueue, v6);
  }

  else
  {

    [WCM_Logging logLevel:0 message:@"WRSI: Baseband SAR Services are not available "];
  }
}

- (void)updateNANState:(BOOL)a3
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
    v7 = a3;
    dispatch_async(wifiSyncQueue, v6);
  }

  else
  {

    [WCM_Logging logLevel:0 message:@"WRSI: Baseband SAR Services are not available "];
  }
}

- (void)updateAWDLState:(BOOL)a3
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
    v7 = a3;
    dispatch_async(wifiSyncQueue, v6);
  }

  else
  {

    [WCM_Logging logLevel:0 message:@"WRSI: Baseband SAR Services are not available "];
  }
}

- (void)updateWiFiRadioState:(int)a3
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
    v7 = a3;
    v6[4] = self;
    dispatch_async(wifiSyncQueue, v6);
  }

  else
  {

    [WCM_Logging logLevel:0 message:@"WRSI: Baseband SAR Services are not available "];
  }
}

- (void)updatehostApState:(BOOL)a3
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
    v7 = a3;
    dispatch_async(wifiSyncQueue, v6);
  }

  else
  {

    [WCM_Logging logLevel:0 message:@"WRSI: Baseband SAR Services are not available "];
  }
}

- (void)updateThreadRadioState:(BOOL)a3
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
    v7 = a3;
    dispatch_async(threadSyncQueue, v6);
  }

  else
  {

    [WCM_Logging logLevel:0 message:@"WRSI: Baseband SAR Services are not available "];
  }
}

- (void)sendWifiDataIfChanged
{
  v3 = [(WCM_RadioStateIndicator *)self wcmRadioStateIndicatorWrapper];
  v9 = [v3 getWifiState];

  if (v9)
  {
    v4 = [(WCM_RadioStateIndicator *)self wifidata];
    v5 = [v4 isEqualToDictionary:v9];

    if ((v5 & 1) == 0)
    {
      v6 = [(WCM_RadioStateIndicator *)self wifidata];
      [WCM_Logging logLevel:2 message:@"WRSI: lastSentData %@ NewData %@", v9, v6];

      v7 = [(WCM_RadioStateIndicator *)self wcmRadioStateIndicatorWrapper];
      v8 = [(WCM_RadioStateIndicator *)self wifidata];
      [v7 setWifiState:v8];
    }
  }
}

- (void)sendBTDataIfChanged
{
  v3 = [(WCM_RadioStateIndicator *)self wcmRadioStateIndicatorWrapper];
  v9 = [v3 getBTState];

  if (v9)
  {
    v4 = [(WCM_RadioStateIndicator *)self btdata];
    v5 = [v4 isEqualToDictionary:v9];

    if ((v5 & 1) == 0)
    {
      v6 = [(WCM_RadioStateIndicator *)self btdata];
      [WCM_Logging logLevel:2 message:@"WRSI: lastSentData %@ NewData %@", v9, v6];

      v7 = [(WCM_RadioStateIndicator *)self wcmRadioStateIndicatorWrapper];
      v8 = [(WCM_RadioStateIndicator *)self btdata];
      [v7 setBTState:v8];
    }
  }
}

- (void)sendThreadDataIfChanged
{
  v3 = [(WCM_RadioStateIndicator *)self wcmRadioStateIndicatorWrapper];
  v9 = [v3 getThreadState];

  if (v9)
  {
    v4 = [(WCM_RadioStateIndicator *)self threaddata];
    v5 = [v4 isEqualToDictionary:v9];

    if ((v5 & 1) == 0)
    {
      v6 = [(WCM_RadioStateIndicator *)self threaddata];
      [WCM_Logging logLevel:2 message:@"WRSI: lastSentData %@ NewData %@", v9, v6];

      v7 = [(WCM_RadioStateIndicator *)self wcmRadioStateIndicatorWrapper];
      v8 = [(WCM_RadioStateIndicator *)self threaddata];
      [v7 setThreadState:v8];
    }
  }
}

@end