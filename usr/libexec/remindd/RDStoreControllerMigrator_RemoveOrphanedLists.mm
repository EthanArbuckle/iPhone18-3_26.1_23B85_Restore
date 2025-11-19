@interface RDStoreControllerMigrator_RemoveOrphanedLists
- (void)migrateStore:(id)a3;
- (void)migrateStoreIfNeeded:(id)a3 metadata:(id)a4;
@end

@implementation RDStoreControllerMigrator_RemoveOrphanedLists

- (void)migrateStoreIfNeeded:(id)a3 metadata:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [v6 objectForKeyedSubscript:@"RDStoreControllerMigrator_RemoveUnparentedObjects"];
  v8 = [v7 integerValue];

  if (v8 <= 0)
  {
    [(RDStoreControllerMigrator_RemoveOrphanedLists *)self migrateStore:v9];
    [v6 setObject:&off_100904E18 forKeyedSubscript:@"RDStoreControllerMigrator_RemoveUnparentedObjects"];
  }
}

- (void)migrateStore:(id)a3
{
  v3 = a3;
  v4 = +[REMLogStore container];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "UnparentedObjectsMigration BEGIN {store: %@}", &buf, 0xCu);
  }

  v5 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
  v6 = [v3 persistentStoreCoordinator];
  [v5 setPersistentStoreCoordinator:v6];

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
  v7 = v3;
  v13 = v7;
  p_buf = &buf;
  v8 = v5;
  v14 = v8;
  [v8 performBlockAndWait:v12];
  v9 = [*(*(&buf + 1) + 40) result];
  v10 = [v9 unsignedIntegerValue];

  v11 = +[REMLogStore container];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 138412546;
    v17 = v7;
    v18 = 2048;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "UnparentedObjectsMigration End {store: %@, countDeleted: %ld}", v16, 0x16u);
  }

  _Block_object_dispose(&buf, 8);
}

@end