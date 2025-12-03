@interface NSPTokenFetchAnalytics
- (id)analyticsDict;
@end

@implementation NSPTokenFetchAnalytics

- (id)analyticsDict
{
  v3 = objc_alloc_init(NSMutableDictionary);
  proxyURL = [(NSPTokenFetchAnalytics *)self proxyURL];
  [v3 setObject:proxyURL forKeyedSubscript:@"ProxyURL"];

  proxyVendor = [(NSPTokenFetchAnalytics *)self proxyVendor];
  [v3 setObject:proxyVendor forKeyedSubscript:@"ProxyVendor"];

  tierType = [(NSPTokenFetchAnalytics *)self tierType];
  [v3 setObject:tierType forKeyedSubscript:@"TierType"];

  authenticationType = [(NSPTokenFetchAnalytics *)self authenticationType];
  [v3 setObject:authenticationType forKeyedSubscript:@"AuthenticationType"];

  requestedServerUUID = [(NSPTokenFetchAnalytics *)self requestedServerUUID];
  [v3 setObject:requestedServerUUID forKeyedSubscript:@"RequestedServerUUID"];

  v9 = [NSNumber numberWithUnsignedInteger:[(NSPTokenFetchAnalytics *)self requestedTokenCount]];
  [v3 setObject:v9 forKeyedSubscript:@"RequestedTokenCount"];

  v10 = [NSNumber numberWithUnsignedInteger:[(NSPTokenFetchAnalytics *)self activatedCount]];
  [v3 setObject:v10 forKeyedSubscript:@"ActivatedTokenCount"];

  v11 = [NSNumber numberWithInteger:[(NSPTokenFetchAnalytics *)self httpCode]];
  [v3 setObject:v11 forKeyedSubscript:@"HTTPCode"];

  v12 = [NSNumber numberWithInteger:[(NSPTokenFetchAnalytics *)self nsurlErrorCode]];
  [v3 setObject:v12 forKeyedSubscript:@"NSURLErrorCode"];

  [(NSPTokenFetchAnalytics *)self latency];
  v13 = [NSNumber numberWithDouble:?];
  [v3 setObject:v13 forKeyedSubscript:@"Latency"];

  return v3;
}

@end