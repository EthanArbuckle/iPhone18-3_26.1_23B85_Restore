@interface MCWiFiPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCWiFiPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [[MCNewWiFiPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end