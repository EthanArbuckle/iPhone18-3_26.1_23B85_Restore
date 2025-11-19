@interface NSPAuxiliaryAuthInfo
- (NSPAuxiliaryAuthInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSPAuxiliaryAuthInfo

- (id)description
{
  if (self)
  {
    v3 = [[NSMutableString alloc] initWithCapacity:0];
    Property = objc_getProperty(self, v4, 8, 1);
    sub_1000417D0(v3, Property, @"Auxiliary Auth Info", 0, 14);
    v7 = objc_getProperty(self, v6, 16, 1);
    sub_1000417D0(v3, v7, @"Expiration Date", 0, 14);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSPAuxiliaryAuthInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NSPAuxiliaryAuthInfo;
  v5 = [(NSPAuxiliaryAuthInfo *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"auxiliaryAuthInfo"];
    auxiliaryAuthInfo = v5->_auxiliaryAuthInfo;
    v5->_auxiliaryAuthInfo = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tokenExpirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (self)
  {
    [v4 encodeObject:objc_getProperty(self forKey:{v5, 8, 1), @"auxiliaryAuthInfo"}];
    Property = objc_getProperty(self, v6, 16, 1);
  }

  else
  {
    [v4 encodeObject:0 forKey:@"auxiliaryAuthInfo"];
    Property = 0;
  }

  [a3 encodeObject:Property forKey:@"tokenExpirationDate"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NSPAuxiliaryAuthInfo allocWithZone:?]];
  v6 = v4;
  if (self)
  {
    Property = objc_getProperty(self, v5, 8, 1);
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  Property = 0;
  if (v4)
  {
LABEL_3:
    objc_setProperty_atomic(v6, v5, Property, 8);
  }

LABEL_4:
  if (!self)
  {
    v8 = 0;
    if (!v6)
    {
      return v6;
    }

    goto LABEL_6;
  }

  v8 = objc_getProperty(self, v5, 16, 1);
  if (v6)
  {
LABEL_6:
    objc_setProperty_atomic(v6, v5, v8, 16);
  }

  return v6;
}

@end