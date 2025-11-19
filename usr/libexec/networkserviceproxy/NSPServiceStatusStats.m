@interface NSPServiceStatusStats
- (id)analyticsDict;
@end

@implementation NSPServiceStatusStats

- (id)analyticsDict
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(NSPServiceStatusStats *)self tierType];
  [v3 setObject:v4 forKeyedSubscript:@"TierType"];

  v5 = [NSNumber numberWithUnsignedInteger:[(NSPServiceStatusStats *)self serviceStatusDisabledCount]];
  [v3 setObject:v5 forKeyedSubscript:@"ServiceStatusDisabledCount"];

  v6 = [NSNumber numberWithUnsignedInteger:[(NSPServiceStatusStats *)self serviceStatusActiveCount]];
  [v3 setObject:v6 forKeyedSubscript:@"ServiceStatusActiveCount"];

  v7 = [NSNumber numberWithUnsignedInteger:[(NSPServiceStatusStats *)self serviceStatusOutageCount]];
  [v3 setObject:v7 forKeyedSubscript:@"ServiceStatusOutageCount"];

  v8 = [NSNumber numberWithUnsignedInteger:[(NSPServiceStatusStats *)self serviceStatusFraudAlertCount]];
  [v3 setObject:v8 forKeyedSubscript:@"ServiceStatusFraudAlertCount"];

  v9 = [NSNumber numberWithUnsignedInteger:[(NSPServiceStatusStats *)self serviceStatusUnsupportedRegionCount]];
  [v3 setObject:v9 forKeyedSubscript:@"ServiceStatusUnsupportedRegionCount"];

  v10 = [NSNumber numberWithUnsignedInteger:[(NSPServiceStatusStats *)self serviceStatusSystemIncompatibleCount]];
  [v3 setObject:v10 forKeyedSubscript:@"ServiceStatusSystemIncompatibleCount"];

  v11 = [NSNumber numberWithUnsignedInteger:[(NSPServiceStatusStats *)self serviceStatusSubscriberUnsupportedRegionCount]];
  [v3 setObject:v11 forKeyedSubscript:@"ServiceStatusSubscriberUnsupportedRegionCount"];

  v12 = [NSNumber numberWithUnsignedInteger:[(NSPServiceStatusStats *)self serviceStatusNetworkOutageCount]];
  [v3 setObject:v12 forKeyedSubscript:@"ServiceStatusNetworkOutageCount"];

  return v3;
}

@end