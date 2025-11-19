@interface DSKBLE
- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4;
- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6;
- (void)centralManager:(id)a3 didUpdateControllerBTClockDictForPeripheral:(id)a4 results:(id)a5;
- (void)centralManager:(id)a3 didUpdateRSSIStatisticsDetectionForPeripheral:(id)a4 results:(id)a5 error:(id)a6;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)peripheral:(id)a3 didDiscoverServices:(id)a4;
- (void)peripheral:(id)a3 didOpenL2CAPChannel:(id)a4 error:(id)a5;
- (void)stream:(id)a3 handleEvent:(unint64_t)a4;
@end

@implementation DSKBLE

- (void)centralManagerDidUpdateState:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000F93E0(v4);
}

- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6
{
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = self;
  sub_1001155CC(v12, v10, v13);
}

- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100117630(v7);
}

- (void)centralManager:(id)a3 didUpdateControllerBTClockDictForPeripheral:(id)a4 results:(id)a5
{
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_100118E98(v10, v8);
}

- (void)centralManager:(id)a3 didUpdateRSSIStatisticsDetectionForPeripheral:(id)a4 results:(id)a5 error:(id)a6
{
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = a4;
  v13 = self;
  v14 = a6;
  sub_100119C28(v12, v10, a6);
}

- (void)peripheral:(id)a3 didDiscoverServices:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_1000FB0B4(v6, a4);
}

- (void)peripheral:(id)a3 didOpenL2CAPChannel:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_100101668(v8, a4, a5);
}

- (void)stream:(id)a3 handleEvent:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_100102044(v6, a4);
}

@end