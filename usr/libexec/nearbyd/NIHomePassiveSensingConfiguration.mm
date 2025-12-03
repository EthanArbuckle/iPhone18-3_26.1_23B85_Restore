@interface NIHomePassiveSensingConfiguration
- (BOOL)canUpdateToConfiguration:(id)configuration;
- (BOOL)isEqual:(id)equal;
- (NIHomePassiveSensingConfiguration)init;
- (NIHomePassiveSensingConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NIHomePassiveSensingConfiguration

- (NIHomePassiveSensingConfiguration)init
{
  v3.receiver = self;
  v3.super_class = NIHomePassiveSensingConfiguration;
  result = [(NIConfiguration *)&v3 initInternal];
  if (result)
  {
    result->_minimumPreferredUpdatedRate = 3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = NIHomePassiveSensingConfiguration;
  v4 = [(NIConfiguration *)&v6 copyWithZone:zone];
  [v4 setMinimumPreferredUpdatedRate:self->_minimumPreferredUpdatedRate];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = NIHomePassiveSensingConfiguration;
  [(NIConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_minimumPreferredUpdatedRate forKey:@"minimumPreferredUpdatedRate"];
}

- (NIHomePassiveSensingConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = NIHomePassiveSensingConfiguration;
  v5 = [(NIConfiguration *)&v9 initWithCoder:coderCopy];
  if (v5 && (v6 = [coderCopy decodeIntegerForKey:@"minimumPreferredUpdatedRate"], +[NIInternalUtils isIntValidNearbyObjectUpdateRate:](NIInternalUtils, "isIntValidNearbyObjectUpdateRate:", v6)))
  {
    v5->_minimumPreferredUpdatedRate = v6;
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)canUpdateToConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = configurationCopy;
  if (configurationCopy)
  {
    v6 = self == configurationCopy || [(NIHomePassiveSensingConfiguration *)configurationCopy minimumPreferredUpdatedRate]== self->_minimumPreferredUpdatedRate;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (v5 == self)
    {
      v6 = 1;
    }

    else
    {
      v6 = [(NIHomePassiveSensingConfiguration *)self canUpdateToConfiguration:v5];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  descriptionInternal = [(NIHomePassiveSensingConfiguration *)self descriptionInternal];
  v7 = [v3 initWithFormat:@"<%@: %@>", v5, descriptionInternal];

  return v7;
}

@end