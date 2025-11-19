@interface NSPProxyAgentStats
- (id)analyticsDict;
@end

@implementation NSPProxyAgentStats

- (id)analyticsDict
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(NSPProxyAgentStats *)self tierType];
  [v3 setObject:v4 forKeyedSubscript:@"TierType"];

  v5 = [NSNumber numberWithUnsignedInteger:[(NSPProxyAgentStats *)self ingressProxyTokensAdded]];
  [v3 setObject:v5 forKeyedSubscript:@"IngressProxyTokensAdded"];

  v6 = [NSNumber numberWithUnsignedInteger:[(NSPProxyAgentStats *)self egressProxyTokensAdded]];
  [v3 setObject:v6 forKeyedSubscript:@"EgressProxyTokensAdded"];

  v7 = [NSNumber numberWithUnsignedInteger:[(NSPProxyAgentStats *)self ingressProxyLowWaterMarkHitCount]];
  [v3 setObject:v7 forKeyedSubscript:@"IngressProxyLowWaterMarkEventHitCount"];

  v8 = [NSNumber numberWithUnsignedInteger:[(NSPProxyAgentStats *)self egressProxyLowWaterMarkHitCount]];
  [v3 setObject:v8 forKeyedSubscript:@"EgressProxyLowWaterMarkEventHitCount"];

  return v3;
}

@end