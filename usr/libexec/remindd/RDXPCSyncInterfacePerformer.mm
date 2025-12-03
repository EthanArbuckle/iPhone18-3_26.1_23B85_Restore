@interface RDXPCSyncInterfacePerformer
- (_TtC7remindd27RDXPCSyncInterfacePerformer)init;
- (void)fetchServerRecordFor:(id)for completion:(id)completion;
- (void)observeAutoCategorizationActivityChanges;
- (void)observeCloudKitNetworkActivityChanges;
- (void)restartCloudKitSyncWithReason:(id)reason bypassThrottler:(BOOL)throttler completion:(id)completion;
- (void)setMigrationStateToDidChooseToMigrate:(BOOL)migrate didFinishMigration:(BOOL)migration createZoneAccountIfFinishMigration:(BOOL)finishMigration accountID:(id)d completion:(id)completion;
- (void)syncDataAccessAccountsWithAccountIDs:(id)ds bypassThrottler:(BOOL)throttler completion:(id)completion;
@end

@implementation RDXPCSyncInterfacePerformer

- (void)observeCloudKitNetworkActivityChanges
{
  selfCopy = self;
  sub_1001C6060("Received request to observe CloudKit traffic {clientConnection: %@}", &selRef_startObservingCloudKitNetworkActivityWithObserver_);
}

- (void)syncDataAccessAccountsWithAccountIDs:(id)ds bypassThrottler:(BOOL)throttler completion:(id)completion
{
  throttlerCopy = throttler;
  v7 = _Block_copy(completion);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  selfCopy = self;
  sub_1000340EC(v8, throttlerCopy, sub_10003FE60, v9);
}

- (void)restartCloudKitSyncWithReason:(id)reason bypassThrottler:(BOOL)throttler completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  reasonCopy = reason;
  selfCopy = self;
  sub_1001BE840(reasonCopy, throttler, sub_10003FE60, v9);
}

- (void)setMigrationStateToDidChooseToMigrate:(BOOL)migrate didFinishMigration:(BOOL)migration createZoneAccountIfFinishMigration:(BOOL)finishMigration accountID:(id)d completion:(id)completion
{
  migrationCopy = migration;
  migrateCopy = migrate;
  v12 = _Block_copy(completion);
  if (d)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    d = v14;
  }

  else
  {
    v13 = 0;
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  selfCopy = self;
  sub_1001C4638(migrateCopy, migrationCopy, finishMigration, v13, d, sub_10003FE58, v15);
}

- (void)fetchServerRecordFor:(id)for completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  forCopy = for;
  selfCopy = self;
  sub_1001C58FC(forCopy, sub_10000A878, v7);
}

- (void)observeAutoCategorizationActivityChanges
{
  selfCopy = self;
  sub_1001C6060("Received request to observe auto categorization activity {clientConnection: %@}", &selRef_startObservingAutoCategorizationActivityWithObserver_);
}

- (_TtC7remindd27RDXPCSyncInterfacePerformer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end