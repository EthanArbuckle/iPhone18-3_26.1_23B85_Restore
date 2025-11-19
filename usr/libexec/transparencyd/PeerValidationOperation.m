@interface PeerValidationOperation
- (NSDictionary)result;
- (_TtC13transparencyd23PeerValidationOperation)init;
- (_TtC13transparencyd23PeerValidationOperation)initWithDeps:(id)a3 application:(id)a4 uris:(id)a5 logClient:(id)a6;
- (void)groupStart;
- (void)setResult:(id)a3;
@end

@implementation PeerValidationOperation

- (NSDictionary)result
{
  v3 = OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_result;
  swift_beginAccess();
  v4 = *(self + v3);
  sub_10009FDA0(0, &qword_100384BC0, KTVerifierResult_ptr);

  v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (void)setResult:(id)a3
{
  sub_10009FDA0(0, &qword_100384BC0, KTVerifierResult_ptr);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_result;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (_TtC13transparencyd23PeerValidationOperation)initWithDeps:(id)a3 application:(id)a4 uris:(id)a5 logClient:(id)a6
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  swift_unknownObjectRetain();
  v13 = sub_1000D59A4(v12, v8, v10, v11, a6);

  swift_unknownObjectRelease();
  return v13;
}

- (void)groupStart
{
  v2 = self;
  PeerValidationOperation.groupStart()();
}

- (_TtC13transparencyd23PeerValidationOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end