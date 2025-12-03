@interface MCEASAccountPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCEASAccountPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(MCNewPayloadHandler *)[MCNewEASAccountPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end