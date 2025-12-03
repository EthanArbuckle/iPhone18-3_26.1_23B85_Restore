@interface MCAPNPayload
- (id)handlerWithProfileHandler:(id)handler;
@end

@implementation MCAPNPayload

- (id)handlerWithProfileHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(MCNewPayloadHandler *)[MCNewAPNPayloadHandler alloc] initWithPayload:self profileHandler:handlerCopy];

  return v5;
}

@end