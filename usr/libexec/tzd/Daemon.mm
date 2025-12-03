@interface Daemon
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)handleAssetDetectedMsg:(id)msg;
- (void)isUpdateWaitingWithReply:(id)reply;
- (void)purgeAllAssetsWithReply:(id)reply;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context;
- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation Daemon

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_10001439C(connectionCopy);

  return v9;
}

- (void)isUpdateWaitingWithReply:(id)reply
{
  v4 = _Block_copy(reply);
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

  selfCopy = self;
  sub_10001098C(v7, v6);
  sub_100014F34(v7);
}

- (void)purgeAllAssetsWithReply:(id)reply
{
  v3 = _Block_copy(reply);
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

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context
{
  if (identifier)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  serviceCopy = service;
  accountCopy = account;
  errorCopy = error;
  contextCopy = context;
  selfCopy = self;
  sub_100014708(v14, v16, success, error);
}

- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  if (d)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  serviceCopy = service;
  accountCopy = account;
  protobufCopy = protobuf;
  contextCopy = context;
  selfCopy = self;
  sub_10001491C(account, protobuf, v12, v14);
}

- (void)handleAssetDetectedMsg:(id)msg
{
  msgCopy = msg;
  selfCopy = self;
  sub_100014AF4(msgCopy);
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  _Block_copy(v6);
  responseCopy = response;
  os_transaction_create();
  sub_100012860(responseCopy, v6);
  _Block_release(v6);
  swift_unknownObjectRelease();
}

@end