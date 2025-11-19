@interface WRM_MetricsiRAT5GVersusWiFi
- (WRM_MetricsiRAT5GVersusWiFi)init;
- (void)dealloc;
@end

@implementation WRM_MetricsiRAT5GVersusWiFi

- (WRM_MetricsiRAT5GVersusWiFi)init
{
  v3.receiver = self;
  v3.super_class = WRM_MetricsiRAT5GVersusWiFi;
  result = [(WRM_MetricsiRAT5GVersusWiFi *)&v3 init];
  if (result)
  {
    *&result->m5GVersusWiFiMetrics.total_nr_bandwidth = 0;
    *&result->m5GVersusWiFiMetrics.radioFrequency = 0u;
    *&result->m5GVersusWiFiMetrics.wifiRecommendationConfidence = 0u;
    *&result->m5GVersusWiFiMetrics.highThermalTemperatureNotification = 0u;
    *&result->m5GVersusWiFiMetrics.wifiWifiEstThoughtputConfidence = 0u;
    *&result->m5GVersusWiFiMetrics.wifiWghtAVGRXPHYRATE = 0u;
    *&result->m5GVersusWiFiMetrics.wifiRxRetry = 0u;
    *&result->m5GVersusWiFiMetrics.wifiCca = 0u;
    *&result->m5GVersusWiFiMetrics.cellRrcState = 0u;
    *&result->m5GVersusWiFiMetrics.cellNrSNR = 0u;
    *&result->m5GVersusWiFiMetrics.cellNrEstimatedThroughput = 0u;
    *&result->m5GVersusWiFiMetrics.cellLteRSRQ = 0u;
    *&result->m5GVersusWiFiMetrics.cellEstimatedBw = 0u;
    *&result->m5GVersusWiFiMetrics.timestamp = 0u;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WRM_MetricsiRAT5GVersusWiFi;
  [(WRM_MetricsiRAT5GVersusWiFi *)&v2 dealloc];
}

@end