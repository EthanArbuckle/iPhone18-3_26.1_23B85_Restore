@interface APDBAdInstance
- (BOOL)deleteAdInstancesWithAccountTokenDifferentThan:(id)a3 andDataOlderThan:(id)a4;
- (BOOL)deleteAdInstancesWithNoEvents;
- (id)allAdInstanceCount;
- (id)insertOrIgnoreAdInstanceForImpressionId:(id)a3 accountToken:(id)a4;
@end

@implementation APDBAdInstance

- (id)insertOrIgnoreAdInstanceForImpressionId:(id)a3 accountToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(APDBAdInstance *)self manager];

  if (v8)
  {
    if (v6 && v7)
    {
      v9 = [[APDatabaseColumn alloc] initWithName:@"impressionId" forColumnType:3 withValue:v6];
      v10 = [[APDatabaseColumn alloc] initWithName:@"accountToken" forColumnType:3 withValue:v7];
      v11 = [(APDBAdInstance *)self manager];
      v18[0] = v9;
      v18[1] = v10;
      v12 = [NSArray arrayWithObjects:v18 count:2];
      v13 = [v11 executeInsertQuery:@"INSERT OR IGNORE INTO APDBAdInstance (impressionId withParameters:{accountToken) VALUES (?, ?)", v12}];

      if (v13 == -1)
      {
        v14 = 0;
      }

      else
      {
        v14 = [[APDBAdInstanceRow alloc] initImpressionId:v6 accountToken:v7 table:self];
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
  v2 = [(APDBAdInstance *)self manager];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 executeQuery:@"DELETE FROM APDBAdInstance WHERE impressionId IN (SELECT APDBAdInstance.impressionId FROM APDBAdInstance LEFT JOIN APDBEvent ON APDBAdInstance.impressionId = APDBEvent.impressionId WHERE APDBEvent.impressionId IS NULL)" withParameters:&__NSArray0__struct];
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

- (BOOL)deleteAdInstancesWithAccountTokenDifferentThan:(id)a3 andDataOlderThan:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(APDBAdInstance *)self manager];
  if (v8)
  {
    v9 = [[APDatabaseColumn alloc] initWithName:@"accountToken" forColumnType:3 withValue:v6];
    v10 = [[APDatabaseColumn alloc] initWithName:@"timestamp" forColumnType:4 withValue:v7];
    v15[0] = v10;
    v15[1] = v9;
    v11 = [NSArray arrayWithObjects:v15 count:2];
    v12 = [v8 executeQuery:@"DELETE FROM APDBAdInstance WHERE impressionId NOT IN (SELECT impressionId FROM APDBEvent WHERE timestamp > ? GROUP BY impressionId) AND accountToken != ?" withParameters:v11];
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
  v2 = [(APDBAdInstance *)self manager];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 executeSelectNumberQuery:@"SELECT COUNT (1) FROM APDBAdInstance" withParameters:&__NSArray0__struct];
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