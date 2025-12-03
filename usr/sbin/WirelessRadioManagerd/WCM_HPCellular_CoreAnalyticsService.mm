@interface WCM_HPCellular_CoreAnalyticsService
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)singleton;
- (WCM_HPCellular_CoreAnalyticsService)init;
- (void)resetHPCellularCoexStatsMetrics;
- (void)submitHPCellularCoexStats;
- (void)updateHPCellularCoexStatsWithBtDeviceCount:(unint64_t)count a2dpDeviceCount:(unint64_t)deviceCount escoDeviceCount:(unint64_t)escoDeviceCount scoDeviceCount:(unint64_t)scoDeviceCount hidDeviceCount:(unint64_t)hidDeviceCount leDeviceCount:(unint64_t)leDeviceCount leaDeviceCount:(unint64_t)leaDeviceCount llaDeviceCount:(unint64_t)self0;
@end

@implementation WCM_HPCellular_CoreAnalyticsService

+ (id)singleton
{
  result = qword_1002B7EC0;
  if (!qword_1002B7EC0)
  {
    v4.receiver = self;
    v4.super_class = &OBJC_METACLASS___WCM_HPCellular_CoreAnalyticsService;
    result = [objc_msgSendSuper2(&v4 allocWithZone:{0), "init"}];
    qword_1002B7EC0 = result;
  }

  return result;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  singleton = [self singleton];

  return singleton;
}

- (WCM_HPCellular_CoreAnalyticsService)init
{
  v3.receiver = self;
  v3.super_class = WCM_HPCellular_CoreAnalyticsService;
  return [(WCM_HPCellular_CoreAnalyticsService *)&v3 init];
}

- (void)resetHPCellularCoexStatsMetrics
{
  *&self->_leaMaxDeviceCount = 0u;
  *&self->_hidMaxDeviceCount = 0u;
  *&self->_escoMaxDeviceCount = 0u;
  *&self->_btMaxDeviceCount = 0u;
  [WCM_Logging logLevel:4 message:@"HPCellularCA: Reset HPCellularCoexStat"];
}

- (void)updateHPCellularCoexStatsWithBtDeviceCount:(unint64_t)count a2dpDeviceCount:(unint64_t)deviceCount escoDeviceCount:(unint64_t)escoDeviceCount scoDeviceCount:(unint64_t)scoDeviceCount hidDeviceCount:(unint64_t)hidDeviceCount leDeviceCount:(unint64_t)leDeviceCount leaDeviceCount:(unint64_t)leaDeviceCount llaDeviceCount:(unint64_t)self0
{
  leaMaxDeviceCount = leaDeviceCount;
  llaDeviceCountCopy = llaDeviceCount;
  btMaxDeviceCount = self->_btMaxDeviceCount;
  a2dpMaxDeviceCount = self->_a2dpMaxDeviceCount;
  if (btMaxDeviceCount <= count)
  {
    btMaxDeviceCount = count;
  }

  if (a2dpMaxDeviceCount <= deviceCount)
  {
    a2dpMaxDeviceCount = deviceCount;
  }

  escoMaxDeviceCount = self->_escoMaxDeviceCount;
  scoMaxDeviceCount = self->_scoMaxDeviceCount;
  if (escoMaxDeviceCount <= escoDeviceCount)
  {
    escoMaxDeviceCount = escoDeviceCount;
  }

  if (scoMaxDeviceCount <= scoDeviceCount)
  {
    scoMaxDeviceCount = scoDeviceCount;
  }

  hidMaxDeviceCount = self->_hidMaxDeviceCount;
  leMaxDeviceCount = self->_leMaxDeviceCount;
  if (hidMaxDeviceCount <= hidDeviceCount)
  {
    hidMaxDeviceCount = hidDeviceCount;
  }

  if (leMaxDeviceCount <= leDeviceCount)
  {
    leMaxDeviceCount = leDeviceCount;
  }

  llaMaxDeviceCount = self->_llaMaxDeviceCount;
  if (self->_leaMaxDeviceCount > leaDeviceCount)
  {
    leaMaxDeviceCount = self->_leaMaxDeviceCount;
  }

  self->_btMaxDeviceCount = btMaxDeviceCount;
  self->_a2dpMaxDeviceCount = a2dpMaxDeviceCount;
  self->_escoMaxDeviceCount = escoMaxDeviceCount;
  self->_scoMaxDeviceCount = scoMaxDeviceCount;
  self->_hidMaxDeviceCount = hidMaxDeviceCount;
  self->_leMaxDeviceCount = leMaxDeviceCount;
  if (llaMaxDeviceCount > llaDeviceCount)
  {
    llaDeviceCountCopy = llaMaxDeviceCount;
  }

  self->_leaMaxDeviceCount = leaMaxDeviceCount;
  self->_llaMaxDeviceCount = llaDeviceCountCopy;
  [WCM_Logging logLevel:4 message:@"HPCellularCA (updateHPCellularCoexStatsWithBtDeviceCount): [btMaxDeviceCount = %d, a2dpMaxDeviceCount = %d, escoMaxDeviceCount = %d, scoMaxDeviceCount = %d, hidMaxDeviceCount = %d, leMaxDeviceCount = %d, leaMaxDeviceCount = %d, llaMaxDeviceCount = %d]", btMaxDeviceCount, a2dpMaxDeviceCount, escoMaxDeviceCount, scoMaxDeviceCount, hidMaxDeviceCount, leMaxDeviceCount, leaMaxDeviceCount, llaDeviceCountCopy];
}

- (void)submitHPCellularCoexStats
{
  v2 = *&self->_escoMaxDeviceCount;
  [WCM_Logging logLevel:4 message:@"HPCellularCA (submitHPCellularCoexStats): Send HPCellular CA event: [btMaxDeviceCount = %d, a2dpMaxDeviceCount = %d, escoMaxDeviceCount = %d, scoMaxDeviceCount = %d, hidMaxDeviceCount = %d, leMaxDeviceCount = %d, leaMaxDeviceCount = %d, llaMaxDeviceCount = %d]", self->_btMaxDeviceCount, self->_a2dpMaxDeviceCount, self->_escoMaxDeviceCount, self->_scoMaxDeviceCount, self->_hidMaxDeviceCount, self->_leMaxDeviceCount, self->_leaMaxDeviceCount, self->_llaMaxDeviceCount];
  AnalyticsSendEventLazy();
}

@end