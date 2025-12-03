@interface MCSetupAssistantPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCSetupAssistantPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(MCNewPayloadHandler *)[MCSetupAssistantPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end