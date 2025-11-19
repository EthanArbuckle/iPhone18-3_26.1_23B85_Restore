@interface RemoteService
- (void)copyBuildDateWithReply:(id)a3;
- (void)primerProxyWithConfiguration:(id)a3 reply:(id)a4;
- (void)provisionReaderProxyWithIsProduction:(BOOL)a3 reply:(id)a4;
@end

@implementation RemoteService

- (void)copyBuildDateWithReply:(id)a3
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _Block_copy(a3);
  v10 = [objc_opt_self() current];
  v11 = [v10 buildDate];

  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v9[2](v9, isa);

  _Block_release(v9);
  (*(v5 + 8))(v8, v4);
}

- (void)primerProxyWithConfiguration:(id)a3 reply:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = self;
  sub_100190E9C(v6, sub_100192880, v7);
}

- (void)provisionReaderProxyWithIsProduction:(BOOL)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  *(swift_allocObject() + 16) = v6;
  v7 = self;
  sub_100191844(a3, sub_10018A9C0);
}

@end