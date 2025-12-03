@interface SDAuthenticationTransportIDSService
- (_TtC16DaemoniOSLibrary35SDAuthenticationTransportIDSService)init;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context;
@end

@implementation SDAuthenticationTransportIDSService

- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  serviceCopy = service;
  accountCopy = account;
  protobufCopy = protobuf;
  contextCopy = context;
  selfCopy = self;
  sub_1005D8108(serviceCopy, protobufCopy, v12, v14);
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  serviceCopy = service;
  accountCopy = account;
  errorCopy = error;
  selfCopy = self;
  sub_1005D8644(v12, v14, success);
}

- (_TtC16DaemoniOSLibrary35SDAuthenticationTransportIDSService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end