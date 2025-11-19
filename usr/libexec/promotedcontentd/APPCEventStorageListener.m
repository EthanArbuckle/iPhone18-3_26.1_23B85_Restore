@interface APPCEventStorageListener
+ (id)sharedInstance;
- (BOOL)_metricCanBeStored:(id)a3;
- (void)_storeMetric:(id)a3;
- (void)start;
@end

@implementation APPCEventStorageListener

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10037BBB8;
  block[3] = &unk_10047E780;
  block[4] = a1;
  if (qword_1004EA1E0 != -1)
  {
    dispatch_once(&qword_1004EA1E0, block);
  }

  v2 = qword_1004EA1D8;

  return v2;
}

- (void)start
{
  v27 = [APConfigurationMediator configurationForClass:objc_opt_class()];
  v2 = [v27 supportedPurposes];
  v3 = v2;
  v4 = &off_1004948A8;
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  v6 = [v27 supportedBundleIds];
  v7 = v6;
  v8 = &off_1004948C0;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = [[NSSet alloc] initWithArray:v9];
  allowList = self->_allowList;
  self->_allowList = v10;

  v12 = [APEventStorageProcessor alloc];
  v13 = +[APDatabaseManager mainDatabase];
  v14 = [(APEventStorageProcessor *)v12 initWithDatabase:v13];
  eventProcessor = self->_eventProcessor;
  self->_eventProcessor = v14;

  objc_initWeak(&location, self);
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100007B78;
  v34[3] = &unk_100480618;
  objc_copyWeak(&v35, &location);
  v16 = objc_retainBlock(v34);
  v17 = [&__NSArray0__struct mutableCopy];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v5;
  v18 = [obj countByEnumeratingWithState:&v30 objects:v37 count:16];
  if (v18)
  {
    v19 = *v31;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v30 + 1) + 8 * i);
        v22 = +[MetricsModule storage];
        v23 = [v22 notificationRegistrar];
        v24 = [v23 registerHandlerForPurpose:objc_msgSend(v21 closure:{"integerValue"), v16}];

        v25 = [NSNumber numberWithInteger:v24];
        [v17 addObject:v25];
      }

      v18 = [obj countByEnumeratingWithState:&v30 objects:v37 count:16];
    }

    while (v18);
  }

  v26 = [v17 copy];
  [(APPCBaseEventListener *)self setTokens:v26];

  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);
}

- (BOOL)_metricCanBeStored:(id)a3
{
  v4 = a3;
  v5 = [v4 bundleIdentifier];
  if ([v5 length])
  {
    v6 = [(APPCEventStorageListener *)self allowList];
    v7 = [v6 containsObject:v5];
  }

  else
  {
    v8 = APLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = [v4 metric];
      v12 = [v4 contentIdentifier];
      v14 = 138478339;
      v15 = v9;
      v16 = 2048;
      v17 = v11;
      v18 = 2114;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%{private}@] BundleID is nil for metric %ld for contentIdentifier %{public}@", &v14, 0x20u);
    }

    v7 = 1;
  }

  return v7;
}

- (void)_storeMetric:(id)a3
{
  v7 = a3;
  if ([(APPCEventStorageListener *)self _metricCanBeStored:?])
  {
    v4 = [(APPCEventStorageListener *)self eventProcessor];
    v5 = +[APIDAccountProvider privateUserAccount];
    v6 = [v5 accountToken];
    [v4 processMetric:v7 accountToken:v6];
  }
}

@end