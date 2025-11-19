@interface DMDSecureUnarchiveFromEventSubscriptionRegistrationDataTransformer
+ (id)allowedTopLevelClasses;
+ (void)initialize;
@end

@implementation DMDSecureUnarchiveFromEventSubscriptionRegistrationDataTransformer

+ (void)initialize
{
  if (qword_1000FF0E0 != -1)
  {
    sub_1000841F8();
  }
}

+ (id)allowedTopLevelClasses
{
  if (qword_1000FF0F0 != -1)
  {
    sub_10008420C();
  }

  v3 = qword_1000FF0E8;

  return v3;
}

@end