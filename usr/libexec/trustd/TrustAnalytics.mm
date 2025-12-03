@interface TrustAnalytics
+ (id)logger;
@end

@implementation TrustAnalytics

+ (id)logger
{
  if (sub_100003140())
  {
    v5.receiver = self;
    v5.super_class = &OBJC_METACLASS___TrustAnalytics;
    v3 = objc_msgSendSuper2(&v5, "logger");
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end