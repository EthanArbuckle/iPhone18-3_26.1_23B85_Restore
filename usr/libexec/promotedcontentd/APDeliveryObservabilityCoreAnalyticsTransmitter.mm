@interface APDeliveryObservabilityCoreAnalyticsTransmitter
- (void)sendDeliveryEventWithError:(int64_t)error successCount:(int64_t)count backoffIndex:(int64_t)index;
@end

@implementation APDeliveryObservabilityCoreAnalyticsTransmitter

- (void)sendDeliveryEventWithError:(int64_t)error successCount:(int64_t)count backoffIndex:(int64_t)index
{
  v11[0] = @"error";
  v7 = [NSNumber numberWithInteger:error];
  v12[0] = v7;
  v11[1] = @"successCount";
  v8 = [NSNumber numberWithInteger:count];
  v12[1] = v8;
  v11[2] = @"backoffIndex";
  v9 = [NSNumber numberWithInteger:index];
  v12[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];
  [APAnalytics sendEvent:@"ec.delivery" customPayload:v10];
}

@end