@interface DMFProvisioningProfile
- (id)initWithProfileRef:(void *)ref;
@end

@implementation DMFProvisioningProfile

- (id)initWithProfileRef:(void *)ref
{
  UUID = MISProvisioningProfileGetUUID();
  Name = MISProvisioningProfileGetName();
  ExpirationDate = MISProvisioningProfileGetExpirationDate();

  return [(DMFProvisioningProfile *)self initWithUUID:UUID name:Name expirationDate:ExpirationDate];
}

@end