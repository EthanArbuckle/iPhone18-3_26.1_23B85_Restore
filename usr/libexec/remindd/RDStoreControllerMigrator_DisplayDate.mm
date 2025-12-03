@interface RDStoreControllerMigrator_DisplayDate
- (void)migrateStore:(id)store;
- (void)migrateStoreIfNeeded:(id)needed metadata:(id)metadata;
@end

@implementation RDStoreControllerMigrator_DisplayDate

- (void)migrateStoreIfNeeded:(id)needed metadata:(id)metadata
{
  neededCopy = needed;
  metadataCopy = metadata;
  v7 = [metadataCopy objectForKeyedSubscript:@"RDStoreControllerMigrator_DisplayDate"];
  integerValue = [v7 integerValue];

  if (integerValue <= 0)
  {
    [(RDStoreControllerMigrator_DisplayDate *)self migrateStore:neededCopy];
    [metadataCopy setObject:&off_1009051C0 forKeyedSubscript:@"RDStoreControllerMigrator_DisplayDate"];
  }
}

- (void)migrateStore:(id)store
{
  storeCopy = store;
  v4 = +[REMLogStore container];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = storeCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "DisplayDateMigration BEGIN {store: %@}", &v6, 0xCu);
  }

  [_TtC7remindd20RDDisplayDateUpdater updateDisplayDatesIn:storeCopy];
  v5 = +[REMLogStore container];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = storeCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DisplayDateMigration END {store: %@}", &v6, 0xCu);
  }
}

@end