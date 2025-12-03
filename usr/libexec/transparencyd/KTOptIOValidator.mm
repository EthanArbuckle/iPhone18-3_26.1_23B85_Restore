@interface KTOptIOValidator
- (_TtC13transparencyd16KTOptIOValidator)init;
- (_TtC13transparencyd16KTOptIOValidator)initWithOptInRecords:(id)records uriToSMT:(id)t;
- (id)urisNeedOptInApplication:(id)application error:(id *)error;
@end

@implementation KTOptIOValidator

- (_TtC13transparencyd16KTOptIOValidator)initWithOptInRecords:(id)records uriToSMT:(id)t
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

- (id)urisNeedOptInApplication:(id)application error:(id *)error
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
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