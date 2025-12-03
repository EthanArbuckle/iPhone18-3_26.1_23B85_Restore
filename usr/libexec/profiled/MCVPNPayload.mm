@interface MCVPNPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCVPNPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(MCVPNPayloadHandlerBase *)[MCNewVPNPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end