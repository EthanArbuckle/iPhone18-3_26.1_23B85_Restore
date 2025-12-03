@interface GKDatabaseMigrator
- (GKDatabaseMigrator)initWithOldDatabaseURL:(id)l newDatabaseURL:(id)rL persistentStoreCoordinator:(id)coordinator options:(id)options;
- (void)migrate;
@end

@implementation GKDatabaseMigrator

- (GKDatabaseMigrator)initWithOldDatabaseURL:(id)l newDatabaseURL:(id)rL persistentStoreCoordinator:(id)coordinator options:(id)options
{
  v9 = sub_1001A6C04(&qword_1003B5800);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  if (l)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = type metadata accessor for URL();
    v16 = 0;
  }

  else
  {
    v15 = type metadata accessor for URL();
    v16 = 1;
  }

  v17 = 1;
  sub_1001A9674(v14, v16, 1, v15);
  if (rL)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = 0;
  }

  v18 = type metadata accessor for URL();
  sub_1001A9674(v12, v17, 1, v18);
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  coordinatorCopy = coordinator;
  sub_10021E004();
  return result;
}

- (void)migrate
{
  selfCopy = self;
  DatabaseMigrator.migrate()();
}

@end