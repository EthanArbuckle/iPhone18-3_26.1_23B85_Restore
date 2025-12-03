@interface BDRegistrationStatus
- (BOOL)isEqual:(id)equal;
@end

@implementation BDRegistrationStatus

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    service = [(BDRegistrationStatus *)self service];
    if (service == [v5 service])
    {
      roaming = [(BDRegistrationStatus *)self roaming];
      v7 = roaming ^ [v5 roaming] ^ 1;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

@end