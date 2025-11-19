@interface GKDelayedSetPhotoCacheReader
+ (id)readerWithDatabaseConnection:(id)a3;
- (GKDelayedSetPhotoCacheReader)initWithDatabaseConnection:(id)a3;
- (id)setPhotoDescriptorForExecutedStatement:(sqlite3_stmt *)a3;
- (id)setPhotoDescriptorStatement;
- (void)readResources:(id)a3 handler:(id)a4;
@end

@implementation GKDelayedSetPhotoCacheReader

+ (id)readerWithDatabaseConnection:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDatabaseConnection:v4];

  return v5;
}

- (GKDelayedSetPhotoCacheReader)initWithDatabaseConnection:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = GKDelayedSetPhotoCacheReader;
  v5 = [(GKDelayedSetPhotoCacheReader *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(GKDelayedSetPhotoCacheReader *)v5 setConnection:v4];
  }

  return v6;
}

- (id)setPhotoDescriptorStatement
{
  v2 = sub_10010D430(off_100366F90);
  v3 = [NSString stringWithFormat:@"    SELECT %@     FROM requests     INNER JOIN photos USING (request_id)     WHERE player_gcid = %s     ORDER BY time_stamp DESC", v2, ":player_gcid"];;

  return v3;
}

- (id)setPhotoDescriptorForExecutedStatement:(sqlite3_stmt *)a3
{
  v10 = a3;
  v4 = sub_10010FDA4(&v10);
  v5 = [NSDate _gkDateFromScalarServerTimestamp:sqlite3_column_int64(a3, 1)];
  v6 = [NSNumber numberWithDouble:sqlite3_column_double(a3, 3)];
  v12[0] = @"image/png";
  v11[0] = @"content-type";
  v11[1] = @"timestamp";
  v7 = [v5 _gkServerTimestamp];
  v12[1] = v7;
  v12[2] = v4;
  v11[2] = @"image-data";
  v11[3] = @"avatar-type";
  v12[3] = v6;
  v8 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];

  return v8;
}

- (void)readResources:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count] >= 2)
  {
    v16 = [NSString stringWithFormat:@"%@ is being asked to read photos for multiple players. This is not currently supported.", objc_opt_class()];
    v17 = [NSException exceptionWithName:NSInvalidArgumentException reason:v16 userInfo:0];
    v18 = v17;

    objc_exception_throw(v17);
  }

  v8 = [NSString stringWithFormat:@"%s:%d %s", "GKDelayedSetPhotoCacheReader.mm", 91, "[GKDelayedSetPhotoCacheReader readResources:handler:]"];
  v9 = [GKDispatchGroup dispatchGroupWithName:v8];

  v10 = +[NSMutableSet set];
  [v9 setResult:v10];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1001100E0;
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
  v19[2] = sub_10011044C;
  v19[3] = &unk_100366F10;
  v14 = v7;
  v21 = v14;
  v15 = v12;
  v20 = v15;
  [v15 notifyOnQueue:v13 block:v19];
}

@end