@interface IDSMessagingService
- (_TtC14NanoPhotosSync19IDSMessagingService)init;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8;
- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7;
@end

@implementation IDSMessagingService

- (_TtC14NanoPhotosSync19IDSMessagingService)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8
{
  v14 = sub_100004180(&qword_100098D90);
  __chkstk_darwin(v14 - 8);
  v16 = &v24 - v15;
  if (a5)
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

  if (a6)
  {
    a6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a7)
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a7 = v20;
  }

  else
  {
    v19 = 0;
  }

  v21 = a3;
  v22 = a4;
  v23 = a8;

  sub_10002FB74(v21, v16, a6, v19, a7, v23);

  sub_100009BA4(v16, &qword_100098D90);
}

- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7
{
  if (a6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;

  sub_100030148(a5, a7);
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  if (a5)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = a3;
  v15 = a4;
  v16 = a7;

  sub_100030438(v11, v13, a6, a7);
}

@end