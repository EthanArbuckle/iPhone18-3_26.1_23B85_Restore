@interface RDStoreControllerMigrator_UnsetCKDirtyFlagsInNonCKAccounts
- (_TtC7remindd58RDStoreControllerMigrator_UnsetCKDirtyFlagsInNonCKAccounts)init;
- (void)migrateStoreIfNeeded:(id)needed metadata:(id)metadata;
@end

@implementation RDStoreControllerMigrator_UnsetCKDirtyFlagsInNonCKAccounts

- (void)migrateStoreIfNeeded:(id)needed metadata:(id)metadata
{
  neededCopy = needed;
  metadataCopy = metadata;
  selfCopy = self;
  RDStoreControllerMigrator_UnsetCKDirtyFlagsInNonCKAccounts.migrateStoreIfNeeded(_:metadata:)(neededCopy, metadataCopy);
}

- (_TtC7remindd58RDStoreControllerMigrator_UnsetCKDirtyFlagsInNonCKAccounts)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RDStoreControllerMigrator_UnsetCKDirtyFlagsInNonCKAccounts();
  return [(RDStoreControllerMigrator_UnsetCKDirtyFlagsInNonCKAccounts *)&v3 init];
}

@end