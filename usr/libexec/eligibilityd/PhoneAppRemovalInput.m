@interface PhoneAppRemovalInput
- (BOOL)isEqual:(id)a3;
- (BOOL)removePhoneApp;
- (NSString)description;
- (PhoneAppRemovalInput)init;
- (PhoneAppRemovalInput)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PhoneAppRemovalInput

- (NSString)description
{
  if ([(PhoneAppRemovalInput *)self removePhoneApp])
  {
    v3 = @"Y";
  }

  else
  {
    v3 = @"N";
  }

  v7.receiver = self;
  v7.super_class = PhoneAppRemovalInput;
  v4 = [(EligibilityInput *)&v7 description];
  v5 = [NSString stringWithFormat:@"[PhoneAppRemovalInput removePhoneApp:%@ %@]", v3, v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PhoneAppRemovalInput;
  if ([(EligibilityInput *)&v7 isEqual:v4])
  {
    if (v4 == self)
    {
      isKindOfClass = 1;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = PhoneAppRemovalInput;
  return [(EligibilityInput *)&v3 hash];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = PhoneAppRemovalInput;
  return [(EligibilityInput *)&v4 copyWithZone:a3];
}

- (PhoneAppRemovalInput)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = PhoneAppRemovalInput;
  return [(EligibilityInput *)&v4 initWithInputType:18 status:0 process:@"eligibilityd"];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = PhoneAppRemovalInput;
  [(EligibilityInput *)&v3 encodeWithCoder:a3];
}

- (PhoneAppRemovalInput)init
{
  v3.receiver = self;
  v3.super_class = PhoneAppRemovalInput;
  return [(EligibilityInput *)&v3 initWithInputType:18 status:0 process:@"eligibilityd"];
}

- (BOOL)removePhoneApp
{
  v2 = MGGetBoolAnswer();
  if (v2)
  {
    LOBYTE(v2) = MGIsDeviceOneOfType();
  }

  return v2;
}

@end