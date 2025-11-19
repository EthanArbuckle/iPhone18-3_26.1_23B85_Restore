@interface REMCDAuxiliaryReminderChangeInfo
+ (id)cdEntityName;
@end

@implementation REMCDAuxiliaryReminderChangeInfo

+ (id)cdEntityName
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromClass(a1);
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    sub_1007662D8();
  }

  return @"REMCDAuxiliaryReminderChangeInfo";
}

@end