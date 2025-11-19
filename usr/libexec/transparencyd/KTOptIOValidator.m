@interface KTOptIOValidator
- (_TtC13transparencyd16KTOptIOValidator)init;
- (_TtC13transparencyd16KTOptIOValidator)initWithOptInRecords:(id)a3 uriToSMT:(id)a4;
- (id)urisNeedOptInApplication:(id)a3 error:(id *)a4;
@end

@implementation KTOptIOValidator

- (_TtC13transparencyd16KTOptIOValidator)initWithOptInRecords:(id)a3 uriToSMT:(id)a4
{
  sub_100151DDC();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100095820(&qword_100384DA8, &qword_1002D7660);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = OBJC_IVAR____TtC13transparencyd16KTOptIOValidator_intendedState;
  *(&self->super.isa + OBJC_IVAR____TtC13transparencyd16KTOptIOValidator_intendedState) = 2;
  *(&self->super.isa + OBJC_IVAR____TtC13transparencyd16KTOptIOValidator_optInRecords) = v5;
  *(&self->super.isa + OBJC_IVAR____TtC13transparencyd16KTOptIOValidator_uriToSMT) = v6;
  swift_beginAccess();
  *(&self->super.isa + v7) = 2;
  v9.receiver = self;
  v9.super_class = type metadata accessor for KTOptIOValidator();
  return [(KTOptIOValidator *)&v9 init];
}

- (id)urisNeedOptInApplication:(id)a3 error:(id *)a4
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  KTOptIOValidator.urisNeedOptIn(application:)();

  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (_TtC13transparencyd16KTOptIOValidator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end