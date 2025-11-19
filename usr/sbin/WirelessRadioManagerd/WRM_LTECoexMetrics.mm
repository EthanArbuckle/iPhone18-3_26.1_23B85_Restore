@interface WRM_LTECoexMetrics
- (WRM_LTECoexMetrics)init;
- (void)dealloc;
@end

@implementation WRM_LTECoexMetrics

- (WRM_LTECoexMetrics)init
{
  v3.receiver = self;
  v3.super_class = WRM_LTECoexMetrics;
  result = [(WRM_LTECoexMetrics *)&v3 init];
  if (result)
  {
    *&result->mAntSelPolicyStats.IsCoexBand = 0;
    *&result->mAntSelPolicyStats.IssueBand = 0;
    *&result->mULCACoexStats.ULCAHasCoexBand = 0u;
    *&result->mULCACoexStats.ULCAPrimaryCarrierDLBW = 0u;
    result->mULCACoexStats.ULCACriticalCarrierDLBW = 0;
    *&result->mWRMAGCStats.issueBand = 0;
    *&result->mWRMAGCStats.wifiAGCMode = 0;
    *&result->mWRMAGCStats.hasIssue = 0;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WRM_LTECoexMetrics;
  [(WRM_LTECoexMetrics *)&v2 dealloc];
}

@end