@interface SDAuthenticationTransportIDSService
- (_TtC16DaemoniOSLibrary35SDAuthenticationTransportIDSService)init;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7;
@end

@implementation SDAuthenticationTransportIDSService

- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7
{
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = self;
  sub_1005D8108(v15, v17, v12, v14);
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = a3;
  v16 = a4;
  v18 = a7;
  v17 = self;
  sub_1005D8644(v12, v14, a6);
}

- (_TtC16DaemoniOSLibrary35SDAuthenticationTransportIDSService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end