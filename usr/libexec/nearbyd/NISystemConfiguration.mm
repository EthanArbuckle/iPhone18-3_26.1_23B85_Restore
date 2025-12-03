@interface NISystemConfiguration
- (BOOL)isEqual:(id)equal;
- (NISystemConfiguration)init;
- (NISystemConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NISystemConfiguration

- (NISystemConfiguration)init
{
  v3.receiver = self;
  v3.super_class = NISystemConfiguration;
  result = [(NIConfiguration *)&v3 initInternal];
  if (result)
  {
    result->_prewarmUWB = 0;
    result->_prewarmSecureElementChannel = 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = NISystemConfiguration;
  v4 = [(NIConfiguration *)&v6 copyWithZone:zone];
  [v4 setPrewarmUWB:self->_prewarmUWB];
  [v4 setPrewarmSecureElementChannel:self->_prewarmSecureElementChannel];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = NISystemConfiguration;
  [(NIConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_prewarmUWB forKey:@"prewarmUWB"];
  [coderCopy encodeBool:self->_prewarmSecureElementChannel forKey:@"prewarmSecureElementChannel"];
}

- (NISystemConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = NISystemConfiguration;
  v5 = [(NIConfiguration *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeBoolForKey:@"prewarmUWB"];
    v7 = [coderCopy decodeBoolForKey:@"prewarmSecureElementChannel"];
    v5->_prewarmUWB = v6;
    v5->_prewarmSecureElementChannel = v7;
    v8 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    if (v5 == self)
    {
      v11 = 1;
    }

    else
    {
      prewarmUWB = [(NISystemConfiguration *)v5 prewarmUWB];
      prewarmUWB = self->_prewarmUWB;
      prewarmSecureElementChannel = [(NISystemConfiguration *)v6 prewarmSecureElementChannel];
      v11 = prewarmUWB == prewarmUWB && (prewarmSecureElementChannel & 1) == self->_prewarmSecureElementChannel;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  descriptionInternal = [(NISystemConfiguration *)self descriptionInternal];
  v7 = [v3 initWithFormat:@"<%@: %@>", v5, descriptionInternal];

  return v7;
}

@end