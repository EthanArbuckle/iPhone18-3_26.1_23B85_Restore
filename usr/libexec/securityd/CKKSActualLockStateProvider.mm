@interface CKKSActualLockStateProvider
- (BOOL)queryAKSLocked;
- (CKKSActualLockStateProvider)init;
@end

@implementation CKKSActualLockStateProvider

- (BOOL)queryAKSLocked
{
  cf = 0;
  *buf = -1431655766;
  lock_state = aks_get_lock_state();
  if (sub_10001C4BC(lock_state, &cf, @"aks_get_lock_state failed: %x", lock_state))
  {
    v5 = buf[0];
  }

  else
  {
    v3 = sub_100019104(@"ckks", 0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = cf;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "error querying lock state: %@", buf, 0xCu);
    }

    v4 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v4);
    }

    v5 = 1;
  }

  return v5 & 1;
}

- (CKKSActualLockStateProvider)init
{
  v3.receiver = self;
  v3.super_class = CKKSActualLockStateProvider;
  return [(CKKSActualLockStateProvider *)&v3 init];
}

@end