@interface KTFetchCloudStorageOperation
+ (id)lastCKFetchWithDeps:(id)deps;
- (BOOL)shouldRetry;
- (_TtC13transparencyd28KTFetchCloudStorageOperation)init;
- (void)groupStart;
@end

@implementation KTFetchCloudStorageOperation

- (BOOL)shouldRetry
{
  v2 = *((swift_isaMask & self->super.super.super.super.super.super.isa) + 0xD8);
  selfCopy = self;
  LOBYTE(v2) = v2();

  return v2 & 1;
}

+ (id)lastCKFetchWithDeps:(id)deps
{
  v4 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v18 - v6;
  depsCopy = deps;
  smDataStore = [depsCopy smDataStore];
  v10 = String._bridgeToObjectiveC()();
  v11 = [smDataStore getSettingsDate:v10];

  swift_unknownObjectRelease();
  if (v11)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = type metadata accessor for Date();
    (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  }

  else
  {
    v12 = type metadata accessor for Date();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  }

  type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v7, 1, v12);
  v15 = 0;
  if (v14 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v13 + 8))(v7, v12);
    v15 = isa;
  }

  return v15;
}

- (void)groupStart
{
  selfCopy = self;
  KTFetchCloudStorageOperation.groupStart()();
}

- (_TtC13transparencyd28KTFetchCloudStorageOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end