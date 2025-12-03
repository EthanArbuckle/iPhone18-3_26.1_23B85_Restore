@interface MessagingServiceDelegateTrampoline
- (_TtC12searchpartyd34MessagingServiceDelegateTrampoline)init;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account identifier:(id)identifier fromID:(id)d hasBeenDeliveredWithContext:(id)context;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account inviteReceivedForSession:(id)session fromID:(id)d withContext:(id)context;
- (void)service:(id)service activeAccountsChanged:(id)changed;
@end

@implementation MessagingServiceDelegateTrampoline

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  dataCopy = data;
  if (data)
  {
    serviceCopy = service;
    accountCopy = account;
    dCopy = d;
    contextCopy = context;
    selfCopy = self;
    v17 = dataCopy;
    dataCopy = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (d)
    {
LABEL_3:
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      goto LABEL_6;
    }
  }

  else
  {
    serviceCopy2 = service;
    accountCopy2 = account;
    dCopy2 = d;
    contextCopy2 = context;
    selfCopy2 = self;
    v19 = 0xF000000000000000;
    if (d)
    {
      goto LABEL_3;
    }
  }

  v20 = 0;
  v22 = 0;
LABEL_6:
  sub_100472800(service, account, dataCopy, v19, v20, v22, context);

  sub_100006654(dataCopy, v19);
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context
{
  v15 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v27 - v17;
  if (l)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = type metadata accessor for URL();
    (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  }

  else
  {
    v20 = type metadata accessor for URL();
    (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  }

  if (metadata)
  {
    metadata = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (d)
  {
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    d = v22;
  }

  else
  {
    v21 = 0;
  }

  serviceCopy = service;
  accountCopy = account;
  contextCopy = context;
  selfCopy = self;
  sub_100473444(serviceCopy, accountCopy, v18, metadata, v21, d, contextCopy);

  sub_10000B3A8(v18, &unk_101696AC0, &qword_101390A60);
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  if (identifier)
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
  errorCopy = error;
  selfCopy = self;
  sub_100474248(service, account, v12, v14, successCopy, error);
}

- (void)service:(id)service account:(id)account identifier:(id)identifier fromID:(id)d hasBeenDeliveredWithContext:(id)context
{
  dCopy = d;
  if (identifier)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
    if (dCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    v15 = 0;
    if (context)
    {
      goto LABEL_4;
    }

LABEL_7:
    memset(v23, 0, sizeof(v23));
    serviceCopy = service;
    accountCopy = account;
    selfCopy = self;
    goto LABEL_8;
  }

  v12 = 0;
  v14 = 0;
  if (!d)
  {
    goto LABEL_6;
  }

LABEL_3:
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  dCopy = v16;
  if (!context)
  {
    goto LABEL_7;
  }

LABEL_4:
  serviceCopy2 = service;
  accountCopy2 = account;
  selfCopy2 = self;
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
LABEL_8:
  sub_100474B88(service, account, v12, v14, v15, dCopy);

  sub_10000B3A8(v23, &unk_1016A0B10, &qword_10139BF40);
}

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  if (changed)
  {
    v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  serviceCopy = service;
  selfCopy = self;
  sub_100475688(service, v6);
}

- (void)service:(id)service account:(id)account inviteReceivedForSession:(id)session fromID:(id)d withContext:(id)context
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
  sessionCopy = session;
  if (context)
  {
    contextCopy = context;
    selfCopy = self;
    context = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    selfCopy2 = self;
    v21 = 0xF000000000000000;
  }

  sub_100476F5C(accountCopy, sessionCopy, v12, v14, context, v21);
  sub_100006654(context, v21);
}

- (_TtC12searchpartyd34MessagingServiceDelegateTrampoline)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end