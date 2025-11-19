@interface RDStoreControllerMigrator_RemoveObsoleteDueDateDeltas
- (_TtC7remindd53RDStoreControllerMigrator_RemoveObsoleteDueDateDeltas)init;
- (void)migrateStoreIfNeeded:(id)a3 metadata:(id)a4;
@end

@implementation RDStoreControllerMigrator_RemoveObsoleteDueDateDeltas

- (void)migrateStoreIfNeeded:(id)a3 metadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  RDStoreControllerMigrator_RemoveObsoleteDueDateDeltas.migrateStoreIfNeeded(_:metadata:)(v6, v7);
}

- (_TtC7remindd53RDStoreControllerMigrator_RemoveObsoleteDueDateDeltas)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RDStoreControllerMigrator_RemoveObsoleteDueDateDeltas();
  return [(RDStoreControllerMigrator_RemoveObsoleteDueDateDeltas *)&v3 init];
}

@end