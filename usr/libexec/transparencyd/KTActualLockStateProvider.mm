@interface KTActualLockStateProvider
- (BOOL)queryAKSLocked;
- (KTActualLockStateProvider)init;
@end

@implementation KTActualLockStateProvider

- (BOOL)queryAKSLocked
{
  v2 = objc_opt_class();

  return [v2 getIsLocked];
}

- (KTActualLockStateProvider)init
{
  v3.receiver = self;
  v3.super_class = KTActualLockStateProvider;
  return [(KTActualLockStateProvider *)&v3 init];
}

@end