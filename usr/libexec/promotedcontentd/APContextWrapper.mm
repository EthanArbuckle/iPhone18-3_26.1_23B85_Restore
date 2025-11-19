@interface APContextWrapper
- (BOOL)canBeGarbageCollected;
@end

@implementation APContextWrapper

- (BOOL)canBeGarbageCollected
{
  v3 = [(APCacheableBaseObject *)self identifier];
  v4 = sub_10037AAE0(APManagedContext, v3);

  if (v4)
  {
    return 0;
  }

  v6 = [(APCacheableBaseObject *)self identifier];
  v7 = sub_10037AC10(APManagedContext, v6);

  return v7 ^ 1;
}

@end