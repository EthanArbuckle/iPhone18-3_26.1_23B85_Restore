@interface FilterSubsystemTier
- (FilterSubsystemTier)init;
@end

@implementation FilterSubsystemTier

- (FilterSubsystemTier)init
{
  v5.receiver = self;
  v5.super_class = FilterSubsystemTier;
  v2 = [(FilterSubsystemTier *)&v5 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    [(FilterTier *)v2 setChildTiers:v3];
  }

  return v2;
}

@end