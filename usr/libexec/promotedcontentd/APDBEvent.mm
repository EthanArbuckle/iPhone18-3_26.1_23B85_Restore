@interface APDBEvent
- (BOOL)deleteEventsOlderThan:(id)than;
- (BOOL)insertMetric:(id)metric;
- (id)allEventsCount;
- (id)experimentationEventsForImpressionId:(id)id startDate:(id)date endDate:(id)endDate;
- (id)placedEventsForImpressionId:(id)id;
@end

@implementation APDBEvent

- (BOOL)insertMetric:(id)metric
{
  metricCopy = metric;
  secondaryHandle = [metricCopy secondaryHandle];
  if (!secondaryHandle)
  {
    v4 = APLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Secondary Handle is nil, falling back to handle for impressionId.", buf, 2u);
    }

    secondaryHandle = [metricCopy handle];
  }

  timestamp = [metricCopy timestamp];
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
        timestamp = v11;
      }
    }
  }

  properties = [metricCopy properties];
  v13 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [properties count]);

  internalProperties = [metricCopy internalProperties];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1001DCA50;
  v39[3] = &unk_100480B98;
  v15 = v13;
  v40 = v15;
  [internalProperties enumerateKeysAndObjectsUsingBlock:v39];

  v16 = [v15 count];
  properties2 = [metricCopy properties];
  v18 = properties2;
  v35 = v15;
  if (v16)
  {
    v19 = [properties2 mutableCopy];

    [v19 addEntriesFromDictionary:v15];
    v18 = [v19 copy];
  }

  v33 = [APDBEventRow alloc];
  v20 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [metricCopy purpose]);
  v21 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [metricCopy metric]);
  v32 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [metricCopy source]);
  v22 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [metricCopy order]);
  trace = [metricCopy trace];
  branch = [metricCopy branch];
  environment = [metricCopy environment];
  v34 = v18;
  v26 = [v18 jsonStringWithOptions:0x400000];
  internalProperties2 = [metricCopy internalProperties];
  v28 = [(APDBEventRow *)v33 initImpressionId:secondaryHandle timestamp:timestamp purpose:v20 event:v21 source:v32 unknownSource:0 handleSet:0 eventOrder:v22 trace:trace branch:branch environment:environment propertiesJSON:v26 internalProperties:internalProperties2 table:self];

  save = [v28 save];
  if ((save & 1) == 0)
  {
    v30 = APLogForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "ActionsStore insert metric failed. Can't save metric.", buf, 2u);
    }
  }

  return save;
}

- (id)allEventsCount
{
  manager = [(APDBEvent *)self manager];
  v3 = manager;
  if (manager)
  {
    v4 = [manager executeSelectNumberQuery:@"SELECT COUNT (1) FROM APDBEvent" withParameters:&__NSArray0__struct];
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

- (id)placedEventsForImpressionId:(id)id
{
  idCopy = id;
  manager = [(APDBEvent *)self manager];
  if (manager)
  {
    v6 = [[APDatabaseColumn alloc] initWithName:@"impressionId" forColumnType:3 withValue:idCopy];
    1403 = [NSString stringWithFormat:@"%@ WHERE impressionId = ? AND purpose = %lu AND event = %lu", @"SELECT impressionId, timestamp, purpose, event, source, unknownSource, handleSet, eventOrder, trace, branchString, environmentString, propertiesJSON, internalPropertiesData FROM APDBEvent", 100, 1403];
    v12 = v6;
    v8 = [NSArray arrayWithObjects:&v12 count:1];
    v9 = [manager executeSelectQuery:1403 forTable:self withParameters:v8];
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

- (id)experimentationEventsForImpressionId:(id)id startDate:(id)date endDate:(id)endDate
{
  idCopy = id;
  dateCopy = date;
  endDateCopy = endDate;
  manager = [(APDBEvent *)self manager];
  if (manager)
  {
    v12 = [[APDatabaseColumn alloc] initWithName:@"impressionId" forColumnType:3 withValue:idCopy];
    v13 = [[APDatabaseColumn alloc] initWithName:@"timestamp" forColumnType:4 withValue:dateCopy];
    v14 = [[APDatabaseColumn alloc] initWithName:@"timestamp" forColumnType:4 withValue:endDateCopy];
    8000 = [NSString stringWithFormat:@"%@ WHERE impressionId = ? AND purpose IN (%lu, %lu) AND event IN (%lu, %lu, %lu, %lu, %lu) AND timestamp >= ? AND timestamp < ? ORDER BY timestamp ASC", @"SELECT impressionId, timestamp, purpose, event, source, unknownSource, handleSet, eventOrder, trace, branchString, environmentString, propertiesJSON, internalPropertiesData FROM APDBEvent", 100, 8502, 1403, 1405, 1406, 1408, 8000];
    v20[0] = v12;
    v20[1] = v13;
    v20[2] = v14;
    v16 = [NSArray arrayWithObjects:v20 count:3];
    v17 = [manager executeSelectQuery:8000 forTable:self withParameters:v16];
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

- (BOOL)deleteEventsOlderThan:(id)than
{
  thanCopy = than;
  manager = [(APDBEvent *)self manager];
  if (manager)
  {
    v6 = [[APDatabaseColumn alloc] initWithName:@"timestamp" forColumnType:4 withValue:thanCopy];
    v11 = v6;
    v7 = [NSArray arrayWithObjects:&v11 count:1];
    v8 = [manager executeQuery:@"DELETE FROM APDBEvent WHERE timestamp < ?" withParameters:v7];
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