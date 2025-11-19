@interface RDStoreControllerMigrator_ResetReminderCountsCache
- (_TtC7remindd50RDStoreControllerMigrator_ResetReminderCountsCache)init;
- (void)migrateStoreIfNeeded:(id)a3 metadata:(id)a4;
@end

@implementation RDStoreControllerMigrator_ResetReminderCountsCache

- (void)migrateStoreIfNeeded:(id)a3 metadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  RDStoreControllerMigrator_ResetReminderCountsCache.migrateStoreIfNeeded(_:metadata:)(v6, v7);
}

- (_TtC7remindd50RDStoreControllerMigrator_ResetReminderCountsCache)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RDStoreControllerMigrator_ResetReminderCountsCache();
  return [(RDStoreControllerMigrator_ResetReminderCountsCache *)&v3 init];
}

@end