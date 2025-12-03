@interface KTZoneDestroy
- (_TtC13transparencyd13KTZoneDestroy)init;
- (_TtC13transparencyd13KTZoneDestroy)initWithDeps:(id)deps zoneHandler:(id)handler context:(id)context;
- (void)groupStart;
@end

@implementation KTZoneDestroy

- (_TtC13transparencyd13KTZoneDestroy)initWithDeps:(id)deps zoneHandler:(id)handler context:(id)context
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC13transparencyd13KTZoneDestroy_deps) = deps;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC13transparencyd13KTZoneDestroy_context) = context;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC13transparencyd13KTZoneDestroy_zoneHandler) = handler;
  v12.receiver = self;
  v12.super_class = type metadata accessor for KTZoneDestroy();
  depsCopy = deps;
  handlerCopy = handler;
  contextCopy = context;
  return [(KTGroupOperation *)&v12 init];
}

- (void)groupStart
{
  sub_10009FDA0(0, &qword_100383210, CKRecordZoneID_ptr);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  selfCopy = self;
  v6._countAndFlagsBits = 29803;
  v6._object = 0xE200000000000000;
  v7._countAndFlagsBits = v3;
  v7._object = v5;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v6, v7).super.isa;
  (*((swift_isaMask & selfCopy->super.super.super.super.super.isa) + 0x70))();
}

- (_TtC13transparencyd13KTZoneDestroy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end