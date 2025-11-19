@interface FMLFence
- (FenceScheduleProtocol)schedule;
- (NSString)description;
- (NSString)identifier;
- (_TtC11fmflocatord8FMLFence)init;
@end

@implementation FMLFence

- (NSString)identifier
{
  v2 = *(self + OBJC_IVAR____TtC11fmflocatord8FMLFence_identifier);
  v3 = *(self + OBJC_IVAR____TtC11fmflocatord8FMLFence_identifier + 8);

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (FenceScheduleProtocol)schedule
{
  v2 = *(self + OBJC_IVAR____TtC11fmflocatord8FMLFence_schedule);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (NSString)description
{
  v2 = self;
  sub_10003280C();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (_TtC11fmflocatord8FMLFence)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end