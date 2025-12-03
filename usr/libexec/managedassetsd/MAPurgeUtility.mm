@interface MAPurgeUtility
+ (_TtC6server14MAPurgeUtility)shared;
+ (void)initPurgeMarker;
+ (void)setupWithStorage:(id)storage syncManager:(id)manager;
- (_TtC6server14MAPurgeUtility)init;
- (void)checkPurgedMark:(BOOL)mark completionHandler:(id)handler;
- (void)registerCacheDeleteCallback;
- (void)registerPostInstallBGTask;
@end

@implementation MAPurgeUtility

+ (_TtC6server14MAPurgeUtility)shared
{
  if (qword_100129940 != -1)
  {
    swift_once();
  }

  v3 = qword_10012BB80;

  return v3;
}

- (_TtC6server14MAPurgeUtility)init
{
  if (qword_100129948)
  {
    v3.receiver = self;
    v3.super_class = type metadata accessor for MAPurgeUtility();
    return [(MAPurgeUtility *)&v3 init];
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

+ (void)setupWithStorage:(id)storage syncManager:(id)manager
{
  v5 = _Block_copy(manager);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  storageCopy = storage;
  marootPath = [storageCopy marootPath];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v10;
  v18 = v9;

  malocalAssetPath = [storageCopy malocalAssetPath];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = qword_100129948;
  qword_100129948 = storageCopy;
  qword_100129950 = sub_1000670CC;
  qword_100129958 = v6;
  qword_100129960 = v18;
  qword_100129968 = v17;
  qword_100129970 = v12;
  qword_100129978 = v14;
  v16 = storageCopy;

  sub_10006205C(v15);
}

- (void)registerCacheDeleteCallback
{
  selfCopy = self;
  MAPurgeUtility.registerCacheDeleteCallback()();
}

- (void)checkPurgedMark:(BOOL)mark completionHandler:(id)handler
{
  v7 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  *(v12 + 16) = mark;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000E6340;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000E6350;
  v15[5] = v14;
  selfCopy = self;
  sub_100064F78(0, 0, v10, &unk_1000E6360, v15);
}

- (void)registerPostInstallBGTask
{
  selfCopy = self;
  MAPurgeUtility.registerPostInstallBGTask()();
}

+ (void)initPurgeMarker
{
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  CacheDeleteInitPurgeMarker();
}

@end