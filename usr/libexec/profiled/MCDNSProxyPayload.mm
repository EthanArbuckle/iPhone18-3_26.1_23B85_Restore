@interface MCDNSProxyPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCDNSProxyPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [[MCDNSProxyPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end