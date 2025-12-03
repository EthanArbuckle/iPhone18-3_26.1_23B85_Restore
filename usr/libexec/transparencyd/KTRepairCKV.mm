@interface KTRepairCKV
+ (BOOL)rateLimitAppliesWithRepair:(id)repair;
+ (id)hardResetRepair;
- (_TtC13transparencyd11KTRepairCKV)init;
- (_TtC13transparencyd11KTRepairCKV)initWithDeps:(id)deps repair:(id)repair reset:(id)reset;
- (void)doRepair;
- (void)repairWithNow:(id)now;
@end

@implementation KTRepairCKV

+ (id)hardResetRepair
{
  type metadata accessor for KTRepair();
  v2 = static KTRepair.hardResetRepair()();

  return v2;
}

+ (BOOL)rateLimitAppliesWithRepair:(id)repair
{
  repairCopy = repair;
  v4 = KTRepair.bypassRateControl.getter();

  return (v4 & 1) == 0;
}

- (_TtC13transparencyd11KTRepairCKV)initWithDeps:(id)deps repair:(id)repair reset:(id)reset
{
  depsCopy = deps;
  repairCopy = repair;
  swift_unknownObjectRetain();
  v9 = sub_100152EAC(depsCopy, repairCopy, reset);

  swift_unknownObjectRelease();
  return v9;
}

- (void)repairWithNow:(id)now
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100152188(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)doRepair
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  Date.init()();
  (*((swift_isaMask & selfCopy->super.isa) + 0x80))(v7);

  (*(v4 + 8))(v7, v3);
}

- (_TtC13transparencyd11KTRepairCKV)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end