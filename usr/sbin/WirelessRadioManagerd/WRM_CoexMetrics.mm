@interface WRM_CoexMetrics
- (WRM_CoexMetrics)init;
- (void)dealloc;
@end

@implementation WRM_CoexMetrics

- (WRM_CoexMetrics)init
{
  v3.receiver = self;
  v3.super_class = WRM_CoexMetrics;
  return [(WRM_CoexMetrics *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WRM_CoexMetrics;
  [(WRM_CoexMetrics *)&v2 dealloc];
}

@end