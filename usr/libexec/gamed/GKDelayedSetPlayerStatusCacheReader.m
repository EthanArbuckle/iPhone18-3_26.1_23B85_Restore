@interface GKDelayedSetPlayerStatusCacheReader
+ (id)readerWithDatabaseConnection:(id)a3;
- (GKDelayedSetPlayerStatusCacheReader)initWithDatabaseConnection:(id)a3;
- (id)setStatusDescriptorForExecutedStatement:(sqlite3_stmt *)a3;
- (id)setStatusDescriptorStatement;
- (void)readResources:(id)a3 handler:(id)a4;
@end

@implementation GKDelayedSetPlayerStatusCacheReader

+ (id)readerWithDatabaseConnection:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDatabaseConnection:v4];

  return v5;
}

- (GKDelayedSetPlayerStatusCacheReader)initWithDatabaseConnection:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = GKDelayedSetPlayerStatusCacheReader;
  v5 = [(GKDelayedSetPlayerStatusCacheReader *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(GKDelayedSetPlayerStatusCacheReader *)v5 setConnection:v4];
  }

  return v6;
}

- (id)setStatusDescriptorStatement
{
  v2 = sub_10010E384(off_100367068);
  v3 = [NSString stringWithFormat:@"    SELECT %@     FROM requests         INNER JOIN statuses USING (request_id)     WHERE player_gcid = %s     ORDER BY time_stamp DESC", v2, ":player_gcid"];;

  return v3;
}

- (id)setStatusDescriptorForExecutedStatement:(sqlite3_stmt *)a3
{
  v6 = a3;
  v3 = sub_100113250(&v6);
  v7 = @"player-status";
  v8 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  return v4;
}

- (void)readResources:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count] >= 2)
  {
    v16 = [NSString stringWithFormat:@"%@ is being asked to read statuses for multiple players. This is not currently supported.", objc_opt_class()];
    v17 = [NSException exceptionWithName:NSInvalidArgumentException reason:v16 userInfo:0];
    v18 = v17;

    objc_exception_throw(v17);
  }

  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKDelayedSetPlayerStatusCacheReader.mm", 82, "[GKDelayedSetPlayerStatusCacheReader readResources:handler:]"];
  v9 = [GKDispatchGroup dispatchGroupWithName:v8];

  v10 = +[NSMutableSet set];
  [v9 setResult:v10];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10011356C;
  v22[3] = &unk_100366EE8;
  v22[4] = self;
  v11 = v6;
  v23 = v11;
  v12 = v9;
  v24 = v12;
  [v12 perform:v22];
  v13 = dispatch_get_global_queue(0, 0);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001138D8;
  v19[3] = &unk_100366F10;
  v14 = v7;
  v21 = v14;
  v15 = v12;
  v20 = v15;
  [v15 notifyOnQueue:v13 block:v19];
}

@end