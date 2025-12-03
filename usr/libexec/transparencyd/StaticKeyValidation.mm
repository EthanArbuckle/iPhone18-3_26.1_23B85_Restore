@interface StaticKeyValidation
- (id)description;
@end

@implementation StaticKeyValidation

- (id)description
{
  publicID = [(StaticKeyValidation *)self publicID];
  idsURI = [(StaticKeyValidation *)self idsURI];
  v5 = [NSString stringWithFormat:@"<StaticKeyValidation: %@ ids: %@ result: %d>", publicID, idsURI, [(StaticKeyValidation *)self ktResult]];

  return v5;
}

@end