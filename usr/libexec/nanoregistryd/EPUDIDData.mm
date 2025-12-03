@interface EPUDIDData
+ (id)SHA256WithString:(id)string;
- (BOOL)isEqual:(id)equal;
- (EPUDIDData)initWithCoder:(id)coder;
- (EPUDIDData)initWithUDID:(id)d;
- (id)description;
- (id)initFromFile:(id)file;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EPUDIDData

+ (id)SHA256WithString:(id)string
{
  v3 = [string dataUsingEncoding:4];
  nRSHA256 = [v3 NRSHA256];

  return nRSHA256;
}

- (EPUDIDData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = EPUDIDData;
  v5 = [(EPUDIDData *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UDIDSHA256"];
    UDIDSHA256 = v5->_UDIDSHA256;
    v5->_UDIDSHA256 = v6;
  }

  return v5;
}

- (EPUDIDData)initWithUDID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy && [dCopy length])
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
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)initFromFile:(id)file
{
  fileCopy = file;
  v5 = fileCopy;
  if (fileCopy && [fileCopy length])
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uDIDSHA256 = [(EPUDIDData *)self UDIDSHA256];
  [coderCopy encodeObject:uDIDSHA256 forKey:@"UDIDSHA256"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      UDIDSHA256 = self->_UDIDSHA256;
      uDIDSHA256 = [(EPUDIDData *)equalCopy UDIDSHA256];
      v7 = [(NSData *)UDIDSHA256 isEqual:uDIDSHA256];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end