@interface NDTSQSchema
- (int64_t)changes;
- (unint64_t)lastInsertedRowId;
- (void)begin;
- (void)commit;
- (void)executeSql:(id)a3;
- (void)parseSql:(id)a3 andRun:(id)a4;
- (void)rollback;
@end

@implementation NDTSQSchema

- (void)executeSql:(id)a3
{
  v4 = a3;
  v5 = [(NDTSQSchema *)self db];
  [v5 executeSql:v4];
}

- (void)parseSql:(id)a3 andRun:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NDTSQSchema *)self db];
  [v8 parseSql:v7 andRun:v6];
}

- (void)begin
{
  v2 = [(NDTSQSchema *)self db];
  [v2 begin];
}

- (void)commit
{
  v2 = [(NDTSQSchema *)self db];
  [v2 commit];
}

- (void)rollback
{
  v2 = [(NDTSQSchema *)self db];
  [v2 rollback];
}

- (int64_t)changes
{
  v2 = [(NDTSQSchema *)self db];
  v3 = sqlite3_changes([v2 db]);

  return v3;
}

- (unint64_t)lastInsertedRowId
{
  v2 = [(NDTSQSchema *)self db];
  insert_rowid = sqlite3_last_insert_rowid([v2 db]);

  return insert_rowid;
}

@end