@interface APDiagnosticDaemonMetricHelper
- (APDiagnosticDaemonMetricHelper)initWithContentData:(id)data;
- (void)recordMetric:(int64_t)metric forPurpose:(int64_t)purpose properties:(id)properties internalProperties:(id)internalProperties order:(int64_t)order options:(int64_t)options;
- (void)validationFailed:(int64_t)failed reason:(id)reason;
@end

@implementation APDiagnosticDaemonMetricHelper

- (APDiagnosticDaemonMetricHelper)initWithContentData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = APDiagnosticDaemonMetricHelper;
  v6 = [(APDiagnosticDaemonMetricHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentData, data);
  }

  return v7;
}

- (void)recordMetric:(int64_t)metric forPurpose:(int64_t)purpose properties:(id)properties internalProperties:(id)internalProperties order:(int64_t)order options:(int64_t)options
{
  internalPropertiesCopy = internalProperties;
  propertiesCopy = properties;
  v25 = +[MetricsModule storage];
  v14 = +[MetricsModuleClasses metricClass];
  contentData = [(APDiagnosticDaemonMetricHelper *)self contentData];
  identifier = [contentData identifier];
  contextIdentifier = [contentData contextIdentifier];
  uUIDString = [contextIdentifier UUIDString];

  uniqueIdentifier = [contentData uniqueIdentifier];
  v20 = [v14 alloc];
  impressionId = [contentData impressionId];
  v22 = [v20 initWithPurpose:purpose metric:metric contentIdentifier:identifier contextIdentifier:uUIDString handle:uniqueIdentifier secondaryHandle:impressionId branch:0 properties:propertiesCopy internalProperties:internalPropertiesCopy relayData:0 environment:0 order:order options:options];

  [v25 receivedMetric:v22];
}

- (void)validationFailed:(int64_t)failed reason:(id)reason
{
  v9[0] = @"code";
  reasonCopy = reason;
  v7 = [NSNumber numberWithInteger:failed];
  v9[1] = @"reason";
  v10[0] = v7;
  v10[1] = reasonCopy;
  v8 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  [(APDiagnosticDaemonMetricHelper *)self recordMetric:77500 forPurpose:-105 properties:v8 internalProperties:0 order:0 options:0];
}

@end