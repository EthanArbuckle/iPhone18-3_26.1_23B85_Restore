@interface Peripheral
- (NSString)description;
- (_TtC12searchpartyd10Peripheral)init;
- (void)dealloc;
- (void)peripheral:(id)a3 didDiscoverServices:(id)a4;
- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheralIsReadyToSendWriteWithoutResponse:(id)a3;
@end

@implementation Peripheral

- (void)dealloc
{
  v2 = qword_101695518;
  v3 = self;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177CEA8);
  sub_100A245E8(0x74696E696564, 0xE600000000000000);
  v5.receiver = v3;
  v5.super_class = type metadata accessor for Peripheral();
  [(Peripheral *)&v5 dealloc];
}

- (NSString)description
{
  v2 = self;
  sub_100A23E7C();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (_TtC12searchpartyd10Peripheral)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)peripheral:(id)a3 didDiscoverServices:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_100A25B7C(v6);
}

- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_100A28D48(v9);
}

- (void)peripheralIsReadyToSendWriteWithoutResponse:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100A29614(v4);
}

@end