@interface BTDevice
- (_TtC14dockaccessoryd8BTDevice)init;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didDiscoverServices:(id)a4;
- (void)peripheral:(id)a3 didReadRSSI:(id)a4 error:(id)a5;
@end

@implementation BTDevice

- (void)peripheral:(id)a3 didDiscoverServices:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_1000F8374(v6, a4);
}

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_1000F85EC(v8, v9, a5);
}

- (void)peripheral:(id)a3 didReadRSSI:(id)a4 error:(id)a5
{
  if (!a5)
  {
    v7 = *(&self->super.isa + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_rssi);
    *(&self->super.isa + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_rssi) = a4;
    v6 = a4;
  }
}

- (_TtC14dockaccessoryd8BTDevice)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end