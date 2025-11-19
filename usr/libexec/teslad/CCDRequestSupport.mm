@interface CCDRequestSupport
+ (id)userAgentString;
@end

@implementation CCDRequestSupport

+ (id)userAgentString
{
  if (qword_100025AA8 != -1)
  {
    sub_10000F9B0();
  }

  v3 = qword_100025AA0;

  return v3;
}

@end