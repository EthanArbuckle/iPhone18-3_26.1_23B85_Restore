@interface WiFiRecommendationStub
- (WiFiRecommendationStub)initWithWiFiNetwork:(__WiFiNetwork *)a3;
- (void)dealloc;
@end

@implementation WiFiRecommendationStub

- (WiFiRecommendationStub)initWithWiFiNetwork:(__WiFiNetwork *)a3
{
  v11.receiver = self;
  v11.super_class = WiFiRecommendationStub;
  v4 = [(WiFiRecommendationStub *)&v11 init];
  v5 = sub_10000A878(a3);
  v4->_SSID = v5;
  v6 = v5;
  v7 = [[WiFiScanObserverNetwork alloc] initWithWiFiNetworkRef:a3];
  v4->_scannedNetwork = v7;
  v8 = v7;
  v9 = objc_alloc_init(WiFiCandidateNetworkStub);
  [(WiFiCandidateNetworkStub *)v9 setSSID:v4->_SSID];
  [(WiFiCandidateNetworkStub *)v9 setSource:2];
  v4->_network = v9;
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WiFiRecommendationStub;
  [(WiFiRecommendationStub *)&v3 dealloc];
}

@end