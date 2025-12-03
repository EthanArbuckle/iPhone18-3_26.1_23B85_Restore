@interface RDStoreControllerMigrator_ResetReminderCountsCache
- (_TtC7remindd50RDStoreControllerMigrator_ResetReminderCountsCache)init;
- (void)migrateStoreIfNeeded:(id)needed metadata:(id)metadata;
@end

@implementation RDStoreControllerMigrator_ResetReminderCountsCache

- (void)migrateStoreIfNeeded:(id)needed metadata:(id)metadata
{
  neededCopy = needed;
  metadataCopy = metadata;
  selfCopy = self;
  RDStoreControllerMigrator_ResetReminderCountsCache.migrateStoreIfNeeded(_:metadata:)(neededCopy, metadataCopy);
}

- (_TtC7remindd50RDStoreControllerMigrator_ResetReminderCountsCache)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RDStoreControllerMigrator_ResetReminderCountsCache();
  return [(RDStoreControllerMigrator_ResetReminderCountsCache *)&v3 init];
}

@end