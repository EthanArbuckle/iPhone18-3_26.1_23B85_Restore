@interface NSDictionary
- (id)objectForKey:(id)a3 checkingKindOfClass:(Class)a4;
@end

@implementation NSDictionary

- (id)objectForKey:(id)a3 checkingKindOfClass:(Class)a4
{
  v4 = [(NSDictionary *)self objectForKey:a3];
  if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end