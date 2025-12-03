@interface PackageInfo
- (id)description;
@end

@implementation PackageInfo

- (id)description
{
  v3 = [(NSMutableArray *)self->_moduleAIDs ses_map:&stru_1004C1420];
  asHexString = [(NSData *)self->_packageAID asHexString];
  v5 = [NSString stringWithFormat:@"Package: %@ (modules %@)", asHexString, v3];

  return v5;
}

@end