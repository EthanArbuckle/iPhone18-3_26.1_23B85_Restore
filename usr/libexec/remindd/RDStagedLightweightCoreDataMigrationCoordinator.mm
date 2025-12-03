@interface RDStagedLightweightCoreDataMigrationCoordinator
+ (id)createCoordinatorForMigratingReminderDataWithClientNamesOfREMCDChangeTrackingStateWhichShouldNotBeResetUponPersistentHistoryTruncation:(id)truncation;
+ (id)stagedMigrationsInfoForPersistentStoreAt:(id)at;
- (BOOL)cloneStoreAtSourceStoreURL:(id)l destinationStoreURL:(id)rL error:(id *)error;
- (BOOL)performStagedLightweightMigrationForStoreAtStoreURL:(id)l persistentStoreDescriptionOptionsOverride:(id)override postMigrationDataUpdatesTransactionAuthor:(id)author error:(id *)error;
- (BOOL)shouldPerformStagedLightweightMigrationForStoreAtStoreURL:(id)l;
- (_TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator)init;
@end

@implementation RDStagedLightweightCoreDataMigrationCoordinator

- (BOOL)shouldPerformStagedLightweightMigrationForStoreAtStoreURL:(id)l
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v10 = sub_1003D4994(v8);

  (*(v5 + 8))(v8, v4);
  return v10 & 1;
}

- (BOOL)performStagedLightweightMigrationForStoreAtStoreURL:(id)l persistentStoreDescriptionOptionsOverride:(id)override postMigrationDataUpdatesTransactionAuthor:(id)author error:(id *)error
{
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  if (override)
  {
    sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
    override = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (author)
  {
    author = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  selfCopy = self;
  sub_1003D4FA8(v13, override, author, v15);
  (*(v10 + 8))(v13, v9);

  return 1;
}

- (BOOL)cloneStoreAtSourceStoreURL:(id)l destinationStoreURL:(id)rL error:(id *)error
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v15[-v11];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1003D8F04(v12, v9);
  v13 = *(v6 + 8);
  v13(v9, v5);
  v13(v12, v5);
  return 1;
}

+ (id)stagedMigrationsInfoForPersistentStoreAt:(id)at
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = sub_1003D99E8();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    sub_1000F5104(&unk_100938CB0, &unk_100796A70);
    v9.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  return v9.super.isa;
}

- (_TtC7remindd47RDStagedLightweightCoreDataMigrationCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (id)createCoordinatorForMigratingReminderDataWithClientNamesOfREMCDChangeTrackingStateWhichShouldNotBeResetUponPersistentHistoryTruncation:(id)truncation
{
  if (truncation)
  {
    v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_1006B2A38(v3);

  return v4;
}

@end