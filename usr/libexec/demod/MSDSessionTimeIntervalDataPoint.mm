@interface MSDSessionTimeIntervalDataPoint
- (MSDSessionTimeIntervalDataPoint)initWithStartTime:(id)time endTime:(id)endTime;
- (double)getTimeIntervalWithStart:(id)start end:(id)end;
@end

@implementation MSDSessionTimeIntervalDataPoint

- (MSDSessionTimeIntervalDataPoint)initWithStartTime:(id)time endTime:(id)endTime
{
  timeCopy = time;
  endTimeCopy = endTime;
  v11.receiver = self;
  v11.super_class = MSDSessionTimeIntervalDataPoint;
  v8 = [(MSDSessionTimeIntervalDataPoint *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MSDSessionTimeIntervalDataPoint *)v8 getTimeIntervalWithStart:timeCopy end:endTimeCopy];
    [(MSDSessionTimeIntervalDataPoint *)v9 setInterval:?];
  }

  return v9;
}

- (double)getTimeIntervalWithStart:(id)start end:(id)end
{
  if (!start || !end)
  {
    return -1.0;
  }

  [end timeIntervalSinceDate:?];
  return result;
}

@end