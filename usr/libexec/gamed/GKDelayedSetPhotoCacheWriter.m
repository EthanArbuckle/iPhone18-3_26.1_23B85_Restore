@interface GKDelayedSetPhotoCacheWriter
+ (id)writerWithDatabaseConnection:(id)a3;
- (GKDelayedSetPhotoCacheWriter)initWithDatabaseConnection:(id)a3;
- (void)bindParametersForPhotoStatement:(sqlite3_stmt *)a3 photo:(id)a4 avatarType:(id)a5 requestsRowID:(int64_t)a6;
- (void)bindParametersForRequestsStatement:(sqlite3_stmt *)a3 playerID:(id)a4;
- (void)writeResources:(id)a3 handler:(id)a4;
- (void)writeToDatabase:(sqlite3 *)a3 statementStore:(id)a4 withInsertSQL:(id)a5 updateSQL:(id)a6 bindOperation:(id)a7;
@end

@implementation GKDelayedSetPhotoCacheWriter

+ (id)writerWithDatabaseConnection:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDatabaseConnection:v4];

  return v5;
}

- (GKDelayedSetPhotoCacheWriter)initWithDatabaseConnection:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = GKDelayedSetPhotoCacheWriter;
  v5 = [(GKDelayedSetPhotoCacheWriter *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(GKDelayedSetPhotoCacheWriter *)v5 setConnection:v4];
  }

  return v6;
}

- (void)bindParametersForRequestsStatement:(sqlite3_stmt *)a3 playerID:(id)a4
{
  v6 = a4;
  GKBindParam(a3, ":player_gcid", v6);
  v5 = +[NSDate date];
  GKBindParam(a3, ":time_stamp", v5);
}

- (void)bindParametersForPhotoStatement:(sqlite3_stmt *)a3 photo:(id)a4 avatarType:(id)a5 requestsRowID:(int64_t)a6
{
  v10 = a4;
  v9 = a5;
  GKBindParam(a3, ":request_id", a6);
  GKBindParam(a3, ":photo_data", v10);
  GKBindParam(a3, ":avatar_type", v9);
}

- (void)writeToDatabase:(sqlite3 *)a3 statementStore:(id)a4 withInsertSQL:(id)a5 updateSQL:(id)a6 bindOperation:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100110F1C;
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
  if ([v6 count] >= 2)
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
  v9 = v6;
  v17 = v9;
  v18 = self;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100111828;
  v14[3] = &unk_100366E70;
  v10 = v7;
  v15 = v10;
  [(GKDatabaseConnection *)connection performAsyncTransaction:v16 handler:v14];
}

@end