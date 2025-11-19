@interface RDStoreControllerMigrator_MostRecentTargetTemplateIdentifierByCurrentUser
- (_TtC7remindd73RDStoreControllerMigrator_MostRecentTargetTemplateIdentifierByCurrentUser)init;
- (void)migrateStoreIfNeeded:(id)a3 metadata:(id)a4;
@end

@implementation RDStoreControllerMigrator_MostRecentTargetTemplateIdentifierByCurrentUser

- (void)migrateStoreIfNeeded:(id)a3 metadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  RDStoreControllerMigrator_MostRecentTargetTemplateIdentifierByCurrentUser.migrateStoreIfNeeded(_:metadata:)(v6, v7);
}

- (_TtC7remindd73RDStoreControllerMigrator_MostRecentTargetTemplateIdentifierByCurrentUser)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RDStoreControllerMigrator_MostRecentTargetTemplateIdentifierByCurrentUser();
  return [(RDStoreControllerMigrator_MostRecentTargetTemplateIdentifierByCurrentUser *)&v3 init];
}

@end