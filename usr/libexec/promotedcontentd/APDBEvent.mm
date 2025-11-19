@interface APDBEvent
- (BOOL)deleteEventsOlderThan:(id)a3;
- (BOOL)insertMetric:(id)a3;
- (id)allEventsCount;
- (id)experimentationEventsForImpressionId:(id)a3 startDate:(id)a4 endDate:(id)a5;
- (id)placedEventsForImpressionId:(id)a3;
@end

@implementation APDBEvent

- (BOOL)insertMetric:(id)a3
{
  v3 = a3;
  v38 = [v3 secondaryHandle];
  if (!v38)
  {
    v4 = APLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Secondary Handle is nil, falling back to handle for impressionId.", buf, 2u);
    }

    v38 = [v3 handle];
  }

  v37 = [v3 timestamp];
  if (+[APSystemInternal isAppleInternalInstall])
  {
    v5 = [NSUserDefaults alloc];
    v6 = [v5 initWithSuiteName:APDefaultsBundleID];
    if ([v6 BOOLForKey:@"enableActionStoreTimestamp"])
    {
      v7 = [v6 objectForKey:@"actionStoreTimestampOverride"];
      if (v7)
      {
        v8 = APLogForCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = +[NSISO8601DateFormatter apUTCSharedFormatter];
          v10 = [v9 stringFromDate:v7];
          *buf = 138543362;
          v42 = v10;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Overriding metric timestamp %{public}@.", buf, 0xCu);
        }

        v11 = v7;
        v37 = v11;
      }
    }
  }

  v12 = [v3 properties];
  v13 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v12 count]);

  v14 = [v3 internalProperties];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1001DCA50;
  v39[3] = &unk_100480B98;
  v15 = v13;
  v40 = v15;
  [v14 enumerateKeysAndObjectsUsingBlock:v39];

  v16 = [v15 count];
  v17 = [v3 properties];
  v18 = v17;
  v35 = v15;
  if (v16)
  {
    v19 = [v17 mutableCopy];

    [v19 addEntriesFromDictionary:v15];
    v18 = [v19 copy];
  }

  v33 = [APDBEventRow alloc];
  v20 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 purpose]);
  v21 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 metric]);
  v32 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v3 source]);
  v22 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 order]);
  v23 = [v3 trace];
  v24 = [v3 branch];
  v25 = [v3 environment];
  v34 = v18;
  v26 = [v18 jsonStringWithOptions:0x400000];
  v27 = [v3 internalProperties];
  v28 = [(APDBEventRow *)v33 initImpressionId:v38 timestamp:v37 purpose:v20 event:v21 source:v32 unknownSource:0 handleSet:0 eventOrder:v22 trace:v23 branch:v24 environment:v25 propertiesJSON:v26 internalProperties:v27 table:self];

  v29 = [v28 save];
  if ((v29 & 1) == 0)
  {
    v30 = APLogForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "ActionsStore insert metric failed. Can't save metric.", buf, 2u);
    }
  }

  return v29;
}

- (id)allEventsCount
{
  v2 = [(APDBEvent *)self manager];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 executeSelectNumberQuery:@"SELECT COUNT (1) FROM APDBEvent" withParameters:&__NSArray0__struct];
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

- (id)placedEventsForImpressionId:(id)a3
{
  v4 = a3;
  v5 = [(APDBEvent *)self manager];
  if (v5)
  {
    v6 = [[APDatabaseColumn alloc] initWithName:@"impressionId" forColumnType:3 withValue:v4];
    v7 = [NSString stringWithFormat:@"%@ WHERE impressionId = ? AND purpose = %lu AND event = %lu", @"SELECT impressionId, timestamp, purpose, event, source, unknownSource, handleSet, eventOrder, trace, branchString, environmentString, propertiesJSON, internalPropertiesData FROM APDBEvent", 100, 1403];
    v12 = v6;
    v8 = [NSArray arrayWithObjects:&v12 count:1];
    v9 = [v5 executeSelectQuery:v7 forTable:self withParameters:v8];
  }

  else
  {
    v6 = APLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v14 = objc_opt_class();
      v10 = v14;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%{private}@]: Error APDatabaseManager is nil.", buf, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

- (id)experimentationEventsForImpressionId:(id)a3 startDate:(id)a4 endDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(APDBEvent *)self manager];
  if (v11)
  {
    v12 = [[APDatabaseColumn alloc] initWithName:@"impressionId" forColumnType:3 withValue:v8];
    v13 = [[APDatabaseColumn alloc] initWithName:@"timestamp" forColumnType:4 withValue:v9];
    v14 = [[APDatabaseColumn alloc] initWithName:@"timestamp" forColumnType:4 withValue:v10];
    v15 = [NSString stringWithFormat:@"%@ WHERE impressionId = ? AND purpose IN (%lu, %lu) AND event IN (%lu, %lu, %lu, %lu, %lu) AND timestamp >= ? AND timestamp < ? ORDER BY timestamp ASC", @"SELECT impressionId, timestamp, purpose, event, source, unknownSource, handleSet, eventOrder, trace, branchString, environmentString, propertiesJSON, internalPropertiesData FROM APDBEvent", 100, 8502, 1403, 1405, 1406, 1408, 8000];
    v20[0] = v12;
    v20[1] = v13;
    v20[2] = v14;
    v16 = [NSArray arrayWithObjects:v20 count:3];
    v17 = [v11 executeSelectQuery:v15 forTable:self withParameters:v16];
  }

  else
  {
    v12 = APLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v22 = objc_opt_class();
      v18 = v22;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[%{private}@]: Error APDatabaseManager is nil.", buf, 0xCu);
    }

    v17 = 0;
  }

  return v17;
}

- (BOOL)deleteEventsOlderThan:(id)a3
{
  v4 = a3;
  v5 = [(APDBEvent *)self manager];
  if (v5)
  {
    v6 = [[APDatabaseColumn alloc] initWithName:@"timestamp" forColumnType:4 withValue:v4];
    v11 = v6;
    v7 = [NSArray arrayWithObjects:&v11 count:1];
    v8 = [v5 executeQuery:@"DELETE FROM APDBEvent WHERE timestamp < ?" withParameters:v7];
  }

  else
  {
    v6 = APLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      v13 = objc_opt_class();
      v9 = v13;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%{private}@]: Error APDatabaseManager is nil.", buf, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

@end