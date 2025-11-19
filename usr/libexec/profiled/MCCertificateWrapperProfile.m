@interface MCCertificateWrapperProfile
- (id)createHandler;
@end

@implementation MCCertificateWrapperProfile

- (id)createHandler
{
  v3 = [MCCertificateWrapperProfileHandler alloc];

  return [(MCConfigurationProfileHandler *)v3 initWithProfile:self];
}

@end