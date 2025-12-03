@interface KTZoneSetup
- (BOOL)initialFetch;
- (_TtC13transparencyd11KTZoneSetup)init;
- (_TtC13transparencyd11KTZoneSetup)initWithCkdatabase:(id)ckdatabase analytics:(id)analytics context:(id)context zoneCreate:(id)create;
- (void)groupStart;
- (void)setInitialFetch:(BOOL)fetch;
@end

@implementation KTZoneSetup

- (BOOL)initialFetch
{
  v3 = OBJC_IVAR____TtC13transparencyd11KTZoneSetup_initialFetch;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setInitialFetch:(BOOL)fetch
{
  v5 = OBJC_IVAR____TtC13transparencyd11KTZoneSetup_initialFetch;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = fetch;
}

- (_TtC13transparencyd11KTZoneSetup)initWithCkdatabase:(id)ckdatabase analytics:(id)analytics context:(id)context zoneCreate:(id)create
{
  sub_10009FDA0(0, &qword_100383210, CKRecordZoneID_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  ckdatabaseCopy = ckdatabase;
  analyticsCopy = analytics;
  contextCopy = context;
  v13 = sub_1000E7118(ckdatabase, analyticsCopy, contextCopy, v9);

  return v13;
}

- (void)groupStart
{
  selfCopy = self;
  KTZoneSetup.groupStart()();
}

- (_TtC13transparencyd11KTZoneSetup)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end