@interface MCCardDAVAccountPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCCardDAVAccountPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(MCNewPayloadHandler *)[MCNewCardDAVAccountPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end