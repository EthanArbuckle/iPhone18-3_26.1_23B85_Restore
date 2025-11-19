@interface NSPProxyAnalytics
- (void)sendAnalytics;
@end

@implementation NSPProxyAnalytics

- (void)sendAnalytics
{
  v2 = [(NSPProxyAnalytics *)self eventName];
  AnalyticsSendEventLazy();
}

@end