@interface APAggregatedTimeSpentLegacyInterface
- (APAggregatedTimeSpentLegacyInterface)initWithDbManager:(id)a3 retryManager:(id)a4;
- (void)cancel:(id)a3;
- (void)sendAggregatedTimeSpentMetricFor:(id)a3 aggregatedTimeSpentEntries:(id)a4 completionHandler:(id)a5;
@end

@implementation APAggregatedTimeSpentLegacyInterface

- (APAggregatedTimeSpentLegacyInterface)initWithDbManager:(id)a3 retryManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = APAggregatedTimeSpentLegacyInterface;
  v9 = [(APAggregatedTimeSpentLegacyInterface *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_metricRetryManager, a4);
    objc_storeStrong(&v10->_dbManager, a3);
  }

  return v10;
}

- (void)cancel:(id)a3
{
  v6 = a3;
  v4 = [(APAggregatedTimeSpentLegacyInterface *)self activeDataTask];

  if (v4)
  {
    v5 = [(APAggregatedTimeSpentLegacyInterface *)self activeDataTask];
    [v5 cancel];

    [(APAggregatedTimeSpentLegacyInterface *)self setActiveDataTask:0];
  }

  v6[2]();
}

- (void)sendAggregatedTimeSpentMetricFor:(id)a3 aggregatedTimeSpentEntries:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [APAggregatedTimeSpentEventRequester alloc];
  v12 = [(APAggregatedTimeSpentLegacyInterface *)self dbManager];
  v13 = [(APAggregatedTimeSpentEventRequester *)v11 initWithBundleID:v8 aggregatedTimeSpentEntries:v9 databaseManager:v12];

  v14 = [(APAggregatedTimeSpentLegacyInterface *)self metricRetryManager];
  [(APLegacyMetricRequester *)v13 setRetryManager:v14];

  v15 = [_TtC15LegacyInterface32AggregatedTimeSpentStoreDatabase alloc];
  v16 = [(APAggregatedTimeSpentLegacyInterface *)self dbManager];
  v17 = [(AggregatedTimeSpentStoreDatabase *)v15 initWithDatabase:v16];

  if (![(AggregatedTimeSpentStoreDatabase *)v17 removeEntries:v9])
  {
    v18 = APLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [v9 debugDescription];
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
  v20 = v10;
  v26 = v20;
  v21 = [(APServerRequester *)v13 makeNetworkRequest:&v22];
  [(APAggregatedTimeSpentLegacyInterface *)self setActiveDataTask:v21, v22, v23, v24, v25];

  _Block_object_dispose(&buf, 8);
}

@end