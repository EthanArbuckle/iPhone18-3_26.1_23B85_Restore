@interface KTReportDBMetricsOperation
- (KTReportDBMetricsOperation)initWithDependencies:(id)dependencies;
- (void)groupStart;
- (void)logSharedMetrics;
@end

@implementation KTReportDBMetricsOperation

- (KTReportDBMetricsOperation)initWithDependencies:(id)dependencies
{
  dependenciesCopy = dependencies;
  v9.receiver = self;
  v9.super_class = KTReportDBMetricsOperation;
  v6 = [(KTGroupOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_deps, dependencies);
  }

  return v7;
}

- (void)groupStart
{
  if (qword_10038BD40 != -1)
  {
    sub_10024A628();
  }

  v3 = qword_10038BD48;
  if (os_log_type_enabled(qword_10038BD48, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "ReportDBMetrics: start", buf, 2u);
  }

  [(KTReportDBMetricsOperation *)self logSharedMetrics];
  deps = [(KTReportDBMetricsOperation *)self deps];
  dataStore = [deps dataStore];
  [dataStore logMetricsForApplication:kKTApplicationIdentifierIDS error:0];

  deps2 = [(KTReportDBMetricsOperation *)self deps];
  dataStore2 = [deps2 dataStore];
  [dataStore2 logMetricsForApplication:kKTApplicationIdentifierIDSFaceTime error:0];

  deps3 = [(KTReportDBMetricsOperation *)self deps];
  dataStore3 = [deps3 dataStore];
  [dataStore3 logMetricsForApplication:kKTApplicationIdentifierIDSMultiplex error:0];

  if (qword_10038BD40 != -1)
  {
    sub_10024A63C();
  }

  v10 = qword_10038BD48;
  if (os_log_type_enabled(qword_10038BD48, OS_LOG_TYPE_DEBUG))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "ReportDBMetrics: end", v11, 2u);
  }
}

- (void)logSharedMetrics
{
  v13 = 0;
  v3 = [TransparencyFileSupport directorySizeInKB:&v13];
  v4 = v13;
  if (v3 < 0)
  {
    if (qword_10038BD40 != -1)
    {
      sub_10024A664();
    }

    v5 = qword_10038BD48;
    if (os_log_type_enabled(qword_10038BD48, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "failed to get support directory size: %@", buf, 0xCu);
    }
  }

  deps = [(KTReportDBMetricsOperation *)self deps];
  logger = [deps logger];
  v8 = [NSNumber numberWithInteger:v3];
  [logger logMetric:v8 withName:@"ktTotalStorageSize"];

  deps2 = [(KTReportDBMetricsOperation *)self deps];
  dataStore = [deps2 dataStore];
  v12 = v4;
  [dataStore logSTHMetricsForApplication:kKTApplicationIdentifierTLT error:&v12];
  v11 = v12;
}

@end