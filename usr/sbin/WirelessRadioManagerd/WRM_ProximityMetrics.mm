@interface WRM_ProximityMetrics
- (WRM_ProximityMetrics)init;
- (void)dealloc;
@end

@implementation WRM_ProximityMetrics

- (WRM_ProximityMetrics)init
{
  v3.receiver = self;
  v3.super_class = WRM_ProximityMetrics;
  result = [(WRM_ProximityMetrics *)&v3 init];
  if (result)
  {
    *&result->mProximity.btRssi = 0u;
    *&result->mProximity.newLinkState = 0u;
    *&result->mProximity.ccAssertion = 0u;
    *&result->mProximity.timestamp = 0u;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WRM_ProximityMetrics;
  [(WRM_ProximityMetrics *)&v2 dealloc];
}

@end