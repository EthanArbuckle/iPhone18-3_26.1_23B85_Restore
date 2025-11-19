@interface RDStoreControllerMigrator_AccountIdentifierHashtagLabels
- (_TtC7remindd56RDStoreControllerMigrator_AccountIdentifierHashtagLabels)init;
- (void)migrateStoreIfNeeded:(id)a3 metadata:(id)a4;
@end

@implementation RDStoreControllerMigrator_AccountIdentifierHashtagLabels

- (void)migrateStoreIfNeeded:(id)a3 metadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  RDStoreControllerMigrator_AccountIdentifierHashtagLabels.migrateStoreIfNeeded(_:metadata:)(v6, v7);
}

- (_TtC7remindd56RDStoreControllerMigrator_AccountIdentifierHashtagLabels)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RDStoreControllerMigrator_AccountIdentifierHashtagLabels();
  return [(RDStoreControllerMigrator_AccountIdentifierHashtagLabels *)&v3 init];
}

@end