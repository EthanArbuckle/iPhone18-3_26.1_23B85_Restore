@interface NSPNetworkStatusStats
- (id)analyticsDict;
@end

@implementation NSPNetworkStatusStats

- (id)analyticsDict
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(NSPNetworkStatusStats *)self tierType];
  [v3 setObject:v4 forKeyedSubscript:@"TierType"];

  v5 = [NSNumber numberWithUnsignedInteger:[(NSPNetworkStatusStats *)self wifiStatusBlockedCount]];
  [v3 setObject:v5 forKeyedSubscript:@"NetworkStatusStatsWiFiBlockedCount"];

  v6 = [NSNumber numberWithUnsignedInteger:[(NSPNetworkStatusStats *)self wifiStatusDisabledCount]];
  [v3 setObject:v6 forKeyedSubscript:@"NetworkStatusStatsWiFiDisabledCount"];

  v7 = [NSNumber numberWithUnsignedInteger:[(NSPNetworkStatusStats *)self wifiStatusActiveCount]];
  [v3 setObject:v7 forKeyedSubscript:@"NetworkStatusStatsWiFiActiveCount"];

  v8 = [NSNumber numberWithUnsignedInteger:[(NSPNetworkStatusStats *)self cellStatusBlockedCount]];
  [v3 setObject:v8 forKeyedSubscript:@"NetworkStatusStatsCellBlockedCount"];

  v9 = [NSNumber numberWithUnsignedInteger:[(NSPNetworkStatusStats *)self cellStatusDisabledCount]];
  [v3 setObject:v9 forKeyedSubscript:@"NetworkStatusStatsCellDisabledCount"];

  v10 = [NSNumber numberWithUnsignedInteger:[(NSPNetworkStatusStats *)self cellStatusActiveCount]];
  [v3 setObject:v10 forKeyedSubscript:@"NetworkStatusStatsCellActiveCount"];

  v11 = [NSNumber numberWithUnsignedInteger:[(NSPNetworkStatusStats *)self wiredStatusBlockedCount]];
  [v3 setObject:v11 forKeyedSubscript:@"NetworkStatusStatsWiredBlockedCount"];

  v12 = [NSNumber numberWithUnsignedInteger:[(NSPNetworkStatusStats *)self wiredStatusDisabledCount]];
  [v3 setObject:v12 forKeyedSubscript:@"NetworkStatusStatsWiredDisabledCount"];

  v13 = [NSNumber numberWithUnsignedInteger:[(NSPNetworkStatusStats *)self wiredStatusActiveCount]];
  [v3 setObject:v13 forKeyedSubscript:@"NetworkStatusStatsWiredActiveCount"];

  return v3;
}

@end