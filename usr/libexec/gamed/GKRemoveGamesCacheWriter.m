@interface GKRemoveGamesCacheWriter
+ (id)writerWithDatabaseConnection:(id)a3 gameDescriptor:(id)a4;
- (GKRemoveGamesCacheWriter)initWithDatabaseConnection:(id)a3 gameDescriptor:(id)a4;
- (void)bindParametersForRemoveGamesStatement:(sqlite3_stmt *)a3 forRemovedBundleID:(id)a4 requestsRowID:(int64_t)a5;
- (void)bindParametersForRequestsStatement:(sqlite3_stmt *)a3 playerID:(id)a4 digest:(id)a5;
- (void)writeResources:(id)a3 handler:(id)a4;
- (void)writeToDatabase:(sqlite3 *)a3 statementStore:(id)a4 withInsertSQL:(id)a5 updateSQL:(id)a6 bindOperation:(id)a7;
@end

@implementation GKRemoveGamesCacheWriter

+ (id)writerWithDatabaseConnection:(id)a3 gameDescriptor:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(objc_opt_class()) initWithDatabaseConnection:v5 gameDescriptor:v6];

  return v7;
}

- (GKRemoveGamesCacheWriter)initWithDatabaseConnection:(id)a3 gameDescriptor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = GKRemoveGamesCacheWriter;
  v8 = [(GKRemoveGamesCacheWriter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(GKRemoveGamesCacheWriter *)v8 setConnection:v6];
    [(GKRemoveGamesCacheWriter *)v9 setGameDescriptor:v7];
  }

  return v9;
}

- (void)bindParametersForRequestsStatement:(sqlite3_stmt *)a3 playerID:(id)a4 digest:(id)a5
{
  v11 = a4;
  GKBindParam(a3, ":player_gcid", v11);
  v7 = [(NSDictionary *)self->_gameDescriptor objectForKeyedSubscript:@"adam-id"];
  GKBindParam(a3, ":adam_id", v7);

  v8 = [(NSDictionary *)self->_gameDescriptor objectForKeyedSubscript:@"bundle-id"];
  GKBindParam(a3, ":bundle_id", v8);

  v9 = [(NSDictionary *)self->_gameDescriptor objectForKeyedSubscript:@"bundle-version"];
  GKBindParam(a3, ":bundle_version", v9);

  v10 = [(NSDictionary *)self->_gameDescriptor objectForKeyedSubscript:@"external-version"];
  GKBindParam(a3, ":external_version", v10);
}

- (void)bindParametersForRemoveGamesStatement:(sqlite3_stmt *)a3 forRemovedBundleID:(id)a4 requestsRowID:(int64_t)a5
{
  v7 = a4;
  GKBindParam(a3, ":request_id", a5);
  GKBindParam(a3, ":removed_bundle_id", v7);
}

- (void)writeToDatabase:(sqlite3 *)a3 statementStore:(id)a4 withInsertSQL:(id)a5 updateSQL:(id)a6 bindOperation:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10010CB8C;
  v25[3] = &unk_100366DD0;
  v15 = v11;
  v26 = v15;
  v16 = v14;
  v27 = v16;
  v17 = objc_retainBlock(v25);
  v18 = v12;
  v19 = (v17[2])(v17, v18);
  v20 = v18;
  if (v13 && v19 == 101)
  {
    v20 = v13;

    v19 = (v17[2])(v17, v20);
  }

  if (v19 != 101)
  {
    v22 = [NSString stringWithUTF8String:sqlite3_errmsg(a3)];
    v30 = @"SQL";
    v31 = v20;
    [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v23 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v22 userInfo:objc_claimAutoreleasedReturnValue()];
    objc_exception_throw(v23);
  }

  v21 = sqlite3_changes(a3);
  if (v13 && !v21)
  {
    v28 = @"SQL";
    v29 = v20;
    [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v24 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"UPDATE statement didn't affect any rows userInfo:meaning record unsuccessfully inserted", objc_claimAutoreleasedReturnValue()];
    objc_exception_throw(v24);
  }
}

- (void)writeResources:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  connection = self->_connection;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10010CD40;
  v13[3] = &unk_100366E48;
  v14 = v6;
  v15 = self;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10010D1B4;
  v11[3] = &unk_100366E70;
  v12 = v7;
  v9 = v7;
  v10 = v6;
  [(GKDatabaseConnection *)connection performAsyncTransaction:v13 handler:v11];
}

@end