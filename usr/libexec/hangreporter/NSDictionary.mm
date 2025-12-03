@interface NSDictionary
- (id)objectForKey:(id)key checkingKindOfClass:(Class)class;
@end

@implementation NSDictionary

- (id)objectForKey:(id)key checkingKindOfClass:(Class)class
{
  v4 = [(NSDictionary *)self objectForKey:key];
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