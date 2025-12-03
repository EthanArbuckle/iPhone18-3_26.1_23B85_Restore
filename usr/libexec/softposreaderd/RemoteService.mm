@interface RemoteService
- (void)copyBuildDateWithReply:(id)reply;
- (void)primerProxyWithConfiguration:(id)configuration reply:(id)reply;
- (void)provisionReaderProxyWithIsProduction:(BOOL)production reply:(id)reply;
@end

@implementation RemoteService

- (void)copyBuildDateWithReply:(id)reply
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _Block_copy(reply);
  current = [objc_opt_self() current];
  buildDate = [current buildDate];

  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v9[2](v9, isa);

  _Block_release(v9);
  (*(v5 + 8))(v8, v4);
}

- (void)primerProxyWithConfiguration:(id)configuration reply:(id)reply
{
  v5 = _Block_copy(reply);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  selfCopy = self;
  sub_100190E9C(v6, sub_100192880, v7);
}

- (void)provisionReaderProxyWithIsProduction:(BOOL)production reply:(id)reply
{
  v6 = _Block_copy(reply);
  *(swift_allocObject() + 16) = v6;
  selfCopy = self;
  sub_100191844(production, sub_10018A9C0);
}

@end