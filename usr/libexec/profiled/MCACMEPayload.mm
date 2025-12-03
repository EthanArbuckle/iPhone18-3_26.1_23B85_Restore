@interface MCACMEPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCACMEPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(MCNewPayloadHandler *)[MCACMEPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end