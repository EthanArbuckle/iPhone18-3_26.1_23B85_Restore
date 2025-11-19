@interface MCProfileServiceProfile
- (id)createHandler;
@end

@implementation MCProfileServiceProfile

- (id)createHandler
{
  v3 = [MCProfileServiceProfileHandler alloc];

  return [(MCProfileServiceProfileHandler *)v3 initWithProfile:self];
}

@end