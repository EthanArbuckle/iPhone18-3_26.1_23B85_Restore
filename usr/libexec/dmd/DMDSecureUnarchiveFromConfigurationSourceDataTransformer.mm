@interface DMDSecureUnarchiveFromConfigurationSourceDataTransformer
+ (id)allowedTopLevelClasses;
+ (void)initialize;
@end

@implementation DMDSecureUnarchiveFromConfigurationSourceDataTransformer

+ (void)initialize
{
  if (qword_1000FF080 != -1)
  {
    sub_1000808DC();
  }
}

+ (id)allowedTopLevelClasses
{
  if (qword_1000FF090 != -1)
  {
    sub_1000808F0();
  }

  v3 = qword_1000FF088;

  return v3;
}

@end