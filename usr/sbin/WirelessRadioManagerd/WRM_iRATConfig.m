@interface WRM_iRATConfig
- (WRM_iRATConfig)init;
- (void)dealloc;
- (void)loadDefaultsParam;
- (void)loadiRATConfigurablePolicy;
- (void)printiRATConfig;
- (void)revertFaceTimeThToAzul;
- (void)updateFaceTimeRSSITh:(int64_t)a3;
@end

@implementation WRM_iRATConfig

- (WRM_iRATConfig)init
{
  v4.receiver = self;
  v4.super_class = WRM_iRATConfig;
  v2 = [(WRM_iRATConfig *)&v4 init];
  [(WRM_iRATConfig *)v2 loadDefaultsParam];
  [(WRM_iRATConfig *)v2 loadiRATConfigurablePolicy];
  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WRM_iRATConfig;
  [(WRM_iRATConfig *)&v2 dealloc];
}

- (void)loadDefaultsParam
{
  [(WRM_iRATConfig *)self setHandoverAlgorithmType:0];
  [(WRM_iRATConfig *)self setCtServiceType:0];
  [(WRM_iRATConfig *)self setHandoverAlgorithmSettingDynamic:1];
  [(WRM_iRATConfig *)self setPingPongAvoidanceThresholdStationary:5000];
  [(WRM_iRATConfig *)self setPingPongAvoidanceThresholdWalking:1000];
  [(WRM_iRATConfig *)self setPingPongAvoidanceThresholdRunning:200];
  [(WRM_iRATConfig *)self setCellularStickinessThreaholdIdle:5000];
  [(WRM_iRATConfig *)self setCellularStickinessThreaholdActive:5000];
  [(WRM_iRATConfig *)self setCellularStickinessThreaholdStationary:5000];
  [(WRM_iRATConfig *)self setCellularStickinessThreaholdStationaryActive:5000];
  [(WRM_iRATConfig *)self setRtpMetricsEnabled:1];
  [(WRM_iRATConfig *)self setWifiMetricsEnabled:1];
  [(WRM_iRATConfig *)self setCellularMetricsEnabled:1];
  [(WRM_iRATConfig *)self setSymtompsMetricsEnabled:1];
  [(WRM_iRATConfig *)self setIdsMetricsEnabled:1];
  [(WRM_iRATConfig *)self setP2pAssistanceEnabled:0];
  [(WRM_iRATConfig *)self setBtMetricsEnabled:1];
  [(WRM_iRATConfig *)self setMobilityStateAwarenessEnabled:1];
  [(WRM_iRATConfig *)self setQmiClientEnabled:1];
  [(WRM_iRATConfig *)self setPeriodicReportInterval:40];
  [(WRM_iRATConfig *)self setHandoverRTThreshold:300];
  [(WRM_iRATConfig *)self setHandoverRxJitterThreshold:200];
  [(WRM_iRATConfig *)self setHandoverRxPktLossThreshold:2];
  [(WRM_iRATConfig *)self setHandoverAvgRxPktLossThreshold:10];
  [(WRM_iRATConfig *)self setHandoverAvgIdleRxPktLossThreshold:30];
  [(WRM_iRATConfig *)self setHandoverTxPktLossThreshold:2];
  [(WRM_iRATConfig *)self setHandoverNominalJitterBufferThreshold:1000];
  [(WRM_iRATConfig *)self setMinActiveWiFiSnrTh0:16];
  [(WRM_iRATConfig *)self setMinActiveWiFiSnrTh1:16];
  [(WRM_iRATConfig *)self setMinActiveWiFiRssiTh0:-85];
  [(WRM_iRATConfig *)self setMinActiveWiFiRssiTh1:-85];
  [(WRM_iRATConfig *)self setMinActiveWiFiCcaTh0:20];
  [(WRM_iRATConfig *)self setMinActiveWiFiCcaTh1:20];
  [(WRM_iRATConfig *)self setMinIdleWiFiSnrTh0:16];
  [(WRM_iRATConfig *)self setMinIdleWiFiSnrTh1:16];
  [(WRM_iRATConfig *)self setMinIdleWiFiRssiTh0:-85];
  [(WRM_iRATConfig *)self setMinIdleWiFiRssiTh1:-85];
  [(WRM_iRATConfig *)self setMinIdleWiFiCcaTh0:20];
  [(WRM_iRATConfig *)self setMinIdleWiFiCcaTh1:20];
  [(WRM_iRATConfig *)self setIdsMinWiFiRssiTh0:-70];
  [(WRM_iRATConfig *)self setIdsMinWiFiRssiTh1:-80];
  [(WRM_iRATConfig *)self setIdsMinWiFiSnrTh0:15];
  [(WRM_iRATConfig *)self setIdsMinWiFiSnrTh1:5];
  [(WRM_iRATConfig *)self setIdsMinAvgWiFiTxPktLossRateTh0:0];
  [(WRM_iRATConfig *)self setIdsMinAvgWiFiTxPktLossRateTh1:20];
  [(WRM_iRATConfig *)self setIdsMinWiFiThroughputTh0:3];
  [(WRM_iRATConfig *)self setIdsMinWiFiThroughputTh1:1];
  [(WRM_iRATConfig *)self setIdsMinWiFiEffectivePhyRateTh0:12];
  [(WRM_iRATConfig *)self setIdsMinWiFiEffectivePhyRateTh1:6];
  [(WRM_iRATConfig *)self setIdsPeriodicReportInterval:5000];
  [(WRM_iRATConfig *)self setIdsWiFiMinRttTh1:5000];
  [(WRM_iRATConfig *)self setIdsBTMinRttTh1:3000];
  [(WRM_iRATConfig *)self setIdsWiFiMinPerTh1:40];
  [(WRM_iRATConfig *)self setIdsAvgWiFiMinPerTh1:40];
  [(WRM_iRATConfig *)self setIdsMovAvgWiFiMinPerTh1:40];
  [(WRM_iRATConfig *)self setIdsBTMinPerTh1:40];
  [(WRM_iRATConfig *)self setMinActiveWiFiTxPktLossRateTh0:30];
  [(WRM_iRATConfig *)self setMinActiveWiFiTxPktLossRateTh1:30];
  [(WRM_iRATConfig *)self setMinActiveWiFiAvgTxPktLossRateTh:10];
  [(WRM_iRATConfig *)self setMinIdleWiFiTxPktLossRateTh0:30];
  [(WRM_iRATConfig *)self setMinIdleWiFiTxPktLossRateTh1:30];
  [(WRM_iRATConfig *)self setMinIdleWiFiFwTxPktLossRateTh0:30];
  [(WRM_iRATConfig *)self setMinIdleWiFiFwTxPktLossRateTh1:30];
  [(WRM_iRATConfig *)self setMinWiFiBeaconPerTh0:80];
  [(WRM_iRATConfig *)self setMinWiFiBeaconPerTh1:80];
  [(WRM_iRATConfig *)self setSnrHysterisisWalking:3];
  [(WRM_iRATConfig *)self setSnrHysterisisRunning:6];
  [(WRM_iRATConfig *)self setRssiHysterisisWalking:3];
  [(WRM_iRATConfig *)self setRssiHysterisisRunning:6];
  [(WRM_iRATConfig *)self setDataMinBtRssiTh0:-60];
  [(WRM_iRATConfig *)self setDataMinBtRssiTh1:-80];
  [(WRM_iRATConfig *)self setDataBtMovingAvgAlphaDenum:30];
  [(WRM_iRATConfig *)self setDataBtStickinessTimeThreshMs:30000];
  [(WRM_iRATConfig *)self setDataMinWifiRssiTh0:-70];
  [(WRM_iRATConfig *)self setDataMinWifiSnrTh0:10];
  [(WRM_iRATConfig *)self setDataMinWifiRssiTh1:-85];
  [(WRM_iRATConfig *)self setDataMinWifiSnrTh1:5];
  [(WRM_iRATConfig *)self setDataMinWifiBeaconPerTh0:51];
  [(WRM_iRATConfig *)self setDataWifiMinBeaconCount:2];
  [(WRM_iRATConfig *)self setMinSigBarTh0:4];
  [(WRM_iRATConfig *)self setMinMovSigBarTh0:35];
  [(WRM_iRATConfig *)self setMinSigBarTh1:1];
  [(WRM_iRATConfig *)self setMinSigBarTh2:3];
  [(WRM_iRATConfig *)self setSosWaypointRSRPTh:-115];
  [(WRM_iRATConfig *)self setTransportMetricsRateLimitingThreshold:5000];
  [(WRM_iRATConfig *)self setTcpJitterThreshold:100];
  [(WRM_iRATConfig *)self setTcpRttThreshold:200];
  [(WRM_iRATConfig *)self setTcpIdleConnSuccessThreshold:50];
  [(WRM_iRATConfig *)self setTcpActiveConnSuccessThreshold:80];
  [(WRM_iRATConfig *)self setHistoricalAgeOfConnectedLinkInDays:1];
  [(WRM_iRATConfig *)self setFaceTimeCellularStickinessThreaholdActive:20000];
  [(WRM_iRATConfig *)self setFaceTimeMinActiveWiFiAvgTxPktLossRateTh:10];
  [(WRM_iRATConfig *)self setFaceTimeHandoverAvgRxPktLossThreshold:10];
  [(WRM_iRATConfig *)self setFaceTimeHandoverRxPktLossThreshold:2];
  [(WRM_iRATConfig *)self setFaceTimeMinActiveWiFiRssiTh1:-85];
  [(WRM_iRATConfig *)self setFaceTimeMinActiveWiFiRssiTh0:-70];
  [(WRM_iRATConfig *)self setFaceTimeEnhancedVideoMetricsEnabled:0];
  [(WRM_iRATConfig *)self setFaceTimeMovingAverageWindow:20];
  [(WRM_iRATConfig *)self setFaceTimeVideoPacketLoss:2];
  [(WRM_iRATConfig *)self setFaceTimeAleratedModeRssiTh1:-75];
  [(WRM_iRATConfig *)self setFaceTimeAleratedModeRssiTh0:-70];
  [(WRM_iRATConfig *)self setFaceTimeAleratedModeCCATh1:80];
  [(WRM_iRATConfig *)self setFaceTimeAleratedModeCCATh0:70];
  [(WRM_iRATConfig *)self setFaceTimeAleratedModeStationCount:15];
  [(WRM_iRATConfig *)self setFaceTimeAleratedModeVideoErasures:5];
  [(WRM_iRATConfig *)self setFaceTimeAleratedModeTxPer1:15];
  [(WRM_iRATConfig *)self setFaceTimeAleratedModeTxPer0:0];
  [(WRM_iRATConfig *)self setCommCenterStickinessThreasholdWiFiProximity:60000];
  [(WRM_iRATConfig *)self setCommCenterStickinessThreasholdNotinWiFiProximity:20000];
  [(WRM_iRATConfig *)self setCommCenterThumperStickinessThreasholdNotinBTProximity:15000];
  [(WRM_iRATConfig *)self setCommCenterBTlpmThreasholdBTProximity:40];
  [(WRM_iRATConfig *)self setCommCenterAppDebouncingTimer:2];
  [(WRM_iRATConfig *)self setCommCenterPeriodicBreadCrumTimer:58];
  [(WRM_iRATConfig *)self setCommCenterBreadCrumProcTimer:2];
  [(WRM_iRATConfig *)self setCbrsEnterRsrpMin:-111];
  [(WRM_iRATConfig *)self setCbrsEnterRsrqMin:-16];
  [(WRM_iRATConfig *)self setCbrsExitRsrpMin:-119];
  [(WRM_iRATConfig *)self setCbrsExitRsrqMin:-18];
  [(WRM_iRATConfig *)self setNonCbrsEnterRsrpMin:-116];
  [(WRM_iRATConfig *)self setNonCbrsEnterRsrqMin:-18];
  [(WRM_iRATConfig *)self setNonCbrsExitRsrpMin:-119];
  [(WRM_iRATConfig *)self setNonCbrsExitRsrqMin:-30];
  [(WRM_iRATConfig *)self setCbrsEnterRsrpOffset:6];
  [(WRM_iRATConfig *)self setCbrsEnterRsrqOffset:1];
  [(WRM_iRATConfig *)self setCbrsExitRsrpOffset:11];

  [(WRM_iRATConfig *)self setCbrsExitRsrqOffset:1];
}

- (void)printiRATConfig
{
  [WCM_Logging logLevel:18 message:@"Handover Algorithm Type  : %lld", [(WRM_iRATConfig *)self handoverAlgorithmType]];
  [WCM_Logging logLevel:18 message:@"Handover Algorithm Type Setting Dynamic : %d", [(WRM_iRATConfig *)self handoverAlgorithmSettingDynamic]];
  [WCM_Logging logLevel:18 message:@"PingPongAvoidanceThresholdStationary : %lld", [(WRM_iRATConfig *)self pingPongAvoidanceThresholdStationary]];
  [WCM_Logging logLevel:18 message:@"PingPongAvoidanceThresholdWalking : %lld", [(WRM_iRATConfig *)self pingPongAvoidanceThresholdWalking]];
  [WCM_Logging logLevel:18 message:@"PingPongAvoidanceThresholdRunning : %lld", [(WRM_iRATConfig *)self pingPongAvoidanceThresholdRunning]];
  [WCM_Logging logLevel:18 message:@"CellularStickinessThreaholdIdle : %lld", [(WRM_iRATConfig *)self cellularStickinessThreaholdIdle]];
  [WCM_Logging logLevel:18 message:@"CellularStickinessThreaholdActive : %lld", [(WRM_iRATConfig *)self cellularStickinessThreaholdActive]];
  [WCM_Logging logLevel:18 message:@"CellularStickinessThreaholdStationary : %lld", [(WRM_iRATConfig *)self cellularStickinessThreaholdStationary]];
  [WCM_Logging logLevel:18 message:@"CellularStickinessThreaholdStationaryActive : %lld", [(WRM_iRATConfig *)self cellularStickinessThreaholdStationaryActive]];
  [WCM_Logging logLevel:18 message:@"RTP metrics Enabled status  : %d", [(WRM_iRATConfig *)self rtpMetricsEnabled]];
  [WCM_Logging logLevel:18 message:@"WiFi metrics enabled status : %d", [(WRM_iRATConfig *)self wifiMetricsEnabled]];
  [WCM_Logging logLevel:18 message:@"Cellular metrics enabled status  : %d", [(WRM_iRATConfig *)self cellularMetricsEnabled]];
  [WCM_Logging logLevel:18 message:@"Symtomps Metrics Enabled status  : %d", [(WRM_iRATConfig *)self symtompsMetricsEnabled]];
  [WCM_Logging logLevel:18 message:@"IDS Metrics Enabled status  : %d", [(WRM_iRATConfig *)self idsMetricsEnabled]];
  [WCM_Logging logLevel:18 message:@"BT Metrics Enabled status  : %d", [(WRM_iRATConfig *)self btMetricsEnabled]];
  [WCM_Logging logLevel:18 message:@"Mobility State Use State Enabled  : %d", [(WRM_iRATConfig *)self mobilityStateAwarenessEnabled]];
  [WCM_Logging logLevel:18 message:@"QMI Client Enabled : %d", [(WRM_iRATConfig *)self qmiClientEnabled]];
  [WCM_Logging logLevel:18 message:@"p2p assistance info enabled status : %d", [(WRM_iRATConfig *)self p2pAssistanceEnabled]];
  [WCM_Logging logLevel:18 message:@"RTP metrics reporting Period : %lld", [(WRM_iRATConfig *)self periodicReportInterval]];
  [WCM_Logging logLevel:18 message:@"Min handover RTP RTT Threshold  : %lld", [(WRM_iRATConfig *)self handoverRTThreshold]];
  [WCM_Logging logLevel:18 message:@"Min handover rx Jitter Threshold  : %lld", [(WRM_iRATConfig *)self handoverRxJitterThreshold]];
  [WCM_Logging logLevel:18 message:@"Min handover rx Pkt Loss Threshold  : %lld", [(WRM_iRATConfig *)self handoverRxPktLossThreshold]];
  [WCM_Logging logLevel:18 message:@"Min handover avg rx Pkt Loss Threshold  : %lld", [(WRM_iRATConfig *)self handoverAvgRxPktLossThreshold]];
  [WCM_Logging logLevel:18 message:@"Min handover avg total rx Pkt Loss Threshold  : %lld", [(WRM_iRATConfig *)self handoverAvgIdleRxPktLossThreshold]];
  [WCM_Logging logLevel:18 message:@"Min Handover tx Pky Loss Threshold  : %lld", [(WRM_iRATConfig *)self handoverTxPktLossThreshold]];
  [WCM_Logging logLevel:18 message:@"Min Handover nominal jitter buffer Threshold  : %lld", [(WRM_iRATConfig *)self handoverNominalJitterBufferThreshold]];
  [WCM_Logging logLevel:18 message:@"Min active WiFi SNR Th0  : %lld", [(WRM_iRATConfig *)self minActiveWiFiSnrTh0]];
  [WCM_Logging logLevel:18 message:@"Min active WiFi SNR Th1  : %lld", [(WRM_iRATConfig *)self minActiveWiFiSnrTh1]];
  [WCM_Logging logLevel:18 message:@"Min active WiFi RSSI Th0  : %lld", [(WRM_iRATConfig *)self minActiveWiFiRssiTh0]];
  [WCM_Logging logLevel:18 message:@"Min active WiFi RSSI Th1  : %lld", [(WRM_iRATConfig *)self minActiveWiFiRssiTh1]];
  [WCM_Logging logLevel:18 message:@"Min active WiFi CCA Th0 : %lld", [(WRM_iRATConfig *)self minActiveWiFiCcaTh0]];
  [WCM_Logging logLevel:18 message:@"Min active WiFi CCA Th1 : %lld", [(WRM_iRATConfig *)self minActiveWiFiCcaTh1]];
  [WCM_Logging logLevel:18 message:@"Min idle WiFi SNR Th0  : %lld", [(WRM_iRATConfig *)self minIdleWiFiSnrTh0]];
  [WCM_Logging logLevel:18 message:@"Min idle WiFi SNR Th1  : %lld", [(WRM_iRATConfig *)self minIdleWiFiSnrTh1]];
  [WCM_Logging logLevel:18 message:@"Min idle WiFi RSSI Th0  : %lld", [(WRM_iRATConfig *)self minIdleWiFiRssiTh0]];
  [WCM_Logging logLevel:18 message:@"Min idle WiFi RSSI Th1  : %lld", [(WRM_iRATConfig *)self minIdleWiFiRssiTh1]];
  [WCM_Logging logLevel:18 message:@"Min idle WiFi CCA Th0 : %lld", [(WRM_iRATConfig *)self minIdleWiFiCcaTh0]];
  [WCM_Logging logLevel:18 message:@"Min idle WiFi CCA Th1 : %lld", [(WRM_iRATConfig *)self minIdleWiFiCcaTh1]];
  [WCM_Logging logLevel:18 message:@"Min Active WiFiTxPktLossRate Th0  : %lld", [(WRM_iRATConfig *)self minActiveWiFiTxPktLossRateTh0]];
  [WCM_Logging logLevel:18 message:@"Min Active WiFiTxPktLossRate Th1  : %lld", [(WRM_iRATConfig *)self minActiveWiFiTxPktLossRateTh1]];
  [WCM_Logging logLevel:18 message:@"Min Active WiFiAvgTxPktLossRateTh : %lld", [(WRM_iRATConfig *)self minActiveWiFiAvgTxPktLossRateTh]];
  [WCM_Logging logLevel:18 message:@"Min Idle WiFiTxPktLossRate Th0  : %lld", [(WRM_iRATConfig *)self minIdleWiFiTxPktLossRateTh0]];
  [WCM_Logging logLevel:18 message:@"Min Idle WiFiTxPktLossRate Th1  : %lld", [(WRM_iRATConfig *)self minIdleWiFiTxPktLossRateTh1]];
  [WCM_Logging logLevel:18 message:@"Min Idle WiFiFwTxPktLossRate Th0  : %lld", [(WRM_iRATConfig *)self minIdleWiFiFwTxPktLossRateTh0]];
  [WCM_Logging logLevel:18 message:@"Min Idle WiFiFwTxPktLossRate Th1  : %lld", [(WRM_iRATConfig *)self minIdleWiFiFwTxPktLossRateTh1]];
  [WCM_Logging logLevel:18 message:@"Min Active WiFi Beacon Per Th0  : %lld", [(WRM_iRATConfig *)self minWiFiBeaconPerTh0]];
  [WCM_Logging logLevel:18 message:@"Min Active WiFi Beacon Per Th1  : %lld", [(WRM_iRATConfig *)self minWiFiBeaconPerTh1]];
  [WCM_Logging logLevel:18 message:@"Snr Hysterisis Walking : %lld", [(WRM_iRATConfig *)self snrHysterisisWalking]];
  [WCM_Logging logLevel:18 message:@"SNR Hysterisis Running  : %lld", [(WRM_iRATConfig *)self snrHysterisisRunning]];
  [WCM_Logging logLevel:18 message:@"RSSI Hysterisis Walking  : %lld", [(WRM_iRATConfig *)self rssiHysterisisWalking]];
  [WCM_Logging logLevel:18 message:@"RSSI Hysterisis Running  : %lld", [(WRM_iRATConfig *)self rssiHysterisisRunning]];
  [WCM_Logging logLevel:18 message:@"Min BT RSSI Th0 %lld", [(WRM_iRATConfig *)self dataMinBtRssiTh0]];
  [WCM_Logging logLevel:18 message:@"Min BT RSSI Th1 %lld", [(WRM_iRATConfig *)self dataMinBtRssiTh1]];
  [WCM_Logging logLevel:18 message:@"BT Moving Avg Alpha Denum %lld", [(WRM_iRATConfig *)self dataBtMovingAvgAlphaDenum]];
  [WCM_Logging logLevel:18 message:@"BT Stickiness Time threshold %lld ms", [(WRM_iRATConfig *)self dataBtStickinessTimeThreshMs]];
  [WCM_Logging logLevel:18 message:@"Wifi RSSI Th0 %lld", [(WRM_iRATConfig *)self dataMinWifiRssiTh0]];
  [WCM_Logging logLevel:18 message:@"Wifi SNR Th0 %lld", [(WRM_iRATConfig *)self dataMinWifiSnrTh0]];
  [WCM_Logging logLevel:18 message:@"Min Wifi RSSI Th0 %lld", [(WRM_iRATConfig *)self dataMinWifiRssiTh1]];
  [WCM_Logging logLevel:18 message:@"Min Wifi SNR Th0 %lld", [(WRM_iRATConfig *)self dataMinWifiSnrTh1]];
  [WCM_Logging logLevel:18 message:@"Min Wifi Beacon Per Th0 %lld", [(WRM_iRATConfig *)self dataMinWifiBeaconPerTh0]];
  [WCM_Logging logLevel:18 message:@"Min Wifi valid Beacon count %lld", [(WRM_iRATConfig *)self dataWifiMinBeaconCount]];
  [WCM_Logging logLevel:18 message:@"Min Cellular Sigal Bar Th0  :%lld", [(WRM_iRATConfig *)self minSigBarTh0]];
  [WCM_Logging logLevel:18 message:@"Min Mov Cell Sigal Bar Th0  :%lld", [(WRM_iRATConfig *)self minMovSigBarTh0]];
  [WCM_Logging logLevel:18 message:@"Min Cellular Sigal Bar Th1  : %lld", [(WRM_iRATConfig *)self minSigBarTh1]];
  [WCM_Logging logLevel:18 message:@"Min Cellular Sigal Bar Th2  : %lld", [(WRM_iRATConfig *)self minSigBarTh2]];
  [WCM_Logging logLevel:18 message:@"SOS Waypoint RSRP Th  : %lld", [(WRM_iRATConfig *)self sosWaypointRSRPTh]];
  [WCM_Logging logLevel:18 message:@"Transport metrics rate limiting threshold: %lld", [(WRM_iRATConfig *)self transportMetricsRateLimitingThreshold]];
  [WCM_Logging logLevel:18 message:@"TCP Jitter threshold: %lld", [(WRM_iRATConfig *)self tcpJitterThreshold]];
  [WCM_Logging logLevel:18 message:@"TCP Rtt threshold: %lld", [(WRM_iRATConfig *)self tcpRttThreshold]];
  [WCM_Logging logLevel:18 message:@"TCP Idle Conn Success threshold: %lld", [(WRM_iRATConfig *)self tcpIdleConnSuccessThreshold]];
  [WCM_Logging logLevel:18 message:@"TCP Active Conn Sucess threshold: %lld", [(WRM_iRATConfig *)self tcpActiveConnSuccessThreshold]];
  [WCM_Logging logLevel:18 message:@"TCP Histrocial Age of Connected link: %lld", [(WRM_iRATConfig *)self historicalAgeOfConnectedLinkInDays]];
  [WCM_Logging logLevel:18 message:@"IDS Min WIFI RSSI TH0 %lld", [(WRM_iRATConfig *)self idsMinWiFiRssiTh0]];
  [WCM_Logging logLevel:18 message:@"IDS Min WIFI RSSI TH1 %lld", [(WRM_iRATConfig *)self idsMinWiFiRssiTh1]];
  [WCM_Logging logLevel:18 message:@"IDS Min WIFI SNR TH0 %lld", [(WRM_iRATConfig *)self idsMinWiFiSnrTh0]];
  [WCM_Logging logLevel:18 message:@"IDS Min WIFI SNR TH1 %lld", [(WRM_iRATConfig *)self idsMinWiFiSnrTh1]];
  [WCM_Logging logLevel:18 message:@"IDS Min AVG TX PER TH0 %lld", [(WRM_iRATConfig *)self idsMinAvgWiFiTxPktLossRateTh0]];
  [WCM_Logging logLevel:18 message:@"IDS Min AVG TX PER TH1 %lld", [(WRM_iRATConfig *)self idsMinAvgWiFiTxPktLossRateTh1]];
  [WCM_Logging logLevel:18 message:@"IDS Min WIFI THROUGHPUT TH0 %lld", [(WRM_iRATConfig *)self idsMinWiFiThroughputTh0]];
  [WCM_Logging logLevel:18 message:@"IDS Min WIFI THROUGHPUT TH1 %lld", [(WRM_iRATConfig *)self idsMinWiFiThroughputTh1]];
  [WCM_Logging logLevel:18 message:@"IDS Min WIFI PHYRATE TH0 %lld", [(WRM_iRATConfig *)self idsMinWiFiEffectivePhyRateTh0]];
  [WCM_Logging logLevel:18 message:@"IDS Min WIFI PHYRATE TH1 %lld", [(WRM_iRATConfig *)self idsMinWiFiEffectivePhyRateTh1]];
  [WCM_Logging logLevel:18 message:@"IDS Periodic Reporting Timer %lld", [(WRM_iRATConfig *)self idsPeriodicReportInterval]];
  [WCM_Logging logLevel:18 message:@"IDS WIFI RTT Th1 %lld", [(WRM_iRATConfig *)self idsWiFiMinRttTh1]];
  [WCM_Logging logLevel:18 message:@"IDS BT RTT TH1  %lld", [(WRM_iRATConfig *)self idsBTMinRttTh1]];
  [WCM_Logging logLevel:18 message:@"IDS WIFI PER Th1 %lld", [(WRM_iRATConfig *)self idsWiFiMinPerTh1]];
  [WCM_Logging logLevel:18 message:@"IDS WIFI AVG PER Th1 %lld", [(WRM_iRATConfig *)self idsAvgWiFiMinPerTh1]];
  [WCM_Logging logLevel:18 message:@"IDS WIFI Mov AVG PER Th1 %lld", [(WRM_iRATConfig *)self idsMovAvgWiFiMinPerTh1]];
  [WCM_Logging logLevel:18 message:@"IDS BT PER TH1 %lld", [(WRM_iRATConfig *)self idsBTMinPerTh1]];
  [WCM_Logging logLevel:18 message:@"Facetime Cellular Stickiness Timer %lld", [(WRM_iRATConfig *)self faceTimeCellularStickinessThreaholdActive]];
  [WCM_Logging logLevel:18 message:@"Facetime Average TX PER th %lld", [(WRM_iRATConfig *)self faceTimeMinActiveWiFiAvgTxPktLossRateTh]];
  [WCM_Logging logLevel:18 message:@"Facetime Average RX PER th %lld", [(WRM_iRATConfig *)self faceTimeHandoverAvgRxPktLossThreshold]];
  [WCM_Logging logLevel:18 message:@"Facetime Handover RX PER th %lld", [(WRM_iRATConfig *)self faceTimeHandoverRxPktLossThreshold]];
  [WCM_Logging logLevel:18 message:@"Facetime Handover RSSI TH1 %lld", [(WRM_iRATConfig *)self faceTimeMinActiveWiFiRssiTh1]];
  [WCM_Logging logLevel:18 message:@"Facetime Handover RSSI TH0 %lld", [(WRM_iRATConfig *)self faceTimeMinActiveWiFiRssiTh0]];
  [WCM_Logging logLevel:18 message:@"Facetime Enhanced Video RTP metrics enabled %lld", [(WRM_iRATConfig *)self faceTimeEnhancedVideoMetricsEnabled]];
  [WCM_Logging logLevel:18 message:@"Facetime moving average window size %lld", [(WRM_iRATConfig *)self faceTimeMovingAverageWindow]];
  [WCM_Logging logLevel:18 message:@"Facetime video packet loss thld %lld", [(WRM_iRATConfig *)self faceTimeVideoPacketLoss]];
  [WCM_Logging logLevel:18 message:@"Facetime alerated mode entry RSSI %lld", [(WRM_iRATConfig *)self faceTimeAleratedModeRssiTh1]];
  [WCM_Logging logLevel:18 message:@"Facetime alerated mode exit RSSI %lld", [(WRM_iRATConfig *)self faceTimeAleratedModeRssiTh0]];
  [WCM_Logging logLevel:18 message:@"Facetime alerated mode entry CCA %lld", [(WRM_iRATConfig *)self faceTimeAleratedModeCCATh1]];
  [WCM_Logging logLevel:18 message:@"Facetime alerated mode exit CCA %lld", [(WRM_iRATConfig *)self faceTimeAleratedModeCCATh0]];
  [WCM_Logging logLevel:18 message:@"Facetime alerated mode entry station count %lld", [(WRM_iRATConfig *)self faceTimeAleratedModeStationCount]];
  [WCM_Logging logLevel:18 message:@"Facetime alerated mode entry video erasures %lld", [(WRM_iRATConfig *)self faceTimeAleratedModeVideoErasures]];
  [WCM_Logging logLevel:18 message:@"Facetime alerated mode entry TXPER %lld", [(WRM_iRATConfig *)self faceTimeAleratedModeTxPer1]];
  [WCM_Logging logLevel:18 message:@"Facetime alerated mode exit  TXPER %lld", [(WRM_iRATConfig *)self faceTimeAleratedModeTxPer0]];
  [WCM_Logging logLevel:18 message:@"CommCenter Stickiness Threashold WiFiProximity %lld", [(WRM_iRATConfig *)self commCenterStickinessThreasholdWiFiProximity]];
  [WCM_Logging logLevel:18 message:@"CommCenter Stickiness Threashold NotinWiFiProximity %lld", [(WRM_iRATConfig *)self commCenterStickinessThreasholdNotinWiFiProximity]];
  [WCM_Logging logLevel:18 message:@"CommCenter Thumper Stickiness Threashold NotinBTProximity %lld", [(WRM_iRATConfig *)self commCenterThumperStickinessThreasholdNotinBTProximity]];
  [WCM_Logging logLevel:18 message:@"CommCenter BT LPM Threashold BT Proximity %lld", [(WRM_iRATConfig *)self commCenterBTlpmThreasholdBTProximity]];
  [WCM_Logging logLevel:18 message:@"CommCenter AppDebouncingTimer %lld", [(WRM_iRATConfig *)self commCenterAppDebouncingTimer]];
  [WCM_Logging logLevel:18 message:@"CommCenter PeriodicBreadCrumTimer %lld", [(WRM_iRATConfig *)self commCenterPeriodicBreadCrumTimer]];
  [WCM_Logging logLevel:18 message:@"CommCenter BreadCrumProcTimer %lld", [(WRM_iRATConfig *)self commCenterBreadCrumProcTimer]];
  [WCM_Logging logLevel:18 message:@"cbrsEnterRsrpMin %lld", [(WRM_iRATConfig *)self cbrsEnterRsrpMin]];
  [WCM_Logging logLevel:18 message:@"cbrsEnterRsrqMin %lld", [(WRM_iRATConfig *)self cbrsEnterRsrqMin]];
  [WCM_Logging logLevel:18 message:@"cbrsExitRsrpMin %lld", [(WRM_iRATConfig *)self cbrsExitRsrpMin]];
  [WCM_Logging logLevel:18 message:@"cbrsExitRsrqMin %lld", [(WRM_iRATConfig *)self cbrsExitRsrqMin]];
  [WCM_Logging logLevel:18 message:@"nonCbrsEnterRsrpMin %lld", [(WRM_iRATConfig *)self nonCbrsEnterRsrpMin]];
  [WCM_Logging logLevel:18 message:@"nonCbrsEnterRsrqMin %lld", [(WRM_iRATConfig *)self nonCbrsEnterRsrqMin]];
  [WCM_Logging logLevel:18 message:@"nonCbrsExitRsrpMin %lld", [(WRM_iRATConfig *)self nonCbrsExitRsrpMin]];
  [WCM_Logging logLevel:18 message:@"nonCbrsExitRsrqMin %lld", [(WRM_iRATConfig *)self nonCbrsExitRsrqMin]];
  [WCM_Logging logLevel:18 message:@"cbrsEnterRsrpOffset %lld", [(WRM_iRATConfig *)self cbrsEnterRsrpOffset]];
  [WCM_Logging logLevel:18 message:@"cbrsEnterRsrqOffset %lld", [(WRM_iRATConfig *)self cbrsEnterRsrqOffset]];
  [WCM_Logging logLevel:18 message:@"cbrsExitRsrpOffset %lld", [(WRM_iRATConfig *)self cbrsExitRsrpOffset]];
  [WCM_Logging logLevel:18 message:@"cbrsExitRsrqOffset %lld", [(WRM_iRATConfig *)self cbrsExitRsrqOffset]];
}

- (void)loadiRATConfigurablePolicy
{
  v31 = 0;
  [WCM_Logging logLevel:18 message:@"===== Loading iRAT Configuration Policies"];
  v3 = sub_10009D018(@"WRM_iRAT", @"plist");
  if (v3)
  {
    v30 = 0;
    v4 = [NSPropertyListSerialization propertyListWithData:v3 options:2 format:&v30 error:&v31];
    if (v4)
    {
      v5 = [v4 objectForKeyedSubscript:@"iRATPolicy"];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 objectForKeyedSubscript:@"ActivePolicies"];
        if (v7)
        {
          v8 = v7;
          -[WRM_iRATConfig setHandoverAlgorithmType:](self, "setHandoverAlgorithmType:", [objc_msgSend(v7 objectForKeyedSubscript:{@"HandoverAlgorithmType", "longLongValue"}]);
          -[WRM_iRATConfig setHandoverAlgorithmSettingDynamic:](self, "setHandoverAlgorithmSettingDynamic:", [objc_msgSend(v8 objectForKeyedSubscript:{@"HandoverAlgorithmSettingDynamic", "BOOLValue"}]);
          -[WRM_iRATConfig setPingPongAvoidanceThresholdStationary:](self, "setPingPongAvoidanceThresholdStationary:", [objc_msgSend(v8 objectForKeyedSubscript:{@"PingPongAvoidanceThresholdStationary", "longLongValue"}]);
          -[WRM_iRATConfig setPingPongAvoidanceThresholdWalking:](self, "setPingPongAvoidanceThresholdWalking:", [objc_msgSend(v8 objectForKeyedSubscript:{@"PingPongAvoidanceThresholdWalking", "longLongValue"}]);
          -[WRM_iRATConfig setPingPongAvoidanceThresholdRunning:](self, "setPingPongAvoidanceThresholdRunning:", [objc_msgSend(v8 objectForKeyedSubscript:{@"PingPongAvoidanceThresholdRunning", "longLongValue"}]);
          -[WRM_iRATConfig setCellularStickinessThreaholdIdle:](self, "setCellularStickinessThreaholdIdle:", [objc_msgSend(v8 objectForKeyedSubscript:{@"CellularStickinessThreaholdIdle", "longLongValue"}]);
          -[WRM_iRATConfig setCellularStickinessThreaholdActive:](self, "setCellularStickinessThreaholdActive:", [objc_msgSend(v8 objectForKeyedSubscript:{@"CellularStickinessThreaholdActive", "longLongValue"}]);
          -[WRM_iRATConfig setCellularStickinessThreaholdStationary:](self, "setCellularStickinessThreaholdStationary:", [objc_msgSend(v8 objectForKeyedSubscript:{@"CellularStickinessThreaholdStationary", "longLongValue"}]);
          -[WRM_iRATConfig setCellularStickinessThreaholdStationaryActive:](self, "setCellularStickinessThreaholdStationaryActive:", [objc_msgSend(v8 objectForKeyedSubscript:{@"CellularStickinessThreaholdStationaryActive", "longLongValue"}]);
          -[WRM_iRATConfig setRtpMetricsEnabled:](self, "setRtpMetricsEnabled:", [objc_msgSend(v8 objectForKeyedSubscript:{@"RTPMetricsEnabled", "BOOLValue"}]);
          -[WRM_iRATConfig setWifiMetricsEnabled:](self, "setWifiMetricsEnabled:", [objc_msgSend(v8 objectForKeyedSubscript:{@"WiFiMetricsEnabled", "BOOLValue"}]);
          -[WRM_iRATConfig setCellularMetricsEnabled:](self, "setCellularMetricsEnabled:", [objc_msgSend(v8 objectForKeyedSubscript:{@"CellularMetricsEnabled", "BOOLValue"}]);
          -[WRM_iRATConfig setSymtompsMetricsEnabled:](self, "setSymtompsMetricsEnabled:", [objc_msgSend(v8 objectForKeyedSubscript:{@"SymtompsMetricsEnabled", "BOOLValue"}]);
          -[WRM_iRATConfig setP2pAssistanceEnabled:](self, "setP2pAssistanceEnabled:", [objc_msgSend(v8 objectForKeyedSubscript:{@"P2PAssistanceEnabled", "BOOLValue"}]);
          -[WRM_iRATConfig setIdsMetricsEnabled:](self, "setIdsMetricsEnabled:", [objc_msgSend(v8 objectForKeyedSubscript:{@"IDSMetricsEnabled", "BOOLValue"}]);
          -[WRM_iRATConfig setBtMetricsEnabled:](self, "setBtMetricsEnabled:", [objc_msgSend(v8 objectForKeyedSubscript:{@"BTMetricsEnabled", "BOOLValue"}]);
          -[WRM_iRATConfig setMobilityStateAwarenessEnabled:](self, "setMobilityStateAwarenessEnabled:", [objc_msgSend(v8 objectForKeyedSubscript:{@"MobilityStateAwarenessEnabled", "BOOLValue"}]);
          -[WRM_iRATConfig setQmiClientEnabled:](self, "setQmiClientEnabled:", [objc_msgSend(v8 objectForKeyedSubscript:{@"QMIClientEnabled", "BOOLValue"}]);
          v9 = [v6 objectForKeyedSubscript:@"RTPMetrics"];
          if (v9)
          {
            v10 = v9;
            -[WRM_iRATConfig setPeriodicReportInterval:](self, "setPeriodicReportInterval:", [objc_msgSend(v9 objectForKeyedSubscript:{@"PeriodicReportInterval", "longLongValue"}]);
            -[WRM_iRATConfig setHandoverRTThreshold:](self, "setHandoverRTThreshold:", [objc_msgSend(v10 objectForKeyedSubscript:{@"HandoverRTThreshold", "longLongValue"}]);
            -[WRM_iRATConfig setHandoverRxJitterThreshold:](self, "setHandoverRxJitterThreshold:", [objc_msgSend(v10 objectForKeyedSubscript:{@"HandoverRxJitterThreshold", "longLongValue"}]);
            -[WRM_iRATConfig setHandoverRxPktLossThreshold:](self, "setHandoverRxPktLossThreshold:", [objc_msgSend(v10 objectForKeyedSubscript:{@"HandoverRxPktLossThreshold", "longLongValue"}]);
            -[WRM_iRATConfig setHandoverAvgRxPktLossThreshold:](self, "setHandoverAvgRxPktLossThreshold:", [objc_msgSend(v10 objectForKeyedSubscript:{@"HandoverAvgRxPktLossThreshold", "longLongValue"}]);
            -[WRM_iRATConfig setHandoverAvgIdleRxPktLossThreshold:](self, "setHandoverAvgIdleRxPktLossThreshold:", [objc_msgSend(v10 objectForKeyedSubscript:{@"HandoverTotalAvgRxPktLossThreshold", "longLongValue"}]);
            -[WRM_iRATConfig setHandoverTxPktLossThreshold:](self, "setHandoverTxPktLossThreshold:", [objc_msgSend(v10 objectForKeyedSubscript:{@"HandoverTxPktLossThreshold", "longLongValue"}]);
            -[WRM_iRATConfig setHandoverNominalJitterBufferThreshold:](self, "setHandoverNominalJitterBufferThreshold:", [objc_msgSend(v10 objectForKeyedSubscript:{@"HandoverNominalJitterBufferThreshold", "longLongValue"}]);
          }

          else
          {
            [WCM_Logging logLevel:18 message:@"No RTP metrics config"];
          }

          v12 = [v6 objectForKeyedSubscript:@"WiFiMetrics"];
          if (v12)
          {
            v13 = v12;
            -[WRM_iRATConfig setMinActiveWiFiSnrTh0:](self, "setMinActiveWiFiSnrTh0:", [objc_msgSend(v12 objectForKeyedSubscript:{@"MinActiveWiFiSnrTh0", "longLongValue"}]);
            -[WRM_iRATConfig setMinActiveWiFiSnrTh1:](self, "setMinActiveWiFiSnrTh1:", [objc_msgSend(v13 objectForKeyedSubscript:{@"MinActiveWiFiSnrTh1", "longLongValue"}]);
            -[WRM_iRATConfig setMinActiveWiFiRssiTh0:](self, "setMinActiveWiFiRssiTh0:", [objc_msgSend(v13 objectForKeyedSubscript:{@"MinActiveWiFiRssiTh0", "longLongValue"}]);
            -[WRM_iRATConfig setMinActiveWiFiRssiTh1:](self, "setMinActiveWiFiRssiTh1:", [objc_msgSend(v13 objectForKeyedSubscript:{@"MinActiveWiFiRssiTh1", "longLongValue"}]);
            -[WRM_iRATConfig setMinIdleWiFiSnrTh0:](self, "setMinIdleWiFiSnrTh0:", [objc_msgSend(v13 objectForKeyedSubscript:{@"MinIdleWiFiSnrTh0", "longLongValue"}]);
            -[WRM_iRATConfig setMinIdleWiFiSnrTh1:](self, "setMinIdleWiFiSnrTh1:", [objc_msgSend(v13 objectForKeyedSubscript:{@"MinIdleWiFiSnrTh1", "longLongValue"}]);
            -[WRM_iRATConfig setMinIdleWiFiRssiTh0:](self, "setMinIdleWiFiRssiTh0:", [objc_msgSend(v13 objectForKeyedSubscript:{@"MinIdleWiFiRssiTh0", "longLongValue"}]);
            -[WRM_iRATConfig setMinIdleWiFiRssiTh1:](self, "setMinIdleWiFiRssiTh1:", [objc_msgSend(v13 objectForKeyedSubscript:{@"MinIdleWiFiRssiTh1", "longLongValue"}]);
            -[WRM_iRATConfig setSnrHysterisisWalking:](self, "setSnrHysterisisWalking:", [objc_msgSend(v13 objectForKeyedSubscript:{@"SnrHysterisisWalking", "longLongValue"}]);
            -[WRM_iRATConfig setSnrHysterisisRunning:](self, "setSnrHysterisisRunning:", [objc_msgSend(v13 objectForKeyedSubscript:{@"SnrHysterisisRunning", "longLongValue"}]);
            -[WRM_iRATConfig setRssiHysterisisWalking:](self, "setRssiHysterisisWalking:", [objc_msgSend(v13 objectForKeyedSubscript:{@"RssiHysterisisWalking", "longLongValue"}]);
            -[WRM_iRATConfig setRssiHysterisisRunning:](self, "setRssiHysterisisRunning:", [objc_msgSend(v13 objectForKeyedSubscript:{@"RssiHysterisisRunning", "longLongValue"}]);
            -[WRM_iRATConfig setMinActiveWiFiCcaTh0:](self, "setMinActiveWiFiCcaTh0:", [objc_msgSend(v13 objectForKeyedSubscript:{@"MinActiveWiFiCcaTh0", "longLongValue"}]);
            -[WRM_iRATConfig setMinActiveWiFiCcaTh1:](self, "setMinActiveWiFiCcaTh1:", [objc_msgSend(v13 objectForKeyedSubscript:{@"MinActiveWiFiCcaTh1", "longLongValue"}]);
            -[WRM_iRATConfig setMinIdleWiFiCcaTh0:](self, "setMinIdleWiFiCcaTh0:", [objc_msgSend(v13 objectForKeyedSubscript:{@"MinIdleWiFiCcaTh0", "longLongValue"}]);
            -[WRM_iRATConfig setMinIdleWiFiCcaTh1:](self, "setMinIdleWiFiCcaTh1:", [objc_msgSend(v13 objectForKeyedSubscript:{@"MinIdleWiFiCcaTh1", "longLongValue"}]);
            -[WRM_iRATConfig setMinActiveWiFiTxPktLossRateTh0:](self, "setMinActiveWiFiTxPktLossRateTh0:", [objc_msgSend(v13 objectForKeyedSubscript:{@"MinActiveWiFiTxPktLossRateTh0", "longLongValue"}]);
            -[WRM_iRATConfig setMinActiveWiFiTxPktLossRateTh1:](self, "setMinActiveWiFiTxPktLossRateTh1:", [objc_msgSend(v13 objectForKeyedSubscript:{@"MinActiveWiFiTxPktLossRateTh1", "longLongValue"}]);
            -[WRM_iRATConfig setMinActiveWiFiAvgTxPktLossRateTh:](self, "setMinActiveWiFiAvgTxPktLossRateTh:", [objc_msgSend(v13 objectForKeyedSubscript:{@"MinActiveWiFiAvgTxPktLossRateTh", "longLongValue"}]);
            -[WRM_iRATConfig setMinIdleWiFiTxPktLossRateTh0:](self, "setMinIdleWiFiTxPktLossRateTh0:", [objc_msgSend(v13 objectForKeyedSubscript:{@"MinIdleWiFiTxPktLossRateTh0", "longLongValue"}]);
            -[WRM_iRATConfig setMinIdleWiFiTxPktLossRateTh1:](self, "setMinIdleWiFiTxPktLossRateTh1:", [objc_msgSend(v13 objectForKeyedSubscript:{@"MinIdleWiFiTxPktLossRateTh1", "longLongValue"}]);
            -[WRM_iRATConfig setMinIdleWiFiFwTxPktLossRateTh0:](self, "setMinIdleWiFiFwTxPktLossRateTh0:", [objc_msgSend(v13 objectForKeyedSubscript:{@"MinIdleWiFiFwTxPktLossRateTh0", "longLongValue"}]);
            -[WRM_iRATConfig setMinIdleWiFiFwTxPktLossRateTh1:](self, "setMinIdleWiFiFwTxPktLossRateTh1:", [objc_msgSend(v13 objectForKeyedSubscript:{@"MinIdleWiFiFwTxPktLossRateTh1", "longLongValue"}]);
            -[WRM_iRATConfig setMinWiFiBeaconPerTh0:](self, "setMinWiFiBeaconPerTh0:", [objc_msgSend(v13 objectForKeyedSubscript:{@"MinWiFiBeaconPerTh0", "longLongValue"}]);
            [objc_opt_self() setMinWiFiBeaconPerTh1:{objc_msgSend(objc_msgSend(v13, "objectForKeyedSubscript:", @"MinWiFiBeaconPerTh1", "longLongValue")}];
          }

          else
          {
            [WCM_Logging logLevel:18 message:@"No WiFi specific config"];
          }

          v14 = [v6 objectForKeyedSubscript:@"DataMetrics"];
          if (v14)
          {
            v15 = v14;
            -[WRM_iRATConfig setDataMinBtRssiTh0:](self, "setDataMinBtRssiTh0:", [objc_msgSend(v14 objectForKeyedSubscript:{@"BTMinRssiTh0", "longLongValue"}]);
            -[WRM_iRATConfig setDataMinBtRssiTh1:](self, "setDataMinBtRssiTh1:", [objc_msgSend(v15 objectForKeyedSubscript:{@"BTMinRssiTh1", "longLongValue"}]);
            -[WRM_iRATConfig setDataBtMovingAvgAlphaDenum:](self, "setDataBtMovingAvgAlphaDenum:", [objc_msgSend(v15 objectForKeyedSubscript:{@"BtMovingAvgAlphaDenum", "longLongValue"}]);
            -[WRM_iRATConfig setDataBtStickinessTimeThreshMs:](self, "setDataBtStickinessTimeThreshMs:", [objc_msgSend(v15 objectForKeyedSubscript:{@"BtStickinessTimeThreshMs", "longLongValue"}]);
            -[WRM_iRATConfig setDataMinWifiRssiTh0:](self, "setDataMinWifiRssiTh0:", [objc_msgSend(v15 objectForKeyedSubscript:{@"WifiMinRssiTh0", "longLongValue"}]);
            -[WRM_iRATConfig setDataMinWifiSnrTh0:](self, "setDataMinWifiSnrTh0:", [objc_msgSend(v15 objectForKeyedSubscript:{@"WifiMinSnrTh0", "longLongValue"}]);
            -[WRM_iRATConfig setDataMinWifiRssiTh1:](self, "setDataMinWifiRssiTh1:", [objc_msgSend(v15 objectForKeyedSubscript:{@"WifiMinRssiTh1", "longLongValue"}]);
            -[WRM_iRATConfig setDataMinWifiSnrTh1:](self, "setDataMinWifiSnrTh1:", [objc_msgSend(v15 objectForKeyedSubscript:{@"WifiMinSnrTh1", "longLongValue"}]);
            -[WRM_iRATConfig setDataMinWifiBeaconPerTh0:](self, "setDataMinWifiBeaconPerTh0:", [objc_msgSend(v15 objectForKeyedSubscript:{@"WifiMinBeaconPerTh0", "longLongValue"}]);
            -[WRM_iRATConfig setDataWifiMinBeaconCount:](self, "setDataWifiMinBeaconCount:", [objc_msgSend(v15 objectForKeyedSubscript:{@"WifiMinValidBeaconCount", "longLongValue"}]);
          }

          else
          {
            [WCM_Logging logLevel:18 message:@"No Data specific config"];
          }

          v16 = [v6 objectForKeyedSubscript:@"IDSWiFiMetrics"];
          if (v16)
          {
            v17 = v16;
            -[WRM_iRATConfig setIdsMinWiFiRssiTh0:](self, "setIdsMinWiFiRssiTh0:", [objc_msgSend(v16 objectForKeyedSubscript:{@"IDSMinWiFiRssiTh0", "longLongValue"}]);
            -[WRM_iRATConfig setIdsMinWiFiRssiTh1:](self, "setIdsMinWiFiRssiTh1:", [objc_msgSend(v17 objectForKeyedSubscript:{@"IDSMinWiFiRssiTh1", "longLongValue"}]);
            -[WRM_iRATConfig setIdsMinWiFiSnrTh0:](self, "setIdsMinWiFiSnrTh0:", [objc_msgSend(v17 objectForKeyedSubscript:{@"IDSMinWiFiSnrTh0", "longLongValue"}]);
            -[WRM_iRATConfig setIdsMinWiFiSnrTh1:](self, "setIdsMinWiFiSnrTh1:", [objc_msgSend(v17 objectForKeyedSubscript:{@"IDSMinWiFiSnrTh1", "longLongValue"}]);
            -[WRM_iRATConfig setIdsMinAvgWiFiTxPktLossRateTh0:](self, "setIdsMinAvgWiFiTxPktLossRateTh0:", [objc_msgSend(v17 objectForKeyedSubscript:{@"IDSMinAvgWiFiTxPktLossRateTh0", "longLongValue"}]);
            -[WRM_iRATConfig setIdsMinAvgWiFiTxPktLossRateTh1:](self, "setIdsMinAvgWiFiTxPktLossRateTh1:", [objc_msgSend(v17 objectForKeyedSubscript:{@"IDSMinAvgWiFiTxPktLossRateTh1", "longLongValue"}]);
            -[WRM_iRATConfig setIdsMinWiFiThroughputTh0:](self, "setIdsMinWiFiThroughputTh0:", [objc_msgSend(v17 objectForKeyedSubscript:{@"IDSMinWiFiThroughputTh0", "longLongValue"}]);
            -[WRM_iRATConfig setIdsMinWiFiThroughputTh1:](self, "setIdsMinWiFiThroughputTh1:", [objc_msgSend(v17 objectForKeyedSubscript:{@"IDSMinWiFiThroughputTh1", "longLongValue"}]);
            -[WRM_iRATConfig setIdsMinWiFiEffectivePhyRateTh0:](self, "setIdsMinWiFiEffectivePhyRateTh0:", [objc_msgSend(v17 objectForKeyedSubscript:{@"IDSMinWiFiEffectivePhyRateTh0", "longLongValue"}]);
            -[WRM_iRATConfig setIdsMinWiFiEffectivePhyRateTh1:](self, "setIdsMinWiFiEffectivePhyRateTh1:", [objc_msgSend(v17 objectForKeyedSubscript:{@"IDSMinWiFiEffectivePhyRateTh1", "longLongValue"}]);
          }

          else
          {
            [WCM_Logging logLevel:18 message:@"No IDS WiFi specific config"];
          }

          v18 = [v6 objectForKeyedSubscript:@"IDSMetricsIdsClient"];
          if (v18)
          {
            v19 = v18;
            -[WRM_iRATConfig setIdsPeriodicReportInterval:](self, "setIdsPeriodicReportInterval:", [objc_msgSend(v18 objectForKeyedSubscript:{@"IDSPeriodicReportInterval", "longLongValue"}]);
            -[WRM_iRATConfig setIdsWiFiMinRttTh1:](self, "setIdsWiFiMinRttTh1:", [objc_msgSend(v19 objectForKeyedSubscript:{@"IDSWiFiMinRttTh1", "longLongValue"}]);
            -[WRM_iRATConfig setIdsBTMinRttTh1:](self, "setIdsBTMinRttTh1:", [objc_msgSend(v19 objectForKeyedSubscript:{@"IDSBTiMinRttTh1", "longLongValue"}]);
            -[WRM_iRATConfig setIdsWiFiMinPerTh1:](self, "setIdsWiFiMinPerTh1:", [objc_msgSend(v19 objectForKeyedSubscript:{@"IDSWiFiMinPerTh1", "longLongValue"}]);
            -[WRM_iRATConfig setIdsAvgWiFiMinPerTh1:](self, "setIdsAvgWiFiMinPerTh1:", [objc_msgSend(v19 objectForKeyedSubscript:{@"IDSAvgWiFiMinPerTh1", "longLongValue"}]);
            -[WRM_iRATConfig setIdsMovAvgWiFiMinPerTh1:](self, "setIdsMovAvgWiFiMinPerTh1:", [objc_msgSend(v19 objectForKeyedSubscript:{@"IDSMovAvgWiFiMinPerTh1", "longLongValue"}]);
            -[WRM_iRATConfig setIdsBTMinPerTh1:](self, "setIdsBTMinPerTh1:", [objc_msgSend(v19 objectForKeyedSubscript:{@"IDSBTMinPerTh1", "longLongValue"}]);
          }

          else
          {
            [WCM_Logging logLevel:18 message:@"No IDS Client specific config"];
          }

          v20 = [v6 objectForKeyedSubscript:@"CellularMetrics"];
          if (v20)
          {
            v21 = v20;
            -[WRM_iRATConfig setMinSigBarTh0:](self, "setMinSigBarTh0:", [objc_msgSend(v20 objectForKeyedSubscript:{@"MinSigBarTh0", "longLongValue"}]);
            -[WRM_iRATConfig setMinMovSigBarTh0:](self, "setMinMovSigBarTh0:", [objc_msgSend(v21 objectForKeyedSubscript:{@"MinMovSigBarTh0", "longLongValue"}]);
            -[WRM_iRATConfig setMinSigBarTh1:](self, "setMinSigBarTh1:", [objc_msgSend(v21 objectForKeyedSubscript:{@"MinSigBarTh1", "longLongValue"}]);
            -[WRM_iRATConfig setMinSigBarTh2:](self, "setMinSigBarTh2:", [objc_msgSend(v21 objectForKeyedSubscript:{@"MinSigBarTh2", "longLongValue"}]);
            -[WRM_iRATConfig setSosWaypointRSRPTh:](self, "setSosWaypointRSRPTh:", [objc_msgSend(v21 objectForKeyedSubscript:{@"SOSWaypointRSRPTh", "longLongValue"}]);
          }

          else
          {
            [WCM_Logging logLevel:18 message:@"No Cellular specific config"];
          }

          v22 = [v6 objectForKeyedSubscript:@"SymtompsMetrics"];
          if (v22)
          {
            v23 = v22;
            -[WRM_iRATConfig setTransportMetricsRateLimitingThreshold:](self, "setTransportMetricsRateLimitingThreshold:", [objc_msgSend(v22 objectForKeyedSubscript:{@"TransportMetricsRateLimitingThreshold", "longLongValue"}]);
            -[WRM_iRATConfig setTcpJitterThreshold:](self, "setTcpJitterThreshold:", [objc_msgSend(v23 objectForKeyedSubscript:{@"TcpJitterThreshold", "longLongValue"}]);
            -[WRM_iRATConfig setTcpRttThreshold:](self, "setTcpRttThreshold:", [objc_msgSend(v23 objectForKeyedSubscript:{@"TcpRttThreshold", "longLongValue"}]);
            -[WRM_iRATConfig setTcpIdleConnSuccessThreshold:](self, "setTcpIdleConnSuccessThreshold:", [objc_msgSend(v23 objectForKeyedSubscript:{@"TcpIdleConnSuccessThreshold", "longLongValue"}]);
            -[WRM_iRATConfig setTcpActiveConnSuccessThreshold:](self, "setTcpActiveConnSuccessThreshold:", [objc_msgSend(v23 objectForKeyedSubscript:{@"TcpActiveConnSuccessThreshold", "longLongValue"}]);
            -[WRM_iRATConfig setHistoricalAgeOfConnectedLinkInDays:](self, "setHistoricalAgeOfConnectedLinkInDays:", [objc_msgSend(v23 objectForKeyedSubscript:{@"HistoricalAgeOfConnectedLinkInDays", "longLongValue"}]);
          }

          else
          {
            [WCM_Logging logLevel:18 message:@"No Symtomps specific config"];
          }

          v24 = [v6 objectForKeyedSubscript:@"FaceTimeMetrics"];
          if (v24)
          {
            v25 = v24;
            -[WRM_iRATConfig setFaceTimeCellularStickinessThreaholdActive:](self, "setFaceTimeCellularStickinessThreaholdActive:", [objc_msgSend(v24 objectForKeyedSubscript:{@"FaceTimeCellularStickinessThreaholdActive", "longLongValue"}]);
            -[WRM_iRATConfig setFaceTimeMinActiveWiFiAvgTxPktLossRateTh:](self, "setFaceTimeMinActiveWiFiAvgTxPktLossRateTh:", [objc_msgSend(v25 objectForKeyedSubscript:{@"FaceTimeMinActiveWiFiAvgTxPktLossRateTh", "longLongValue"}]);
            -[WRM_iRATConfig setFaceTimeHandoverAvgRxPktLossThreshold:](self, "setFaceTimeHandoverAvgRxPktLossThreshold:", [objc_msgSend(v25 objectForKeyedSubscript:{@"FaceTimeHandoverAvgRxPktLossThreshold", "longLongValue"}]);
            -[WRM_iRATConfig setFaceTimeHandoverRxPktLossThreshold:](self, "setFaceTimeHandoverRxPktLossThreshold:", [objc_msgSend(v25 objectForKeyedSubscript:{@"FaceTimeHandoverRxPktLossThreshold", "longLongValue"}]);
            -[WRM_iRATConfig setFaceTimeMinActiveWiFiRssiTh0:](self, "setFaceTimeMinActiveWiFiRssiTh0:", [objc_msgSend(v25 objectForKeyedSubscript:{@"FaceTimeMinActiveWiFiRssiTh0", "longLongValue"}]);
            -[WRM_iRATConfig setFaceTimeMinActiveWiFiRssiTh1:](self, "setFaceTimeMinActiveWiFiRssiTh1:", [objc_msgSend(v25 objectForKeyedSubscript:{@"FaceTimeMinActiveWiFiRssiTh1", "longLongValue"}]);
            -[WRM_iRATConfig setFaceTimeEnhancedVideoMetricsEnabled:](self, "setFaceTimeEnhancedVideoMetricsEnabled:", [objc_msgSend(v25 objectForKeyedSubscript:{@"FaceTimeEnhancedVideoMetricsEnabled", "longLongValue"}]);
            -[WRM_iRATConfig setFaceTimeMovingAverageWindow:](self, "setFaceTimeMovingAverageWindow:", [objc_msgSend(v25 objectForKeyedSubscript:{@"FaceTimeMovAvgWindow", "longLongValue"}]);
            -[WRM_iRATConfig setFaceTimeVideoPacketLoss:](self, "setFaceTimeVideoPacketLoss:", [objc_msgSend(v25 objectForKeyedSubscript:{@"FaceTimeVideoPktLoss", "longLongValue"}]);
            -[WRM_iRATConfig setFaceTimeAleratedModeRssiTh1:](self, "setFaceTimeAleratedModeRssiTh1:", [objc_msgSend(v25 objectForKeyedSubscript:{@"FaceTimeAleratedRssiTh1", "longLongValue"}]);
            -[WRM_iRATConfig setFaceTimeAleratedModeRssiTh0:](self, "setFaceTimeAleratedModeRssiTh0:", [objc_msgSend(v25 objectForKeyedSubscript:{@"FaceTimeAleratedRssiTh0", "longLongValue"}]);
            -[WRM_iRATConfig setFaceTimeAleratedModeCCATh1:](self, "setFaceTimeAleratedModeCCATh1:", [objc_msgSend(v25 objectForKeyedSubscript:{@"FaceTimeAleratedCcaTh1", "longLongValue"}]);
            -[WRM_iRATConfig setFaceTimeAleratedModeCCATh0:](self, "setFaceTimeAleratedModeCCATh0:", [objc_msgSend(v25 objectForKeyedSubscript:{@"FaceTimeAleratedCcaTh0", "longLongValue"}]);
            -[WRM_iRATConfig setFaceTimeAleratedModeStationCount:](self, "setFaceTimeAleratedModeStationCount:", [objc_msgSend(v25 objectForKeyedSubscript:{@"FaceTimeAleratedStationCount", "longLongValue"}]);
            -[WRM_iRATConfig setFaceTimeAleratedModeVideoErasures:](self, "setFaceTimeAleratedModeVideoErasures:", [objc_msgSend(v25 objectForKeyedSubscript:{@"FaceTimeAleratedVidErasureTh1", "longLongValue"}]);
            -[WRM_iRATConfig setFaceTimeAleratedModeTxPer1:](self, "setFaceTimeAleratedModeTxPer1:", [objc_msgSend(v25 objectForKeyedSubscript:{@"FaceTimeAleratedTxPerTh1", "longLongValue"}]);
            -[WRM_iRATConfig setFaceTimeAleratedModeTxPer0:](self, "setFaceTimeAleratedModeTxPer0:", [objc_msgSend(v25 objectForKeyedSubscript:{@"FaceTimeAleratedTxPerTh0", "longLongValue"}]);
          }

          else
          {
            [WCM_Logging logLevel:18 message:@"No FaceTime specific config"];
          }

          v26 = [v6 objectForKeyedSubscript:@"CommCenterManagerMetrics"];
          if (v26)
          {
            v27 = v26;
            -[WRM_iRATConfig setCommCenterStickinessThreasholdWiFiProximity:](self, "setCommCenterStickinessThreasholdWiFiProximity:", [objc_msgSend(v26 objectForKeyedSubscript:{@"CommCenterStickinessThreasholdWiFiProximity", "longLongValue"}]);
            -[WRM_iRATConfig setCommCenterStickinessThreasholdNotinWiFiProximity:](self, "setCommCenterStickinessThreasholdNotinWiFiProximity:", [objc_msgSend(v27 objectForKeyedSubscript:{@"CommCenterStickinessThreasholdNotinWiFiProximity", "longLongValue"}]);
            -[WRM_iRATConfig setCommCenterThumperStickinessThreasholdNotinBTProximity:](self, "setCommCenterThumperStickinessThreasholdNotinBTProximity:", [objc_msgSend(v27 objectForKeyedSubscript:{@"CommCenterThumperStickinessThreasholdNotinBTProximity", "longLongValue"}]);
            -[WRM_iRATConfig setCommCenterThumperStickinessThreasholdNotinBTProximity:](self, "setCommCenterThumperStickinessThreasholdNotinBTProximity:", [objc_msgSend(v27 objectForKeyedSubscript:{@"commCenterBTlpmThreasholdBTProximity", "longLongValue"}]);
            -[WRM_iRATConfig setCommCenterAppDebouncingTimer:](self, "setCommCenterAppDebouncingTimer:", [objc_msgSend(v27 objectForKeyedSubscript:{@"CommCenterAppDeboucingTimer", "longLongValue"}]);
            -[WRM_iRATConfig setCommCenterPeriodicBreadCrumTimer:](self, "setCommCenterPeriodicBreadCrumTimer:", [objc_msgSend(v27 objectForKeyedSubscript:{@"CommCenterPeriodicBreadCrumTimer", "longLongValue"}]);
            -[WRM_iRATConfig setCommCenterBreadCrumProcTimer:](self, "setCommCenterBreadCrumProcTimer:", [objc_msgSend(v27 objectForKeyedSubscript:{@"CommCenterBreadCrumProcTimer", "longLongValue"}]);
          }

          else
          {
            [WCM_Logging logLevel:18 message:@"No CommCenterManager specific config"];
          }

          v28 = [v6 objectForKeyedSubscript:@"CBRSMetrics"];
          if (v28)
          {
            v29 = v28;
            -[WRM_iRATConfig setCbrsEnterRsrpMin:](self, "setCbrsEnterRsrpMin:", [objc_msgSend(v28 objectForKeyedSubscript:{@"CBRSEnterRsrpMin", "longLongValue"}]);
            -[WRM_iRATConfig setCbrsEnterRsrqMin:](self, "setCbrsEnterRsrqMin:", [objc_msgSend(v29 objectForKeyedSubscript:{@"CBRSEnterRsrqMin", "longLongValue"}]);
            -[WRM_iRATConfig setCbrsExitRsrpMin:](self, "setCbrsExitRsrpMin:", [objc_msgSend(v29 objectForKeyedSubscript:{@"CBRSExitRsrpMin", "longLongValue"}]);
            -[WRM_iRATConfig setCbrsExitRsrqMin:](self, "setCbrsExitRsrqMin:", [objc_msgSend(v29 objectForKeyedSubscript:{@"CBRSExitRsrqMin", "longLongValue"}]);
            -[WRM_iRATConfig setNonCbrsEnterRsrpMin:](self, "setNonCbrsEnterRsrpMin:", [objc_msgSend(v29 objectForKeyedSubscript:{@"NonCBRSEnterRsrpMin", "longLongValue"}]);
            -[WRM_iRATConfig setNonCbrsEnterRsrqMin:](self, "setNonCbrsEnterRsrqMin:", [objc_msgSend(v29 objectForKeyedSubscript:{@"NonCBRSEnterRsrqMin", "longLongValue"}]);
            -[WRM_iRATConfig setNonCbrsExitRsrpMin:](self, "setNonCbrsExitRsrpMin:", [objc_msgSend(v29 objectForKeyedSubscript:{@"nonCBRSExitRsrpMin", "longLongValue"}]);
            -[WRM_iRATConfig setNonCbrsExitRsrqMin:](self, "setNonCbrsExitRsrqMin:", [objc_msgSend(v29 objectForKeyedSubscript:{@"nonCBRSExitRsrqMin", "longLongValue"}]);
            -[WRM_iRATConfig setCbrsEnterRsrpOffset:](self, "setCbrsEnterRsrpOffset:", [objc_msgSend(v29 objectForKeyedSubscript:{@"CBRSEnterRsrpOffset", "longLongValue"}]);
            -[WRM_iRATConfig setCbrsEnterRsrqOffset:](self, "setCbrsEnterRsrqOffset:", [objc_msgSend(v29 objectForKeyedSubscript:{@"CBRSEnterRsrqOffset", "longLongValue"}]);
            -[WRM_iRATConfig setCbrsExitRsrpOffset:](self, "setCbrsExitRsrpOffset:", [objc_msgSend(v29 objectForKeyedSubscript:{@"CBRSExitRsrpOffset", "longLongValue"}]);
            -[WRM_iRATConfig setCbrsExitRsrqOffset:](self, "setCbrsExitRsrqOffset:", [objc_msgSend(v29 objectForKeyedSubscript:{@"CBRSExitRsrqOffset", "longLongValue"}]);
          }

          else
          {
            [WCM_Logging logLevel:18 message:@"No cbrsConfig specific config"];
          }

          [(WRM_iRATConfig *)self printiRATConfig];
          v11 = @"===== Loading iRAT Configuration Policies completes. ";
        }

        else
        {
          v11 = @"No iRAT active config";
        }
      }

      else
      {
        v11 = @"No iRAT specific config found";
      }
    }

    else
    {
      v11 = @"No Policy found";
    }

    [WCM_Logging logLevel:18 message:v11];
  }

  else
  {

    [WCM_Logging logLevel:18 message:@"No Policy resource path found"];
  }
}

- (void)updateFaceTimeRSSITh:(int64_t)a3
{
  [(WRM_iRATConfig *)self setFaceTimeMinActiveWiFiRssiTh1:?];

  [(WRM_iRATConfig *)self setFaceTimeMinActiveWiFiRssiTh0:a3 + 10];
}

- (void)revertFaceTimeThToAzul
{
  [(WRM_iRATConfig *)self setFaceTimeMinActiveWiFiRssiTh1:-80];

  [(WRM_iRATConfig *)self setFaceTimeMinActiveWiFiRssiTh0:-70];
}

@end