@interface KCSharingCloudCoreUtilities
- (BOOL)haveAcquiredSession;
- (_TtC9securityd27KCSharingCloudCoreUtilities)init;
- (_TtC9securityd27KCSharingCloudCoreUtilities)initWithKCSharingCloudCoreDelegate:(id)delegate;
- (id)acquiredSessionUserRecordIDAndReturnError:(id *)error;
- (void)acceptCKShares:(NSArray *)shares completionHandler:(id)handler;
- (void)acquireCKDatabasesFromAuthenticatedSessionWithContainerIdentifier:(NSString *)identifier applicationOverrideIdentifier:(NSString *)overrideIdentifier encryptionServiceIdentifier:(NSString *)serviceIdentifier forTestingDelegate:(_TtP9securityd33KCSharingCloudCoreTestingProtocol_ *)delegate completionHandler:(id)handler;
- (void)declineCKShares:(NSArray *)shares completionHandler:(id)handler;
- (void)fetchCKShareMetadatas:(NSArray *)metadatas invitationTokensByShareURL:(NSDictionary *)l completionHandler:(id)handler;
- (void)fetchShareParticipantsFor:(NSArray *)for completionHandler:(id)handler;
- (void)forceNilOutCKDatabases;
- (void)forceSessionInvalidationWithRequestSessionReInit:(BOOL)init;
- (void)invokeDummyOperationOnAccountSignOutWithCompletionHandler:(id)handler;
- (void)setSessionAcquisitionInProgress:(BOOL)progress;
- (void)withCKDatabases:(id)databases;
@end

@implementation KCSharingCloudCoreUtilities

- (id)acquiredSessionUserRecordIDAndReturnError:(id *)error
{
  v3 = (self + OBJC_IVAR____TtC9securityd27KCSharingCloudCoreUtilities_stateMutex);
  selfCopy = self;
  os_unfair_lock_lock(v3);
  sub_10001165C(&v3[2]._os_unfair_lock_opaque, &v7, &v8);
  os_unfair_lock_unlock(v3);

  v5 = v8;

  return v5;
}

- (_TtC9securityd27KCSharingCloudCoreUtilities)initWithKCSharingCloudCoreDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  v3 = sub_10002ADA8();
  swift_unknownObjectRelease();
  return v3;
}

- (void)acquireCKDatabasesFromAuthenticatedSessionWithContainerIdentifier:(NSString *)identifier applicationOverrideIdentifier:(NSString *)overrideIdentifier encryptionServiceIdentifier:(NSString *)serviceIdentifier forTestingDelegate:(_TtP9securityd33KCSharingCloudCoreTestingProtocol_ *)delegate completionHandler:(id)handler
{
  v13 = (*(*(sub_10002ACB8(&qword_10039B340, &qword_1002942B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v15 = &v25 - v14;
  v16 = _Block_copy(handler);
  v17 = swift_allocObject();
  v17[2] = identifier;
  v17[3] = overrideIdentifier;
  v17[4] = serviceIdentifier;
  v17[5] = delegate;
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
  identifierCopy = identifier;
  overrideIdentifierCopy = overrideIdentifier;
  serviceIdentifierCopy = serviceIdentifier;
  swift_unknownObjectRetain();
  selfCopy = self;
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
  selfCopy = self;
  os_unfair_lock_lock(v2);
  sub_100024CDC(&v2[2]._os_unfair_lock_opaque, &v5);
  os_unfair_lock_unlock(v2);

  return v5;
}

- (void)setSessionAcquisitionInProgress:(BOOL)progress
{
  v4 = (self + OBJC_IVAR____TtC9securityd27KCSharingCloudCoreUtilities_stateMutex);
  selfCopy = self;
  os_unfair_lock_lock(v4);
  sub_100024E44(&v4[2], progress);
  os_unfair_lock_unlock(v4);
}

- (void)withCKDatabases:(id)databases
{
  v4 = _Block_copy(databases);
  selfCopy = self;
  sub_100024FC4(v4);

  _Block_release(v4);
}

- (void)invokeDummyOperationOnAccountSignOutWithCompletionHandler:(id)handler
{
  v5 = (*(*(sub_10002ACB8(&qword_10039B340, &qword_1002942B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
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
  selfCopy = self;
  sub_10002A224(0, 0, v7, &unk_100294378, v12);
}

- (void)fetchShareParticipantsFor:(NSArray *)for completionHandler:(id)handler
{
  v7 = sub_10002ACB8(&qword_10039B340, &qword_1002942B0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = for;
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
  forCopy = for;
  selfCopy = self;
  sub_10002A224(0, 0, v10, &unk_100294358, v15);
}

- (void)acceptCKShares:(NSArray *)shares completionHandler:(id)handler
{
  v7 = sub_10002ACB8(&qword_10039B340, &qword_1002942B0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = shares;
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
  sharesCopy = shares;
  selfCopy = self;
  sub_10002A224(0, 0, v10, &unk_100294338, v15);
}

- (void)fetchCKShareMetadatas:(NSArray *)metadatas invitationTokensByShareURL:(NSDictionary *)l completionHandler:(id)handler
{
  v9 = sub_10002ACB8(&qword_10039B340, &qword_1002942B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = metadatas;
  v14[3] = l;
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
  metadatasCopy = metadatas;
  lCopy = l;
  selfCopy = self;
  sub_10002A224(0, 0, v12, &unk_100294318, v17);
}

- (void)declineCKShares:(NSArray *)shares completionHandler:(id)handler
{
  v7 = sub_10002ACB8(&qword_10039B340, &qword_1002942B0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = shares;
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
  sharesCopy = shares;
  selfCopy = self;
  sub_10002A224(0, 0, v10, &unk_1002942E0, v15);
}

- (void)forceSessionInvalidationWithRequestSessionReInit:(BOOL)init
{
  selfCopy = self;
  sub_100029550(init);
}

- (void)forceNilOutCKDatabases
{
  selfCopy = self;
  sub_10002987C();
}

@end