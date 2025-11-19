@interface REMReminder
- (id)eks_debugDesc;
@end

@implementation REMReminder

- (id)eks_debugDesc
{
  v3 = objc_autoreleasePoolPush();
  v4 = [[NSMutableString alloc] initWithCapacity:150];
  v5 = [(REMReminder *)self dueDateComponents];
  v6 = [v5 date];

  v7 = [(REMReminder *)self title];
  v8 = [v7 string];

  [v4 appendString:@""];
  v9 = sub_10002CF20(v8);
  [v4 appendString:v9];

  [v4 appendString:@"."];
  v10 = sub_100016580(v6);
  [v4 appendString:v10];

  objc_autoreleasePoolPop(v3);

  return v4;
}

@end