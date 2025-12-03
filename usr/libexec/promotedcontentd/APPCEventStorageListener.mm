@interface APPCEventStorageListener
+ (id)sharedInstance;
- (BOOL)_metricCanBeStored:(id)stored;
- (void)_storeMetric:(id)metric;
- (void)start;
@end

@implementation APPCEventStorageListener

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10037BBB8;
  block[3] = &unk_10047E780;
  block[4] = self;
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
  supportedPurposes = [v27 supportedPurposes];
  v3 = supportedPurposes;
  v4 = &off_1004948A8;
  if (supportedPurposes)
  {
    v4 = supportedPurposes;
  }

  v5 = v4;

  supportedBundleIds = [v27 supportedBundleIds];
  v7 = supportedBundleIds;
  v8 = &off_1004948C0;
  if (supportedBundleIds)
  {
    v8 = supportedBundleIds;
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
        notificationRegistrar = [v22 notificationRegistrar];
        v24 = [notificationRegistrar registerHandlerForPurpose:objc_msgSend(v21 closure:{"integerValue"), v16}];

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

- (BOOL)_metricCanBeStored:(id)stored
{
  storedCopy = stored;
  bundleIdentifier = [storedCopy bundleIdentifier];
  if ([bundleIdentifier length])
  {
    allowList = [(APPCEventStorageListener *)self allowList];
    v7 = [allowList containsObject:bundleIdentifier];
  }

  else
  {
    v8 = APLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_opt_class();
      v10 = v9;
      metric = [storedCopy metric];
      contentIdentifier = [storedCopy contentIdentifier];
      v14 = 138478339;
      v15 = v9;
      v16 = 2048;
      v17 = metric;
      v18 = 2114;
      v19 = contentIdentifier;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%{private}@] BundleID is nil for metric %ld for contentIdentifier %{public}@", &v14, 0x20u);
    }

    v7 = 1;
  }

  return v7;
}

- (void)_storeMetric:(id)metric
{
  metricCopy = metric;
  if ([(APPCEventStorageListener *)self _metricCanBeStored:?])
  {
    eventProcessor = [(APPCEventStorageListener *)self eventProcessor];
    v5 = +[APIDAccountProvider privateUserAccount];
    accountToken = [v5 accountToken];
    [eventProcessor processMetric:metricCopy accountToken:accountToken];
  }
}

@end