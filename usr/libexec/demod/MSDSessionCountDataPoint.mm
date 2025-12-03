@interface MSDSessionCountDataPoint
- (MSDSessionCountDataPoint)initWithCount:(int64_t)count;
@end

@implementation MSDSessionCountDataPoint

- (MSDSessionCountDataPoint)initWithCount:(int64_t)count
{
  v7.receiver = self;
  v7.super_class = MSDSessionCountDataPoint;
  v4 = [(MSDSessionCountDataPoint *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(MSDSessionCountDataPoint *)v4 setCount:count];
  }

  return v5;
}

@end