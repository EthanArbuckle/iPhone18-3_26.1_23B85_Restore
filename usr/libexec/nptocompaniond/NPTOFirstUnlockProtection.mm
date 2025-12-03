@interface NPTOFirstUnlockProtection
+ (id)performBlockAfterFirstUnlock:(id)unlock;
@end

@implementation NPTOFirstUnlockProtection

+ (id)performBlockAfterFirstUnlock:(id)unlock
{
  unlockCopy = unlock;
  if (MKBDeviceUnlockedSinceBoot())
  {
    unlockCopy[2](unlockCopy);
    v4 = 0;
  }

  else
  {
    v4 = [[NPTOFirstUnlockTask alloc] initWithBlock:unlockCopy];
  }

  return v4;
}

@end