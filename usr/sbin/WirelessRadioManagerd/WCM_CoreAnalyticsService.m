@interface WCM_CoreAnalyticsService
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)singleton;
- (WCM_CoreAnalyticsService)init;
- (void)dealloc;
@end

@implementation WCM_CoreAnalyticsService

+ (id)singleton
{
  result = qword_1002B8280;
  if (!qword_1002B8280)
  {
    v4.receiver = a1;
    v4.super_class = &OBJC_METACLASS___WCM_CoreAnalyticsService;
    result = [objc_msgSendSuper2(&v4 allocWithZone:{0), "init"}];
    qword_1002B8280 = result;
  }

  return result;
}

+ (id)allocWithZone:(_NSZone *)a3
{
  v3 = [a1 singleton];

  return v3;
}

- (WCM_CoreAnalyticsService)init
{
  v4.receiver = self;
  v4.super_class = WCM_CoreAnalyticsService;
  v2 = [(WCM_CoreAnalyticsService *)&v4 init];
  if (v2)
  {
    v2->_mBTConnectedDevicesHandler = objc_alloc_init(WCM_CA_BTConnectedDevicesHandler);
    v2->_mWatchCoexStats = objc_alloc_init(WCM_CA_WatchCoexStats);
  }

  return v2;
}

- (void)dealloc
{
  mBTConnectedDevicesHandler = self->_mBTConnectedDevicesHandler;
  if (mBTConnectedDevicesHandler)
  {
  }

  mWatchCoexStats = self->_mWatchCoexStats;
  if (mWatchCoexStats)
  {
  }

  v5.receiver = self;
  v5.super_class = WCM_CoreAnalyticsService;
  [(WCM_CoreAnalyticsService *)&v5 dealloc];
}

@end