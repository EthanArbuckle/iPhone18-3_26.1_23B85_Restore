@interface CompanionDevice
- (NSString)description;
- (_TtC10companiond15CompanionDevice)init;
- (unsigned)color;
- (void)setColor:(unsigned int)a3;
@end

@implementation CompanionDevice

- (unsigned)color
{
  v3 = OBJC_IVAR____TtC10companiond15CompanionDevice_color;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setColor:(unsigned int)a3
{
  v5 = OBJC_IVAR____TtC10companiond15CompanionDevice_color;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (NSString)description
{
  v2 = self;
  CompanionDevice.description.getter();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (_TtC10companiond15CompanionDevice)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end