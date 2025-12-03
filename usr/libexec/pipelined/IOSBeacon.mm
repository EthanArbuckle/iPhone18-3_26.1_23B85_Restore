@interface IOSBeacon
- (BOOL)sensorPresent;
- (IOSBeacon)init;
- (void)centralManagerDidUpdateState:(id)state;
- (void)dealloc;
- (void)start;
@end

@implementation IOSBeacon

- (IOSBeacon)init
{
  v3.receiver = self;
  v3.super_class = IOSBeacon;
  if ([(IOSBeacon *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  scanResultQueue = self->_scanResultQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_100304C20;
  block[3] = &unk_100448BB8;
  selfCopy = self;
  v3 = selfCopy;
  dispatch_sync(scanResultQueue, block);

  v4.receiver = v3;
  v4.super_class = IOSBeacon;
  [(IOSBeacon *)&v4 dealloc];
}

- (BOOL)sensorPresent
{
  if (qword_10045B050 != -1)
  {
    sub_100387384();
  }

  v3 = qword_10045B058;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    state = [(CBCentralManager *)self->_bluetoothManager state];
    v6[0] = 67109120;
    v6[1] = state;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Checking bluetooth sensor presence, state=%d", v6, 8u);
  }

  return 1;
}

- (void)start
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [0 countByEnumeratingWithState:&v9 objects:v15 count:16];
  if (v3)
  {
    v4 = *v10;
    do
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(0);
        }

        v6 = [CBUUID UUIDWithString:*(*(&v9 + 1) + 8 * v5)];
        [0 addObject:v6];

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [0 countByEnumeratingWithState:&v9 objects:v15 count:16];
    }

    while (v3);
  }

  bluetoothManager = self->_bluetoothManager;
  v13[0] = CBCentralManagerScanOptionAllowDuplicatesKey;
  v13[1] = CBCentralManagerScanOptionIsPrivilegedDaemonKey;
  v14[0] = &__kCFBooleanTrue;
  v14[1] = &__kCFBooleanTrue;
  v13[2] = CBCentralManagerScanOptionScanInterval;
  v13[3] = CBCentralManagerScanOptionScanWindow;
  v14[2] = &off_10044F2E8;
  v14[3] = &off_10044F2E8;
  v8 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];
  [(CBCentralManager *)bluetoothManager scanForPeripheralsWithServices:0 options:v8];
}

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  if (qword_10045B050 != -1)
  {
    sub_100387384();
  }

  v5 = qword_10045B058;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    state = [stateCopy state];
    state2 = [(CBCentralManager *)self->_bluetoothManager state];
    v8 = 134218240;
    v9 = state;
    v10 = 2048;
    v11 = state2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Central manager state=%ld, Bluetooth Manager state=%ld", &v8, 0x16u);
  }
}

@end