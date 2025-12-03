@interface SigningStatusCache
+ (id)getValue:(id)value;
+ (id)sharedInstance;
+ (void)reset;
@end

@implementation SigningStatusCache

+ (id)sharedInstance
{
  if (qword_1003B9410 != -1)
  {
    sub_1002945E8();
  }

  v3 = qword_1003B9408;

  return v3;
}

+ (id)getValue:(id)value
{
  valueCopy = value;
  v4 = +[SigningStatusCache sharedInstance];
  v5 = [v4 getValueForKey:valueCopy];

  return v5;
}

+ (void)reset
{
  v2 = +[SigningStatusCache sharedInstance];
  [v2 clear];
}

@end