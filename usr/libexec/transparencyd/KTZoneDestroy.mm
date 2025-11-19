@interface KTZoneDestroy
- (_TtC13transparencyd13KTZoneDestroy)init;
- (_TtC13transparencyd13KTZoneDestroy)initWithDeps:(id)a3 zoneHandler:(id)a4 context:(id)a5;
- (void)groupStart;
@end

@implementation KTZoneDestroy

- (_TtC13transparencyd13KTZoneDestroy)initWithDeps:(id)a3 zoneHandler:(id)a4 context:(id)a5
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC13transparencyd13KTZoneDestroy_deps) = a3;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC13transparencyd13KTZoneDestroy_context) = a5;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC13transparencyd13KTZoneDestroy_zoneHandler) = a4;
  v12.receiver = self;
  v12.super_class = type metadata accessor for KTZoneDestroy();
  v8 = a3;
  v9 = a4;
  v10 = a5;
  return [(KTGroupOperation *)&v12 init];
}

- (void)groupStart
{
  sub_10009FDA0(0, &qword_100383210, CKRecordZoneID_ptr);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  v9 = self;
  v6._countAndFlagsBits = 29803;
  v6._object = 0xE200000000000000;
  v7._countAndFlagsBits = v3;
  v7._object = v5;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v6, v7).super.isa;
  (*((swift_isaMask & v9->super.super.super.super.super.isa) + 0x70))();
}

- (_TtC13transparencyd13KTZoneDestroy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end