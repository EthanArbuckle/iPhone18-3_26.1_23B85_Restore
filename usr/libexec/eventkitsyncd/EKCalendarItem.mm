@interface EKCalendarItem
- (id)eks_cacheKey;
- (id)eks_debugDesc;
@end

@implementation EKCalendarItem

- (id)eks_debugDesc
{
  v3 = objc_autoreleasePoolPush();
  v4 = [[NSMutableString alloc] initWithCapacity:150];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  selfCopy = self;
  v7 = selfCopy;
  if (isKindOfClass)
  {
    startDate = [(EKCalendarItem *)selfCopy startDate];
  }

  else
  {
    dueDateComponents = [(EKCalendarItem *)selfCopy dueDateComponents];
    startDate = [dueDateComponents date];
  }

  title = [(EKCalendarItem *)v7 title];

  [v4 appendString:@""];
  v11 = sub_10002CF20(title);
  [v4 appendString:v11];

  [v4 appendString:@"."];
  v12 = sub_100016580(startDate);
  [v4 appendString:v12];

  objc_autoreleasePoolPop(v3);

  return v4;
}

- (id)eks_cacheKey
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    uniqueId = [(EKCalendarItem *)selfCopy uniqueId];
    title = [(EKCalendarItem *)selfCopy title];
    startDate = [(EKCalendarItem *)selfCopy startDate];

    [startDate timeIntervalSinceReferenceDate];
    v8 = [NSString stringWithFormat:@"%@%@;%f", uniqueId, title, v7];;
  }

  else
  {
    v8 = &stru_1000B7928;
  }

  return v8;
}

@end