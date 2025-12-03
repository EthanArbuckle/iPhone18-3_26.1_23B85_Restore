@interface HRHandleInfo
- (HRHandleInfo)initWithHandleName:(unint64_t)name fenceName:(unint64_t)fenceName traceStart:(unint64_t)start traceEnd:(unint64_t)end;
@end

@implementation HRHandleInfo

- (HRHandleInfo)initWithHandleName:(unint64_t)name fenceName:(unint64_t)fenceName traceStart:(unint64_t)start traceEnd:(unint64_t)end
{
  v13.receiver = self;
  v13.super_class = HRHandleInfo;
  v10 = [(HRHandleInfo *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(HRHandleInfo *)v10 setHandleName:name];
    [(HRHandleInfo *)v11 setFenceName:fenceName];
    [(HRHandleInfo *)v11 setHandleStartTime:start];
    [(HRHandleInfo *)v11 setHandleEndTime:end];
    [(HRHandleInfo *)v11 setHandleBlown:0];
    [(HRHandleInfo *)v11 setHandleBlownTime:end];
  }

  return v11;
}

@end