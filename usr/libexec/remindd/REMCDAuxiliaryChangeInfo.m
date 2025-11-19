@interface REMCDAuxiliaryChangeInfo
+ (id)cdEntityName;
@end

@implementation REMCDAuxiliaryChangeInfo

+ (id)cdEntityName
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromClass(a1);
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    sub_10075FD20();
  }

  return @"REMCDAuxiliaryChangeInfo";
}

@end