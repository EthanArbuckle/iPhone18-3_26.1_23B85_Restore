@interface RDCoreBehaviorModelTrainingDelegate
- (_TtC7remindd35RDCoreBehaviorModelTrainingDelegate)init;
- (id)eventsForTypes:(id)types error:(id *)error;
- (id)miningTask:(id)task filteredRulesForExtractedRules:(id)rules;
- (id)taskSpecificEventProvidersForMiningTask:(id)task;
- (void)miningTask:(id)task didExtractRules:(id)rules;
- (void)miningTaskDidFinish:(id)finish;
@end

@implementation RDCoreBehaviorModelTrainingDelegate

- (id)miningTask:(id)task filteredRulesForExtractedRules:(id)rules
{
  sub_1000060C8(0, &qword_10093F650, BMRule_ptr);
  sub_1004D44E0();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  taskCopy = task;
  selfCopy = self;
  sub_1004D2FC0(v6);

  v9.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v9.super.isa;
}

- (void)miningTaskDidFinish:(id)finish
{
  finishCopy = finish;
  selfCopy = self;
  sub_1004CDED4(finishCopy);
}

- (void)miningTask:(id)task didExtractRules:(id)rules
{
  sub_1000060C8(0, &qword_10093F650, BMRule_ptr);
  sub_1004D44E0();
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  if ((v4 & 0xC000000000000001) != 0)
  {
    selfCopy = self;
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *(v4 + 16);
    selfCopy2 = self;
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

- (id)taskSpecificEventProvidersForMiningTask:(id)task
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007953F0;
  *(v4 + 32) = self;
  selfCopy = self;
  sub_1000F5104(&qword_10094A368, &qword_1007AE528);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (id)eventsForTypes:(id)types error:(id *)error
{
  selfCopy = self;
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