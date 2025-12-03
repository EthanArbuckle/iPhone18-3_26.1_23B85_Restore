@interface APAggregatedTimeSpentLegacyInterface
- (APAggregatedTimeSpentLegacyInterface)initWithDbManager:(id)manager retryManager:(id)retryManager;
- (void)cancel:(id)cancel;
- (void)sendAggregatedTimeSpentMetricFor:(id)for aggregatedTimeSpentEntries:(id)entries completionHandler:(id)handler;
@end

@implementation APAggregatedTimeSpentLegacyInterface

- (APAggregatedTimeSpentLegacyInterface)initWithDbManager:(id)manager retryManager:(id)retryManager
{
  managerCopy = manager;
  retryManagerCopy = retryManager;
  v12.receiver = self;
  v12.super_class = APAggregatedTimeSpentLegacyInterface;
  v9 = [(APAggregatedTimeSpentLegacyInterface *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_metricRetryManager, retryManager);
    objc_storeStrong(&v10->_dbManager, manager);
  }

  return v10;
}

- (void)cancel:(id)cancel
{
  cancelCopy = cancel;
  activeDataTask = [(APAggregatedTimeSpentLegacyInterface *)self activeDataTask];

  if (activeDataTask)
  {
    activeDataTask2 = [(APAggregatedTimeSpentLegacyInterface *)self activeDataTask];
    [activeDataTask2 cancel];

    [(APAggregatedTimeSpentLegacyInterface *)self setActiveDataTask:0];
  }

  cancelCopy[2]();
}

- (void)sendAggregatedTimeSpentMetricFor:(id)for aggregatedTimeSpentEntries:(id)entries completionHandler:(id)handler
{
  forCopy = for;
  entriesCopy = entries;
  handlerCopy = handler;
  v11 = [APAggregatedTimeSpentEventRequester alloc];
  dbManager = [(APAggregatedTimeSpentLegacyInterface *)self dbManager];
  v13 = [(APAggregatedTimeSpentEventRequester *)v11 initWithBundleID:forCopy aggregatedTimeSpentEntries:entriesCopy databaseManager:dbManager];

  metricRetryManager = [(APAggregatedTimeSpentLegacyInterface *)self metricRetryManager];
  [(APLegacyMetricRequester *)v13 setRetryManager:metricRetryManager];

  v15 = [_TtC15LegacyInterface32AggregatedTimeSpentStoreDatabase alloc];
  dbManager2 = [(APAggregatedTimeSpentLegacyInterface *)self dbManager];
  v17 = [(AggregatedTimeSpentStoreDatabase *)v15 initWithDatabase:dbManager2];

  if (![(AggregatedTimeSpentStoreDatabase *)v17 removeEntries:entriesCopy])
  {
    v18 = APLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [entriesCopy debugDescription];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to remove entries %{public}@", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x2020000000;
  v30 = 0;
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_1002BDAB8;
  v25 = &unk_10047D2E8;
  p_buf = &buf;
  v20 = handlerCopy;
  v26 = v20;
  v21 = [(APServerRequester *)v13 makeNetworkRequest:&v22];
  [(APAggregatedTimeSpentLegacyInterface *)self setActiveDataTask:v21, v22, v23, v24, v25];

  _Block_object_dispose(&buf, 8);
}

@end