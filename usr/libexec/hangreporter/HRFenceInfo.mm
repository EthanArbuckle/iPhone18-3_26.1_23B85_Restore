@interface HRFenceInfo
- (HRFenceInfo)initWithFenceName:(unint64_t)name traceStart:(unint64_t)start traceEnd:(unint64_t)end;
@end

@implementation HRFenceInfo

- (HRFenceInfo)initWithFenceName:(unint64_t)name traceStart:(unint64_t)start traceEnd:(unint64_t)end
{
  v11.receiver = self;
  v11.super_class = HRFenceInfo;
  v8 = [(HRFenceInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(HRFenceInfo *)v8 setFenceName:name];
    [(HRFenceInfo *)v9 setFenceStartTime:start];
    [(HRFenceInfo *)v9 setFenceResolutionTime:end];
    [(HRFenceInfo *)v9 setFenceEndTime:end];
    [(HRFenceInfo *)v9 setResolution:0];
  }

  return v9;
}

@end