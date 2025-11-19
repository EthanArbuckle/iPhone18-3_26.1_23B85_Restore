@interface NSDateInterval
- (id)unionWithDateInterval:(id)a3;
@end

@implementation NSDateInterval

- (id)unionWithDateInterval:(id)a3
{
  v4 = a3;
  if ([(NSDateInterval *)self intersectsDateInterval:v4])
  {
    v5 = [(NSDateInterval *)self startDate];
    v6 = [v4 startDate];
    v7 = [v5 earlierDate:v6];

    v8 = [(NSDateInterval *)self endDate];
    v9 = [v4 endDate];
    v10 = [v8 laterDate:v9];

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