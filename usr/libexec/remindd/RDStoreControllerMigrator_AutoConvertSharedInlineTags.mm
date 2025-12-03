@interface RDStoreControllerMigrator_AutoConvertSharedInlineTags
- (_TtC7remindd53RDStoreControllerMigrator_AutoConvertSharedInlineTags)init;
- (void)migrateStoreIfNeeded:(id)needed metadata:(id)metadata;
@end

@implementation RDStoreControllerMigrator_AutoConvertSharedInlineTags

- (void)migrateStoreIfNeeded:(id)needed metadata:(id)metadata
{
  neededCopy = needed;
  metadataCopy = metadata;
  selfCopy = self;
  sub_1001E8168(neededCopy, metadataCopy);
}

- (_TtC7remindd53RDStoreControllerMigrator_AutoConvertSharedInlineTags)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RDStoreControllerMigrator_AutoConvertSharedInlineTags();
  return [(RDStoreControllerMigrator_AutoConvertSharedInlineTags *)&v3 init];
}

@end