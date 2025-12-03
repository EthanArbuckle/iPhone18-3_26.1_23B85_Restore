@interface MCSingleSignOnPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCSingleSignOnPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(MCNewPayloadHandler *)[MCSingleSignOnPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end