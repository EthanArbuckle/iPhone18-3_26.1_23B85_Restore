@interface APMetricReceiver
- (APMetricReceiver)initWithConnection:(id)connection;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)extendCollectionClassesForExportedInterface:(id)interface;
- (void)receivedMetric:(id)metric;
- (void)terminateConnection;
@end

@implementation APMetricReceiver

- (APMetricReceiver)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = APMetricReceiver;
  v6 = [(APMetricReceiver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
  }

  return v7;
}

- (void)receivedMetric:(id)metric
{
  metricCopy = metric;
  connection = [(APMetricReceiver *)self connection];
  bundleID = [connection bundleID];
  v7 = [bundleID length];

  if (v7)
  {
    connection2 = [(APMetricReceiver *)self connection];
    bundleID2 = [connection2 bundleID];
  }

  else
  {
    bundleID2 = @"nil";
  }

  if (objc_opt_respondsToSelector())
  {
    [(__CFString *)metricCopy performSelector:"updateClientBundleID:" withObject:bundleID2];
  }

  internalProperties = [(__CFString *)metricCopy internalProperties];
  v11 = [internalProperties objectForKeyedSubscript:kAPMetricClientSourceKey];

  if (v11)
  {
    if ([v11 length])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [NSString stringWithFormat:@"%@%@%@", bundleID2, @".", v11];

        bundleID2 = v12;
      }
    }
  }

  v13 = APLogForCategory();
  v14 = v13;
  if (v7)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138478339;
      v30 = objc_opt_class();
      v31 = 2114;
      v32 = bundleID2;
      v33 = 2114;
      v34 = metricCopy;
      v15 = v30;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[%{private}@] Received metric from %{public}@: %{public}@", buf, 0x20u);
    }

    purpose = [(__CFString *)metricCopy purpose];
    if (purpose)
    {
      v17 = [APECPurposeConfig purposeConfig:purpose];
      if (v17)
      {
        connection3 = [(APMetricReceiver *)self connection];
        bundleID3 = [connection3 bundleID];

        if (!bundleID3)
        {
          v22 = APLogForCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v30 = metricCopy;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Error missing BundleID for metric %{public}@", buf, 0xCu);
          }

          goto LABEL_24;
        }

        connection4 = [(APMetricReceiver *)self connection];
        bundleID4 = [connection4 bundleID];
        v22 = [bundleID4 dataUsingEncoding:4];

        sha256 = [v22 sha256];
        asHexString = [sha256 asHexString];
        v25 = [NSPredicate predicateWithFormat:@"SELF contains %@", asHexString];
        allowedSources = [v17 allowedSources];
        v27 = [allowedSources filteredArrayUsingPredicate:v25];

        if (!v27 || [v27 count] != 1)
        {
          v28 = APLogForCategory();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            v30 = bundleID2;
            v31 = 2114;
            v32 = metricCopy;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Metric %{public}@ from client %{public}@ not allowed ", buf, 0x16u);
          }

          goto LABEL_24;
        }
      }
    }

    else
    {
      v17 = 0;
    }

    v22 = +[MetricsModule storage];
    [v22 receivedMetric:metricCopy];
LABEL_24:

    goto LABEL_25;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Unable to get bundle ID for connection. Terminating the connection.", buf, 2u);
  }

  [(APMetricReceiver *)self terminateConnection];
LABEL_25:
}

- (void)terminateConnection
{
  connection = [(APMetricReceiver *)self connection];

  if (connection)
  {
    connection2 = [(APMetricReceiver *)self connection];
    [connection2 invalidate];

    [(APMetricReceiver *)self setConnection:0];
  }
}

- (void)extendCollectionClassesForExportedInterface:(id)interface
{
  interfaceCopy = interface;
  v4 = +[NSSet setWithObjects:](NSSet, "setWithObjects:", +[MetricsModuleCommon metricClass], 0);
  [interfaceCopy setClasses:v4 forSelector:"receivedMetric:" argumentIndex:0 ofReply:0];
}

- (void)connectionInvalidated
{
  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138477827;
    v6 = objc_opt_class();
    v4 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{private}@] Connection from the client was invalidated", &v5, 0xCu);
  }

  [(APMetricReceiver *)self terminateConnection];
}

- (void)connectionInterrupted
{
  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138477827;
    v6 = objc_opt_class();
    v4 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{private}@] Connection from the client was interrupted", &v5, 0xCu);
  }

  [(APMetricReceiver *)self terminateConnection];
}

@end