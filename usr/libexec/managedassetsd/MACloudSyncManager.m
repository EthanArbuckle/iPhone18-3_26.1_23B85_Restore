@interface MACloudSyncManager
- (BOOL)cloudSyncEnabledForAssetType:(unint64_t)a3;
- (_TtC6server18MACloudSyncManager)init;
- (_TtC6server18MACloudSyncManager)initWithStorage:(id)a3 delegate:(id)a4;
- (void)checkCloudRecordZoneExistWithCompletionHandler:(id)a3;
- (void)deleteAllInCloudWithCompletionHandler:(id)a3;
- (void)deleteAssetInCloudWithRecordName:(NSString *)a3 assetType:(unint64_t)a4 profileType:(unint64_t)a5 completionHandler:(id)a6;
- (void)deleteKVSDataInCloudWithRecordHandles:(NSArray *)a3 assetType:(unint64_t)a4 storeName:(NSString *)a5 storeGroup:(NSString *)a6 profileType:(unint64_t)a7 completionHandler:(id)a8;
- (void)fetchSigninUserWithCompletionHandler:(id)a3;
- (void)getUserOptionsWithCompletionHandler:(id)a3;
- (void)localAssetCleanupWithRecordName:(NSString *)a3 completionHandler:(id)a4;
- (void)localKVSCleanupWithRecordName:(NSString *)a3 completionHandler:(id)a4;
- (void)queryCloudAssetWithRecordName:(NSString *)a3 completionHandler:(id)a4;
- (void)queryCloudAssetsSizeWithCompletionHandler:(id)a3;
- (void)queryCloudKVDataSizeWithCompletionHandler:(id)a3;
- (void)queryCloudKVDataWithRecordName:(NSString *)a3 completionHandler:(id)a4;
- (void)resetCloudSyncStateWithCompletionHandler:(id)a3;
- (void)saveAssetToCloud:(MASDAsset *)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)saveKVSDataToCloudWithRecordHandle:(NSString *)a3 assetType:(unint64_t)a4 storeName:(NSString *)a5 storeGroup:(NSString *)a6 profileType:(unint64_t)a7 data:(NSDictionary *)a8 options:(unint64_t)a9 completionHandler:(id)a10;
- (void)saveUserOptions:(int64_t)a3 completionHandler:(id)a4;
- (void)startWithCompletionHandler:(id)a3;
@end

@implementation MACloudSyncManager

- (_TtC6server18MACloudSyncManager)initWithStorage:(id)a3 delegate:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = sub_1000BF9E4(v5, a4);

  swift_unknownObjectRelease();
  return v6;
}

- (void)startWithCompletionHandler:(id)a3
{
  v5 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_100064F78(0, 0, v8, &unk_1000E7888, v13);
}

- (void)checkCloudRecordZoneExistWithCompletionHandler:(id)a3
{
  v5 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_100064F78(0, 0, v8, &unk_1000E7868, v13);
}

- (void)saveUserOptions:(int64_t)a3 completionHandler:(id)a4
{
  v7 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = self;
  sub_100064F78(0, 0, v10, &unk_1000E7848, v15);
}

- (void)getUserOptionsWithCompletionHandler:(id)a3
{
  v5 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_100064F78(0, 0, v8, &unk_1000E7828, v13);
}

- (_TtC6server18MACloudSyncManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)resetCloudSyncStateWithCompletionHandler:(id)a3
{
  v5 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_100064F78(0, 0, v8, &unk_1000E7808, v13);
}

- (void)queryCloudAssetsSizeWithCompletionHandler:(id)a3
{
  v5 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_100064F78(0, 0, v8, &unk_1000E77E8, v13);
}

- (void)queryCloudKVDataSizeWithCompletionHandler:(id)a3
{
  v5 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_100064F78(0, 0, v8, &unk_1000E77C8, v13);
}

- (void)queryCloudAssetWithRecordName:(NSString *)a3 completionHandler:(id)a4
{
  v7 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_100064F78(0, 0, v10, &unk_1000E77A8, v15);
}

- (void)queryCloudKVDataWithRecordName:(NSString *)a3 completionHandler:(id)a4
{
  v7 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_100064F78(0, 0, v10, &unk_1000E7788, v15);
}

- (void)fetchSigninUserWithCompletionHandler:(id)a3
{
  v5 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_100064F78(0, 0, v8, &unk_1000E7768, v13);
}

- (BOOL)cloudSyncEnabledForAssetType:(unint64_t)a3
{
  sub_1000C5D18(a3);
  v4 = v3;
  if (v3)
  {
  }

  return v4 != 0;
}

- (void)saveAssetToCloud:(MASDAsset *)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v9 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = self;
  sub_100064F78(0, 0, v12, &unk_1000E7748, v17);
}

- (void)localAssetCleanupWithRecordName:(NSString *)a3 completionHandler:(id)a4
{
  v7 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_100064F78(0, 0, v10, &unk_1000E7728, v15);
}

- (void)localKVSCleanupWithRecordName:(NSString *)a3 completionHandler:(id)a4
{
  v7 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_100064F78(0, 0, v10, &unk_1000E7708, v15);
}

- (void)deleteAssetInCloudWithRecordName:(NSString *)a3 assetType:(unint64_t)a4 profileType:(unint64_t)a5 completionHandler:(id)a6
{
  v11 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v22 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
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
  v20 = a3;
  v21 = self;
  sub_100064F78(0, 0, v14, &unk_1000E76E8, v19);
}

- (void)saveKVSDataToCloudWithRecordHandle:(NSString *)a3 assetType:(unint64_t)a4 storeName:(NSString *)a5 storeGroup:(NSString *)a6 profileType:(unint64_t)a7 data:(NSDictionary *)a8 options:(unint64_t)a9 completionHandler:(id)a10
{
  v30 = a7;
  v31 = a3;
  v16 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v30 - v18;
  v20 = _Block_copy(a10);
  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = a4;
  v21[4] = a5;
  v21[5] = a6;
  v21[6] = v30;
  v21[7] = a8;
  v21[8] = a9;
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
  v25 = v31;
  v26 = a5;
  v27 = a6;
  v28 = a8;
  v29 = self;
  sub_100064F78(0, 0, v19, &unk_1000E76C8, v24);
}

- (void)deleteKVSDataInCloudWithRecordHandles:(NSArray *)a3 assetType:(unint64_t)a4 storeName:(NSString *)a5 storeGroup:(NSString *)a6 profileType:(unint64_t)a7 completionHandler:(id)a8
{
  v15 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v28 - v17;
  v19 = _Block_copy(a8);
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a5;
  v20[5] = a6;
  v20[6] = a7;
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
  v24 = a3;
  v25 = a5;
  v26 = a6;
  v27 = self;
  sub_100064F78(0, 0, v18, &unk_1000E76A8, v23);
}

- (void)deleteAllInCloudWithCompletionHandler:(id)a3
{
  v5 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_100064F78(0, 0, v8, &unk_1000E7670, v13);
}

@end