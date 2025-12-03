@interface RDStoreControllerMigrator_RemoveOrphanedLists
- (void)migrateStore:(id)store;
- (void)migrateStoreIfNeeded:(id)needed metadata:(id)metadata;
@end

@implementation RDStoreControllerMigrator_RemoveOrphanedLists

- (void)migrateStoreIfNeeded:(id)needed metadata:(id)metadata
{
  neededCopy = needed;
  metadataCopy = metadata;
  v7 = [metadataCopy objectForKeyedSubscript:@"RDStoreControllerMigrator_RemoveUnparentedObjects"];
  integerValue = [v7 integerValue];

  if (integerValue <= 0)
  {
    [(RDStoreControllerMigrator_RemoveOrphanedLists *)self migrateStore:neededCopy];
    [metadataCopy setObject:&off_100904E18 forKeyedSubscript:@"RDStoreControllerMigrator_RemoveUnparentedObjects"];
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
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "UnparentedObjectsMigration BEGIN {store: %@}", &buf, 0xCu);
  }

  v5 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
  persistentStoreCoordinator = [storeCopy persistentStoreCoordinator];
  [v5 setPersistentStoreCoordinator:persistentStoreCoordinator];

  [v5 setTransactionAuthor:RDStoreControllerOrphanedListMigrationAuthor];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v21 = 0x3032000000;
  v22 = sub_100067534;
  v23 = sub_100067544;
  v24 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10006754C;
  v12[3] = &unk_1008D98A0;
  v7 = storeCopy;
  v13 = v7;
  p_buf = &buf;
  v8 = v5;
  v14 = v8;
  [v8 performBlockAndWait:v12];
  result = [*(*(&buf + 1) + 40) result];
  unsignedIntegerValue = [result unsignedIntegerValue];

  v11 = +[REMLogStore container];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 138412546;
    v17 = v7;
    v18 = 2048;
    v19 = unsignedIntegerValue;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "UnparentedObjectsMigration End {store: %@, countDeleted: %ld}", v16, 0x16u);
  }

  _Block_object_dispose(&buf, 8);
}

@end