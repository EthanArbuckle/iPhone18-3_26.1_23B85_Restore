@interface MCRelayPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCRelayPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [[MCRelayPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end