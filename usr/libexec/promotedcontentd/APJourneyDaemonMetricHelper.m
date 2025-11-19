@interface APJourneyDaemonMetricHelper
- (APJourneyDaemonMetricHelper)initWithContentData:(id)a3;
- (void)conversionForBundleID:(id)a3 source:(id)a4 conversionValue:(signed __int16)a5;
- (void)discardedForBundleID:(id)a3 withCode:(int64_t)a4;
- (void)receivedForBundleID:(id)a3 adServer:(int64_t)a4 elapsedTime:(double)a5 relayValues:(id)a6 internalProperties:(id)a7;
- (void)recordMetric:(int64_t)a3 forPurpose:(int64_t)a4 bundleID:(id)a5 handleOverride:(id)a6 properties:(id)a7 internalProperties:(id)a8 relayData:(id)a9 order:(int64_t)a10 options:(int64_t)a11;
- (void)requestFailedForBundleID:(id)a3 withCode:(int64_t)a4 requestID:(id)a5 placement:(unint64_t)a6 placementType:(int64_t)a7;
@end

@implementation APJourneyDaemonMetricHelper

- (APJourneyDaemonMetricHelper)initWithContentData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = APJourneyDaemonMetricHelper;
  v6 = [(APJourneyDaemonMetricHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentData, a3);
  }

  return v7;
}

- (void)recordMetric:(int64_t)a3 forPurpose:(int64_t)a4 bundleID:(id)a5 handleOverride:(id)a6 properties:(id)a7 internalProperties:(id)a8 relayData:(id)a9 order:(int64_t)a10 options:(int64_t)a11
{
  v34 = a5;
  v15 = a6;
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v32 = +[MetricsModule storage];
  v19 = +[MetricsModuleClasses metricClass];
  v20 = [(APJourneyDaemonMetricHelper *)self contentData];
  v21 = [v20 identifier];
  v22 = [v20 contextIdentifier];
  v23 = [v22 UUIDString];

  v33 = v15;
  if (v15)
  {
    v24 = v15;
  }

  else
  {
    v24 = [v20 journeyIdentifier];
  }

  v25 = v24;
  v26 = [v20 adServerEnvironment];
  v27 = [v19 alloc];
  v28 = [v20 impressionId];
  v29 = [v27 initWithPurpose:a4 metric:a3 contentIdentifier:v21 contextIdentifier:v23 handle:v25 secondaryHandle:v28 branch:0 properties:v18 internalProperties:v17 relayData:v16 environment:v26 order:a10 options:0];

  if ([v34 length])
  {
    [v29 updateClientBundleID:v34];
  }

  [v32 receivedMetric:v29];
}

- (void)receivedForBundleID:(id)a3 adServer:(int64_t)a4 elapsedTime:(double)a5 relayValues:(id)a6 internalProperties:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v21 = @"elapsed";
  v15 = [NSNumber numberWithInteger:llround(a5 * 1000.0)];
  v22 = v15;
  v16 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];

  v17 = APLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Received event for client request %@", buf, 0xCu);
  }

  if ((a4 & 0x8000000000000000) == 0)
  {
    v18 = APLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v20 = a4;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Received event from adserver %ld", buf, 0xCu);
    }
  }

  [(APJourneyDaemonMetricHelper *)self recordMetric:1000 forPurpose:100 bundleID:v12 handleOverride:0 properties:v16 internalProperties:v14 relayData:v13 order:0 options:0];
}

- (void)discardedForBundleID:(id)a3 withCode:(int64_t)a4
{
  v9 = @"code";
  v6 = a3;
  v7 = [NSNumber numberWithInteger:a4];
  v10 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];

  [(APJourneyDaemonMetricHelper *)self recordMetric:1001 forPurpose:100 bundleID:v6 handleOverride:0 properties:v8 internalProperties:0 relayData:0 order:0 options:0, v9];
}

- (void)conversionForBundleID:(id)a3 source:(id)a4 conversionValue:(signed __int16)a5
{
  v5 = a5;
  v12 = @"source";
  v13 = @"conversion_value";
  v14[0] = a4;
  v8 = a4;
  v9 = a3;
  v10 = [NSNumber numberWithShort:v5];
  v14[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:&v12 count:2];

  [(APJourneyDaemonMetricHelper *)self recordMetric:1002 forPurpose:100 bundleID:v9 handleOverride:0 properties:v11 internalProperties:0 relayData:0 order:0 options:0, v12, v13, v14[0]];
}

- (void)requestFailedForBundleID:(id)a3 withCode:(int64_t)a4 requestID:(id)a5 placement:(unint64_t)a6 placementType:(int64_t)a7
{
  v18 = @"code";
  v12 = a5;
  v13 = a3;
  v14 = [NSNumber numberWithInteger:a4];
  v19 = v14;
  v15 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v16 = [v15 mutableCopy];

  v17 = [APJourneyMetricAdapter translateWithPromotedContent:a7 placement:a6];
  [v16 addEntriesFromDictionary:v17];
  [(APJourneyDaemonMetricHelper *)self recordMetric:1004 forPurpose:100 bundleID:v13 handleOverride:v12 properties:v16 internalProperties:0 relayData:0 order:0 options:0, v18];
}

@end