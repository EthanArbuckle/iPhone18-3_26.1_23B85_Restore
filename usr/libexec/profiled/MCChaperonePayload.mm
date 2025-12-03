@interface MCChaperonePayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCChaperonePayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(MCNewPayloadHandler *)[MCNewChaperonePayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end