@interface FilterRootTier
- (FilterRootTier)init;
@end

@implementation FilterRootTier

- (FilterRootTier)init
{
  v5.receiver = self;
  v5.super_class = FilterRootTier;
  v2 = [(FilterRootTier *)&v5 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    [(FilterTier *)v2 setChildTiers:v3];
  }

  return v2;
}

@end