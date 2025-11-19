@interface WRM_FaceTimeMetrics
- (WRM_FaceTimeMetrics)init;
- (void)dealloc;
@end

@implementation WRM_FaceTimeMetrics

- (WRM_FaceTimeMetrics)init
{
  v3.receiver = self;
  v3.super_class = WRM_FaceTimeMetrics;
  result = [(WRM_FaceTimeMetrics *)&v3 init];
  if (result)
  {
    result->mFaceTime.callSimSlot = 0;
    *result->mFaceTime.iRatPolicy = 0u;
    *&result->mFaceTime.audioErasure = 0u;
    *&result->mFaceTime.cellRsrp = 0u;
    *&result->mFaceTime.signalBar = 0u;
    *&result->mFaceTime.facetimeDelay = 0u;
    *&result->mFaceTime.iRATRecommendationReason = 0u;
    *&result->mFaceTime.wifiEstimatedBandwitdh = 0u;
    *&result->mFaceTime.wifiTxPER = 0u;
    *&result->mFaceTime.cca = 0u;
    *&result->mFaceTime.wifiRssi = 0u;
    *&result->mFaceTime.timestamp = 0u;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WRM_FaceTimeMetrics;
  [(WRM_FaceTimeMetrics *)&v2 dealloc];
}

@end