@interface CKAccountInfo
- (id)description;
@end

@implementation CKAccountInfo

- (id)description
{
  v2 = [(CKAccountInfo *)self CKPropertiesDescription];
  v3 = [NSString stringWithFormat:@"<CKAccountInfo: %@>", v2];

  return v3;
}

@end