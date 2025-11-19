@interface KTRepairCKV
+ (BOOL)rateLimitAppliesWithRepair:(id)a3;
+ (id)hardResetRepair;
- (_TtC13transparencyd11KTRepairCKV)init;
- (_TtC13transparencyd11KTRepairCKV)initWithDeps:(id)a3 repair:(id)a4 reset:(id)a5;
- (void)doRepair;
- (void)repairWithNow:(id)a3;
@end

@implementation KTRepairCKV

+ (id)hardResetRepair
{
  type metadata accessor for KTRepair();
  v2 = static KTRepair.hardResetRepair()();

  return v2;
}

+ (BOOL)rateLimitAppliesWithRepair:(id)a3
{
  v3 = a3;
  v4 = KTRepair.bypassRateControl.getter();

  return (v4 & 1) == 0;
}

- (_TtC13transparencyd11KTRepairCKV)initWithDeps:(id)a3 repair:(id)a4 reset:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = sub_100152EAC(v7, v8, a5);

  swift_unknownObjectRelease();
  return v9;
}

- (void)repairWithNow:(id)a3
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
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
  v8 = self;
  Date.init()();
  (*((swift_isaMask & v8->super.isa) + 0x80))(v7);

  (*(v4 + 8))(v7, v3);
}

- (_TtC13transparencyd11KTRepairCKV)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end