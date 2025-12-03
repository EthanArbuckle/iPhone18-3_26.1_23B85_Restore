@interface GKGameKitDirectoryServicePrivate
+ (Class)interfaceClass;
- (GKGameKitDirectoryServicePrivate)initWithTransport:(id)transport forClient:(id)client localPlayer:(id)player credential:(id)credential;
- (GKGameKitDirectoryServicePrivate)initWithoutCredentialWithTransport:(id)transport forClient:(id)client;
- (id)resolveURLWithImageURL:(id)l gameKitDirectoryURLHint:(id)hint fileExistsFn:(id)fn;
- (void)fetchImageForURL:(id)l gameKitDirectoryURLHint:(id)hint completionHandler:(id)handler;
- (void)fetchMetadataForGameKitDirectoryURL:(id)l completionHandler:(id)handler;
@end

@implementation GKGameKitDirectoryServicePrivate

+ (Class)interfaceClass
{
  sub_10027C014();

  return swift_getObjCClassFromMetadata();
}

- (id)resolveURLWithImageURL:(id)l gameKitDirectoryURLHint:(id)hint fileExistsFn:(id)fn
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001A6C04(&qword_1003B5800);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = (&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v17 = &v26 - v16;
  v18 = _Block_copy(fn);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  if (hint)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  sub_1001A9674(v15, v19, 1, v8);
  _Block_copy(v18);
  selfCopy = self;
  sub_10027C380(v11, v15, v18, v17);
  _Block_release(v18);

  sub_1001A974C(v15, &qword_1003B5800);
  v21 = *(v9 + 8);
  v21(v11, v8);
  if (sub_1001A969C(v17, 1, v8) == 1)
  {
    v23 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v22);
    v23 = v24;
    v21(v17, v8);
  }

  return v23;
}

- (void)fetchImageForURL:(id)l gameKitDirectoryURLHint:(id)hint completionHandler:(id)handler
{
  v8 = sub_1001A6C04(&qword_1003B5800);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(handler);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  if (hint)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  sub_1001A9674(v10, v16, 1, v11);
  _Block_copy(v15);
  selfCopy = self;
  sub_10027C910(v14, v10, selfCopy, v15);
  _Block_release(v15);

  sub_1001A974C(v10, &qword_1003B5800);
  (*(v12 + 8))(v14, v11);
}

- (void)fetchMetadataForGameKitDirectoryURL:(id)l completionHandler:(id)handler
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(handler);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v10);
  selfCopy = self;
  sub_10027CF80(v9, selfCopy, v10);
  _Block_release(v10);

  (*(v7 + 8))(v9, v6);
}

- (GKGameKitDirectoryServicePrivate)initWithoutCredentialWithTransport:(id)transport forClient:(id)client
{
  transportCopy = transport;
  clientCopy = client;
  return sub_10027E980(transport, client);
}

- (GKGameKitDirectoryServicePrivate)initWithTransport:(id)transport forClient:(id)client localPlayer:(id)player credential:(id)credential
{
  transportCopy = transport;
  clientCopy = client;
  playerCopy = player;
  credentialCopy = credential;
  return sub_10027EA3C(transport, client, player, credential);
}

@end