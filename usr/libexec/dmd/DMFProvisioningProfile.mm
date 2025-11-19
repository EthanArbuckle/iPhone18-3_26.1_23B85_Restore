@interface DMFProvisioningProfile
- (id)initWithProfileRef:(void *)a3;
@end

@implementation DMFProvisioningProfile

- (id)initWithProfileRef:(void *)a3
{
  UUID = MISProvisioningProfileGetUUID();
  Name = MISProvisioningProfileGetName();
  ExpirationDate = MISProvisioningProfileGetExpirationDate();

  return [(DMFProvisioningProfile *)self initWithUUID:UUID name:Name expirationDate:ExpirationDate];
}

@end