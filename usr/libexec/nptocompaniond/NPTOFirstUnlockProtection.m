@interface NPTOFirstUnlockProtection
+ (id)performBlockAfterFirstUnlock:(id)a3;
@end

@implementation NPTOFirstUnlockProtection

+ (id)performBlockAfterFirstUnlock:(id)a3
{
  v3 = a3;
  if (MKBDeviceUnlockedSinceBoot())
  {
    v3[2](v3);
    v4 = 0;
  }

  else
  {
    v4 = [[NPTOFirstUnlockTask alloc] initWithBlock:v3];
  }

  return v4;
}

@end