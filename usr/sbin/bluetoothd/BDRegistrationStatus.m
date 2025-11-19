@interface BDRegistrationStatus
- (BOOL)isEqual:(id)a3;
@end

@implementation BDRegistrationStatus

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BDRegistrationStatus *)self service];
    if (v6 == [v5 service])
    {
      v8 = [(BDRegistrationStatus *)self roaming];
      v7 = v8 ^ [v5 roaming] ^ 1;
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