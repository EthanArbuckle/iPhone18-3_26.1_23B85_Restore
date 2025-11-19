@interface NSPTokenFetchAnalytics
- (id)analyticsDict;
@end

@implementation NSPTokenFetchAnalytics

- (id)analyticsDict
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(NSPTokenFetchAnalytics *)self proxyURL];
  [v3 setObject:v4 forKeyedSubscript:@"ProxyURL"];

  v5 = [(NSPTokenFetchAnalytics *)self proxyVendor];
  [v3 setObject:v5 forKeyedSubscript:@"ProxyVendor"];

  v6 = [(NSPTokenFetchAnalytics *)self tierType];
  [v3 setObject:v6 forKeyedSubscript:@"TierType"];

  v7 = [(NSPTokenFetchAnalytics *)self authenticationType];
  [v3 setObject:v7 forKeyedSubscript:@"AuthenticationType"];

  v8 = [(NSPTokenFetchAnalytics *)self requestedServerUUID];
  [v3 setObject:v8 forKeyedSubscript:@"RequestedServerUUID"];

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