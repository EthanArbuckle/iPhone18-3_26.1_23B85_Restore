@interface NEKAnalyticsReporter
+ (id)syncReportFilePath;
+ (void)_reportDriftResultsToAnalytics:(id)a3;
+ (void)_reportDuplicationResultsToAnalytics:(id)a3;
+ (void)saveSyncReportForDrift:(id)a3 andDuplication:(id)a4;
+ (void)sendAnalyticsForDrift:(id)a3 andDuplication:(id)a4;
@end

@implementation NEKAnalyticsReporter

+ (id)syncReportFilePath
{
  v2 = +[NEKEnvironment instance];
  v3 = [v2 dbFileManager];
  v4 = [v3 syncStateDBPathFor:@"syncReport.json"];

  return v4;
}

+ (void)saveSyncReportForDrift:(id)a3 andDuplication:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[NEKAnalyticsReporter syncReportFilePath];
  v8 = [[NSMutableDictionary alloc] initWithCapacity:10];
  v9 = [v6 syncReport];

  [v8 setObject:v9 forKeyedSubscript:@"Drift"];
  v10 = [v5 syncReport];

  [v8 setObject:v10 forKeyedSubscript:@"Duplicates"];
  v18 = 0;
  v11 = [NSJSONSerialization dataWithJSONObject:v8 options:11 error:&v18];
  v12 = v18;
  if (v12)
  {
    v13 = v12;
    v14 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10006F534(v13, v14);
    }
  }

  else
  {
    v17 = 0;
    [v11 writeToFile:v7 options:1 error:&v17];
    v15 = v17;
    v16 = *(qword_1000D18A8 + 8);
    if (v15)
    {
      v13 = v15;
      if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_10006F5AC(v13, v7, v16);
      }
    }

    else
    {
      if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v20 = v7;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Wrote analytics report to %@", buf, 0xCu);
      }

      v13 = 0;
    }
  }
}

+ (void)sendAnalyticsForDrift:(id)a3 andDuplication:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 hasDrift];
  v8 = *(qword_1000D18A8 + 8);
  if (v7)
  {
    if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10006F634(v8, v5);
    }

    [NEKAnalyticsReporter _reportDriftResultsToAnalytics:v5];
  }

  else if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "No drift detected on these devices", buf, 2u);
  }

  v9 = [v6 hasDuplicates];
  v10 = *(qword_1000D18A8 + 8);
  if (v9)
  {
    if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10006F6F0(v10, v6);
    }

    [NEKAnalyticsReporter _reportDuplicationResultsToAnalytics:v6];
  }

  else if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "No duplication detected on these devices", v11, 2u);
  }
}

+ (void)_reportDriftResultsToAnalytics:(id)a3
{
  v4 = a3;
  v3 = v4;
  AnalyticsSendEventLazy();
}

+ (void)_reportDuplicationResultsToAnalytics:(id)a3
{
  v4 = a3;
  v3 = v4;
  AnalyticsSendEventLazy();
}

@end