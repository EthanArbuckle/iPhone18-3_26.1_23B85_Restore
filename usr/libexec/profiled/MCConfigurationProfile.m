@interface MCConfigurationProfile
- (id)createHandler;
@end

@implementation MCConfigurationProfile

- (id)createHandler
{
  v3 = [MCConfigurationProfileHandler alloc];

  return [(MCConfigurationProfileHandler *)v3 initWithProfile:self];
}

@end