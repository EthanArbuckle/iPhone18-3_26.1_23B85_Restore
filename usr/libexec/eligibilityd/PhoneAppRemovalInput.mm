@interface PhoneAppRemovalInput
- (BOOL)isEqual:(id)equal;
- (BOOL)removePhoneApp;
- (NSString)description;
- (PhoneAppRemovalInput)init;
- (PhoneAppRemovalInput)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = PhoneAppRemovalInput;
  if ([(EligibilityInput *)&v7 isEqual:equalCopy])
  {
    if (equalCopy == self)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = PhoneAppRemovalInput;
  return [(EligibilityInput *)&v4 copyWithZone:zone];
}

- (PhoneAppRemovalInput)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = PhoneAppRemovalInput;
  return [(EligibilityInput *)&v4 initWithInputType:18 status:0 process:@"eligibilityd"];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = PhoneAppRemovalInput;
  [(EligibilityInput *)&v3 encodeWithCoder:coder];
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