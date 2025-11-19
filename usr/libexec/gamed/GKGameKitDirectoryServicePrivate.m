@interface GKGameKitDirectoryServicePrivate
+ (Class)interfaceClass;
- (GKGameKitDirectoryServicePrivate)initWithTransport:(id)a3 forClient:(id)a4 localPlayer:(id)a5 credential:(id)a6;
- (GKGameKitDirectoryServicePrivate)initWithoutCredentialWithTransport:(id)a3 forClient:(id)a4;
- (id)resolveURLWithImageURL:(id)a3 gameKitDirectoryURLHint:(id)a4 fileExistsFn:(id)a5;
- (void)fetchImageForURL:(id)a3 gameKitDirectoryURLHint:(id)a4 completionHandler:(id)a5;
- (void)fetchMetadataForGameKitDirectoryURL:(id)a3 completionHandler:(id)a4;
@end

@implementation GKGameKitDirectoryServicePrivate

+ (Class)interfaceClass
{
  sub_10027C014();

  return swift_getObjCClassFromMetadata();
}

- (id)resolveURLWithImageURL:(id)a3 gameKitDirectoryURLHint:(id)a4 fileExistsFn:(id)a5
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
  v18 = _Block_copy(a5);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
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
  v20 = self;
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

- (void)fetchImageForURL:(id)a3 gameKitDirectoryURLHint:(id)a4 completionHandler:(id)a5
{
  v8 = sub_1001A6C04(&qword_1003B5800);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(a5);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
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
  v17 = self;
  sub_10027C910(v14, v10, v17, v15);
  _Block_release(v15);

  sub_1001A974C(v10, &qword_1003B5800);
  (*(v12 + 8))(v14, v11);
}

- (void)fetchMetadataForGameKitDirectoryURL:(id)a3 completionHandler:(id)a4
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(a4);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v10);
  v11 = self;
  sub_10027CF80(v9, v11, v10);
  _Block_release(v10);

  (*(v7 + 8))(v9, v6);
}

- (GKGameKitDirectoryServicePrivate)initWithoutCredentialWithTransport:(id)a3 forClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  return sub_10027E980(a3, a4);
}

- (GKGameKitDirectoryServicePrivate)initWithTransport:(id)a3 forClient:(id)a4 localPlayer:(id)a5 credential:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  return sub_10027EA3C(a3, a4, a5, a6);
}

@end