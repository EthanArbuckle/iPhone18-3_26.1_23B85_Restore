@interface BatteryServerService
- (BatteryServerService)init;
- (id)batteryLevelValue;
- (void)peripheralManager:(id)a3 central:(id)a4 didSubscribeToCharacteristic:(id)a5;
- (void)peripheralManager:(id)a3 central:(id)a4 didUnsubscribeFromCharacteristic:(id)a5;
- (void)peripheralManager:(id)a3 didReceiveReadRequest:(id)a4;
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
    v11 = [(ServerService *)v2 service];
    [v11 setCharacteristics:v10];

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
  v3 = [v2 data];

  return v3;
}

- (void)updateBatterylevel
{
  v4 = [(BatteryServerService *)self batteryLevelValue];
  v3 = [(BatteryServerService *)self batteryLevelCharacteristic];
  [(ServerService *)self updateValue:v4 forCharacteristic:v3 onSubscribedCentrals:0];
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

- (void)peripheralManager:(id)a3 didReceiveReadRequest:(id)a4
{
  v9 = a4;
  v5 = [v9 characteristic];
  v6 = [(BatteryServerService *)self batteryLevelCharacteristic];

  if (v5 == v6)
  {
    v8 = [(BatteryServerService *)self batteryLevelValue];
    [v9 setValue:v8];

    v7 = 0;
  }

  else
  {
    v7 = 10;
  }

  [(ServerService *)self respondToRequest:v9 withResult:v7];
}

- (void)peripheralManager:(id)a3 central:(id)a4 didSubscribeToCharacteristic:(id)a5
{
  v6 = a5;
  v7 = [(BatteryServerService *)self batteryLevelCharacteristic];

  if (v7 == v6)
  {
    v8 = [(BatteryServerService *)self batteryLevelCharacteristic];
    v9 = [v8 subscribedCentrals];
    v10 = [v9 count];

    if (v10 == 1)
    {

      [(BatteryServerService *)self startNotifications];
    }
  }
}

- (void)peripheralManager:(id)a3 central:(id)a4 didUnsubscribeFromCharacteristic:(id)a5
{
  v6 = a5;
  v7 = [(BatteryServerService *)self batteryLevelCharacteristic];

  if (v7 == v6)
  {
    v8 = [(BatteryServerService *)self batteryLevelCharacteristic];
    v9 = [v8 subscribedCentrals];
    v10 = [v9 count];

    if (!v10)
    {

      [(BatteryServerService *)self stopNotifications];
    }
  }
}

@end