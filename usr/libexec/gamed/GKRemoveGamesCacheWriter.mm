@interface GKRemoveGamesCacheWriter
+ (id)writerWithDatabaseConnection:(id)connection gameDescriptor:(id)descriptor;
- (GKRemoveGamesCacheWriter)initWithDatabaseConnection:(id)connection gameDescriptor:(id)descriptor;
- (void)bindParametersForRemoveGamesStatement:(sqlite3_stmt *)statement forRemovedBundleID:(id)d requestsRowID:(int64_t)iD;
- (void)bindParametersForRequestsStatement:(sqlite3_stmt *)statement playerID:(id)d digest:(id)digest;
- (void)writeResources:(id)resources handler:(id)handler;
- (void)writeToDatabase:(sqlite3 *)database statementStore:(id)store withInsertSQL:(id)l updateSQL:(id)qL bindOperation:(id)operation;
@end

@implementation GKRemoveGamesCacheWriter

+ (id)writerWithDatabaseConnection:(id)connection gameDescriptor:(id)descriptor
{
  connectionCopy = connection;
  descriptorCopy = descriptor;
  v7 = [objc_alloc(objc_opt_class()) initWithDatabaseConnection:connectionCopy gameDescriptor:descriptorCopy];

  return v7;
}

- (GKRemoveGamesCacheWriter)initWithDatabaseConnection:(id)connection gameDescriptor:(id)descriptor
{
  connectionCopy = connection;
  descriptorCopy = descriptor;
  v11.receiver = self;
  v11.super_class = GKRemoveGamesCacheWriter;
  v8 = [(GKRemoveGamesCacheWriter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(GKRemoveGamesCacheWriter *)v8 setConnection:connectionCopy];
    [(GKRemoveGamesCacheWriter *)v9 setGameDescriptor:descriptorCopy];
  }

  return v9;
}

- (void)bindParametersForRequestsStatement:(sqlite3_stmt *)statement playerID:(id)d digest:(id)digest
{
  dCopy = d;
  GKBindParam(statement, ":player_gcid", dCopy);
  v7 = [(NSDictionary *)self->_gameDescriptor objectForKeyedSubscript:@"adam-id"];
  GKBindParam(statement, ":adam_id", v7);

  v8 = [(NSDictionary *)self->_gameDescriptor objectForKeyedSubscript:@"bundle-id"];
  GKBindParam(statement, ":bundle_id", v8);

  v9 = [(NSDictionary *)self->_gameDescriptor objectForKeyedSubscript:@"bundle-version"];
  GKBindParam(statement, ":bundle_version", v9);

  v10 = [(NSDictionary *)self->_gameDescriptor objectForKeyedSubscript:@"external-version"];
  GKBindParam(statement, ":external_version", v10);
}

- (void)bindParametersForRemoveGamesStatement:(sqlite3_stmt *)statement forRemovedBundleID:(id)d requestsRowID:(int64_t)iD
{
  dCopy = d;
  GKBindParam(statement, ":request_id", iD);
  GKBindParam(statement, ":removed_bundle_id", dCopy);
}

- (void)writeToDatabase:(sqlite3 *)database statementStore:(id)store withInsertSQL:(id)l updateSQL:(id)qL bindOperation:(id)operation
{
  storeCopy = store;
  lCopy = l;
  qLCopy = qL;
  operationCopy = operation;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10010CB8C;
  v25[3] = &unk_100366DD0;
  v15 = storeCopy;
  v26 = v15;
  v16 = operationCopy;
  v27 = v16;
  v17 = objc_retainBlock(v25);
  v18 = lCopy;
  v19 = (v17[2])(v17, v18);
  v20 = v18;
  if (qLCopy && v19 == 101)
  {
    v20 = qLCopy;

    v19 = (v17[2])(v17, v20);
  }

  if (v19 != 101)
  {
    v22 = [NSString stringWithUTF8String:sqlite3_errmsg(database)];
    v30 = @"SQL";
    v31 = v20;
    [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v23 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v22 userInfo:objc_claimAutoreleasedReturnValue()];
    objc_exception_throw(v23);
  }

  v21 = sqlite3_changes(database);
  if (qLCopy && !v21)
  {
    v28 = @"SQL";
    v29 = v20;
    [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v24 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"UPDATE statement didn't affect any rows userInfo:meaning record unsuccessfully inserted", objc_claimAutoreleasedReturnValue()];
    objc_exception_throw(v24);
  }
}

- (void)writeResources:(id)resources handler:(id)handler
{
  resourcesCopy = resources;
  handlerCopy = handler;
  connection = self->_connection;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10010CD40;
  v13[3] = &unk_100366E48;
  v14 = resourcesCopy;
  selfCopy = self;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10010D1B4;
  v11[3] = &unk_100366E70;
  v12 = handlerCopy;
  v9 = handlerCopy;
  v10 = resourcesCopy;
  [(GKDatabaseConnection *)connection performAsyncTransaction:v13 handler:v11];
}

@end