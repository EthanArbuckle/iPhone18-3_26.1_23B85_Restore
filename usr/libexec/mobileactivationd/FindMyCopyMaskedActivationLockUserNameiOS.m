@interface FindMyCopyMaskedActivationLockUserNameiOS
@end

@implementation FindMyCopyMaskedActivationLockUserNameiOS

void ___FindMyCopyMaskedActivationLockUserNameiOS_block_invoke(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || (v9 = [v5 maskedAppleID], v9, !v9))
  {
    v7 = createMobileActivationError("_FindMyCopyMaskedActivationLockUserNameiOS_block_invoke", 329, @"com.apple.MobileActivation.ErrorDomain", -1, v6, @"Failed to retrieve activation lock info.");
    v8 = 40;
  }

  else
  {
    v7 = [v5 maskedAppleID];
    v8 = 48;
  }

  v10 = *(*(a1 + v8) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;

  dispatch_semaphore_signal(*(a1 + 32));
}

@end