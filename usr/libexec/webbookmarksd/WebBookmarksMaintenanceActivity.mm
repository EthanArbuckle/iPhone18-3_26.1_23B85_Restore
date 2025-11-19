@interface WebBookmarksMaintenanceActivity
+ (void)checkInActivities;
+ (void)registerBookmarksDatabaseMaintenanceActivity;
+ (void)registerBookmarksDatabaseMigrationActivity;
+ (void)registerPasswordIconsCleanupActivity;
@end

@implementation WebBookmarksMaintenanceActivity

+ (void)checkInActivities
{
  sub_1000125B4(0, @"bookmarks database maintenance", "com.apple.webbookmarksd.bookmarksDatabaseMaintenanceActivityIdentifier", &stru_100029A58);
  sub_1000125B4(0, @"bookmarks database migration", "com.apple.webbookmarksd.bookmarksDatabaseMigrationActivityIdentifier", &stru_100029AC8);

  sub_100012334(0, XPC_ACTIVITY_CHECK_IN, "com.apple.webbookmarksd.passwordIconsRepeatingCleanupActivityIdentifier");
}

+ (void)registerBookmarksDatabaseMaintenanceActivity
{
  xpc_activity_unregister("com.apple.webbookmarksd.bookmarksDatabaseMaintenanceActivityIdentifier");

  sub_1000125B4(1, @"bookmarks database maintenance", "com.apple.webbookmarksd.bookmarksDatabaseMaintenanceActivityIdentifier", &stru_100029A58);
}

+ (void)registerBookmarksDatabaseMigrationActivity
{
  xpc_activity_unregister("com.apple.webbookmarksd.bookmarksDatabaseMigrationActivityIdentifier");

  sub_1000125B4(1, @"bookmarks database migration", "com.apple.webbookmarksd.bookmarksDatabaseMigrationActivityIdentifier", &stru_100029AC8);
}

+ (void)registerPasswordIconsCleanupActivity
{
  xpc_activity_unregister("com.apple.webbookmarksd.passwordIconsImmediateCleanupActivityIdentifier");
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(xdict, XPC_ACTIVITY_REPEATING, 0);
  xpc_dictionary_set_string(xdict, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_BOOL(xdict, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_BOOL(xdict, XPC_ACTIVITY_REQUIRES_CLASS_A, 1);
  xpc_dictionary_set_BOOL(xdict, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 0);
  xpc_dictionary_set_int64(xdict, XPC_ACTIVITY_DELAY, XPC_ACTIVITY_INTERVAL_5_MIN);
  xpc_dictionary_set_int64(xdict, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_5_MIN);
  sub_100012334(1, xdict, "com.apple.webbookmarksd.passwordIconsImmediateCleanupActivityIdentifier");
}

@end