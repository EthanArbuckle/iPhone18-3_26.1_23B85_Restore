@interface KTMachTime
+ (unint64_t)nanoseconds:(unint64_t)nanoseconds;
@end

@implementation KTMachTime

+ (unint64_t)nanoseconds:(unint64_t)nanoseconds
{
  if (qword_10039CC00 != -1)
  {
    sub_10025DC70();
  }

  return dword_10039CBF8 * nanoseconds / *algn_10039CBFC;
}

@end