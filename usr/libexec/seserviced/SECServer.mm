@interface SECServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC10seserviced9SECServer)init;
- (void)deleteApplicationWithIdentifier:(id)identifier reply:(id)reply;
- (void)deleteCredentialWithUuid:(id)uuid reply:(id)reply;
- (void)listCredentialsInternalWithReply:(id)reply;
- (void)queueSessionWithCallbackProxy:(id)proxy reply:(id)reply;
- (void)securityDomainCounterFor:(id)for reply:(id)reply;
@end

@implementation SECServer

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_100146854(connectionCopy);

  return v9 & 1;
}

- (void)queueSessionWithCallbackProxy:(id)proxy reply:(id)reply
{
  v6 = _Block_copy(reply);
  _Block_copy(v6);
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1001473D8(proxy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
  swift_unknownObjectRelease();
}

- (_TtC10seserviced9SECServer)init
{
  v3 = String._bridgeToObjectiveC()();
  v4 = [(SECServer *)self initWithMachServiceName:v3];

  return v4;
}

- (void)listCredentialsInternalWithReply:(id)reply
{
  v4 = _Block_copy(reply);
  _Block_copy(v4);
  selfCopy = self;
  sub_100318F6C(v4);
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
  sub_1003192DC(v10, v11);
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
  sub_10031972C(v6, v8, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)securityDomainCounterFor:(id)for reply:(id)reply
{
  v6 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v18 - v8;
  v10 = _Block_copy(reply);
  forCopy = for;
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v12;
  v17[5] = v14;
  v17[6] = sub_1000C2784;
  v17[7] = v15;
  sub_1001F9BE8(0, 0, v9, &unk_100416330, v17);
}

@end