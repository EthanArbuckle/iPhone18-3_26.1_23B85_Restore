@interface RDStoreControllerMigrator_RemoveObsoleteDueDateDeltas
- (_TtC7remindd53RDStoreControllerMigrator_RemoveObsoleteDueDateDeltas)init;
- (void)migrateStoreIfNeeded:(id)needed metadata:(id)metadata;
@end

@implementation RDStoreControllerMigrator_RemoveObsoleteDueDateDeltas

- (void)migrateStoreIfNeeded:(id)needed metadata:(id)metadata
{
  neededCopy = needed;
  metadataCopy = metadata;
  selfCopy = self;
  RDStoreControllerMigrator_RemoveObsoleteDueDateDeltas.migrateStoreIfNeeded(_:metadata:)(neededCopy, metadataCopy);
}

- (_TtC7remindd53RDStoreControllerMigrator_RemoveObsoleteDueDateDeltas)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RDStoreControllerMigrator_RemoveObsoleteDueDateDeltas();
  return [(RDStoreControllerMigrator_RemoveObsoleteDueDateDeltas *)&v3 init];
}

@end