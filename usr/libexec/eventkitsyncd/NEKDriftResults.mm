@interface NEKDriftResults
+ (id)driftResultsForCache:(id)cache withDiagnosticTimestamp:(double)timestamp andDatabase:(id)database;
- (NEKDriftResults)initWithFirstFoundKey:(id)key;
- (id)_createPhoneSackForWatchCache:(id)cache andDatabase:(id)database;
- (id)syncReport;
@end

@implementation NEKDriftResults

- (NEKDriftResults)initWithFirstFoundKey:(id)key
{
  v9.receiver = self;
  v9.super_class = NEKDriftResults;
  v3 = [(NEKDiagnosticResult *)&v9 initWithFirstFoundKey:key];
  if (v3)
  {
    v4 = objc_opt_new();
    watchOnlyOccurrences = v3->_watchOnlyOccurrences;
    v3->_watchOnlyOccurrences = v4;

    v6 = objc_opt_new();
    phoneOnlyOccurrences = v3->_phoneOnlyOccurrences;
    v3->_phoneOnlyOccurrences = v6;
  }

  return v3;
}

+ (id)driftResultsForCache:(id)cache withDiagnosticTimestamp:(double)timestamp andDatabase:(id)database
{
  cacheCopy = cache;
  databaseCopy = database;
  v37 = [[NEKDriftResults alloc] initWithFirstFoundKey:@"driftFirstFound"];
  v35 = databaseCopy;
  v9 = [(NEKDriftResults *)v37 _createPhoneSackForWatchCache:cacheCopy andDatabase:databaseCopy];
  v38 = objc_opt_new();
  v34 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v36 = cacheCopy;
  items = [cacheCopy items];
  v11 = [items countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v43;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v43 != v13)
        {
          objc_enumerationMutation(items);
        }

        v15 = *(*(&v42 + 1) + 8 * i);
        if (![v9 removeObject:v15])
        {
          [v15 date];
          v16 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
          dateFormatter = [(NEKDiagnosticResult *)v37 dateFormatter];
          v18 = [dateFormatter stringFromDate:v16];

          uuid = [v15 uuid];
          v20 = [NSString stringWithFormat:@"%@ | %@", v18, uuid];
          [v38 addObject:v20];

          v21 = *(qword_1000D18A8 + 8);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = v21;
            uuid2 = [v15 uuid];
            [v15 date];
            *buf = 138543618;
            v47 = uuid2;
            v48 = 2048;
            v49 = v24;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Analytics detected excess calendar item on watch, identifier: %{public}@, timestamp: %9.0f", buf, 0x16u);
          }
        }
      }

      v12 = [items countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v12);
  }

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10003BB44;
  v39[3] = &unk_1000B5848;
  v25 = v37;
  v40 = v25;
  v26 = v34;
  v41 = v26;
  [v9 forEachUnique:v39];
  v27 = [(NEKDriftResults *)v25 _sortByDateAndUuidForArray:v38];
  [(NEKDriftResults *)v25 setWatchOnlyOccurrences:v27];

  v28 = [(NEKDriftResults *)v25 _sortByDateAndUuidForArray:v26];
  [(NEKDriftResults *)v25 setPhoneOnlyOccurrences:v28];

  v29 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    sub_1000722C8(v29, v25);
  }

  v30 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    sub_100072360(v30, v25);
  }

  [(NEKDiagnosticResult *)v25 setLastDiagnosticTimestamp:timestamp];
  [(NEKDiagnosticResult *)v25 updateFirstFoundToNotSetOrNewTimestamp:[(NEKDriftResults *)v25 hasDrift] ifConditionMet:timestamp];
  [(NEKDiagnosticResult *)v25 setFirstFoundTimestamp:?];
  v31 = v41;
  v32 = v25;

  return v25;
}

- (id)_createPhoneSackForWatchCache:(id)cache andDatabase:(id)database
{
  cacheCopy = cache;
  databaseCopy = database;
  [cacheCopy start];
  v7 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  [cacheCopy end];
  v8 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  v18 = databaseCopy;
  v9 = [[NEKOccurrenceCacheDumper alloc] initWithDatabaseFile:databaseCopy];
  v10 = [(NEKOccurrenceCacheDumper *)v9 runFrom:v7 to:v8];
  v11 = objc_alloc_init(NEKSack);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  items = [v10 items];
  v13 = [items countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(items);
        }

        [(NEKSack *)v11 addObject:*(*(&v19 + 1) + 8 * i)];
      }

      v14 = [items countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  return v11;
}

- (id)syncReport
{
  formattedLastDiagnosticDate = [(NEKDiagnosticResult *)self formattedLastDiagnosticDate];
  formattedFirstFoundDate = [(NEKDiagnosticResult *)self formattedFirstFoundDate];
  if ([(NEKDriftResults *)self hasDrift])
  {
    v14[0] = @"First Found";
    v14[1] = @"Last Checked";
    v14[2] = @"Results";
    watchOnlyOccurrences = self->_watchOnlyOccurrences;
    v12[0] = @"Watch Only";
    v12[1] = @"Phone Only";
    phoneOnlyOccurrences = self->_phoneOnlyOccurrences;
    v15[0] = formattedFirstFoundDate;
    v15[1] = formattedLastDiagnosticDate;
    v13[0] = watchOnlyOccurrences;
    v13[1] = phoneOnlyOccurrences;
    v7 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
    v15[2] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];
  }

  else
  {
    v10[0] = @"First Found";
    v10[1] = @"Last Checked";
    v11[0] = @"N/A";
    v11[1] = formattedLastDiagnosticDate;
    v10[2] = @"Results";
    v11[2] = @"N/A";
    v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];
  }

  return v8;
}

@end