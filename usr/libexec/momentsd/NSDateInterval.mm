@interface NSDateInterval
- (id)unionWithDateInterval:(id)interval;
@end

@implementation NSDateInterval

- (id)unionWithDateInterval:(id)interval
{
  intervalCopy = interval;
  if ([(NSDateInterval *)self intersectsDateInterval:intervalCopy])
  {
    startDate = [(NSDateInterval *)self startDate];
    startDate2 = [intervalCopy startDate];
    v7 = [startDate earlierDate:startDate2];

    endDate = [(NSDateInterval *)self endDate];
    endDate2 = [intervalCopy endDate];
    v10 = [endDate laterDate:endDate2];

    if ([v7 isBeforeDate:v10])
    {
      v11 = [[NSDateInterval alloc] initWithStartDate:v7 endDate:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end