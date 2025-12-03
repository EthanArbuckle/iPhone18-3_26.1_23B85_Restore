@interface MCExtensibleSingleSignOnPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCExtensibleSingleSignOnPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(MCNewPayloadHandler *)[MCExtensibleSingleSignOnPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end