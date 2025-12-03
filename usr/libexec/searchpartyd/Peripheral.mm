@interface Peripheral
- (NSString)description;
- (_TtC12searchpartyd10Peripheral)init;
- (void)dealloc;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheralIsReadyToSendWriteWithoutResponse:(id)response;
@end

@implementation Peripheral

- (void)dealloc
{
  v2 = qword_101695518;
  selfCopy = self;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177CEA8);
  sub_100A245E8(0x74696E696564, 0xE600000000000000);
  v5.receiver = selfCopy;
  v5.super_class = type metadata accessor for Peripheral();
  [(Peripheral *)&v5 dealloc];
}

- (NSString)description
{
  selfCopy = self;
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

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  peripheralCopy = peripheral;
  selfCopy = self;
  servicesCopy = services;
  sub_100A25B7C(peripheralCopy);
}

- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  selfCopy = self;
  errorCopy = error;
  sub_100A28D48(characteristicCopy);
}

- (void)peripheralIsReadyToSendWriteWithoutResponse:(id)response
{
  responseCopy = response;
  selfCopy = self;
  sub_100A29614(responseCopy);
}

@end