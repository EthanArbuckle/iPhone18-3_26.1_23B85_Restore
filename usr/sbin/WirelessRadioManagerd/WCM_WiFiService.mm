@interface WCM_WiFiService
- (BOOL)isFwTxPerValid;
- (BOOL)isLSMWiFiQualityGood;
- (BOOL)isRxRatioValid;
- (BOOL)isTxPerValid;
- (BOOL)isWiFiQualityGoodForProximityMode;
- (WCM_WiFiService)init;
- (double)getAdjustedBeaconPer;
- (double)getTxRetryPercent;
- (float)calculatePhyRate;
- (float)getCalculatedAvailableRxPhyBandwidth;
- (float)getCalculatedAvailableTxPhyBandwidth;
- (float)getEstimatedAvailableRxPhyBandwidth;
- (float)getL3Bandwidth:(float)bandwidth :(float)a4;
- (int)getConnectedStationCount;
- (void)dealloc;
- (void)getMinMaxAvailableRxBandwidth:(id *)bandwidth;
- (void)initializeiRATMetrics;
- (void)resetCumulativeCounters;
- (void)resetWiFiBWEstimationState;
- (void)setRSSI:(int64_t)i;
- (void)setSNR:(int64_t)r;
- (void)updateCCA:(int64_t)a;
- (void)updateFwTxPer;
- (void)updateFwTxStats:(int64_t)stats :(int64_t)a4 :(int64_t)a5;
- (void)updatePhyRates:(int64_t)rates :(int64_t)a4 :(int64_t)a5;
- (void)updateRxBeaconPer;
- (void)updateRxBeacons:(int64_t)beacons :(int64_t)a4;
- (void)updateRxRatio;
- (void)updateRxStats:(int64_t)stats :(int64_t)a4;
- (void)updateTxPer;
- (void)updateTxStats:(int64_t)stats :(int64_t)a4 :(int64_t)a5;
@end

@implementation WCM_WiFiService

- (void)updateTxPer
{
  v3 = self->m_txFail / (self->m_txFrame + 0.000001);
  if (v3 < 0.0 || v3 > 1.0)
  {
    [WCM_Logging logLevel:16 message:@"Invalid TX per number! %lf", *&v3];
    v3 = -600.0;
  }

  else
  {
    v5 = self->m_movingAverage_txFail / (self->m_movingAverage_txFrame + 0.000001);
    self->m_cumulative_txPer = self->m_cumulative_txFail / (self->m_cumulative_txFrame + 0.000001);
    self->m_movingAverageTxPer = v5;
  }

  self->m_txPer = v3;
}

- (void)updateFwTxPer
{
  v3 = self->m_fw_txFail / (self->m_fw_txFrame + 0.000001);
  if (v3 < 0.0 || v3 > 1.0)
  {
    [WCM_Logging logLevel:16 message:@"Invalid FW TX per number! %lf", *&v3];
    v3 = -600.0;
  }

  else
  {
    self->m_cumulative_fw_txPer = self->m_cumulative_fw_txFail / (self->m_cumulative_fw_txFrame + 0.000001);
  }

  self->m_fw_txPer = v3;
}

- (void)updateRxRatio
{
  m_rxFrame = self->m_rxFrame;
  m_rxRetrans = self->m_rxRetrans;
  self->m_rxRetryRatio = m_rxRetrans / (m_rxFrame + 0.000001);
  v4 = m_rxRetrans / ((m_rxFrame + m_rxRetrans) + 0.000001);
  m_movingAvgRxRetrans = self->m_movingAvgRxRetrans;
  v6 = m_movingAvgRxRetrans;
  v7 = self->m_movingAvgRxFrame + m_movingAvgRxRetrans;
  self->m_rxRetryPercent = v4;
  self->m_rxMovingAvgRetryPercent = v6 / (v7 + 0.000001);
  v8 = 1.0;
  if (v4 != 0.0)
  {
    v9 = (self->m_rxPrevRetryPercent - v4) * 100.0;
    if (v9 != 0.0)
    {
      v8 = v9 / (v4 * -100.0 + 1.0 + 0.000001) + 1.0;
    }
  }

  self->m_rxScalingFactor = v8;
  self->m_rxPrevRetryPercent = v4;
}

- (void)updateRxBeaconPer
{
  v3 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  m_rxBeacons = self->m_rxBeacons;
  m_rxBeaconSched = self->m_rxBeaconSched;
  if (m_rxBeacons >= m_rxBeaconSched)
  {
    m_rxBeacons = self->m_rxBeaconSched;
  }

  v6 = 1.0 - m_rxBeacons / (m_rxBeaconSched + 0.000001);
  if (v6 < 0.0 || v6 > 1.0)
  {
    [WCM_Logging logLevel:16 message:@"Invalid Beacon per number! %lf", *&v6];
    m_rxBeaconSched = self->m_rxBeaconSched;
  }

  else
  {
    v8 = v6 * 0.2 + self->m_beaconPer * 0.8;
    self->m_beaconPer = v6;
    self->m_movAvg_beaconPer = v8;
  }

  self->m_beaconPerIsValid = m_rxBeaconSched > [v3 dataWifiMinBeaconCount];
}

- (BOOL)isTxPerValid
{
  if (self->m_txFail + self->m_txFrame < 30 || self->m_txPer == -600.0)
  {
    v2 = 0;
    v3 = 0;
  }

  else
  {
    v2 = 1;
    v3 = 1;
  }

  self->m_valid_tx_error_measurements = v2;
  return v3;
}

- (BOOL)isFwTxPerValid
{
  if (self->m_fw_txFrame < 15 || self->m_fw_txPer == -600.0)
  {
    v2 = 0;
    v3 = 0;
  }

  else
  {
    v2 = 1;
    v3 = 1;
  }

  self->m_valid_fw_tx_error_measurements = v2;
  return v3;
}

- (int)getConnectedStationCount
{
  if (self->m_connectedStationCount >= 50)
  {
    return 0;
  }

  else
  {
    return self->m_connectedStationCount;
  }
}

- (double)getTxRetryPercent
{
  v2 = self->m_fw_txRetrans + self->m_txRetrans;
  result = v2 / ((v2 + self->m_txFrame + self->m_fw_txFrame) + 0.000001);
  self->m_txRetryPercent = result;
  return result;
}

- (WCM_WiFiService)init
{
  [WCM_Logging logLevel:2 message:@"WCM_WiFiService init"];
  v6.receiver = self;
  v6.super_class = WCM_WiFiService;
  v3 = [(WCM_WiFiService *)&v6 init];
  v4 = v3;
  if (v3)
  {
    v3->mDelegate = 0;
    [(WCM_WiFiService *)v3 initializeiRATMetrics];
  }

  return v4;
}

- (void)dealloc
{
  [WCM_Logging logLevel:2 message:@"WCM_WiFiService dealloc"];
  v3.receiver = self;
  v3.super_class = WCM_WiFiService;
  [(WCM_WiFiService *)&v3 dealloc];
}

- (void)initializeiRATMetrics
{
  *&self->m_txFrame = 0u;
  p_m_txFrame = &self->m_txFrame;
  *(p_m_txFrame - 5) = xmmword_100199400;
  *(p_m_txFrame + 1) = 0u;
  *(p_m_txFrame + 2) = 0u;
  *(p_m_txFrame + 3) = 0u;
  *(p_m_txFrame + 4) = 0u;
  *(p_m_txFrame + 5) = 0u;
  *(p_m_txFrame + 6) = 0u;
  *(p_m_txFrame + 7) = 0u;
  *(p_m_txFrame + 8) = 0u;
  *(p_m_txFrame + 9) = 0u;
  *(p_m_txFrame + 10) = 0u;
  *(p_m_txFrame + 11) = 0u;
  *(p_m_txFrame + 12) = 0u;
  *(p_m_txFrame + 13) = 0u;
  *(p_m_txFrame + 217) = 0u;
  p_m_txFrame[30] = 0;
  p_m_txFrame[31] = 0;
  p_m_txFrame[32] = 0;
  p_m_txFrame[33] = 0x3FF0000000000000;
  *(p_m_txFrame + 292) = 0x477DE800477DE800;
  *(p_m_txFrame + 76) = 1199433728;
  *(p_m_txFrame + 80) = 0;
  *(p_m_txFrame + 324) = 0;
  *(p_m_txFrame + 288) = 0;
  *(p_m_txFrame - 12) = 0;
  *(p_m_txFrame - 44) = 0;
  *(p_m_txFrame + 308) = 0;
  *(p_m_txFrame + 316) = 0;
  p_m_txFrame[41] = 0;
  p_m_txFrame[42] = 0;
  *(p_m_txFrame + 25) = 0u;
  *(p_m_txFrame + 26) = 0u;
  p_m_txFrame[54] = 0;
}

- (float)calculatePhyRate
{
  result = self->m_Snr * 2.692 + -0.4397;
  if (result < 0.0)
  {
    return 1.0;
  }

  return result;
}

- (float)getEstimatedAvailableRxPhyBandwidth
{
  [(WCM_WiFiService *)self calculatePhyRate];
  v4 = v3;
  [(WCM_WiFiService *)self getRxRetryPercent];
  v6 = v5;
  [(WCM_WiFiService *)self getTxRetryPercent];
  v8 = v7;
  getRxPacket = [(WCM_WiFiService *)self getRxPacket];
  getStationCountWithPendingData = [(WCM_WiFiService *)self getStationCountWithPendingData];
  if (getStationCountWithPendingData >= 2)
  {
    v4 = v4 / getStationCountWithPendingData;
  }

  [WCM_Logging logLevel:28 message:@"getEstimatedAvailableRxPhyBandwidth: RX PER %.2f, TX PER : %.2f, RX Packet Count: %lld, Station Count: %d", *&v6, *&v8, getRxPacket, getStationCountWithPendingData];
  if (getRxPacket)
  {
    v11 = v6;
  }

  else
  {
    v11 = v8;
  }

  return (1.0 - v11) * v4;
}

- (float)getCalculatedAvailableRxPhyBandwidth
{
  [(WCM_WiFiService *)self getRxPhyRate];
  v4 = v3;
  [(WCM_WiFiService *)self getprevRxPhyRate];
  v6 = (v4 + v5) * 0.5;
  [(WCM_WiFiService *)self getRxRetryPercent];
  v8 = v7;
  [(WCM_WiFiService *)self getTxRetryPercent];
  v10 = v9;
  getRxPacket = [(WCM_WiFiService *)self getRxPacket];
  getConnectedStationCount = [(WCM_WiFiService *)self getConnectedStationCount];
  if (getConnectedStationCount >= 2)
  {
    v6 = v6 / getConnectedStationCount;
  }

  [WCM_Logging logLevel:28 message:@"getCalculatedAvailableRxPhyBandwidth: RX PER %.2f, TX PER : %.2f RX Packet Count: %lld, Station Count: %d", *&v8, *&v10, getRxPacket, getConnectedStationCount];
  if (getRxPacket)
  {
    v13 = v8;
  }

  else
  {
    v13 = v10;
  }

  return (1.0 - v13) * v6;
}

- (void)getMinMaxAvailableRxBandwidth:(id *)bandwidth
{
  [(WCM_WiFiService *)self getRxPhyRate];
  v6 = v5;
  if ([(WCM_WiFiService *)self isQBSSLoadValid])
  {
    [WCM_Logging logLevel:28 message:@"QBSS load valid, load: %lld \n", [(WCM_WiFiService *)self getChannelUtlization]];
    v7 = (v6 * (100 - [(WCM_WiFiService *)self getChannelUtlization])) / 100.0;
    getConnectedStationCount = [(WCM_WiFiService *)self getConnectedStationCount];
    v9 = (getConnectedStationCount / 3);
    if (getConnectedStationCount >= 9)
    {
      v10 = v7 / v9;
      goto LABEL_6;
    }
  }

  else
  {
    [WCM_Logging logLevel:28 message:@"QBSS load not valid, CCA: %lld \n", [(WCM_WiFiService *)self getCCA]];
    v9 = 0;
    v7 = (v6 * (100 - [(WCM_WiFiService *)self getCCA])) / 100.0;
  }

  v10 = v7 * 0.5;
LABEL_6:
  [(WCM_WiFiService *)self getRxRetryPercent];
  v12 = v11;
  [(WCM_WiFiService *)self getTxRetryPercent];
  v14 = v13;
  getRxPacket = [(WCM_WiFiService *)self getRxPacket];
  [WCM_Logging logLevel:28 message:@"getCalculatedAvailableRxPhyBandwidth: RX PER %.2f, TX PER : %.2f RX Packet Count: %lld, Station Count: %d", *&v12, *&v14, getRxPacket, v9];
  if (getRxPacket)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  v17 = 1.0 - v16;
  v18 = v17 * v7;
  v19 = v17 * v10;
  v20 = v19;
  *&v19 = v18;
  LODWORD(v18) = 1152319488;
  [(WCM_WiFiService *)self getL3Bandwidth:v18];
  v35 = v21;
  LODWORD(v22) = 1152319488;
  *&v23 = v20;
  [(WCM_WiFiService *)self getL3Bandwidth:v22];
  v36 = v24;
  [WCM_Logging logLevel:28 message:@"Estimated Min Bandwitdh: %.2f, Max Bandwidth: %.2f, Rate: %.2f", v24, v35, v6];
  p_m_minMovAvgBW = &self->m_minMovAvgBW;
  v37 = __PAIR64__(LODWORD(v35), LODWORD(v36));
  __asm
  {
    FMOV            V1.2S, #11.0
    FMOV            V0.2S, #12.0
  }

  v32 = vdiv_f32(vmla_f32(v37, _D1, *p_m_minMovAvgBW), _D0);
  *p_m_minMovAvgBW = v32;
  [WCM_Logging logLevel:28 message:@"Estimated Min AVG Bandwitdh: %.2f, Max AVG Bandwidth: %.2f", v32.f32[0], v32.f32[1]];
  v33 = vdup_n_s32(0x447A0000u);
  v34 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_f32(*p_m_minMovAvgBW, v33)));
  *&bandwidth->var0 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_f32(v37, v33)));
  *&bandwidth->var2 = v34;
}

- (float)getCalculatedAvailableTxPhyBandwidth
{
  [(WCM_WiFiService *)self getTxPhyRate];
  v4 = v3;
  [(WCM_WiFiService *)self getRxRetryPercent];
  v6 = v5;
  [(WCM_WiFiService *)self getTxRetryPercent];
  v8 = v7;
  getRxPacket = [(WCM_WiFiService *)self getRxPacket];
  getStationCountWithPendingData = [(WCM_WiFiService *)self getStationCountWithPendingData];
  [WCM_Logging logLevel:28 message:@"getCalculatedAvailableTxPhyBandwidth: RX PER %.2f, TX PER : %.2f RX Packet Count: %lld, Station Count: %d", *&v6, *&v8, getRxPacket, getStationCountWithPendingData];
  if (getStationCountWithPendingData >= 2)
  {
    v4 = v4 / getStationCountWithPendingData;
  }

  if (self->m_txFrame + self->m_fw_txFrame)
  {
    v11 = v8;
  }

  else
  {
    v11 = v6;
  }

  return (1.0 - v11) * v4;
}

- (float)getL3Bandwidth:(float)bandwidth :(float)a4
{
  v4 = ceil((((bandwidth + 38.0) * 8.0) + 6.0) / a4) + 36.0;
  v5 = v4;
  v6 = bandwidth * 8.0 / v5;
  [WCM_Logging logLevel:28 message:@"iRAT: WIFI L3 Pkt Time: %.2f, L3 Throughput : %.2f", *&v5, v6];
  return v6;
}

- (void)setRSSI:(int64_t)i
{
  if (i != -600)
  {
    if (!self->m_valid_rssi_measurement)
    {
      self->m_valid_rssi_measurement = 1;
    }

    self->m_rawRssi = i;
    v3 = self->m_sample_Size + 1;
    v4 = self->m_cumRawRssi + i;
    self->m_sample_Size = v3;
    self->m_cumRawRssi = v4;
    self->m_avgRawRssi = (v4 / (v3 + 0.000001));
  }
}

- (void)setSNR:(int64_t)r
{
  if (r != -600)
  {
    m_valid_snr_measurement = self->m_valid_snr_measurement;
    self->m_Snr = r;
    if (!m_valid_snr_measurement)
    {
      self->m_valid_snr_measurement = 1;
    }
  }
}

- (double)getAdjustedBeaconPer
{
  v2 = 280;
  if (self->m_rxBeaconSched > 19)
  {
    v2 = 272;
  }

  return *(&self->super.isa + v2);
}

- (void)updateTxStats:(int64_t)stats :(int64_t)a4 :(int64_t)a5
{
  if (stats != -600 && a4 != -600 && a5 != -600)
  {
    self->m_txFrame = stats;
    self->m_txRetrans = a4;
    m_cumulative_txFrame = self->m_cumulative_txFrame;
    v7 = self->m_cumulative_txRetrans + a4;
    self->m_txFail = a5;
    self->m_cumulative_txFrame = m_cumulative_txFrame + stats;
    self->m_cumulative_txRetrans = v7;
    self->m_cumulative_txFail += a5;
    v8.i64[0] = stats;
    v8.i64[1] = a5;
    __asm
    {
      FMOV            V2.2D, #5.0
      FMOV            V1.2D, #6.0
    }

    *&self->m_movingAverage_txFrame = vdivq_f64(vmlaq_f64(vcvtq_f64_s64(v8), _Q2, *&self->m_movingAverage_txFrame), _Q1);
    [(WCM_WiFiService *)self updateTxPer];
    m_txFail = self->m_txFail;
    [WCM_Logging logLevel:19 message:@"WiFi TX Stats: TX Fail %lld, Tx Frame %lld, Cum Tx Fail %lld, Cum TX Frame %lld, M-AVG TxFrame %f, M-AVG TxFail %f, M-AVG TX PER %f", m_txFail, self->m_txFrame, self->m_cumulative_txFail, self->m_cumulative_txFrame, *&self->m_movingAverage_txFrame, *&self->m_movingAverage_txFail, *&self->m_movingAverageTxPer];
  }
}

- (void)resetCumulativeCounters
{
  self->m_movingAverageTxPer = 0.0;
  *&self->m_movingAverage_txFrame = 0u;
  *&self->m_cumulative_txFail = 0u;
  *&self->m_cumulative_txFrame = 0u;
  *&self->m_cumulative_fw_txFrame = 0u;
  *&self->m_cumulative_fw_txFail = 0u;
}

- (void)resetWiFiBWEstimationState
{
  self->m_rxRetryRatio = 0.0;
  *&self->m_minMovAvgBW = 0;
  self->m_movingAvgRxFrame = 0;
  self->m_movingAvgRxRetrans = 0;
  *&self->m_rxRetryPercent = 0u;
  *&self->m_rxMovingAvgRetryPercent = 0u;
}

- (void)updateFwTxStats:(int64_t)stats :(int64_t)a4 :(int64_t)a5
{
  if (stats != -600 && a4 != -600 && a5 != -600)
  {
    self->m_fw_txFrame = stats;
    self->m_fw_txRetrans = a4;
    self->m_fw_txFail = a5;
    v7 = self->m_cumulative_fw_txFrame + stats;
    v8 = self->m_cumulative_fw_txRetrans + a4;
    self->m_cumulative_fw_txFrame = v7;
    self->m_cumulative_fw_txRetrans = v8;
    v9 = self->m_cumulative_fw_txFail + a5;
    self->m_cumulative_fw_txFail = v9;
    [WCM_Logging logLevel:18 message:@"WiFi Stats: FW TX Fail %lld, FW Tx Frame %lld FW Cum TX Fail %lld, FW  Cum Tx Frame %lld", a5, stats, v9, v7, v5, v6];
  }
}

- (BOOL)isRxRatioValid
{
  m_rxRetrans = self->m_rxRetrans;
  if (m_rxRetrans)
  {
    v3 = self->m_rxFrame + m_rxRetrans <= 29;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  self->m_valid_rx_error_measurements = v4;
  return v4;
}

- (void)updateRxStats:(int64_t)stats :(int64_t)a4
{
  if (stats != -600 && a4 != -600)
  {
    m_movingAvgRxRetrans = self->m_movingAvgRxRetrans;
    v5 = (stats + 11 * self->m_movingAvgRxFrame) / 12;
    self->m_rxFrame = stats;
    self->m_rxRetrans = a4;
    self->m_movingAvgRxFrame = v5;
    self->m_movingAvgRxRetrans = (a4 + 11 * m_movingAvgRxRetrans) / 12;
  }
}

- (void)updatePhyRates:(int64_t)rates :(int64_t)a4 :(int64_t)a5
{
  if (a5 <= 989999 && a4 >= 1000 && rates >= 1000 && a5 >= 1000)
  {
    self->m_prevRxPhyRate = self->m_rxPhyRate;
    self->m_txPhyRate = rates / 1000.0;
    self->m_txFBPhyRate = a4 / 1000.0;
    self->m_rxPhyRate = a5 / 1000.0;
  }
}

- (void)updateRxBeacons:(int64_t)beacons :(int64_t)a4
{
  v4 = 0;
  if (beacons <= a4 && a4 && beacons != -600 && a4 != -600)
  {
    self->m_rxBeacons = beacons;
    self->m_rxBeaconSched = a4;
    v4 = 1;
  }

  self->m_valid_beacon_per = v4;
}

- (void)updateCCA:(int64_t)a
{
  if (a != -600)
  {
    self->m_cca = a;
  }
}

- (BOOL)isWiFiQualityGoodForProximityMode
{
  getRSSI = [(WCM_WiFiService *)self getRSSI];
  getSNR = [(WCM_WiFiService *)self getSNR];
  [(WCM_WiFiService *)self getBeaconPer];
  v6 = v5;
  isAssociated = [(WCM_WiFiService *)self isAssociated];
  v8 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  isWiFiPrimaryInterface = [(WCM_WiFiService *)self isWiFiPrimaryInterface];
  result = 0;
  if (isWiFiPrimaryInterface && isAssociated)
  {
    return getSNR >= 11 && getRSSI > [v8 dataMinWifiRssiTh0] && v6 * 100.0 < objc_msgSend(v8, "dataMinWifiBeaconPerTh0") && -[WCM_WiFiService isLSMWiFiQualityGood](self, "isLSMWiFiQualityGood");
  }

  return result;
}

- (BOOL)isLSMWiFiQualityGood
{
  m_decisionVI_BE = self->m_decisionVI_BE;
  if (m_decisionVI_BE == 1)
  {
    return 1;
  }

  if (m_decisionVI_BE)
  {
    return self->m_txPacketLossVI < 16;
  }

  return 0;
}

@end