@interface SECServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC10seserviced9SECServer)init;
- (void)deleteApplicationWithIdentifier:(id)a3 reply:(id)a4;
- (void)deleteCredentialWithUuid:(id)a3 reply:(id)a4;
- (void)listCredentialsInternalWithReply:(id)a3;
- (void)queueSessionWithCallbackProxy:(id)a3 reply:(id)a4;
- (void)securityDomainCounterFor:(id)a3 reply:(id)a4;
@end

@implementation SECServer

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100146854(v7);

  return v9 & 1;
}

- (void)queueSessionWithCallbackProxy:(id)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  swift_unknownObjectRetain();
  v7 = self;
  sub_1001473D8(a3, v7, v6);
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

- (void)listCredentialsInternalWithReply:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_100318F6C(v4);
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
  sub_1003192DC(v10, v11);
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
  sub_10031972C(v6, v8, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)securityDomainCounterFor:(id)a3 reply:(id)a4
{
  v6 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v18 - v8;
  v10 = _Block_copy(a4);
  v11 = a3;
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