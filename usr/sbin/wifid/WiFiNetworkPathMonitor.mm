@interface WiFiNetworkPathMonitor
+ (id)sharedWiFiNetworkPathMonitorWithCallback:(void *)a3 context:(void *)a4;
- (WiFiNetworkPathMonitor)init;
- (void)start;
- (void)stop;
@end

@implementation WiFiNetworkPathMonitor

+ (id)sharedWiFiNetworkPathMonitorWithCallback:(void *)a3 context:(void *)a4
{
  if (qword_100298670 != -1)
  {
    sub_100187838();
  }

  [qword_100298668 setWifiDeviceCallBack:a3];
  [qword_100298668 setWifiDeviceCallBackContext:a4];
  v6 = qword_100298668;

  return v6;
}

- (WiFiNetworkPathMonitor)init
{
  v6.receiver = self;
  v6.super_class = WiFiNetworkPathMonitor;
  v2 = [(WiFiNetworkPathMonitor *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.wifi.WiFiNetworkPathMonitor", 0);
    [(WiFiNetworkPathMonitor *)v2 setMonitorQueue:v3];

    v4 = [(WiFiNetworkPathMonitor *)v2 monitorQueue];

    if (!v4)
    {
      sub_10018784C(v2);
      return 0;
    }
  }

  return v2;
}

- (void)start
{
  monitorQueue = self->_monitorQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AA020;
  block[3] = &unk_10025E9B8;
  block[4] = self;
  dispatch_async(monitorQueue, block);
}

- (void)stop
{
  monitorQueue = self->_monitorQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AA37C;
  block[3] = &unk_10025E9B8;
  block[4] = self;
  dispatch_async(monitorQueue, block);
  [(WiFiNetworkPathMonitor *)self setWifiDeviceCallBack:0];
  [(WiFiNetworkPathMonitor *)self setWifiDeviceCallBackContext:0];
}

@end