@interface KCSharingCloudCoreUtilities
- (BOOL)haveAcquiredSession;
- (_TtC9securityd27KCSharingCloudCoreUtilities)init;
- (_TtC9securityd27KCSharingCloudCoreUtilities)initWithKCSharingCloudCoreDelegate:(id)a3;
- (id)acquiredSessionUserRecordIDAndReturnError:(id *)a3;
- (void)acceptCKShares:(NSArray *)a3 completionHandler:(id)a4;
- (void)acquireCKDatabasesFromAuthenticatedSessionWithContainerIdentifier:(NSString *)a3 applicationOverrideIdentifier:(NSString *)a4 encryptionServiceIdentifier:(NSString *)a5 forTestingDelegate:(_TtP9securityd33KCSharingCloudCoreTestingProtocol_ *)a6 completionHandler:(id)a7;
- (void)declineCKShares:(NSArray *)a3 completionHandler:(id)a4;
- (void)fetchCKShareMetadatas:(NSArray *)a3 invitationTokensByShareURL:(NSDictionary *)a4 completionHandler:(id)a5;
- (void)fetchShareParticipantsFor:(NSArray *)a3 completionHandler:(id)a4;
- (void)forceNilOutCKDatabases;
- (void)forceSessionInvalidationWithRequestSessionReInit:(BOOL)a3;
- (void)invokeDummyOperationOnAccountSignOutWithCompletionHandler:(id)a3;
- (void)setSessionAcquisitionInProgress:(BOOL)a3;
- (void)withCKDatabases:(id)a3;
@end

@implementation KCSharingCloudCoreUtilities

- (id)acquiredSessionUserRecordIDAndReturnError:(id *)a3
{
  v3 = (self + OBJC_IVAR____TtC9securityd27KCSharingCloudCoreUtilities_stateMutex);
  v4 = self;
  os_unfair_lock_lock(v3);
  sub_10001165C(&v3[2]._os_unfair_lock_opaque, &v7, &v8);
  os_unfair_lock_unlock(v3);

  v5 = v8;

  return v5;
}

- (_TtC9securityd27KCSharingCloudCoreUtilities)initWithKCSharingCloudCoreDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v3 = sub_10002ADA8();
  swift_unknownObjectRelease();
  return v3;
}

- (void)acquireCKDatabasesFromAuthenticatedSessionWithContainerIdentifier:(NSString *)a3 applicationOverrideIdentifier:(NSString *)a4 encryptionServiceIdentifier:(NSString *)a5 forTestingDelegate:(_TtP9securityd33KCSharingCloudCoreTestingProtocol_ *)a6 completionHandler:(id)a7
{
  v13 = (*(*(sub_10002ACB8(&qword_10039B340, &qword_1002942B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v15 = &v25 - v14;
  v16 = _Block_copy(a7);
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a6;
  v17[6] = v16;
  v17[7] = self;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_100294398;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_1002943A0;
  v20[5] = v19;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  swift_unknownObjectRetain();
  v24 = self;
  sub_10002A224(0, 0, v15, &unk_1002943A8, v20);
}

- (_TtC9securityd27KCSharingCloudCoreUtilities)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)haveAcquiredSession
{
  v2 = (self + OBJC_IVAR____TtC9securityd27KCSharingCloudCoreUtilities_stateMutex);
  v3 = self;
  os_unfair_lock_lock(v2);
  sub_100024CDC(&v2[2]._os_unfair_lock_opaque, &v5);
  os_unfair_lock_unlock(v2);

  return v5;
}

- (void)setSessionAcquisitionInProgress:(BOOL)a3
{
  v4 = (self + OBJC_IVAR____TtC9securityd27KCSharingCloudCoreUtilities_stateMutex);
  v5 = self;
  os_unfair_lock_lock(v4);
  sub_100024E44(&v4[2], a3);
  os_unfair_lock_unlock(v4);
}

- (void)withCKDatabases:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = self;
  sub_100024FC4(v4);

  _Block_release(v4);
}

- (void)invokeDummyOperationOnAccountSignOutWithCompletionHandler:(id)a3
{
  v5 = (*(*(sub_10002ACB8(&qword_10039B340, &qword_1002942B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100294368;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100294370;
  v12[5] = v11;
  v13 = self;
  sub_10002A224(0, 0, v7, &unk_100294378, v12);
}

- (void)fetchShareParticipantsFor:(NSArray *)a3 completionHandler:(id)a4
{
  v7 = sub_10002ACB8(&qword_10039B340, &qword_1002942B0);
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
  v14[4] = &unk_100294348;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100294350;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_10002A224(0, 0, v10, &unk_100294358, v15);
}

- (void)acceptCKShares:(NSArray *)a3 completionHandler:(id)a4
{
  v7 = sub_10002ACB8(&qword_10039B340, &qword_1002942B0);
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
  v14[4] = &unk_100294328;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100294330;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_10002A224(0, 0, v10, &unk_100294338, v15);
}

- (void)fetchCKShareMetadatas:(NSArray *)a3 invitationTokensByShareURL:(NSDictionary *)a4 completionHandler:(id)a5
{
  v9 = sub_10002ACB8(&qword_10039B340, &qword_1002942B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
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
  v16[4] = &unk_100294308;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100294310;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_10002A224(0, 0, v12, &unk_100294318, v17);
}

- (void)declineCKShares:(NSArray *)a3 completionHandler:(id)a4
{
  v7 = sub_10002ACB8(&qword_10039B340, &qword_1002942B0);
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
  v14[4] = &unk_1002942C0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1002942D0;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_10002A224(0, 0, v10, &unk_1002942E0, v15);
}

- (void)forceSessionInvalidationWithRequestSessionReInit:(BOOL)a3
{
  v4 = self;
  sub_100029550(a3);
}

- (void)forceNilOutCKDatabases
{
  v2 = self;
  sub_10002987C();
}

@end