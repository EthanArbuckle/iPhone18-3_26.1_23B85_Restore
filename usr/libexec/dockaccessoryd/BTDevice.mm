@interface BTDevice
- (_TtC14dockaccessoryd8BTDevice)init;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didReadRSSI:(id)i error:(id)error;
@end

@implementation BTDevice

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  peripheralCopy = peripheral;
  selfCopy = self;
  servicesCopy = services;
  sub_1000F8374(peripheralCopy, services);
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  serviceCopy = service;
  selfCopy = self;
  errorCopy = error;
  sub_1000F85EC(peripheralCopy, serviceCopy, error);
}

- (void)peripheral:(id)peripheral didReadRSSI:(id)i error:(id)error
{
  if (!error)
  {
    v7 = *(&self->super.isa + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_rssi);
    *(&self->super.isa + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_rssi) = i;
    iCopy = i;
  }
}

- (_TtC14dockaccessoryd8BTDevice)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end