@interface KTZoneSetup
- (BOOL)initialFetch;
- (_TtC13transparencyd11KTZoneSetup)init;
- (_TtC13transparencyd11KTZoneSetup)initWithCkdatabase:(id)a3 analytics:(id)a4 context:(id)a5 zoneCreate:(id)a6;
- (void)groupStart;
- (void)setInitialFetch:(BOOL)a3;
@end

@implementation KTZoneSetup

- (BOOL)initialFetch
{
  v3 = OBJC_IVAR____TtC13transparencyd11KTZoneSetup_initialFetch;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setInitialFetch:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC13transparencyd11KTZoneSetup_initialFetch;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = a3;
}

- (_TtC13transparencyd11KTZoneSetup)initWithCkdatabase:(id)a3 analytics:(id)a4 context:(id)a5 zoneCreate:(id)a6
{
  sub_10009FDA0(0, &qword_100383210, CKRecordZoneID_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = sub_1000E7118(a3, v11, v12, v9);

  return v13;
}

- (void)groupStart
{
  v2 = self;
  KTZoneSetup.groupStart()();
}

- (_TtC13transparencyd11KTZoneSetup)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end