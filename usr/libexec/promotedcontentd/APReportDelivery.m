@interface APReportDelivery
- (APReportDelivery)initWithDatasource:(id)a3;
- (void)_sendReportWithProperties:(id)a3 environment:(id)a4;
- (void)prepareDelivery;
@end

@implementation APReportDelivery

- (APReportDelivery)initWithDatasource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = APReportDelivery;
  v6 = [(APReportDelivery *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_datasource, a3);
  }

  return v7;
}

- (void)prepareDelivery
{
  v3 = [(APReportDelivery *)self datasource];
  v4 = [v3 properties];
  if ([v4 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [v4 allKeys];
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          v11 = [v4 valueForKey:v10];
          [(APReportDelivery *)self _sendReportWithProperties:v11 environment:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = v12;
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = [v3 reportDate];
      v17 = [v16 reportDayString];
      *buf = 138478595;
      v24 = v12;
      v25 = 2160;
      v26 = 1752392040;
      v27 = 2112;
      v28 = v15;
      v29 = 2114;
      v30 = v17;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{private}@]: Skipping Report %{mask.hash}@ for day %{public}@, no data avaliable.", buf, 0x2Au);
    }
  }
}

- (void)_sendReportWithProperties:(id)a3 environment:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(APReportDelivery *)self datasource];
  v9 = +[NSUUID UUID];
  v10 = [v9 appendBytes:8];
  v11 = [v10 base64FilenameSafeEncoded];

  v12 = [v8 environmentToBranchDic];
  v13 = [v12 objectForKey:v7];

  v14 = +[MetricsModule storage];
  v15 = [objc_alloc(+[MetricsModuleCommon metricClass](MetricsModuleCommon "metricClass"))];
  v16 = +[NSBundle mainBundle];
  v17 = [v16 bundleIdentifier];

  [v15 addInternalPropertyValue:v17 forKey:kAPMetricBundleIdentifierKey];
  if (objc_opt_respondsToSelector())
  {
    [v15 performSelector:"updateClientBundleID:" withObject:v17];
  }

  [v14 receivedMetric:v15];
  v18 = APLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = objc_opt_class();
    v26 = v19;
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    [v8 reportDate];
    v22 = v28 = v11;
    [v22 reportDayString];
    v27 = v14;
    v23 = v13;
    v25 = v24 = v6;
    *buf = 138478851;
    v30 = v19;
    v31 = 2160;
    v32 = 1752392040;
    v33 = 2112;
    v34 = v21;
    v35 = 2114;
    v36 = v25;
    v37 = 2114;
    v38 = v24;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%{private}@]: Report %{mask.hash}@ for day %{public}@ sent to EC with properties %{public}@.", buf, 0x34u);

    v6 = v24;
    v13 = v23;
    v14 = v27;

    v11 = v28;
  }
}

@end