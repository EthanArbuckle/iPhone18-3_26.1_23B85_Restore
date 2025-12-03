@interface MCMDMPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCMDMPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(MCNewPayloadHandler *)[MCNewMDMPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end