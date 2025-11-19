@interface CredentialInternalServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC10seserviced24CredentialInternalServer)init;
- (void)deleteApplicationWithIdentifier:(id)a3 reply:(id)a4;
- (void)deleteCredentialWithUuid:(id)a3 reply:(id)a4;
- (void)listCredentialsInternalWithReply:(id)a3;
@end

@implementation CredentialInternalServer

- (_TtC10seserviced24CredentialInternalServer)init
{
  v3 = String._bridgeToObjectiveC()();
  v4 = [(CredentialInternalServer *)self initWithMachServiceName:v3];

  return v4;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10011FC30(v7);

  return v9 & 1;
}

- (void)listCredentialsInternalWithReply:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_100300208(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)deleteCredentialWithUuid:(id)a3 reply:(id)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v11);
  v12 = self;
  sub_1003005A8(v10, v12, v11);
  _Block_release(v11);
  _Block_release(v11);

  (*(v7 + 8))(v10, v6);
}

- (void)deleteApplicationWithIdentifier:(id)a3 reply:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  sub_100300A24(v6, v8, v9, v5);
  _Block_release(v5);
  _Block_release(v5);
}

@end