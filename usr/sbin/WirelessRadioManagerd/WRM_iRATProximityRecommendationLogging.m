@interface WRM_iRATProximityRecommendationLogging
- (WRM_iRATProximityRecommendationLogging)init;
- (void)dealloc;
@end

@implementation WRM_iRATProximityRecommendationLogging

- (WRM_iRATProximityRecommendationLogging)init
{
  v4.receiver = self;
  v4.super_class = WRM_iRATProximityRecommendationLogging;
  v2 = [(WRM_iRATProximityRecommendationLogging *)&v4 init];
  if (v2)
  {
    [(WRM_iRATProximityRecommendationLogging *)v2 setUuid:objc_alloc_init(NSUUID)];
    [(WRM_iRATProximityRecommendationLogging *)v2 setBtRSSI:0];
    [(WRM_iRATProximityRecommendationLogging *)v2 setWifiSNR:0];
    [(WRM_iRATProximityRecommendationLogging *)v2 setWifiRSSI:0];
    [(WRM_iRATProximityRecommendationLogging *)v2 setBeaconPER:0];
    [(WRM_iRATProximityRecommendationLogging *)v2 setNwType:0];
    [(WRM_iRATProximityRecommendationLogging *)v2 setWifiCCA:0];
    [(WRM_iRATProximityRecommendationLogging *)v2 setLsmRecommendationBe:0];
    [(WRM_iRATProximityRecommendationLogging *)v2 setExpectedThroughputVIBE:0];
    [(WRM_iRATProximityRecommendationLogging *)v2 setPacketLifetimeVIBE:0];
    [(WRM_iRATProximityRecommendationLogging *)v2 setPacketLossRateVIBE:0];
    [(WRM_iRATProximityRecommendationLogging *)v2 setBtRetransmissionRateRx:0];
    [(WRM_iRATProximityRecommendationLogging *)v2 setBtRetransmissionRateTx:0];
    [(WRM_iRATProximityRecommendationLogging *)v2 setBtTech:0];
  }

  return v2;
}

- (void)dealloc
{
  if ([(WRM_iRATProximityRecommendationLogging *)self Uuid])
  {

    [(WRM_iRATProximityRecommendationLogging *)self setUuid:0];
  }

  [(WRM_iRATProximityRecommendationLogging *)self setBtRSSI:0];
  [(WRM_iRATProximityRecommendationLogging *)self setWifiSNR:0];
  [(WRM_iRATProximityRecommendationLogging *)self setWifiRSSI:0];
  [(WRM_iRATProximityRecommendationLogging *)self setBeaconPER:0];
  [(WRM_iRATProximityRecommendationLogging *)self setNwType:0];
  [(WRM_iRATProximityRecommendationLogging *)self setWifiCCA:0];
  [(WRM_iRATProximityRecommendationLogging *)self setLsmRecommendationBe:0];
  [(WRM_iRATProximityRecommendationLogging *)self setExpectedThroughputVIBE:0];
  [(WRM_iRATProximityRecommendationLogging *)self setPacketLifetimeVIBE:0];
  [(WRM_iRATProximityRecommendationLogging *)self setPacketLossRateVIBE:0];
  [(WRM_iRATProximityRecommendationLogging *)self setBtRetransmissionRateRx:0];
  [(WRM_iRATProximityRecommendationLogging *)self setBtRetransmissionRateTx:0];
  [(WRM_iRATProximityRecommendationLogging *)self setBtTech:0];
  v3.receiver = self;
  v3.super_class = WRM_iRATProximityRecommendationLogging;
  [(WRM_iRATProximityRecommendationLogging *)&v3 dealloc];
}

@end