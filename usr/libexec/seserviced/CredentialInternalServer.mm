@interface CredentialInternalServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC10seserviced24CredentialInternalServer)init;
- (void)deleteApplicationWithIdentifier:(id)identifier reply:(id)reply;
- (void)deleteCredentialWithUuid:(id)uuid reply:(id)reply;
- (void)listCredentialsInternalWithReply:(id)reply;
@end

@implementation CredentialInternalServer

- (_TtC10seserviced24CredentialInternalServer)init
{
  v3 = String._bridgeToObjectiveC()();
  v4 = [(CredentialInternalServer *)self initWithMachServiceName:v3];

  return v4;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_10011FC30(connectionCopy);

  return v9 & 1;
}

- (void)listCredentialsInternalWithReply:(id)reply
{
  v4 = _Block_copy(reply);
  _Block_copy(v4);
  selfCopy = self;
  sub_100300208(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)deleteCredentialWithUuid:(id)uuid reply:(id)reply
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(reply);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v11);
  selfCopy = self;
  sub_1003005A8(v10, selfCopy, v11);
  _Block_release(v11);
  _Block_release(v11);

  (*(v7 + 8))(v10, v6);
}

- (void)deleteApplicationWithIdentifier:(id)identifier reply:(id)reply
{
  v5 = _Block_copy(reply);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  sub_100300A24(v6, v8, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

@end