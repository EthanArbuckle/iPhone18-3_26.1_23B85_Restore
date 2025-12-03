@interface APReportDelivery
- (APReportDelivery)initWithDatasource:(id)datasource;
- (void)_sendReportWithProperties:(id)properties environment:(id)environment;
- (void)prepareDelivery;
@end

@implementation APReportDelivery

- (APReportDelivery)initWithDatasource:(id)datasource
{
  datasourceCopy = datasource;
  v9.receiver = self;
  v9.super_class = APReportDelivery;
  v6 = [(APReportDelivery *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_datasource, datasource);
  }

  return v7;
}

- (void)prepareDelivery
{
  datasource = [(APReportDelivery *)self datasource];
  properties = [datasource properties];
  if ([properties count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    allKeys = [properties allKeys];
    v6 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(allKeys);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          v11 = [properties valueForKey:v10];
          [(APReportDelivery *)self _sendReportWithProperties:v11 environment:v10];
        }

        v7 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }
  }

  else
  {
    allKeys = APLogForCategory();
    if (os_log_type_enabled(allKeys, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = v12;
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      reportDate = [datasource reportDate];
      reportDayString = [reportDate reportDayString];
      *buf = 138478595;
      v24 = v12;
      v25 = 2160;
      v26 = 1752392040;
      v27 = 2112;
      v28 = v15;
      v29 = 2114;
      v30 = reportDayString;
      _os_log_impl(&_mh_execute_header, allKeys, OS_LOG_TYPE_DEFAULT, "[%{private}@]: Skipping Report %{mask.hash}@ for day %{public}@, no data avaliable.", buf, 0x2Au);
    }
  }
}

- (void)_sendReportWithProperties:(id)properties environment:(id)environment
{
  propertiesCopy = properties;
  environmentCopy = environment;
  datasource = [(APReportDelivery *)self datasource];
  v9 = +[NSUUID UUID];
  v10 = [v9 appendBytes:8];
  base64FilenameSafeEncoded = [v10 base64FilenameSafeEncoded];

  environmentToBranchDic = [datasource environmentToBranchDic];
  v13 = [environmentToBranchDic objectForKey:environmentCopy];

  v14 = +[MetricsModule storage];
  v15 = [objc_alloc(+[MetricsModuleCommon metricClass](MetricsModuleCommon "metricClass"))];
  v16 = +[NSBundle mainBundle];
  bundleIdentifier = [v16 bundleIdentifier];

  [v15 addInternalPropertyValue:bundleIdentifier forKey:kAPMetricBundleIdentifierKey];
  if (objc_opt_respondsToSelector())
  {
    [v15 performSelector:"updateClientBundleID:" withObject:bundleIdentifier];
  }

  [v14 receivedMetric:v15];
  v18 = APLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = objc_opt_class();
    v26 = v19;
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    [datasource reportDate];
    v22 = v28 = base64FilenameSafeEncoded;
    [v22 reportDayString];
    v27 = v14;
    v23 = v13;
    v25 = v24 = propertiesCopy;
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

    propertiesCopy = v24;
    v13 = v23;
    v14 = v27;

    base64FilenameSafeEncoded = v28;
  }
}

@end