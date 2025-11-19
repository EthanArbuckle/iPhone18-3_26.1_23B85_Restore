@interface WRM_iRATProximityRecommendation
- (WRM_iRATProximityRecommendation)init;
- (void)dealloc;
@end

@implementation WRM_iRATProximityRecommendation

- (WRM_iRATProximityRecommendation)init
{
  v4.receiver = self;
  v4.super_class = WRM_iRATProximityRecommendation;
  v2 = [(WRM_iRATProximityRecommendation *)&v4 init];
  if (v2)
  {
    [(WRM_iRATProximityRecommendation *)v2 setMetrics:objc_alloc_init(WRM_iRATProximityRecommendationLogging)];
  }

  return v2;
}

- (void)dealloc
{
  if ([(WRM_iRATProximityRecommendation *)self metrics])
  {

    [(WRM_iRATProximityRecommendation *)self setMetrics:0];
  }

  v3.receiver = self;
  v3.super_class = WRM_iRATProximityRecommendation;
  [(WRM_iRATProximityRecommendation *)&v3 dealloc];
}

@end