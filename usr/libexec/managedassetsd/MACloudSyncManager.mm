@interface MACloudSyncManager
- (BOOL)cloudSyncEnabledForAssetType:(unint64_t)type;
- (_TtC6server18MACloudSyncManager)init;
- (_TtC6server18MACloudSyncManager)initWithStorage:(id)storage delegate:(id)delegate;
- (void)checkCloudRecordZoneExistWithCompletionHandler:(id)handler;
- (void)deleteAllInCloudWithCompletionHandler:(id)handler;
- (void)deleteAssetInCloudWithRecordName:(NSString *)name assetType:(unint64_t)type profileType:(unint64_t)profileType completionHandler:(id)handler;
- (void)deleteKVSDataInCloudWithRecordHandles:(NSArray *)handles assetType:(unint64_t)type storeName:(NSString *)name storeGroup:(NSString *)group profileType:(unint64_t)profileType completionHandler:(id)handler;
- (void)fetchSigninUserWithCompletionHandler:(id)handler;
- (void)getUserOptionsWithCompletionHandler:(id)handler;
- (void)localAssetCleanupWithRecordName:(NSString *)name completionHandler:(id)handler;
- (void)localKVSCleanupWithRecordName:(NSString *)name completionHandler:(id)handler;
- (void)queryCloudAssetWithRecordName:(NSString *)name completionHandler:(id)handler;
- (void)queryCloudAssetsSizeWithCompletionHandler:(id)handler;
- (void)queryCloudKVDataSizeWithCompletionHandler:(id)handler;
- (void)queryCloudKVDataWithRecordName:(NSString *)name completionHandler:(id)handler;
- (void)resetCloudSyncStateWithCompletionHandler:(id)handler;
- (void)saveAssetToCloud:(MASDAsset *)cloud options:(unint64_t)options completionHandler:(id)handler;
- (void)saveKVSDataToCloudWithRecordHandle:(NSString *)handle assetType:(unint64_t)type storeName:(NSString *)name storeGroup:(NSString *)group profileType:(unint64_t)profileType data:(NSDictionary *)data options:(unint64_t)options completionHandler:(id)self0;
- (void)saveUserOptions:(int64_t)options completionHandler:(id)handler;
- (void)startWithCompletionHandler:(id)handler;
@end

@implementation MACloudSyncManager

- (_TtC6server18MACloudSyncManager)initWithStorage:(id)storage delegate:(id)delegate
{
  storageCopy = storage;
  swift_unknownObjectRetain();
  v6 = sub_1000BF9E4(storageCopy, delegate);

  swift_unknownObjectRelease();
  return v6;
}

- (void)startWithCompletionHandler:(id)handler
{
  v5 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000E7878;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000E7880;
  v13[5] = v12;
  selfCopy = self;
  sub_100064F78(0, 0, v8, &unk_1000E7888, v13);
}

- (void)checkCloudRecordZoneExistWithCompletionHandler:(id)handler
{
  v5 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000E7858;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000E7860;
  v13[5] = v12;
  selfCopy = self;
  sub_100064F78(0, 0, v8, &unk_1000E7868, v13);
}

- (void)saveUserOptions:(int64_t)options completionHandler:(id)handler
{
  v7 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = options;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000E7838;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000E7840;
  v15[5] = v14;
  selfCopy = self;
  sub_100064F78(0, 0, v10, &unk_1000E7848, v15);
}

- (void)getUserOptionsWithCompletionHandler:(id)handler
{
  v5 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000E7818;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000E7820;
  v13[5] = v12;
  selfCopy = self;
  sub_100064F78(0, 0, v8, &unk_1000E7828, v13);
}

- (_TtC6server18MACloudSyncManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)resetCloudSyncStateWithCompletionHandler:(id)handler
{
  v5 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000E77F8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000E7800;
  v13[5] = v12;
  selfCopy = self;
  sub_100064F78(0, 0, v8, &unk_1000E7808, v13);
}

- (void)queryCloudAssetsSizeWithCompletionHandler:(id)handler
{
  v5 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000E77D8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000E77E0;
  v13[5] = v12;
  selfCopy = self;
  sub_100064F78(0, 0, v8, &unk_1000E77E8, v13);
}

- (void)queryCloudKVDataSizeWithCompletionHandler:(id)handler
{
  v5 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000E77B8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000E77C0;
  v13[5] = v12;
  selfCopy = self;
  sub_100064F78(0, 0, v8, &unk_1000E77C8, v13);
}

- (void)queryCloudAssetWithRecordName:(NSString *)name completionHandler:(id)handler
{
  v7 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = name;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000E7798;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000E77A0;
  v15[5] = v14;
  nameCopy = name;
  selfCopy = self;
  sub_100064F78(0, 0, v10, &unk_1000E77A8, v15);
}

- (void)queryCloudKVDataWithRecordName:(NSString *)name completionHandler:(id)handler
{
  v7 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = name;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000E7778;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000E7780;
  v15[5] = v14;
  nameCopy = name;
  selfCopy = self;
  sub_100064F78(0, 0, v10, &unk_1000E7788, v15);
}

- (void)fetchSigninUserWithCompletionHandler:(id)handler
{
  v5 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000E7758;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000E7760;
  v13[5] = v12;
  selfCopy = self;
  sub_100064F78(0, 0, v8, &unk_1000E7768, v13);
}

- (BOOL)cloudSyncEnabledForAssetType:(unint64_t)type
{
  sub_1000C5D18(type);
  v4 = v3;
  if (v3)
  {
  }

  return v4 != 0;
}

- (void)saveAssetToCloud:(MASDAsset *)cloud options:(unint64_t)options completionHandler:(id)handler
{
  v9 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = cloud;
  v14[3] = options;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1000E7738;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1000E7740;
  v17[5] = v16;
  cloudCopy = cloud;
  selfCopy = self;
  sub_100064F78(0, 0, v12, &unk_1000E7748, v17);
}

- (void)localAssetCleanupWithRecordName:(NSString *)name completionHandler:(id)handler
{
  v7 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = name;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000E7718;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000E7720;
  v15[5] = v14;
  nameCopy = name;
  selfCopy = self;
  sub_100064F78(0, 0, v10, &unk_1000E7728, v15);
}

- (void)localKVSCleanupWithRecordName:(NSString *)name completionHandler:(id)handler
{
  v7 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = name;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000E76F8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000E7700;
  v15[5] = v14;
  nameCopy = name;
  selfCopy = self;
  sub_100064F78(0, 0, v10, &unk_1000E7708, v15);
}

- (void)deleteAssetInCloudWithRecordName:(NSString *)name assetType:(unint64_t)type profileType:(unint64_t)profileType completionHandler:(id)handler
{
  v11 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v22 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = name;
  v16[3] = type;
  v16[4] = profileType;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1000E76D8;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1000E76E0;
  v19[5] = v18;
  nameCopy = name;
  selfCopy = self;
  sub_100064F78(0, 0, v14, &unk_1000E76E8, v19);
}

- (void)saveKVSDataToCloudWithRecordHandle:(NSString *)handle assetType:(unint64_t)type storeName:(NSString *)name storeGroup:(NSString *)group profileType:(unint64_t)profileType data:(NSDictionary *)data options:(unint64_t)options completionHandler:(id)self0
{
  profileTypeCopy = profileType;
  handleCopy = handle;
  v16 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &profileTypeCopy - v18;
  v20 = _Block_copy(handler);
  v21 = swift_allocObject();
  v21[2] = handle;
  v21[3] = type;
  v21[4] = name;
  v21[5] = group;
  v21[6] = profileTypeCopy;
  v21[7] = data;
  v21[8] = options;
  v21[9] = v20;
  v21[10] = self;
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_1000E76B8;
  v23[5] = v21;
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_1000E76C0;
  v24[5] = v23;
  v25 = handleCopy;
  nameCopy = name;
  groupCopy = group;
  dataCopy = data;
  selfCopy = self;
  sub_100064F78(0, 0, v19, &unk_1000E76C8, v24);
}

- (void)deleteKVSDataInCloudWithRecordHandles:(NSArray *)handles assetType:(unint64_t)type storeName:(NSString *)name storeGroup:(NSString *)group profileType:(unint64_t)profileType completionHandler:(id)handler
{
  v15 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v28 - v17;
  v19 = _Block_copy(handler);
  v20 = swift_allocObject();
  v20[2] = handles;
  v20[3] = type;
  v20[4] = name;
  v20[5] = group;
  v20[6] = profileType;
  v20[7] = v19;
  v20[8] = self;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_1000E7698;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_1000E76A0;
  v23[5] = v22;
  handlesCopy = handles;
  nameCopy = name;
  groupCopy = group;
  selfCopy = self;
  sub_100064F78(0, 0, v18, &unk_1000E76A8, v23);
}

- (void)deleteAllInCloudWithCompletionHandler:(id)handler
{
  v5 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000E7650;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000E7660;
  v13[5] = v12;
  selfCopy = self;
  sub_100064F78(0, 0, v8, &unk_1000E7670, v13);
}

@end