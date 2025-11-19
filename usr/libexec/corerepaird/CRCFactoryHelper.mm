@interface CRCFactoryHelper
+ (id)sharedInstance;
- (CRCFactoryHelper)init;
@end

@implementation CRCFactoryHelper

- (CRCFactoryHelper)init
{
  v5.receiver = self;
  v5.super_class = CRCFactoryHelper;
  v2 = [(CRCFactoryHelper *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CRCFactoryHelper *)v2 setFactoryServiceOn:1];
  }

  return v3;
}

+ (id)sharedInstance
{
  if (qword_100016910 != -1)
  {
    sub_10000939C();
  }

  v3 = qword_100016908;

  return v3;
}

@end