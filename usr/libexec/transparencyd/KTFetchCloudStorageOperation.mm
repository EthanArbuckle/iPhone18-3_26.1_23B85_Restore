@interface KTFetchCloudStorageOperation
+ (id)lastCKFetchWithDeps:(id)a3;
- (BOOL)shouldRetry;
- (_TtC13transparencyd28KTFetchCloudStorageOperation)init;
- (void)groupStart;
@end

@implementation KTFetchCloudStorageOperation

- (BOOL)shouldRetry
{
  v2 = *((swift_isaMask & self->super.super.super.super.super.super.isa) + 0xD8);
  v3 = self;
  LOBYTE(v2) = v2();

  return v2 & 1;
}

+ (id)lastCKFetchWithDeps:(id)a3
{
  v4 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v18 - v6;
  v8 = a3;
  v9 = [v8 smDataStore];
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 getSettingsDate:v10];

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
  v2 = self;
  KTFetchCloudStorageOperation.groupStart()();
}

- (_TtC13transparencyd28KTFetchCloudStorageOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end