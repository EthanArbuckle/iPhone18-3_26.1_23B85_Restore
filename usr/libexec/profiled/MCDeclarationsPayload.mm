@interface MCDeclarationsPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCDeclarationsPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(MCNewPayloadHandler *)[MCDeclarationsPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end