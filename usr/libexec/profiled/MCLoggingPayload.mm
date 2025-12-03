@interface MCLoggingPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCLoggingPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(MCNewPayloadHandler *)[MCLoggingPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end