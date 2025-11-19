@interface RDClientConnection
- (NSString)description;
- (_TtC7remindd18RDClientConnection)init;
- (void)autoCategorizationActivityDidUpdate:(id)a3;
- (void)cloudKitNetworkActivityDidUpdate:(id)a3;
- (void)dealloc;
- (void)storePerformerWithProcessName:(id)a3 storeContainerToken:(id)a4 reason:(id)a5 completion:(id)a6;
@end

@implementation RDClientConnection

- (NSString)description
{
  v2 = self;
  sub_1000090AC();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (void)storePerformerWithProcessName:(id)a3 storeContainerToken:(id)a4 reason:(id)a5 completion:(id)a6
{
  v8 = _Block_copy(a6);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  *(swift_allocObject() + 16) = v8;
  v15 = a4;
  v16 = self;
  sub_10000CCAC(v9, v11, a4, v12, v14, sub_10000A878);
}

- (void)cloudKitNetworkActivityDidUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1004BE6F8(v4, &selRef_cloudKitNetworkActivityDidUpdate_, "cloudKitNetworkActivityDidUpdate: no clientProxy obtained.");
}

- (void)dealloc
{
  v2 = self;
  sub_100053464();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for RDClientConnection();
  [(RDClientConnection *)&v3 dealloc];
}

- (_TtC7remindd18RDClientConnection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)autoCategorizationActivityDidUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1004BE6F8(v4, &selRef_autoCategorizationActivityDidUpdate_, "autoCategorizationActivityDidUpdate: no clientProxy obtained.");
}

@end