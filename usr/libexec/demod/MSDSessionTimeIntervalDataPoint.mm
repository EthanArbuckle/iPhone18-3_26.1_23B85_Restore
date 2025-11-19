@interface MSDSessionTimeIntervalDataPoint
- (MSDSessionTimeIntervalDataPoint)initWithStartTime:(id)a3 endTime:(id)a4;
- (double)getTimeIntervalWithStart:(id)a3 end:(id)a4;
@end

@implementation MSDSessionTimeIntervalDataPoint

- (MSDSessionTimeIntervalDataPoint)initWithStartTime:(id)a3 endTime:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MSDSessionTimeIntervalDataPoint;
  v8 = [(MSDSessionTimeIntervalDataPoint *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MSDSessionTimeIntervalDataPoint *)v8 getTimeIntervalWithStart:v6 end:v7];
    [(MSDSessionTimeIntervalDataPoint *)v9 setInterval:?];
  }

  return v9;
}

- (double)getTimeIntervalWithStart:(id)a3 end:(id)a4
{
  if (!a3 || !a4)
  {
    return -1.0;
  }

  [a4 timeIntervalSinceDate:?];
  return result;
}

@end