@interface RMPlatformInfo
+ (BOOL)isInternalBuild;
@end

@implementation RMPlatformInfo

+ (BOOL)isInternalBuild
{
  if (qword_10002C540 != -1)
  {
    sub_100013530();
  }

  return byte_10002C538;
}

@end