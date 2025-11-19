@interface APDiagnosticDaemonMetricHelper
- (APDiagnosticDaemonMetricHelper)initWithContentData:(id)a3;
- (void)recordMetric:(int64_t)a3 forPurpose:(int64_t)a4 properties:(id)a5 internalProperties:(id)a6 order:(int64_t)a7 options:(int64_t)a8;
- (void)validationFailed:(int64_t)a3 reason:(id)a4;
@end

@implementation APDiagnosticDaemonMetricHelper

- (APDiagnosticDaemonMetricHelper)initWithContentData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = APDiagnosticDaemonMetricHelper;
  v6 = [(APDiagnosticDaemonMetricHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentData, a3);
  }

  return v7;
}

- (void)recordMetric:(int64_t)a3 forPurpose:(int64_t)a4 properties:(id)a5 internalProperties:(id)a6 order:(int64_t)a7 options:(int64_t)a8
{
  v12 = a6;
  v13 = a5;
  v25 = +[MetricsModule storage];
  v14 = +[MetricsModuleClasses metricClass];
  v15 = [(APDiagnosticDaemonMetricHelper *)self contentData];
  v16 = [v15 identifier];
  v17 = [v15 contextIdentifier];
  v18 = [v17 UUIDString];

  v19 = [v15 uniqueIdentifier];
  v20 = [v14 alloc];
  v21 = [v15 impressionId];
  v22 = [v20 initWithPurpose:a4 metric:a3 contentIdentifier:v16 contextIdentifier:v18 handle:v19 secondaryHandle:v21 branch:0 properties:v13 internalProperties:v12 relayData:0 environment:0 order:a7 options:a8];

  [v25 receivedMetric:v22];
}

- (void)validationFailed:(int64_t)a3 reason:(id)a4
{
  v9[0] = @"code";
  v6 = a4;
  v7 = [NSNumber numberWithInteger:a3];
  v9[1] = @"reason";
  v10[0] = v7;
  v10[1] = v6;
  v8 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  [(APDiagnosticDaemonMetricHelper *)self recordMetric:77500 forPurpose:-105 properties:v8 internalProperties:0 order:0 options:0];
}

@end