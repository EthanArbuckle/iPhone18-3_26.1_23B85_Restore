@interface CentralManager
- (_TtC12searchpartyd14CentralManager)init;
- (void)centralManager:(id)a3 canSendDataToPeripheral:(id)a4;
- (void)centralManager:(id)a3 connectionEventDidOccur:(int64_t)a4 forPeripheral:(id)a5;
- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4;
- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6;
- (void)centralManager:(id)a3 didReceiveData:(id)a4 fromPeripheral:(id)a5;
- (void)centralManager:(id)a3 didSendBytes:(id)a4 toPeripheral:(id)a5 withError:(id)a6;
- (void)centralManager:(id)a3 didUpdateFindMyPeripherals:(id)a4;
- (void)centralManagerDidUpdateState:(id)a3;
@end

@implementation CentralManager

- (_TtC12searchpartyd14CentralManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)centralManagerDidUpdateState:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1013233E0(v4);
}

- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6
{
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = self;
  sub_1013286F8(v12, v10, v13);
}

- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10132909C(v7);
}

- (void)centralManager:(id)a3 connectionEventDidOccur:(int64_t)a4 forPeripheral:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = self;
  sub_10132A3D0(a4, v9);
}

- (void)centralManager:(id)a3 didUpdateFindMyPeripherals:(id)a4
{
  sub_100008BB8(0, &qword_1016CDD08, CBPeripheral_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(&self->super.isa + OBJC_IVAR____TtC12searchpartyd14CentralManager_lock);
  v6 = self;
  Lock.callAsFunction<A>(_:)();
}

- (void)centralManager:(id)a3 canSendDataToPeripheral:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10132A9C8();
}

- (void)centralManager:(id)a3 didSendBytes:(id)a4 toPeripheral:(id)a5 withError:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v14 = a6;
  v13 = self;
  sub_10132AD94(v11);
}

- (void)centralManager:(id)a3 didReceiveData:(id)a4 fromPeripheral:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14 = self;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  sub_10132B370(v11, v13);
  sub_100016590(v11, v13);
}

@end