@interface GKRemoveGamesCacheReader
+ (id)readerWithDatabaseConnection:(id)a3 bundleID:(id)a4;
- (GKRemoveGamesCacheReader)initWithDatabaseConnection:(id)a3 bundleID:(id)a4;
- (id)getAllRemoveGamesRequestIDsStatement;
- (id)getRemoveGamesDescriptorsStatement;
- (id)removeGamesForExecutedStatement:(sqlite3_stmt *)a3;
- (void)bindParametersForStatement:(sqlite3_stmt *)a3 playerID:(id)a4 bundleID:(id)a5;
- (void)readResources:(id)a3 handler:(id)a4;
@end

@implementation GKRemoveGamesCacheReader

+ (id)readerWithDatabaseConnection:(id)a3 bundleID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[GKRemoveGamesCacheReader alloc] initWithDatabaseConnection:v5 bundleID:v6];

  return v7;
}

- (GKRemoveGamesCacheReader)initWithDatabaseConnection:(id)a3 bundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = GKRemoveGamesCacheReader;
  v8 = [(GKRemoveGamesCacheReader *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(GKRemoveGamesCacheReader *)v8 setConnection:v6];
    [(GKRemoveGamesCacheReader *)v9 setBundleID:v7];
  }

  return v9;
}

- (id)getRemoveGamesDescriptorsStatement
{
  v2 = sub_10010D430(off_100366E90);
  v3 = [NSString stringWithFormat:@"SELECT %@     FROM requests     INNER JOIN remove_games USING (request_id)     WHERE player_gcid = %s", v2, ":player_gcid"];;

  return v3;
}

- (id)getAllRemoveGamesRequestIDsStatement
{
  v2 = sub_10010D5A4(&off_100366EB0);
  v3 = [NSString stringWithFormat:@"SELECT %@     FROM requests INNER JOIN remove_games USING (request_id)     WHERE player_gcid = %s", v2, ":player_gcid"];;

  return v3;
}

- (void)bindParametersForStatement:(sqlite3_stmt *)a3 playerID:(id)a4 bundleID:(id)a5
{
  v8 = a4;
  v7 = a5;
  GKBindParam(a3, ":player_gcid", v8);
  GKBindParam(a3, ":bundle_id", v7);
}

- (id)removeGamesForExecutedStatement:(sqlite3_stmt *)a3
{
  v10 = a3;
  v4 = sub_10010D7E8(&v10);
  v5 = sqlite3_column_int64(a3, 1);
  v6 = [NSDictionary dictionaryWithObjectsAndKeys:v4, @"bundle-id", 0];
  v7 = [NSNumber numberWithLongLong:v5];
  v8 = [NSDictionary dictionaryWithObjectsAndKeys:v6, @"game", v7, @"timestamp", 0];

  return v8;
}

- (void)readResources:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKRemoveGamesCacheReader.mm", 101, "[GKRemoveGamesCacheReader readResources:handler:]"];
  v9 = [GKDispatchGroup dispatchGroupWithName:v8];

  v10 = +[NSMutableSet set];
  [v9 setResult:v10];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10010DA80;
  v19[3] = &unk_100366EE8;
  v19[4] = self;
  v11 = v6;
  v20 = v11;
  v12 = v9;
  v21 = v12;
  [v12 perform:v19];
  v13 = dispatch_get_global_queue(0, 0);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10010E0FC;
  v16[3] = &unk_100366F10;
  v14 = v7;
  v18 = v14;
  v15 = v12;
  v17 = v15;
  [v15 notifyOnQueue:v13 block:v16];
}

@end