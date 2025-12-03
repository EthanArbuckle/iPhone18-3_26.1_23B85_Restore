@interface RDStoreControllerMigrator_AccountIdentifierHashtagLabels
- (_TtC7remindd56RDStoreControllerMigrator_AccountIdentifierHashtagLabels)init;
- (void)migrateStoreIfNeeded:(id)needed metadata:(id)metadata;
@end

@implementation RDStoreControllerMigrator_AccountIdentifierHashtagLabels

- (void)migrateStoreIfNeeded:(id)needed metadata:(id)metadata
{
  neededCopy = needed;
  metadataCopy = metadata;
  selfCopy = self;
  RDStoreControllerMigrator_AccountIdentifierHashtagLabels.migrateStoreIfNeeded(_:metadata:)(neededCopy, metadataCopy);
}

- (_TtC7remindd56RDStoreControllerMigrator_AccountIdentifierHashtagLabels)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RDStoreControllerMigrator_AccountIdentifierHashtagLabels();
  return [(RDStoreControllerMigrator_AccountIdentifierHashtagLabels *)&v3 init];
}

@end