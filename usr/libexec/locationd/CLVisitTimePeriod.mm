@interface CLVisitTimePeriod
- (CLVisitTimePeriod)init;
@end

@implementation CLVisitTimePeriod

- (CLVisitTimePeriod)init
{
  v3.receiver = self;
  v3.super_class = CLVisitTimePeriod;
  result = [(CLVisitTimePeriod *)&v3 init];
  if (result)
  {
    *&result->_startTime = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  }

  return result;
}

@end