@interface DMDLockUtilities
+ (void)lockDevice;
@end

@implementation DMDLockUtilities

+ (void)lockDevice
{
  v2 = SBSSpringBoardServerPort();

  _SBLockDevice(v2, 1);
}

@end