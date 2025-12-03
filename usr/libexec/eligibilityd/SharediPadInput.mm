@interface SharediPadInput
- (BOOL)isEqual:(id)equal;
- (BOOL)isSharediPad;
- (NSString)description;
- (SharediPadInput)init;
- (SharediPadInput)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SharediPadInput

- (NSString)description
{
  if ([(SharediPadInput *)self isSharediPad])
  {
    v3 = @"Y";
  }

  else
  {
    v3 = @"N";
  }

  v7.receiver = self;
  v7.super_class = SharediPadInput;
  v4 = [(EligibilityInput *)&v7 description];
  v5 = [NSString stringWithFormat:@"[SharediPadInput isSharediPad:%@ %@]", v3, v4];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = SharediPadInput;
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
  v3.super_class = SharediPadInput;
  return [(EligibilityInput *)&v3 hash];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = SharediPadInput;
  return [(EligibilityInput *)&v4 copyWithZone:zone];
}

- (SharediPadInput)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SharediPadInput;
  return [(EligibilityInput *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SharediPadInput;
  [(EligibilityInput *)&v3 encodeWithCoder:coder];
}

- (SharediPadInput)init
{
  v3.receiver = self;
  v3.super_class = SharediPadInput;
  return [(EligibilityInput *)&v3 initWithInputType:12 status:0 process:@"eligibilityd"];
}

- (BOOL)isSharediPad
{
  v2 = +[UMUserManager sharedManager];
  isSharedIPad = [v2 isSharedIPad];

  return isSharedIPad;
}

@end