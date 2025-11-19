@interface HRFenceInfo
- (HRFenceInfo)initWithFenceName:(unint64_t)a3 traceStart:(unint64_t)a4 traceEnd:(unint64_t)a5;
@end

@implementation HRFenceInfo

- (HRFenceInfo)initWithFenceName:(unint64_t)a3 traceStart:(unint64_t)a4 traceEnd:(unint64_t)a5
{
  v11.receiver = self;
  v11.super_class = HRFenceInfo;
  v8 = [(HRFenceInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(HRFenceInfo *)v8 setFenceName:a3];
    [(HRFenceInfo *)v9 setFenceStartTime:a4];
    [(HRFenceInfo *)v9 setFenceResolutionTime:a5];
    [(HRFenceInfo *)v9 setFenceEndTime:a5];
    [(HRFenceInfo *)v9 setResolution:0];
  }

  return v9;
}

@end