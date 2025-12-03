@interface MOAppCategoryUsage
- (NSString)category;
- (_TtC8momentsd18MOAppCategoryUsage)init;
- (_TtC8momentsd18MOAppCategoryUsage)initWithCategory:(id)category totalDuration:(double)duration;
- (double)getTotalDuration;
- (double)totalDuration;
- (id)getCategory;
- (void)setCategory:(id)category;
- (void)setTotalDuration:(double)duration;
@end

@implementation MOAppCategoryUsage

- (NSString)category
{
  v2 = (self + OBJC_IVAR____TtC8momentsd18MOAppCategoryUsage_category);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

- (void)setCategory:(id)category
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = (self + OBJC_IVAR____TtC8momentsd18MOAppCategoryUsage_category);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (double)totalDuration
{
  v3 = OBJC_IVAR____TtC8momentsd18MOAppCategoryUsage_totalDuration;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setTotalDuration:(double)duration
{
  v5 = OBJC_IVAR____TtC8momentsd18MOAppCategoryUsage_totalDuration;
  swift_beginAccess();
  *(self + v5) = duration;
}

- (_TtC8momentsd18MOAppCategoryUsage)initWithCategory:(id)category totalDuration:(double)duration
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = (self + OBJC_IVAR____TtC8momentsd18MOAppCategoryUsage_category);
  *v7 = v6;
  v7[1] = v8;
  *(self + OBJC_IVAR____TtC8momentsd18MOAppCategoryUsage_totalDuration) = duration;
  v10.receiver = self;
  v10.super_class = type metadata accessor for MOAppCategoryUsage();
  return [(MOAppCategoryUsage *)&v10 init];
}

- (id)getCategory
{
  v2 = *((swift_isaMask & *self) + 0x60);
  selfCopy = self;
  v2();

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (double)getTotalDuration
{
  v2 = *((swift_isaMask & *self) + 0x78);
  selfCopy = self;
  v4 = v2();

  return v4;
}

- (_TtC8momentsd18MOAppCategoryUsage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end