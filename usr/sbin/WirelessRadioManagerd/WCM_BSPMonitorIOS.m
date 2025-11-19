@interface WCM_BSPMonitorIOS
- (WCM_BSPMonitorIOS)init;
- (int)selectBand_preferred:(int)a3 prohibited:(int)a4;
- (void)ULLAModeTransition;
- (void)checkBTRegulatoryInfo;
- (void)dealloc;
- (void)didEnterBSPActiveState;
- (void)handleBTBandSwitchRequestEvent:(int)a3 targetBand:(int)a4;
- (void)handleBTRegulatoryInfoEvent:(id)a3 allowedBands:(int)a4;
- (void)handleBandSwitchRejectEvent:(int)a3 btTargetBand:(int)a4;
- (void)handleBandSwitchStatusEvent:(BOOL)a3 btSubband:(int)a4 successCount:(unint64_t)a5 failCount:(unint64_t)a6;
- (void)handleBandSwitchStatusUpdatedEvent;
- (void)handleChannelQualityInfoEvent:(__CFDictionary *)a3;
- (void)handleChannelQualityInfoUpdatedEvent;
- (void)handleCoexModeFailEvent:(int)a3 btSubband:(int)a4;
- (void)handleRDCountryCodeChangedEvent;
- (void)handleShowUCMStatusEvent;
- (void)handleWiFiChannelQualityEvent:(int)a3 quality:(unint64_t)a4;
- (void)handleWiFiCountryCodeChangedEvent;
- (void)handleWiFiFrequencyBandForBTEvent:(int)a3;
- (void)handleWiFiRegulatoryInfoEvent:(unint64_t)a3;
- (void)handleWiFiStateEvent:(int)a3 wifiChannel:(unsigned int)a4 isNanPhs:(BOOL)a5;
- (void)handleWiFiStatusUpdateEvent:(BOOL)a3 isFWReset:(BOOL)a4;
- (void)initBTStatus;
- (void)initWiFiStatus;
- (void)readRDCountryCode;
- (void)requestBTStatus;
- (void)sendBTStatusRequestToBT;
- (void)sendBTStatusToWiFi;
- (void)sendGetBandSwitchStatusToWiFi;
- (void)sendGetChannelQualityInfoToWiFi;
- (void)sendGetNanPhsStateToWiFi;
- (void)sendGetRegulatoryInfoToWiFi;
- (void)sendRegulatoryInfoRequestToBT;
- (void)sendSetFrequencyBandToBT:(int)a3 forced:(BOOL)a4;
- (void)sendWiFiStatusToBT;
- (void)updateBSPState;
- (void)updateFrequencyBandForBT;
- (void)willLeaveBSPActiveState;
@end

@implementation WCM_BSPMonitorIOS

- (WCM_BSPMonitorIOS)init
{
  v6.receiver = self;
  v6.super_class = WCM_BSPMonitorIOS;
  v2 = [(WCM_BSPMonitor *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(WCM_BSPMonitorIOS *)v2 initWiFiStatus];
    [(WCM_BSPMonitorIOS *)v3 initBTStatus];
    v3->mBSPState = 0;
    v3->mLastGetBandSwitchStatusTs = 0.0;
    v3->mLastGetChannelQualityInfoTs = 0.0;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_100049FB8, kRegulatoryDomainUpdateNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    [(WCM_BSPMonitorIOS *)v3 readRDCountryCode];
  }

  [WCM_Logging logLevel:2 message:@"BSPMonitor Init"];
  return v3;
}

- (void)dealloc
{
  [WCM_Logging logLevel:2 message:@"BSPMonitor Dealloc"];
  v3.receiver = self;
  v3.super_class = WCM_BSPMonitorIOS;
  [(WCM_BSPMonitorIOS *)&v3 dealloc];
}

- (void)initWiFiStatus
{
  *&self->mWiFiStatus.chqInfo_5G_Low.timestamp = 0u;
  *&self->mWiFiStatus.chqInfo_5G_High.quality = 0u;
  *&self->mWiFiStatus.powerState = 0u;
  *&self->mWiFiStatus.allowedBands = 0u;
  *&self->mWiFiStatus.frequencyBandForBTInfo.timestamp = 0u;
  *&self->mWiFiStatus.chqInfo_2_4G.quality = 0u;
  *&self->mWiFiStatus.chqInfo_5G_Low.band = 0u;
  *&self->mWiFiStatus.coexMode = 0;
  self->mWiFiStatus.allowedBands = 19;
  self->mWiFiStatus.chqInfo_2_4G.quality = -1;
  self->mWiFiStatus.chqInfo_5G_Low.quality = -1;
  self->mWiFiStatus.chqInfo_5G_High.quality = -1;
  [WCM_Logging logLevel:2 message:@"%s", "[WCM_BSPMonitorIOS initWiFiStatus]"];
}

- (void)initBTStatus
{
  p_mBTStatus = &self->mBTStatus;
  countryCode = self->mBTStatus.countryCode;
  if (countryCode)
  {
  }

  *&p_mBTStatus->powerState = 0u;
  *&p_mBTStatus->countryCode = 0u;
  self->mBTConfig.targetBand = 0;
  p_mBTStatus->allowedBands = 1;
  p_mBTStatus->frequencyBand = -1;
  [WCM_Logging logLevel:2 message:@"%s", "[WCM_BSPMonitorIOS initBTStatus]"];
}

- (int)selectBand_preferred:(int)a3 prohibited:(int)a4
{
  allowedBands = self->mBTStatus.allowedBands;
  if (!self->mWiFiStatus.powerState && (allowedBands & 0x40) == 0 && ((self->mBTStatus.allowedBands & 0x12) == 2 || (self->mBTStatus.allowedBands & 0x12) == 16))
  {
    return 1;
  }

  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = -1;
  }

  v8 = allowedBands & v7;
  if ((a4 & 0x40) == 0 && (v8 & 0x40) != 0)
  {
    return 64;
  }

  if ((a4 & 0x10) == 0 && (v8 & 0x10) != 0)
  {
    return 16;
  }

  if ((((a4 & 2) == 0) & ((v8 & 2) >> 1)) != 0)
  {
    return 2;
  }

  return 1;
}

- (void)readRDCountryCode
{
  v3 = &xpc_release_ptr;
  v4 = +[RDEstimate currentEstimates];
  if (v4 && (v5 = v4, [v4 count]) && (v43 = 0u, v44 = 0u, v41 = 0u, v42 = 0u, (v6 = objc_msgSend(v5, "countByEnumeratingWithState:objects:count:", &v41, v46, 16)) != 0))
  {
    v7 = v6;
    v33 = self;
    v35 = 0;
    v8 = 0;
    v9 = *v42;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v42 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v41 + 1) + 8 * i);
        v12 = [v11 countryCode];
        if (v12)
        {
          v13 = v12;
          if ([v12 length])
          {
            if (v8)
            {
              +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 2, @"%s: currentCountryCode count = %d, ignore %@", "-[WCM_BSPMonitorIOS readRDCountryCode]", [v5 count], objc_msgSend(v11, "countryCode"), v32);
            }

            else
            {
              v8 = [NSString stringWithFormat:@"%s%s%@", "CC", ":", v13];
              [objc_msgSend(v11 "timestamp")];
              v35 = v14;
              +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 2, @"%s: currentCountryCode = %@, timestamp = %@, timeStampUnixTimeSec = %lld", "-[WCM_BSPMonitorIOS readRDCountryCode]", [v11 countryCode], objc_msgSend(v11, "timestamp"), v14);
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v7);
    self = v33;
    v15 = v35;
    v3 = &xpc_release_ptr;
    if (v8)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = [v3[265] lastKnownEstimates];
  if (!v16)
  {
    goto LABEL_33;
  }

  v17 = v16;
  if (![v16 count])
  {
    goto LABEL_33;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (!v18)
  {
    goto LABEL_33;
  }

  v19 = v18;
  v34 = self;
  v36 = v15;
  v8 = 0;
  v20 = *v38;
  do
  {
    for (j = 0; j != v19; j = j + 1)
    {
      if (*v38 != v20)
      {
        objc_enumerationMutation(v17);
      }

      v22 = *(*(&v37 + 1) + 8 * j);
      v23 = [v22 countryCode];
      if (v23)
      {
        v24 = v23;
        if ([v23 length])
        {
          if (v8)
          {
            +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 2, @"%s: lastKnownCountryCode count = %d, ignore %@", "-[WCM_BSPMonitorIOS readRDCountryCode]", [v17 count], objc_msgSend(v22, "countryCode"), v32);
          }

          else
          {
            v8 = [NSString stringWithFormat:@"%s%s%@", "LKC", ":", v24];
            [objc_msgSend(v22 "timestamp")];
            v36 = v25;
            +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 2, @"%s: lastKnownCountryCode = %@, timestamp = %@, timeStampUnixTimeSec = %lld", "-[WCM_BSPMonitorIOS readRDCountryCode]", [v22 countryCode], objc_msgSend(v22, "timestamp"), v25);
          }
        }
      }
    }

    v19 = [v17 countByEnumeratingWithState:&v37 objects:v45 count:16];
  }

  while (v19);
  self = v34;
  v15 = v36;
  if (!v8)
  {
LABEL_33:
    v26 = MGCopyAnswer();
    if (!v26)
    {
      goto LABEL_51;
    }

    v27 = v26;
    if (![v26 length])
    {
      goto LABEL_51;
    }

    v8 = [NSString stringWithFormat:@"%s%s%@", "RC", ":", v27];
    [WCM_Logging logLevel:2 message:@"%s: regionCode = %@", "[WCM_BSPMonitorIOS readRDCountryCode]", v27];
    if (!v8)
    {
      goto LABEL_51;
    }

    v15 = 0;
  }

LABEL_37:
  if (![(NSString *)v8 length]|| ![(NSString *)v8 hasPrefix:@"CC:"]&& ![(NSString *)v8 hasPrefix:@"RC:"]&& ![(NSString *)v8 hasPrefix:@"LKC:"])
  {
LABEL_51:
    self->mCountryCode = 0;
    self->mCountryCodeTimeStampUnixSec = 0;
    [WCM_Logging logLevel:0 message:@"%s: invalid countryCode", "[WCM_BSPMonitorIOS readRDCountryCode]", v30, v31];
    return;
  }

  mCountryCode = self->mCountryCode;
  if (!mCountryCode)
  {
LABEL_50:
    self->mCountryCode = v8;
    self->mCountryCodeTimeStampUnixSec = v15;
    [WCM_Logging logLevel:2 message:@"%s final read RD country code: %@, mCountryCodeTimeStampUnixSec: %lld", "[WCM_BSPMonitorIOS readRDCountryCode]", self->mCountryCode, v15];
    return;
  }

  if (![(NSString *)mCountryCode length]|| ![(NSString *)self->mCountryCode hasPrefix:@"CC:"]&& ![(NSString *)self->mCountryCode hasPrefix:@"RC:"]&& ![(NSString *)self->mCountryCode hasPrefix:@"LKC:"]|| ![(NSString *)self->mCountryCode isEqualToString:v8]|| self->mCountryCodeTimeStampUnixSec != v15)
  {
    v29 = self->mCountryCode;
    if (v29)
    {
    }

    goto LABEL_50;
  }
}

- (void)sendSetFrequencyBandToBT:(int)a3 forced:(BOOL)a4
{
  if (a3 == 1 || self->mBTStatus.powerState)
  {
    self->mBTConfig.targetBand = a3;
    if (a4 || (frequencyBand = self->mBTStatus.frequencyBand, frequencyBand != a3) && (frequencyBand != -1 ? (v7 = self->mBSPState == 4) : (v7 = 1), !v7 && self->mBTStatus.countryCode))
    {
      v5 = [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
      if (v5)
      {
        [WCM_Logging logLevel:2 message:@"WCMBSP:%s sending new targetBand=0x%x to BT.", "[WCM_BSPMonitorIOS sendSetFrequencyBandToBT:forced:]", self->mBTConfig.targetBand];
        if (self->mBTConfig.targetBand != 64)
        {
          allowedBands = self->mBTStatus.allowedBands;
        }

        [v5 bspSetFrequencyBandToUse:? allowedBands:?];
      }

      else
      {
        [WCM_Logging logLevel:0 message:@"WCMBSP:%s btController not available", "[WCM_BSPMonitorIOS sendSetFrequencyBandToBT:forced:]"];
      }
    }
  }
}

- (void)sendWiFiStatusToBT
{
  if (self->mBTStatus.powerState)
  {
    v3 = [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    if (v3)
    {
      powerState = self->mWiFiStatus.powerState;

      [v3 bspUpdateWiFiStatus:powerState];
    }

    else
    {
      [WCM_Logging logLevel:0 message:@"WCMBSP:%s btController not available", "[WCM_BSPMonitorIOS sendWiFiStatusToBT]"];
    }
  }
}

- (void)sendBTStatusRequestToBT
{
  v2 = [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  if (v2)
  {

    [v2 bspStatusRequest];
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"WCMBSP:%s btController not available", "[WCM_BSPMonitorIOS sendBTStatusRequestToBT]"];
  }
}

- (void)sendRegulatoryInfoRequestToBT
{
  v3 = [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  if (v3)
  {
    mCountryCode = self->mCountryCode;
    mCountryCodeTimeStampUnixSec = self->mCountryCodeTimeStampUnixSec;

    [v3 bspRegulatoryInfoRequest:mCountryCode timeStamp:mCountryCodeTimeStampUnixSec];
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"WCMBSP:%s btController not available", "[WCM_BSPMonitorIOS sendRegulatoryInfoRequestToBT]"];
  }
}

- (void)checkBTRegulatoryInfo
{
  mCountryCode = self->mCountryCode;
  if (mCountryCode && [(NSString *)mCountryCode length]&& ([(NSString *)self->mCountryCode hasPrefix:@"CC:"]|| [(NSString *)self->mCountryCode hasPrefix:@"RC:"]|| [(NSString *)self->mCountryCode hasPrefix:@"LKC:"]) && ((countryCode = self->mBTStatus.countryCode) == 0 || ![(NSString *)countryCode length]|| ![(NSString *)self->mBTStatus.countryCode hasPrefix:@"CC:"]&& ![(NSString *)self->mBTStatus.countryCode hasPrefix:@"RC:"]&& ![(NSString *)self->mBTStatus.countryCode hasPrefix:@"LKC:"]|| ![(NSString *)self->mCountryCode isEqualToString:self->mBTStatus.countryCode]))
  {

    [(WCM_BSPMonitorIOS *)self sendRegulatoryInfoRequestToBT];
  }
}

- (void)sendGetRegulatoryInfoToWiFi
{
  if (self->mWiFiStatus.powerState)
  {
    v2 = [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    if (v2)
    {

      [v2 bspRegulatoryInfoRequest];
    }

    else
    {
      [WCM_Logging logLevel:0 message:@"WCMBSP:%s wifiController not available", "[WCM_BSPMonitorIOS sendGetRegulatoryInfoToWiFi]"];
    }
  }
}

- (void)sendGetNanPhsStateToWiFi
{
  if (self->mWiFiStatus.powerState)
  {
    v2 = [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    if (v2)
    {

      [v2 bspNanPhsStateRequest];
    }

    else
    {
      [WCM_Logging logLevel:0 message:@"WCMBSP:%s wifiController not available", "[WCM_BSPMonitorIOS sendGetNanPhsStateToWiFi]"];
    }
  }
}

- (void)sendGetBandSwitchStatusToWiFi
{
  if (self->mWiFiStatus.powerState)
  {
    v2 = [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    if (v2)
    {

      [v2 bspGetBandSwitchStatus];
    }

    else
    {
      [WCM_Logging logLevel:0 message:@"WCMBSP:%s wifiController not available", "[WCM_BSPMonitorIOS sendGetBandSwitchStatusToWiFi]"];
    }
  }
}

- (void)sendGetChannelQualityInfoToWiFi
{
  if (self->mWiFiStatus.powerState)
  {
    v2 = [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    if (v2)
    {

      [v2 bspGetChannelQualityInfo];
    }

    else
    {
      [WCM_Logging logLevel:0 message:@"WCMBSP:%s wifiController not available", "[WCM_BSPMonitorIOS sendGetChannelQualityInfoToWiFi]"];
    }
  }
}

- (void)sendBTStatusToWiFi
{
  if (self->mWiFiStatus.powerState)
  {
    v3 = [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    if (v3)
    {
      powerState = self->mBTStatus.powerState;
      frequencyBand = self->mBTStatus.frequencyBand;
      ullaMode = self->mBTStatus.ullaMode;

      [v3 bspUpdateBTStatus_powerState:powerState frequencyBand:frequencyBand ullaMode:ullaMode];
    }

    else
    {
      [WCM_Logging logLevel:0 message:@"WCMBSP:%s wifiController not available", "[WCM_BSPMonitorIOS sendBTStatusToWiFi]"];
    }
  }
}

- (void)updateFrequencyBandForBT
{
  mBSPState = self->mBSPState;
  if (mBSPState)
  {
    if (mBSPState == 4)
    {
      return;
    }

    if (mBSPState != 2)
    {
      allowedBands = self->mBTStatus.allowedBands;
      if ((allowedBands & 0x40) != 0)
      {
        v7 = 64;
        goto LABEL_11;
      }

      v6 = (self->mWiFiStatus.allowedBands >> 1) & 9;
      if (v6 <= 7)
      {
        if (!v6)
        {
LABEL_9:
          v7 = 0;
LABEL_11:
          v8 = 0;
LABEL_12:
          v4 = [(WCM_BSPMonitorIOS *)self selectBand_preferred:v7 prohibited:v8];
          goto LABEL_13;
        }

LABEL_21:
        v7 = 16;
        v8 = 2;
        goto LABEL_12;
      }

      if (v6 != 8)
      {
        if ((~allowedBands & 0x12) != 0)
        {
          v7 = 0;
          v8 = 18;
          goto LABEL_12;
        }

        if (self->mWiFiStatus.wifiState != 3)
        {
          goto LABEL_9;
        }

        wifiChannel = self->mWiFiStatus.wifiChannel;
        if (wifiChannel - 32 <= 0x24)
        {
          goto LABEL_21;
        }

        if (wifiChannel == 163 || wifiChannel - 166 < 0xFFFFFFBA)
        {
          goto LABEL_9;
        }
      }

      v7 = 2;
      v8 = 16;
      goto LABEL_12;
    }
  }

  v4 = [(WCM_BSPMonitorIOS *)self selectBandWithPreferredBands:0];
LABEL_13:

  [(WCM_BSPMonitorIOS *)self sendSetFrequencyBandToBT:v4];
}

- (void)didEnterBSPActiveState
{
  allowedBands = self->mWiFiStatus.allowedBands;
  frequencyBand = self->mBTStatus.frequencyBand;
  v5 = [(WCM_BSPMonitor *)self getTimeToTSTForULLAMode:self->mBTStatus.ullaMode];

  [(WCM_BSPMonitorIOS *)self sendSetCoexModeToWiFi:1 wifiSupportedBands:allowedBands btCurrentBand:frequencyBand btSupportedBands:19 setTimeToTSTOnly:0 timeToTST:v5];
}

- (void)ULLAModeTransition
{
  allowedBands = self->mWiFiStatus.allowedBands;
  targetBand = self->mBTConfig.targetBand;
  v5 = [(WCM_BSPMonitor *)self getTimeToTSTForULLAMode:self->mBTStatus.ullaMode];

  [(WCM_BSPMonitorIOS *)self sendSetCoexModeToWiFi:1 wifiSupportedBands:allowedBands btCurrentBand:targetBand btSupportedBands:19 setTimeToTSTOnly:1 timeToTST:v5];
}

- (void)willLeaveBSPActiveState
{
  v3 = [(WCM_BSPMonitor *)self getTimeToTSTForULLAMode:0];

  [(WCM_BSPMonitorIOS *)self sendSetCoexModeToWiFi:0 wifiSupportedBands:0 btCurrentBand:0 btSupportedBands:0 setTimeToTSTOnly:0 timeToTST:v3];
}

- (void)updateBSPState
{
  mBSPState = self->mBSPState;
  p_mBTStatus = &self->mBTStatus;
  powerState = self->mBTStatus.powerState;
  if (self->mWiFiStatus.powerState)
  {
    if (self->mBTStatus.powerState)
    {
      if ((~self->mWiFiStatus.allowedBands & 0x12) == 0 && (self->mBTStatus.allowedBands & 0x52) == 0x12 && self->mBTStatus.ullaMode)
      {
        self->mBSPState = 4;
        if (mBSPState == 4)
        {
          if (self->mBTStatus.ullaModeTransitioned)
          {
            [(WCM_BSPMonitorIOS *)self ULLAModeTransition];
            p_mBTStatus->ullaModeTransitioned = 0;
          }
        }

        else
        {

          [(WCM_BSPMonitorIOS *)self didEnterBSPActiveState];
        }

        return;
      }

      v6 = 3;
    }

    else
    {
      v6 = 1;
    }
  }

  else if (self->mBTStatus.powerState)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  self->mBSPState = v6;
  if (mBSPState == 4)
  {
    [(WCM_BSPMonitorIOS *)self willLeaveBSPActiveState];
    if (p_mBTStatus->powerState)
    {

      [(WCM_BSPMonitorIOS *)self requestBTStatus];
    }

    else
    {
      [WCM_Logging logLevel:2 message:@"WCMBSP:%s Not sending requestBTStatus due to Durant powered off.", "[WCM_BSPMonitorIOS updateBSPState]"];
    }
  }
}

- (void)handleWiFiStatusUpdateEvent:(BOOL)a3 isFWReset:(BOOL)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004B640;
  v4[3] = &unk_10023E880;
  v5 = a3;
  v6 = a4;
  v4[4] = self;
  sub_10004B5B8(v4);
}

- (void)handleWiFiFrequencyBandForBTEvent:(int)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10004B8B4;
  v3[3] = &unk_10023DBA0;
  v4 = a3;
  v3[4] = self;
  sub_10004B5B8(v3);
}

- (void)handleWiFiChannelQualityEvent:(int)a3 quality:(unint64_t)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004BA54;
  v4[3] = &unk_10023E0A8;
  v5 = a3;
  v4[4] = self;
  v4[5] = a4;
  sub_10004B5B8(v4);
}

- (void)handleWiFiRegulatoryInfoEvent:(unint64_t)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10004BCA0;
  v3[3] = &unk_10023DD88;
  v3[4] = self;
  v3[5] = a3;
  sub_10004B5B8(v3);
}

- (void)handleWiFiStateEvent:(int)a3 wifiChannel:(unsigned int)a4 isNanPhs:(BOOL)a5
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004BE08;
  v5[3] = &unk_10023DF40;
  v6 = a3;
  v7 = a4;
  v8 = a5;
  v5[4] = self;
  sub_10004B5B8(v5);
}

- (void)handleWiFiCountryCodeChangedEvent
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10004BFC8;
  v2[3] = &unk_10023DB28;
  v2[4] = self;
  sub_10004B5B8(v2);
}

- (void)handleBandSwitchStatusUpdatedEvent
{
  +[NSDate timeIntervalSinceReferenceDate];
  mLastGetBandSwitchStatusTs = self->mLastGetBandSwitchStatusTs;
  if (v3 >= mLastGetBandSwitchStatusTs + 1.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = ((mLastGetBandSwitchStatusTs - v3 + 1.0) * 1000.0);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004C1F0;
  v6[3] = &unk_10023DB28;
  v6[4] = self;
  sub_10004C0E0(v5, v6);
}

- (void)handleChannelQualityInfoUpdatedEvent
{
  +[NSDate timeIntervalSinceReferenceDate];
  mLastGetChannelQualityInfoTs = self->mLastGetChannelQualityInfoTs;
  if (v3 >= mLastGetChannelQualityInfoTs + 1.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = ((mLastGetChannelQualityInfoTs - v3 + 1.0) * 1000.0);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004C318;
  v6[3] = &unk_10023DB28;
  v6[4] = self;
  sub_10004C0E0(v5, v6);
}

- (void)handleBandSwitchStatusEvent:(BOOL)a3 btSubband:(int)a4 successCount:(unint64_t)a5 failCount:(unint64_t)a6
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004C400;
  v6[3] = &unk_10023E8A8;
  v8 = a3;
  v7 = a4;
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = self;
  sub_10004B5B8(v6);
}

- (void)handleChannelQualityInfoEvent:(__CFDictionary *)a3
{
  Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, a3);
  if (Copy)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10004C644;
    v5[3] = &unk_10023DD88;
    v5[4] = self;
    v5[5] = Copy;
    sub_10004B5B8(v5);
  }
}

- (void)handleCoexModeFailEvent:(int)a3 btSubband:(int)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004C74C;
  v4[3] = &unk_10023DD88;
  v5 = a3;
  v6 = a4;
  v4[4] = self;
  sub_10004B5B8(v4);
}

- (void)handleBandSwitchRejectEvent:(int)a3 btTargetBand:(int)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004C91C;
  v4[3] = &unk_10023DD88;
  v5 = a3;
  v6 = a4;
  v4[4] = self;
  sub_10004B5B8(v4);
}

- (void)requestBTStatus
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10004C9F4;
  v2[3] = &unk_10023DB28;
  v2[4] = self;
  sub_10004B5B8(v2);
}

- (void)handleShowUCMStatusEvent
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10004CAC0;
  v2[3] = &unk_10023DB28;
  v2[4] = self;
  sub_10004B5B8(v2);
}

- (void)handleBTBandSwitchRequestEvent:(int)a3 targetBand:(int)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004CF34;
  v4[3] = &unk_10023DD88;
  v5 = a3;
  v6 = a4;
  v4[4] = self;
  sub_10004B5B8(v4);
}

- (void)handleBTRegulatoryInfoEvent:(id)a3 allowedBands:(int)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004D0E4;
  v4[3] = &unk_10023E218;
  v5 = a4;
  v4[4] = a3;
  v4[5] = self;
  sub_10004B5B8(v4);
}

- (void)handleRDCountryCodeChangedEvent
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10004D370;
  v2[3] = &unk_10023DB28;
  v2[4] = self;
  sub_10004B5B8(v2);
}

@end