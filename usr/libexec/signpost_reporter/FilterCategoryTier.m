@interface FilterCategoryTier
- (FilterCategoryTier)init;
@end

@implementation FilterCategoryTier

- (FilterCategoryTier)init
{
  v5.receiver = self;
  v5.super_class = FilterCategoryTier;
  v2 = [(FilterCategoryTier *)&v5 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    [(FilterTier *)v2 setChildTiers:v3];
  }

  return v2;
}

@end