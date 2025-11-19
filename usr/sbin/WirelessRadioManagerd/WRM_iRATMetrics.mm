@interface WRM_iRATMetrics
- (WRM_iRATMetrics)init;
- (void)dealloc;
@end

@implementation WRM_iRATMetrics

- (WRM_iRATMetrics)init
{
  v5.receiver = self;
  v5.super_class = WRM_iRATMetrics;
  v2 = [(WRM_iRATMetrics *)&v5 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 104) = 0u;
    *(v2 + 88) = 0u;
    *(v2 + 72) = 0u;
    *(v2 + 56) = 0u;
    *(v2 + 40) = 0u;
    *(v2 + 24) = 0u;
    *(v2 + 8) = 0u;
    *(v2 + 120) = 0u;
    *(v2 + 136) = 0u;
    *(v2 + 152) = 0u;
    *(v2 + 168) = 0u;
    *(v2 + 184) = 0u;
    *(v2 + 200) = 0u;
    *(v2 + 27) = 0;
    *(v2 + 28) = objc_alloc_init(NSMutableArray);
  }

  return v3;
}

- (void)dealloc
{
  mHORecordCache = self->mHORecordCache;
  if (mHORecordCache)
  {
  }

  v4.receiver = self;
  v4.super_class = WRM_iRATMetrics;
  [(WRM_iRATMetrics *)&v4 dealloc];
}

@end