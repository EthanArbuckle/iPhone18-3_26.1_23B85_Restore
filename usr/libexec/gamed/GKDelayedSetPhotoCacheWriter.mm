@interface GKDelayedSetPhotoCacheWriter
+ (id)writerWithDatabaseConnection:(id)connection;
- (GKDelayedSetPhotoCacheWriter)initWithDatabaseConnection:(id)connection;
- (void)bindParametersForPhotoStatement:(sqlite3_stmt *)statement photo:(id)photo avatarType:(id)type requestsRowID:(int64_t)d;
- (void)bindParametersForRequestsStatement:(sqlite3_stmt *)statement playerID:(id)d;
- (void)writeResources:(id)resources handler:(id)handler;
- (void)writeToDatabase:(sqlite3 *)database statementStore:(id)store withInsertSQL:(id)l updateSQL:(id)qL bindOperation:(id)operation;
@end

@implementation GKDelayedSetPhotoCacheWriter

+ (id)writerWithDatabaseConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [[self alloc] initWithDatabaseConnection:connectionCopy];

  return v5;
}

- (GKDelayedSetPhotoCacheWriter)initWithDatabaseConnection:(id)connection
{
  connectionCopy = connection;
  v8.receiver = self;
  v8.super_class = GKDelayedSetPhotoCacheWriter;
  v5 = [(GKDelayedSetPhotoCacheWriter *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(GKDelayedSetPhotoCacheWriter *)v5 setConnection:connectionCopy];
  }

  return v6;
}

- (void)bindParametersForRequestsStatement:(sqlite3_stmt *)statement playerID:(id)d
{
  dCopy = d;
  GKBindParam(statement, ":player_gcid", dCopy);
  v5 = +[NSDate date];
  GKBindParam(statement, ":time_stamp", v5);
}

- (void)bindParametersForPhotoStatement:(sqlite3_stmt *)statement photo:(id)photo avatarType:(id)type requestsRowID:(int64_t)d
{
  photoCopy = photo;
  typeCopy = type;
  GKBindParam(statement, ":request_id", d);
  GKBindParam(statement, ":photo_data", photoCopy);
  GKBindParam(statement, ":avatar_type", typeCopy);
}

- (void)writeToDatabase:(sqlite3 *)database statementStore:(id)store withInsertSQL:(id)l updateSQL:(id)qL bindOperation:(id)operation
{
  storeCopy = store;
  lCopy = l;
  qLCopy = qL;
  operationCopy = operation;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100110F1C;
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
  if ([resourcesCopy count] >= 2)
  {
    v11 = [NSString stringWithFormat:@"%@ is being asked to write photos for multiple players. This is not currently supported.", objc_opt_class()];
    v12 = [NSException exceptionWithName:NSInvalidArgumentException reason:v11 userInfo:0];
    v13 = v12;

    objc_exception_throw(v12);
  }

  connection = self->_connection;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100111174;
  v16[3] = &unk_100366E48;
  v9 = resourcesCopy;
  v17 = v9;
  selfCopy = self;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100111828;
  v14[3] = &unk_100366E70;
  v10 = handlerCopy;
  v15 = v10;
  [(GKDatabaseConnection *)connection performAsyncTransaction:v16 handler:v14];
}

@end