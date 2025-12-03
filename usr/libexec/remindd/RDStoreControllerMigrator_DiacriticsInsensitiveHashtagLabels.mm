@interface RDStoreControllerMigrator_DiacriticsInsensitiveHashtagLabels
- (_TtC7remindd60RDStoreControllerMigrator_DiacriticsInsensitiveHashtagLabels)init;
- (void)migrateStoreIfNeeded:(id)needed metadata:(id)metadata;
@end

@implementation RDStoreControllerMigrator_DiacriticsInsensitiveHashtagLabels

- (void)migrateStoreIfNeeded:(id)needed metadata:(id)metadata
{
  neededCopy = needed;
  metadataCopy = metadata;
  selfCopy = self;
  RDStoreControllerMigrator_DiacriticsInsensitiveHashtagLabels.migrateStoreIfNeeded(_:metadata:)(neededCopy, metadataCopy);
}

- (_TtC7remindd60RDStoreControllerMigrator_DiacriticsInsensitiveHashtagLabels)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RDStoreControllerMigrator_DiacriticsInsensitiveHashtagLabels();
  return [(RDStoreControllerMigrator_DiacriticsInsensitiveHashtagLabels *)&v3 init];
}

@end