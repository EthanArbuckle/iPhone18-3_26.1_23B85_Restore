@interface RDStoreControllerMigrator_DisplayDate
- (void)migrateStore:(id)a3;
- (void)migrateStoreIfNeeded:(id)a3 metadata:(id)a4;
@end

@implementation RDStoreControllerMigrator_DisplayDate

- (void)migrateStoreIfNeeded:(id)a3 metadata:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [v6 objectForKeyedSubscript:@"RDStoreControllerMigrator_DisplayDate"];
  v8 = [v7 integerValue];

  if (v8 <= 0)
  {
    [(RDStoreControllerMigrator_DisplayDate *)self migrateStore:v9];
    [v6 setObject:&off_1009051C0 forKeyedSubscript:@"RDStoreControllerMigrator_DisplayDate"];
  }
}

- (void)migrateStore:(id)a3
{
  v3 = a3;
  v4 = +[REMLogStore container];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "DisplayDateMigration BEGIN {store: %@}", &v6, 0xCu);
  }

  [_TtC7remindd20RDDisplayDateUpdater updateDisplayDatesIn:v3];
  v5 = +[REMLogStore container];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DisplayDateMigration END {store: %@}", &v6, 0xCu);
  }
}

@end