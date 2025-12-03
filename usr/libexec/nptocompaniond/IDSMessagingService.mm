@interface IDSMessagingService
- (_TtC14NanoPhotosSync19IDSMessagingService)init;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context;
@end

@implementation IDSMessagingService

- (_TtC14NanoPhotosSync19IDSMessagingService)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context
{
  v14 = sub_100004180(&qword_100098D90);
  __chkstk_darwin(v14 - 8);
  v16 = &v24 - v15;
  if (l)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = type metadata accessor for URL();
    (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
  }

  else
  {
    v18 = type metadata accessor for URL();
    (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  }

  if (metadata)
  {
    metadata = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (d)
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    d = v20;
  }

  else
  {
    v19 = 0;
  }

  serviceCopy = service;
  accountCopy = account;
  contextCopy = context;

  sub_10002FB74(serviceCopy, v16, metadata, v19, d, contextCopy);

  sub_100009BA4(v16, &qword_100098D90);
}

- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  if (d)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  serviceCopy = service;
  accountCopy = account;
  protobufCopy = protobuf;
  contextCopy = context;

  sub_100030148(protobuf, context);
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  if (identifier)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  serviceCopy = service;
  accountCopy = account;
  errorCopy = error;

  sub_100030438(v11, v13, success, error);
}

@end