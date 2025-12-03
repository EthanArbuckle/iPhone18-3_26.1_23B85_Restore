@interface EKObject
- (id)eks_compoundIdentifier;
@end

@implementation EKObject

- (id)eks_compoundIdentifier
{
  v3 = sub_1000624F8(self);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    calendar = [(EKObject *)self calendar];
    if (calendar)
    {
      v5 = calendar;
      calendarIdentifier = [calendar calendarIdentifier];

      if (calendarIdentifier)
      {
        v7 = [NSString stringWithFormat:@"%@%@%@", v3, @"::", calendarIdentifier];

        v3 = v7;
      }
    }
  }

  return v3;
}

@end