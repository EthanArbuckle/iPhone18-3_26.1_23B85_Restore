@interface APDBAdInstance
- (BOOL)deleteAdInstancesWithAccountTokenDifferentThan:(id)than andDataOlderThan:(id)olderThan;
- (BOOL)deleteAdInstancesWithNoEvents;
- (id)allAdInstanceCount;
- (id)insertOrIgnoreAdInstanceForImpressionId:(id)id accountToken:(id)token;
@end

@implementation APDBAdInstance

- (id)insertOrIgnoreAdInstanceForImpressionId:(id)id accountToken:(id)token
{
  idCopy = id;
  tokenCopy = token;
  manager = [(APDBAdInstance *)self manager];

  if (manager)
  {
    if (idCopy && tokenCopy)
    {
      v9 = [[APDatabaseColumn alloc] initWithName:@"impressionId" forColumnType:3 withValue:idCopy];
      v10 = [[APDatabaseColumn alloc] initWithName:@"accountToken" forColumnType:3 withValue:tokenCopy];
      manager2 = [(APDBAdInstance *)self manager];
      v18[0] = v9;
      v18[1] = v10;
      v12 = [NSArray arrayWithObjects:v18 count:2];
      v13 = [manager2 executeInsertQuery:@"INSERT OR IGNORE INTO APDBAdInstance (impressionId withParameters:{accountToken) VALUES (?, ?)", v12}];

      if (v13 == -1)
      {
        v14 = 0;
      }

      else
      {
        v14 = [[APDBAdInstanceRow alloc] initImpressionId:idCopy accountToken:tokenCopy table:self];
      }

      goto LABEL_14;
    }

    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v20 = objc_opt_class();
      v15 = v20;
      v16 = "[%{private}@]: Error storing Ad Instance, NONNULL params are NULL";
      goto LABEL_10;
    }
  }

  else
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v20 = objc_opt_class();
      v15 = v20;
      v16 = "[%{private}@]: Error APDatabaseManager is nill.";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v16, buf, 0xCu);
    }
  }

  v14 = 0;
LABEL_14:

  return v14;
}

- (BOOL)deleteAdInstancesWithNoEvents
{
  manager = [(APDBAdInstance *)self manager];
  v3 = manager;
  if (manager)
  {
    v4 = [manager executeQuery:@"DELETE FROM APDBAdInstance WHERE impressionId IN (SELECT APDBAdInstance.impressionId FROM APDBAdInstance LEFT JOIN APDBEvent ON APDBAdInstance.impressionId = APDBEvent.impressionId WHERE APDBEvent.impressionId IS NULL)" withParameters:&__NSArray0__struct];
  }

  else
  {
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 138477827;
      v9 = objc_opt_class();
      v6 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%{private}@]: Error APDatabaseManager is nil.", &v8, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

- (BOOL)deleteAdInstancesWithAccountTokenDifferentThan:(id)than andDataOlderThan:(id)olderThan
{
  thanCopy = than;
  olderThanCopy = olderThan;
  manager = [(APDBAdInstance *)self manager];
  if (manager)
  {
    v9 = [[APDatabaseColumn alloc] initWithName:@"accountToken" forColumnType:3 withValue:thanCopy];
    v10 = [[APDatabaseColumn alloc] initWithName:@"timestamp" forColumnType:4 withValue:olderThanCopy];
    v15[0] = v10;
    v15[1] = v9;
    v11 = [NSArray arrayWithObjects:v15 count:2];
    v12 = [manager executeQuery:@"DELETE FROM APDBAdInstance WHERE impressionId NOT IN (SELECT impressionId FROM APDBEvent WHERE timestamp > ? GROUP BY impressionId) AND accountToken != ?" withParameters:v11];
  }

  else
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v17 = objc_opt_class();
      v13 = v17;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%{private}@]: Error APDatabaseManager is nil.", buf, 0xCu);
    }

    v12 = 0;
  }

  return v12;
}

- (id)allAdInstanceCount
{
  manager = [(APDBAdInstance *)self manager];
  v3 = manager;
  if (manager)
  {
    v4 = [manager executeSelectNumberQuery:@"SELECT COUNT (1) FROM APDBAdInstance" withParameters:&__NSArray0__struct];
    v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 integerValue]);
  }

  else
  {
    v6 = APLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 138477827;
      v10 = objc_opt_class();
      v7 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%{private}@]: Error APDatabaseManager is nil.", &v9, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

@end