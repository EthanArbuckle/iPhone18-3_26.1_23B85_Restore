@interface SDAirDropIDMSServiceTelemetry
- (_TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry)init;
@end

@implementation SDAirDropIDMSServiceTelemetry

- (_TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry)init
{
  ObjectType = swift_getObjectType();
  swift_defaultActor_initialize();
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_currentUpdateToken;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 56))(&self->$defaultActor[v4], 1, 1, v5);
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_sessionStart;
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 56))(&self->$defaultActor[v6], 1, 1, v7);
  *&self->$defaultActor[OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_finishedBatchCount] = 0;
  *&self->$defaultActor[OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_totalBatchCount] = 0;
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_log;
  if (qword_100973708 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  v10 = sub_10000C4AC(v9, qword_1009A0960);
  (*(*(v9 - 8) + 16))(&self->$defaultActor[v8], v10, v9);
  v12.receiver = self;
  v12.super_class = ObjectType;
  return [(SDAirDropIDMSServiceTelemetry *)&v12 init];
}

@end