@interface RDStoreControllerMigrator_IsPinnedByCurrentUser
- (_TtC7remindd47RDStoreControllerMigrator_IsPinnedByCurrentUser)init;
- (void)migrateStoreIfNeeded:(id)a3 metadata:(id)a4;
@end

@implementation RDStoreControllerMigrator_IsPinnedByCurrentUser

- (void)migrateStoreIfNeeded:(id)a3 metadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  RDStoreControllerMigrator_IsPinnedByCurrentUser.migrateStoreIfNeeded(_:metadata:)(v6, v7);
}

- (_TtC7remindd47RDStoreControllerMigrator_IsPinnedByCurrentUser)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RDStoreControllerMigrator_IsPinnedByCurrentUser();
  return [(RDStoreControllerMigrator_IsPinnedByCurrentUser *)&v3 init];
}

@end