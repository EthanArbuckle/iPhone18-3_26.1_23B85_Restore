@interface DSKBLE
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i;
- (void)centralManager:(id)manager didUpdateControllerBTClockDictForPeripheral:(id)peripheral results:(id)results;
- (void)centralManager:(id)manager didUpdateRSSIStatisticsDetectionForPeripheral:(id)peripheral results:(id)results error:(id)error;
- (void)centralManagerDidUpdateState:(id)state;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didOpenL2CAPChannel:(id)channel error:(id)error;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
@end

@implementation DSKBLE

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_1000F93E0(stateCopy);
}

- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i
{
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  managerCopy = manager;
  peripheralCopy = peripheral;
  iCopy = i;
  selfCopy = self;
  sub_1001155CC(peripheralCopy, v10, iCopy);
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  selfCopy = self;
  sub_100117630(peripheralCopy);
}

- (void)centralManager:(id)manager didUpdateControllerBTClockDictForPeripheral:(id)peripheral results:(id)results
{
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  managerCopy = manager;
  peripheralCopy = peripheral;
  selfCopy = self;
  sub_100118E98(peripheralCopy, v8);
}

- (void)centralManager:(id)manager didUpdateRSSIStatisticsDetectionForPeripheral:(id)peripheral results:(id)results error:(id)error
{
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  managerCopy = manager;
  peripheralCopy = peripheral;
  selfCopy = self;
  errorCopy = error;
  sub_100119C28(peripheralCopy, v10, error);
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  peripheralCopy = peripheral;
  selfCopy = self;
  servicesCopy = services;
  sub_1000FB0B4(peripheralCopy, services);
}

- (void)peripheral:(id)peripheral didOpenL2CAPChannel:(id)channel error:(id)error
{
  peripheralCopy = peripheral;
  channelCopy = channel;
  selfCopy = self;
  errorCopy = error;
  sub_100101668(peripheralCopy, channel, error);
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  streamCopy = stream;
  selfCopy = self;
  sub_100102044(streamCopy, event);
}

@end