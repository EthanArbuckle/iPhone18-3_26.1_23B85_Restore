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
    v4 = [(EKObject *)self calendar];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 calendarIdentifier];

      if (v6)
      {
        v7 = [NSString stringWithFormat:@"%@%@%@", v3, @"::", v6];

        v3 = v7;
      }
    }
  }

  return v3;
}

@end