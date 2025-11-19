@interface CBLocalServiceInterface
+ (id)clientInterface;
+ (id)serverInterface;
@end

@implementation CBLocalServiceInterface

+ (id)clientInterface
{
  if (qword_100016A30 != -1)
  {
    sub_10000743C();
  }

  v3 = qword_100016A38;

  return v3;
}

+ (id)serverInterface
{
  if (qword_100016A40 != -1)
  {
    sub_100007450();
  }

  v3 = qword_100016A48;

  return v3;
}

@end