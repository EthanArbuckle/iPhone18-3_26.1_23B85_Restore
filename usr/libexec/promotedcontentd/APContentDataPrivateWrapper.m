@interface APContentDataPrivateWrapper
- (BOOL)canBeGarbageCollected;
@end

@implementation APContentDataPrivateWrapper

- (BOOL)canBeGarbageCollected
{
  v3 = [(APCacheableBaseObject *)self identifier];
  v4 = sub_10037AAE0(APManagedContentData, v3);

  if (v4)
  {
    return 0;
  }

  v6 = [(APCacheableBaseObject *)self identifier];
  v7 = sub_10037AC10(APManagedContentData, v6);

  return v7 ^ 1;
}

@end