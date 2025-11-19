@interface NIPlatformInfo
+ (BOOL)isInternalBuild;
+ (BOOL)supportsARKit;
+ (BOOL)supportsAoA;
+ (BOOL)supportsNBAMMS;
+ (BOOL)supportsSyntheticAperture;
+ (BOOL)supportsUWB;
@end

@implementation NIPlatformInfo

+ (BOOL)supportsSyntheticAperture
{
  if (qword_1009F0298 != -1)
  {
    sub_1004A2FCC();
  }

  return byte_1009F0290;
}

+ (BOOL)isInternalBuild
{
  if (qword_1009F0268 != -1)
  {
    sub_1004A2F90();
  }

  return byte_1009F0260;
}

+ (BOOL)supportsUWB
{
  if (qword_1009F0278 != -1)
  {
    sub_1004A2FA4();
  }

  return byte_1009F0270;
}

+ (BOOL)supportsAoA
{
  if (qword_1009F0288 != -1)
  {
    sub_1004A2FB8();
  }

  return byte_1009F0280;
}

+ (BOOL)supportsARKit
{
  if (qword_1009F02A8 != -1)
  {
    sub_1004A2FE0();
  }

  return byte_1009F02A0;
}

+ (BOOL)supportsNBAMMS
{
  if (qword_1009F02B8 != -1)
  {
    sub_1004A2FF4();
  }

  return byte_1009F02B0;
}

@end