@interface WRM_MetricsiRATDataRecommendation
- (WRM_MetricsiRATDataRecommendation)init;
- (void)dealloc;
@end

@implementation WRM_MetricsiRATDataRecommendation

- (WRM_MetricsiRATDataRecommendation)init
{
  v3.receiver = self;
  v3.super_class = WRM_MetricsiRATDataRecommendation;
  result = [(WRM_MetricsiRATDataRecommendation *)&v3 init];
  if (result)
  {
    *&result->mDataLinkPreferenceMetrics.packetLifetimeVIBE = 0u;
    *&result->mDataLinkPreferenceMetrics.decisionVO = 0u;
    *&result->mDataLinkPreferenceMetrics.wifiTxPhyRate = 0u;
    *&result->mDataLinkPreferenceMetrics.wifiEstimatedBandwitdh = 0u;
    *&result->mDataLinkPreferenceMetrics.bcnPer = 0u;
    *&result->mDataLinkPreferenceMetrics.wifiRssi = 0u;
    *&result->mDataLinkPreferenceMetrics.ratType = 0u;
    *&result->mDataLinkPreferenceMetrics.dataAppStatus = 0u;
    *&result->mDataLinkPreferenceMetrics.motionState = 0u;
    *&result->mDataLinkPreferenceMetrics.voiceLinkPref = 0u;
    *&result->mDataLinkPreferenceMetrics.timestamp = 0u;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WRM_MetricsiRATDataRecommendation;
  [(WRM_MetricsiRATDataRecommendation *)&v2 dealloc];
}

@end