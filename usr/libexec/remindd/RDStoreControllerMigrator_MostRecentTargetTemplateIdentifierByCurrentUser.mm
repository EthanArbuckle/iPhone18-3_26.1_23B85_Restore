@interface RDStoreControllerMigrator_MostRecentTargetTemplateIdentifierByCurrentUser
- (_TtC7remindd73RDStoreControllerMigrator_MostRecentTargetTemplateIdentifierByCurrentUser)init;
- (void)migrateStoreIfNeeded:(id)needed metadata:(id)metadata;
@end

@implementation RDStoreControllerMigrator_MostRecentTargetTemplateIdentifierByCurrentUser

- (void)migrateStoreIfNeeded:(id)needed metadata:(id)metadata
{
  neededCopy = needed;
  metadataCopy = metadata;
  selfCopy = self;
  RDStoreControllerMigrator_MostRecentTargetTemplateIdentifierByCurrentUser.migrateStoreIfNeeded(_:metadata:)(neededCopy, metadataCopy);
}

- (_TtC7remindd73RDStoreControllerMigrator_MostRecentTargetTemplateIdentifierByCurrentUser)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RDStoreControllerMigrator_MostRecentTargetTemplateIdentifierByCurrentUser();
  return [(RDStoreControllerMigrator_MostRecentTargetTemplateIdentifierByCurrentUser *)&v3 init];
}

@end