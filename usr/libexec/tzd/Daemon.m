@interface Daemon
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)handleAssetDetectedMsg:(id)a3;
- (void)isUpdateWaitingWithReply:(id)a3;
- (void)purgeAllAssetsWithReply:(id)a3;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7 context:(id)a8;
- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation Daemon

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10001439C(v7);

  return v9;
}

- (void)isUpdateWaitingWithReply:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_100014F7C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = self;
  sub_10001098C(v7, v6);
  sub_100014F34(v7);
}

- (void)purgeAllAssetsWithReply:(id)a3
{
  v3 = _Block_copy(a3);
  if (v3)
  {
    v4 = v3;
    (*(v3 + 2))(v3, 1, 0);

    _Block_release(v4);
  }

  else
  {
    __break(1u);
  }
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7 context:(id)a8
{
  if (a5)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = a3;
  v18 = a4;
  v19 = a7;
  v20 = a8;
  v21 = self;
  sub_100014708(v14, v16, a6, a7);
}

- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7
{
  if (a6)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = self;
  sub_10001491C(a4, a5, v12, v14);
}

- (void)handleAssetDetectedMsg:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100014AF4(v4);
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v6 = _Block_copy(a5);
  _Block_copy(v6);
  v7 = a4;
  os_transaction_create();
  sub_100012860(v7, v6);
  _Block_release(v6);
  swift_unknownObjectRelease();
}

@end