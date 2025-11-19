@interface WRM_StreamingMetrics
- (WRM_StreamingMetrics)init;
- (void)dealloc;
@end

@implementation WRM_StreamingMetrics

- (WRM_StreamingMetrics)init
{
  v3.receiver = self;
  v3.super_class = WRM_StreamingMetrics;
  result = [(WRM_StreamingMetrics *)&v3 init];
  if (result)
  {
    *&result->mStreaming.timestamp = 0u;
    *&result->mStreaming.total_configured_mimo_layers = 0u;
    *&result->mStreaming.numStall = 0u;
    *&result->mStreaming.cellChannelBW = 0u;
    *&result->mStreaming.mac_DLCA_configured = 0u;
    *&result->mStreaming.cellNsaEnabled = 0u;
    *&result->mStreaming.cellLteRSRQ = 0u;
    *&result->mStreaming.wifinumberOfSpatialStreams = 0u;
    *&result->mStreaming.tcpRTTmin = 0u;
    *&result->mStreaming.coldStartTypeCellular = 0u;
    *&result->mStreaming.btWiFiCoexState = 0u;
    *&result->mStreaming.lqmScoreBT = 0u;
    *&result->mStreaming.wifiModelConfidenceLevel = 0u;
    *&result->mStreaming.devicePointOfInterest = 0u;
    *&result->mStreaming.rrcState = 0u;
    *&result->mStreaming.pkgLifeTimeVO = 0u;
    *&result->mStreaming.weightedAverageRssi = 0u;
    *&result->mStreaming.goodDecisionsCounterVO = 0u;
    *&result->mStreaming.invalidDecisionCounter = 0u;
    *&result->mStreaming.wifiRssi = 0u;
    *&result->mStreaming.StationCount = 0u;
    *&result->mStreaming.maxOfActualLowBandwidth = 0u;
    *&result->mStreaming.movingAvgHighBandwidth = 0u;
    *&result->mStreaming.buffer_interval = 0u;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WRM_StreamingMetrics;
  [(WRM_StreamingMetrics *)&v2 dealloc];
}

@end