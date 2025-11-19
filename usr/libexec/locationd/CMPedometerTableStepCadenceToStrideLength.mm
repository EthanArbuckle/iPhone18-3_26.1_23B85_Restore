@interface CMPedometerTableStepCadenceToStrideLength
+ (id)sharedInstance;
@end

@implementation CMPedometerTableStepCadenceToStrideLength

+ (id)sharedInstance
{
  if (qword_102664728 != -1)
  {
    sub_101B6F600();
  }

  return qword_102664720;
}

@end