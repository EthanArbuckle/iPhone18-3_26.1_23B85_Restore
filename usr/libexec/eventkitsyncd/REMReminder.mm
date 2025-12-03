@interface REMReminder
- (id)eks_debugDesc;
@end

@implementation REMReminder

- (id)eks_debugDesc
{
  v3 = objc_autoreleasePoolPush();
  v4 = [[NSMutableString alloc] initWithCapacity:150];
  dueDateComponents = [(REMReminder *)self dueDateComponents];
  date = [dueDateComponents date];

  title = [(REMReminder *)self title];
  string = [title string];

  [v4 appendString:@""];
  v9 = sub_10002CF20(string);
  [v4 appendString:v9];

  [v4 appendString:@"."];
  v10 = sub_100016580(date);
  [v4 appendString:v10];

  objc_autoreleasePoolPop(v3);

  return v4;
}

@end