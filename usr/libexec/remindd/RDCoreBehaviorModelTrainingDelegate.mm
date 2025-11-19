@interface RDCoreBehaviorModelTrainingDelegate
- (_TtC7remindd35RDCoreBehaviorModelTrainingDelegate)init;
- (id)eventsForTypes:(id)a3 error:(id *)a4;
- (id)miningTask:(id)a3 filteredRulesForExtractedRules:(id)a4;
- (id)taskSpecificEventProvidersForMiningTask:(id)a3;
- (void)miningTask:(id)a3 didExtractRules:(id)a4;
- (void)miningTaskDidFinish:(id)a3;
@end

@implementation RDCoreBehaviorModelTrainingDelegate

- (id)miningTask:(id)a3 filteredRulesForExtractedRules:(id)a4
{
  sub_1000060C8(0, &qword_10093F650, BMRule_ptr);
  sub_1004D44E0();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_1004D2FC0(v6);

  v9.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v9.super.isa;
}

- (void)miningTaskDidFinish:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1004CDED4(v4);
}

- (void)miningTask:(id)a3 didExtractRules:(id)a4
{
  sub_1000060C8(0, &qword_10093F650, BMRule_ptr);
  sub_1004D44E0();
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = self;
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *(v4 + 16);
    v7 = self;
  }

  v8 = *(&self->super.isa + OBJC_IVAR____TtC7remindd35RDCoreBehaviorModelTrainingDelegate_metrics);
  v9 = __OFADD__(v8, v6);
  v10 = (v8 + v6);
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(&self->super.isa + OBJC_IVAR____TtC7remindd35RDCoreBehaviorModelTrainingDelegate_metrics) = v10;
  }
}

- (id)taskSpecificEventProvidersForMiningTask:(id)a3
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007953F0;
  *(v4 + 32) = self;
  v5 = self;
  sub_1000F5104(&qword_10094A368, &qword_1007AE528);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (id)eventsForTypes:(id)a3 error:(id *)a4
{
  v4 = self;
  sub_1004D31DC();

  sub_1000060C8(0, &unk_10094A350, BMEvent_ptr);
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (_TtC7remindd35RDCoreBehaviorModelTrainingDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end