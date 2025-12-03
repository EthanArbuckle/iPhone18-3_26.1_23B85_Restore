@interface RDStoreControllerMigrator_CKParentReminderIdentifier
- (void)migrateStore:(id)store;
- (void)migrateStoreIfNeeded:(id)needed metadata:(id)metadata;
@end

@implementation RDStoreControllerMigrator_CKParentReminderIdentifier

- (void)migrateStoreIfNeeded:(id)needed metadata:(id)metadata
{
  neededCopy = needed;
  metadataCopy = metadata;
  v7 = [metadataCopy objectForKeyedSubscript:@"RDStoreControllerMigrator_CKParentReminderIdentifier"];
  integerValue = [v7 integerValue];

  if (integerValue <= 0)
  {
    [(RDStoreControllerMigrator_CKParentReminderIdentifier *)self migrateStore:neededCopy];
    [metadataCopy setObject:&off_1009051A8 forKeyedSubscript:@"RDStoreControllerMigrator_CKParentReminderIdentifier"];
  }
}

- (void)migrateStore:(id)store
{
  storeCopy = store;
  v4 = +[REMLogStore container];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = storeCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CKParentReminderIdentifierMigration BEGIN {store: %@}", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v20 = 0x2020000000;
  v21 = 0x7FFFFFFFFFFFFFFFLL;
  v5 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
  persistentStoreCoordinator = [storeCopy persistentStoreCoordinator];
  [v5 setPersistentStoreCoordinator:persistentStoreCoordinator];

  [v5 setTransactionAuthor:RDStoreControllerCKParentReminderIdentifierMigrationAuthor];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000E6354;
  v11[3] = &unk_1008D9EE0;
  v7 = storeCopy;
  v12 = v7;
  v8 = v5;
  v13 = v8;
  p_buf = &buf;
  [v8 performBlockAndWait:v11];
  v9 = +[REMLogStore container];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(*(&buf + 1) + 24);
    *v15 = 138412546;
    v16 = v7;
    v17 = 2048;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CKParentReminderIdentifierMigration END {store: %@, updated.count: %ld}", v15, 0x16u);
  }

  _Block_object_dispose(&buf, 8);
}

@end