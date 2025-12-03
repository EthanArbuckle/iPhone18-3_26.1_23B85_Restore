@interface NEKAnalyticsReporter
+ (id)syncReportFilePath;
+ (void)_reportDriftResultsToAnalytics:(id)analytics;
+ (void)_reportDuplicationResultsToAnalytics:(id)analytics;
+ (void)saveSyncReportForDrift:(id)drift andDuplication:(id)duplication;
+ (void)sendAnalyticsForDrift:(id)drift andDuplication:(id)duplication;
@end

@implementation NEKAnalyticsReporter

+ (id)syncReportFilePath
{
  v2 = +[NEKEnvironment instance];
  dbFileManager = [v2 dbFileManager];
  v4 = [dbFileManager syncStateDBPathFor:@"syncReport.json"];

  return v4;
}

+ (void)saveSyncReportForDrift:(id)drift andDuplication:(id)duplication
{
  duplicationCopy = duplication;
  driftCopy = drift;
  v7 = +[NEKAnalyticsReporter syncReportFilePath];
  v8 = [[NSMutableDictionary alloc] initWithCapacity:10];
  syncReport = [driftCopy syncReport];

  [v8 setObject:syncReport forKeyedSubscript:@"Drift"];
  syncReport2 = [duplicationCopy syncReport];

  [v8 setObject:syncReport2 forKeyedSubscript:@"Duplicates"];
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

+ (void)sendAnalyticsForDrift:(id)drift andDuplication:(id)duplication
{
  driftCopy = drift;
  duplicationCopy = duplication;
  hasDrift = [driftCopy hasDrift];
  v8 = *(qword_1000D18A8 + 8);
  if (hasDrift)
  {
    if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10006F634(v8, driftCopy);
    }

    [NEKAnalyticsReporter _reportDriftResultsToAnalytics:driftCopy];
  }

  else if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "No drift detected on these devices", buf, 2u);
  }

  hasDuplicates = [duplicationCopy hasDuplicates];
  v10 = *(qword_1000D18A8 + 8);
  if (hasDuplicates)
  {
    if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10006F6F0(v10, duplicationCopy);
    }

    [NEKAnalyticsReporter _reportDuplicationResultsToAnalytics:duplicationCopy];
  }

  else if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "No duplication detected on these devices", v11, 2u);
  }
}

+ (void)_reportDriftResultsToAnalytics:(id)analytics
{
  analyticsCopy = analytics;
  v3 = analyticsCopy;
  AnalyticsSendEventLazy();
}

+ (void)_reportDuplicationResultsToAnalytics:(id)analytics
{
  analyticsCopy = analytics;
  v3 = analyticsCopy;
  AnalyticsSendEventLazy();
}

@end