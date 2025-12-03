@interface MCDNSSettingsPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCDNSSettingsPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [[MCDNSSettingsPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end