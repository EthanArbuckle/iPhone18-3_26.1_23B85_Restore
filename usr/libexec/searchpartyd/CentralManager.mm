@interface CentralManager
- (_TtC12searchpartyd14CentralManager)init;
- (void)centralManager:(id)manager canSendDataToPeripheral:(id)peripheral;
- (void)centralManager:(id)manager connectionEventDidOccur:(int64_t)occur forPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i;
- (void)centralManager:(id)manager didReceiveData:(id)data fromPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didSendBytes:(id)bytes toPeripheral:(id)peripheral withError:(id)error;
- (void)centralManager:(id)manager didUpdateFindMyPeripherals:(id)peripherals;
- (void)centralManagerDidUpdateState:(id)state;
@end

@implementation CentralManager

- (_TtC12searchpartyd14CentralManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_1013233E0(stateCopy);
}

- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i
{
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  managerCopy = manager;
  peripheralCopy = peripheral;
  iCopy = i;
  selfCopy = self;
  sub_1013286F8(peripheralCopy, v10, iCopy);
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  selfCopy = self;
  sub_10132909C(peripheralCopy);
}

- (void)centralManager:(id)manager connectionEventDidOccur:(int64_t)occur forPeripheral:(id)peripheral
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  selfCopy = self;
  sub_10132A3D0(occur, peripheralCopy);
}

- (void)centralManager:(id)manager didUpdateFindMyPeripherals:(id)peripherals
{
  sub_100008BB8(0, &qword_1016CDD08, CBPeripheral_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(&self->super.isa + OBJC_IVAR____TtC12searchpartyd14CentralManager_lock);
  selfCopy = self;
  Lock.callAsFunction<A>(_:)();
}

- (void)centralManager:(id)manager canSendDataToPeripheral:(id)peripheral
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  selfCopy = self;
  sub_10132A9C8();
}

- (void)centralManager:(id)manager didSendBytes:(id)bytes toPeripheral:(id)peripheral withError:(id)error
{
  managerCopy = manager;
  bytesCopy = bytes;
  peripheralCopy = peripheral;
  errorCopy = error;
  selfCopy = self;
  sub_10132AD94(bytesCopy);
}

- (void)centralManager:(id)manager didReceiveData:(id)data fromPeripheral:(id)peripheral
{
  managerCopy = manager;
  dataCopy = data;
  peripheralCopy = peripheral;
  selfCopy = self;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  sub_10132B370(v11, v13);
  sub_100016590(v11, v13);
}

@end