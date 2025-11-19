@interface FindMyDeviceIsActivationLockediOS
@end

@implementation FindMyDeviceIsActivationLockediOS

intptr_t ___FindMyDeviceIsActivationLockediOS_block_invoke(void *a1, char a2, void *a3)
{
  if (a3)
  {
    v4 = createMobileActivationError("_FindMyDeviceIsActivationLockediOS_block_invoke", 266, @"com.apple.MobileActivation.ErrorDomain", -1, a3, @"Failed to query activation lock state.");
    v5 = *(a1[5] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else
  {
    *(*(a1[6] + 8) + 24) = a2;
  }

  v7 = a1[4];

  return dispatch_semaphore_signal(v7);
}

@end