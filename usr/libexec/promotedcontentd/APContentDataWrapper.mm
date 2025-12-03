@interface APContentDataWrapper
- (BOOL)canBeGarbageCollected;
@end

@implementation APContentDataWrapper

- (BOOL)canBeGarbageCollected
{
  identifier = [(APCacheableBaseObject *)self identifier];
  v4 = sub_10037AAE0(APManagedContentData, identifier);

  if (v4)
  {
    return 0;
  }

  identifier2 = [(APCacheableBaseObject *)self identifier];
  v7 = sub_10037AC10(APManagedContentData, identifier2);

  return v7 ^ 1;
}

@end