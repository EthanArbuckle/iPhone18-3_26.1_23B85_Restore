@interface NSPProxyAnalytics
- (void)sendAnalytics;
@end

@implementation NSPProxyAnalytics

- (void)sendAnalytics
{
  eventName = [(NSPProxyAnalytics *)self eventName];
  AnalyticsSendEventLazy();
}

@end