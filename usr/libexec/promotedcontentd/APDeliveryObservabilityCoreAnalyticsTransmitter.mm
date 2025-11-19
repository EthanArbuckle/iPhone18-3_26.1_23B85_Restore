@interface APDeliveryObservabilityCoreAnalyticsTransmitter
- (void)sendDeliveryEventWithError:(int64_t)a3 successCount:(int64_t)a4 backoffIndex:(int64_t)a5;
@end

@implementation APDeliveryObservabilityCoreAnalyticsTransmitter

- (void)sendDeliveryEventWithError:(int64_t)a3 successCount:(int64_t)a4 backoffIndex:(int64_t)a5
{
  v11[0] = @"error";
  v7 = [NSNumber numberWithInteger:a3];
  v12[0] = v7;
  v11[1] = @"successCount";
  v8 = [NSNumber numberWithInteger:a4];
  v12[1] = v8;
  v11[2] = @"backoffIndex";
  v9 = [NSNumber numberWithInteger:a5];
  v12[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];
  [APAnalytics sendEvent:@"ec.delivery" customPayload:v10];
}

@end