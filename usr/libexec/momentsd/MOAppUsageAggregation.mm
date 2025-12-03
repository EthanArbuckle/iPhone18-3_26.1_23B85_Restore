@interface MOAppUsageAggregation
- (NSArray)categoryUsages;
- (NSDateInterval)dateInterval;
- (NSDateInterval)longestActivity;
- (_TtC8momentsd21MOAppUsageAggregation)init;
- (_TtC8momentsd21MOAppUsageAggregation)initWithCategoryUsages:(id)usages dateInterval:(id)interval longestActivity:(id)activity;
- (id)getCategoryUsage;
- (id)getDateInterval;
- (void)setCategoryUsages:(id)usages;
- (void)setDateInterval:(id)interval;
- (void)setLongestActivity:(id)activity;
@end

@implementation MOAppUsageAggregation

- (NSArray)categoryUsages
{
  v3 = OBJC_IVAR____TtC8momentsd21MOAppUsageAggregation_categoryUsages;
  swift_beginAccess();
  if (*(self + v3))
  {
    type metadata accessor for MOAppCategoryUsage();

    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)setCategoryUsages:(id)usages
{
  usagesCopy = usages;
  if (usages)
  {
    type metadata accessor for MOAppCategoryUsage();
    usagesCopy = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = OBJC_IVAR____TtC8momentsd21MOAppUsageAggregation_categoryUsages;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = usagesCopy;
}

- (NSDateInterval)dateInterval
{
  v3 = type metadata accessor for DateInterval();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8momentsd21MOAppUsageAggregation_dateInterval;
  swift_beginAccess();
  (*(v4 + 16))(v8, self + v9, v3);
  v10.super.isa = DateInterval._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v8, v3);

  return v10.super.isa;
}

- (void)setDateInterval:(id)interval
{
  v4 = type metadata accessor for DateInterval();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = OBJC_IVAR____TtC8momentsd21MOAppUsageAggregation_dateInterval;
  swift_beginAccess();
  v11 = *(v5 + 40);
  selfCopy = self;
  v11(self + v10, v9, v4);
  swift_endAccess();
}

- (NSDateInterval)longestActivity
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v15 - v6;
  v8 = OBJC_IVAR____TtC8momentsd21MOAppUsageAggregation_longestActivity;
  swift_beginAccess();
  outlined init with copy of DateInterval?(self + v8, v7);
  v9 = type metadata accessor for DateInterval();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    isa = DateInterval._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
    v12 = isa;
  }

  return v12;
}

- (void)setLongestActivity:(id)activity
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v14 - v8;
  if (activity)
  {
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for DateInterval();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for DateInterval();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  v12 = OBJC_IVAR____TtC8momentsd21MOAppUsageAggregation_longestActivity;
  swift_beginAccess();
  selfCopy = self;
  outlined assign with take of DateInterval?(v9, self + v12);
  swift_endAccess();
}

- (_TtC8momentsd21MOAppUsageAggregation)initWithCategoryUsages:(id)usages dateInterval:(id)interval longestActivity:(id)activity
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v26 - v11;
  v13 = type metadata accessor for DateInterval();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (usages)
  {
    type metadata accessor for MOAppCategoryUsage();
    usages = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
  if (activity)
  {
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = *(v14 + 56);
  v20(v12, v19, 1, v13);
  v21 = OBJC_IVAR____TtC8momentsd21MOAppUsageAggregation_categoryUsages;
  *(self + OBJC_IVAR____TtC8momentsd21MOAppUsageAggregation_categoryUsages) = 0;
  v22 = OBJC_IVAR____TtC8momentsd21MOAppUsageAggregation_longestActivity;
  v20(self + OBJC_IVAR____TtC8momentsd21MOAppUsageAggregation_longestActivity, 1, 1, v13);
  swift_beginAccess();
  *(self + v21) = usages;
  (*(v14 + 16))(self + OBJC_IVAR____TtC8momentsd21MOAppUsageAggregation_dateInterval, v18, v13);
  swift_beginAccess();
  outlined assign with copy of DateInterval?(v12, self + v22);
  swift_endAccess();
  v23 = type metadata accessor for MOAppUsageAggregation();
  v26.receiver = self;
  v26.super_class = v23;
  v24 = [(MOAppUsageAggregation *)&v26 init];
  outlined destroy of DateInterval?(v12);
  (*(v14 + 8))(v18, v13);
  return v24;
}

- (id)getCategoryUsage
{
  v2 = *((swift_isaMask & *self) + 0x68);
  selfCopy = self;
  v4 = v2();

  if (v4)
  {
    type metadata accessor for MOAppCategoryUsage();
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

- (id)getDateInterval
{
  v3 = type metadata accessor for DateInterval();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *((swift_isaMask & *self) + 0x80);
  selfCopy = self;
  v9();

  v11.super.isa = DateInterval._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v8, v3);

  return v11.super.isa;
}

- (_TtC8momentsd21MOAppUsageAggregation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end