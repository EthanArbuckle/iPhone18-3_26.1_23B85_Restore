@interface EPUDIDData
+ (id)SHA256WithString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (EPUDIDData)initWithCoder:(id)a3;
- (EPUDIDData)initWithUDID:(id)a3;
- (id)description;
- (id)initFromFile:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EPUDIDData

+ (id)SHA256WithString:(id)a3
{
  v3 = [a3 dataUsingEncoding:4];
  v4 = [v3 NRSHA256];

  return v4;
}

- (EPUDIDData)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = EPUDIDData;
  v5 = [(EPUDIDData *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UDIDSHA256"];
    UDIDSHA256 = v5->_UDIDSHA256;
    v5->_UDIDSHA256 = v6;
  }

  return v5;
}

- (EPUDIDData)initWithUDID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    v11.receiver = self;
    v11.super_class = EPUDIDData;
    v6 = [(EPUDIDData *)&v11 init];
    if (v6)
    {
      v7 = [EPUDIDData SHA256WithString:v5];
      UDIDSHA256 = v6->_UDIDSHA256;
      v6->_UDIDSHA256 = v7;
    }

    self = v6;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)initFromFile:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    v6 = [NSSet setWithObject:objc_opt_class()];
    v7 = [NSKeyedUnarchiver secureUnarchiveObjectOfClasses:v6 withFile:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSData *)self->_UDIDSHA256 description];
  v7 = [v3 initWithFormat:@"%@: %@", v5, v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(EPUDIDData *)self UDIDSHA256];
  [v4 encodeObject:v5 forKey:@"UDIDSHA256"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      UDIDSHA256 = self->_UDIDSHA256;
      v6 = [(EPUDIDData *)v4 UDIDSHA256];
      v7 = [(NSData *)UDIDSHA256 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end