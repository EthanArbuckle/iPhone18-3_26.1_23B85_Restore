@interface REMCDRootEntityObject
+ (id)cdEntityName;
@end

@implementation REMCDRootEntityObject

+ (id)cdEntityName
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromClass(self);
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    sub_10076639C();
  }

  return @"REMCDObject";
}

@end