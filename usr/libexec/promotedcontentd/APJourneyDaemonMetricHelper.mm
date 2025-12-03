@interface APJourneyDaemonMetricHelper
- (APJourneyDaemonMetricHelper)initWithContentData:(id)data;
- (void)conversionForBundleID:(id)d source:(id)source conversionValue:(signed __int16)value;
- (void)discardedForBundleID:(id)d withCode:(int64_t)code;
- (void)receivedForBundleID:(id)d adServer:(int64_t)server elapsedTime:(double)time relayValues:(id)values internalProperties:(id)properties;
- (void)recordMetric:(int64_t)metric forPurpose:(int64_t)purpose bundleID:(id)d handleOverride:(id)override properties:(id)properties internalProperties:(id)internalProperties relayData:(id)data order:(int64_t)self0 options:(int64_t)self1;
- (void)requestFailedForBundleID:(id)d withCode:(int64_t)code requestID:(id)iD placement:(unint64_t)placement placementType:(int64_t)type;
@end

@implementation APJourneyDaemonMetricHelper

- (APJourneyDaemonMetricHelper)initWithContentData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = APJourneyDaemonMetricHelper;
  v6 = [(APJourneyDaemonMetricHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentData, data);
  }

  return v7;
}

- (void)recordMetric:(int64_t)metric forPurpose:(int64_t)purpose bundleID:(id)d handleOverride:(id)override properties:(id)properties internalProperties:(id)internalProperties relayData:(id)data order:(int64_t)self0 options:(int64_t)self1
{
  dCopy = d;
  overrideCopy = override;
  dataCopy = data;
  internalPropertiesCopy = internalProperties;
  propertiesCopy = properties;
  v32 = +[MetricsModule storage];
  v19 = +[MetricsModuleClasses metricClass];
  contentData = [(APJourneyDaemonMetricHelper *)self contentData];
  identifier = [contentData identifier];
  contextIdentifier = [contentData contextIdentifier];
  uUIDString = [contextIdentifier UUIDString];

  v33 = overrideCopy;
  if (overrideCopy)
  {
    journeyIdentifier = overrideCopy;
  }

  else
  {
    journeyIdentifier = [contentData journeyIdentifier];
  }

  v25 = journeyIdentifier;
  adServerEnvironment = [contentData adServerEnvironment];
  v27 = [v19 alloc];
  impressionId = [contentData impressionId];
  v29 = [v27 initWithPurpose:purpose metric:metric contentIdentifier:identifier contextIdentifier:uUIDString handle:v25 secondaryHandle:impressionId branch:0 properties:propertiesCopy internalProperties:internalPropertiesCopy relayData:dataCopy environment:adServerEnvironment order:order options:0];

  if ([dCopy length])
  {
    [v29 updateClientBundleID:dCopy];
  }

  [v32 receivedMetric:v29];
}

- (void)receivedForBundleID:(id)d adServer:(int64_t)server elapsedTime:(double)time relayValues:(id)values internalProperties:(id)properties
{
  dCopy = d;
  valuesCopy = values;
  propertiesCopy = properties;
  v21 = @"elapsed";
  v15 = [NSNumber numberWithInteger:llround(time * 1000.0)];
  v22 = v15;
  v16 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];

  v17 = APLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    serverCopy = dCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Received event for client request %@", buf, 0xCu);
  }

  if ((server & 0x8000000000000000) == 0)
  {
    v18 = APLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      serverCopy = server;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Received event from adserver %ld", buf, 0xCu);
    }
  }

  [(APJourneyDaemonMetricHelper *)self recordMetric:1000 forPurpose:100 bundleID:dCopy handleOverride:0 properties:v16 internalProperties:propertiesCopy relayData:valuesCopy order:0 options:0];
}

- (void)discardedForBundleID:(id)d withCode:(int64_t)code
{
  v9 = @"code";
  dCopy = d;
  v7 = [NSNumber numberWithInteger:code];
  v10 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];

  [(APJourneyDaemonMetricHelper *)self recordMetric:1001 forPurpose:100 bundleID:dCopy handleOverride:0 properties:v8 internalProperties:0 relayData:0 order:0 options:0, v9];
}

- (void)conversionForBundleID:(id)d source:(id)source conversionValue:(signed __int16)value
{
  valueCopy = value;
  v12 = @"source";
  v13 = @"conversion_value";
  v14[0] = source;
  sourceCopy = source;
  dCopy = d;
  v10 = [NSNumber numberWithShort:valueCopy];
  v14[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:&v12 count:2];

  [(APJourneyDaemonMetricHelper *)self recordMetric:1002 forPurpose:100 bundleID:dCopy handleOverride:0 properties:v11 internalProperties:0 relayData:0 order:0 options:0, v12, v13, v14[0]];
}

- (void)requestFailedForBundleID:(id)d withCode:(int64_t)code requestID:(id)iD placement:(unint64_t)placement placementType:(int64_t)type
{
  v18 = @"code";
  iDCopy = iD;
  dCopy = d;
  v14 = [NSNumber numberWithInteger:code];
  v19 = v14;
  v15 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v16 = [v15 mutableCopy];

  v17 = [APJourneyMetricAdapter translateWithPromotedContent:type placement:placement];
  [v16 addEntriesFromDictionary:v17];
  [(APJourneyDaemonMetricHelper *)self recordMetric:1004 forPurpose:100 bundleID:dCopy handleOverride:iDCopy properties:v16 internalProperties:0 relayData:0 order:0 options:0, v18];
}

@end