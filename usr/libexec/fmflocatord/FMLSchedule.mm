@interface FMLSchedule
- (BOOL)isCurrentAt:(id)a3;
- (NSString)description;
- (NSTimeZone)timeZone;
- (_TtC11fmflocatord11FMLSchedule)init;
- (id)dictionary;
- (id)nextStartOrEndDateFrom:(id)a3;
- (unint64_t)daysOfWeek;
@end

@implementation FMLSchedule

- (unint64_t)daysOfWeek
{
  v3 = type metadata accessor for Fence.DaysOfWeek();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Fence.Schedule();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = self;
  Fence.Schedule.Matcher.schedule.getter();
  Fence.Schedule.daysOfWeek.getter();
  (*(v9 + 8))(v12, v8);
  LOBYTE(self) = Fence.DaysOfWeek.rawValue.getter();

  (*(v4 + 8))(v7, v3);
  return self;
}

- (NSTimeZone)timeZone
{
  v3 = type metadata accessor for Fence.Schedule();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TimeZone();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = self;
  Fence.Schedule.Matcher.schedule.getter();
  Fence.Schedule.timeZone.getter();

  (*(v4 + 8))(v7, v3);
  v14.super.isa = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v9 + 8))(v12, v8);

  return v14.super.isa;
}

- (BOOL)isCurrentAt:(id)a3
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  LOBYTE(self) = Fence.Schedule.Matcher.doesMatchSchedule(_:)();

  (*(v5 + 8))(v8, v4);
  return self & 1;
}

- (id)nextStartOrEndDateFrom:(id)a3
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v16 - v10;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = self;
  Fence.Schedule.Matcher.nextStartOrEndDate(from:)();

  v13 = *(v5 + 8);
  v13(v9, v4);
  v14.super.isa = Date._bridgeToObjectiveC()().super.isa;
  v13(v11, v4);

  return v14.super.isa;
}

- (NSString)description
{
  v3 = type metadata accessor for Fence.Schedule();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = self;
  Fence.Schedule.Matcher.schedule.getter();
  Fence.Schedule.description.getter();

  (*(v4 + 8))(v7, v3);
  v9 = String._bridgeToObjectiveC()();

  return v9;
}

- (_TtC11fmflocatord11FMLSchedule)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)dictionary
{
  v2 = self;
  sub_100033EC4();

  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

@end