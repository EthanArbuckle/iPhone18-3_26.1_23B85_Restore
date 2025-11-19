@interface StaticKeyValidation
- (id)description;
@end

@implementation StaticKeyValidation

- (id)description
{
  v3 = [(StaticKeyValidation *)self publicID];
  v4 = [(StaticKeyValidation *)self idsURI];
  v5 = [NSString stringWithFormat:@"<StaticKeyValidation: %@ ids: %@ result: %d>", v3, v4, [(StaticKeyValidation *)self ktResult]];

  return v5;
}

@end