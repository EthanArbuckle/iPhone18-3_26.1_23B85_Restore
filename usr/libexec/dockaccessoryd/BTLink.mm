@interface BTLink
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i;
- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManagerDidUpdateState:(id)state;
@end

@implementation BTLink

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_1001416C4(stateCopy);
}

- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i
{
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  managerCopy = manager;
  peripheralCopy = peripheral;
  iCopy = i;
  selfCopy = self;
  sub_100145138(peripheralCopy, v10, iCopy);
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  selfCopy = self;
  sub_100141C30(managerCopy, peripheralCopy);
}

- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  selfCopy = self;
  errorCopy = error;
  sub_100145A64(peripheralCopy, error);
}

- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  selfCopy = self;
  errorCopy = error;
  sub_100142854(managerCopy, peripheralCopy, error);
}

@end