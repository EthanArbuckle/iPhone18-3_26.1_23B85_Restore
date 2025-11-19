@interface BTLink
- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4;
- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6;
- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManagerDidUpdateState:(id)a3;
@end

@implementation BTLink

- (void)centralManagerDidUpdateState:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001416C4(v4);
}

- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6
{
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = self;
  sub_100145138(v12, v10, v13);
}

- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100141C30(v6, v7);
}

- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_100145A64(v9, a5);
}

- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_100142854(v8, v9, a5);
}

@end