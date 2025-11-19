@interface NFTrustLocalValidation
- (NFTrustLocalValidation)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NFTrustLocalValidation

- (NFTrustLocalValidation)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = NFTrustLocalValidation;
  v5 = [(NFTrustObject *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_primitiveLocalValidation = [v4 decodeIntForKey:@"primitiveLocalValidation"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[NFTrustLocalValidation primitiveLocalValidation](self forKey:{"primitiveLocalValidation"), @"primitiveLocalValidation"}];
}

- (id)description
{
  v2 = [(NFTrustLocalValidation *)self primitiveLocalValidation];
  v3 = @"PassCode";
  if (v2 == 2)
  {
    v3 = @"TouchID";
  }

  if (v2 == 4)
  {
    return @"FaceID";
  }

  else
  {
    return v3;
  }
}

@end