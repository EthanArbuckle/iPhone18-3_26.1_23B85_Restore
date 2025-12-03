@interface APContextWrapper
- (BOOL)canBeGarbageCollected;
@end

@implementation APContextWrapper

- (BOOL)canBeGarbageCollected
{
  identifier = [(APCacheableBaseObject *)self identifier];
  v4 = sub_10037AAE0(APManagedContext, identifier);

  if (v4)
  {
    return 0;
  }

  identifier2 = [(APCacheableBaseObject *)self identifier];
  v7 = sub_10037AC10(APManagedContext, identifier2);

  return v7 ^ 1;
}

@end