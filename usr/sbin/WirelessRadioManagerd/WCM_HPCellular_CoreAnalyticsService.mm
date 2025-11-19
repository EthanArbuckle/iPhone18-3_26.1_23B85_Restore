@interface WCM_HPCellular_CoreAnalyticsService
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)singleton;
- (WCM_HPCellular_CoreAnalyticsService)init;
- (void)resetHPCellularCoexStatsMetrics;
- (void)submitHPCellularCoexStats;
- (void)updateHPCellularCoexStatsWithBtDeviceCount:(unint64_t)a3 a2dpDeviceCount:(unint64_t)a4 escoDeviceCount:(unint64_t)a5 scoDeviceCount:(unint64_t)a6 hidDeviceCount:(unint64_t)a7 leDeviceCount:(unint64_t)a8 leaDeviceCount:(unint64_t)a9 llaDeviceCount:(unint64_t)a10;
@end

@implementation WCM_HPCellular_CoreAnalyticsService

+ (id)singleton
{
  result = qword_1002B7EC0;
  if (!qword_1002B7EC0)
  {
    v4.receiver = a1;
    v4.super_class = &OBJC_METACLASS___WCM_HPCellular_CoreAnalyticsService;
    result = [objc_msgSendSuper2(&v4 allocWithZone:{0), "init"}];
    qword_1002B7EC0 = result;
  }

  return result;
}

+ (id)allocWithZone:(_NSZone *)a3
{
  v3 = [a1 singleton];

  return v3;
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

- (void)updateHPCellularCoexStatsWithBtDeviceCount:(unint64_t)a3 a2dpDeviceCount:(unint64_t)a4 escoDeviceCount:(unint64_t)a5 scoDeviceCount:(unint64_t)a6 hidDeviceCount:(unint64_t)a7 leDeviceCount:(unint64_t)a8 leaDeviceCount:(unint64_t)a9 llaDeviceCount:(unint64_t)a10
{
  leaMaxDeviceCount = a9;
  v10 = a10;
  btMaxDeviceCount = self->_btMaxDeviceCount;
  a2dpMaxDeviceCount = self->_a2dpMaxDeviceCount;
  if (btMaxDeviceCount <= a3)
  {
    btMaxDeviceCount = a3;
  }

  if (a2dpMaxDeviceCount <= a4)
  {
    a2dpMaxDeviceCount = a4;
  }

  escoMaxDeviceCount = self->_escoMaxDeviceCount;
  scoMaxDeviceCount = self->_scoMaxDeviceCount;
  if (escoMaxDeviceCount <= a5)
  {
    escoMaxDeviceCount = a5;
  }

  if (scoMaxDeviceCount <= a6)
  {
    scoMaxDeviceCount = a6;
  }

  hidMaxDeviceCount = self->_hidMaxDeviceCount;
  leMaxDeviceCount = self->_leMaxDeviceCount;
  if (hidMaxDeviceCount <= a7)
  {
    hidMaxDeviceCount = a7;
  }

  if (leMaxDeviceCount <= a8)
  {
    leMaxDeviceCount = a8;
  }

  llaMaxDeviceCount = self->_llaMaxDeviceCount;
  if (self->_leaMaxDeviceCount > a9)
  {
    leaMaxDeviceCount = self->_leaMaxDeviceCount;
  }

  self->_btMaxDeviceCount = btMaxDeviceCount;
  self->_a2dpMaxDeviceCount = a2dpMaxDeviceCount;
  self->_escoMaxDeviceCount = escoMaxDeviceCount;
  self->_scoMaxDeviceCount = scoMaxDeviceCount;
  self->_hidMaxDeviceCount = hidMaxDeviceCount;
  self->_leMaxDeviceCount = leMaxDeviceCount;
  if (llaMaxDeviceCount > a10)
  {
    v10 = llaMaxDeviceCount;
  }

  self->_leaMaxDeviceCount = leaMaxDeviceCount;
  self->_llaMaxDeviceCount = v10;
  [WCM_Logging logLevel:4 message:@"HPCellularCA (updateHPCellularCoexStatsWithBtDeviceCount): [btMaxDeviceCount = %d, a2dpMaxDeviceCount = %d, escoMaxDeviceCount = %d, scoMaxDeviceCount = %d, hidMaxDeviceCount = %d, leMaxDeviceCount = %d, leaMaxDeviceCount = %d, llaMaxDeviceCount = %d]", btMaxDeviceCount, a2dpMaxDeviceCount, escoMaxDeviceCount, scoMaxDeviceCount, hidMaxDeviceCount, leMaxDeviceCount, leaMaxDeviceCount, v10];
}

- (void)submitHPCellularCoexStats
{
  v2 = *&self->_escoMaxDeviceCount;
  [WCM_Logging logLevel:4 message:@"HPCellularCA (submitHPCellularCoexStats): Send HPCellular CA event: [btMaxDeviceCount = %d, a2dpMaxDeviceCount = %d, escoMaxDeviceCount = %d, scoMaxDeviceCount = %d, hidMaxDeviceCount = %d, leMaxDeviceCount = %d, leaMaxDeviceCount = %d, llaMaxDeviceCount = %d]", self->_btMaxDeviceCount, self->_a2dpMaxDeviceCount, self->_escoMaxDeviceCount, self->_scoMaxDeviceCount, self->_hidMaxDeviceCount, self->_leMaxDeviceCount, self->_leaMaxDeviceCount, self->_llaMaxDeviceCount];
  AnalyticsSendEventLazy();
}

@end