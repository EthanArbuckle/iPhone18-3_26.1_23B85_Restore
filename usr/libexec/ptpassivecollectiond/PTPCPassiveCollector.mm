@interface PTPCPassiveCollector
- (_TtC20ptpassivecollectiond20PTPCPassiveCollector)init;
- (_TtC20ptpassivecollectiond20PTPCPassiveCollector)initWithConfig:(id)a3 traceNamePrefix:(id)a4 outputDirectory:(id)a5;
- (id)collectWithStartDate:(id)a3 endDate:(id)a4 error:(id *)a5;
@end

@implementation PTPCPassiveCollector

- (_TtC20ptpassivecollectiond20PTPCPassiveCollector)initWithConfig:(id)a3 traceNamePrefix:(id)a4 outputDirectory:(id)a5
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  *(&self->super.isa + OBJC_IVAR____TtC20ptpassivecollectiond20PTPCPassiveCollector_config) = a3;
  (*(v9 + 16))(self + OBJC_IVAR____TtC20ptpassivecollectiond20PTPCPassiveCollector_outputDirectory, v12, v8);
  v15 = (&self->super.isa + OBJC_IVAR____TtC20ptpassivecollectiond20PTPCPassiveCollector_traceNamePrefix);
  *v15 = a4;
  v15[1] = v14;
  v16 = type metadata accessor for PTPCPassiveCollector();
  v20.receiver = self;
  v20.super_class = v16;
  v17 = a3;
  v18 = [(PTPCPassiveCollector *)&v20 init];
  (*(v9 + 8))(v12, v8);
  return v18;
}

- (id)collectWithStartDate:(id)a3 endDate:(id)a4 error:(id *)a5
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v18[-v12];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = self;
  sub_1000107AC(v13, v11);

  v15 = *(v7 + 8);
  v15(v11, v6);
  v15(v13, v6);
  v16.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v16.super.isa;
}

- (_TtC20ptpassivecollectiond20PTPCPassiveCollector)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end