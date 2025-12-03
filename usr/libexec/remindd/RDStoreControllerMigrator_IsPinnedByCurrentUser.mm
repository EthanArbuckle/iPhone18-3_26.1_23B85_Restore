@interface RDStoreControllerMigrator_IsPinnedByCurrentUser
- (_TtC7remindd47RDStoreControllerMigrator_IsPinnedByCurrentUser)init;
- (void)migrateStoreIfNeeded:(id)needed metadata:(id)metadata;
@end

@implementation RDStoreControllerMigrator_IsPinnedByCurrentUser

- (void)migrateStoreIfNeeded:(id)needed metadata:(id)metadata
{
  neededCopy = needed;
  metadataCopy = metadata;
  selfCopy = self;
  RDStoreControllerMigrator_IsPinnedByCurrentUser.migrateStoreIfNeeded(_:metadata:)(neededCopy, metadataCopy);
}

- (_TtC7remindd47RDStoreControllerMigrator_IsPinnedByCurrentUser)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RDStoreControllerMigrator_IsPinnedByCurrentUser();
  return [(RDStoreControllerMigrator_IsPinnedByCurrentUser *)&v3 init];
}

@end