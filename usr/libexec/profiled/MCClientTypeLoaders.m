@interface MCClientTypeLoaders
+ (id)clientTypeLoaders;
@end

@implementation MCClientTypeLoaders

+ (id)clientTypeLoaders
{
  if (qword_100136BC0 != -1)
  {
    sub_1000C2C9C();
  }

  v2 = [qword_100136BB8 copy];

  return v2;
}

@end