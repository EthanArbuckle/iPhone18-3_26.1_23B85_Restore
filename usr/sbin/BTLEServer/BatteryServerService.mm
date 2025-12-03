@interface BatteryServerService
- (BatteryServerService)init;
- (id)batteryLevelValue;
- (void)peripheralManager:(id)manager central:(id)central didSubscribeToCharacteristic:(id)characteristic;
- (void)peripheralManager:(id)manager central:(id)central didUnsubscribeFromCharacteristic:(id)characteristic;
- (void)peripheralManager:(id)manager didReceiveReadRequest:(id)request;
- (void)startNotifications;
- (void)stop;
- (void)stopNotifications;
- (void)updateBatterylevel;
@end

@implementation BatteryServerService

- (BatteryServerService)init
{
  v13.receiver = self;
  v13.super_class = BatteryServerService;
  v2 = [(BatteryServerService *)&v13 init];
  if (v2)
  {
    v3 = [CBMutableCharacteristic alloc];
    v4 = [CBUUID UUIDWithString:CBUUIDBatteryLevelCharacteristicString];
    v5 = [v3 initWithType:v4 properties:1042 value:0 permissions:17];
    batteryLevelCharacteristic = v2->_batteryLevelCharacteristic;
    v2->_batteryLevelCharacteristic = v5;

    v7 = [CBMutableService alloc];
    v8 = [CBUUID UUIDWithString:CBUUIDBatteryServiceString];
    v9 = [v7 initWithType:v8 primary:1];
    [(ServerService *)v2 setService:v9];

    v14 = v2->_batteryLevelCharacteristic;
    v10 = [NSArray arrayWithObjects:&v14 count:1];
    service = [(ServerService *)v2 service];
    [service setCharacteristics:v10];

    v2->_iopsNotifyPercentChangeToken = -1;
  }

  return v2;
}

- (void)stop
{
  if ([(BatteryServerService *)self iopsNotifyPercentChangeToken]!= -1)
  {
    [(BatteryServerService *)self stopNotifications];
  }

  v3.receiver = self;
  v3.super_class = BatteryServerService;
  [(ServerService *)&v3 stop];
}

- (id)batteryLevelValue
{
  v2 = +[DataOutputStream outputStream];
  IOPSGetPercentRemaining();
  [v2 writeUint8:0];
  data = [v2 data];

  return data;
}

- (void)updateBatterylevel
{
  batteryLevelValue = [(BatteryServerService *)self batteryLevelValue];
  batteryLevelCharacteristic = [(BatteryServerService *)self batteryLevelCharacteristic];
  [(ServerService *)self updateValue:batteryLevelValue forCharacteristic:batteryLevelCharacteristic onSubscribedCentrals:0];
}

- (void)startNotifications
{
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100066BB4;
  handler[3] = &unk_1000BE6E8;
  handler[4] = self;
  notify_register_dispatch("com.apple.system.powersources.percent", &self->_iopsNotifyPercentChangeToken, &_dispatch_main_q, handler);
}

- (void)stopNotifications
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5[0] = 67109120;
    v5[1] = [(ServerService *)self restrictedMode];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "restrictedMode : %d", v5, 8u);
  }

  notify_cancel([(BatteryServerService *)self iopsNotifyPercentChangeToken]);
  [(BatteryServerService *)self setIopsNotifyPercentChangeToken:0xFFFFFFFFLL];
}

- (void)peripheralManager:(id)manager didReceiveReadRequest:(id)request
{
  requestCopy = request;
  characteristic = [requestCopy characteristic];
  batteryLevelCharacteristic = [(BatteryServerService *)self batteryLevelCharacteristic];

  if (characteristic == batteryLevelCharacteristic)
  {
    batteryLevelValue = [(BatteryServerService *)self batteryLevelValue];
    [requestCopy setValue:batteryLevelValue];

    v7 = 0;
  }

  else
  {
    v7 = 10;
  }

  [(ServerService *)self respondToRequest:requestCopy withResult:v7];
}

- (void)peripheralManager:(id)manager central:(id)central didSubscribeToCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  batteryLevelCharacteristic = [(BatteryServerService *)self batteryLevelCharacteristic];

  if (batteryLevelCharacteristic == characteristicCopy)
  {
    batteryLevelCharacteristic2 = [(BatteryServerService *)self batteryLevelCharacteristic];
    subscribedCentrals = [batteryLevelCharacteristic2 subscribedCentrals];
    v10 = [subscribedCentrals count];

    if (v10 == 1)
    {

      [(BatteryServerService *)self startNotifications];
    }
  }
}

- (void)peripheralManager:(id)manager central:(id)central didUnsubscribeFromCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  batteryLevelCharacteristic = [(BatteryServerService *)self batteryLevelCharacteristic];

  if (batteryLevelCharacteristic == characteristicCopy)
  {
    batteryLevelCharacteristic2 = [(BatteryServerService *)self batteryLevelCharacteristic];
    subscribedCentrals = [batteryLevelCharacteristic2 subscribedCentrals];
    v10 = [subscribedCentrals count];

    if (!v10)
    {

      [(BatteryServerService *)self stopNotifications];
    }
  }
}

@end