@interface NFTrustLocalValidation
- (NFTrustLocalValidation)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFTrustLocalValidation

- (NFTrustLocalValidation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = NFTrustLocalValidation;
  v5 = [(NFTrustObject *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_primitiveLocalValidation = [coderCopy decodeIntForKey:@"primitiveLocalValidation"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[NFTrustLocalValidation primitiveLocalValidation](self forKey:{"primitiveLocalValidation"), @"primitiveLocalValidation"}];
}

- (id)description
{
  primitiveLocalValidation = [(NFTrustLocalValidation *)self primitiveLocalValidation];
  v3 = @"PassCode";
  if (primitiveLocalValidation == 2)
  {
    v3 = @"TouchID";
  }

  if (primitiveLocalValidation == 4)
  {
    return @"FaceID";
  }

  else
  {
    return v3;
  }
}

@end