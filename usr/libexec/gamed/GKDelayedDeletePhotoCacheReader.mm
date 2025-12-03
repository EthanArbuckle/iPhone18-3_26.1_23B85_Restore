@interface GKDelayedDeletePhotoCacheReader
+ (id)readerWithDatabaseConnection:(id)connection;
- (GKDelayedDeletePhotoCacheReader)initWithDatabaseConnection:(id)connection;
- (id)deletePhotoDescriptorForExecutedStatement:(sqlite3_stmt *)statement;
- (id)deletePhotoDescriptorStatement;
- (void)readResources:(id)resources handler:(id)handler;
@end

@implementation GKDelayedDeletePhotoCacheReader

+ (id)readerWithDatabaseConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [[self alloc] initWithDatabaseConnection:connectionCopy];

  return v5;
}

- (GKDelayedDeletePhotoCacheReader)initWithDatabaseConnection:(id)connection
{
  connectionCopy = connection;
  v8.receiver = self;
  v8.super_class = GKDelayedDeletePhotoCacheReader;
  v5 = [(GKDelayedDeletePhotoCacheReader *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(GKDelayedDeletePhotoCacheReader *)v5 setConnection:connectionCopy];
  }

  return v6;
}

- (id)deletePhotoDescriptorStatement
{
  v2 = sub_10010E384(off_100366F30);
  v3 = [NSString stringWithFormat:@"    SELECT %@     FROM requests     INNER JOIN delete_photos USING (request_id)     WHERE player_gcid = %s     ORDER BY time_stamp DESC", v2, ":player_gcid"];;

  return v3;
}

- (id)deletePhotoDescriptorForExecutedStatement:(sqlite3_stmt *)statement
{
  v3 = [NSDate _gkDateFromScalarServerTimestamp:sqlite3_column_int64(statement, 1)];
  v7[0] = @"delete-approved";
  v7[1] = @"delete-pending";
  v8[0] = &__kCFBooleanTrue;
  v8[1] = &__kCFBooleanTrue;
  v7[2] = @"timestamp";
  _gkServerTimestamp = [v3 _gkServerTimestamp];
  v8[2] = _gkServerTimestamp;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

- (void)readResources:(id)resources handler:(id)handler
{
  resourcesCopy = resources;
  handlerCopy = handler;
  if ([resourcesCopy count] >= 2)
  {
    v16 = [NSString stringWithFormat:@"%@ is being asked to read photos for multiple players. This is not currently supported.", objc_opt_class()];
    v17 = [NSException exceptionWithName:NSInvalidArgumentException reason:v16 userInfo:0];
    v18 = v17;

    objc_exception_throw(v17);
  }

  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKDelayedDeletePhotoCacheReader.mm", 84, "[GKDelayedDeletePhotoCacheReader readResources:handler:]"];
  v9 = [GKDispatchGroup dispatchGroupWithName:v8];

  v10 = +[NSMutableSet set];
  [v9 setResult:v10];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10010E85C;
  v22[3] = &unk_100366EE8;
  v22[4] = self;
  v11 = resourcesCopy;
  v23 = v11;
  v12 = v9;
  v24 = v12;
  [v12 perform:v22];
  v13 = dispatch_get_global_queue(0, 0);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10010EBC8;
  v19[3] = &unk_100366F10;
  v14 = handlerCopy;
  v21 = v14;
  v15 = v12;
  v20 = v15;
  [v15 notifyOnQueue:v13 block:v19];
}

@end