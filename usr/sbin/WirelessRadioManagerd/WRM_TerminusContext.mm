@interface WRM_TerminusContext
- (WRM_TerminusContext)init;
- (void)dealloc;
@end

@implementation WRM_TerminusContext

- (WRM_TerminusContext)init
{
  v5.receiver = self;
  v5.super_class = WRM_TerminusContext;
  v2 = [(WRM_Mobility_Context *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(WRM_TerminusContext *)v2 setMAppLinkPreference:0];
    [(WRM_TerminusContext *)v3 setMCurrentActiveLink:2];
    [(WRM_TerminusContext *)v3 setMTerminusIsRegistered:0];
    [(WRM_TerminusContext *)v3 setMBtLinkIsRecommended:1];
    [(WRM_TerminusContext *)v3 setMCompanionWifiLinkIsRecommended:1];
    [(WRM_TerminusContext *)v3 setMDirectWifiLinkIsRecommended:1];
    [(WRM_TerminusContext *)v3 setMDirectWifiLinkRecommendationUpdateNeeded:0];
    [(WRM_TerminusContext *)v3 setMBtLinkRecommendationUpdateNeeded:0];
    [(WRM_TerminusContext *)v3 setMDirectWifiLinkRecommendationUpdateNeeded:0];
    [(WRM_TerminusContext *)v3 setMForceUpdateNeeded:0];
    [(WRM_TerminusContext *)v3 setMClientSubscriptionValid:0];
    [(WRM_TerminusContext *)v3 setMIsRetry:0];
    [(WRM_TerminusContext *)v3 setIsGizmoNearbyOverBt:1];
    [(WRM_TerminusContext *)v3 setBtMovingAvgRSSI:0];
    [(WRM_TerminusContext *)v3 setWifiRSSI:0];
    [(WRM_TerminusContext *)v3 setWifiSNR:0];
    [(WRM_TerminusContext *)v3 setBeaconPER:0];
    [(WRM_TerminusContext *)v3 setNwType:0];
    [(WRM_TerminusContext *)v3 setWifiCCA:0];
    [(WRM_TerminusContext *)v3 setLsmRecommendationBe:0];
    [(WRM_TerminusContext *)v3 setExpectedThroughputVIBE:0];
    [(WRM_TerminusContext *)v3 setPacketLifetimeVIBE:0];
    [(WRM_TerminusContext *)v3 setBtRetransmissionRateTx:0];
    [(WRM_TerminusContext *)v3 setBtRetransmissionRateRx:0];
    [(WRM_TerminusContext *)v3 setBtTech:0];
  }

  return v3;
}

- (void)dealloc
{
  [(WRM_TerminusContext *)self setMAppLinkPreference:0];
  [(WRM_TerminusContext *)self setMCurrentActiveLink:2];
  [(WRM_TerminusContext *)self setMTerminusIsRegistered:0];
  [(WRM_TerminusContext *)self setMBtLinkIsRecommended:1];
  [(WRM_TerminusContext *)self setMCompanionWifiLinkIsRecommended:1];
  [(WRM_TerminusContext *)self setMDirectWifiLinkIsRecommended:1];
  [(WRM_TerminusContext *)self setMDirectWifiLinkRecommendationUpdateNeeded:0];
  [(WRM_TerminusContext *)self setMBtLinkRecommendationUpdateNeeded:0];
  [(WRM_TerminusContext *)self setMDirectWifiLinkRecommendationUpdateNeeded:0];
  [(WRM_TerminusContext *)self setMForceUpdateNeeded:0];
  [(WRM_TerminusContext *)self setMClientSubscriptionValid:0];
  [(WRM_TerminusContext *)self setMIsRetry:0];
  [(WRM_TerminusContext *)self setIsGizmoNearbyOverBt:1];
  [(WRM_TerminusContext *)self setBtMovingAvgRSSI:0];
  [(WRM_TerminusContext *)self setWifiRSSI:0];
  [(WRM_TerminusContext *)self setWifiSNR:0];
  [(WRM_TerminusContext *)self setBeaconPER:0];
  [(WRM_TerminusContext *)self setNwType:0];
  [(WRM_TerminusContext *)self setWifiCCA:0];
  [(WRM_TerminusContext *)self setLsmRecommendationBe:0];
  [(WRM_TerminusContext *)self setExpectedThroughputVIBE:0];
  [(WRM_TerminusContext *)self setPacketLifetimeVIBE:0];
  [(WRM_TerminusContext *)self setBtRetransmissionRateTx:0];
  [(WRM_TerminusContext *)self setBtRetransmissionRateRx:0];
  [(WRM_TerminusContext *)self setBtTech:0];
  v3.receiver = self;
  v3.super_class = WRM_TerminusContext;
  [(WRM_Mobility_Context *)&v3 dealloc];
}

@end