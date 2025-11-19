@interface RDXPCSyncInterfacePerformer
- (_TtC7remindd27RDXPCSyncInterfacePerformer)init;
- (void)fetchServerRecordFor:(id)a3 completion:(id)a4;
- (void)observeAutoCategorizationActivityChanges;
- (void)observeCloudKitNetworkActivityChanges;
- (void)restartCloudKitSyncWithReason:(id)a3 bypassThrottler:(BOOL)a4 completion:(id)a5;
- (void)setMigrationStateToDidChooseToMigrate:(BOOL)a3 didFinishMigration:(BOOL)a4 createZoneAccountIfFinishMigration:(BOOL)a5 accountID:(id)a6 completion:(id)a7;
- (void)syncDataAccessAccountsWithAccountIDs:(id)a3 bypassThrottler:(BOOL)a4 completion:(id)a5;
@end

@implementation RDXPCSyncInterfacePerformer

- (void)observeCloudKitNetworkActivityChanges
{
  v2 = self;
  sub_1001C6060("Received request to observe CloudKit traffic {clientConnection: %@}", &selRef_startObservingCloudKitNetworkActivityWithObserver_);
}

- (void)syncDataAccessAccountsWithAccountIDs:(id)a3 bypassThrottler:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v7 = _Block_copy(a5);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = self;
  sub_1000340EC(v8, v5, sub_10003FE60, v9);
}

- (void)restartCloudKitSyncWithReason:(id)a3 bypassThrottler:(BOOL)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = self;
  sub_1001BE840(v10, a4, sub_10003FE60, v9);
}

- (void)setMigrationStateToDidChooseToMigrate:(BOOL)a3 didFinishMigration:(BOOL)a4 createZoneAccountIfFinishMigration:(BOOL)a5 accountID:(id)a6 completion:(id)a7
{
  v9 = a4;
  v10 = a3;
  v12 = _Block_copy(a7);
  if (a6)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a6 = v14;
  }

  else
  {
    v13 = 0;
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  v16 = self;
  sub_1001C4638(v10, v9, a5, v13, a6, sub_10003FE58, v15);
}

- (void)fetchServerRecordFor:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_1001C58FC(v8, sub_10000A878, v7);
}

- (void)observeAutoCategorizationActivityChanges
{
  v2 = self;
  sub_1001C6060("Received request to observe auto categorization activity {clientConnection: %@}", &selRef_startObservingAutoCategorizationActivityWithObserver_);
}

- (_TtC7remindd27RDXPCSyncInterfacePerformer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end