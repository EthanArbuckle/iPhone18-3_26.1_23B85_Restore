@interface KTReportDBMetricsOperation
- (KTReportDBMetricsOperation)initWithDependencies:(id)a3;
- (void)groupStart;
- (void)logSharedMetrics;
@end

@implementation KTReportDBMetricsOperation

- (KTReportDBMetricsOperation)initWithDependencies:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = KTReportDBMetricsOperation;
  v6 = [(KTGroupOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_deps, a3);
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
  v4 = [(KTReportDBMetricsOperation *)self deps];
  v5 = [v4 dataStore];
  [v5 logMetricsForApplication:kKTApplicationIdentifierIDS error:0];

  v6 = [(KTReportDBMetricsOperation *)self deps];
  v7 = [v6 dataStore];
  [v7 logMetricsForApplication:kKTApplicationIdentifierIDSFaceTime error:0];

  v8 = [(KTReportDBMetricsOperation *)self deps];
  v9 = [v8 dataStore];
  [v9 logMetricsForApplication:kKTApplicationIdentifierIDSMultiplex error:0];

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

  v6 = [(KTReportDBMetricsOperation *)self deps];
  v7 = [v6 logger];
  v8 = [NSNumber numberWithInteger:v3];
  [v7 logMetric:v8 withName:@"ktTotalStorageSize"];

  v9 = [(KTReportDBMetricsOperation *)self deps];
  v10 = [v9 dataStore];
  v12 = v4;
  [v10 logSTHMetricsForApplication:kKTApplicationIdentifierTLT error:&v12];
  v11 = v12;
}

@end