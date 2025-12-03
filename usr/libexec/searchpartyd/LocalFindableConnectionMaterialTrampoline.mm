@interface LocalFindableConnectionMaterialTrampoline
- (_TtC12searchpartyd41LocalFindableConnectionMaterialTrampoline)init;
- (void)peripheralConnectionMaterialForAccessoryIdentifier:(id)identifier completion:(id)completion;
- (void)startLocalFindableConnectionMaterialMonitoringWithCompletion:(id)completion;
- (void)stopLocalFindableConnectionMaterialMonitoringWithCompletion:(id)completion;
@end

@implementation LocalFindableConnectionMaterialTrampoline

- (void)startLocalFindableConnectionMaterialMonitoringWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_100A74070(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)stopLocalFindableConnectionMaterialMonitoringWithCompletion:(id)completion
{
  v5 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = self;
  v12[5] = sub_10001E370;
  v12[6] = v10;
  selfCopy = self;
  sub_10025EDD4(0, 0, v8, &unk_1013D5108, v12);
}

- (void)peripheralConnectionMaterialForAccessoryIdentifier:(id)identifier completion:(id)completion
{
  v6 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  v17 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  (*(v11 + 16))(v14, v16, v10);
  v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = self;
  (*(v11 + 32))(&v22[v20], v14, v10);
  v23 = &v22[v21];
  *v23 = sub_1001BC108;
  v23[1] = v18;
  selfCopy = self;

  sub_100A838D4(0, 0, v9, &unk_1013D50F0, v22);

  (*(v11 + 8))(v16, v10);
}

- (_TtC12searchpartyd41LocalFindableConnectionMaterialTrampoline)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end