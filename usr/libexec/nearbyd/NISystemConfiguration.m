@interface NISystemConfiguration
- (BOOL)isEqual:(id)a3;
- (NISystemConfiguration)init;
- (NISystemConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = NISystemConfiguration;
  v4 = [(NIConfiguration *)&v6 copyWithZone:a3];
  [v4 setPrewarmUWB:self->_prewarmUWB];
  [v4 setPrewarmSecureElementChannel:self->_prewarmSecureElementChannel];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = NISystemConfiguration;
  [(NIConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_prewarmUWB forKey:@"prewarmUWB"];
  [v4 encodeBool:self->_prewarmSecureElementChannel forKey:@"prewarmSecureElementChannel"];
}

- (NISystemConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NISystemConfiguration;
  v5 = [(NIConfiguration *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeBoolForKey:@"prewarmUWB"];
    v7 = [v4 decodeBoolForKey:@"prewarmSecureElementChannel"];
    v5->_prewarmUWB = v6;
    v5->_prewarmSecureElementChannel = v7;
    v8 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    if (v5 == self)
    {
      v11 = 1;
    }

    else
    {
      v7 = [(NISystemConfiguration *)v5 prewarmUWB];
      prewarmUWB = self->_prewarmUWB;
      v9 = [(NISystemConfiguration *)v6 prewarmSecureElementChannel];
      v11 = prewarmUWB == v7 && (v9 & 1) == self->_prewarmSecureElementChannel;
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
  v6 = [(NISystemConfiguration *)self descriptionInternal];
  v7 = [v3 initWithFormat:@"<%@: %@>", v5, v6];

  return v7;
}

@end