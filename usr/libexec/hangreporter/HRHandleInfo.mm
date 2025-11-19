@interface HRHandleInfo
- (HRHandleInfo)initWithHandleName:(unint64_t)a3 fenceName:(unint64_t)a4 traceStart:(unint64_t)a5 traceEnd:(unint64_t)a6;
@end

@implementation HRHandleInfo

- (HRHandleInfo)initWithHandleName:(unint64_t)a3 fenceName:(unint64_t)a4 traceStart:(unint64_t)a5 traceEnd:(unint64_t)a6
{
  v13.receiver = self;
  v13.super_class = HRHandleInfo;
  v10 = [(HRHandleInfo *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(HRHandleInfo *)v10 setHandleName:a3];
    [(HRHandleInfo *)v11 setFenceName:a4];
    [(HRHandleInfo *)v11 setHandleStartTime:a5];
    [(HRHandleInfo *)v11 setHandleEndTime:a6];
    [(HRHandleInfo *)v11 setHandleBlown:0];
    [(HRHandleInfo *)v11 setHandleBlownTime:a6];
  }

  return v11;
}

@end