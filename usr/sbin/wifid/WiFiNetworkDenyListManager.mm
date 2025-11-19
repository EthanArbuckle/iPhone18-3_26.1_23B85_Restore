@interface WiFiNetworkDenyListManager
- (BOOL)retrieveBatteryInfo:(BOOL *)a3 batteryLevel:(unsigned int *)a4;
- (WiFiNetworkDenyListManager)initWithArgs:(__WiFiDeviceManager *)a3 interfaceName:(id)a4;
- (void)dealloc;
- (void)denyListDidUpdate;
@end

@implementation WiFiNetworkDenyListManager

- (WiFiNetworkDenyListManager)initWithArgs:(__WiFiDeviceManager *)a3 interfaceName:(id)a4
{
  v11.receiver = self;
  v11.super_class = WiFiNetworkDenyListManager;
  v6 = [(WiFiNetworkDenyListManager *)&v11 init];
  if (!v6)
  {
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s Failed to allocate", "-[WiFiNetworkDenyListManager initWithArgs:interfaceName:]"}];
    }

    goto LABEL_9;
  }

  v7 = [[CWFNetworkDenyList alloc] initWithDenyListDeviceProfile:1];
  if (!v7)
  {
    v10 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s deviceManager is nil", "-[WiFiNetworkDenyListManager initWithArgs:interfaceName:]"}];
    }

LABEL_9:
    objc_autoreleasePoolPop(v10);

    return 0;
  }

  v8 = v7;
  [(WiFiNetworkDenyListManager *)v6 setDeviceMgr:a3];
  [(WiFiNetworkDenyListManager *)v6 setIfName:a4];
  [v8 setEnabled:1];
  [(WiFiNetworkDenyListManager *)v6 setNetworkDenyList:v8];

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WiFiNetworkDenyListManager;
  [(WiFiNetworkDenyListManager *)&v3 dealloc];
}

- (BOOL)retrieveBatteryInfo:(BOOL *)a3 batteryLevel:(unsigned int *)a4
{
  v12 = 0;
  v11 = 0;
  if (!a3 || !a4)
  {
    v7 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s Batterylevel:%p. externalPowerSupply:%p", "-[WiFiNetworkDenyListManager retrieveBatteryInfo:batteryLevel:]", a4, a3}];
    }

    goto LABEL_11;
  }

  v6 = sub_1000D6614(self->_deviceMgr, &v12, &v11);
  v7 = objc_autoreleasePoolPush();
  if (!v6)
  {
    if (off_100298C40)
    {
      [off_100298C40 WFLog:4 message:{"%s Callbacks not available ", "-[WiFiNetworkDenyListManager retrieveBatteryInfo:batteryLevel:]", v9, v10}];
    }

LABEL_11:
    objc_autoreleasePoolPop(v7);
    return 0;
  }

  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s BatteryInfo. batterylevel:%u. externalPowerSupply:%u", "-[WiFiNetworkDenyListManager retrieveBatteryInfo:batteryLevel:]", v11, v12}];
  }

  objc_autoreleasePoolPop(v7);
  *a3 = v12 != 0;
  *a4 = v11;
  return 1;
}

- (void)denyListDidUpdate
{
  sub_1000BA134(self->_deviceMgr);
  deviceMgr = self->_deviceMgr;

  sub_10018FA04(deviceMgr);
}

@end