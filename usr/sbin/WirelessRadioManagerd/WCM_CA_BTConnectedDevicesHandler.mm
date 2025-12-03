@interface WCM_CA_BTConnectedDevicesHandler
- (WCM_CA_BTConnectedDevicesHandler)init;
- (id)getProfileName:(int64_t)name;
- (void)dealloc;
- (void)disableCoexStatsMetricsAt:(double)at;
- (void)enableCoexStatsMetrics:(int64_t)metrics at:(double)at;
- (void)resetBTCoexStatsMetrics;
- (void)submitEvent:(id)event;
- (void)updateBTCoexConnectedDevices:(WCM_BTConnections *)devices at:(double)at;
@end

@implementation WCM_CA_BTConnectedDevicesHandler

- (WCM_CA_BTConnectedDevicesHandler)init
{
  v5.receiver = self;
  v5.super_class = WCM_CA_BTConnectedDevicesHandler;
  v2 = [(WCM_CA_BTConnectedDevicesHandler *)&v5 init];
  v3 = v2;
  if (v2)
  {
    *&v2->mWiFiState = 0;
    v2->mConnectedDevicesMetricsArray = objc_alloc_init(NSMutableArray);
    v3->mBTCoexStatsMetrics.isActive = 0;
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WCM_CA_BTConnectedDevicesHandler;
  [(WCM_CA_BTConnectedDevicesHandler *)&v3 dealloc];
}

- (void)resetBTCoexStatsMetrics
{
  self->mBTCoexStatsMetrics.btrssiCoexAccum = 0;
  *&self->mBTCoexStatsMetrics.btDurAirMs = 0u;
  *&self->mBTCoexStatsMetrics.btrssiValidCnt = 0u;
  *&self->mBTCoexStatsMetrics.hybridCnt = 0u;
  *&self->mBTCoexStatsMetrics.totDurMs = 0u;
  *&self->mBTCoexStatsMetrics.isActive = 0u;
  *&self->mBTCoexStatsMetrics.profileIndex = 0u;
  self->mBTCoexStatsMetrics.isActive = 0;
}

- (id)getProfileName:(int64_t)name
{
  if ((name + 1) > 0xE)
  {
    v3 = @"Other";
  }

  else
  {
    v3 = *(&off_100240118 + name + 1);
  }

  return [NSString stringWithFormat:@"%@_2.4G", v3];
}

- (void)submitEvent:(id)event
{
  getEnumerationString = [event getEnumerationString];
  [event getDuration];
  v6 = v5;
  [event getDurationInWiFi2G];
  if (v6 < 0x1F)
  {
    [WCM_Logging logLevel:2 message:@"[BTCoexCA] Ignore CA event: BT_ConnectedDevices, (%@) duration is too short, %llu seconds", getEnumerationString, v6];
  }

  else
  {
    v8 = &stru_100255120;
    if (v6 > 0x77)
    {
      v8 = @"s";
    }

    [WCM_Logging logLevel:2 message:@"[BTCoexCA] Submit CA event: BT_ConnectedDevices, (%@) for %llu minute%@, %llu %% in WiFi 2G band", getEnumerationString, v6 / 0x3C, v8, 100 * v7 / v6];
    AnalyticsSendEventLazy();
  }
}

- (void)enableCoexStatsMetrics:(int64_t)metrics at:(double)at
{
  if (!self->mBTCoexStatsMetrics.isActive)
  {
    [WCM_Logging logLevel:2 message:@"[BTCoexCA] enableCoexStatsMetrics:%@", [(WCM_CA_BTConnectedDevicesHandler *)self getProfileName:?]];
    self->mBTCoexStatsMetrics.profileIndex = metrics;
    self->mBTCoexStatsMetrics.timestamp = at;
    self->mBTCoexStatsMetrics.isActive = 1;
  }
}

- (void)disableCoexStatsMetricsAt:(double)at
{
  if (self->mBTCoexStatsMetrics.isActive)
  {
    v5 = [(WCM_CA_BTConnectedDevicesHandler *)self getProfileName:self->mBTCoexStatsMetrics.profileIndex];
    [WCM_Logging logLevel:2 message:@"[BTCoexCA] disableCoexStatsMetrics:%@", v5];
    v6 = (at - self->mBTCoexStatsMetrics.timestamp);
    totDurMs = self->mBTCoexStatsMetrics.totDurMs;
    if (v6 >= 0x1F && totDurMs && *&self->mBTCoexStatsMetrics.tddCnt != 0)
    {
      v8 = (v6 * 0x8888888888888889) >> 64;
      wlrssiValidCnt = self->mBTCoexStatsMetrics.wlrssiValidCnt;
      if (wlrssiValidCnt)
      {
        v10 = self->mBTCoexStatsMetrics.wlrssiCoexAccum / wlrssiValidCnt;
      }

      else
      {
        v10 = 0;
      }

      v11 = v8 >> 5;
      btrssiValidCnt = self->mBTCoexStatsMetrics.btrssiValidCnt;
      if (btrssiValidCnt)
      {
        v13 = self->mBTCoexStatsMetrics.btrssiCoexAccum / btrssiValidCnt;
      }

      else
      {
        v13 = 0;
      }

      [WCM_Logging logLevel:2 message:@"[BTCoexCA] Submit CA event: BTCoexStats, profileName=%@, durMin=%llu, btDurPercent=%llu, hybridPercent=%llu, parallelPercent=%llu, btDurAirPercent=%llu, wlrssiCoexAvg=%lld, btrssiCoexAvg=%lld", v5, v11, 100 * self->mBTCoexStatsMetrics.btDurMs / totDurMs, 100 * self->mBTCoexStatsMetrics.hybridCnt / (self->mBTCoexStatsMetrics.hybridCnt + self->mBTCoexStatsMetrics.tddCnt), 100 * self->mBTCoexStatsMetrics.parallelCnt / (self->mBTCoexStatsMetrics.hybridCnt + self->mBTCoexStatsMetrics.tddCnt), 100 * self->mBTCoexStatsMetrics.btDurAirMs / totDurMs, v10, v13];
      AnalyticsSendEventLazy();
    }

    else
    {
      [WCM_Logging logLevel:2 message:@"[BTCoexCA] Ignore CA event: BTCoexStats, durSec=%llu, tddCnt=%llu, hybridCnt=%llu, parallelCnt=%llu, btDurMs=%llu, btDurAirMs=%llu, wlrssiCoexAccum=%lld, wlrssiValidCnt=%llu, btrssiCoexAccum=%lld, btrssiValidCnt=%llu, totDurMs=%llu", v6, self->mBTCoexStatsMetrics.tddCnt, self->mBTCoexStatsMetrics.hybridCnt, self->mBTCoexStatsMetrics.parallelCnt, self->mBTCoexStatsMetrics.btDurMs, self->mBTCoexStatsMetrics.btDurAirMs, self->mBTCoexStatsMetrics.wlrssiCoexAccum, self->mBTCoexStatsMetrics.wlrssiValidCnt, self->mBTCoexStatsMetrics.btrssiCoexAccum, self->mBTCoexStatsMetrics.btrssiValidCnt, totDurMs];
    }

    [(WCM_CA_BTConnectedDevicesHandler *)self resetBTCoexStatsMetrics];
  }
}

- (void)updateBTCoexConnectedDevices:(WCM_BTConnections *)devices at:(double)at
{
  v7 = *&devices->numHID;
  [WCM_Logging logLevel:2 message:@"[BTCoexCA] updateConnectedDevices with numA2DP=%lu, numLLA=%lu, numHID=%lu, numSCO=%lu, numeSCO=%lu, numLE=%lu, numLEA=%lu", devices->numA2DP, devices->numLLA, devices->numHID, devices->numSCO, devices->numeSCO, devices->numLE, devices->numLEA];
  v8 = +[NSMutableArray array];
  v9 = vaddvq_s64(vaddq_s64(*&devices->numA2DP, *&devices->numHID)) + devices->numeSCO + devices->numLE + devices->numLEA;
  v18 = v9 != 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  mConnectedDevicesMetricsArray = self->mConnectedDevicesMetricsArray;
  v11 = [(NSMutableArray *)mConnectedDevicesMetricsArray countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(mConnectedDevicesMetricsArray);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        numConnections = [v15 numConnections];
        if (v9 <= numConnections)
        {
          if (v9 < numConnections || ![v15 isEqualTo:devices])
          {
LABEL_15:
            [v15 stopTimer:at wifi2GStartTime:self->mWiFi2GStartTime];
            [(WCM_CA_BTConnectedDevicesHandler *)self submitEvent:v15];
            [v8 addObject:v15];
            continue;
          }

          if (([v15 isTimerActive] & 1) == 0)
          {
            +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 2, @"[BTCoexCA] Resume timer: (%@)", [v15 getEnumerationString]);
            [v15 startTimer:at];
          }

          v18 = 0;
        }

        else
        {
          if (![v15 isSubsetOf:devices])
          {
            goto LABEL_15;
          }

          if ([v15 isTimerActive])
          {
            +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 2, @"[BTCoexCA] Pause timer: (%@)", [v15 getEnumerationString]);
            [v15 stopTimer:at wifi2GStartTime:self->mWiFi2GStartTime];
          }
        }
      }

      v12 = [(NSMutableArray *)mConnectedDevicesMetricsArray countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  if ([v8 count])
  {
    [(NSMutableArray *)self->mConnectedDevicesMetricsArray removeObjectsInArray:v8];
  }

  if (v18)
  {
    v17 = [[WCM_BTConnectedDevicesMetrics alloc] initWithBTConnections:devices at:at];
    [(NSMutableArray *)self->mConnectedDevicesMetricsArray addObject:v17];
    [WCM_Logging logLevel:2 message:@"[BTCoexCA] Start timer: (%@)", [(WCM_BTConnectedDevicesMetrics *)v17 getEnumerationString]];
  }
}

@end